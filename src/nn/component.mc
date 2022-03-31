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

-- Base fragment for a neural network component
lang NNComponentBase
  syn NeuralNetworkComponent =
  -- intentionally left blank

  -- These functions are to be implemented by each individual component.
  sem nnComponentMakeExn: [Int] -> [Int] -> [Tensor[Float]] -> String -> NeuralNetworkComponent
  sem nnComponentMakeExn indim outdim weights =
  | invalid_name -> error (join ["Invalid component name \"", invalid_name, "\""])
  sem nnComponentName: NeuralNetworkComponent -> String
  sem nnComponentInGrad: NeuralNetworkComponent -> Tensor[Float]
  sem nnComponentOutBuf: NeuralNetworkComponent -> Tensor[Float]
  sem nnComponentWeights: NeuralNetworkComponent -> [Tensor[Float]]
  sem nnComponentGradients: NeuralNetworkComponent -> [Tensor[Float]]
  sem nnComponentApplyExn: Tensor[Float] -> NeuralNetworkComponent -> Tensor[Float]
  sem nnComponentBackpropExn: Tensor[Float] -> Tensor[Float] -> NeuralNetworkComponent -> Tensor[Float]

  -- Standard semantics that do not need to be implemented by specific components

  -- Zeros out all the gradients in the component
  sem nnComponentZeroGrad: NeuralNetworkComponent -> ()
  sem nnComponentZeroGrad =
  | comp ->
    let gradients = nnComponentGradients comp in
    seqLoop (length gradients) (lam i.
      let grad = get gradients i in
      #var"tensorOpExn: z = scalar(c)" 0.0 grad
    )

  -- Returns the input and output dimensions for a component
  sem nnComponentDimensions: NeuralNetworkComponent -> {indim: [Int], outdim: [Int]}
  sem nnComponentDimensions =
  | comp -> {
      indim = tensorShape (nnComponentInGrad comp),
      outdim = tensorShape (nnComponentOutBuf comp)
    }

  -- Copies the component with new independent tensors. Note that this will not
  -- preserve any gradients.
  sem nnComponentCopy: NeuralNetworkComponent -> NeuralNetworkComponent
  sem nnComponentCopy =
  | comp ->
    let name = nnComponentName comp in
    let dim: {indim: [Int], outdim: [Int]} = nnComponentDimensions comp in
    let weights = nnComponentWeights comp in
    nnComponentMakeExn dim.indim dim.outdim (map tensorCopy weights) name

  sem nnComponent2string: NeuralNetworkComponent -> String
  sem nnComponent2string =
  | comp ->
    let name = nnComponentName comp in
    let dim: {indim: [Int], outdim: [Int]} = nnComponentDimensions comp in
    let seq2str = lam seq. join ["[", strJoin "," (map int2string seq), "]"] in
    join [name, " (", seq2str dim.indim, " -> ", seq2str dim.outdim, ")"]
end


-- A fully connected component (Wx + b)
--  w: Matrix weights
--  b: Bias weights
--  out_buf: Buffer to store the output in
--  w_grad: Matrix (w) gradients with respect to the loss
--  b_grad: Bias (b) gradients with respect to the loss
--  in_grad: Buffer for storing gradient to the input of this layer with
--           respect to the loss.
lang NNFullyConnectedComponent
  syn NeuralNetworkComponent =
  | NNFullyConnected {
      w: Tensor[Float],
      b: Tensor[Float],
      out_buf: Tensor[Float],
      w_grad: Tensor[Float],
      b_grad: Tensor[Float],
      in_grad: Tensor[Float]
    }

  sem nnComponentMakeExn (indim: [Int]) (outdim: [Int]) (weights : [Tensor[Float]]) =
  | "FullyConnected" ->
    -- TODO(jwikman, 2022-03-20): Sanity check arguments!!!
    --   len(weights) == 2 ([w,b])
    --   indim == [get (tensorShape weights.0) 1, 1]
    --   outdim == tensorShape weights.1 == [get (tensorShape weights.0) 0, 1]
    let w = get weights 0 in
    let b = get weights 1 in
    NNFullyConnected {
      w = w,
      b = b,
      out_buf = tensorCreateCArrayFloat outdim (lam. 0.0),
      w_grad = tensorCreateCArrayFloat (tensorShape w) (lam. 0.0),
      b_grad = tensorCreateCArrayFloat (tensorShape b) (lam. 0.0),
      in_grad = tensorCreateCArrayFloat indim (lam. 0.0)
    }

  sem nnComponentName = | NNFullyConnected _ -> "FullyConnected"
  sem nnComponentInGrad = | NNFullyConnected r -> r.in_grad
  sem nnComponentOutBuf = | NNFullyConnected r -> r.out_buf
  sem nnComponentWeights = | NNFullyConnected r -> [r.w, r.b]
  sem nnComponentGradients = | NNFullyConnected r -> [r.w_grad, r.b_grad]
  sem nnComponentApplyExn (input : Tensor[Float]) =
  | NNFullyConnected r ->
    #var"tensorOpExn: z = Wx+b" r.w input r.b r.out_buf;
    r.out_buf
  sem nnComponentBackpropExn (comp_input: Tensor[Float]) (output_grad: Tensor[Float]) =
  | NNFullyConnected r ->
    -- Backpropagate on the Bias
    #var"tensorOpExn: z += x" output_grad r.b_grad;
    -- Backpropagate on the Weights
    #var"tensorOpExn: z += x * y^T" output_grad comp_input r.w_grad;
    -- Set the gradient of the input to this component
    #var"tensorOpExn: z = (x^T * W)^T" output_grad r.w r.in_grad;
    r.in_grad
