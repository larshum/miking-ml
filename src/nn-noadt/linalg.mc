-- linalg.mc
-- Linear algebra operations for neural networks, designed to be optimal for
-- parallel computations.


-- Iterates f n-times passing the incremented number as an argument on each
-- iteration. (SE is short for "Side Effect")
let _iterateSE: (Int -> ()) -> Int -> () = lam f. lam n.
  recursive let iterH = lam i.
    if eqi i n then () else (
      f i;
      iterH (addi i 1)
    )
  in
  iterH 0

let tensorSize: Tensor[Float] -> Int = lam t. foldl (lam acc. lam e. muli acc e) 1 (tensorShape t)

/-
-- Sequential dummy of the parallelLoop intrinsic
let parallelLoop: Int -> (Int -> ()) -> () = lam n. lam f. _iterateSE f n

-- Sequential dummy of the seqLoopFoldl
let seqLoopFoldl: Float -> Int -> (Float -> Int -> Float) -> Float =
  lam initacc: Float. lam n: Int. lam f: (Float -> Int -> Float).
  recursive let work = lam acc. lam i.
    if eqi i n then acc
    else work (f acc i) (addi i 1)
  in work initacc 0
-- -/

-- Applies the operation z = Wx + B where
--  s_max is the iteration limit in the S-dimension
--  W is a MxN-dim matrix
--  x is a SxN-dim tensor (S no. of N-dim input vectors)
--  B is a M-dim vector
--  z is a SxM-dim output tensor
let #var"tensorOpExn: z = Wx+B": Int -> Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam s_max. lam w. lam x. lam b. lam z.
  let w_shape = tensorShape w in
  let m = get w_shape 0 in
  let n = get w_shape 1 in

  -- iterating function over indices in z (up to s_max)
  let iterfun: Int -> () = lam i.
    let s_idx = divi i m in

    let x_offset = muli s_idx n in
    let z_idx = i in

    -- convert index i to iterate over M-dimension
    let i = modi i m in
    -- dot product over the N-dimension
    -- The row below beforms the following operation: v = W_i,* · x^T + b_i
    let acc_init: Float = tensorLinearGetExn b i in
    let w_offset = muli n i in
    let v = seqLoopAcc (acc_init) n (lam acc: Float. lam j: Int.
      addf acc (mulf (tensorLinearGetExn w (addi w_offset j))
                     (tensorLinearGetExn x (addi x_offset j)))
    ) in
    tensorLinearSetExn z z_idx v -- z_i = v = W_i,* · x^T + b_i
  in
  -- apply the iterfun
  parallelLoop (muli s_max m) iterfun

/-
-- Applies the operation Z = x * y^T where
--  x is a M-dim vector
--  y is a N-dim vector
--  Z is a MxN-dim matrix
let #var"tensorOpExn: z = x * y^T": Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam y. lam z.
  let z_shape = tensorShape z in
  let m = get z_shape 0 in
  let n = get z_shape 1 in
  -- iterating function over all MxN rows and columns
  let iterfun: Int -> () = lam i.
    let row = divi i n in
    let col = modi i n in
    -- z_jk = x_j * y_k
    tensorLinearSetExn z i (
      mulf (tensorLinearGetExn x row)
           (tensorLinearGetExn y col)
    )
  in
  -- apply the iterfun
  parallelLoop (muli m n) iterfun
-/

-- Applies the operation z = x * y^T where
--  s_max is the iteration limit in the S-dimension
--  x is a SxM-dim tensor (S no. of M-dim vectors)
--  y is a SxN-dim tensor (S no. of N-dim vectors)
--  z is a SxMxN tensor (S no. of MxN matrices)
let #var"tensorOpExn: z = x * y^T": Int -> Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam s_max. lam x. lam y. lam z.
  let z_shape = tensorShape z in
  --let s = get z_shape 0 in
  let m = get z_shape 1 in
  let n = get z_shape 2 in
  let m_x_n = muli m n in

  -- iterate over all N columns (limited by s_max)
  let iterfun: Int -> () = lam i.
    let s_idx = divi i n in
    let col = modi i n in

    let z_offset = addi (muli s_idx m_x_n) col in
    let x_offset = muli s_idx m in
    let y_offset = muli s_idx n in

    let y_val = tensorLinearGetExn y (addi y_offset col) in
    seqLoopAcc z_offset m (lam z_idx: Int. lam row: Int.
      --let z_idx = addi z_offset (muli row n) in
      tensorLinearSetExn z z_idx (
        mulf y_val (tensorLinearGetExn x (addi x_offset row))
      );
      addi z_idx n
    );
    ()
  in
  parallelLoop (muli s_max n) iterfun


