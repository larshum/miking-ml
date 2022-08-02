-- component.mc
-- Backend functionality for representing components in a neural network.

include "bool.mc"
include "char.mc"
include "option.mc"
include "seq.mc"
include "string.mc"
include "tensor.mc"
include "ext/dist-ext.mc" -- gaussianSample
include "ext/math-ext.mc" -- log

include "./linalg.mc" -- tensorOpExn methods

let nnCompType_FullyConnected: Int = 0
let nnCompType_ReLU: Int = 1
let nnCompType_SoftMax: Int = 2

type NeuralNetworkComponent = {
  ty: Int,
  w: Tensor[Float],
  b: Tensor[Float],
  w_grads: Tensor[Float],
  b_grads: Tensor[Float],
  out_bufs: Tensor[Float],
  in_grads: Tensor[Float],
  softmax_bufs: Tensor[Float]
}

let nnComponentMakeExn: [Int] -> [Int] -> [Tensor[Float]] -> Int -> String -> NeuralNetworkComponent =
  lam indim: [Int]. lam outdim: [Int]. lam weights: [Tensor[Float]]. lam max_batchsize: Int. lam name: String.
  if eqString name "FullyConnected" then
    if neqi (length weights) 2 then error "expected exactly 2 weights: w and b" else --continue
    let w = get weights 0 in
    let b = get weights 1 in
    if neqi (tensorRank w) 2 then error "w must be a rank 2 tensor" else --continue
    if neqi (tensorRank b) 1 then error "b must be a rank 1 tensor" else --continue
    if neqi (get (tensorShape w) 1) (tensorSize b) then error "size mismatch on b and w" else --continue
    {
      ty = nnCompType_FullyConnected,
      w = w,
      b = b,
      out_bufs = tensorCreateCArrayFloat (cons max_batchsize outdim) (lam. 0.0),
      w_grads = tensorCreateCArrayFloat (cons max_batchsize (tensorShape w)) (lam. 0.0),
      b_grads = tensorCreateCArrayFloat (cons max_batchsize (tensorShape b)) (lam. 0.0),
      in_grads = tensorCreateCArrayFloat (cons max_batchsize indim) (lam. 0.0),
      softmax_bufs = tensorCreateCArrayFloat [1] (lam. 0.0) -- dummy
    }
  else if eqString name "ReLU" then
    {
      ty = nnCompType_ReLU,
      w = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      b = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      out_bufs = tensorCreateCArrayFloat (cons max_batchsize outdim) (lam. 0.0),
      w_grads = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      b_grads = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      in_grads = tensorCreateCArrayFloat (cons max_batchsize indim) (lam. 0.0),
      softmax_bufs = tensorCreateCArrayFloat [1] (lam. 0.0) -- dummy
    }
  else if eqString name "SoftMax" then
    {
      ty = nnCompType_SoftMax,
      w = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      b = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      out_bufs = tensorCreateCArrayFloat (cons max_batchsize outdim) (lam. 0.0),
      w_grads = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      b_grads = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      in_grads = tensorCreateCArrayFloat (cons max_batchsize indim) (lam. 0.0),
      softmax_bufs = tensorCreateCArrayFloat [max_batchsize] (lam. 0.0)
    }
  else
    error (join ["Invalid component name \"", name, "\""])

let nnComponentName: NeuralNetworkComponent -> String = lam comp.
  let names: [String] = [
    "FullyConnected",
    "ReLU",
    "SoftMax"
  ] in
  if and (geqi comp.ty 0) (lti comp.ty (length names)) then
    get names comp.ty
  else
    join ["InvalidComponent(", int2string comp.ty, ")"]

let nnComponentMaxBatchSize: NeuralNetworkComponent -> Int = lam comp.
  get (tensorShape comp.out_bufs) 0

let nnComponentInGrads: NeuralNetworkComponent -> Tensor[Float] = lam comp.
  comp.in_grads

let nnComponentOutBufs: NeuralNetworkComponent -> Tensor[Float] = lam comp.
  comp.out_bufs