end


-- A ReLU (rectified linear unit) component (max(0,x_i))
--  out_buf: Buffer to store the output in
--  in_grad: Buffer for storing gradient to the input of this layer with
--           respect to the loss.
lang NNReLUComponent
  syn NeuralNetworkComponent =
  | NNReLU {out_buf: Tensor[Float], in_grad: Tensor[Float]}

  sem nnComponentMakeExn (indim: [Int]) (outdim: [Int]) (weights : [Tensor[Float]]) =
  | "ReLU" ->
    -- TODO(jwikman, 2022-03-20): Sanity check arguments!!!
    --   len(weights) == 0
    --   indim == outdim
    NNReLU {
      out_buf = tensorCreateCArrayFloat outdim (lam. 0.0),
      in_grad = tensorCreateCArrayFloat indim (lam. 0.0)
    }

  sem nnComponentName = | NNReLU _ -> "ReLU"
  sem nnComponentInGrad = | NNReLU r -> r.in_grad
  sem nnComponentOutBuf = | NNReLU r -> r.out_buf
  sem nnComponentWeights = | NNReLU _ -> (let e: [Tensor[Float]] = [] in e)
  sem nnComponentGradients = | NNReLU _ -> (let e: [Tensor[Float]] = [] in e)
  sem nnComponentApplyExn (input : Tensor[Float]) =
  | NNReLU r ->
    #var"tensorOpExn: z = ReLU(x)" input r.out_buf;
    r.out_buf
  sem nnComponentBackpropExn (comp_input: Tensor[Float]) (output_grad: Tensor[Float]) =
  | NNReLU r ->
    -- no weights to increment, just update the input gradient
    #var"tensorOpExn: z = d/dx(l(ReLU(x))" r.out_buf output_grad r.in_grad;
    r.in_grad
end


-- A SoftMax component, converting the vector to probabilities by the operation
-- p_i = exp(x_i) / sum(exp(x_j) for x_j in x)
--  out_buf: Buffer to store the output in
--  in_grad: Buffer for storing gradient to the input of this layer with
--           respect to the loss.
lang NNSoftMaxComponent
  syn NeuralNetworkComponent =
  | NNSoftMax {out_buf: Tensor[Float], in_grad: Tensor[Float]}

  sem nnComponentMakeExn (indim: [Int]) (outdim: [Int]) (weights : [Tensor[Float]]) =
  | "SoftMax" ->
    -- TODO(jwikman, 2022-03-20): Sanity check arguments!!!
    --   len(weights) == 0
    --   indim == outdim
    NNSoftMax {
      out_buf = tensorCreateCArrayFloat outdim (lam. 0.0),
      in_grad = tensorCreateCArrayFloat indim (lam. 0.0)
    }

  sem nnComponentName = | NNSoftMax _ -> "SoftMax"
  sem nnComponentInGrad = | NNSoftMax r -> r.in_grad
  sem nnComponentOutBuf = | NNSoftMax r -> r.out_buf
  sem nnComponentWeights = | NNSoftMax _ -> (let e: [Tensor[Float]] = [] in e)
  sem nnComponentGradients = | NNSoftMax _ -> (let e: [Tensor[Float]] = [] in e)
  sem nnComponentApplyExn (input : Tensor[Float]) =
  | NNSoftMax r ->
    #var"tensorOpExn: z = SoftMax(x)" input r.out_buf;
    r.out_buf
  sem nnComponentBackpropExn (comp_input: Tensor[Float]) (output_grad: Tensor[Float]) =
  | NNSoftMax r ->
    -- no weights to increment, just update the input gradient
    #var"tensorOpExn: z = d/dx(l(SoftMax(x)))" r.out_buf output_grad r.in_grad;
    r.in_grad
end

lang NNStandardComponents = NNComponentBase
                          + NNFullyConnectedComponent
                          + NNReLUComponent
                          + NNSoftMaxComponent
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
