-- sequence_generator.mc
-- Functionality for generating cyclic groups Zn where n > 1

include "common.mc"
include "seq.mc"
include "string.mc"

type SequenceGeneratorState = {
    current: Int,
    maximum: Int,
    prime_seed: Int,
    generator: Int
}

/-
Clumsy prime functions below, but they work well for smaller numbers.
-/

let prime_factors: Int -> [Int] = lam n.
  if lti n 2 then
    error "provided number must be at least 2"
  else
    recursive let work = lam acc: [Int]. lam rem: Int. lam d: Int.
      if leqi rem 1 then
        acc
      else
        if eqi (modi rem d) 0 then
          work (cons d acc) (divi rem d) d
        else
          if eqi d 2 then
            work acc rem 3
          else
            work acc rem (addi d 2)
    in
    reverse (work [] n 2)


let is_prime: Int -> Bool = lam n.
  if lti n 2 then
    false
  else
    eqi (length (prime_factors n)) 1


-- (a^b) % n
let powmodi: Int -> Int -> Int -> Int =
  lam a. lam b. lam n.
  recursive let work = lam acc. lam i.
    if leqi i 0 then
      acc
    else
      work (modi (muli acc a) n) (subi i 1)
  in
  work 1 b


let seqgenGet: SequenceGeneratorState -> Int = lam st.
  subi st.current 1


let seqgenNext: SequenceGeneratorState -> SequenceGeneratorState = lam st.
  recursive let boundCheckH = lam st: SequenceGeneratorState.
    let st: SequenceGeneratorState = {st with
      current = modi (muli st.current st.generator) st.prime_seed
    } in
    if geqi st.current st.maximum then
      boundCheckH st
    else
      st
  in
  boundCheckH st


let seqgenMakeExplicit: Int -> Int -> Int -> SequenceGeneratorState =
  lam maximum: Int. lam max_offset: Int. lam pos_offset: Int.
  if lti maximum 2 then
    error "maximum size must be at least 2"
  else if lti max_offset 0 then
    error "max_offset must be positive"
  else if lti pos_offset 0 then
    error "pos_offset must be positive"
  else
    let maximum = addi maximum 1 in
    recursive let findPrimeH = lam candidate: Int.
      if is_prime candidate then
        candidate
      else
        findPrimeH (addi candidate 1)
    in
    let prime_seed = findPrimeH (addi maximum max_offset) in
    let totient = subi prime_seed 1 in
    let totient_factors: [Int] = prime_factors totient in
    let unique_factors: [Int] = distinct eqi totient_factors in
    recursive let findGeneratorH = lam candidate: Int.
      if geqi candidate prime_seed then
        -- return -1 to signal that we could not find a root
        negi 1
      else
        recursive let isPrimitiveRootH: Int -> Bool = lam i: Int.
          if eqi i (length unique_factors) then
            true
          else
            let f = get unique_factors i in
            if eqi (powmodi candidate (divi totient f) prime_seed) 1 then
              -- Not a primitive root (modulo the prime seed), and thus not a
              -- generator that we are looking for
              false
            else
              -- Keep checking the remaining factors
              isPrimitiveRootH (addi i 1)
        in
        if isPrimitiveRootH 0 then
          candidate
        else
          findGeneratorH (addi candidate 1)
    in
    let generator = findGeneratorH 2 in
    if eqi generator (negi 1) then
      error "internal error, could not find a generator..."
    else
      let st: SequenceGeneratorState = {
        current = 1,
        maximum = maximum,
        prime_seed = prime_seed,
        generator = generator
      } in
      recursive let iterH = lam i. lam st.
        if eqi i pos_offset then
          st
        else
          iterH (addi i 1) (seqgenNext st)
      in
      iterH 0 st

-- Initialized a sequence generator, with randomized start state.
let seqgenMake: Int -> SequenceGeneratorState = lam maximum.
  seqgenMakeExplicit maximum
                     (randIntU maximum (muli maximum 2))
                     (randIntU 50 100)

mexpr

let run = lam.
  let limit = 20 in
  --let g = seqgenMake limit in
  let g =  seqgenMakeExplicit limit
                              (randIntU (muli limit 10) (muli limit 20))
                              (randIntU 50 100)
  in
  recursive let iterH = lam st. lam i.
    if eqi i (addi limit 5) then
      ()
    else
      let num = seqgenGet st in
      (if neqi i 0 then print ", " else ());
      (if lti num 10 then print " " else ());
      print (int2string num);
      let st = seqgenNext st in
      iterH st (addi i 1)
  in
  print "[";
  iterH g 0;
  printLn "]";
  ()
in

let iterRun = lam limit.
  recursive let iterRunH = lam i.
    if eqi i limit then () else (
      run ();
      iterRunH (addi i 1)
    )
  in iterRunH 0
in

iterRun 10;
()