let nnComponentWeights: NeuralNetworkComponent -> [Tensor[Float]] = lam comp.
  if eqi comp.ty nnCompType_FullyConnected then
    [comp.w, comp.b]
  else
    []

let nnComponentGradients: NeuralNetworkComponent -> [Tensor[Float]] = lam comp.
  if eqi comp.ty nnCompType_FullyConnected then
    [comp.w_grads, comp.b_grads]
  else
    []

-- Inputs is a tensor where the first index specifies the data point. E.g. if a
-- single input has dimension AxB, then inputs shall have dimension NxAxB where
-- N represents the number of inputs.
let nnComponentApplyExn: Int -> Tensor[Float] -> NeuralNetworkComponent -> Tensor[Float] =
  lam s_max: Int. lam inputs: Tensor[Float]. lam comp: NeuralNetworkComponent.
  let ty = comp.ty in
  if eqi ty nnCompType_FullyConnected then (
    #var"tensorOpExn: z = Wx+B" s_max comp.w inputs comp.b comp.out_bufs;
    comp.out_bufs
  ) else if eqi ty nnCompType_ReLU then (
    #var"tensorOpExn: z = ReLU(x)" s_max inputs comp.out_bufs;
    comp.out_bufs
  ) else if eqi ty nnCompType_SoftMax then (
    #var"tensorOpExn: z = SoftMax(x)" s_max inputs comp.softmax_bufs comp.out_bufs;
    comp.out_bufs
  ) else (
    comp.out_bufs --error (join ["nnComponentApplyExn not handled for ", nnComponentName comp])
  )

-- comp_inputs, like for the Apply function, contain multiple inputs separated
-- on the index in the first dimension. Same thing goes for output_grads. Both
-- comp_inputs and output_grads must share the first dimensionality, i.e. both
-- must be Sx[_]-dimensional.
let nnComponentBackpropExn: Int -> Tensor[Float] -> Tensor[Float] -> NeuralNetworkComponent -> Tensor[Float] =
  lam s_max: Int. lam comp_inputs: Tensor[Float]. lam output_grads: Tensor[Float]. lam comp: NeuralNetworkComponent.
  let ty = comp.ty in
  if eqi ty nnCompType_FullyConnected then (
    -- Backpropagate on the Bias
    #var"tensorOpExn: z = x" s_max output_grads comp.b_grads;
    -- Backpropagate on the Weights
    #var"tensorOpExn: z = x * y^T" s_max output_grads comp_inputs comp.w_grads;
    -- Set the gradient of the input to this component
    #var"tensorOpExn: z = (x^T * W)^T" s_max output_grads comp.w comp.in_grads;
    comp.in_grads
  ) else if eqi ty nnCompType_ReLU then (
    -- no weights to increment, just update the input gradient
    #var"tensorOpExn: z = d/dx(l(ReLU(x))" s_max comp.out_bufs output_grads comp.in_grads;
    comp.in_grads
  ) else if eqi ty nnCompType_SoftMax then (
    -- no weights to increment, just update the input gradient
    #var"tensorOpExn: z = d/dx(l(SoftMax(x)))" s_max comp.out_bufs output_grads comp.in_grads;
    comp.in_grads
  ) else (
    comp.in_grads --error (join ["nnComponentBackpropExn not handled for ", nnComponentName comp])
  )

let nnComponent_TEMP_SetGradients: Float -> NeuralNetworkComponent -> () =
  lam scalar: Float. lam comp: NeuralNetworkComponent.
  let ty = comp.ty in
  if eqi ty nnCompType_FullyConnected then (
    #var"tensorOpExn: Z = scalar(c)" scalar comp.w_grads;
    #var"tensorOpExn: Z = scalar(c)" scalar comp.b_grads
  ) else ()

let nnComponent_TEMP_ReduceGradients: NeuralNetworkComponent -> () =
  lam comp: NeuralNetworkComponent.
  let ty = comp.ty in
  if eqi ty nnCompType_FullyConnected then (
    #var"tensorOpExn: Dim1Reduce(z, dst = z_0, op = +)" comp.w_grads;
    #var"tensorOpExn: Dim1Reduce(z, dst = z_0, op = +)" comp.b_grads
  ) else ()

