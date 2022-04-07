-- numvalid.mc
-- Numerical validation of gradients

include "common.mc"
include "math.mc"
include "tensor.mc"

include "../nn-noadt/network.mc"

-- Numerical validation of the analytically computed gradients
--  printDetails: Whether or not to print detail in addition to the final difference
--  network: The network to check
--  componentIdx: The component to check numerical gradients for in the network
--  dp: The datapoint to use for validation
let nntestNumericalValidationGeneric =
  lam printDetails: Bool.
  lam network: NeuralNetwork.
  lam componentIdx: Int.
  lam dp: DataPoint.
  use NNStandard in
  let dPrintLn = lam s. if printDetails then printLn s else () in
  let dPrint = lam s. if printDetails then print s else () in
  dPrintLn "computing analytical gradients...";
  nnBackpropExn network dp;
  let baseline_loss = nnComputeLossExn network dp in
  dPrintLn (join ["baseline loss: ", float2string baseline_loss]);
  let h = 1.0e-4 in
  dPrintLn (join ["computing numerical gradients using stepsize h = ", float2string h]);
  let gradients = nnComponentGradients (get network.components componentIdx) in
  -- Iterate over all gradients in the component to check
  recursive let forall_gradients = lam grad_idx: Int.
    if eqi grad_idx (length gradients) then () else (
      let analytical_grad = get gradients grad_idx in
      dPrint (join ["analytical (idx: ", int2string grad_idx, ") "]);
      dPrintLn (tensor2string float2string analytical_grad);

      let numerical_grad = tensorCreateCArrayFloat (tensorShape analytical_grad) (lam. 0.0) in
      recursive let iter_grad = lam i.
        if eqi i (tensorSize numerical_grad) then () else (
          let idx = linearToCartesianIndex (tensorShape numerical_grad) i in
          -- perform a small step on w_idx
          let network_copy = nnCopy network in
          let weights_copy = get (nnComponentWeights (get network_copy.components componentIdx)) grad_idx in
          tensorSetExn weights_copy idx (addf (tensorGetExn weights_copy idx) h);
          let new_loss = nnComputeLossExn network_copy dp in
          --dPrintLn (join [" - new_loss = ", float2string new_loss]);
          let numdiff = divf (subf new_loss baseline_loss) h in
          tensorSetExn numerical_grad idx numdiff;
          iter_grad (addi i 1)
        )
      in
      iter_grad 0;
      dPrint (join ["numerical (idx: ", int2string grad_idx, ") "]);
      dPrintLn (tensor2string float2string numerical_grad);

      let absf = lam x. if gtf x 0.0 then x else negf x in
      let absmaxf = lam a: Float. lam b: Float.
        let absa = absf a in
        let absb = absf b in
        if gtf absa absb then absa else absb
      in

      -- compute statistics, regularize everything to be between [-1,1]
      let divisor = tensorFold absmaxf (tensorFold absmaxf 0.0 numerical_grad) analytical_grad in
      let difference_grad = tensorCreateCArrayFloat (tensorShape numerical_grad) (lam idx.
        absf (subf (divf (tensorGetExn numerical_grad idx) divisor)
                   (divf (tensorGetExn analytical_grad idx) divisor))
      ) in
      dPrint (join ["regularized differences (idx: ", int2string grad_idx, ") "]);
      dPrintLn (tensor2string float2string difference_grad);
      let diff_avg = divf (tensorFold addf 0.0 difference_grad) (int2float (tensorSize difference_grad)) in
      printLn (join ["regularized avg. difference (idx: ", int2string grad_idx, "): ", float2string diff_avg]);

      forall_gradients (addi grad_idx 1)
    )
  in
  forall_gradients 0;
  ()

-- Preconfigured test suite for numerical validation
let nntestNumericalValidation = lam.
  use NNStandard in
  printLn "┌──────────────────────────────┐";
  printLn "│ Numerical Validation Testing │";
  printLn "│    Avg.Diff < 1e-05 is OK    │";
  printLn "└──────────────────────────────┘";
  let dp: DataPoint = {
    input = tensorCreateCArrayFloat [4,1] (lam idx. int2float (addi (get idx 0) 1)),
    correct_outidx = [1,0]
  } in
  let network: NeuralNetwork =
    nnMake [nnFullyConnected 4 6,
            nnReLU 6,
            nnFullyConnected 6 8,
            nnReLU 8,
            nnFullyConnected 8 10,
            nnSoftMax 10]
           (nnCrossEntropyLoss 10)
  in
  printLn "[Test Case 1]";
  nntestNumericalValidationGeneric false (nnCopy network) 0 dp;
  printLn "[Test Case 2]";
  nntestNumericalValidationGeneric false (nnCopy network) 2 dp;
  printLn "[Test Case 3]";
  nntestNumericalValidationGeneric false (nnCopy network) 4 dp;
  let network: NeuralNetwork =
    nnMake [nnFullyConnected 4 8,
            nnReLU 8,
            nnFullyConnected 8 10]
           (nnSoftMaxCrossEntropyLoss 10)
  in
  printLn "[Test Case 4]";
  nntestNumericalValidationGeneric false (nnCopy network) 0 dp;
  printLn "[Test Case 5]";
  nntestNumericalValidationGeneric false (nnCopy network) 2 dp;
  ()

