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
  w_grad: Tensor[Float],
  b_grad: Tensor[Float],
  out_buf: Tensor[Float],
  in_grad: Tensor[Float]
}

let nnComponentMakeExn: [Int] -> [Int] -> [Tensor[Float]] -> String -> NeuralNetworkComponent =
  lam indim: [Int]. lam outdim: [Int]. lam weights: [Tensor[Float]]. lam name: String.
  if eqString name "FullyConnected" then
    let w = get weights 0 in
    let b = get weights 1 in
    {
      ty = nnCompType_FullyConnected,
      w = w,
      b = b,
      out_buf = tensorCreateCArrayFloat outdim (lam. 0.0),
      w_grad = tensorCreateCArrayFloat (tensorShape w) (lam. 0.0),
      b_grad = tensorCreateCArrayFloat (tensorShape b) (lam. 0.0),
      in_grad = tensorCreateCArrayFloat indim (lam. 0.0)
    }
  else if eqString name "ReLU" then
    {
      ty = nnCompType_ReLU,
      w = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      b = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      out_buf = tensorCreateCArrayFloat outdim (lam. 0.0),
      w_grad = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      b_grad = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      in_grad = tensorCreateCArrayFloat indim (lam. 0.0)
    }
  else if eqString name "SoftMax" then
    {
      ty = nnCompType_SoftMax,
      w = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      b = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      out_buf = tensorCreateCArrayFloat outdim (lam. 0.0),
      w_grad = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      b_grad = tensorCreateCArrayFloat [1] (lam. 0.0), -- dummy
      in_grad = tensorCreateCArrayFloat indim (lam. 0.0)
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

let nnComponentInGrad: NeuralNetworkComponent -> Tensor[Float] = lam comp.
  comp.in_grad

let nnComponentOutBuf: NeuralNetworkComponent -> Tensor[Float] = lam comp.
  comp.out_buf

let nnComponentWeights: NeuralNetworkComponent -> [Tensor[Float]] = lam comp.
  if eqi comp.ty nnCompType_FullyConnected then
    [comp.w, comp.b]
  else
    []

let nnComponentGradients: NeuralNetworkComponent -> [Tensor[Float]] = lam comp.
  if eqi comp.ty nnCompType_FullyConnected then
    [comp.w_grad, comp.b_grad]
  else
    []

let nnComponentApplyExn: Tensor[Float] -> NeuralNetworkComponent -> Tensor[Float] =
  lam input: Tensor[Float]. lam comp: NeuralNetworkComponent.
  if eqi comp.ty nnCompType_FullyConnected then (
    #var"tensorOpExn: z = Wx+b" comp.w input comp.b comp.out_buf;
    comp.out_buf
  ) else if eqi comp.ty nnCompType_ReLU then (
    #var"tensorOpExn: z = ReLU(x)" input comp.out_buf;
    comp.out_buf
  ) else if eqi comp.ty nnCompType_SoftMax then (
    #var"tensorOpExn: z = SoftMax(x)" input comp.out_buf;
    comp.out_buf
  ) else (
    comp.out_buf --error (join ["nnComponentApplyExn not handled for ", nnComponentName comp])
  )

let nnComponentBackpropExn: Tensor[Float] -> Tensor[Float] -> NeuralNetworkComponent -> Tensor[Float] =
  lam comp_input: Tensor[Float]. lam output_grad: Tensor[Float]. lam comp: NeuralNetworkComponent.
  if eqi comp.ty nnCompType_FullyConnected then (
    -- Backpropagate on the Bias
    #var"tensorOpExn: z += x" output_grad comp.b_grad;
    -- Backpropagate on the Weights
    #var"tensorOpExn: z += x * y^T" output_grad comp_input comp.w_grad;
    -- Set the gradient of the input to this component
    #var"tensorOpExn: z = (x^T * W)^T" output_grad comp.w comp.in_grad;
    comp.in_grad
  ) else if eqi comp.ty nnCompType_ReLU then (
    -- no weights to increment, just update the input gradient
    #var"tensorOpExn: z = d/dx(l(ReLU(x))" comp.out_buf output_grad comp.in_grad;
    comp.in_grad
  ) else if eqi comp.ty nnCompType_SoftMax then (
    -- no weights to increment, just update the input gradient
    #var"tensorOpExn: z = d/dx(l(SoftMax(x)))" comp.out_buf output_grad comp.in_grad;
    comp.in_grad
  ) else (
    comp.in_grad --error (join ["nnComponentBackpropExn not handled for ", nnComponentName comp])
  )

let nnComponent_TEMP_SetGradients: Float -> NeuralNetworkComponent -> () =
  lam scalar: Float. lam comp: NeuralNetworkComponent.
  if eqi comp.ty nnCompType_FullyConnected then (
    #var"tensorOpExn: z = scalar(c)" scalar comp.w_grad;
    #var"tensorOpExn: z = scalar(c)" scalar comp.b_grad
  ) else ()

let nnComponent_TEMP_ScaleGradients: Float -> NeuralNetworkComponent -> () =
  lam scalar: Float. lam comp: NeuralNetworkComponent.
  if eqi comp.ty nnCompType_FullyConnected then (
    #var"tensorOpExn: z *= scalar(c)" scalar comp.w_grad;
    #var"tensorOpExn: z *= scalar(c)" scalar comp.b_grad
  ) else ()

let nnComponent_TEMP_ApplyGradients: Float -> NeuralNetworkComponent -> () =
  lam scalar: Float. lam comp: NeuralNetworkComponent.
  if eqi comp.ty nnCompType_FullyConnected then (
    #var"tensorOpExn: z += x * scalar(c)" comp.w_grad scalar comp.w;
    #var"tensorOpExn: z += x * scalar(c)" comp.b_grad scalar comp.b
  ) else ()

let nnComponent_TEMP_L2Regularize: Float -> NeuralNetworkComponent -> () =
  lam scalar: Float. lam comp: NeuralNetworkComponent.
  if eqi comp.ty nnCompType_FullyConnected then (
    #var"tensorOpExn: z += x * scalar(c)" comp.w scalar comp.w_grad;
    #var"tensorOpExn: z += x * scalar(c)" comp.b scalar comp.b_grad
  ) else ()

let nnComponentZeroGrad: NeuralNetworkComponent -> () = lam comp.
  nnComponent_TEMP_SetGradients 0.0 comp

let nnComponentDimensions: NeuralNetworkComponent -> {indim: [Int], outdim: [Int]} =
  lam comp.
  {
    indim = tensorShape (nnComponentInGrad comp),
    outdim = tensorShape (nnComponentOutBuf comp)
  }

let nnComponentCopy: NeuralNetworkComponent -> NeuralNetworkComponent =
  lam comp.
  let name = nnComponentName comp in
  let dim: {indim: [Int], outdim: [Int]} = nnComponentDimensions comp in
  let weights = nnComponentWeights comp in
  nnComponentMakeExn dim.indim dim.outdim (map tensorCopy weights) name

let nnComponent2string: NeuralNetworkComponent -> String =
  lam comp.
  let name = nnComponentName comp in
  let dim: {indim: [Int], outdim: [Int]} = nnComponentDimensions comp in
  let seq2str = lam seq. join ["[", strJoin "," (map int2string seq), "]"] in
  join [name, " (", seq2str dim.indim, " -> ", seq2str dim.outdim, ")"]


lang NNStandardComponents
end


-- Convencience constructors:

-- Initializes a fully connected component with the specified input and output
-- dimensions.
let nnFullyConnected: Int -> Int -> NeuralNetworkComponent = lam indim. lam outdim.
  use NNStandardComponents in
  let mu = 0.0 in
  let sigma = 0.001 in
  let w = tensorCreateCArrayFloat [outdim,indim] (lam. gaussianSample mu sigma) in
  let b = tensorCreateCArrayFloat [outdim,1] (lam. gaussianSample mu sigma) in
  nnComponentMakeExn [indim,1] [outdim,1] [w,b] "FullyConnected"

-- Initializes a ReLU component with the specified dimension
let nnReLU: Int -> NeuralNetworkComponent = lam dim.
  use NNStandardComponents in
  nnComponentMakeExn [dim,1] [dim,1] [] "ReLU"

-- Initializes a SoftMax component with the specified dimension
let nnSoftMax: Int -> NeuralNetworkComponent = lam dim.
  use NNStandardComponents in
  nnComponentMakeExn [dim,1] [dim,1] [] "SoftMax"
