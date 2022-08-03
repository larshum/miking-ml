-- numvalid.mc
-- Numerical validation of gradients

include "common.mc"
include "math.mc"
include "tensor.mc"

include "../nn/network.mc"

-- Numerical validation of the analytically computed gradients
--  printDetails: Whether or not to print detail in addition to the final difference
--  network: The network to check
--  componentIdx: The component to check numerical gradients for in the network
--  dp: The datapoint to use for validation
let nntestNumericalValidationGeneric =
  lam printDetails: Bool.
  lam bsize: Int.
  lam network: NeuralNetwork.
  lam componentIdx: Int.
  lam dp: DataPoint.
  use NNStandard in
  let dPrintLn = lam s. if printDetails then printLn s else () in
  let dPrint = lam s. if printDetails then print s else () in
  let batch: DataBatch = {
    inputs = tensorCreateCArrayFloat (cons bsize (tensorShape dp.input)) (lam idx.
      tensorGetExn dp.input (tail idx)
    ),
    correct_linear_outidxs = tensorCreateCArrayInt [bsize] (lam. dp.correct_linear_outidx)
  } in
  dPrintLn "computing analytical gradients...";
  nnBackpropExn network batch;
  let baseline_loss = tensorGetExn (nnComputeLossesExn network batch) [subi bsize 1] in
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
          tensorSetExn weights_copy (tail idx) (addf (tensorGetExn weights_copy (tail idx)) h);
          let new_loss = tensorGetExn (nnComputeLossesExn network_copy batch) [0] in
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
    input = tensorCreateCArrayFloat [4] (lam idx. int2float (addi (get idx 0) 1)),
    correct_outidx = [1],
    correct_linear_outidx = 1
  } in
  let bsize = 4 in
  let network: NeuralNetwork =
    nnMake [nnFullyConnected bsize 4 6,
            nnReLU bsize 6,
            nnFullyConnected bsize 6 8,
            nnReLU bsize 8,
            nnFullyConnected bsize 8 10,
            nnSoftMax bsize 10]
           (nnCrossEntropyLoss bsize 10)
  in
  printLn "[Test Case 1]";
  nntestNumericalValidationGeneric false bsize (nnCopy network) 0 dp;
  printLn "[Test Case 2]";
  nntestNumericalValidationGeneric false bsize (nnCopy network) 2 dp;
  printLn "[Test Case 3]";
  nntestNumericalValidationGeneric false bsize (nnCopy network) 4 dp;
  let network: NeuralNetwork =
    nnMake [nnFullyConnected bsize 4 8,
            nnReLU bsize 8,
            nnFullyConnected bsize 8 10]
           (nnSoftMaxCrossEntropyLoss bsize 10)
  in
  printLn "[Test Case 4]";
  nntestNumericalValidationGeneric false bsize (nnCopy network) 0 dp;
  printLn "[Test Case 5]";
  nntestNumericalValidationGeneric false bsize (nnCopy network) 2 dp;
  ()

mexpr
nntestNumericalValidation ()

