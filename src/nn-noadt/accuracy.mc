-- accuracy.mc
-- Accuracy evaluation for neural networks

include "./network.mc"

-- Returns the number of correct guesses done by the network on the provided
-- dataset.
let nnAccuracyDiscrete: Bool -> NeuralNetwork -> [DataPoint] -> Int =
  lam printStatus. lam network. lam dataset.
  -- helper function for fetching the maximum linear idx in the tensor
  let tensorLinearMaxIdx = lam t: Tensor[Float].
    recursive let iterH = lam pivot. lam i.
      if eqi i (tensorSize t) then pivot else (
        match pivot with (pivot_val, pivot_idx) in
        let cartidx = linearToCartesianIndex (tensorShape t) i in
        let candidate = tensorGetExn t cartidx in
        if gtf candidate pivot_val then
          iterH (candidate, i) (addi i 1)
        else
          iterH pivot (addi i 1)
      )
    in
    let ret = iterH (tensorGetExn t [0,0], 0) 1 in
    match ret with (_, maxidx) in
    maxidx
  in
  let correct_guessacc = foldl (lam acc. lam dp: DataPoint.
    match acc with (correct, i) in
    (
      if printStatus then
        print (join ["\r", int2string (addi i 1), "/", int2string (length dataset)]); flushStdout ()
      else ()
    );
    let output = nnEvalExn network dp.input in
    if eqi (tensorLinearMaxIdx output) (cartesianToLinearIndex (tensorShape output) dp.correct_outidx) then
      (addi correct 1, addi i 1)
    else
      (correct, addi i 1)
  ) (0,0) dataset in
  (
  	if printStatus then printLn "" else ()
  );
  match correct_guessacc with (correct_guesses, _) in
  correct_guesses

-- Returns the proportion of correct guesses done by the network on the
-- provided dataset.
let nnAccuracyProportion: Bool -> NeuralNetwork -> [DataPoint] -> Float =
  lam printStatus. lam network. lam dataset.
  let correct_guesses = nnAccuracyDiscrete printStatus network dataset in
  divf (int2float correct_guesses) (int2float (length dataset))
