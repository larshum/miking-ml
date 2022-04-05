-- cifar10.mc
-- Dataset utilities for CIFAR-10.
-- Download from here: http://www.cs.toronto.edu/~kriz/cifar-10-binary.tar.gz
-- Preprocess each batch with the preprocessing python script for CIFAR-10 to
-- allow it to be loaded here.

include "bool.mc"
include "char.mc"
include "seq.mc"
include "string.mc"

include "../nn/network.mc" -- DataPoint type
include "./_common.mc"

-- Enumeration for CIFAR-10 classes, and their byte-number representation
let datasetCifar10Classes: [(String, Int)] = [
    ("airplane", 0),
    ("automobile", 1),
    ("bird", 2),
    ("cat", 3),
    ("deer", 4),
    ("dog", 5),
    ("frog", 6),
    ("horse", 7),
    ("ship", 8),
    ("truck", 9)
]

let datasetCifar10ClassCount = length datasetCifar10Classes

let datasetCifar10Class2string: Int -> String = lam i.
  if and (geqi i 0) (lti i datasetCifar10ClassCount) then
    (get datasetCifar10Classes i).0
  else
    join ["INVALID_CLASS(", int2string i, ")"]

-- A data point in CIFAR-10 is and int in [0,9] that specifies the class and a
-- 3072x1 Float tensor/vector that contains the values for each pixel at each
-- level, where the value is normalized to a float in [0,1] instead of an
-- integer between [0,255].
let datasetLoadCifar10: ([Int] -> ([Int] -> Float) -> Tensor[Float]) -> String -> [DataPoint] = lam tensorCreate. lam filename.
  let print_status = true in
  let convfn = lam i. divf (int2float i) 255.0 in
  let dim = [3072,1] in
  -- let dim = [32,32,3] in -- this is the actual dimension to be used in the future
  datasetLoadGenericIntclassInt2Float print_status convfn dim tensorCreate filename

-- Preconfigured instantiations for loading the dataset with different tensor backends
let datasetLoadDenseCifar10: String -> [DataPoint] = datasetLoadCifar10 tensorCreateDense
let datasetLoadCArrayFloatCifar10: String -> [DataPoint] = datasetLoadCifar10 tensorCreateCArrayFloat