-- Applies the operation z = (x^T * W)^T where
--  s_max is the iteration limit in the S-dimension
--  x is a SxM-dim tensor (S no. of M-dim vectors)
--  W is a MxN matrix
--  z is a SxN-dim output tensor (S no. of M-dim vectors)
let #var"tensorOpExn: z = (x^T * W)^T": Int -> Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam s_max. lam x. lam w. lam z.
  let w_shape = tensorShape w in
  let m = get w_shape 0 in
  let n = get w_shape 1 in

  -- iterating function over the N-dimension in z
  let iterfun: Int -> () = lam j.
    let s_idx = divi j n in
    let n_idx = modi j n in

    let z_idx = j in
    let x_offset = muli s_idx m in
    -- convert j to represent the N-dimension for this S-index
    let j = n_idx in
    -- dot product over x and the j'th column in W
    -- The row below beforms the following operation: v = x · W_*,j
    let v = seqLoopAcc 0.0 m (lam acc: Float. lam i: Int.
        addf acc (mulf (tensorLinearGetExn w (addi (muli n i) j))
                       (tensorLinearGetExn x (addi x_offset i)))
    ) in
    tensorLinearSetExn z z_idx v -- z_j = v = x · W_*,j
  in
  -- apply the iterfun
  parallelLoop (muli s_max n) iterfun

/-
-- Applies the operation z += (x^T * W)^T where
--  x is a M-dim vector
--  W is a MxN matrix
--  z is a N-dim vector
let #var"tensorOpExn: z += (x^T * W)^T": Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam w. lam z.
  let w_shape = tensorShape w in
  let m = get w_shape 0 in
  let n = get w_shape 1 in
  -- iterating function over the N-dimension in z
  let iterfun: Int -> () = lam j.
    -- dot product over x and the j'th column in W
    -- The row below beforms the following operation: z_j += v = z_j + x · W_*,j
    let v = seqLoopAcc (tensorLinearGetExn z j) m (lam acc: Float. lam i: Int.
      addf acc (mulf (tensorLinearGetExn w (addi (muli n i) j))
                     (tensorLinearGetExn x i))
    ) in
    tensorLinearSetExn z j v -- z_j = v = z_j + (x · W_*,j)  =>  z_j += x · W_*,j
  in
  -- apply the iterfun
  parallelLoop n iterfun
-/


-- Applies the operation z = ReLU(x) where
--  s_max is the iteration limit in the S-dimension
--  x is an Sx[_]-dim tensor
--  z is a Sx[_]-dim output tensor with the same shape as x
-- and
--  ReLU(x) = [max(0,x_i) | x_i in x]
let #var"tensorOpExn: z = ReLU(x)": Int -> Tensor[Float] -> Tensor[Float] -> () =
  lam s_max. lam x. lam z.
  let s = get (tensorShape x) 0 in
  let m = divi (tensorSize x) s in

  -- applies ReLU for each index
  let iterfun: Int -> () = lam i.
    let x_i: Float = tensorLinearGetExn x i in
    tensorLinearSetExn z i (if gtf x_i 0.0 then x_i else 0.0)
  in
  -- apply the iterfun
  parallelLoop (muli s_max m) iterfun


/-
-- Applies the operation z = dReLU(x) where
--  x is an arbitrary tensor
--  z is an output tensor with the same shape as x
-- and
--  dReLU(x) = [max(0,sgn(x_i)) | x_i in x]
let #var"tensorOpExn: z = dReLU(x)": Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam z.
  let m = tensorSize x in
  -- applies ReLU for each index
  let iterfun: Int -> () = lam i.
    let x_i = tensorLinearGetExn x i in
    tensorLinearSetExn z i (if gti x_i 0 then 1.0 else 0.0)
  in
  -- apply the iterfun
  parallelLoop m iterfun
