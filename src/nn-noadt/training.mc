-- training.mc
-- Functionality for training a Neural Network

include "./accuracy.mc"
include "./network.mc"

-- Common parameters for stochastic gradient descent
type SGDParameters = {
  init_alpha: Float,
  init_lambda: Float,
  decay_alpha: Float,
  decay_lambda: Float,
  batchsize: Int,
  epochs: Int,
  printStatus: Bool,
  evaluateBetweenEpochs: Bool,
  evaluateBeforeFirstEpoch: Bool
}

let nnVanillaSGDParameters: SGDParameters = {
    init_alpha = 0.9,
    init_lambda = 0.00,
    decay_alpha = 0.1,
    decay_lambda = 0.1,
    batchsize = 32,
    epochs = 10,
    printStatus = true,
    evaluateBetweenEpochs = false,
    evaluateBeforeFirstEpoch = false
}

let nnTrainSGD =
  lam params: SGDParameters.
  lam network: NeuralNetwork.
  lam training_data: [DataPoint].
  lam validation_data: [DataPoint].
  -- Determine the number of rounds to try to cover the entire training set
  let rounds =
    divi (addi (length training_data)
               (subi params.batchsize 1))
         params.batchsize
  in
  -- TEMP!
  -- let rounds = 10 in
  (
    if params.printStatus then
      printLn "Starting SGD (stochastic gradient descent)";
      printLn (join [" - training_data size: ", int2string (length training_data)]);
      printLn (join [" - validation_data size: ", int2string (length validation_data)]);
      printLn (join [" - batchsize: ", int2string params.batchsize]);
      printLn (join [" - rounds: ", int2string rounds]);
      printLn (join [" - epochs: ", int2string params.epochs]);
      printLn (join [" - alpha (initial learning rate): ", float2string params.init_alpha]);
      printLn (join [" - alpha decay: ", float2string params.decay_alpha]);
      printLn (join [" - lambda (initial L2 regularization factor): ", float2string params.init_lambda]);
      printLn (join [" - lambda decay: ", float2string params.decay_lambda])
    else ()
  );
  (
    if params.printStatus then
      printLn "Creating batches..."
    else ()
  );
  recursive let batchMakerH = lam dataset: [DataPoint]. lam acc: [DataBatch]. lam i: Int.
    let datalen = length dataset in
    (
      if params.printStatus then
        print (join ["\r(", int2string (addi i 1), "/", int2string datalen, ")"]);
        flushStdout ()
      else ()
    );
    if geqi i datalen then
      acc
    else
      let start_idx = i in
      let end_idx = addi start_idx params.batchsize in
      let end_idx = if geqi end_idx datalen then (subi datalen 1) else end_idx in
      let bsize = addi (subi end_idx start_idx) 1 in
      let _fst_dp: DataPoint = get dataset 0 in
      let datashape = tensorShape _fst_dp.input in
      let db_inputs = tensorCreateCArrayFloat (cons bsize datashape) (lam idx.
        let b_idx = get idx 0 in
        let d_idx = tail idx in
        let dp: DataPoint = get dataset b_idx in
        tensorGetExn dp.input d_idx
      ) in
      let db_outidxs = tensorCreateCArrayInt [bsize] (lam idx.
        let b_idx = get idx 0 in
        let dp: DataPoint = get dataset b_idx in
        dp.correct_linear_outidx
      ) in
      let db: DataBatch = {
        inputs = db_inputs,
        correct_linear_outidxs = db_outidxs
      } in
      batchMakerH dataset
                  (snoc acc db)
                  (addi i params.batchsize)
  in
  let training_batches = batchMakerH training_data [] 0 in
  (if params.printStatus then printLn "" else ());
  let validation_batches = batchMakerH validation_data [] 0 in
  (if params.printStatus then printLn "" else ());
  let wrappedPrint: String -> () = lam s.
    print s
    --; flushStdout ()
  in
  accelerate -- -/
  (
    (
      if params.evaluateBeforeFirstEpoch then
        (
          if params.printStatus then
            wrappedPrint "evalating performance...\n"
          else ()
        );
        let accuracy = nnAccuracyProportion params.printStatus network validation_batches in
        if params.printStatus then
          wrappedPrint "Computed accuracy: "; printFloat (mulf accuracy 100.0); wrappedPrint "%\n"
        else ()
      else ()
    );
    seqLoopAcc (params.init_alpha, params.init_lambda) params.epochs (lam acc: (Float, Float). lam epoch_idx.
      let epoch: Int = addi epoch_idx 1 in
      let alpha: Float = acc.0 in
      let lambda: Float = acc.1 in
      (
        if params.printStatus then
          wrappedPrint "[Iteration "; printFloat (int2float epoch); wrappedPrint "/"; printFloat (int2float params.epochs); print "]\n";
          wrappedPrint "[alpha = "; printFloat alpha; wrappedPrint "]\n";
          wrappedPrint "[lambda = "; printFloat lambda; wrappedPrint "]\n"
        else ()
      );
      seqLoop (length training_batches) (lam batch_idx.
        ( -- print round count (on a single line)
          if params.printStatus then (
            wrappedPrint "\rround "; printFloat (int2float (addi batch_idx 1)); wrappedPrint "/"; printFloat (int2float rounds)
          ) else ()
        );
        nnGradientDescentExn network alpha lambda (get training_batches batch_idx)
      );
      wrappedPrint "\n";
      (
        if params.evaluateBetweenEpochs then
          (
            if params.printStatus then
              wrappedPrint "evalating performance...\n"
            else ()
          );
          let accuracy = nnAccuracyProportion params.printStatus network validation_batches in
          if params.printStatus then
            wrappedPrint "Computed accuracy: "; printFloat (mulf accuracy 100.0); wrappedPrint "%\n"
          else ()
        else ()
      );
      -- prepare for the next iteration
      let decayed_alpha = mulf alpha (subf 1.0 params.decay_alpha) in
      let decayed_lambda = mulf lambda (subf 1.0 params.decay_lambda) in
      (decayed_alpha, decayed_lambda)
    );
    ()
  );
  ( -- final printout
    if params.printStatus then
      printLn "SGD complete."
    else ()
  );
  ()
