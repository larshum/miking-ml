-- main.mc - entrypoint

include "dataset/cifar10.mc"
include "dataset/mnist.mc"

include "nn-noadt/training.mc"
include "nn-noadt/network.mc"
include "./test/numvalid.mc"

let main = lam.
  let argc = length argv in
  if lti argc 2 then
    printLn "no arguments given, usage: <prog> <mode> [mode args...]"
  else
  let prog = get argv 0 in
  let mode = get argv 1 in
  if eqString mode "cifar10" then
    if neqi argc 4 then
      printLn (join ["usage: ", prog, " ", mode, " <txt trainset> <txt validset>"])
    else (
      let training_file = get argv 2 in
      let validation_file = get argv 3 in
      let network =
        nnMake [nnFullyConnected 3072 128,
                nnReLU 128,
                nnFullyConnected 128 10,
                nnSoftMax 10]
               (nnCrossEntropyLoss 10)
      in
      let sgdparams =
        {nnVanillaSGDParameters
        with epochs = 1}
      in
      printLn (join ["loading cifar10 training data from ", training_file, "..."]);
      let traindata = datasetLoadCArrayFloatCifar10 training_file in
      printLn (join ["loading cifar10 validation data from ", validation_file, "..."]);
      let validdata = datasetLoadCArrayFloatCifar10 validation_file in
      printLn "loading complete...";
      nnTrainSGD sgdparams network traindata validdata;
      printLn "done"
    )
  else if eqString mode "mnist" then
    if neqi argc 4 then
      printLn (join ["usage: ", prog, " ", mode, " <txt trainset> <txt validset>"])
    else (
      let training_file = get argv 2 in
      let validation_file = get argv 3 in
      let network: NeuralNetwork =
        nnMake [nnFullyConnected 784 128,
                nnReLU 128,
                nnFullyConnected 128 10]
               (nnSoftMaxCrossEntropyLoss 10)
      in
      let sgdparams =
        {{{nnVanillaSGDParameters
        with epochs = 1}
        with evaluateBetweenEpochs = true}
        with evaluateBeforeFirstEpoch = true}
      in
      printLn (join ["loading mnist training data from ", training_file, "..."]);
      let traindata = datasetLoadCArrayFloatMnist training_file in
      printLn (join ["loading mnist validation data from ", validation_file, "..."]);
      let validdata = datasetLoadCArrayFloatMnist validation_file in
      printLn "loading complete...";
      nnTrainSGD sgdparams network traindata validdata;
      printLn "done"
    )
  else if eqString mode "numvalid" then
    if neqi argc 2 then
      printLn (join ["usage: ", prog, " numvalid"])
    else
      printLn "running numerical validation suite";
      nntestNumericalValidation ()
  else
    printLn (join ["unknown mode \"", mode, "\""])

mexpr main ()