-/

-- todo: implement "tensorOpExn: z = ReLU(Wx + b)" for efficiency


-- Applies the operation z = SoftMax(x) where
--  s_max is the iteration limit in the S-dimension
--  x is a Sx[_] input tensor
--  expsumbuf is a S-dim tensor used for buffering the sums
--  z is a Sx[_]-dim output tensor with the same shape as x
-- and
--  SoftMax(x) = [exp(x_i) / sum([exp(x_j) | x_j in x]) | x_i in x]
let #var"tensorOpExn: z = SoftMax(x)": Int -> Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam s_max. lam x. lam expsumbuf. lam z.
  let s = get (tensorShape x) 0 in
  let m = divi (tensorSize x) s in

  -- applies exponential function for each index
  let iterfun: Int -> () = lam i.
    let x_i = tensorLinearGetExn x i in
    tensorLinearSetExn z i (exp x_i)
  in
  -- apply the iterfun
  parallelLoop (muli s_max m) iterfun;

  -- sum up all the exponentianted values in the S-dimension...
  let iterfunSummarize: Int -> () = lam s_idx.
    let offset = muli s_idx m in
    let expsum = seqLoopAcc 0.0 m (lam acc: Float. lam i: Int.
      addf acc (tensorLinearGetExn z (addi offset i))
    ) in
    tensorLinearSetExn expsumbuf s_idx expsum
  in
  parallelLoop s_max iterfunSummarize;

  -- ... and divide it into the exponentiated values to regularize them into a distribution
  let iterfunRegularize: Int -> () = lam i.
    let s_idx = divi i m in
    let expsum = tensorLinearGetExn expsumbuf s_idx in
    let z_i = tensorLinearGetExn z i in
    tensorLinearSetExn z i (divf z_i expsum)
  in
  -- apply the normalization iterfun
  parallelLoop (muli s_max m) iterfunRegularize


-- [Backwards propagation on the standalone ReLU function]
-- Applies the operation z = d/dx(l(ReLU(x))) where
--  s_max is the iteration limit in the S-dimension
--  h = ReLU(x)          - is an Sx[_] tensor
--  dldh = dl/(dReLU(x)) - is an tensor with the same shape as h
--  s_start is the start index in the S-dimension
--  s_end is the stop index in the S-dimension
--  z is an output tensor with same shape as h
-- which is calculated as
--  z = (dldh^T * dhds)^T where dhds_ii = 1 if h_i > 0 else 0, dhds_ij = 0 if i != j
-- then simplified as
--  z_i = dldh_i * dhds_ii
let #var"tensorOpExn: z = d/dx(l(ReLU(x))": Int -> Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam s_max. lam h. lam dldh. lam z.
  let s = get (tensorShape h) 0 in
  let m = divi (tensorSize h) s in
  -- applies max(0,) for each index
  let iterfun: Int -> () = lam i.
    let dhds_ii = if gtf (tensorLinearGetExn h i) 0.0 then 1.0 else 0.0 in
    let dldh_i = tensorLinearGetExn dldh i in
    tensorLinearSetExn z i (mulf dhds_ii dldh_i)
  in
  -- apply the iterfun
  parallelLoop (muli s_max m) iterfun


