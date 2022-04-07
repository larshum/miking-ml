-- lossfn.mc
-- Loss function functionality for a neural network

include "math.mc"

include "./linalg.mc"


let nnLossfnType_CrossEntropyLoss: Int = 0
let nnLossfnType_SoftMaxCrossEntropyLoss: Int = 1

type NeuralNetworkLossFunction = {
  ty: Int
  in_grad: Tensor[Float],
  softmax_buf: Tensor[Float]
}

let nnLossFunctionMakeExn: [Int] -> String -> NeuralNetworkLossFunction =
  lam indim: [Int]. lam name: String.
  if eqString name "CrossEntropyLoss" then
    {
      ty = nnLossfnType_CrossEntropyLoss,
      in_grad = tensorCreateCArrayFloat indim (lam. 0.0),
      softmax_buf = tensorCreateCArrayFloat [1] (lam. 0.0) -- dummy
    }
  else if eqString name "SoftMaxCrossEntropyLoss" then
    {
      ty = nnLossfnType_SoftMaxCrossEntropyLoss,
      in_grad = tensorCreateCArrayFloat indim (lam. 0.0),
      softmax_buf = tensorCreateCArrayFloat indim (lam. 0.0)
    }
  else
    error (join ["Invalid loss function name \"", name, "\""])

let nnLossFunctionName: NeuralNetworkLossFunction -> String = lam lossfn.
  let names: [String] = [
    "CrossEntropyLoss",
    "SoftMaxCrossEntropyLoss"
  ] in
  if and (geqi lossfn.ty 0) (lti lossfn.ty (length names)) then
    get names lossfn.ty
  else
    join ["InvalidLossFunction(", int2string lossfn.ty, ")"]

let nnLossFunctionInGrad: NeuralNetworkLossFunction -> Tensor[Float] = lam lossfn.
  lossfn.in_grad

let nnLossFunctionApplyExn: Tensor[Float] -> [Int] -> NeuralNetworkLossFunction -> Float =
  lam input: Tensor[Float]. lam expected: [Int]. lam lossfn: NeuralNetworkLossFunction.
  if eqi lossfn.ty nnLossfnType_CrossEntropyLoss then (
    negf (log (tensorGetExn input expected))
  ) else if eqi lossfn.ty nnLossfnType_SoftMaxCrossEntropyLoss then (
    #var"tensorOpExn: z = SoftMax(x)" input lossfn.softmax_buf;
    negf (log (tensorGetExn lossfn.softmax_buf expected))
  ) else (
    error (join ["nnLossFunctionApplyExn not handled for ", nnLossFunctionName lossfn])
  )

let nnLossFunctionBackpropExn: Tensor[Float] -> [Int] -> NeuralNetworkLossFunction -> Tensor[Float] =
  lam input: Tensor[Float]. lam expected: [Int]. lam lossfn: NeuralNetworkLossFunction.
  if eqi lossfn.ty nnLossfnType_CrossEntropyLoss then (
    -- NOTE: Assumes that input and r.in_grad has the same dimensions
    -- backprop CrossEntropyLoss: [0, ..., 0, -1/p_y, 0, ..., 0]
    #var"tensorOpExn: z = scalar(c)" 0.0 lossfn.in_grad;
    tensorSetExn lossfn.in_grad expected (divf (negf 1.0) (tensorGetExn input expected));
    r.in_grad
  ) else if eqi lossfn.ty nnLossfnType_SoftMaxCrossEntropyLoss then (
    -- NOTE: Assumes that input and r.in_grad has the same dimensions
    -- backprop SoftMaxCrossEntropyLoss: SoftMax(input) - 1Hot(y)
    #var"tensorOpExn: z = SoftMax(x)" input lossfn.in_grad;
    #var"tensorOpExp: z += 1-Hot(y) * scalar(c)" (get expected 0) (negf 1.0) lossfn.in_grad;
    r.in_grad
  ) else (
    error (join ["nnLossFunctionBackpropExn not handled for ", nnLossFunctionName lossfn])
  )

let nnLossFunctionDimensions: NeuralNetworkLossFunction -> {indim: [Int]} =
  lam lossfn: NeuralNetworkLossFunction.
  {indim = tensorShape (nnLossFunctionInGrad lossfn)}

let nnLossFunctionCopy: NeuralNetworkLossFunction -> NeuralNetworkLossFunction =
  lam lossfn: NeuralNetworkLossFunction.
  let name = nnLossFunctionName lossfn in
  let dim: {indim: [Int]} = nnLossFunctionDimensions lossfn in
  nnLossFunctionMakeExn dim.indim name

let nnLossFunction2string: NeuralNetworkLossFunction -> String =
  lam lossfn: NeuralNetworkLossFunction.
  let name = nnLossFunctionName lossfn in
  let dim: {indim: [Int]} = nnLossFunctionDimensions lossfn in
  let seq2str = lam seq. join ["[", strJoin "," (map int2string seq), "]"] in
  join [name, " (", seq2str dim.indim, " -> loss)"]


lang NNStandardLossFunctions
end


-- Initializes a CrossEntropyLoss function with the specified dimension
let nnCrossEntropyLoss: Int -> NeuralNetworkLossFunction = lam dim.
  use NNStandardLossFunctions in
  nnLossFunctionMakeExn [dim,1] "CrossEntropyLoss"

-- Initializes a SoftMaxCrossEntropyLoss function with the specified dimension
let nnSoftMaxCrossEntropyLoss: Int -> NeuralNetworkLossFunction = lam dim.
  use NNStandardLossFunctions in
  nnLossFunctionMakeExn [dim,1] "SoftMaxCrossEntropyLoss"
