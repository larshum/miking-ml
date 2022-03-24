-- main.mc - entrypoint

include "dataset/cifar10.mc"
include "dataset/mnist.mc"
include "nn-test/numvalid.mc"

include "nn-model.mc"

let main = lam.
  let argc = length argv in
  if lti argc 2 then
    printLn "no arguments given, running hardcoded tests";
    cifar10_example ()
  else
  let prog = get argv 0 in
  let mode = get argv 1 in
  if eqString mode "cifar10" then
    if neqi argc 4 then
      printLn (join ["usage: ", prog, " ", mode, " <txt trainset> <txt validset>"])
    else (
      let training_file = get argv 2 in
      let validation_file = get argv 3 in
      let network = cifar10_net () in
      let sgdparams: SGDParameters = {
        init_alpha = 0.1,
        init_lambda = 0.01,
        decay_alpha = 0.001,
        decay_lambda = 0.001,
        batchsize = 32,
        rounds = 100
      } in
      printLn (join ["loading cifar10 training data from ", training_file, "..."]);
      let traindata = datasetLoadCArrayFloatCifar10 training_file in
      printLn (join ["loading cifar10 validation data from ", validation_file, "..."]);
      let validdata = datasetLoadCArrayFloatCifar10 validation_file in
      printLn "loading complete...";
      let iterations = 100 in
      nnmodel_sgd sgdparams
                  iterations
                  network
                  traindata
                  validdata;
      printLn "done"
    )
  else if eqString mode "mnist" then
    if neqi argc 4 then
      printLn (join ["usage: ", prog, " ", mode, " <txt trainset> <txt validset>"])
    else (
      let training_file = get argv 2 in
      let validation_file = get argv 3 in
      let network = mnist_net () in
      let sgdparams: SGDParameters = {
        init_alpha = 0.1,
        init_lambda = 0.01,
        decay_alpha = 0.001,
        decay_lambda = 0.001,
        batchsize = 32,
        rounds = 100
      } in
      printLn (join ["loading mnist training data from ", training_file, "..."]);
      let traindata = datasetLoadCArrayFloatMnist training_file in
      printLn (join ["loading mnist validation data from ", validation_file, "..."]);
      let validdata = datasetLoadCArrayFloatMnist validation_file in
      printLn "loading complete...";
      let iterations = 100 in
      nnmodel_sgd sgdparams
                  iterations
                  network
                  traindata
                  validdata;
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