-- [Backwards propagation on the standalone SoftMax function]
-- Applies the operation z = d/dx(l(SoftMax(x))) where
--  s_max is the iteration limit in the S-dimension
--  p = SoftMax(x)           - is an Sx[_] tensor
--  dldp = dl/(dSoftMax(x))  - is a tensor with the same shape as p
--  z is a Sx[_] output tensor with the same shape as p
-- which is calculated as
--  z = (dldp^T * S)^T where S is a MxM matrix and s_ii = p_i - p_i*p_i and s_ij = -p_i*p_j
-- such that
--  z_i = dldp · s_*,i
let #var"tensorOpExn: z = d/dx(l(SoftMax(x)))": Int -> Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam s_max. lam p. lam dldp. lam z.
  let s = get (tensorShape p) 0 in
  let m = divi (tensorSize p) s in

  -- applies the iteration on each index in the M-dimension (limited by s_bound)
  let iterfun: Int -> () = lam i.
    let s_idx = divi i m in
    let s_offset = muli s_idx m in

    -- i is now index in the M-dimension (S-dim stripped)
    let i = modi i m in
    let p_i = tensorLinearGetExn p (addi s_offset i) in
    let v = seqLoopAcc 0.0 m (lam acc: Float. lam j: Int.
      let s_ij = 
        if eqi j i then
          subf p_i (mulf p_i p_i)
        else
          let p_j = tensorLinearGetExn p (addi s_offset j) in
          negf (mulf p_i p_j)
      in
      let dldp_j = tensorLinearGetExn dldp (addi s_offset j) in
      addf acc (mulf dldp_j s_ij)
    ) in
    tensorLinearSetExn z (addi s_offset i) v
  in
  -- apply the iterfun
  parallelLoop (muli s_max m) iterfun


-- Inplace vector assignment where
--  s_max is the iteration limit in the S-dimension
--  x is a Sx[_] input tensor
--  z is a Sx[_]-dim output tensor with the same shape as x
let #var"tensorOpExn: z = x": Int -> Tensor[Float] -> Tensor[Float] -> () =
  lam s_max. lam x. lam z.
  let s = get (tensorShape x) 0 in
  let m = divi (tensorSize x) s in

  -- applies the iteration on each index in the M-dimension
  let iterfun: Int -> () = lam i.
    tensorLinearSetExn z i (
        tensorLinearGetExn x i
    )
  in
  -- apply the iterfun
  parallelLoop (muli s_max m) iterfun


-- Inplace scalar multiplication where
--  s_max is the limit on maximum index iterated over in the S-dimension
--  c is a scalar
--  z is a Sx[_]-dim tensor
let #var"tensorOpExn: z *= scalar(c)": Int -> Float -> Tensor[Float] -> () =
  lam s_max. lam c. lam z.
  let s = get (tensorShape z) 0 in
  let m = divi (tensorSize z) s in
  let iterfun: Int -> () = lam i.
    tensorLinearSetExn z i (
      mulf (tensorLinearGetExn z i) c
    )
  in
  parallelLoop (muli s_max m) iterfun


-- Scalar assignment where
--  c is a scalar
--  Z is an arbitrary tensor
let #var"tensorOpExn: Z = scalar(c)": Float -> Tensor[Float] -> () =
  lam c. lam z.
  let m = tensorSize z in
  let iterfun: Int -> () = lam i.
    tensorLinearSetExn z i c
  in
  parallelLoop m iterfun


-- Inplace addition of a tensor multiplied by a scalar where
--  s_idx is the index in the S-dimension to use for x
--  x is a Sx[_]-dim tensor
--  c is a scalar
--  Z is an arbitrary output tensor with the same shape as tail rank of x
--    (e.g. if x is SxMxN-dim, then z must be MxN-dim)
let #var"tensorOpExn: Z += x * scalar(c)": Int -> Tensor[Float] -> Float -> Tensor[Float] -> () =
  lam s_idx. lam x. lam c. lam z.
  let m = tensorSize z in
  let x_offset = muli s_idx m in
  let iterfun: Int -> () = lam i.
    tensorLinearSetExn z i (
      addf (tensorLinearGetExn z i)
           (mulf (tensorLinearGetExn x (addi i x_offset)) c)
    )
  in
  parallelLoop m iterfun


-- Inplace addition of a tensor multiplied by a scalar where
--  s_idx is the index in the S-dimension to use for x
--  X is an arbitrary tensor
--  c is a scalar
--  z is a Sx[_] output tensor where the tail shape is the same shape as x
--    (e.g. if x is MxN-dim, then z must be SxMxN-dim)
let #var"tensorOpExn: z += X * scalar(c)": Int -> Tensor[Float] -> Float -> Tensor[Float] -> () =
  lam s_idx. lam x. lam c. lam z.
  let m = tensorSize x in
  let z_offset = muli s_idx m in
  let iterfun: Int -> () = lam i.
    let z_idx = addi i z_offset in
    tensorLinearSetExn z z_idx (
      addf (tensorLinearGetExn z z_idx)
           (mulf (tensorLinearGetExn x i) c)
    )
  in
  parallelLoop m iterfun


