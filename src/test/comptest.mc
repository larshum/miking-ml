-- comptest.mc
-- testing output from component operations

include "common.mc"
include "../nn-noadt/component.mc"

let nntestFullyConnected = lam printDetails.
  let dPrintLn = lam s. if printDetails then printLn s else () in
  let dPrint = lam s. if printDetails then print s else () in
  let batchsize = 2 in
  let indim = 6 in
  let outdim = 4 in
  let indata = [
    [0.0, 1.0, 2.0, 3.0, 4.0, 5.0],
    [10.0, 20.0, 30.0, 40.0, 50.0, 60.0]
  ] in
  let batch_inputs =
    tensorCreateCArrayFloat [batchsize,indim] (lam idx.
      let s_idx = get idx 0 in
      let d_idx = get idx 1 in
      get (get indata s_idx) d_idx
    )
  in
  let comp = nnFullyConnected batchsize indim outdim in
  -- test a forward pass
  let outputs = nnComponentApplyExn batchsize batch_inputs comp in
  dPrint "forward pass outputs: ";
  dPrintLn (tensor2string float2string outputs);
  -- some made-up output gradients
  let out_grad_data = [
    [0.1, 0.2, 0.3, 0.4],
    [0.9, 0.8, 0.7, 0.6]
  ] in
  let output_gradients =
    tensorCreateCArrayFloat [batchsize,outdim] (lam idx.
      let s_idx = get idx 0 in
      let d_idx = get idx 1 in
      get (get out_grad_data s_idx) d_idx
    )
  in
  let in_grads = nnComponentBackpropExn batchsize batch_inputs output_gradients comp in
  dPrint "backwards pass outputs (in_grads): ";
  dPrintLn (tensor2string float2string in_grads);
  ()




-- Preconfigured test suite for testing component operations
let nntestAllComponents = lam.
  use NNStandard in
  printLn "┌──────────────────────────────┐";
  printLn "│ Component Operations Testing │";
  printLn "│    (Eyeball Verification)    │";
  printLn "└──────────────────────────────┘";
  printLn "[Fully Connected]";
  nntestFullyConnected true;
  ()




