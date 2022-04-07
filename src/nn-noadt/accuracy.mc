-- accuracy.mc
-- Accuracy evaluation for neural networks

include "./network.mc"

let tensorSize: Tensor[Float] -> Int = lam t. foldl (lam acc. lam e. muli acc e) 1 (tensorShape t)

-- Returns the number of correct guesses done by the network on the provided
-- dataset.
let nnAccuracyDiscrete: Bool -> NeuralNetwork -> [DataPoint] -> Int =
  lam printStatus. lam network. lam dataset: [DataPoint].
  -- helper function for fetching the maximum linear idx in the tensor
  let tensorLinearMaxIdx: Tensor[Float] -> Int = lam t: Tensor[Float].
    let size = tensorSize t in
    seqLoopAcc (subi size 1) (subi size 1) (lam cand_idx. lam idx.
      if gtf (tensorLinearGetExn t idx) (tensorLinearGetExn t cand_idx) then
        idx
      else
        cand_idx
    )
  in
  let correct_guesses =
    seqLoopAcc 0 (length dataset) (lam acc: Int. lam i: Int.
      (
        if printStatus then
          print "\r"; printFloat (int2float (addi i 1)); print "/"; printFloat (int2float (length dataset))
        else ()
      );
      let dp: DataPoint = get dataset i in
      let output = nnEvalExn network dp.input in
      if eqi (tensorLinearMaxIdx output) dp.correct_linear_outidx then
        addi acc 1
      else
        acc
    )
  in
  (
    if printStatus then print "\n" else ()
  );
  correct_guesses

-- Returns the proportion of correct guesses done by the network on the
-- provided dataset.
let nnAccuracyProportion: Bool -> NeuralNetwork -> [DataPoint] -> Float =
  lam printStatus. lam network. lam dataset.
  let correct_guesses = nnAccuracyDiscrete printStatus network dataset in
  divf (int2float correct_guesses) (int2float (length dataset))
