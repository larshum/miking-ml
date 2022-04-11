-- network.mc
-- Defines generic network behavior.

include "seq.mc"

include "./component.mc"
include "./lossfn.mc"
include "./linalg.mc"

lang NNStandard = NNStandardComponents + NNStandardLossFunctions
end


-- Defines the neural network type
type NeuralNetwork = {
  components: [NeuralNetworkComponent],
  lossfn: NeuralNetworkLossFunction
}

-- A data point is a an input followed by the expected output index
type DataPoint = {
  input: Tensor[Float],
  correct_outidx: [Int],
  correct_linear_outidx: Int
}

-- A batch is a collection of datapoints, all in a single tensor.
-- I.e. the "inputs" tensor is of shape [size] ++ (inputShape) such that
-- accessing a single datapoint can be done by tensor
type DataBatch = {
  -- Inputs where a value at [33,78] in datapoint 2 can be accessed as
  -- tensorGetExn [2,33,78]
  inputs: Tensor[Float],
  -- A rank 1 tensor containing the expected output indices for each datapoint.
  correct_linear_outidxs: Tensor[Int]
}



-- Validates a neural network. Returns `None ()` if the network is well-formed.
-- Otherwise it returns a list of errors wrapped in an Option.
let nnValidate: NeuralNetwork -> Option [String] =
  lam network.
  use NNStandard in
  let accfinal = foldl (lam acc. lam comp.
    match acc with (idx, maybePrevcomp, errs) in
    -- Check that output dimension from previous component matches the current input dimension
    let errs =
      match maybePrevcomp with Some prevcomp then
        let prevdim = nnComponentDimensions prevcomp in
        let thisdim = nnComponentDimensions comp in
        if not (eqSeq eqi prevdim.outdim thisdim.indim) then
          snoc errs (join [
            "Mismatch in input/output dimensions between components ",
            int2string (subi idx 1), " (", nnComponent2string prevcomp, ") and ",
            int2string idx, " (", nnComponent2string comp, ")"
          ])
        else errs
      else errs
    in
    (addi idx 1, Some comp, errs)
  ) (0, None (), []) network.components in
  match accfinal with (_, _, errlist) in
  let errlist =
    let lossdim = nnLossFunctionDimensions network.lossfn in
    let n_components = length network.components in
    if geqi n_components 0 then
      let lastcomp = get network.components (subi n_components 1) in
      let lastcompdim = nnComponentDimensions lastcomp in
      if not (eqSeq eqi lastcompdim.outdim lossdim.indim) then
        snoc errlist (join [
          "Mismatch in input/output dimensions between final component (",
          nnComponent2string lastcomp,
          ") and loss function (",
          nnLossFunction2string network.lossfn, ")"
        ])
      else errlist
    else errlist
  in
  if gti (length errlist) 0 then
    Some errlist
  else
    None ()


-- Creates a neural network based on the provided list of components and a loss
-- function.
let nnMake: [NeuralNetworkComponent] -> NeuralNetworkLossFunction -> NeuralNetwork =
  lam components. lam lossfn.
  {
    components = components,
    lossfn = lossfn
  }


-- Returns a copy of the provided network, with independent tensor but
-- preserved weights. Note that this does not preserve an gradients.
let nnCopy: NeuralNetwork -> NeuralNetwork = lam network.
  use NNStandard in
  nnMake (map nnComponentCopy network.components)
         (nnLossFunctionCopy network.lossfn)


-- Resets all the gradients in the neural network to zero, preparing the
-- network for a batch of new training samples.
let nnZeroGrad: NeuralNetwork -> () = lam network: NeuralNetwork.
  use NNStandard in
  foldl (lam x: Int. lam comp: NeuralNetworkComponent. nnComponentZeroGrad comp; 0) 0 network.components;
  ()


-- Evaluates the neural network, returning the output vector right before the
-- loss function is computed. This does not compute any gradients.
--  complist is the list of components that make up the neural network
--  input is the Nx1 input vector
-- Returns the output vector.
let nnEvalExn: NeuralNetwork -> Tensor[Float] -> Tensor[Float] =
  lam network. lam input.
  use NNStandard in
  foldl (lam prevout: Tensor[Float]. lam comp: NeuralNetworkComponent.
    -- Applies this component and returns the resulting output to the next
    -- iteration (the final iteration becomes the nnEvalExn output)
    nnComponentApplyExn prevout comp
  ) input network.components


-- Computes the loss on the provided data point when evaluated on the network.
-- This does not compute any gradients.
--  network is the neural network
--  dp is the data point
let nnComputeLossExn: NeuralNetwork -> DataPoint -> Float =
  lam network. lam dp.
  use NNStandard in
  let output = nnEvalExn network dp.input in
  -- Return the evaluated loss
  nnLossFunctionApplyExn output dp.correct_linear_outidx network.lossfn


