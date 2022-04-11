-- lossfn.mc
-- Loss function functionality for a neural network

include "math.mc"

include "./linalg.mc"


let nnLossfnType_CrossEntropyLoss: Int = 0
let nnLossfnType_SoftMaxCrossEntropyLoss: Int = 1

type NeuralNetworkLossFunction = {
  ty: Int,
  in_grads: Tensor[Float],
  out_bufs: Tensor[Float],
  softmax_bufs: Tensor[Float]
}

let nnLossFunctionMakeExn: [Int] -> Int -> String -> NeuralNetworkLossFunction =
  lam indim: [Int]. lam max_batchsize: Int. lam name: String.
  if eqString name "CrossEntropyLoss" then
    {
      ty = nnLossfnType_CrossEntropyLoss,
      in_grads = tensorCreateCArrayFloat (cons max_batchsize indim) (lam. 0.0),
      out_bufs = tensorCreateCArrayFloat [max_batchsize] (lam. 0.0),
      softmax_bufs = tensorCreateCArrayFloat [1] (lam. 0.0) -- dummy
    }
  else if eqString name "SoftMaxCrossEntropyLoss" then
    {
      ty = nnLossfnType_SoftMaxCrossEntropyLoss,
      in_grads = tensorCreateCArrayFloat (cons max_batchsize indim) (lam. 0.0),
      out_bufs = tensorCreateCArrayFloat [max_batchsize] (lam. 0.0),
      softmax_bufs = tensorCreateCArrayFloat [max_batchsize] (lam. 0.0)
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

let nnLossFunctionMaxBatchSize: NeuralNetworkLossFunction -> Int = lam lossfn.
  get (tensorShape lossfn.out_bufs) 0

let nnLossFunctionInGrads: NeuralNetworkLossFunction -> Tensor[Float] = lam lossfn.
  lossfn.in_grads

let nnLossFunctionOutBufs: NeuralNetworkLossFunction -> Tensor[Float] = lam lossfn.
  lossfn.out_bufs

let nnLossFunctionApplyExn: Int -> Tensor[Float] -> Tensor[Int] -> NeuralNetworkLossFunction -> Tensor[Float] =
  lam s_max: Int. lam inputs: Tensor[Float]. lam expecteds: Tensor[Int]. lam lossfn: NeuralNetworkLossFunction.
  let ty: Int = lossfn.ty in
  if eqi ty nnLossfnType_CrossEntropyLoss then (
    #var"tensorOpExn: z = -log(x^T * 1-Hot(y))" s_max inputs expecteds lossfn.out_bufs;
    lossfn.out_bufs
  ) else if eqi ty nnLossfnType_SoftMaxCrossEntropyLoss then (
    -- Setting in-grads here as we will re-use this in the backpropagation later
    #var"tensorOpExn: z = SoftMax(x)" s_max inputs lossfn.softmax_bufs lossfn.in_grads;
    #var"tensorOpExn: z = -log(x^T * 1-Hot(y))" s_max lossfn.in_grads expecteds lossfn.out_bufs;
    lossfn.out_bufs
  ) else (
    lossfn.out_bufs --error (join ["nnLossFunctionApplyExn not handled for ", nnLossFunctionName lossfn])
  )

let nnLossFunctionBackpropExn: Int -> Tensor[Float] -> Tensor[Int] -> NeuralNetworkLossFunction -> Tensor[Float] =
  lam s_max: Int. lam inputs: Tensor[Float]. lam expecteds: Tensor[Int]. lam lossfn: NeuralNetworkLossFunction.
  let ty: Int = lossfn.ty in
  if eqi ty nnLossfnType_CrossEntropyLoss then (
    -- NOTE: Assumes that input and r.in_grad has the same dimensions
    -- backprop CrossEntropyLoss: [0, ..., 0, -1/p_y, 0, ..., 0]
    #var"tensorOpExn: z = 1-Hot(y) * scalar(-1/(x^T * 1-Hot(y)))" s_max expecteds inputs lossfn.in_grads;
    lossfn.in_grads
  ) else if eqi ty nnLossfnType_SoftMaxCrossEntropyLoss then (
    -- NOTE: Assumes that input and r.in_grad has the same dimensions
    -- backprop SoftMaxCrossEntropyLoss: SoftMax(input) - 1-Hot(y)
    -- NOTE We already have the SoftMax computed in the lossfn.in_grads, this is redundant if we have computed the loss before
    #var"tensorOpExn: z = SoftMax(x)" s_max inputs lossfn.softmax_bufs lossfn.in_grads;
    #var"tensorOpExp: z += 1-Hot(y) * scalar(c)" s_max expecteds (negf 1.0) lossfn.in_grads;
    lossfn.in_grads
  ) else (
    lossfn.in_grads --error (join ["nnLossFunctionBackpropExn not handled for ", nnLossFunctionName lossfn])
  )

let nnLossFunctionDimensions: NeuralNetworkLossFunction -> {indim: [Int]} =
  lam lossfn: NeuralNetworkLossFunction.
  {indim = tail (tensorShape (nnLossFunctionInGrads lossfn))}

let nnLossFunctionCopy: NeuralNetworkLossFunction -> NeuralNetworkLossFunction =
  lam lossfn: NeuralNetworkLossFunction.
  let name = nnLossFunctionName lossfn in
  let max_batchsize = nnLossFunctionMaxBatchSize lossfn in
  let dim: {indim: [Int]} = nnLossFunctionDimensions lossfn in
  nnLossFunctionMakeExn dim.indim max_batchsize name

let nnLossFunction2string: NeuralNetworkLossFunction -> String =
  lam lossfn: NeuralNetworkLossFunction.
  let name = nnLossFunctionName lossfn in
  let max_batchsize = nnLossFunctionMaxBatchSize lossfn in
  let dim: {indim: [Int]} = nnLossFunctionDimensions lossfn in
  let seq2str = lam seq. join ["[", strJoin "," (map int2string seq), "]"] in
  join [name, " (", seq2str dim.indim, " -> loss)[max_batchsize=", int2string max_batchsize, "]"]


lang NNStandardLossFunctions
end


-- Initializes a CrossEntropyLoss function with the specified dimension
let nnCrossEntropyLoss: Int -> Int -> NeuralNetworkLossFunction = lam max_batchsize. lam dim.
  use NNStandardLossFunctions in
  nnLossFunctionMakeExn [dim] max_batchsize "CrossEntropyLoss"

-- Initializes a SoftMaxCrossEntropyLoss function with the specified dimension
let nnSoftMaxCrossEntropyLoss: Int -> Int -> NeuralNetworkLossFunction = lam max_batchsize. lam dim.
  use NNStandardLossFunctions in
  nnLossFunctionMakeExn [dim] max_batchsize "SoftMaxCrossEntropyLoss"
