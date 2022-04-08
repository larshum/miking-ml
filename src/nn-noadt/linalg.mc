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

-- Applies the operation z = Wx + b where
--  W is a MxN-dim matrix
--  x is a N-dim vector
--  b is a M-dim vector
--  z is a M-dim output vector
let #var"tensorOpExn: z = Wx+b": Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam w. lam x. lam b. lam z.
  let w_shape = tensorShape w in
  let m = get w_shape 0 in
  let n = get w_shape 1 in
  -- iterating function over the M-dimension
  let iterfun: Int -> () = lam i.
    -- dot product over the N-dimension
    -- The row below beforms the following operation: v = W_i,* · x^T + b_i
    let acc_init: Float = tensorLinearGetExn b i in
    let v = seqLoopAcc (acc_init) n (lam acc: Float. lam j: Int.
      addf acc (mulf (tensorLinearGetExn w (addi (muli n i) j))
                     (tensorLinearGetExn x j))
    ) in
    tensorLinearSetExn z i v -- z_i = v = W_i,* · x^T + b_i
  in
  -- apply the iterfun
  parallelLoop m iterfun

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

-- Applies the operation Z += x * y^T where
--  x is a M-dim vector
--  y is a N-dim vector
--  Z is a MxN matrix
let #var"tensorOpExn: z += x * y^T": Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam y. lam z.
  let z_shape = tensorShape z in
  let m = get z_shape 0 in
  let n = get z_shape 1 in
  -- iterating function over all MxN rows and columns
  let iterfun: Int -> () = lam i.
    let row = divi i n in
    let col = modi i n in
    -- z_jk += x_j * y_k
    tensorLinearSetExn z i (
      addf (tensorLinearGetExn z i)
           (mulf (tensorLinearGetExn x row)
                 (tensorLinearGetExn y col))
    )
  in
  -- apply the iterfun
  parallelLoop (muli m n) iterfun


-- Applies the operation z = (x^T * W)^T where
--  x is a M-dim vector
--  W is a MxN matrix
--  z is a N-dim vector
let #var"tensorOpExn: z = (x^T * W)^T": Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam w. lam z.
  let w_shape = tensorShape w in
  let m = get w_shape 0 in
  let n = get w_shape 1 in
  -- iterating function over the N-dimension in z
  let iterfun: Int -> () = lam j.
    -- dot product over x and the j'th column in W
    -- The row below beforms the following operation: v = x · W_*,j
    let v = seqLoopAcc 0.0 m (lam acc: Float. lam i: Int.
        addf acc (mulf (tensorLinearGetExn w (addi (muli n i) j))
                       (tensorLinearGetExn x i))
    ) in
    tensorLinearSetExn z j v -- z_j = v = x · W_*,j
  in
  -- apply the iterfun
  parallelLoop n iterfun


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


-- Applies the operation z = ReLU(x) where
--  x is an arbitrary tensor
--  z is an output tensor with the same shape as x
-- and
--  ReLU(x) = [max(0,x_i) | x_i in x]
let #var"tensorOpExn: z = ReLU(x)": Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam z.
  let m = tensorSize x in
  -- applies ReLU for each index
  let iterfun: Int -> () = lam i.
    let x_i: Float = tensorLinearGetExn x i in
    tensorLinearSetExn z i (if gtf x_i 0.0 then x_i else 0.0)
  in
  -- apply the iterfun
  parallelLoop m iterfun

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


-- todo: implement "tensorOpExn: z = ReLU(Wx + b)" for efficiency


-- Applies the operation z = SoftMax(x) where
--  x is an arbitrary tensor
--  z is an output tensor with the same shape as x
-- and
--  SoftMax(x) = [exp(x_i) / sum([exp(x_j) | x_j in x]) | x_i in x]
let #var"tensorOpExn: z = SoftMax(x)": Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam z.
  let m = tensorSize x in
  -- applies exponential function for each index
  let iterfun: Int -> () = lam i.
    let x_i = tensorLinearGetExn x i in
    tensorLinearSetExn z i (exp x_i)
  in
  -- apply the iterfun
  parallelLoop m iterfun;
  -- sum up all the exponentianted values...
  let expsum = seqLoopAcc 0.0 m (lam acc: Float. lam i: Int.
    addf acc (tensorLinearGetExn z i)
  ) in
  -- ... and divide it into the exponentiated values to normalize them
  let iterfunNormalize: Int -> () = lam i.
    let z_i = tensorLinearGetExn z i in
    tensorLinearSetExn z i (divf z_i expsum)
  in
  -- apply the normalization iterfun
  parallelLoop m iterfunNormalize


