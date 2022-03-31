-- linalg.mc
-- Linear algebra operations for neural networks, designed to be optimal for
-- parallel computations.


-- Type annotated versions of intrinsics, needed until a proper type system is in place
let tensorGetFloat: Tensor[Float] -> [Int] -> Float =
  lam t: Tensor[Float]. lam i: [Int].
  (let g: Tensor[Float] -> [Int] -> Float = tensorGetExn in g) t i

let tensorSetFloat: Tensor[Float] -> [Int] -> Float -> () =
  lam t: Tensor[Float]. lam i: [Int]. lam v: Float.
  (let g: Tensor[Float] -> [Int] -> Float -> () = tensorSetExn in g) t i v

let tensorFloatShape: Tensor[Float] -> [Int] =
  lam t: Tensor[Float].
  (let g: Tensor[Float] -> [Int] = tensorShape in g) t

let getInt: [Int] -> Int -> Int =
  lam l: [Int]. lam i: Int.
  (let g: [Int] -> Int -> Int = get in g) l i

let getFloatTensor: [Tensor[Float]] -> Int -> Tensor[Float] =
  lam l: [Tensor[Float]]. lam i: Int.
  (let g: [Tensor[Float]] -> Int -> Tensor[Float] = get in g) l i

let lengthSeqFloatTensor: [Tensor[Float]] -> Int =
  lam l: [Tensor[Float]].
  (let g: [Tensor[Float]] -> Int = length in g) l


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
--  W is a MxN matrix
--  x is a Nx1 vector
--  b is a Mx1 vector
--  z is a Mx1 output vector
let #var"tensorOpExn: z = Wx+b": Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam w. lam x. lam b. lam z.
  let w_shape = tensorFloatShape w in
  let m = getInt w_shape 0 in
  let n = getInt w_shape 1 in
  -- iterating function over the M-dimension
  let iterfun: Int -> () = lam i.
    -- dot product over the N-dimension
    -- The row below beforms the following operation: v = W_i,* · x^T + b_i
    let v = seqLoopAcc (tensorGetFloat b [i,0]) n (lam acc: Float. lam j: Int.
      addf acc (mulf (tensorGetFloat w [i,j])
                     (tensorGetFloat x [j,0]))
    ) in
    tensorSetFloat z [i,0] v -- z_i = v = W_i,* · x^T + b_i
  in
  -- apply the iterfun
  parallelLoop m iterfun

-- Applies the operation Z = x * y^T where
--  x is a Mx1 vector
--  y is a Nx1 vector
--  Z is a MxN matrix
let #var"tensorOpExn: z = x * y^T": Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam y. lam z.
  let x_shape = tensorFloatShape x in
  let y_shape = tensorFloatShape y in
  let m = getInt x_shape 0 in
  let n = getInt y_shape 0 in
  -- iterating function over all MxN rows and columns
  let iterfun: Int -> () = lam i.
    let row = divi i n in
    let col = modi i n in
    -- z_jk = x_j * y_k
    tensorSetFloat z [row,col] (
      mulf (tensorGetFloat x [row,0])
           (tensorGetFloat y [col,0])
    )
  in
  -- apply the iterfun
  parallelLoop (muli m n) iterfun

-- Applies the operation Z += x * y^T where
--  x is a Mx1 vector
--  y is a Nx1 vector
--  Z is a MxN matrix
let #var"tensorOpExn: z += x * y^T": Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam y. lam z.
  let x_shape = tensorFloatShape x in
  let y_shape = tensorFloatShape y in
  let m = getInt x_shape 0 in
  let n = getInt y_shape 0 in
  -- iterating function over all MxN rows and columns
  let iterfun: Int -> () = lam i.
    let row = divi i n in
    let col = modi i n in
    -- z_jk += x_j * y_k
    tensorSetFloat z [row,col] (
      addf (tensorGetFloat z [row,col])
           (mulf (tensorGetFloat x [row,0])
                 (tensorGetFloat y [col,0]))
    )
  in
  -- apply the iterfun
  parallelLoop (muli m n) iterfun


-- Applies the operation z = (x^T * W)^T where
--  x is a Mx1 vector
--  W is a MxN matrix
--  z is a Nx1 vector
let #var"tensorOpExn: z = (x^T * W)^T": Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam w. lam z.
  let w_shape = tensorFloatShape w in
  let m = getInt w_shape 0 in
  let n = getInt w_shape 1 in
  -- iterating function over the N-dimension in z
  let iterfun: Int -> () = lam j.
    -- dot product over x and the j'th column in W
    -- The row below beforms the following operation: v = x · W_*,j
    let v = seqLoopAcc 0.0 m (lam acc: Float. lam i: Int.
        addf acc (mulf (tensorGetFloat w [i,j])
                       (tensorGetFloat x [i,0]))
    ) in
    tensorSetFloat z [j,0] v -- z_j = v = x · W_*,j
  in
  -- apply the iterfun
  parallelLoop n iterfun


