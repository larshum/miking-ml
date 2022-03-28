-- model.mc
-- A 3-layer neural network to be used for supervised learning

include "common.mc"

include "nn/network.mc"

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