-- [Backwards propagation on the standalone ReLU function]
-- Applies the operation z = d/dx(l(ReLU(x))) where
--  h = ReLU(x)          - is an arbitrary tensor
--  dldh = dl/(dReLU(x)) - is an tensor with the same shape as h
--  z is an output tensor with the same shape as h
-- which is calculated as
--  z = (dldh^T * dhds)^T where dhds_ii = 1 if h_i > 0 else 0, dhds_ij = 0 if i != j
-- then simplified as
--  z_i = dldh_i * dhds_ii
let #var"tensorOpExn: z = d/dx(l(ReLU(x))": Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam h. lam dldh. lam z.
  let m = tensorSize h in
  -- applies max(0,) for each index
  let iterfun: Int -> () = lam i.
    let dhds_ii = if gtf (tensorLinearGetExn h i) 0.0 then 1.0 else 0.0 in
    let dldh_i = tensorLinearGetExn dldh i in
    tensorLinearSetExn z i (mulf dhds_ii dldh_i)
  in
  -- apply the iterfun
  parallelLoop m iterfun


-- [Backwards propagation on the standalone SoftMax function]
-- Applies the operation z = d/dx(l(SoftMax(x))) where
--  p = SoftMax(x)           - is an arbitrary tensor
--  dldp = dl/(dSoftMax(x))  - is an tensor with the same shape as p
--  z is an output tensor with the same shape as p
-- which is calculated as
--  z = (dldp^T * S)^T where S is a MxM matrix and s_ii = p_i - p_i*p_i and s_ij = -p_i*p_j
-- such that
--  z_i = dldp · s_*,i
let #var"tensorOpExn: z = d/dx(l(SoftMax(x)))": Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam p. lam dldp. lam z.
  let m = tensorSize p in
  -- applies the iteration on each index in the M-dimension
  let iterfun: Int -> () = lam i.
    let p_i = tensorLinearGetExn p i in
    let v = seqLoopAcc 0.0 m (lam acc: Float. lam j: Int.
      let s_ij = 
        if eqi j i then
          subf p_i (mulf p_i p_i)
        else
          let p_j = tensorLinearGetExn p j in
          negf (mulf p_i p_j)
      in
      let dldp_j = tensorLinearGetExn dldp j in
      addf acc (mulf dldp_j s_ij)
    ) in
    tensorLinearSetExn z i v
  in
  -- apply the iterfun
  parallelLoop m iterfun


-- Inplace vector addition where
--  x is an arbitrary tensor
--  z is an output tensor with the same shape as x
let #var"tensorOpExn: z += x": Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam z.
  let m = tensorSize x in
  -- applies the iteration on each index in the M-dimension
  let iterfun: Int -> () = lam i.
    tensorLinearSetExn z i (
        addf (tensorLinearGetExn z i)
             (tensorLinearGetExn x i)
    )
  in
  -- apply the iterfun
  parallelLoop m iterfun


-- Inplace scalar multiplication where
--  c is a scalar
--  z is an arbitrary tensor
let #var"tensorOpExn: z *= scalar(c)": Float -> Tensor[Float] -> () =
  lam c. lam z.
  let m = tensorSize z in
  let iterfun: Int -> () = lam i.
    tensorLinearSetExn z i (
      mulf (tensorLinearGetExn z i) c
    )
  in
  parallelLoop m iterfun


-- Scalar assignment where
--  c is a scalar
--  z is an arbitrary tensor
let #var"tensorOpExn: z = scalar(c)": Float -> Tensor[Float] -> () =
  lam c. lam z.
  let m = tensorSize z in
  let iterfun: Int -> () = lam i.
    tensorLinearSetExn z i c
  in
  parallelLoop m iterfun


-- Inplace addition of a tensor multiplied by a scalar where
--  x is an arbitrary tensor
--  c is a scalar
--  z is an arbitrary output tensor with the same shape as x
let #var"tensorOpExn: z += x * scalar(c)": Tensor[Float] -> Float -> Tensor[Float] -> () =
  lam x. lam c. lam z.
  let m = tensorSize x in
  let iterfun: Int -> () = lam i.
    tensorLinearSetExn z i (
      addf (tensorLinearGetExn z i)
           (mulf (tensorLinearGetExn x i) c)
    )
  in
  parallelLoop m iterfun

-- Inplace 1-hot operation on a vector
--  y is an index (integer)
--  c is a scalar
--  z is an arbitrary tensor, s.t. y < (tensorSize z)
let #var"tensorOpExp: z += 1-Hot(y) * scalar(c)": Int -> Float -> Tensor[Float] -> () =
  lam y. lam c. lam z.
  let m = tensorSize z in
  -- NOTE(johnwikman, 2022-03-30):
  -- This is a parallel loop to ensure that the tensor operations all occur on
  -- equivalent backends.
  let iterfun: Int -> () = lam.
    tensorLinearSetExn z y (
      addf (tensorLinearGetExn z y) c
    )
  in
  parallelLoop 1 iterfun
