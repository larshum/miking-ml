-- lossfn.mc
-- Loss function functionality for a neural network

include "math.mc"

include "./linalg.mc"

-- Base fragment for a neural network LossFunction
lang NNLossFunctionBase
  syn NeuralNetworkLossFunction =
  -- intentionally left blank

  -- These functions are to be implemented by each individual LossFunction.
  sem nnLossFunctionMakeExn: [Int] -> String -> NeuralNetworkLossFunction
  sem nnLossFunctionMakeExn indim =
  | invalid_name -> error (join ["Invalid loss function name \"", invalid_name, "\""])
  sem nnLossFunctionName: NeuralNetworkLossFunction -> String
  sem nnLossFunctionInGrad: NeuralNetworkLossFunction -> Tensor[Float]
  sem nnLossFunctionApplyExn: Tensor[Float] -> [Int] -> NeuralNetworkLossFunction -> Float
  sem nnLossFunctionBackpropExn: Tensor[Float] -> [Int] -> NeuralNetworkLossFunction -> Tensor[Float]

  -- Standard semantics that do not need to be implemented by specific loss functions

  -- Returns the input and output dimensions for a loss function
  sem nnLossFunctionDimensions: NeuralNetworkLossFunction -> {indim: [Int]}
  sem nnLossFunctionDimensions =
  | lossfn -> {indim = tensorShape (nnLossFunctionInGrad lossfn)}

  -- Returns a copy of the loss function with independent tensors
  sem nnLossFunctionCopy: NeuralNetworkLossFunction -> NeuralNetworkLossFunction
  sem nnLossFunctionCopy =
  | lossfn ->
    let name = nnLossFunctionName lossfn in
    let dim: {indim: [Int]} = nnLossFunctionDimensions lossfn in
    nnLossFunctionMakeExn dim.indim name

  sem nnLossFunction2string: NeuralNetworkLossFunction -> String
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
      in_grad = tensorCreateCArrayFloat indim (lam. 0.0)
    }
  sem nnLossFunctionName = | NNCrossEntropyLoss _ -> "CrossEntropyLoss"
  sem nnLossFunctionInGrad = | NNCrossEntropyLoss r -> r.in_grad
  sem nnLossFunctionApplyExn (input : Tensor[Float]) (expected: [Int]) =
  | NNCrossEntropyLoss r -> negf (log (tensorGetExn input expected))
  sem nnLossFunctionBackpropExn (input: Tensor[Float]) (expected: [Int]) =
  | NNCrossEntropyLoss r ->
    -- NOTE: Assumes that input and r.in_grad has the same dimensions
    -- backprop CrossEntropyLoss: [0, ..., 0, -1/p_y, 0, ..., 0]
    #var"tensorOpExn: z = scalar(c)" 0.0 r.in_grad;
    tensorSetFloat r.in_grad expected (divf (negf 1.0) (tensorGetFloat input expected));
    r.in_grad
end

-- A softmax cross entropy loss function. Given an expected output index i of
-- a vector x, this computes the loss as -log(softmax(x)_i)
--  in_grad: Buffer for storing gradient to the input of this layer with
--           respect to the loss.
-- NOTE(wikman,2022-03-30): This is an optimized version where the softmax and
--                          cross entropy loss is computed together. This is
--                          highly efficient for backpropagation, but not too
--                          significant for the forward pass.
lang NNSoftMaxCrossEntropyLossFunction
  syn NeuralNetworkLossFunction =
  | NNSoftMaxCrossEntropyLoss {
      in_grad: Tensor[Float],
      softmax_buf: Tensor[Float]
    }

  sem nnLossFunctionMakeExn (indim: [Int]) =
  | "SoftMaxCrossEntropyLoss" ->
    NNSoftMaxCrossEntropyLoss {
      in_grad = tensorCreateCArrayFloat indim (lam. 0.0),
      softmax_buf = tensorCreateCArrayFloat indim (lam. 0.0)
    }
  sem nnLossFunctionName = | NNSoftMaxCrossEntropyLoss _ -> "SoftMaxCrossEntropyLoss"
  sem nnLossFunctionInGrad = | NNSoftMaxCrossEntropyLoss r -> r.in_grad
  sem nnLossFunctionApplyExn (input : Tensor[Float]) (expected: [Int]) =
  | NNSoftMaxCrossEntropyLoss r ->
    #var"tensorOpExn: z = SoftMax(x)" input r.softmax_buf;
    negf (log (tensorGetExn r.softmax_buf expected))
  sem nnLossFunctionBackpropExn (input: Tensor[Float]) (expected: [Int]) =
  | NNSoftMaxCrossEntropyLoss r ->
    -- NOTE: Assumes that input and r.in_grad has the same dimensions
    -- backprop SoftMaxCrossEntropyLoss: SoftMax(input) - 1Hot(y)
    #var"tensorOpExn: z = SoftMax(x)" input r.in_grad;
    #var"tensorOpExp: z += 1-Hot(y) * scalar(c)" (get expected 0) (negf 1.0) r.in_grad;
    r.in_grad
end

lang NNStandardLossFunctions = NNLossFunctionBase
                             + NNCrossEntropyLossFunction
                             + NNSoftMaxCrossEntropyLossFunction
end

-- Initializes a CrossEntropyLoss function with the specified dimension
let nnCrossEntropyLoss: Int -> NeuralNetworkLossFunction = lam dim.
  use NNStandardLossFunctions in
  nnLossFunctionMakeExn [dim,1] "CrossEntropyLoss"

-- Initializes a SoftMaxCrossEntropyLoss function with the specified dimension
let nnSoftMaxCrossEntropyLoss: Int -> NeuralNetworkLossFunction = lam dim.
  use NNStandardLossFunctions in
  nnLossFunctionMakeExn [dim,1] "SoftMaxCrossEntropyLoss"
