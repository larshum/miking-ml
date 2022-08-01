-- _common.mc
-- Generic I/O loading functionality shared between datasets

include "bool.mc"
include "char.mc"
include "common.mc"
include "seq.mc"
include "string.mc"

include "../nn/network.mc" -- DataPoint type

-- Generic loader for dataset formatted as ints on a line, where the first int
-- specifies the class of the datapoint.
--  print_status: Whether or not to print status.
--  convfn: The function that converts the int values to floats.
--  dim: The dimensionality of a datapoint.
--  tensorCreate: The function used to create a tensor (i.e. dense or C array).
--  filename: The file to load the datapoints from.
let datasetLoadGenericIntclassInt2Float: Bool -> (Int -> Float) -> [Int] -> ([Int] -> ([Int] -> Float) -> Tensor[Float]) -> String -> [DataPoint] =
  lam print_status. lam convfn. lam dim. lam tensorCreate. lam filename.
  printLn (join ["reading file ", filename, "..."]);
  let contents = readFile filename in
  (if print_status then print "points scanned: 0"; flushStdout () else ());
  -- for some reason i need to type-annotate this variable
  let result: ([DataPoint], [Int], String) = foldl (lam acc: ([DataPoint], [Int], String). lam c: Char.
    match acc with (converted, current_acc, current_strrep) in
    -- check if we need to update current_acc on an encountered separator
    let updated_tuple = if and (or (eqChar c '\n') (eqChar c ' ')) (gti (length current_strrep) 0)
      then (snoc current_acc (string2int current_strrep), "")
      else (current_acc, current_strrep)
    in
    -- refresh the current_acc and current_strrep values
    match updated_tuple with (current_acc, current_strrep) in
    if eqChar c '\n' then
      -- Convert the current accumulation to a new datapoint
      let class: Int = head current_acc in
      let normalized_values: [Float] = map convfn (tail current_acc) in
      let dp: DataPoint = {
        input = tensorOfSeqExn tensorCreate dim normalized_values,
        correct_outidx = [class,0],
        correct_linear_outidx = class
      } in
      (if print_status then print (join ["\rpoints scanned: ", int2string (addi (length converted) 1)]); flushStdout () else ());
      (snoc converted dp, [], "")
    else if eqChar c ' ' then
      -- current_acc and current_strrep was updated previously
      (converted, current_acc, current_strrep)
    else
      (converted, current_acc, snoc current_strrep c)
  ) ([], [], "") contents in
  -- return the accumulated datapoints
  (if print_status then print "\n"; flushStdout () else ());
  map (lam x.x) result.0
