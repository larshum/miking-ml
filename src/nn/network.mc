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
  lossfn: NeuralNetworkLossFunction,
  -- State variables, that can be initialized before the accelerate aspect.
  -- These are considered temporary variables that should be removed once the
  -- CUDA/C backend gets better support for allocating new sequences.
  st_weights: [Tensor[Float]],
  st_gradients: [Tensor[Float]],
  st_out_bufs: [Tensor[Float]],
  -- These are used for backpropagation
  st_last_component: NeuralNetworkComponent,
  st_mid_components_and_inbufs_rev: [(NeuralNetworkComponent, Tensor[Float])],
  st_first_component: NeuralNetworkComponent
}

-- A data point is a an input followed by the expected output index
type DataPoint = {
  input: Tensor[Float],
  correct_outidx: [Int]
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


-- Refreshes the state variables prefixed with "st_".
let nnRefreshState: NeuralNetwork -> NeuralNetwork = lam network.
  use NNStandard in
  {{{{{{network with st_weights = foldl (lam acc. lam c. concat acc (nnComponentWeights c)) [] network.components}
                with st_gradients = foldl (lam acc. lam c. concat acc (nnComponentGradients c)) [] network.components}
                with st_out_bufs = map nnComponentOutBuf network.components}
                with st_last_component = if null network.components then nnReLU 1 else get network.components (subi (length network.components) 1)}
                with st_mid_components_and_inbufs_rev =
                  if lti (length network.components) 3 then
                    []
                  else
                    reverse (mapi (lam i: Int. lam e: NeuralNetworkComponent. (e,
                                                                               nnComponentOutBuf (get network.components i)
                                                                              ))
                                  (subsequence network.components 1 (subi (length network.components) 2)))}
                with st_first_component = if null network.components then nnReLU 1 else get network.components 0}


-- Creates a neural network based on the provided list of components and a loss
-- function.
let nnMake: [NeuralNetworkComponent] -> NeuralNetworkLossFunction -> NeuralNetwork =
  lam components. lam lossfn.
  nnRefreshState {
    components = components,
    lossfn = lossfn,
    st_weights = [],
    st_gradients = [],
    st_out_bufs = [],
    st_last_component = nnReLU 1,
    st_mid_components_and_inbufs_rev = [],
    st_first_component = nnReLU 1
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
  nnLossFunctionApplyExn output dp.correct_outidx network.lossfn


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
  ---- TEMP FUNCTIONS UNTIL TYPE SYSTEM EXISTS ----
  --let getComponent: [NeuralNetworkComponent] -> Int -> NeuralNetworkComponent =
  --  lam comp: [NeuralNetworkComponent]. lam i: Int.
  --  (let g: [NeuralNetworkComponent] -> Int -> NeuralNetworkComponent = get in g) comp i
  --in
  let lengthComponents: [NeuralNetworkComponent] -> Int =
    lam comp: [NeuralNetworkComponent].
    (let g: [NeuralNetworkComponent] -> Int = length in g) comp
  in
  -------------------------------------------------
  -- Step 1: Evaluate the network to populate the outputs at each step,
  --         necessary for computing the gradients at each component.
  let outputs: Tensor[Float] = nnEvalExn network dp.input in
  -- Step 2: Compute gradient with respect to the loss function
  let lossgrad: Tensor[Float] = nnLossFunctionBackpropExn outputs dp.correct_outidx network.lossfn in
  -- Step 3: Propagate the gradients backwards
  -- (pair the components with the evaluated inputs to each of those components)
  let n_components: Int = lengthComponents network.components in
  if eqi n_components 0 then ()
  else if eqi n_components 1 then (
    -- Special case: last component is the only component (in_buf = dp.input)
    -- let lastcomp = getComponent network.components (subi n_components 1) in
    -- let lastcomp_in_buf = dp.input in
    -- let lastcomp_out_grad = lossgrad in
    nnComponentBackpropExn dp.input lossgrad network.st_last_component;
    ()
  ) else (
    -- At least 2 components...
    -- Last component, special case on output gradient
    --let lastcomp = getComponent network.components (subi n_components 1) in
    let lastcomp_in_buf: Tensor[Float] = getFloatTensor network.st_out_bufs (subi n_components 2) in
    --let lastcomp_out_grad = lossgrad in
    --let lastcomp_in_grad = nnComponentBackpropExn lastcomp_in_buf lastcomp_out_grad lastcomp in

    let lastcomp_in_grad: Tensor[Float] = nnComponentBackpropExn lastcomp_in_buf lossgrad network.st_last_component in

    -- Middle components, iterate backwards over all components not at the
    -- start nor at the end
    let firstcomp_out_grad =
      foldl (lam out_grad: Tensor[Float]. lam comp_idx_pair: (NeuralNetworkComponent, Tensor[Float]).
        let comp_in_buf: Tensor[Float] = comp_idx_pair.1 in
        let comp_out_grad: Tensor[Float] = out_grad in
        -- output gradient is fed into the next iteration
        nnComponentBackpropExn comp_in_buf comp_out_grad comp_idx_pair.0
      ) lastcomp_in_grad network.st_mid_components_and_inbufs_rev
    in

    -- First component, special case on input buffer
    --let firstcomp = getComponent network.components 0 in
    let firstcomp_in_buf = dp.input in
    nnComponentBackpropExn firstcomp_in_buf firstcomp_out_grad network.st_first_component;
    ()
  )


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
  use NNStandard in
  ---- TEMP FUNCTIONS UNTIL TYPE SYSTEM EXISTS ----
  let getDataPoint: [DataPoint] -> Int -> DataPoint =
    lam dp: [DataPoint]. lam i: Int.
    (let g: [DataPoint] -> Int -> DataPoint = get in g) dp i
  in
  let lengthDataPoints: [DataPoint] -> Int =
    lam dp: [DataPoint].
    (let g: [DataPoint] -> Int = length in g) dp
  in
  -------------------------------------------------
   -- zero out the gradients
  nnZeroGrad network;
  -- backpropagate over the data points
  --OLD CODE:
  foldl (lam x: Int. lam dp: DataPoint.
    nnBackpropExn network dp; 0
  ) 0 batch;
  --CUDA'ified CODE:
  --seqLoop (lengthDataPoints batch) (lam i: Int.
  --  let dp: DataPoint = getDataPoint batch i in
  --  nnBackpropExn network dp
  --);
  -- apply the mini-batch regularization ( grad = sum(grad) / |B| )
  let batchsize_regularizer = divf 1.0 (int2float (lengthDataPoints batch)) in
  --OLD CODE:
  foldl (lam x: Int. lam grad.
    #var"tensorOpExn: z *= scalar(c)" batchsize_regularizer grad; 0
  ) 0 network.st_gradients;
  -- CUDA'ified code
  --seqLoop (lengthSeqFloatTensor network.st_gradients) (lam i: Int.
  --  let grad = getFloatTensor network.st_gradients i in
  --  #var"tensorOpExn: z *= scalar(c)" batchsize_regularizer grad
  --);
  -- apply any weight regularization
  (
    if eqf lambda 0.0 then () -- no regularization to do...
    else (
      seqLoop (lengthSeqFloatTensor network.st_weights) (lam i: Int.
        let w = getFloatTensor network.st_weights i in
        let grad = getFloatTensor network.st_gradients i in
        #var"tensorOpExn: z += x * scalar(c)" w (mulf 2.0 lambda) grad
      )
    )
  );
  -- apply the gradient descent step (i.e. theta := theta - alpha*theta_grad)
  seqLoop (lengthSeqFloatTensor network.st_weights) (lam i: Int.
    let w = getFloatTensor network.st_weights i in
    let grad = getFloatTensor network.st_gradients i in
    #var"tensorOpExn: z += x * scalar(c)" grad (negf alpha) w
  )

