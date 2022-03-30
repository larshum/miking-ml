-- bm-mnist.mc
-- mnist benchmarks for MCore

include "common.mc"

include "../../src/nn/network.mc"
include "../../src/nn/training.mc"

include "../../src/dataset/mnist.mc"

let mnist_network: () -> NeuralNetwork = lam.
  nnMake [
           nnFullyConnected 784 128,
           nnReLU 128,
           nnFullyConnected 128 10,
           nnSoftMax 10
         ]
         (nnCrossEntropyLoss 10)


let mnist_runBenchmark = lam training_data. lam validation_data.
  let params = {{{{nnVanillaSGDParameters
    with epochs = 10}
    with printStatus = true}
    --with printStatus = false}
    with evaluateBetweenEpochs = true}
    with evaluateBeforeFirstEpoch = true}
  in
  printLn "creating network...";
  let network = mnist_network () in
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
