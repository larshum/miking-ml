-- lossfn.mc
-- Loss function functionality for a neural network

include "math.mc"

include "./linalg.mc"

-- Base fragment for a neural network LossFunction
lang NNLossFunctionBase
  syn NeuralNetworkLossFunction =
  -- intentionally left blank

  -- These functions are to be implemented by each individual LossFunction.
  sem nnLossFunctionMakeExn (indim: [Int]) = -- String -> [Int] -> [Int] -> [Tensor[Float]] -> NeuralNetworkLossFunction
  | invalid_name -> error (join ["Invalid loss function name \"", invalid_name, "\""])
  sem nnLossFunctionName = -- NeuralNetworkLossFunction -> String
  sem nnLossFunctionInGrad = -- NeuralNetworkLossFunction -> Tensor[Float]
  sem nnLossFunctionApplyExn (input: Tensor[Float]) (expected: [Int]) = -- NeuralNetworkLossFunction -> Tensor[Float] -> [Int] -> Float
  sem nnLossFunctionBackpropExn (input: Tensor[Float]) (expected: [Int]) = -- NeuralNetworkLossFunction -> Tensor[Float] -> [Int] -> Tensor[Float]

  -- Standard semantics that do not need to be implemented by specific loss functions

  -- Returns the input and output dimensions for a loss function
  sem nnLossFunctionDimensions = -- NeuralNetworkLossFunction -> {indim: [Int]}
  | lossfn -> {indim = tensorShape (nnLossFunctionInGrad lossfn)}

  -- Returns a copy of the loss function with independent tensors
  sem nnLossFunctionCopy =
  | lossfn ->
    let name = nnLossFunctionName lossfn in
    let dim: {indim: [Int]} = nnLossFunctionDimensions lossfn in
    nnLossFunctionMakeExn dim.indim name

  sem nnLossFunction2string =
  | lossfn ->
    let name = nnLossFunctionName lossfn in
    let dim: {indim: [Int]} = nnLossFunctionDimensions lossfn in
    let seq2str = lam seq. join ["[", strJoin "," (map int2string seq), "]"] in
    join [name, " (", seq2str dim.indim, " -> loss)"]
end

-- A cross entropy loss function. Given an expected output index i, this
-- computes the loss as -log(x_i)
--  in_grad: Buffer for storing gradient to the input of this layer with
--           respect to the loss.
lang NNCrossEntropyLossFunction
  syn NeuralNetworkLossFunction =
  | NNCrossEntropyLoss {in_grad: Tensor[Float]}

  sem nnLossFunctionMakeExn (indim: [Int]) =
  | "CrossEntropyLoss" ->
    NNCrossEntropyLoss {
      in_grad = tensorCreateDense indim (lam. 0.0)
    }
  sem nnLossFunctionName = | NNCrossEntropyLoss _ -> "CrossEntropyLoss"
  sem nnLossFunctionInGrad = | NNCrossEntropyLoss r -> r.in_grad
  sem nnLossFunctionApplyExn (input : Tensor[Float]) (expected: [Int]) =
  | NNCrossEntropyLoss r -> negf (log (tensorGetExn input expected))
  sem nnLossFunctionBackpropExn (input: Tensor[Float]) (expected: [Int]) =
  | NNCrossEntropyLoss r ->
    -- NOTE: Assumes that input and r.in_grad has the same dimensions
    -- backprop CrossEntropyLoss: [0, ..., 0, -1/p_y, 0, ..., 0]
    tensorMapInplace (lam. 0.0) r.in_grad;
    tensorSetExn r.in_grad expected (divf (negf 1.0) (tensorGetExn input expected));
    r.in_grad
end

-- TODO(jwikman, 2022-03-17): Merge softmax and cross entropy loss as a single lossfn for more efficient gradients


lang NNStandardLossFunctions = NNLossFunctionBase
                             + NNCrossEntropyLossFunction
end

-- Initializes a CrossEntropyLoss function with the specified dimension
let nnCrossEntropyLoss: Int -> NeuralNetworkLossFunction = lam dim.
  use NNStandardLossFunctions in
  nnLossFunctionMakeExn [dim,1] "CrossEntropyLoss"