-- Applies the operation z += (x^T * W)^T where
--  x is a Mx1 vector
--  W is a MxN matrix
--  z is a Nx1 vector
let #var"tensorOpExn: z += (x^T * W)^T": Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam w. lam z.
  let w_shape = tensorFloatShape w in
  let m = getInt w_shape 0 in
  let n = getInt w_shape 1 in
  -- iterating function over the N-dimension in z
  let iterfun: Int -> () = lam j.
    -- dot product over x and the j'th column in W
    -- The row below beforms the following operation: z_j += v = z_j + x · W_*,j
    let v = seqLoopAcc (tensorGetFloat z [j,0]) m (lam acc: Float. lam i: Int.
      addf acc (mulf (tensorGetFloat w [i,j])
                     (tensorGetFloat x [i,0]))
    ) in
    tensorSetFloat z [j,0] v -- z_j = v = z_j + (x · W_*,j)  =>  z_j += x · W_*,j
  in
  -- apply the iterfun
  parallelLoop n iterfun


-- Applies the operation z = ReLU(x) where
--  x is a Mx1 vector
--  z is a Mx1 vector
-- and
--  ReLU(x) = [max(0,x_i) | x_i in x]
let #var"tensorOpExn: z = ReLU(x)": Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam z.
  let x_shape = tensorFloatShape x in
  let m = getInt x_shape 0 in
  -- applies ReLU for each index
  let iterfun: Int -> () = lam i.
    let x_i: Float = tensorGetFloat x [i,0] in
    tensorSetFloat z [i,0] (if gtf x_i 0.0 then x_i else 0.0)
  in
  -- apply the iterfun
  parallelLoop m iterfun

-- Applies the operation z = dReLU(x) where
--  x is a Mx1 vector
--  z is a Mx1 vector
-- and
--  dReLU(x) = [max(0,sgn(x_i)) | x_i in x]
let #var"tensorOpExn: z = dReLU(x)": Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam z.
  let x_shape = tensorFloatShape x in
  let m = getInt x_shape 0 in
  -- applies ReLU for each index
  let iterfun: Int -> () = lam i.
    let x_i = tensorGetFloat x [i,0] in
    tensorSetFloat z [i,0] (if gti x_i 0 then 1.0 else 0.0)
  in
  -- apply the iterfun
  parallelLoop m iterfun


-- todo: implement "tensorOpExn: z = ReLU(Wx + b)" for efficiency


-- Applies the operation z = SoftMax(x) where
--  x is a Mx1 vector
--  z is a Mx1 vector
-- and
--  SoftMax(x) = [exp(x_i) / sum([exp(x_j) | x_j in x]) | x_i in x]
let #var"tensorOpExn: z = SoftMax(x)": Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam z.
  let x_shape = tensorFloatShape x in
  let m = getInt x_shape 0 in
  -- applies exponential function for each index
  let iterfun: Int -> () = lam i.
    let x_i = tensorGetFloat x [i,0] in
    tensorSetFloat z [i,0] (exp x_i)
  in
  -- apply the iterfun
  parallelLoop m iterfun;
  -- sum up all the exponentianted values...
  let expsum = seqLoopAcc 0.0 m (lam acc: Float. lam i: Int.
    addf acc (tensorGetFloat z [i,0])
  ) in
  -- ... and divide it into the exponentiated values to normalize them
  let iterfunNormalize: Int -> () = lam i.
    let z_i = tensorGetFloat z [i,0] in
    tensorSetFloat z [i,0] (divf z_i expsum)
  in
  -- apply the normalization iterfun
  parallelLoop m iterfunNormalize


-- [Backwards propagation on the standalone ReLU function]
-- Applies the operation z = d/dx(l(ReLU(x))) where
--  h = ReLU(x)          - is a Mx1 vector
--  dldh = dl/(dReLU(x)) - is a Mx1 vector
--  z is a Mx1 vector
-- which is calculated as
--  z = (dldh^T * dhds)^T where dhds_ii = 1 if h_i > 0 else 0, dhds_ij = 0 if i != j
-- then simplified as
--  z_i = dldh_i * dhds_ii
let #var"tensorOpExn: z = d/dx(l(ReLU(x))": Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam h. lam dldh. lam z.
  let h_shape = tensorFloatShape h in
  let m = getInt h_shape 0 in
  -- applies max(0,) for each index
  let iterfun: Int -> () = lam i.
    let dhds_ii = if gtf (tensorGetFloat h [i,0]) 0.0 then 1.0 else 0.0 in
    let dldh_i = tensorGetFloat dldh [i,0] in
    tensorSetFloat z [i,0] (mulf dhds_ii dldh_i)
  in
  -- apply the iterfun
  parallelLoop m iterfun