let nnComponent_TEMP_ScaleGradients: Float -> NeuralNetworkComponent -> () =
  lam scalar: Float. lam comp: NeuralNetworkComponent.
  let ty = comp.ty in
  if eqi ty nnCompType_FullyConnected then (
    #var"tensorOpExn: z *= scalar(c)" 1 scalar comp.w_grads;
    #var"tensorOpExn: z *= scalar(c)" 1 scalar comp.b_grads
  ) else ()

let nnComponent_TEMP_ApplyGradients: Float -> NeuralNetworkComponent -> () =
  lam scalar: Float. lam comp: NeuralNetworkComponent.
  let ty = comp.ty in
  if eqi ty nnCompType_FullyConnected then (
    #var"tensorOpExn: Z += x * scalar(c)" 0 comp.w_grads scalar comp.w;
    #var"tensorOpExn: Z += x * scalar(c)" 0 comp.b_grads scalar comp.b
  ) else ()

let nnComponent_TEMP_L2Regularize: Float -> NeuralNetworkComponent -> () =
  lam scalar: Float. lam comp: NeuralNetworkComponent.
  let ty = comp.ty in
  if eqi ty nnCompType_FullyConnected then (
    #var"tensorOpExn: z += X * scalar(c)" 0 comp.w scalar comp.w_grads;
    #var"tensorOpExn: z += X * scalar(c)" 0 comp.b scalar comp.b_grads
  ) else ()

let nnComponentZeroGrad: NeuralNetworkComponent -> () = lam comp.
  nnComponent_TEMP_SetGradients 0.0 comp

let nnComponentDimensions: NeuralNetworkComponent -> {indim: [Int], outdim: [Int]} =
  lam comp.
  {
    indim = tail (tensorShape (nnComponentInGrads comp)),
    outdim = tail (tensorShape (nnComponentOutBufs comp))
  }

let nnComponentCopy: NeuralNetworkComponent -> NeuralNetworkComponent =
  lam comp.
  let name = nnComponentName comp in
  let max_batchsize = nnComponentMaxBatchSize comp in
  let dim: {indim: [Int], outdim: [Int]} = nnComponentDimensions comp in
  let weights = nnComponentWeights comp in
  nnComponentMakeExn dim.indim dim.outdim (map tensorCopy weights) max_batchsize name

let nnComponent2string: NeuralNetworkComponent -> String =
  lam comp.
  let name = nnComponentName comp in
  let max_batchsize = nnComponentMaxBatchSize comp in
  let dim: {indim: [Int], outdim: [Int]} = nnComponentDimensions comp in
  let seq2str = lam seq. join ["[", strJoin "," (map int2string seq), "]"] in
  join [name, " (", seq2str dim.indim, " -> ", seq2str dim.outdim, ")[max_batchsize=", int2string max_batchsize, "]"]


lang NNStandardComponents
end


-- Convencience constructors:

-- Initializes a fully connected component with the specified input and output
-- dimensions.
let nnFullyConnected: Int -> Int -> Int -> NeuralNetworkComponent = lam max_batchsize. lam indim. lam outdim.
  use NNStandardComponents in
  let mu = 0.0 in
  let sigma = 0.001 in
  let w = tensorCreateCArrayFloat [indim,outdim] (lam. gaussianSample mu sigma) in
  let b = tensorCreateCArrayFloat [outdim] (lam. gaussianSample mu sigma) in
  nnComponentMakeExn [indim] [outdim] [w,b] max_batchsize "FullyConnected"

-- Initializes a ReLU component with the specified dimension
let nnReLU: Int -> Int -> NeuralNetworkComponent = lam max_batchsize. lam dim.
  use NNStandardComponents in
  nnComponentMakeExn [dim] [dim] [] max_batchsize "ReLU"

-- Initializes a SoftMax component with the specified dimension
let nnSoftMax: Int -> Int -> NeuralNetworkComponent = lam max_batchsize. lam dim.
  use NNStandardComponents in
  nnComponentMakeExn [dim] [dim] [] max_batchsize "SoftMax"
