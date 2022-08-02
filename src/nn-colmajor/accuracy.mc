-- accuracy.mc
-- Accuracy evaluation for neural networks

include "./network.mc"

let tensorSize: Tensor[Float] -> Int = lam t. foldl (lam acc. lam e. muli acc e) 1 (tensorShape t)

-- Returns the number of correct guesses done by the network on the provided
-- dataset.
let nnAccuracyDiscrete: Bool -> NeuralNetwork -> [DataBatch] -> Int =
  lam printStatus. lam network. lam batches: [DataBatch].
  -- helper function for fetching the maximum linear idx in the tensor
  let tensorLinearMaxIdx: Int -> Tensor[Float] -> Int =
    lam s_idx: Int. lam t: Tensor[Float].
    let s = get (tensorShape t) 0 in
    let size = divi (tensorSize t) s in
    let s_offset = muli s_idx size in
    seqLoopAcc (subi size 1) (subi size 1) (lam cand_idx. lam idx.
      if gtf (tensorLinearGetExn t (addi idx s_offset)) (tensorLinearGetExn t (addi cand_idx s_offset)) then
        idx
      else
        cand_idx
    )
  in
  let correct_guesses =
    seqLoopAcc 0 (length batches) (lam acc: Int. lam i: Int.
      (
        if printStatus then
          print "\r"; printFloat (int2float (addi i 1)); print "/"; printFloat (int2float (length batches))
        else ()
      );
      let batch: DataBatch = get batches i in
      let batchsize = get (tensorShape batch.inputs) 0 in
      let outputs = nnEvalExn network batch.inputs in
      let batch_accuracy =
        seqLoopAcc 0 batchsize (lam b_acc: Int. lam b_idx: Int.
          if eqi (tensorLinearMaxIdx b_idx outputs) (tensorGetExn batch.correct_linear_outidxs [b_idx]) then
            addi b_acc 1
          else
            b_acc
        )
      in
      addi acc batch_accuracy
    )
  in
  (
    if printStatus then print "\n" else ()
  );
  correct_guesses

-- Returns the proportion of correct guesses done by the network on the
-- provided dataset.
let nnAccuracyProportion: Bool -> NeuralNetwork -> [DataBatch] -> Float =
  lam printStatus. lam network. lam batches.
  let correct_guesses = nnAccuracyDiscrete printStatus network batches in
  let datalength =
    foldl (lam acc. lam batch: DataBatch.
      addi acc (get (tensorShape batch.inputs) 0)
    ) 0 batches
  in
  divf (int2float correct_guesses) (int2float datalength)
