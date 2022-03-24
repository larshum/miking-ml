-- numvalid.mc
-- Numerical validation of gradients

include "common.mc"
include "math.mc"
include "tensor.mc"

include "../nn/network.mc"

-- Numerical validation of the analytically computed gradients
let nntestNumericalValidation = lam.
  -- Specify the layer to check here
  let chkidx: Int = 0 in
  use NNStandard in
  let dp: DataPoint = {
    input = tensorCreateDense [4,1] (lam idx. int2float (addi (get idx 0) 1)),
    correct_outidx = [1,0]
  } in
  let network: NeuralNetwork =
    nnMake [
             nnFullyConnected 4 6,
             nnReLU 6,
             nnFullyConnected 6 8,
             nnReLU 8,
             nnFullyConnected 8 10,
             nnSoftMax 10
           ]
           (nnCrossEntropyLoss 10)
  in
  printLn "computing analytical gradients...";
  nnBackpropExn network dp;
  let baseline_loss = nnComputeLossExn network dp in
  printLn (join ["baseline loss: ", float2string baseline_loss]);
  let h = 1.0e-4 in
  printLn (join ["computing numerical gradients using stepsize h = ", float2string h]);
  let gradients = nnComponentGradients (get network.components chkidx) in
  -- Iterate over all gradients in the component to check
  recursive let forall_gradients = lam grad_idx: Int.
    if eqi grad_idx (length gradients) then () else (
      let analytical_grad = get gradients grad_idx in
      print (join ["analytical (idx: ", int2string grad_idx, ") "]);
      printLn (tensor2string float2string analytical_grad);

      let numerical_grad = tensorCreateDense (tensorShape analytical_grad) (lam. 0.0) in
      recursive let iter_grad = lam i.
        if eqi i (tensorSize numerical_grad) then () else (
          let idx = linearToCartesianIndex (tensorShape numerical_grad) i in
          -- perform a small step on w_idx
          let network_copy = nnCopy network in
          let weights_copy = get (nnComponentWeights (get network_copy.components chkidx)) grad_idx in
          tensorSetExn weights_copy idx (addf (tensorGetExn weights_copy idx) h);
          let new_loss = nnComputeLossExn network_copy dp in
          --printLn (join [" - new_loss = ", float2string new_loss]);
          let numdiff = divf (subf new_loss baseline_loss) h in
          tensorSetExn numerical_grad idx numdiff;
          iter_grad (addi i 1)
        )
      in
      iter_grad 0;
      print (join ["numerical (idx: ", int2string grad_idx, ") "]);
      printLn (tensor2string float2string numerical_grad);

      let absf = lam x. if gtf x 0.0 then x else negf x in
      let absmaxf = lam a: Float. lam b: Float.
        let absa = absf a in
        let absb = absf b in
        if gtf absa absb then absa else absb
      in

      -- compute statistics, normalize everything to be between [-1,1]
      let divisor = tensorFold absmaxf (tensorFold absmaxf 0.0 numerical_grad) analytical_grad in
      let difference_grad = tensorCreateDense (tensorShape numerical_grad) (lam idx.
        absf (subf (divf (tensorGetExn numerical_grad idx) divisor)
                   (divf (tensorGetExn analytical_grad idx) divisor))
      ) in
      print (join ["normalized differences (idx: ", int2string grad_idx, ") "]);
      printLn (tensor2string float2string difference_grad);
      let diff_avg = divf (tensorFold addf 0.0 difference_grad) (int2float (tensorSize difference_grad)) in
      printLn (join ["normalized avg. difference (idx: ", int2string grad_idx, "): ", float2string diff_avg]);

      forall_gradients (addi grad_idx 1)
    )
  in
  forall_gradients 0;
  ()