-- [Backwards propagation on the standalone SoftMax function]
-- Applies the operation z = d/dx(l(SoftMax(x))) where
--  p = SoftMax(x)           - is a Mx1 vector
--  dldp = dl/(dSoftMax(x))  - is a Mx1 vector
--  z is a Mx1 vector
-- which is calculated as
--  z = (dldp^T * S)^T where S is a MxM matrix and s_ii = p_i - p_i*p_i and s_ij = -p_i*p_j
-- such that
--  z_i = dldp · s_*,i
let #var"tensorOpExn: z = d/dx(l(SoftMax(x)))": Tensor[Float] -> Tensor[Float] -> Tensor[Float] -> () =
  lam p. lam dldp. lam z.
  let p_shape = tensorFloatShape p in
  let m = getInt p_shape 0 in
  -- applies the iteration on each index in the M-dimension
  let iterfun: Int -> () = lam i.
    let p_i = tensorGetFloat p [i,0] in
    let v = seqLoopAcc 0.0 m (lam acc: Float. lam j: Int.
      let s_ij = 
        if eqi j i then
          subf p_i (mulf p_i p_i)
        else
          let p_j = tensorGetFloat p [j,0] in
          negf (mulf p_i p_j)
      in
      let dldp_j = tensorGetFloat dldp [j,0] in
      addf acc (mulf dldp_j s_ij)
    ) in
    tensorSetFloat z [i,0] v
  in
  -- apply the iterfun
  parallelLoop m iterfun


-- Inplace vector addition where
--  x is a Mx1 vector
--  z is a Mx1 vector
let #var"tensorOpExn: z += x": Tensor[Float] -> Tensor[Float] -> () =
  lam x. lam z.
  let x_shape = tensorFloatShape x in
  let m = getInt x_shape 0 in
  -- applies the iteration on each index in the M-dimension
  let iterfun: Int -> () = lam i.
    tensorSetFloat z [i,0] (
        addf (tensorGetFloat z [i,0])
             (tensorGetFloat x [i,0])
    )
  in
  -- apply the iterfun
  parallelLoop m iterfun


-- Inplace scalar multiplication where
--  x is a MxN matrix/vector
--  c is a scalar
let #var"tensorOpExn: z *= scalar(c)": Float -> Tensor[Float] -> () =
  lam c. lam z.
  let z_shape = tensorFloatShape z in
  let m = getInt z_shape 0 in
  let n = getInt z_shape 1 in
  let iterfun: Int -> () = lam i.
    let row = divi i n in
    let col = modi i n in
    tensorSetFloat z [row,col] (
      mulf (tensorGetFloat z [row,col]) c
    )
  in
  parallelLoop (muli m n) iterfun


-- Scalar assignment where
--  x is a MxN matrix/vector
--  c is a scalar
let #var"tensorOpExn: z = scalar(c)": Float -> Tensor[Float] -> () =
  lam c. lam z.
  let z_shape = tensorFloatShape z in
  let m = getInt z_shape 0 in
  let n = getInt z_shape 1 in
  let iterfun: Int -> () = lam i.
    let row = divi i n in
    let col = modi i n in
    tensorSetFloat z [row,col] c
  in
  parallelLoop (muli m n) iterfun


-- Inplace addition of a tensor multiplied by a scalar where
--  x is a MxN matrix/vector
--  c is a scalar
--  z is a MxN output matrix/vector
let #var"tensorOpExn: z += x * scalar(c)": Tensor[Float] -> Float -> Tensor[Float] -> () =
  lam x. lam c. lam z.
  let x_shape = tensorFloatShape x in
  let m = getInt x_shape 0 in
  let n = getInt x_shape 1 in
  let iterfun: Int -> () = lam i.
    let row = divi i n in
    let col = modi i n in
    tensorSetFloat z [row,col] (
      addf (tensorGetFloat z [row,col])
           (mulf (tensorGetFloat x [row,col]) c)
    )
  in
  parallelLoop (muli m n) iterfun

-- Inplace 1-hot operation on a vector
--  y is an index (integer)
--  c is a scalar
--  z is a Mx1 output vector
let #var"tensorOpExp: z += 1-Hot(y) * scalar(c)": Int -> Float -> Tensor[Float] -> () =
  lam y. lam c. lam z.
  let z_shape = tensorFloatShape z in
  let m = getInt z_shape 0 in
  -- NOTE(johnwikman, 2022-03-30):
  -- This is a parallel loop to ensure that the tensor operations all occur on
  -- equivalent backends.
  let iterfun: Int -> () = lam.
    tensorSetFloat z [y,0] (
      addf (tensorGetFloat z [y,0]) c
    )
  in
  parallelLoop 1 iterfun
