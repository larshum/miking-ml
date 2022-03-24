-- model.mc
-- A 3-layer neural network to be used for supervised learning

include "common.mc"

include "nn/network.mc"

-- Common parameters for stochastic gradient descent
type SGDParameters = {
  init_alpha: Float,
  init_lambda: Float,
  decay_alpha: Float,
  decay_lambda: Float,
  batchsize: Int,
  rounds: Int
}



let cifar10_net: () -> NeuralNetwork = lam.
  nnMake [
           nnFullyConnected 3072 128,
           nnReLU 128,
           nnFullyConnected 128 10,
           nnSoftMax 10
         ]
         (nnCrossEntropyLoss 10)

let mnist_net: () -> NeuralNetwork = lam.
  nnMake [
           nnFullyConnected 784 128,
           nnReLU 128,
           nnFullyConnected 128 10,
           nnSoftMax 10
         ]
         (nnCrossEntropyLoss 10)


let nnmodel_evaluate: NeuralNetwork -> [DataPoint] -> () =
  lam network. lam validationset.
  -- helper function for fetching the maximum linear idx in the tensor
  let tensorLinearMaxIdx = lam t: Tensor[Float].
    recursive let iterH = lam pivot. lam i.
      if eqi i (tensorSize t) then pivot else (
        match pivot with (pivot_val, pivot_idx) in
        let cartidx = linearToCartesianIndex (tensorShape t) i in
        let candidate = tensorGetExn t cartidx in
        if gtf candidate pivot_val then
          iterH (candidate, i) (addi i 1)
        else
          iterH pivot (addi i 1)
      )
    in
    let ret = iterH (tensorGetExn t [0,0], 0) 1 in
    match ret with (_, maxidx) in
    maxidx
  in
  let correct_guessacc = foldl (lam acc. lam dp: DataPoint.
    match acc with (correct, i) in
    print (join ["\r", int2string (addi i 1), "/", int2string (length validationset)]); flushStdout ();
    let output = nnEvalExn network dp.input in
    if eqi (tensorLinearMaxIdx output) (cartesianToLinearIndex (tensorShape output) dp.correct_outidx) then
      (addi correct 1, addi i 1)
    else
      (correct, addi i 1)
  ) (0,0) validationset in
  printLn "";
  match correct_guessacc with (correct_guesses, _) in
  let accuracy = divf (int2float correct_guesses) (int2float (length validationset)) in
  printLn (join ["Computed accuracy: ", float2string (mulf accuracy 100.0), "%"])


let nnmodel_sgd =
  lam params: SGDParameters.
  lam iterations: Int.
  lam network: NeuralNetwork.
  lam training_data: [DataPoint].
  lam validation_data: [DataPoint].
  printLn "Starting SGD (stochastic gradient descent)";
  printLn (join [" - training_data size: ", int2string (length training_data)]);
  printLn (join [" - validation_data size: ", int2string (length validation_data)]);
  printLn (join [" - batchsize: ", int2string params.batchsize]);
  printLn (join [" - rounds: ", int2string params.rounds]);
  printLn (join [" - iterations (epochs): ", int2string iterations]);
  printLn (join [" - alpha (initial learning rate): ", float2string params.init_alpha]);
  printLn (join [" - alpha decay: ", float2string params.decay_alpha]);
  printLn (join [" - lambda (initial regularization factor): ", float2string params.init_lambda]);
  printLn (join [" - lambda decay: ", float2string params.decay_lambda]);
  let alpha = params.init_alpha in
  let lambda = params.init_lambda in
  recursive let iterate = lam it. lam alpha. lam lambda.
    if eqi it iterations then () else (
      printLn (join ["[Iteration ", int2string (addi it 1), "/", int2string iterations, "]"]);
      printLn (join ["alpha = ", float2string alpha]);
      printLn (join ["lambda = ", float2string lambda]);
      recursive let run_batchrounds = lam rnd.
        if eqi rnd params.rounds then printLn "" else (
          print (join ["\rround ", int2string (addi rnd 1), "/", int2string params.rounds]);
          flushStdout ();
          recursive let mkbatch = lam acc. lam j.
            if eqi j params.batchsize then acc else (
              -- select a datapoint uniformly at random
              let dp = get training_data (randIntU 0 (length training_data)) in
              mkbatch (cons dp acc) (addi j 1)
            )
          in
          let batch = mkbatch [] 0 in
          -- This will have to be accelerated...
          nnGradientDescentExn network alpha lambda batch;
          run_batchrounds (addi rnd 1)
        )
      in
      run_batchrounds 0;
      printLn "evalating performance...";
      nnmodel_evaluate network validation_data;
      let decayed_alpha = mulf alpha (subf 1.0 params.decay_alpha) in
      let decayed_lambda = mulf lambda (subf 1.0 params.decay_lambda) in
      iterate (addi it 1) decayed_alpha decayed_lambda
    )
  in
  iterate 0 params.init_alpha params.init_lambda;
  printLn "SGD complete.";
  ()


let cifar10_example = lam.
  printLn "creating model";
  let network: NeuralNetwork =
    nnMake [
             nnFullyConnected 3072 128,
             nnReLU 128,
             nnFullyConnected 128 128,
             nnReLU 128,
             nnFullyConnected 128 10,
             nnSoftMax 10
           ]
           (nnCrossEntropyLoss 10)
  in
  match nnValidate network with Some errs then
    printLn "error in network structure:";
    foldl (lam. lam e. printLn e) () errs
  else (
    printLn "network is ok!";
    let dp: DataPoint = {
      input = tensorCreateDense [3072,1] (lam. 1.0),
      correct_outidx = [1,0]
    } in
    printLn "evaluating...";
    let output = nnEvalExn network dp.input in
    printLn "showing output tensor:";
    printLn (tensor2string float2string output);
    printLn "resetting the network";
    nnZeroGrad network;
    printLn "performing backpropagation";
    nnBackpropExn network dp
  )

