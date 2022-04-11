-- bm-mnist.mc
-- mnist benchmarks for MCore

include "common.mc"

include "../../src/nn-noadt/network.mc"
include "../../src/nn-noadt/training.mc"

include "../../src/dataset/mnist.mc"

let mnist_network: Int -> NeuralNetwork = lam batchsize.
  nnMake [
           nnFullyConnected batchsize 784 128,
           nnReLU batchsize 128,
           nnFullyConnected batchsize 128 10,
           nnSoftMax batchsize 10
         ]
         (nnCrossEntropyLoss batchsize 10)


let mnist_runBenchmark = lam training_data. lam validation_data.
  let params = {{{{{{{nnVanillaSGDParameters
    with batchsize = 32}
    with init_alpha = 0.9}
    with init_lambda = 0.0}
    with epochs = 10}
    with printStatus = true}
    --with printStatus = false}
    with evaluateBetweenEpochs = true}
    with evaluateBeforeFirstEpoch = true}
  in
  printLn "creating network...";
  let network = mnist_network params.batchsize in
  printLn "running mnist benchmark";
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
let training_data = datasetLoadCArrayFloatMnist (get argv 1) in
printLn "loading validation dataset...";
let validation_data = datasetLoadCArrayFloatMnist (get argv 2) in
mnist_runBenchmark training_data validation_data