-- Inplace 1-hot operation on a vector over the S-dimension
--  s_max is the iteration limit in the S-dimension
--  y is a S-dim index tensor, values in this tensor must be in the range [0,M)
--  c is a scalar
--  z is a SxM-dim tensor
let #var"tensorOpExp: z += 1-Hot(y) * scalar(c)": Int -> Tensor[Int] -> Float -> Tensor[Float] -> () =
  lam s_max. lam y. lam c. lam z.
  let m = get (tensorShape z) 1 in

  let iterfun: Int -> () = lam i.
    let idx = tensorLinearGetExn y i in
    let offset = muli i m in
    let z_idx = addi idx offset in
    tensorLinearSetExn z z_idx (
      addf (tensorLinearGetExn z z_idx) c
    )
  in
  parallelLoop s_max iterfun


-- Performs the operator z = -log(x^T * 1-Hot(y)) over the S-dimension
--  s_max is the iteration limit in the S-dimension
--  x is a SxM-dim input tensor
--  y is a S-dim indexing tensor, values in this tensor must be in the range [0,M)
--  z is a S-dim output tensor
let #var"tensorOpExn: z = -log(x^T * 1-Hot(y))": Int -> Tensor[Float] -> Tensor[Int] -> Tensor[Float] -> () =
  lam s_max. lam x. lam y. lam z.
  --let s = get (tensorShape x) 0 in
  let m = get (tensorShape x) 1 in

  let iterfun: Int -> () = lam i.
    let x_offset: Int = muli i m in
    let idx: Int = tensorLinearGetExn y i in
    let v = negf (log (tensorLinearGetExn x (addi idx x_offset))) in
    tensorLinearSetExn z i v
  in
  parallelLoop s_max iterfun


-- Constructs the vector [0, ..., 0, -1/x_y, 0, ..., 0] in the S-dimension
--  s_max is the iteration limit in the S-dimension
--  y is a S-dim indexing tensor, values in this tensor must be in the range [0,M)
--  x is a SxM-dim input tensor
--  z is a SxM-dim output tensor
let #var"tensorOpExn: z = 1-Hot(y) * scalar(-1/(x^T * 1-Hot(y)))": Int -> Tensor[Int] -> Tensor[Float] -> Tensor[Float] -> () =
  lam s_max. lam y. lam x. lam z.
  let s = get (tensorShape x) 0 in
  let m = get (tensorShape x) 1 in

  let iterfun: Int -> () = lam i.
    let offset: Int = muli i m in
    let idx: Int = tensorLinearGetExn y i in
    let v = negf (divf 1.0 (tensorLinearGetExn x (addi idx offset))) in
    seqLoop m (lam j.
      if eqi j idx then
        tensorLinearSetExn z (addi j offset) v
      else
        tensorLinearSetExn z (addi j offset) 0.0
    )
  in
  parallelLoop s_max iterfun


-- Reduces the tensor z over the S-dimension by addition, s.t. for each tensor
-- index idx in slice from the S-dimension, we get
-- z[0, idx] = z[0, idx] + z[1, idx] + z[2, idx] + ... + z[S-2, idx] + z[S-1, idx]
--  z is a Sx[_]-dimensional tensor
let #var"tensorOpExn: Dim1Reduce(z, dst = z_0, op = +)": Tensor[Float] -> () =
  lam z.
  let s = get (tensorShape z) 0 in
  let m = divi (tensorSize z) s in
  -- Only reduce if S > 1, we assume that it is below...
--  if leqi s 1 then
--    ()
--  else
    -- Iterate over the sub idx's, sequentially add up the S-dimension
    let iterfun: Int -> () = lam i.
      let v = seqLoopAcc (tensorLinearGetExn z i) (subi s 1) (lam acc: Float. lam j: Int.
        let s_idx = addi j 1 in
        let s_offset = muli s_idx m in
        addf acc (tensorLinearGetExn z (addi s_offset i))
      ) in
      tensorLinearSetExn z i v
    in
    parallelLoop m iterfun
