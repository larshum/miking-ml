-- bm-cifar10.mc
-- cifar10 benchmarks for MCore

include "common.mc"

include "../../src/nn/network.mc"
include "../../src/nn/training.mc"

include "../../src/dataset/cifar10.mc"

let cifar10_network: Int -> NeuralNetwork = lam batchsize.
  nnMake [
           nnFullyConnected batchsize 3072 3072,
           nnReLU batchsize 3072,
           nnFullyConnected batchsize 3072 1024,
           nnReLU batchsize 1024,
           nnFullyConnected batchsize 1024 10,
           nnSoftMax batchsize 10
         ]
         (nnCrossEntropyLoss batchsize 10)


let cifar10_runBenchmark = lam training_data. lam validation_data.
  let params = {{{{{{{{nnVanillaSGDParameters
    with batchsize = 64}
    with epochs = 100}
    with init_alpha = 0.01}
    with decay_alpha = 0.01}
    with init_lambda = 0.0}
    with printStatus = true}
    --with printStatus = false}
    with evaluateBetweenEpochs = true}
    with evaluateBeforeFirstEpoch = true}
  in
  printLn "creating network...";
  let network = cifar10_network params.batchsize in
  printLn "running cifar10 benchmark";
  let t_start_ms = wallTimeMs () in
  nnTrainSGD params network training_data validation_data;
  let t_end_ms = wallTimeMs () in
  let t_diff_ms = subf t_end_ms t_start_ms in
  printLn (join ["elapsed time: ", float2string t_diff_ms, " ms"])

mexpr

if neqi (length argv) 3 then
  error (join ["usage: ", get argv 0, " training_datafile validation_datafile"])
else -- continue

printLn "loading training dataset...";
let training_data = datasetLoadCArrayFloatCifar10 (get argv 1) in
printLn "loading validation dataset...";
let validation_data = datasetLoadCArrayFloatCifar10 (get argv 2) in
cifar10_runBenchmark training_data validation_data