-- Computes the gradients for the components with respect to the loss function,
-- incrementing the values that are already there. Invoke this many times on
-- the different inputs to sum over all the gradients, in order to perform
-- batch normalization in a training step.
--  network is the network to train on
--  dp is the datapoint to backpropagate on
--
-- NOTE: If this is the first time computing gradients in this step, remember
--       to run `nnZeroGrad <network>` to clear the previous gradients.
let nnBackpropExn: NeuralNetwork -> DataPoint -> () =
  lam network: NeuralNetwork. lam dp: DataPoint.
  use NNStandard in
  -- Step 1: Evaluate the network to populate the outputs at each step,
  --         necessary for computing the gradients at each component.
  let outputs: Tensor[Float] = nnEvalExn network dp.input in
  -- Step 2: Compute gradient with respect to the loss function
  let lossgrad: Tensor[Float] = nnLossFunctionBackpropExn outputs dp.correct_linear_outidx network.lossfn in
  -- Step 3: Propagate the gradients backwards
  -- (pair the components with the evaluated inputs to each of those components)
  let n_components: Int = length network.components in
  if eqi n_components 0 then ()
  else if eqi n_components 1 then (
    -- Special case: last component is the only component (in_buf = dp.input)
    let lastcomp = get network.components 0 in
    nnComponentBackpropExn dp.input lossgrad lastcomp;
    ()
  ) else (
    -- At least 2 components...
    -- Last component, special case on output gradient
    let lastcomp = get network.components (subi n_components 1) in
    let lastcomp_in_buf: Tensor[Float] = nnComponentOutBuf (get network.components (subi n_components 2)) in
    --let lastcomp_out_grad = lossgrad in
    --let lastcomp_in_grad = nnComponentBackpropExn lastcomp_in_buf lastcomp_out_grad lastcomp in

    let lastcomp_in_grad: Tensor[Float] = nnComponentBackpropExn lastcomp_in_buf lossgrad lastcomp in

    -- Middle components, iterate backwards over all components not at the
    -- start nor at the end
    let firstcomp_out_grad =
      seqLoopAcc lastcomp_in_grad (subi n_components 2) (
        lam out_grad: Tensor[Float]. lam i: Int.
        -- component idx = (|Components| - 2) - i = |Components| - (i + 2)
        let idx = subi n_components (addi i 2) in
        let previdx = subi idx 1 in

        let comp: NeuralNetworkComponent = get network.components idx in
        let in_buf: Tensor[Float] = nnComponentOutBuf (get network.components previdx) in
        nnComponentBackpropExn in_buf out_grad comp
      )
    in

    -- First component, special case on input buffer
    let firstcomp: NeuralNetworkComponent = get network.components 0 in
    let firstcomp_in_buf: Tensor[Float] = dp.input in
    nnComponentBackpropExn firstcomp_in_buf firstcomp_out_grad firstcomp;
    ()
  )

let nnGradientDescentIndexedExn: NeuralNetwork -> Float -> Float -> [DataPoint] -> Int -> Int -> () =
  lam network. lam alpha. lam lambda. lam dataset. lam start_idx. lam end_idx.
  use NNStandard in
   -- zero out the gradients
  nnZeroGrad network;
  -- Batch size
  let batchsize = subi end_idx start_idx in
  -- backpropagate over the data points
  seqLoop batchsize (lam offset: Int.
    let idx: Int = addi start_idx offset in
    nnBackpropExn network (get dataset idx)
  );
  -- apply the mini-batch regularization ( grad = sum(grad) / |B| )
  let batchsize_regularizer = divf 1.0 (int2float batchsize) in
  foldl (lam x: Int. lam comp: NeuralNetworkComponent.
    -- TEMP: Would like to just iterate over the gradients at this stage...
    nnComponent_TEMP_ScaleGradients batchsize_regularizer comp; 0
  ) 0 network.components;
  -- apply any weight regularization
  (
    if eqf lambda 0.0 then () -- no regularization to do...
    else (
      foldl (lam x: Int. lam comp: NeuralNetworkComponent.
        nnComponent_TEMP_L2Regularize (mulf 2.0 lambda) comp; 0
      ) 0 network.components;
      ()
    )
  );
  -- apply the gradient descent step (i.e. theta := theta - alpha*theta_grad)
  foldl (lam x: Int. lam comp: NeuralNetworkComponent.
    nnComponent_TEMP_ApplyGradients (negf alpha) comp; 0
  ) 0 network.components;
  ()

-- Trains the network on the provided batch of data points, performing gradient
-- descent on the batch normalized output
--  network is the NN to train on
--  alpha is the learning rate
--  lambda is the regularization factor for fully connected layers, should be
--         in the range [0,1], where a value of 0.0 represents no
--         regularization
--  batch is the list of data points to train on, applies mini-batch
let nnGradientDescentExn: NeuralNetwork -> Float -> Float -> [DataPoint] -> () =
  lam network. lam alpha. lam lambda. lam batch.
  nnGradientDescentIndexedExn network alpha lambda batch 0 (length batch)
