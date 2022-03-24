-- mnist.mc
-- Dataset utilities for the MNIST dataset.
-- Download from here: http://yann.lecun.com/exdb/mnist/
-- Preprocess each batch with the preprocessing python script for MNIST to
-- allow it to be loaded here.

include "bool.mc"
include "char.mc"
include "seq.mc"
include "string.mc"

include "../nn/network.mc" -- DataPoint type
include "./_common.mc"

-- Constant specifying the number of outputs in MNIST
let datasetMnistClassCount = 10

let datasetMnistClass2string: Int -> String = lam i.
  if and (geqi i 0) (lti i datasetMnistClassCount) then
    -- classes in MNIST are integers
    int2string i
  else
    join ["INVALID_CLASS(", int2string i, ")"]


-- A data point in MNIST is and int in [0,9] that specifies the class and a
-- 784x1 Float tensor/vector that contains the values for each pixel at a gray
-- scale level, where the value is normalized to a float in [0,1] instead of an
-- integer between [0,255].
let datasetLoadMnist: ([Int] -> [Float] -> Tensor[Float]) -> String -> [DataPoint] = lam tensorCreate. lam filename.
  let print_status = true in
  let convfn = lam i. divf (int2float i) 255.0 in
  let dim = [784,1] in
  datasetLoadGenericIntclassInt2Float print_status convfn dim tensorCreate filename

-- Preconfigured instantiations for loading the dataset with different tensor backends
let datasetLoadDenseMnist: String -> [DataPoint] = datasetLoadMnist tensorCreateDense
let datasetLoadCArrayFloatMnist: String -> [DataPoint] = datasetLoadMnist tensorCreateCArrayFloat
