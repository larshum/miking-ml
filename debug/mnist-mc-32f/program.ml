external v_vv4F90aVQU5'5248 : Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t = "vAiCRgHg0yi" "vv4F90aVQU5";;
type v_record'6368 = {lepochs: Obj.t;lbatchsize: Obj.t;linit_alpha: Obj.t;ldecay_alpha: Obj.t;linit_lambda: Obj.t;lprintStatus: Obj.t;ldecay_lambda: Obj.t;levaluateBetweenEpochs: Obj.t;levaluateBeforeFirstEpoch: Obj.t};;
type v_record'6378 = {lty: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6379 = {lb: Obj.t;lw: Obj.t;lty: Obj.t;lb_grads: Obj.t;lw_grads: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6380 = {llossfn: Obj.t;lcomponents: Obj.t};;
type v_record'6396 = {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6400 = {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6360 =
  | CRec'6359 of {l0: Obj.t;l1: Obj.t};;
type v_record'6361 =
  | CRec'6358 of {l0: Obj.t;l1: Obj.t;l2: Obj.t};;
type v_record'6362 =
  | CRec'6356 of {linput: Obj.t;lcorrect_outidx: Obj.t;lcorrect_linear_outidx: Obj.t};;
type v_record'6363 =
  | CRec'6355 of {lepochs: Obj.t;lbatchsize: Obj.t;linit_alpha: Obj.t;ldecay_alpha: Obj.t;linit_lambda: Obj.t;lprintStatus: Obj.t;ldecay_lambda: Obj.t;levaluateBetweenEpochs: Obj.t;levaluateBeforeFirstEpoch: Obj.t};;
type v_record'6364 =
  | CRec'6354 of {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6365 =
  | CRec'6353 of {llossfn: Obj.t;lcomponents: Obj.t};;
type v_record'6366 =
  | CRec'6352 of {lty: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6367 =
  | CRec'6351 of {lb: Obj.t;lw: Obj.t;lty: Obj.t;lb_grads: Obj.t;lw_grads: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_Option'2147 =
  | CSome'2149 of Obj.t
  | CNone'2151;;
let v_and =
  fun v_a'2140 ->
    fun v_b'2141 ->
      if
        Obj.magic
          v_a'2140
      then
        v_b'2141
      else
        Obj.magic
          false;;
let v_or =
  fun v_a'2143 ->
    fun v_b'2144 ->
      if
        Obj.magic
          v_a'2143
      then
        true
      else
        Obj.magic
          v_b'2144;;
let rec v_work =
    fun v_eq'2154 ->
      fun v_s1'2158 ->
        fun v_s2'2159 ->
          match
            Obj.magic
              (let v__target'6404 =
                 CRec'6359 { l0 =
                     (Obj.repr
                       v_s1'2158);
                   l1 =
                     (Obj.repr
                       v_s2'2159) }
               in
               let
                 CRec'6359 ({l0 = v_0'6405;l1 = v_1'6406})
               =
                 Obj.magic
                   Obj.magic
                   v__target'6404
               in
               if
                 Obj.magic
                   ((<) : int -> int -> bool)
                   (Obj.magic
                      Boot.Intrinsics.Mseq.length
                      v_0'6405)
                   1
               then
                 Option.None
               else
                 Obj.magic
                   Obj.magic
                   (let
                      (v__prefix'6407, v__splitTemp'6408)
                    =
                      Obj.magic
                        Boot.Intrinsics.Mseq.split_at
                        v_0'6405
                        1
                    in
                    let
                      (v__middle'6409, v__postfix'6410)
                    =
                      Obj.magic
                        Boot.Intrinsics.Mseq.split_at
                        v__splitTemp'6408
                        (Obj.magic
                           Int.sub
                           (Obj.magic
                              Boot.Intrinsics.Mseq.length
                              v__splitTemp'6408)
                           0)
                    in
                    let v__seqElem'6411 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.get
                        v__prefix'6407
                        0
                    in
                    if
                      Obj.magic
                        ((<) : int -> int -> bool)
                        (Obj.magic
                           Boot.Intrinsics.Mseq.length
                           v_1'6406)
                        1
                    then
                      Option.None
                    else
                      Obj.magic
                        Obj.magic
                        (let
                           (v__prefix'6412, v__splitTemp'6413)
                         =
                           Obj.magic
                             Boot.Intrinsics.Mseq.split_at
                             v_1'6406
                             1
                         in
                         let
                           (v__middle'6414, v__postfix'6415)
                         =
                           Obj.magic
                             Boot.Intrinsics.Mseq.split_at
                             v__splitTemp'6413
                             (Obj.magic
                                Int.sub
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.length
                                   v__splitTemp'6413)
                                0)
                         in
                         let v__seqElem'6416 =
                           Obj.magic
                             Boot.Intrinsics.Mseq.get
                             v__prefix'6412
                             0
                         in
                         Option.Some (v__seqElem'6411, v__middle'6409, v__seqElem'6416, v__middle'6414))))
          with
          | Option.Some (v_h1'2160, v_t1'2161, v_h2'2162, v_t2'2163) ->
              (if
                 Obj.magic
                   (Obj.magic
                      v_eq'2154
                      v_h1'2160
                      v_h2'2162)
               then
                 Obj.magic
                   v_work
                   v_eq'2154
                   v_t1'2161
                   v_t2'2163
               else
                 Obj.magic
                   false)
          | Option.None ->
              (Obj.magic
                 true);;
let v_eqSeq =
  fun v_eq'2154 ->
    fun v_s1'2155 ->
      fun v_s2'2156 ->
        let v_n1'2164 =
          Obj.magic
            Boot.Intrinsics.Mseq.length
            v_s1'2155
        in
        let v_n2'2165 =
          Obj.magic
            Boot.Intrinsics.Mseq.length
            v_s2'2156
        in
        let v_ndiff'2166 =
          Obj.magic
            Int.sub
            v_n1'2164
            v_n2'2165
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ndiff'2166
               0)
        then
          Obj.magic
            v_work
            v_eq'2154
            v_s1'2155
            v_s2'2156
        else
          Obj.magic
            false;;
let rec v_unfoldr =
    fun v_f'2171 ->
      fun v_b0'2172 ->
        let v_fb'2173 =
          Obj.magic
            v_f'2171
            v_b0'2172
        in
        let v_defaultCase'6417 =
          fun nv_ ->
            failwith
              "FILE \"/home/wikman/.local/lib/mcore/stdlib/seq.mc\" 103:7-103:12 ERROR: Reached a never term, which should be impossible in a well-typed program."
        in
        match
          Obj.magic
            v_fb'2173
        with
        | CSome'2149 v_x'6418 ->
            (match
               Obj.magic
                 (let v__target'6419 =
                    Obj.magic
                      Obj.magic
                      v_x'6418
                  in
                  let
                    CRec'6359 ({l0 = v_0'6420;l1 = v_1'6421})
                  =
                    Obj.magic
                      Obj.magic
                      v__target'6419
                  in
                  Option.Some (v_0'6420, v_1'6421))
             with
             | Option.Some (v_x'2174, v_b1'2175) ->
                 (Obj.magic
                    Boot.Intrinsics.Mseq.cons
                    v_x'2174
                    (Obj.magic
                       v_unfoldr
                       v_f'2171
                       v_b1'2175))
             | Option.None ->
                 (Obj.magic
                    (Obj.magic
                       v_defaultCase'6417
                       ())))
        | CNone'2151 ->
            (Obj.magic
               (Obj.magic
                  Boot.Intrinsics.Mseq.Helpers.of_array
                  [|  |]))
        | _ ->
            (Obj.magic
               (v_defaultCase'6417
                  ()));;
let v_join =
  fun v_seqs'2176 ->
    Obj.magic
      Boot.Intrinsics.Mseq.Helpers.fold_left
      Boot.Intrinsics.Mseq.concat
      (Obj.magic
         Boot.Intrinsics.Mseq.Helpers.of_array
         [|  |])
      v_seqs'2176;;
let v_printLn =
  fun v_s'2178 ->
    let v_'2179 =
      Obj.magic
        Boot.Intrinsics.IO.print
        (Obj.magic
           Boot.Intrinsics.Mseq.concat
           v_s'2178
           (Obj.magic
              Boot.Intrinsics.Mseq.Helpers.of_array
              [| (10) |]))
    in
    Obj.magic
      Boot.Intrinsics.IO.flush_stdout
      ();;
let v_eqChar =
  fun v_c1'2181 ->
    fun v_c2'2182 ->
      Obj.magic
        Int.equal
        v_c1'2181
        v_c2'2182;;
let v_externalExp =
  fun v_x'6423 ->
    (Float.exp)
      v_x'6423;;
let v_exp =
  fun v_x'2185 ->
    Obj.magic
      v_externalExp
      v_x'2185;;
let v_eqString =
  fun v_eqSeq ->
    fun v_s1'2187 ->
      fun v_s2'2188 ->
        Obj.magic
          v_eqSeq
          Int.equal
          v_s1'2187
          v_s2'2188;;
let rec v_string2int_rechelper =
    fun v_s'2192 ->
      let v_len'2193 =
        Obj.magic
          Boot.Intrinsics.Mseq.length
          v_s'2192
      in
      let v_last'2194 =
        Obj.magic
          Int.sub
          v_len'2193
          1
      in
      if
        Obj.magic
          (Obj.magic
             Int.equal
             v_len'2193
             0)
      then
        0
      else
        Obj.magic
          (let v_lsd'2195 =
             Obj.magic
               Int.sub
               (Obj.magic
                  Fun.id
                  (Obj.magic
                     Boot.Intrinsics.Mseq.get
                     v_s'2192
                     v_last'2194))
               (Obj.magic
                  Fun.id
                  48)
           in
           let v_rest'2196 =
             Obj.magic
               Int.mul
               10
               (Obj.magic
                  v_string2int_rechelper
                  (Obj.magic
                     Boot.Intrinsics.Mseq.subsequence
                     v_s'2192
                     0
                     v_last'2194))
           in
           Obj.magic
             Int.add
             v_rest'2196
             v_lsd'2195);;
let v_string2int =
  fun v_s'2190 ->
    if
      Obj.magic
        Boot.Intrinsics.Mseq.null
        v_s'2190
    then
      0
    else
      Obj.magic
        (if
           Obj.magic
             (Obj.magic
                v_eqChar
                45
                (Obj.magic
                   Boot.Intrinsics.Mseq.head
                   v_s'2190))
         then
           Obj.magic
             Int.neg
             (Obj.magic
                v_string2int_rechelper
                (Obj.magic
                   Boot.Intrinsics.Mseq.tail
                   v_s'2190))
         else
           Obj.magic
             (Obj.magic
                v_string2int_rechelper
                v_s'2190));;
let rec v_int2string_rechelper =
    fun v_n'2200 ->
      if
        Obj.magic
          (Obj.magic
             ((<) : int -> int -> bool)
             v_n'2200
             10)
      then
        Obj.magic
          Boot.Intrinsics.Mseq.Helpers.of_array
          [| (Obj.magic
              (Obj.magic
                 Fun.id
                 (Obj.magic
                    Int.add
                    v_n'2200
                    (Obj.magic
                       Fun.id
                       48)))) |]
      else
        Obj.magic
          (let v_d'2201 =
             Obj.magic
               Boot.Intrinsics.Mseq.Helpers.of_array
               [| (Obj.magic
                   (Obj.magic
                      Fun.id
                      (Obj.magic
                         Int.add
                         (Obj.magic
                            Int.rem
                            v_n'2200
                            10)
                         (Obj.magic
                            Fun.id
                            48)))) |]
           in
           Obj.magic
             Boot.Intrinsics.Mseq.concat
             (Obj.magic
                v_int2string_rechelper
                (Obj.magic
                   Int.div
                   v_n'2200
                   10))
             v_d'2201);;
let v_int2string =
  fun v_n'2198 ->
    if
      Obj.magic
        (Obj.magic
           ((<) : int -> int -> bool)
           v_n'2198
           0)
    then
      Obj.magic
        Boot.Intrinsics.Mseq.cons
        45
        (Obj.magic
           v_int2string_rechelper
           (Obj.magic
              Int.neg
              v_n'2198))
    else
      Obj.magic
        (Obj.magic
           v_int2string_rechelper
           v_n'2198);;
let v__prod =
  Obj.magic
    Boot.Intrinsics.Mseq.Helpers.fold_left
    Int.mul
    1;;
let v_f =
  fun v_d'2206 ->
    fun v_kidx'2207 ->
      match
        Obj.magic
          (let v__target'6424 =
             v_kidx'2207
           in
           let
             CRec'6359 ({l0 = v_0'6425;l1 = v_1'6426})
           =
             Obj.magic
               Obj.magic
               v__target'6424
           in
           Option.Some (v_0'6425, v_1'6426))
      with
      | Option.Some (v_k'2208, v_idx'2209) ->
          (CRec'6359 { l0 =
               (Obj.repr
                 (Obj.magic
                    Int.div
                    v_k'2208
                    v_d'2206));
             l1 =
               (Obj.repr
                 (Obj.magic
                    Boot.Intrinsics.Mseq.cons
                    (Obj.magic
                       Int.rem
                       v_k'2208
                       v_d'2206)
                    v_idx'2209)) })
      | Option.None ->
          (Obj.magic
             (failwith
                "FILE \"/home/wikman/.local/lib/mcore/stdlib/tensor.mc\" 21:9-21:14 ERROR: Reached a never term, which should be impossible in a well-typed program."));;
let v_linearToCartesianIndex =
  fun v_shape'2204 ->
    fun v_k'2205 ->
      let v_r'2211 =
        Obj.magic
          Boot.Intrinsics.Mseq.Helpers.fold_right
          v_f
          (CRec'6359 { l0 =
               (Obj.repr
                 v_k'2205);
             l1 =
               (Obj.repr
                 (Obj.magic
                    Boot.Intrinsics.Mseq.Helpers.of_array
                    [|  |])) })
          v_shape'2204
      in
      let
        CRec'6359 ({l1 = v_X'2212})
      =
        Obj.magic
          v_r'2211
      in
      Obj.magic
        v_X'2212;;
let v_tensorHasShape =
  fun v_t'2215 ->
    fun v_shape'2216 ->
      Obj.magic
        v_eqSeq
        Int.equal
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_t'2215)
        v_shape'2216;;
let v_tensorHasSameShape =
  fun v_t1'2220 ->
    fun v_t2'2221 ->
      Obj.magic
        v_eqSeq
        Int.equal
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_t1'2220)
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_t2'2221);;
let v_tensorCreate =
  Boot.Intrinsics.T.create_generic_packed;;
let v_t'5251 =
  fun v_seq'2228 ->
    fun v_idx'2230 ->
      Obj.magic
        Boot.Intrinsics.Mseq.get
        v_seq'2228
        (Obj.magic
           Boot.Intrinsics.Mseq.get
           v_idx'2230
           0);;
let v_tensorOfSeqOrElse =
  fun v_f'2225 ->
    fun v_tcreate'2226 ->
      fun v_shape'2227 ->
        fun v_seq'2228 ->
          let v_n'2229 =
            Obj.magic
              Boot.Intrinsics.Mseq.length
              v_seq'2228
          in
          if
            Obj.magic
              (Obj.magic
                 ((<>) : int -> int -> bool)
                 v_n'2229
                 (Obj.magic
                    v__prod
                    v_shape'2227))
          then
            Obj.magic
              v_f'2225
              ()
          else
            Obj.magic
              (let v_t'2231 =
                 Obj.magic
                   v_tcreate'2226
                   (Obj.magic
                      Boot.Intrinsics.Mseq.Helpers.of_array
                      [| (Obj.magic
                          v_n'2229) |])
                   (Obj.magic
                      v_t'5251
                      v_seq'2228)
               in
               Obj.magic
                 Boot.Intrinsics.T.reshape_exn
                 v_t'2231
                 v_shape'2227);;
let v_t'5252 =
  fun v_'2234 ->
    Obj.magic
      Boot.Intrinsics.MSys.error
      (Obj.magic
         Boot.Intrinsics.Mseq.Helpers.of_array
         [| (69);
           (109);
           (112);
           (116);
           (121);
           (32);
           (115);
           (101);
           (113);
           (32);
           (105);
           (110);
           (32);
           (116);
           (101);
           (110);
           (115);
           (111);
           (114);
           (79);
           (102);
           (83);
           (101);
           (113);
           (69);
           (120);
           (110) |]);;
let v_tensorOfSeqExn =
  Obj.magic
    v_tensorOfSeqOrElse
    v_t'5252;;
let v_t'5253 =
  fun v_t'2238 ->
    fun v_n'2239 ->
      fun v_i'2240 ->
        if
          Obj.magic
            (Obj.magic
               ((<) : int -> int -> bool)
               v_i'2240
               v_n'2239)
        then
          CSome'2149 (Obj.repr
             (CRec'6359 { l0 =
                  (Obj.repr
                    (Obj.magic
                       Boot.Intrinsics.T.get_exn
                       v_t'2238
                       (Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.of_array
                          [| (Obj.magic
                              v_i'2240) |])));
                l1 =
                  (Obj.repr
                    (Obj.magic
                       Int.add
                       v_i'2240
                       1)) }))
        else
          Obj.magic
            CNone'2151;;
let v_tensorToSeqOrElse =
  fun v_f'2237 ->
    fun v_t'2238 ->
      if
        Obj.magic
          (Obj.magic
             ((<>) : int -> int -> bool)
             (Obj.magic
                Boot.Intrinsics.T.rank
                v_t'2238)
             1)
      then
        Obj.magic
          v_f'2237
          ()
      else
        Obj.magic
          (let v_n'2239 =
             Obj.magic
               Boot.Intrinsics.Mseq.get
               (Obj.magic
                  Boot.Intrinsics.T.shape
                  v_t'2238)
               0
           in
           Obj.magic
             v_unfoldr
             (Obj.magic
                v_t'5253
                v_t'2238
                v_n'2239)
             0);;
let v_t'5254 =
  fun v_'2243 ->
    Obj.magic
      Boot.Intrinsics.MSys.error
      (Obj.magic
         Boot.Intrinsics.Mseq.Helpers.of_array
         [| (78);
           (111);
           (116);
           (32);
           (114);
           (97);
           (110);
           (107);
           (32);
           (49);
           (32);
           (116);
           (101);
           (110);
           (115);
           (111);
           (114);
           (32);
           (105);
           (110);
           (32);
           (116);
           (101);
           (110);
           (115);
           (111);
           (114);
           (84);
           (111);
           (83);
           (101);
           (113);
           (69);
           (120);
           (110) |]);;
let v_tensorToSeqExn =
  Obj.magic
    v_tensorToSeqOrElse
    v_t'5254;;
let v_tensorSize'2247 =
  fun v_t'2246 ->
    Obj.magic
      v__prod
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2246);;
let v_t'5255 =
  fun v_g'2251 ->
    fun v_v2'2256 ->
      fun v_i'2257 ->
        fun v_e'2258 ->
          Obj.magic
            Boot.Intrinsics.T.set_exn
            v_v2'2256
            (Obj.magic
               Boot.Intrinsics.Mseq.Helpers.of_array
               [| (Obj.magic
                   v_i'2257) |])
            (Obj.magic
               v_g'2251
               (Obj.magic
                  Boot.Intrinsics.T.get_exn
                  v_e'2258
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [|  |]))
               (Obj.magic
                  Boot.Intrinsics.T.get_exn
                  v_v2'2256
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (Obj.magic
                         v_i'2257) |])));;
let v_tensorMapOrElse =
  fun v_f'2250 ->
    fun v_g'2251 ->
      fun v_t1'2252 ->
        fun v_t2'2253 ->
          if
            Obj.magic
              (Obj.magic
                 v_tensorHasSameShape
                 v_t1'2252
                 v_t2'2253)
          then
            let v_n'2254 =
              Obj.magic
                v_tensorSize'2247
                v_t1'2252
            in
            let v_v1'2255 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t1'2252
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2254) |])
            in
            let v_v2'2256 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t2'2253
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2254) |])
            in
            Obj.magic
              Boot.Intrinsics.T.iter_slice
              (Obj.magic
                 v_t'5255
                 v_g'2251
                 v_v2'2256)
              v_v1'2255
          else
            Obj.magic
              (Obj.magic
                 v_f'2250
                 ());;
let v_t'5256 =
  fun v_'2260 ->
    Obj.magic
      Boot.Intrinsics.MSys.error
      (Obj.magic
         Boot.Intrinsics.Mseq.Helpers.of_array
         [| (84);
           (101);
           (110);
           (115);
           (111);
           (114);
           (32);
           (115);
           (104);
           (97);
           (112);
           (101);
           (32);
           (109);
           (105);
           (115);
           (109);
           (97);
           (116);
           (99);
           (104);
           (32);
           (105);
           (110);
           (32);
           (116);
           (101);
           (110);
           (115);
           (111);
           (114);
           (77);
           (97);
           (112) |]);;
let v_tensorMapExn =
  Obj.magic
    v_tensorMapOrElse
    v_t'5256;;
let v_t'5257 =
  fun v_g'2265 ->
    fun v_shape'2268 ->
      fun v_v2'2271 ->
        fun v_i'2272 ->
          fun v_e'2273 ->
            let v_idx'2274 =
              Obj.magic
                v_linearToCartesianIndex
                v_shape'2268
                v_i'2272
            in
            Obj.magic
              Boot.Intrinsics.T.set_exn
              v_v2'2271
              (Obj.magic
                 Boot.Intrinsics.Mseq.Helpers.of_array
                 [| (Obj.magic
                     v_i'2272) |])
              (Obj.magic
                 v_g'2265
                 v_idx'2274
                 (Obj.magic
                    Boot.Intrinsics.T.get_exn
                    v_e'2273
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [|  |]))
                 (Obj.magic
                    Boot.Intrinsics.T.get_exn
                    v_v2'2271
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_i'2272) |])));;
let v_tensorMapiOrElse =
  fun v_f'2264 ->
    fun v_g'2265 ->
      fun v_t1'2266 ->
        fun v_t2'2267 ->
          let v_shape'2268 =
            Obj.magic
              Boot.Intrinsics.T.shape
              v_t1'2266
          in
          if
            Obj.magic
              (Obj.magic
                 v_tensorHasShape
                 v_t2'2267
                 v_shape'2268)
          then
            let v_n'2269 =
              Obj.magic
                v_tensorSize'2247
                v_t1'2266
            in
            let v_v1'2270 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t1'2266
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2269) |])
            in
            let v_v2'2271 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t2'2267
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2269) |])
            in
            Obj.magic
              Boot.Intrinsics.T.iter_slice
              (Obj.magic
                 v_t'5257
                 v_g'2265
                 v_shape'2268
                 v_v2'2271)
              v_v1'2270
          else
            Obj.magic
              (Obj.magic
                 v_f'2264
                 ());;
let v_t'5258 =
  fun v_'2276 ->
    Obj.magic
      Boot.Intrinsics.MSys.error
      (Obj.magic
         Boot.Intrinsics.Mseq.Helpers.of_array
         [| (84);
           (101);
           (110);
           (115);
           (111);
           (114);
           (32);
           (115);
           (104);
           (97);
           (112);
           (101);
           (32);
           (109);
           (105);
           (115);
           (109);
           (97);
           (116);
           (99);
           (104);
           (32);
           (105);
           (110);
           (32);
           (116);
           (101);
           (110);
           (115);
           (111);
           (114);
           (77);
           (97);
           (112) |]);;
let v_tensorMapiExn =
  Obj.magic
    v_tensorMapiOrElse
    v_t'5258;;
let v_t'5259 =
  fun v_x'2281 ->
    fun v_'2282 ->
      v_x'2281;;
let v_tensorBlitExn =
  fun v_t1'2279 ->
    fun v_t2'2280 ->
      if
        Obj.magic
          (Obj.magic
             v_tensorHasSameShape
             v_t1'2279
             v_t2'2280)
      then
        Obj.magic
          v_tensorMapExn
          v_t'5259
          v_t1'2279
          v_t2'2280
      else
        Obj.magic
          (Obj.magic
             Boot.Intrinsics.MSys.error
             (Obj.magic
                Boot.Intrinsics.Mseq.Helpers.of_array
                [| (73);
                  (110);
                  (118);
                  (97);
                  (108);
                  (105);
                  (100);
                  (32);
                  (65);
                  (114);
                  (103);
                  (117);
                  (109);
                  (101);
                  (110);
                  (116);
                  (58);
                  (32);
                  (116);
                  (101);
                  (110);
                  (115);
                  (111);
                  (114);
                  (46);
                  (116);
                  (101);
                  (110);
                  (115);
                  (111);
                  (114);
                  (66);
                  (108);
                  (105);
                  (116);
                  (69);
                  (120);
                  (110) |]));;
let v_t'5260 =
  fun v_'2285 ->
    0;;
let v_test =
  let v_t1'2284 =
    Obj.magic
      v_tensorOfSeqExn
      Boot.Intrinsics.T.create_generic_packed
      (Obj.magic
         Boot.Intrinsics.Mseq.Helpers.of_array
         [| (3) |])
      (Obj.magic
         Boot.Intrinsics.Mseq.Helpers.of_array
         [| (1);
           (2);
           (3) |])
  in
  let v_t2'2286 =
    Obj.magic
      Boot.Intrinsics.T.create_generic_packed
      (Obj.magic
         Boot.Intrinsics.Mseq.Helpers.of_array
         [| (3) |])
      v_t'5260
  in
  ();;
let v_externalGaussianSample =
  fun v_x'6427 ->
    fun v_x'6428 ->
      (Owl_stats.gaussian_rvs)
        ~mu:(v_x'6427)
        ~sigma:(v_x'6428);;
let v_gaussianSample =
  fun v_mu'2290 ->
    fun v_sigma'2291 ->
      Obj.magic
        v_externalGaussianSample
        v_mu'2290
        v_sigma'2291;;
let v_t'5261 =
  fun v_acc'2294 ->
    fun v_e'2295 ->
      Obj.magic
        Int.mul
        v_acc'2294
        v_e'2295;;
let v_tensorSize'2296 =
  fun v_t'2293 ->
    Obj.magic
      Boot.Intrinsics.Mseq.Helpers.fold_left
      v_t'5261
      1
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2293);;
let v_t'5262 =
  fun v_w'2298 ->
    fun v_x'2299 ->
      fun v_m'2303 ->
        fun v_x_offset'2307 ->
          fun v_i'2309 ->
            fun v_acc'2311 ->
              fun v_j'2312 ->
                Obj.magic
                  Float.add
                  v_acc'2311
                  (Obj.magic
                     Float.mul
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_w'2298
                        (Obj.magic
                           Int.add
                           v_i'2309
                           (Obj.magic
                              Int.mul
                              v_m'2303
                              v_j'2312)))
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_x'2299
                        (Obj.magic
                           Int.add
                           v_x_offset'2307
                           v_j'2312)));;
let v_iterfun'2314 =
  fun v_w'2298 ->
    fun v_x'2299 ->
      fun v_b'2300 ->
        fun v_z'2301 ->
          fun v_m'2303 ->
            fun v_n'2304 ->
              fun v_i'2305 ->
                let v_s_idx'2306 =
                  Obj.magic
                    Int.div
                    v_i'2305
                    v_m'2303
                in
                let v_x_offset'2307 =
                  Obj.magic
                    Int.mul
                    v_s_idx'2306
                    v_n'2304
                in
                let v_z_idx'2308 =
                  v_i'2305
                in
                let v_i'2309 =
                  Obj.magic
                    Int.rem
                    v_i'2305
                    v_m'2303
                in
                let v_acc_init'2310 =
                  Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_b'2300
                    v_i'2309
                in
                let v_v'2313 =
                  let rec v_loop'6227 =
                      fun v_acc'6228 ->
                        fun v_i'6229 ->
                          if
                            Obj.magic
                              (Obj.magic
                                 ((<) : int -> int -> bool)
                                 v_i'6229
                                 v_n'2304)
                          then
                            let v_t'6230 =
                              Obj.magic
                                v_t'5262
                                v_w'2298
                                v_x'2299
                                v_m'2303
                                v_x_offset'2307
                                v_i'2309
                                v_acc'6228
                                v_i'6229
                            in
                            Obj.magic
                              v_loop'6227
                              v_t'6230
                              (Obj.magic
                                 Int.add
                                 v_i'6229
                                 1)
                          else
                            Obj.magic
                              v_acc'6228
                  in Obj.magic
                    v_loop'6227
                    v_acc_init'2310
                    0
                in
                Obj.magic
                  Boot.Intrinsics.T.linear_set_exn
                  v_z'2301
                  v_z_idx'2308
                  v_v'2313;;
let v_tensorOpExn__z___Wx_B =
  fun v_s_max'2297 ->
    fun v_w'2298 ->
      fun v_x'2299 ->
        fun v_b'2300 ->
          fun v_z'2301 ->
            let v_w_shape'2302 =
              Obj.magic
                Boot.Intrinsics.T.shape
                v_w'2298
            in
            let v_m'2303 =
              Obj.magic
                Boot.Intrinsics.Mseq.get
                v_w_shape'2302
                1
            in
            let v_n'2304 =
              Obj.magic
                Boot.Intrinsics.Mseq.get
                v_w_shape'2302
                0
            in
            let rec v_loop'6231 =
                fun v_acc'6232 ->
                  fun v_i'6233 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6233
                           (Obj.magic
                              Int.mul
                              v_s_max'2297
                              v_m'2303))
                    then
                      let v_t'6234 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_iterfun'2314
                               v_w'2298
                               v_x'2299
                               v_b'2300
                               v_z'2301
                               v_m'2303
                               v_n'2304)
                          v_acc'6232
                          v_i'6233
                      in
                      Obj.magic
                        v_loop'6231
                        v_t'6234
                        (Obj.magic
                           Int.add
                           v_i'6233
                           1)
                    else
                      Obj.magic
                        v_acc'6232
            in Obj.magic
              v_loop'6231
              ()
              0;;
let v_t'5263 =
  fun v_x'2317 ->
    fun v_z'2319 ->
      fun v_x_offset'2328 ->
        fun v_y_val'2330 ->
          fun v_z_idx'2331 ->
            fun v_row'2332 ->
              let v_'2333 =
                Obj.magic
                  Boot.Intrinsics.T.linear_set_exn
                  v_z'2319
                  v_z_idx'2331
                  (Obj.magic
                     Float.mul
                     v_y_val'2330
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_x'2317
                        (Obj.magic
                           Int.add
                           v_x_offset'2328
                           v_row'2332)))
              in
              Obj.magic
                Int.add
                v_z_idx'2331
                1;;
let v_iterfun'2335 =
  fun v_x'2317 ->
    fun v_y'2318 ->
      fun v_z'2319 ->
        fun v_m'2321 ->
          fun v_n'2322 ->
            fun v_m_x_n'2323 ->
              fun v_i'2324 ->
                let v_s_idx'2325 =
                  Obj.magic
                    Int.div
                    v_i'2324
                    v_n'2322
                in
                let v_col'2326 =
                  Obj.magic
                    Int.rem
                    v_i'2324
                    v_n'2322
                in
                let v_z_offset'2327 =
                  Obj.magic
                    Int.add
                    (Obj.magic
                       Int.mul
                       v_s_idx'2325
                       v_m_x_n'2323)
                    (Obj.magic
                       Int.mul
                       v_m'2321
                       v_col'2326)
                in
                let v_x_offset'2328 =
                  Obj.magic
                    Int.mul
                    v_s_idx'2325
                    v_m'2321
                in
                let v_y_offset'2329 =
                  Obj.magic
                    Int.mul
                    v_s_idx'2325
                    v_n'2322
                in
                let v_y_val'2330 =
                  Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_y'2318
                    (Obj.magic
                       Int.add
                       v_y_offset'2329
                       v_col'2326)
                in
                let v_'2334 =
                  let rec v_loop'6235 =
                      fun v_acc'6236 ->
                        fun v_i'6237 ->
                          if
                            Obj.magic
                              (Obj.magic
                                 ((<) : int -> int -> bool)
                                 v_i'6237
                                 v_m'2321)
                          then
                            let v_t'6238 =
                              Obj.magic
                                v_t'5263
                                v_x'2317
                                v_z'2319
                                v_x_offset'2328
                                v_y_val'2330
                                v_acc'6236
                                v_i'6237
                            in
                            Obj.magic
                              v_loop'6235
                              v_t'6238
                              (Obj.magic
                                 Int.add
                                 v_i'6237
                                 1)
                          else
                            Obj.magic
                              v_acc'6236
                  in Obj.magic
                    v_loop'6235
                    v_z_offset'2327
                    0
                in
                ();;
let v_tensorOpExn__z___x___y_T =
  fun v_s_max'2316 ->
    fun v_x'2317 ->
      fun v_y'2318 ->
        fun v_z'2319 ->
          let v_z_shape'2320 =
            Obj.magic
              Boot.Intrinsics.T.shape
              v_z'2319
          in
          let v_m'2321 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_z_shape'2320
              2
          in
          let v_n'2322 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_z_shape'2320
              1
          in
          let v_m_x_n'2323 =
            Obj.magic
              Int.mul
              v_m'2321
              v_n'2322
          in
          let rec v_loop'6239 =
              fun v_acc'6240 ->
                fun v_i'6241 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6241
                         (Obj.magic
                            Int.mul
                            v_s_max'2316
                            v_n'2322))
                  then
                    let v_t'6242 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2335
                             v_x'2317
                             v_y'2318
                             v_z'2319
                             v_m'2321
                             v_n'2322
                             v_m_x_n'2323)
                        v_acc'6240
                        v_i'6241
                    in
                    Obj.magic
                      v_loop'6239
                      v_t'6242
                      (Obj.magic
                         Int.add
                         v_i'6241
                         1)
                  else
                    Obj.magic
                      v_acc'6240
          in Obj.magic
            v_loop'6239
            ()
            0;;
let v_t'5264 =
  fun v_x'2338 ->
    fun v_w'2339 ->
      fun v_m'2342 ->
        fun v_x_offset'2348 ->
          fun v_j'2349 ->
            fun v_acc'2350 ->
              fun v_i'2351 ->
                Obj.magic
                  Float.add
                  v_acc'2350
                  (Obj.magic
                     Float.mul
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_w'2339
                        (Obj.magic
                           Int.add
                           v_i'2351
                           (Obj.magic
                              Int.mul
                              v_m'2342
                              v_j'2349)))
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_x'2338
                        (Obj.magic
                           Int.add
                           v_x_offset'2348
                           v_i'2351)));;
let v_iterfun'2353 =
  fun v_x'2338 ->
    fun v_w'2339 ->
      fun v_z'2340 ->
        fun v_m'2342 ->
          fun v_n'2343 ->
            fun v_j'2344 ->
              let v_s_idx'2345 =
                Obj.magic
                  Int.div
                  v_j'2344
                  v_n'2343
              in
              let v_n_idx'2346 =
                Obj.magic
                  Int.rem
                  v_j'2344
                  v_n'2343
              in
              let v_z_idx'2347 =
                v_j'2344
              in
              let v_x_offset'2348 =
                Obj.magic
                  Int.mul
                  v_s_idx'2345
                  v_m'2342
              in
              let v_j'2349 =
                v_n_idx'2346
              in
              let v_v'2352 =
                let rec v_loop'6243 =
                    fun v_acc'6244 ->
                      fun v_i'6245 ->
                        if
                          Obj.magic
                            (Obj.magic
                               ((<) : int -> int -> bool)
                               v_i'6245
                               v_m'2342)
                        then
                          let v_t'6246 =
                            Obj.magic
                              v_t'5264
                              v_x'2338
                              v_w'2339
                              v_m'2342
                              v_x_offset'2348
                              v_j'2349
                              v_acc'6244
                              v_i'6245
                          in
                          Obj.magic
                            v_loop'6243
                            v_t'6246
                            (Obj.magic
                               Int.add
                               v_i'6245
                               1)
                        else
                          Obj.magic
                            v_acc'6244
                in Obj.magic
                  v_loop'6243
                  0.
                  0
              in
              Obj.magic
                Boot.Intrinsics.T.linear_set_exn
                v_z'2340
                v_z_idx'2347
                v_v'2352;;
let v_tensorOpExn__z____x_T___W__T =
  fun v_s_max'2337 ->
    fun v_x'2338 ->
      fun v_w'2339 ->
        fun v_z'2340 ->
          let v_w_shape'2341 =
            Obj.magic
              Boot.Intrinsics.T.shape
              v_w'2339
          in
          let v_m'2342 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_w_shape'2341
              1
          in
          let v_n'2343 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_w_shape'2341
              0
          in
          let rec v_loop'6247 =
              fun v_acc'6248 ->
                fun v_i'6249 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6249
                         (Obj.magic
                            Int.mul
                            v_s_max'2337
                            v_n'2343))
                  then
                    let v_t'6250 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2353
                             v_x'2338
                             v_w'2339
                             v_z'2340
                             v_m'2342
                             v_n'2343)
                        v_acc'6248
                        v_i'6249
                    in
                    Obj.magic
                      v_loop'6247
                      v_t'6250
                      (Obj.magic
                         Int.add
                         v_i'6249
                         1)
                  else
                    Obj.magic
                      v_acc'6248
          in Obj.magic
            v_loop'6247
            ()
            0;;
let v_iterfun'2362 =
  fun v_x'2356 ->
    fun v_z'2357 ->
      fun v_i'2360 ->
        let v_x_i'2361 =
          Obj.magic
            Boot.Intrinsics.T.linear_get_exn
            v_x'2356
            v_i'2360
        in
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2357
          v_i'2360
          (if
             Obj.magic
               (Obj.magic
                  ((>) : float -> float -> bool)
                  v_x_i'2361
                  0.)
           then
             v_x_i'2361
           else
             Obj.magic
               0.);;
let v_tensorOpExn__z___ReLU_x_ =
  fun v_s_max'2355 ->
    fun v_x'2356 ->
      fun v_z'2357 ->
        let v_s'2358 =
          Obj.magic
            Boot.Intrinsics.Mseq.get
            (Obj.magic
               Boot.Intrinsics.T.shape
               v_x'2356)
            0
        in
        let v_m'2359 =
          Obj.magic
            Int.div
            (Obj.magic
               v_tensorSize'2296
               v_x'2356)
            v_s'2358
        in
        let rec v_loop'6251 =
            fun v_acc'6252 ->
              fun v_i'6253 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6253
                       (Obj.magic
                          Int.mul
                          v_s_max'2355
                          v_m'2359))
                then
                  let v_t'6254 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2362
                           v_x'2356
                           v_z'2357)
                      v_acc'6252
                      v_i'6253
                  in
                  Obj.magic
                    v_loop'6251
                    v_t'6254
                    (Obj.magic
                       Int.add
                       v_i'6253
                       1)
                else
                  Obj.magic
                    v_acc'6252
        in Obj.magic
          v_loop'6251
          ()
          0;;
let v_iterfun'2372 =
  fun v_x'2365 ->
    fun v_z'2367 ->
      fun v_i'2370 ->
        let v_x_i'2371 =
          Obj.magic
            Boot.Intrinsics.T.linear_get_exn
            v_x'2365
            v_i'2370
        in
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2367
          v_i'2370
          (Obj.magic
             v_exp
             v_x_i'2371);;
let v_t'5265 =
  fun v_z'2367 ->
    fun v_offset'2375 ->
      fun v_acc'2376 ->
        fun v_i'2377 ->
          Obj.magic
            Float.add
            v_acc'2376
            (Obj.magic
               Boot.Intrinsics.T.linear_get_exn
               v_z'2367
               (Obj.magic
                  Int.add
                  v_offset'2375
                  v_i'2377));;
let v_iterfunSummarize =
  fun v_expsumbuf'2366 ->
    fun v_z'2367 ->
      fun v_m'2369 ->
        fun v_s_idx'2374 ->
          let v_offset'2375 =
            Obj.magic
              Int.mul
              v_s_idx'2374
              v_m'2369
          in
          let v_expsum'2378 =
            let rec v_loop'6255 =
                fun v_acc'6256 ->
                  fun v_i'6257 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6257
                           v_m'2369)
                    then
                      let v_t'6258 =
                        Obj.magic
                          v_t'5265
                          v_z'2367
                          v_offset'2375
                          v_acc'6256
                          v_i'6257
                      in
                      Obj.magic
                        v_loop'6255
                        v_t'6258
                        (Obj.magic
                           Int.add
                           v_i'6257
                           1)
                    else
                      Obj.magic
                        v_acc'6256
            in Obj.magic
              v_loop'6255
              0.
              0
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_expsumbuf'2366
            v_s_idx'2374
            v_expsum'2378;;
let v_iterfunRegularize =
  fun v_expsumbuf'2366 ->
    fun v_z'2367 ->
      fun v_m'2369 ->
        fun v_i'2381 ->
          let v_s_idx'2382 =
            Obj.magic
              Int.div
              v_i'2381
              v_m'2369
          in
          let v_expsum'2383 =
            Obj.magic
              Boot.Intrinsics.T.linear_get_exn
              v_expsumbuf'2366
              v_s_idx'2382
          in
          let v_z_i'2384 =
            Obj.magic
              Boot.Intrinsics.T.linear_get_exn
              v_z'2367
              v_i'2381
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_z'2367
            v_i'2381
            (Obj.magic
               Float.div
               v_z_i'2384
               v_expsum'2383);;
let v_tensorOpExn__z___SoftMax_x_ =
  fun v_s_max'2364 ->
    fun v_x'2365 ->
      fun v_expsumbuf'2366 ->
        fun v_z'2367 ->
          let v_s'2368 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_x'2365)
              0
          in
          let v_m'2369 =
            Obj.magic
              Int.div
              (Obj.magic
                 v_tensorSize'2296
                 v_x'2365)
              v_s'2368
          in
          let v_'2373 =
            let rec v_loop'6259 =
                fun v_acc'6260 ->
                  fun v_i'6261 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6261
                           (Obj.magic
                              Int.mul
                              v_s_max'2364
                              v_m'2369))
                    then
                      let v_t'6262 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_iterfun'2372
                               v_x'2365
                               v_z'2367)
                          v_acc'6260
                          v_i'6261
                      in
                      Obj.magic
                        v_loop'6259
                        v_t'6262
                        (Obj.magic
                           Int.add
                           v_i'6261
                           1)
                    else
                      Obj.magic
                        v_acc'6260
            in Obj.magic
              v_loop'6259
              ()
              0
          in
          let v_'2380 =
            let rec v_loop'6263 =
                fun v_acc'6264 ->
                  fun v_i'6265 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6265
                           v_s_max'2364)
                    then
                      let v_t'6266 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_iterfunSummarize
                               v_expsumbuf'2366
                               v_z'2367
                               v_m'2369)
                          v_acc'6264
                          v_i'6265
                      in
                      Obj.magic
                        v_loop'6263
                        v_t'6266
                        (Obj.magic
                           Int.add
                           v_i'6265
                           1)
                    else
                      Obj.magic
                        v_acc'6264
            in Obj.magic
              v_loop'6263
              ()
              0
          in
          let rec v_loop'6267 =
              fun v_acc'6268 ->
                fun v_i'6269 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6269
                         (Obj.magic
                            Int.mul
                            v_s_max'2364
                            v_m'2369))
                  then
                    let v_t'6270 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfunRegularize
                             v_expsumbuf'2366
                             v_z'2367
                             v_m'2369)
                        v_acc'6268
                        v_i'6269
                    in
                    Obj.magic
                      v_loop'6267
                      v_t'6270
                      (Obj.magic
                         Int.add
                         v_i'6269
                         1)
                  else
                    Obj.magic
                      v_acc'6268
          in Obj.magic
            v_loop'6267
            ()
            0;;
let v_iterfun'2396 =
  fun v_h'2388 ->
    fun v_dldh'2389 ->
      fun v_z'2390 ->
        fun v_i'2393 ->
          let v_dhds_ii'2394 =
            if
              Obj.magic
                (Obj.magic
                   ((>) : float -> float -> bool)
                   (Obj.magic
                      Boot.Intrinsics.T.linear_get_exn
                      v_h'2388
                      v_i'2393)
                   0.)
            then
              1.
            else
              Obj.magic
                0.
          in
          let v_dldh_i'2395 =
            Obj.magic
              Boot.Intrinsics.T.linear_get_exn
              v_dldh'2389
              v_i'2393
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_z'2390
            v_i'2393
            (Obj.magic
               Float.mul
               v_dhds_ii'2394
               v_dldh_i'2395);;
let v_tensorOpExn__z___d_dx_l_ReLU_x__ =
  fun v_s_max'2387 ->
    fun v_h'2388 ->
      fun v_dldh'2389 ->
        fun v_z'2390 ->
          let v_s'2391 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_h'2388)
              0
          in
          let v_m'2392 =
            Obj.magic
              Int.div
              (Obj.magic
                 v_tensorSize'2296
                 v_h'2388)
              v_s'2391
          in
          let rec v_loop'6271 =
              fun v_acc'6272 ->
                fun v_i'6273 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6273
                         (Obj.magic
                            Int.mul
                            v_s_max'2387
                            v_m'2392))
                  then
                    let v_t'6274 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2396
                             v_h'2388
                             v_dldh'2389
                             v_z'2390)
                        v_acc'6272
                        v_i'6273
                    in
                    Obj.magic
                      v_loop'6271
                      v_t'6274
                      (Obj.magic
                         Int.add
                         v_i'6273
                         1)
                  else
                    Obj.magic
                      v_acc'6272
          in Obj.magic
            v_loop'6271
            ()
            0;;
let v_t'5266 =
  fun v_p'2399 ->
    fun v_dldp'2400 ->
      fun v_s_offset'2406 ->
        fun v_i'2407 ->
          fun v_p_i'2408 ->
            fun v_acc'2409 ->
              fun v_j'2410 ->
                let v_s_ij'2412 =
                  if
                    Obj.magic
                      (Obj.magic
                         Int.equal
                         v_j'2410
                         v_i'2407)
                  then
                    Obj.magic
                      Float.sub
                      v_p_i'2408
                      (Obj.magic
                         Float.mul
                         v_p_i'2408
                         v_p_i'2408)
                  else
                    Obj.magic
                      (let v_p_j'2411 =
                         Obj.magic
                           Boot.Intrinsics.T.linear_get_exn
                           v_p'2399
                           (Obj.magic
                              Int.add
                              v_s_offset'2406
                              v_j'2410)
                       in
                       Obj.magic
                         Float.neg
                         (Obj.magic
                            Float.mul
                            v_p_i'2408
                            v_p_j'2411))
                in
                let v_dldp_j'2413 =
                  Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_dldp'2400
                    (Obj.magic
                       Int.add
                       v_s_offset'2406
                       v_j'2410)
                in
                Obj.magic
                  Float.add
                  v_acc'2409
                  (Obj.magic
                     Float.mul
                     v_dldp_j'2413
                     v_s_ij'2412);;
let v_iterfun'2415 =
  fun v_p'2399 ->
    fun v_dldp'2400 ->
      fun v_z'2401 ->
        fun v_m'2403 ->
          fun v_i'2404 ->
            let v_s_idx'2405 =
              Obj.magic
                Int.div
                v_i'2404
                v_m'2403
            in
            let v_s_offset'2406 =
              Obj.magic
                Int.mul
                v_s_idx'2405
                v_m'2403
            in
            let v_i'2407 =
              Obj.magic
                Int.rem
                v_i'2404
                v_m'2403
            in
            let v_p_i'2408 =
              Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_p'2399
                (Obj.magic
                   Int.add
                   v_s_offset'2406
                   v_i'2407)
            in
            let v_v'2414 =
              let rec v_loop'6275 =
                  fun v_acc'6276 ->
                    fun v_i'6277 ->
                      if
                        Obj.magic
                          (Obj.magic
                             ((<) : int -> int -> bool)
                             v_i'6277
                             v_m'2403)
                      then
                        let v_t'6278 =
                          Obj.magic
                            v_t'5266
                            v_p'2399
                            v_dldp'2400
                            v_s_offset'2406
                            v_i'2407
                            v_p_i'2408
                            v_acc'6276
                            v_i'6277
                        in
                        Obj.magic
                          v_loop'6275
                          v_t'6278
                          (Obj.magic
                             Int.add
                             v_i'6277
                             1)
                      else
                        Obj.magic
                          v_acc'6276
              in Obj.magic
                v_loop'6275
                0.
                0
            in
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2401
              (Obj.magic
                 Int.add
                 v_s_offset'2406
                 v_i'2407)
              v_v'2414;;
let v_tensorOpExn__z___d_dx_l_SoftMax_x___ =
  fun v_s_max'2398 ->
    fun v_p'2399 ->
      fun v_dldp'2400 ->
        fun v_z'2401 ->
          let v_s'2402 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_p'2399)
              0
          in
          let v_m'2403 =
            Obj.magic
              Int.div
              (Obj.magic
                 v_tensorSize'2296
                 v_p'2399)
              v_s'2402
          in
          let rec v_loop'6279 =
              fun v_acc'6280 ->
                fun v_i'6281 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6281
                         (Obj.magic
                            Int.mul
                            v_s_max'2398
                            v_m'2403))
                  then
                    let v_t'6282 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2415
                             v_p'2399
                             v_dldp'2400
                             v_z'2401
                             v_m'2403)
                        v_acc'6280
                        v_i'6281
                    in
                    Obj.magic
                      v_loop'6279
                      v_t'6282
                      (Obj.magic
                         Int.add
                         v_i'6281
                         1)
                  else
                    Obj.magic
                      v_acc'6280
          in Obj.magic
            v_loop'6279
            ()
            0;;
let v_iterfun'2423 =
  fun v_x'2418 ->
    fun v_z'2419 ->
      fun v_i'2422 ->
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2419
          v_i'2422
          (Obj.magic
             Boot.Intrinsics.T.linear_get_exn
             v_x'2418
             v_i'2422);;
let v_tensorOpExn__z___x =
  fun v_s_max'2417 ->
    fun v_x'2418 ->
      fun v_z'2419 ->
        let v_s'2420 =
          Obj.magic
            Boot.Intrinsics.Mseq.get
            (Obj.magic
               Boot.Intrinsics.T.shape
               v_x'2418)
            0
        in
        let v_m'2421 =
          Obj.magic
            Int.div
            (Obj.magic
               v_tensorSize'2296
               v_x'2418)
            v_s'2420
        in
        let rec v_loop'6283 =
            fun v_acc'6284 ->
              fun v_i'6285 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6285
                       (Obj.magic
                          Int.mul
                          v_s_max'2417
                          v_m'2421))
                then
                  let v_t'6286 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2423
                           v_x'2418
                           v_z'2419)
                      v_acc'6284
                      v_i'6285
                  in
                  Obj.magic
                    v_loop'6283
                    v_t'6286
                    (Obj.magic
                       Int.add
                       v_i'6285
                       1)
                else
                  Obj.magic
                    v_acc'6284
        in Obj.magic
          v_loop'6283
          ()
          0;;
let v_iterfun'2431 =
  fun v_c'2426 ->
    fun v_z'2427 ->
      fun v_i'2430 ->
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2427
          v_i'2430
          (Obj.magic
             Float.mul
             (Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_z'2427
                v_i'2430)
             v_c'2426);;
let v_tensorOpExn__z____scalar_c_ =
  fun v_s_max'2425 ->
    fun v_c'2426 ->
      fun v_z'2427 ->
        let v_s'2428 =
          Obj.magic
            Boot.Intrinsics.Mseq.get
            (Obj.magic
               Boot.Intrinsics.T.shape
               v_z'2427)
            0
        in
        let v_m'2429 =
          Obj.magic
            Int.div
            (Obj.magic
               v_tensorSize'2296
               v_z'2427)
            v_s'2428
        in
        let rec v_loop'6287 =
            fun v_acc'6288 ->
              fun v_i'6289 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6289
                       (Obj.magic
                          Int.mul
                          v_s_max'2425
                          v_m'2429))
                then
                  let v_t'6290 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2431
                           v_c'2426
                           v_z'2427)
                      v_acc'6288
                      v_i'6289
                  in
                  Obj.magic
                    v_loop'6287
                    v_t'6290
                    (Obj.magic
                       Int.add
                       v_i'6289
                       1)
                else
                  Obj.magic
                    v_acc'6288
        in Obj.magic
          v_loop'6287
          ()
          0;;
let v_iterfun'2437 =
  fun v_c'2433 ->
    fun v_z'2434 ->
      fun v_i'2436 ->
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2434
          v_i'2436
          v_c'2433;;
let v_tensorOpExn__Z___scalar_c_ =
  fun v_c'2433 ->
    fun v_z'2434 ->
      let v_m'2435 =
        Obj.magic
          v_tensorSize'2296
          v_z'2434
      in
      let rec v_loop'6291 =
          fun v_acc'6292 ->
            fun v_i'6293 ->
              if
                Obj.magic
                  (Obj.magic
                     ((<) : int -> int -> bool)
                     v_i'6293
                     v_m'2435)
              then
                let v_t'6294 =
                  Obj.magic
                    (fun nv_ ->
                       Obj.magic
                         v_iterfun'2437
                         v_c'2433
                         v_z'2434)
                    v_acc'6292
                    v_i'6293
                in
                Obj.magic
                  v_loop'6291
                  v_t'6294
                  (Obj.magic
                     Int.add
                     v_i'6293
                     1)
              else
                Obj.magic
                  v_acc'6292
      in Obj.magic
        v_loop'6291
        ()
        0;;
let v_iterfun'2446 =
  fun v_x'2440 ->
    fun v_c'2441 ->
      fun v_z'2442 ->
        fun v_x_offset'2444 ->
          fun v_i'2445 ->
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2442
              v_i'2445
              (Obj.magic
                 Float.add
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_z'2442
                    v_i'2445)
                 (Obj.magic
                    Float.mul
                    (Obj.magic
                       Boot.Intrinsics.T.linear_get_exn
                       v_x'2440
                       (Obj.magic
                          Int.add
                          v_i'2445
                          v_x_offset'2444))
                    v_c'2441));;
let v_tensorOpExn__Z____x___scalar_c_ =
  fun v_s_idx'2439 ->
    fun v_x'2440 ->
      fun v_c'2441 ->
        fun v_z'2442 ->
          let v_m'2443 =
            Obj.magic
              v_tensorSize'2296
              v_z'2442
          in
          let v_x_offset'2444 =
            Obj.magic
              Int.mul
              v_s_idx'2439
              v_m'2443
          in
          let rec v_loop'6295 =
              fun v_acc'6296 ->
                fun v_i'6297 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6297
                         v_m'2443)
                  then
                    let v_t'6298 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2446
                             v_x'2440
                             v_c'2441
                             v_z'2442
                             v_x_offset'2444)
                        v_acc'6296
                        v_i'6297
                    in
                    Obj.magic
                      v_loop'6295
                      v_t'6298
                      (Obj.magic
                         Int.add
                         v_i'6297
                         1)
                  else
                    Obj.magic
                      v_acc'6296
          in Obj.magic
            v_loop'6295
            ()
            0;;
let v_iterfun'2456 =
  fun v_x'2449 ->
    fun v_c'2450 ->
      fun v_z'2451 ->
        fun v_z_offset'2453 ->
          fun v_i'2454 ->
            let v_z_idx'2455 =
              Obj.magic
                Int.add
                v_i'2454
                v_z_offset'2453
            in
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2451
              v_z_idx'2455
              (Obj.magic
                 Float.add
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_z'2451
                    v_z_idx'2455)
                 (Obj.magic
                    Float.mul
                    (Obj.magic
                       Boot.Intrinsics.T.linear_get_exn
                       v_x'2449
                       v_i'2454)
                    v_c'2450));;
let v_tensorOpExn__z____X___scalar_c_ =
  fun v_s_idx'2448 ->
    fun v_x'2449 ->
      fun v_c'2450 ->
        fun v_z'2451 ->
          let v_m'2452 =
            Obj.magic
              v_tensorSize'2296
              v_x'2449
          in
          let v_z_offset'2453 =
            Obj.magic
              Int.mul
              v_s_idx'2448
              v_m'2452
          in
          let rec v_loop'6299 =
              fun v_acc'6300 ->
                fun v_i'6301 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6301
                         v_m'2452)
                  then
                    let v_t'6302 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2456
                             v_x'2449
                             v_c'2450
                             v_z'2451
                             v_z_offset'2453)
                        v_acc'6300
                        v_i'6301
                    in
                    Obj.magic
                      v_loop'6299
                      v_t'6302
                      (Obj.magic
                         Int.add
                         v_i'6301
                         1)
                  else
                    Obj.magic
                      v_acc'6300
          in Obj.magic
            v_loop'6299
            ()
            0;;
let v_iterfun'2467 =
  fun v_y'2459 ->
    fun v_c'2460 ->
      fun v_z'2461 ->
        fun v_m'2462 ->
          fun v_i'2463 ->
            let v_idx'2464 =
              Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_y'2459
                v_i'2463
            in
            let v_offset'2465 =
              Obj.magic
                Int.mul
                v_i'2463
                v_m'2462
            in
            let v_z_idx'2466 =
              Obj.magic
                Int.add
                v_idx'2464
                v_offset'2465
            in
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2461
              v_z_idx'2466
              (Obj.magic
                 Float.add
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_z'2461
                    v_z_idx'2466)
                 v_c'2460);;
let v_tensorOpExp__z____1_Hot_y____scalar_c_ =
  fun v_s_max'2458 ->
    fun v_y'2459 ->
      fun v_c'2460 ->
        fun v_z'2461 ->
          let v_m'2462 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_z'2461)
              1
          in
          let rec v_loop'6303 =
              fun v_acc'6304 ->
                fun v_i'6305 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6305
                         v_s_max'2458)
                  then
                    let v_t'6306 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2467
                             v_y'2459
                             v_c'2460
                             v_z'2461
                             v_m'2462)
                        v_acc'6304
                        v_i'6305
                    in
                    Obj.magic
                      v_loop'6303
                      v_t'6306
                      (Obj.magic
                         Int.add
                         v_i'6305
                         1)
                  else
                    Obj.magic
                      v_acc'6304
          in Obj.magic
            v_loop'6303
            ()
            0;;
let v_t'5267 =
  fun v_z'2472 ->
    fun v_offset'2476 ->
      fun v_idx'2477 ->
        fun v_v'2478 ->
          fun v_j'2479 ->
            if
              Obj.magic
                (Obj.magic
                   Int.equal
                   v_j'2479
                   v_idx'2477)
            then
              Obj.magic
                Boot.Intrinsics.T.linear_set_exn
                v_z'2472
                (Obj.magic
                   Int.add
                   v_j'2479
                   v_offset'2476)
                v_v'2478
            else
              Obj.magic
                (Obj.magic
                   Boot.Intrinsics.T.linear_set_exn
                   v_z'2472
                   (Obj.magic
                      Int.add
                      v_j'2479
                      v_offset'2476)
                   0.);;
let v_iterfun'2480 =
  fun v_y'2470 ->
    fun v_x'2471 ->
      fun v_z'2472 ->
        fun v_m'2474 ->
          fun v_i'2475 ->
            let v_offset'2476 =
              Obj.magic
                Int.mul
                v_i'2475
                v_m'2474
            in
            let v_idx'2477 =
              Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_y'2470
                v_i'2475
            in
            let v_v'2478 =
              Obj.magic
                Float.neg
                (Obj.magic
                   Float.div
                   1.
                   (Obj.magic
                      Boot.Intrinsics.T.linear_get_exn
                      v_x'2471
                      (Obj.magic
                         Int.add
                         v_idx'2477
                         v_offset'2476)))
            in
            let rec v_loop'6307 =
                fun v_acc'6308 ->
                  fun v_i'6309 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6309
                           v_m'2474)
                    then
                      let v_t'6310 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_t'5267
                               v_z'2472
                               v_offset'2476
                               v_idx'2477
                               v_v'2478)
                          v_acc'6308
                          v_i'6309
                      in
                      Obj.magic
                        v_loop'6307
                        v_t'6310
                        (Obj.magic
                           Int.add
                           v_i'6309
                           1)
                    else
                      Obj.magic
                        v_acc'6308
            in Obj.magic
              v_loop'6307
              ()
              0;;
let v_tensorOpExn__z___1_Hot_y____scalar__1__x_T___1_Hot_y___ =
  fun v_s_max'2469 ->
    fun v_y'2470 ->
      fun v_x'2471 ->
        fun v_z'2472 ->
          let v_s'2473 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_x'2471)
              0
          in
          let v_m'2474 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_x'2471)
              1
          in
          let rec v_loop'6311 =
              fun v_acc'6312 ->
                fun v_i'6313 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6313
                         v_s_max'2469)
                  then
                    let v_t'6314 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2480
                             v_y'2470
                             v_x'2471
                             v_z'2472
                             v_m'2474)
                        v_acc'6312
                        v_i'6313
                    in
                    Obj.magic
                      v_loop'6311
                      v_t'6314
                      (Obj.magic
                         Int.add
                         v_i'6313
                         1)
                  else
                    Obj.magic
                      v_acc'6312
          in Obj.magic
            v_loop'6311
            ()
            0;;
let v_t'5268 =
  fun v_z'2482 ->
    fun v_m'2484 ->
      fun v_i'2485 ->
        fun v_acc'2486 ->
          fun v_j'2487 ->
            let v_s_idx'2488 =
              Obj.magic
                Int.add
                v_j'2487
                1
            in
            let v_s_offset'2489 =
              Obj.magic
                Int.mul
                v_s_idx'2488
                v_m'2484
            in
            Obj.magic
              Float.add
              v_acc'2486
              (Obj.magic
                 Boot.Intrinsics.T.linear_get_exn
                 v_z'2482
                 (Obj.magic
                    Int.add
                    v_s_offset'2489
                    v_i'2485));;
let v_iterfun =
  fun v_z'2482 ->
    fun v_s'2483 ->
      fun v_m'2484 ->
        fun v_i'2485 ->
          let v_v'2490 =
            let rec v_loop'6315 =
                fun v_acc'6316 ->
                  fun v_i'6317 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6317
                           (Obj.magic
                              Int.sub
                              v_s'2483
                              1))
                    then
                      let v_t'6318 =
                        Obj.magic
                          v_t'5268
                          v_z'2482
                          v_m'2484
                          v_i'2485
                          v_acc'6316
                          v_i'6317
                      in
                      Obj.magic
                        v_loop'6315
                        v_t'6318
                        (Obj.magic
                           Int.add
                           v_i'6317
                           1)
                    else
                      Obj.magic
                        v_acc'6316
            in Obj.magic
              v_loop'6315
              (Obj.magic
                 Boot.Intrinsics.T.linear_get_exn
                 v_z'2482
                 v_i'2485)
              0
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_z'2482
            v_i'2485
            v_v'2490;;
let v_tensorOpExn__Dim1Reduce_z__dst___z_0__op_____ =
  fun v_z'2482 ->
    let v_s'2483 =
      Obj.magic
        Boot.Intrinsics.Mseq.get
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_z'2482)
        0
    in
    let v_m'2484 =
      Obj.magic
        Int.div
        (Obj.magic
           v_tensorSize'2296
           v_z'2482)
        v_s'2483
    in
    let rec v_loop'6319 =
        fun v_acc'6320 ->
          fun v_i'6321 ->
            if
              Obj.magic
                (Obj.magic
                   ((<) : int -> int -> bool)
                   v_i'6321
                   v_m'2484)
            then
              let v_t'6322 =
                Obj.magic
                  (fun nv_ ->
                     Obj.magic
                       v_iterfun
                       v_z'2482
                       v_s'2483
                       v_m'2484)
                  v_acc'6320
                  v_i'6321
              in
              Obj.magic
                v_loop'6319
                v_t'6322
                (Obj.magic
                   Int.add
                   v_i'6321
                   1)
            else
              Obj.magic
                v_acc'6320
    in Obj.magic
      v_loop'6319
      ()
      0;;
let v_nnCompType_FullyConnected =
  0;;
let v_nnCompType_ReLU =
  1;;
let v_nnCompType_SoftMax =
  2;;
let v_t'5269 =
  fun v_'2506 ->
    0.;;
let v_t'5270 =
  fun v_'2507 ->
    0.;;
let v_t'5271 =
  fun v_'2508 ->
    0.;;
let v_t'5272 =
  fun v_'2509 ->
    0.;;
let v_t'5273 =
  fun v_'2510 ->
    0.;;
let v_t'5274 =
  fun v_'2511 ->
    0.;;
let v_t'5275 =
  fun v_'2512 ->
    0.;;
let v_t'5276 =
  fun v_'2513 ->
    0.;;
let v_t'5277 =
  fun v_'2514 ->
    0.;;
let v_t'5278 =
  fun v_'2515 ->
    0.;;
let v_t'5279 =
  fun v_'2516 ->
    0.;;
let v_t'5280 =
  fun v_'2517 ->
    0.;;
let v_t'5281 =
  fun v_'2518 ->
    0.;;
let v_t'5282 =
  fun v_'2519 ->
    0.;;
let v_t'5283 =
  fun v_'2520 ->
    0.;;
let v_t'5284 =
  fun v_'2521 ->
    0.;;
let v_t'5285 =
  fun v_'2522 ->
    0.;;
let v_t'5286 =
  fun v_'2523 ->
    0.;;
let v_t'5287 =
  fun v_'2524 ->
    0.;;
let v_nnComponentMakeExn =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_indim'2497 ->
              fun v_outdim'2498 ->
                fun v_weights'2499 ->
                  fun v_max_batchsize'2500 ->
                    fun v_name'2501 ->
                      let v_sizeIndim'2502 =
                        Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.fold_left
                          Int.mul
                          1
                          v_indim'2497
                      in
                      let v_sizeOutdim'2503 =
                        Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.fold_left
                          Int.mul
                          1
                          v_outdim'2498
                      in
                      if
                        Obj.magic
                          (Obj.magic
                             v_eqString
                             v_eqSeq
                             v_name'2501
                             (Obj.magic
                                Boot.Intrinsics.Mseq.Helpers.of_array
                                [| (70);
                                  (117);
                                  (108);
                                  (108);
                                  (121);
                                  (67);
                                  (111);
                                  (110);
                                  (110);
                                  (101);
                                  (99);
                                  (116);
                                  (101);
                                  (100) |]))
                      then
                        if
                          Obj.magic
                            (Obj.magic
                               ((<>) : int -> int -> bool)
                               (Obj.magic
                                  Boot.Intrinsics.Mseq.length
                                  v_weights'2499)
                               2)
                        then
                          Obj.magic
                            Boot.Intrinsics.MSys.error
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.of_array
                               [| (101);
                                 (120);
                                 (112);
                                 (101);
                                 (99);
                                 (116);
                                 (101);
                                 (100);
                                 (32);
                                 (101);
                                 (120);
                                 (97);
                                 (99);
                                 (116);
                                 (108);
                                 (121);
                                 (32);
                                 (50);
                                 (32);
                                 (119);
                                 (101);
                                 (105);
                                 (103);
                                 (104);
                                 (116);
                                 (115);
                                 (58);
                                 (32);
                                 (119);
                                 (32);
                                 (97);
                                 (110);
                                 (100);
                                 (32);
                                 (98) |])
                        else
                          Obj.magic
                            (let v_w'2504 =
                               Obj.magic
                                 Boot.Intrinsics.Mseq.get
                                 v_weights'2499
                                 0
                             in
                             let v_b'2505 =
                               Obj.magic
                                 Boot.Intrinsics.Mseq.get
                                 v_weights'2499
                                 1
                             in
                             if
                               Obj.magic
                                 (Obj.magic
                                    ((<>) : int -> int -> bool)
                                    (Obj.magic
                                       Boot.Intrinsics.T.rank
                                       v_w'2504)
                                    2)
                             then
                               Obj.magic
                                 Boot.Intrinsics.MSys.error
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [| (119);
                                      (32);
                                      (109);
                                      (117);
                                      (115);
                                      (116);
                                      (32);
                                      (98);
                                      (101);
                                      (32);
                                      (97);
                                      (32);
                                      (114);
                                      (97);
                                      (110);
                                      (107);
                                      (32);
                                      (50);
                                      (32);
                                      (116);
                                      (101);
                                      (110);
                                      (115);
                                      (111);
                                      (114) |])
                             else
                               Obj.magic
                                 (if
                                    Obj.magic
                                      (Obj.magic
                                         ((<>) : int -> int -> bool)
                                         (Obj.magic
                                            Boot.Intrinsics.T.rank
                                            v_b'2505)
                                         1)
                                  then
                                    Obj.magic
                                      Boot.Intrinsics.MSys.error
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (98);
                                           (32);
                                           (109);
                                           (117);
                                           (115);
                                           (116);
                                           (32);
                                           (98);
                                           (101);
                                           (32);
                                           (97);
                                           (32);
                                           (114);
                                           (97);
                                           (110);
                                           (107);
                                           (32);
                                           (49);
                                           (32);
                                           (116);
                                           (101);
                                           (110);
                                           (115);
                                           (111);
                                           (114) |])
                                  else
                                    Obj.magic
                                      (if
                                         Obj.magic
                                           (Obj.magic
                                              ((<>) : int -> int -> bool)
                                              (Obj.magic
                                                 Boot.Intrinsics.Mseq.get
                                                 (Obj.magic
                                                    Boot.Intrinsics.T.shape
                                                    v_w'2504)
                                                 1)
                                              (Obj.magic
                                                 v_tensorSize'2296
                                                 v_b'2505))
                                       then
                                         Obj.magic
                                           Boot.Intrinsics.MSys.error
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (115);
                                                (105);
                                                (122);
                                                (101);
                                                (32);
                                                (109);
                                                (105);
                                                (115);
                                                (109);
                                                (97);
                                                (116);
                                                (99);
                                                (104);
                                                (32);
                                                (111);
                                                (110);
                                                (32);
                                                (98);
                                                (32);
                                                (97);
                                                (110);
                                                (100);
                                                (32);
                                                (119) |])
                                       else
                                         Obj.magic
                                           (if
                                              Obj.magic
                                                (Obj.magic
                                                   ((<>) : int -> int -> bool)
                                                   (Obj.magic
                                                      v_tensorSize'2296
                                                      v_b'2505)
                                                   v_sizeOutdim'2503)
                                            then
                                              Obj.magic
                                                Boot.Intrinsics.MSys.error
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                                   [| (115);
                                                     (105);
                                                     (122);
                                                     (101);
                                                     (32);
                                                     (109);
                                                     (105);
                                                     (115);
                                                     (109);
                                                     (97);
                                                     (116);
                                                     (99);
                                                     (104);
                                                     (32);
                                                     (111);
                                                     (110);
                                                     (32);
                                                     (98);
                                                     (32);
                                                     (97);
                                                     (110);
                                                     (100);
                                                     (32);
                                                     (111);
                                                     (117);
                                                     (116);
                                                     (100);
                                                     (105);
                                                     (109);
                                                     (32);
                                                     (115);
                                                     (105);
                                                     (122);
                                                     (101) |])
                                            else
                                              Obj.magic
                                                (if
                                                   Obj.magic
                                                     (Obj.magic
                                                        ((<>) : int -> int -> bool)
                                                        (Obj.magic
                                                           Boot.Intrinsics.Mseq.get
                                                           (Obj.magic
                                                              Boot.Intrinsics.T.shape
                                                              v_w'2504)
                                                           0)
                                                        v_sizeIndim'2502)
                                                 then
                                                   Obj.magic
                                                     Boot.Intrinsics.MSys.error
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.Helpers.of_array
                                                        [| (115);
                                                          (105);
                                                          (122);
                                                          (101);
                                                          (32);
                                                          (109);
                                                          (105);
                                                          (115);
                                                          (109);
                                                          (97);
                                                          (116);
                                                          (99);
                                                          (104);
                                                          (32);
                                                          (111);
                                                          (110);
                                                          (32);
                                                          (99);
                                                          (111);
                                                          (108);
                                                          (115);
                                                          (32);
                                                          (105);
                                                          (110);
                                                          (32);
                                                          (119);
                                                          (32);
                                                          (97);
                                                          (110);
                                                          (100);
                                                          (32);
                                                          (105);
                                                          (110);
                                                          (100);
                                                          (105);
                                                          (109);
                                                          (32);
                                                          (115);
                                                          (105);
                                                          (122);
                                                          (101) |])
                                                 else
                                                   Obj.magic
                                                     (CRec'6351 { lb =
                                                          (Obj.repr
                                                            v_b'2505);
                                                        lw =
                                                          (Obj.repr
                                                            v_w'2504);
                                                        lty =
                                                          (Obj.repr
                                                            v_nnCompType_FullyConnected);
                                                        lb_grads =
                                                          (Obj.repr
                                                            (Obj.magic
                                                               Boot.Intrinsics.T.create_float_packed
                                                               (Obj.magic
                                                                  Boot.Intrinsics.Mseq.cons
                                                                  v_max_batchsize'2500
                                                                  (Obj.magic
                                                                     Boot.Intrinsics.T.shape
                                                                     v_b'2505))
                                                               v_t'5269));
                                                        lw_grads =
                                                          (Obj.repr
                                                            (Obj.magic
                                                               Boot.Intrinsics.T.create_float_packed
                                                               (Obj.magic
                                                                  Boot.Intrinsics.Mseq.cons
                                                                  v_max_batchsize'2500
                                                                  (Obj.magic
                                                                     Boot.Intrinsics.T.shape
                                                                     v_w'2504))
                                                               v_t'5270));
                                                        lin_grads =
                                                          (Obj.repr
                                                            (Obj.magic
                                                               Boot.Intrinsics.T.create_float_packed
                                                               (Obj.magic
                                                                  Boot.Intrinsics.Mseq.cons
                                                                  v_max_batchsize'2500
                                                                  v_indim'2497)
                                                               v_t'5271));
                                                        lout_bufs =
                                                          (Obj.repr
                                                            (Obj.magic
                                                               Boot.Intrinsics.T.create_float_packed
                                                               (Obj.magic
                                                                  Boot.Intrinsics.Mseq.cons
                                                                  v_max_batchsize'2500
                                                                  v_outdim'2498)
                                                               v_t'5272));
                                                        lsoftmax_bufs =
                                                          (Obj.repr
                                                            (Obj.magic
                                                               Boot.Intrinsics.T.create_float_packed
                                                               (Obj.magic
                                                                  Boot.Intrinsics.Mseq.Helpers.of_array
                                                                  [| (1) |])
                                                               v_t'5273)) }))))))
                      else
                        Obj.magic
                          (if
                             Obj.magic
                               (Obj.magic
                                  v_eqString
                                  v_eqSeq
                                  v_name'2501
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (82);
                                       (101);
                                       (76);
                                       (85) |]))
                           then
                             if
                               Obj.magic
                                 (Obj.magic
                                    ((<>) : int -> int -> bool)
                                    (Obj.magic
                                       Boot.Intrinsics.Mseq.length
                                       v_weights'2499)
                                    0)
                             then
                               Obj.magic
                                 Boot.Intrinsics.MSys.error
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [| (101);
                                      (120);
                                      (112);
                                      (101);
                                      (99);
                                      (116);
                                      (101);
                                      (100);
                                      (32);
                                      (101);
                                      (120);
                                      (97);
                                      (99);
                                      (116);
                                      (108);
                                      (121);
                                      (32);
                                      (48);
                                      (32);
                                      (119);
                                      (101);
                                      (105);
                                      (103);
                                      (104);
                                      (116);
                                      (115) |])
                             else
                               Obj.magic
                                 (if
                                    Obj.magic
                                      (Obj.magic
                                         ((<>) : int -> int -> bool)
                                         v_sizeIndim'2502
                                         v_sizeOutdim'2503)
                                  then
                                    Obj.magic
                                      Boot.Intrinsics.MSys.error
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (115);
                                           (105);
                                           (122);
                                           (101);
                                           (32);
                                           (109);
                                           (105);
                                           (115);
                                           (109);
                                           (97);
                                           (116);
                                           (99);
                                           (104);
                                           (32);
                                           (111);
                                           (110);
                                           (32);
                                           (105);
                                           (110);
                                           (100);
                                           (105);
                                           (109);
                                           (32);
                                           (97);
                                           (110);
                                           (100);
                                           (32);
                                           (111);
                                           (117);
                                           (116);
                                           (100);
                                           (105);
                                           (109);
                                           (32);
                                           (115);
                                           (105);
                                           (122);
                                           (101) |])
                                  else
                                    Obj.magic
                                      (CRec'6351 { lb =
                                           (Obj.repr
                                             (Obj.magic
                                                Boot.Intrinsics.T.create_float_packed
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                                   [| (1) |])
                                                v_t'5274));
                                         lw =
                                           (Obj.repr
                                             (Obj.magic
                                                Boot.Intrinsics.T.create_float_packed
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                                   [| (1) |])
                                                v_t'5275));
                                         lty =
                                           (Obj.repr
                                             v_nnCompType_ReLU);
                                         lb_grads =
                                           (Obj.repr
                                             (Obj.magic
                                                Boot.Intrinsics.T.create_float_packed
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                                   [| (1) |])
                                                v_t'5276));
                                         lw_grads =
                                           (Obj.repr
                                             (Obj.magic
                                                Boot.Intrinsics.T.create_float_packed
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                                   [| (1) |])
                                                v_t'5277));
                                         lin_grads =
                                           (Obj.repr
                                             (Obj.magic
                                                Boot.Intrinsics.T.create_float_packed
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.cons
                                                   v_max_batchsize'2500
                                                   v_indim'2497)
                                                v_t'5278));
                                         lout_bufs =
                                           (Obj.repr
                                             (Obj.magic
                                                Boot.Intrinsics.T.create_float_packed
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.cons
                                                   v_max_batchsize'2500
                                                   v_outdim'2498)
                                                v_t'5279));
                                         lsoftmax_bufs =
                                           (Obj.repr
                                             (Obj.magic
                                                Boot.Intrinsics.T.create_float_packed
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                                   [| (1) |])
                                                v_t'5280)) }))
                           else
                             Obj.magic
                               (if
                                  Obj.magic
                                    (Obj.magic
                                       v_eqString
                                       v_eqSeq
                                       v_name'2501
                                       (Obj.magic
                                          Boot.Intrinsics.Mseq.Helpers.of_array
                                          [| (83);
                                            (111);
                                            (102);
                                            (116);
                                            (77);
                                            (97);
                                            (120) |]))
                                then
                                  if
                                    Obj.magic
                                      (Obj.magic
                                         ((<>) : int -> int -> bool)
                                         (Obj.magic
                                            Boot.Intrinsics.Mseq.length
                                            v_weights'2499)
                                         0)
                                  then
                                    Obj.magic
                                      Boot.Intrinsics.MSys.error
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (101);
                                           (120);
                                           (112);
                                           (101);
                                           (99);
                                           (116);
                                           (101);
                                           (100);
                                           (32);
                                           (101);
                                           (120);
                                           (97);
                                           (99);
                                           (116);
                                           (108);
                                           (121);
                                           (32);
                                           (48);
                                           (32);
                                           (119);
                                           (101);
                                           (105);
                                           (103);
                                           (104);
                                           (116);
                                           (115) |])
                                  else
                                    Obj.magic
                                      (if
                                         Obj.magic
                                           (Obj.magic
                                              ((<>) : int -> int -> bool)
                                              v_sizeIndim'2502
                                              v_sizeOutdim'2503)
                                       then
                                         Obj.magic
                                           Boot.Intrinsics.MSys.error
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (115);
                                                (105);
                                                (122);
                                                (101);
                                                (32);
                                                (109);
                                                (105);
                                                (115);
                                                (109);
                                                (97);
                                                (116);
                                                (99);
                                                (104);
                                                (32);
                                                (111);
                                                (110);
                                                (32);
                                                (105);
                                                (110);
                                                (100);
                                                (105);
                                                (109);
                                                (32);
                                                (97);
                                                (110);
                                                (100);
                                                (32);
                                                (111);
                                                (117);
                                                (116);
                                                (100);
                                                (105);
                                                (109);
                                                (32);
                                                (115);
                                                (105);
                                                (122);
                                                (101) |])
                                       else
                                         Obj.magic
                                           (CRec'6351 { lb =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.Helpers.of_array
                                                        [| (1) |])
                                                     v_t'5281));
                                              lw =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.Helpers.of_array
                                                        [| (1) |])
                                                     v_t'5282));
                                              lty =
                                                (Obj.repr
                                                  v_nnCompType_SoftMax);
                                              lb_grads =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.Helpers.of_array
                                                        [| (1) |])
                                                     v_t'5283));
                                              lw_grads =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.Helpers.of_array
                                                        [| (1) |])
                                                     v_t'5284));
                                              lin_grads =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2500
                                                        v_indim'2497)
                                                     v_t'5285));
                                              lout_bufs =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2500
                                                        v_outdim'2498)
                                                     v_t'5286));
                                              lsoftmax_bufs =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.Helpers.of_array
                                                        [| (Obj.magic
                                                            v_max_batchsize'2500) |])
                                                     v_t'5287)) }))
                                else
                                  Obj.magic
                                    (Obj.magic
                                       Boot.Intrinsics.MSys.error
                                       (Obj.magic
                                          v_join
                                          (Obj.magic
                                             Boot.Intrinsics.Mseq.Helpers.of_array
                                             [| (Obj.magic
                                                 (Obj.magic
                                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                                    [| (73);
                                                      (110);
                                                      (118);
                                                      (97);
                                                      (108);
                                                      (105);
                                                      (100);
                                                      (32);
                                                      (99);
                                                      (111);
                                                      (109);
                                                      (112);
                                                      (111);
                                                      (110);
                                                      (101);
                                                      (110);
                                                      (116);
                                                      (32);
                                                      (110);
                                                      (97);
                                                      (109);
                                                      (101);
                                                      (32);
                                                      (34) |]));
                                               (Obj.magic
                                                 v_name'2501);
                                               (Obj.magic
                                                 (Obj.magic
                                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                                    [| (34) |])) |])))));;
let v_nnComponentOutBufs =
  fun v_comp'2526 ->
    let
      CRec'6351 ({lout_bufs = v_X'2527})
    =
      Obj.magic
        v_comp'2526
    in
    Obj.magic
      v_X'2527;;
let v_nnComponentApplyExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2529 ->
          fun v_inputs'2530 ->
            fun v_comp'2531 ->
              let v_ty'2533 =
                let
                  CRec'6351 ({lty = v_X'2532})
                =
                  Obj.magic
                    v_comp'2531
                in
                Obj.magic
                  v_X'2532
              in
              if
                Obj.magic
                  (Obj.magic
                     Int.equal
                     v_ty'2533
                     v_nnCompType_FullyConnected)
              then
                let v_'2537 =
                  Obj.magic
                    v_tensorOpExn__z___Wx_B
                    v_s_max'2529
                    (let
                       CRec'6351 ({lw = v_X'2534})
                     =
                       Obj.magic
                         v_comp'2531
                     in
                     Obj.magic
                       v_X'2534)
                    v_inputs'2530
                    (let
                       CRec'6351 ({lb = v_X'2535})
                     =
                       Obj.magic
                         v_comp'2531
                     in
                     Obj.magic
                       v_X'2535)
                    (let
                       CRec'6351 ({lout_bufs = v_X'2536})
                     =
                       Obj.magic
                         v_comp'2531
                     in
                     Obj.magic
                       v_X'2536)
                in
                let
                  CRec'6351 ({lout_bufs = v_X'2538})
                =
                  Obj.magic
                    v_comp'2531
                in
                Obj.magic
                  v_X'2538
              else
                Obj.magic
                  (if
                     Obj.magic
                       (Obj.magic
                          Int.equal
                          v_ty'2533
                          v_nnCompType_ReLU)
                   then
                     let v_'2540 =
                       Obj.magic
                         v_tensorOpExn__z___ReLU_x_
                         v_s_max'2529
                         v_inputs'2530
                         (let
                            CRec'6351 ({lout_bufs = v_X'2539})
                          =
                            Obj.magic
                              v_comp'2531
                          in
                          Obj.magic
                            v_X'2539)
                     in
                     let
                       CRec'6351 ({lout_bufs = v_X'2541})
                     =
                       Obj.magic
                         v_comp'2531
                     in
                     Obj.magic
                       v_X'2541
                   else
                     Obj.magic
                       (if
                          Obj.magic
                            (Obj.magic
                               Int.equal
                               v_ty'2533
                               v_nnCompType_SoftMax)
                        then
                          let v_'2544 =
                            Obj.magic
                              v_tensorOpExn__z___SoftMax_x_
                              v_s_max'2529
                              v_inputs'2530
                              (let
                                 CRec'6351 ({lsoftmax_bufs = v_X'2542})
                               =
                                 Obj.magic
                                   v_comp'2531
                               in
                               Obj.magic
                                 v_X'2542)
                              (let
                                 CRec'6351 ({lout_bufs = v_X'2543})
                               =
                                 Obj.magic
                                   v_comp'2531
                               in
                               Obj.magic
                                 v_X'2543)
                          in
                          let
                            CRec'6351 ({lout_bufs = v_X'2545})
                          =
                            Obj.magic
                              v_comp'2531
                          in
                          Obj.magic
                            v_X'2545
                        else
                          Obj.magic
                            (let
                               CRec'6351 ({lout_bufs = v_X'2546})
                             =
                               Obj.magic
                                 v_comp'2531
                             in
                             Obj.magic
                               v_X'2546)));;
let v_nnComponentBackpropExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2548 ->
          fun v_comp_inputs'2549 ->
            fun v_output_grads'2550 ->
              fun v_comp'2551 ->
                let v_ty'2553 =
                  let
                    CRec'6351 ({lty = v_X'2552})
                  =
                    Obj.magic
                      v_comp'2551
                  in
                  Obj.magic
                    v_X'2552
                in
                if
                  Obj.magic
                    (Obj.magic
                       Int.equal
                       v_ty'2553
                       v_nnCompType_FullyConnected)
                then
                  let v_'2555 =
                    Obj.magic
                      v_tensorOpExn__z___x
                      v_s_max'2548
                      v_output_grads'2550
                      (let
                         CRec'6351 ({lb_grads = v_X'2554})
                       =
                         Obj.magic
                           v_comp'2551
                       in
                       Obj.magic
                         v_X'2554)
                  in
                  let v_'2557 =
                    Obj.magic
                      v_tensorOpExn__z___x___y_T
                      v_s_max'2548
                      v_output_grads'2550
                      v_comp_inputs'2549
                      (let
                         CRec'6351 ({lw_grads = v_X'2556})
                       =
                         Obj.magic
                           v_comp'2551
                       in
                       Obj.magic
                         v_X'2556)
                  in
                  let v_'2560 =
                    Obj.magic
                      v_tensorOpExn__z____x_T___W__T
                      v_s_max'2548
                      v_output_grads'2550
                      (let
                         CRec'6351 ({lw = v_X'2558})
                       =
                         Obj.magic
                           v_comp'2551
                       in
                       Obj.magic
                         v_X'2558)
                      (let
                         CRec'6351 ({lin_grads = v_X'2559})
                       =
                         Obj.magic
                           v_comp'2551
                       in
                       Obj.magic
                         v_X'2559)
                  in
                  let
                    CRec'6351 ({lin_grads = v_X'2561})
                  =
                    Obj.magic
                      v_comp'2551
                  in
                  Obj.magic
                    v_X'2561
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            Int.equal
                            v_ty'2553
                            v_nnCompType_ReLU)
                     then
                       let v_'2564 =
                         Obj.magic
                           v_tensorOpExn__z___d_dx_l_ReLU_x__
                           v_s_max'2548
                           (let
                              CRec'6351 ({lout_bufs = v_X'2562})
                            =
                              Obj.magic
                                v_comp'2551
                            in
                            Obj.magic
                              v_X'2562)
                           v_output_grads'2550
                           (let
                              CRec'6351 ({lin_grads = v_X'2563})
                            =
                              Obj.magic
                                v_comp'2551
                            in
                            Obj.magic
                              v_X'2563)
                       in
                       let
                         CRec'6351 ({lin_grads = v_X'2565})
                       =
                         Obj.magic
                           v_comp'2551
                       in
                       Obj.magic
                         v_X'2565
                     else
                       Obj.magic
                         (if
                            Obj.magic
                              (Obj.magic
                                 Int.equal
                                 v_ty'2553
                                 v_nnCompType_SoftMax)
                          then
                            let v_'2568 =
                              Obj.magic
                                v_tensorOpExn__z___d_dx_l_SoftMax_x___
                                v_s_max'2548
                                (let
                                   CRec'6351 ({lout_bufs = v_X'2566})
                                 =
                                   Obj.magic
                                     v_comp'2551
                                 in
                                 Obj.magic
                                   v_X'2566)
                                v_output_grads'2550
                                (let
                                   CRec'6351 ({lin_grads = v_X'2567})
                                 =
                                   Obj.magic
                                     v_comp'2551
                                 in
                                 Obj.magic
                                   v_X'2567)
                            in
                            let
                              CRec'6351 ({lin_grads = v_X'2569})
                            =
                              Obj.magic
                                v_comp'2551
                            in
                            Obj.magic
                              v_X'2569
                          else
                            Obj.magic
                              (let
                                 CRec'6351 ({lin_grads = v_X'2570})
                               =
                                 Obj.magic
                                   v_comp'2551
                               in
                               Obj.magic
                                 v_X'2570)));;
let v_nnComponent_TEMP_SetGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2572 ->
      fun v_comp'2573 ->
        let v_ty'2575 =
          let
            CRec'6351 ({lty = v_X'2574})
          =
            Obj.magic
              v_comp'2573
          in
          Obj.magic
            v_X'2574
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2575
               v_nnCompType_FullyConnected)
        then
          let v_'2577 =
            Obj.magic
              v_tensorOpExn__Z___scalar_c_
              v_scalar'2572
              (let
                 CRec'6351 ({lw_grads = v_X'2576})
               =
                 Obj.magic
                   v_comp'2573
               in
               Obj.magic
                 v_X'2576)
          in
          Obj.magic
            v_tensorOpExn__Z___scalar_c_
            v_scalar'2572
            (let
               CRec'6351 ({lb_grads = v_X'2578})
             =
               Obj.magic
                 v_comp'2573
             in
             Obj.magic
               v_X'2578)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_ReduceGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_comp'2580 ->
      let v_ty'2582 =
        let
          CRec'6351 ({lty = v_X'2581})
        =
          Obj.magic
            v_comp'2580
        in
        Obj.magic
          v_X'2581
      in
      if
        Obj.magic
          (Obj.magic
             Int.equal
             v_ty'2582
             v_nnCompType_FullyConnected)
      then
        let v_'2584 =
          Obj.magic
            v_tensorOpExn__Dim1Reduce_z__dst___z_0__op_____
            (let
               CRec'6351 ({lw_grads = v_X'2583})
             =
               Obj.magic
                 v_comp'2580
             in
             Obj.magic
               v_X'2583)
        in
        Obj.magic
          v_tensorOpExn__Dim1Reduce_z__dst___z_0__op_____
          (let
             CRec'6351 ({lb_grads = v_X'2585})
           =
             Obj.magic
               v_comp'2580
           in
           Obj.magic
             v_X'2585)
      else
        Obj.magic
          ();;
let v_nnComponent_TEMP_ScaleGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2587 ->
      fun v_comp'2588 ->
        let v_ty'2590 =
          let
            CRec'6351 ({lty = v_X'2589})
          =
            Obj.magic
              v_comp'2588
          in
          Obj.magic
            v_X'2589
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2590
               v_nnCompType_FullyConnected)
        then
          let v_'2592 =
            Obj.magic
              v_tensorOpExn__z____scalar_c_
              1
              v_scalar'2587
              (let
                 CRec'6351 ({lw_grads = v_X'2591})
               =
                 Obj.magic
                   v_comp'2588
               in
               Obj.magic
                 v_X'2591)
          in
          Obj.magic
            v_tensorOpExn__z____scalar_c_
            1
            v_scalar'2587
            (let
               CRec'6351 ({lb_grads = v_X'2593})
             =
               Obj.magic
                 v_comp'2588
             in
             Obj.magic
               v_X'2593)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_ApplyGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2595 ->
      fun v_comp'2596 ->
        let v_ty'2598 =
          let
            CRec'6351 ({lty = v_X'2597})
          =
            Obj.magic
              v_comp'2596
          in
          Obj.magic
            v_X'2597
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2598
               v_nnCompType_FullyConnected)
        then
          let v_'2601 =
            Obj.magic
              v_tensorOpExn__Z____x___scalar_c_
              0
              (let
                 CRec'6351 ({lw_grads = v_X'2599})
               =
                 Obj.magic
                   v_comp'2596
               in
               Obj.magic
                 v_X'2599)
              v_scalar'2595
              (let
                 CRec'6351 ({lw = v_X'2600})
               =
                 Obj.magic
                   v_comp'2596
               in
               Obj.magic
                 v_X'2600)
          in
          Obj.magic
            v_tensorOpExn__Z____x___scalar_c_
            0
            (let
               CRec'6351 ({lb_grads = v_X'2602})
             =
               Obj.magic
                 v_comp'2596
             in
             Obj.magic
               v_X'2602)
            v_scalar'2595
            (let
               CRec'6351 ({lb = v_X'2603})
             =
               Obj.magic
                 v_comp'2596
             in
             Obj.magic
               v_X'2603)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_L2Regularize =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2605 ->
      fun v_comp'2606 ->
        let v_ty'2608 =
          let
            CRec'6351 ({lty = v_X'2607})
          =
            Obj.magic
              v_comp'2606
          in
          Obj.magic
            v_X'2607
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2608
               v_nnCompType_FullyConnected)
        then
          let v_'2611 =
            Obj.magic
              v_tensorOpExn__z____X___scalar_c_
              0
              (let
                 CRec'6351 ({lw = v_X'2609})
               =
                 Obj.magic
                   v_comp'2606
               in
               Obj.magic
                 v_X'2609)
              v_scalar'2605
              (let
                 CRec'6351 ({lw_grads = v_X'2610})
               =
                 Obj.magic
                   v_comp'2606
               in
               Obj.magic
                 v_X'2610)
          in
          Obj.magic
            v_tensorOpExn__z____X___scalar_c_
            0
            (let
               CRec'6351 ({lb = v_X'2612})
             =
               Obj.magic
                 v_comp'2606
             in
             Obj.magic
               v_X'2612)
            v_scalar'2605
            (let
               CRec'6351 ({lb_grads = v_X'2613})
             =
               Obj.magic
                 v_comp'2606
             in
             Obj.magic
               v_X'2613)
        else
          Obj.magic
            ();;
let v_nnComponentZeroGrad =
  fun v_nnCompType_FullyConnected ->
    fun v_comp'2615 ->
      Obj.magic
        v_nnComponent_TEMP_SetGradients
        v_nnCompType_FullyConnected
        0.
        v_comp'2615;;
let v_t'5288 =
  fun v_mu'2620 ->
    fun v_sigma'2621 ->
      fun v_'2622 ->
        Obj.magic
          v_gaussianSample
          v_mu'2620
          v_sigma'2621;;
let v_t'5289 =
  fun v_mu'2620 ->
    fun v_sigma'2621 ->
      fun v_'2624 ->
        Obj.magic
          v_gaussianSample
          v_mu'2620
          v_sigma'2621;;
let v_nnFullyConnected =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_max_batchsize'2617 ->
              fun v_indim'2618 ->
                fun v_outdim'2619 ->
                  let v_mu'2620 =
                    0.
                  in
                  let v_sigma'2621 =
                    0.001
                  in
                  let v_w'2623 =
                    Obj.magic
                      Boot.Intrinsics.T.create_float_packed
                      (Obj.magic
                         Boot.Intrinsics.Mseq.Helpers.of_array
                         [| (Obj.magic
                             v_indim'2618);
                           (Obj.magic
                             v_outdim'2619) |])
                      (Obj.magic
                         v_t'5288
                         v_mu'2620
                         v_sigma'2621)
                  in
                  let v_b'2625 =
                    Obj.magic
                      Boot.Intrinsics.T.create_float_packed
                      (Obj.magic
                         Boot.Intrinsics.Mseq.Helpers.of_array
                         [| (Obj.magic
                             v_outdim'2619) |])
                      (Obj.magic
                         v_t'5289
                         v_mu'2620
                         v_sigma'2621)
                  in
                  Obj.magic
                    v_nnComponentMakeExn
                    v_eqSeq
                    v_join
                    v_nnCompType_FullyConnected
                    v_nnCompType_ReLU
                    v_nnCompType_SoftMax
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_indim'2618) |])
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_outdim'2619) |])
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_w'2623);
                         (Obj.magic
                           v_b'2625) |])
                    v_max_batchsize'2617
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (70);
                         (117);
                         (108);
                         (108);
                         (121);
                         (67);
                         (111);
                         (110);
                         (110);
                         (101);
                         (99);
                         (116);
                         (101);
                         (100) |]);;
let v_nnReLU =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_max_batchsize'2627 ->
              fun v_dim'2628 ->
                Obj.magic
                  v_nnComponentMakeExn
                  v_eqSeq
                  v_join
                  v_nnCompType_FullyConnected
                  v_nnCompType_ReLU
                  v_nnCompType_SoftMax
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (Obj.magic
                         v_dim'2628) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (Obj.magic
                         v_dim'2628) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [|  |])
                  v_max_batchsize'2627
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (82);
                       (101);
                       (76);
                       (85) |]);;
let v_nnLossfnType_CrossEntropyLoss =
  0;;
let v_nnLossfnType_SoftMaxCrossEntropyLoss =
  1;;
let v_t'5290 =
  fun v_'2636 ->
    0.;;
let v_t'5291 =
  fun v_'2637 ->
    0.;;
let v_t'5292 =
  fun v_'2638 ->
    0.;;
let v_t'5293 =
  fun v_'2639 ->
    0.;;
let v_t'5294 =
  fun v_'2640 ->
    0.;;
let v_t'5295 =
  fun v_'2641 ->
    0.;;
let v_nnLossFunctionMakeExn =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnLossfnType_CrossEntropyLoss ->
        fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
          fun v_indim'2633 ->
            fun v_max_batchsize'2634 ->
              fun v_name'2635 ->
                if
                  Obj.magic
                    (Obj.magic
                       v_eqString
                       v_eqSeq
                       v_name'2635
                       (Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.of_array
                          [| (67);
                            (114);
                            (111);
                            (115);
                            (115);
                            (69);
                            (110);
                            (116);
                            (114);
                            (111);
                            (112);
                            (121);
                            (76);
                            (111);
                            (115);
                            (115) |]))
                then
                  CRec'6352 { lty =
                      (Obj.repr
                        v_nnLossfnType_CrossEntropyLoss);
                    lin_grads =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.cons
                              v_max_batchsize'2634
                              v_indim'2633)
                           v_t'5290));
                    lout_bufs =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.Helpers.of_array
                              [| (Obj.magic
                                  v_max_batchsize'2634) |])
                           v_t'5291));
                    lsoftmax_bufs =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.Helpers.of_array
                              [| (1) |])
                           v_t'5292)) }
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            v_eqString
                            v_eqSeq
                            v_name'2635
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.of_array
                               [| (83);
                                 (111);
                                 (102);
                                 (116);
                                 (77);
                                 (97);
                                 (120);
                                 (67);
                                 (114);
                                 (111);
                                 (115);
                                 (115);
                                 (69);
                                 (110);
                                 (116);
                                 (114);
                                 (111);
                                 (112);
                                 (121);
                                 (76);
                                 (111);
                                 (115);
                                 (115) |]))
                     then
                       CRec'6352 { lty =
                           (Obj.repr
                             v_nnLossfnType_SoftMaxCrossEntropyLoss);
                         lin_grads =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.cons
                                   v_max_batchsize'2634
                                   v_indim'2633)
                                v_t'5293));
                         lout_bufs =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (Obj.magic
                                       v_max_batchsize'2634) |])
                                v_t'5294));
                         lsoftmax_bufs =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (Obj.magic
                                       v_max_batchsize'2634) |])
                                v_t'5295)) }
                     else
                       Obj.magic
                         (Obj.magic
                            Boot.Intrinsics.MSys.error
                            (Obj.magic
                               v_join
                               (Obj.magic
                                  Boot.Intrinsics.Mseq.Helpers.of_array
                                  [| (Obj.magic
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (73);
                                           (110);
                                           (118);
                                           (97);
                                           (108);
                                           (105);
                                           (100);
                                           (32);
                                           (108);
                                           (111);
                                           (115);
                                           (115);
                                           (32);
                                           (102);
                                           (117);
                                           (110);
                                           (99);
                                           (116);
                                           (105);
                                           (111);
                                           (110);
                                           (32);
                                           (110);
                                           (97);
                                           (109);
                                           (101);
                                           (32);
                                           (34) |]));
                                    (Obj.magic
                                      v_name'2635);
                                    (Obj.magic
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (34) |])) |]))));;
let v_nnLossFunctionApplyExn =
  fun v_nnLossfnType_CrossEntropyLoss ->
    fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
      fun v_s_max'2643 ->
        fun v_inputs'2644 ->
          fun v_lossfn'2645 ->
            let v_ty'2647 =
              let
                CRec'6352 ({lty = v_X'2646})
              =
                Obj.magic
                  v_lossfn'2645
              in
              Obj.magic
                v_X'2646
            in
            if
              Obj.magic
                (Obj.magic
                   Int.equal
                   v_ty'2647
                   v_nnLossfnType_CrossEntropyLoss)
            then
              v_inputs'2644
            else
              Obj.magic
                (if
                   Obj.magic
                     (Obj.magic
                        Int.equal
                        v_ty'2647
                        v_nnLossfnType_SoftMaxCrossEntropyLoss)
                 then
                   let v_'2650 =
                     Obj.magic
                       v_tensorOpExn__z___SoftMax_x_
                       v_s_max'2643
                       v_inputs'2644
                       (let
                          CRec'6352 ({lsoftmax_bufs = v_X'2648})
                        =
                          Obj.magic
                            v_lossfn'2645
                        in
                        Obj.magic
                          v_X'2648)
                       (let
                          CRec'6352 ({lin_grads = v_X'2649})
                        =
                          Obj.magic
                            v_lossfn'2645
                        in
                        Obj.magic
                          v_X'2649)
                   in
                   let
                     CRec'6352 ({lin_grads = v_X'2651})
                   =
                     Obj.magic
                       v_lossfn'2645
                   in
                   Obj.magic
                     v_X'2651
                 else
                   Obj.magic
                     v_inputs'2644);;
let v_nnLossFunctionBackpropExn =
  fun v_nnLossfnType_CrossEntropyLoss ->
    fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
      fun v_s_max'2653 ->
        fun v_inputs'2654 ->
          fun v_expecteds'2655 ->
            fun v_lossfn'2656 ->
              let v_ty'2658 =
                let
                  CRec'6352 ({lty = v_X'2657})
                =
                  Obj.magic
                    v_lossfn'2656
                in
                Obj.magic
                  v_X'2657
              in
              if
                Obj.magic
                  (Obj.magic
                     Int.equal
                     v_ty'2658
                     v_nnLossfnType_CrossEntropyLoss)
              then
                let v_'2660 =
                  Obj.magic
                    v_tensorOpExn__z___1_Hot_y____scalar__1__x_T___1_Hot_y___
                    v_s_max'2653
                    v_expecteds'2655
                    v_inputs'2654
                    (let
                       CRec'6352 ({lin_grads = v_X'2659})
                     =
                       Obj.magic
                         v_lossfn'2656
                     in
                     Obj.magic
                       v_X'2659)
                in
                let
                  CRec'6352 ({lin_grads = v_X'2661})
                =
                  Obj.magic
                    v_lossfn'2656
                in
                Obj.magic
                  v_X'2661
              else
                Obj.magic
                  (if
                     Obj.magic
                       (Obj.magic
                          Int.equal
                          v_ty'2658
                          v_nnLossfnType_SoftMaxCrossEntropyLoss)
                   then
                     let v_'2663 =
                       Obj.magic
                         v_tensorOpExp__z____1_Hot_y____scalar_c_
                         v_s_max'2653
                         v_expecteds'2655
                         (Obj.magic
                            Float.neg
                            1.)
                         (let
                            CRec'6352 ({lin_grads = v_X'2662})
                          =
                            Obj.magic
                              v_lossfn'2656
                          in
                          Obj.magic
                            v_X'2662)
                     in
                     let
                       CRec'6352 ({lin_grads = v_X'2664})
                     =
                       Obj.magic
                         v_lossfn'2656
                     in
                     Obj.magic
                       v_X'2664
                   else
                     Obj.magic
                       (let
                          CRec'6352 ({lin_grads = v_X'2665})
                        =
                          Obj.magic
                            v_lossfn'2656
                        in
                        Obj.magic
                          v_X'2665));;
let v_nnSoftMaxCrossEntropyLoss =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnLossfnType_CrossEntropyLoss ->
        fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
          fun v_max_batchsize'2667 ->
            fun v_dim'2668 ->
              Obj.magic
                v_nnLossFunctionMakeExn
                v_eqSeq
                v_join
                v_nnLossfnType_CrossEntropyLoss
                v_nnLossfnType_SoftMaxCrossEntropyLoss
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_dim'2668) |])
                v_max_batchsize'2667
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (83);
                     (111);
                     (102);
                     (116);
                     (77);
                     (97);
                     (120);
                     (67);
                     (114);
                     (111);
                     (115);
                     (115);
                     (69);
                     (110);
                     (116);
                     (114);
                     (111);
                     (112);
                     (121);
                     (76);
                     (111);
                     (115);
                     (115) |]);;
let v_nnMake =
  fun v_components'2673 ->
    fun v_lossfn'2674 ->
      CRec'6353 { llossfn =
          (Obj.repr
            v_lossfn'2674);
        lcomponents =
          (Obj.repr
            v_components'2673) };;
let v_t'5296 =
  fun v_nnCompType_FullyConnected ->
    fun v_x'2677 ->
      fun v_comp'2678 ->
        let v_'2679 =
          Obj.magic
            v_nnComponentZeroGrad
            v_nnCompType_FullyConnected
            v_comp'2678
        in
        0;;
let v_nnZeroGrad =
  fun v_nnCompType_FullyConnected ->
    fun v_network'2676 ->
      let v_'2681 =
        Obj.magic
          Boot.Intrinsics.Mseq.Helpers.fold_left
          (Obj.magic
             v_t'5296
             v_nnCompType_FullyConnected)
          0
          (let
             CRec'6353 ({lcomponents = v_X'2680})
           =
             Obj.magic
               v_network'2676
           in
           Obj.magic
             v_X'2680)
      in
      ();;
let v_t'5297 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2685 ->
          fun v_prevouts'2686 ->
            fun v_comp'2687 ->
              Obj.magic
                v_nnComponentApplyExn
                v_nnCompType_FullyConnected
                v_nnCompType_ReLU
                v_nnCompType_SoftMax
                v_s_max'2685
                v_prevouts'2686
                v_comp'2687;;
let v_nnEvalExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_network'2683 ->
              fun v_inputs'2684 ->
                let v_s_max'2685 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.get
                    (Obj.magic
                       Boot.Intrinsics.T.shape
                       v_inputs'2684)
                    0
                in
                let v_comp_out'2689 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.Helpers.fold_left
                    (Obj.magic
                       v_t'5297
                       v_nnCompType_FullyConnected
                       v_nnCompType_ReLU
                       v_nnCompType_SoftMax
                       v_s_max'2685)
                    v_inputs'2684
                    (let
                       CRec'6353 ({lcomponents = v_X'2688})
                     =
                       Obj.magic
                         v_network'2683
                     in
                     Obj.magic
                       v_X'2688)
                in
                Obj.magic
                  v_nnLossFunctionApplyExn
                  v_nnLossfnType_CrossEntropyLoss
                  v_nnLossfnType_SoftMaxCrossEntropyLoss
                  v_s_max'2685
                  v_comp_out'2689
                  (let
                     CRec'6353 ({llossfn = v_X'2690})
                   =
                     Obj.magic
                       v_network'2683
                   in
                   Obj.magic
                     v_X'2690);;
let v_t'5298 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_network'2692 ->
          fun v_s_max'2695 ->
            fun v_n_components'2702 ->
              fun v_out_grads'2712 ->
                fun v_i'2713 ->
                  let v_idx'2714 =
                    Obj.magic
                      Int.sub
                      v_n_components'2702
                      (Obj.magic
                         Int.add
                         v_i'2713
                         2)
                  in
                  let v_previdx'2715 =
                    Obj.magic
                      Int.sub
                      v_idx'2714
                      1
                  in
                  let v_comp'2717 =
                    Obj.magic
                      Boot.Intrinsics.Mseq.get
                      (let
                         CRec'6353 ({lcomponents = v_X'2716})
                       =
                         Obj.magic
                           v_network'2692
                       in
                       Obj.magic
                         v_X'2716)
                      v_idx'2714
                  in
                  let v_in_bufs'2719 =
                    Obj.magic
                      v_nnComponentOutBufs
                      (Obj.magic
                         Boot.Intrinsics.Mseq.get
                         (let
                            CRec'6353 ({lcomponents = v_X'2718})
                          =
                            Obj.magic
                              v_network'2692
                          in
                          Obj.magic
                            v_X'2718)
                         v_previdx'2715)
                  in
                  Obj.magic
                    v_nnComponentBackpropExn
                    v_nnCompType_FullyConnected
                    v_nnCompType_ReLU
                    v_nnCompType_SoftMax
                    v_s_max'2695
                    v_in_bufs'2719
                    v_out_grads'2712
                    v_comp'2717;;
let v_nnBackpropExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_network'2692 ->
              fun v_batch'2693 ->
                let v_s_max'2695 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.get
                    (Obj.magic
                       Boot.Intrinsics.T.shape
                       (let
                          CRec'6354 ({linputs = v_X'2694})
                        =
                          Obj.magic
                            v_batch'2693
                        in
                        Obj.magic
                          v_X'2694))
                    0
                in
                let v_outputs'2697 =
                  Obj.magic
                    v_nnEvalExn
                    v_nnCompType_FullyConnected
                    v_nnCompType_ReLU
                    v_nnCompType_SoftMax
                    v_nnLossfnType_CrossEntropyLoss
                    v_nnLossfnType_SoftMaxCrossEntropyLoss
                    v_network'2692
                    (let
                       CRec'6354 ({linputs = v_X'2696})
                     =
                       Obj.magic
                         v_batch'2693
                     in
                     Obj.magic
                       v_X'2696)
                in
                let v_lossgrads'2700 =
                  Obj.magic
                    v_nnLossFunctionBackpropExn
                    v_nnLossfnType_CrossEntropyLoss
                    v_nnLossfnType_SoftMaxCrossEntropyLoss
                    v_s_max'2695
                    v_outputs'2697
                    (let
                       CRec'6354 ({lcorrect_linear_outidxs = v_X'2698})
                     =
                       Obj.magic
                         v_batch'2693
                     in
                     Obj.magic
                       v_X'2698)
                    (let
                       CRec'6353 ({llossfn = v_X'2699})
                     =
                       Obj.magic
                         v_network'2692
                     in
                     Obj.magic
                       v_X'2699)
                in
                let v_n_components'2702 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.length
                    (let
                       CRec'6353 ({lcomponents = v_X'2701})
                     =
                       Obj.magic
                         v_network'2692
                     in
                     Obj.magic
                       v_X'2701)
                in
                if
                  Obj.magic
                    (Obj.magic
                       Int.equal
                       v_n_components'2702
                       0)
                then
                  ()
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            Int.equal
                            v_n_components'2702
                            1)
                     then
                       let v_lastcomp'2704 =
                         Obj.magic
                           Boot.Intrinsics.Mseq.get
                           (let
                              CRec'6353 ({lcomponents = v_X'2703})
                            =
                              Obj.magic
                                v_network'2692
                            in
                            Obj.magic
                              v_X'2703)
                           0
                       in
                       let v_'2706 =
                         Obj.magic
                           v_nnComponentBackpropExn
                           v_nnCompType_FullyConnected
                           v_nnCompType_ReLU
                           v_nnCompType_SoftMax
                           v_s_max'2695
                           (let
                              CRec'6354 ({linputs = v_X'2705})
                            =
                              Obj.magic
                                v_batch'2693
                            in
                            Obj.magic
                              v_X'2705)
                           v_lossgrads'2700
                           v_lastcomp'2704
                       in
                       ()
                     else
                       Obj.magic
                         (let v_lastcomp'2708 =
                            Obj.magic
                              Boot.Intrinsics.Mseq.get
                              (let
                                 CRec'6353 ({lcomponents = v_X'2707})
                               =
                                 Obj.magic
                                   v_network'2692
                               in
                               Obj.magic
                                 v_X'2707)
                              (Obj.magic
                                 Int.sub
                                 v_n_components'2702
                                 1)
                          in
                          let v_lastcomp_in_bufs'2710 =
                            Obj.magic
                              v_nnComponentOutBufs
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.get
                                 (let
                                    CRec'6353 ({lcomponents = v_X'2709})
                                  =
                                    Obj.magic
                                      v_network'2692
                                  in
                                  Obj.magic
                                    v_X'2709)
                                 (Obj.magic
                                    Int.sub
                                    v_n_components'2702
                                    2))
                          in
                          let v_lastcomp_in_grads'2711 =
                            Obj.magic
                              v_nnComponentBackpropExn
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_s_max'2695
                              v_lastcomp_in_bufs'2710
                              v_lossgrads'2700
                              v_lastcomp'2708
                          in
                          let v_firstcomp_out_grads'2720 =
                            let rec v_loop'6323 =
                                fun v_acc'6324 ->
                                  fun v_i'6325 ->
                                    if
                                      Obj.magic
                                        (Obj.magic
                                           ((<) : int -> int -> bool)
                                           v_i'6325
                                           (Obj.magic
                                              Int.sub
                                              v_n_components'2702
                                              2))
                                    then
                                      let v_t'6326 =
                                        Obj.magic
                                          v_t'5298
                                          v_nnCompType_FullyConnected
                                          v_nnCompType_ReLU
                                          v_nnCompType_SoftMax
                                          v_network'2692
                                          v_s_max'2695
                                          v_n_components'2702
                                          v_acc'6324
                                          v_i'6325
                                      in
                                      Obj.magic
                                        v_loop'6323
                                        v_t'6326
                                        (Obj.magic
                                           Int.add
                                           v_i'6325
                                           1)
                                    else
                                      Obj.magic
                                        v_acc'6324
                            in Obj.magic
                              v_loop'6323
                              v_lastcomp_in_grads'2711
                              0
                          in
                          let v_firstcomp'2722 =
                            Obj.magic
                              Boot.Intrinsics.Mseq.get
                              (let
                                 CRec'6353 ({lcomponents = v_X'2721})
                               =
                                 Obj.magic
                                   v_network'2692
                               in
                               Obj.magic
                                 v_X'2721)
                              0
                          in
                          let v_firstcomp_in_bufs'2724 =
                            let
                              CRec'6354 ({linputs = v_X'2723})
                            =
                              Obj.magic
                                v_batch'2693
                            in
                            Obj.magic
                              v_X'2723
                          in
                          let v_'2725 =
                            Obj.magic
                              v_nnComponentBackpropExn
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_s_max'2695
                              v_firstcomp_in_bufs'2724
                              v_firstcomp_out_grads'2720
                              v_firstcomp'2722
                          in
                          ()));;
let v_t'5299 =
  fun v_nnCompType_FullyConnected ->
    fun v_batchsize_regularizer'2735 ->
      fun v_x'2736 ->
        fun v_comp'2737 ->
          let v_'2738 =
            Obj.magic
              v_nnComponent_TEMP_ReduceGradients
              v_nnCompType_FullyConnected
              v_comp'2737
          in
          let v_'2739 =
            Obj.magic
              v_nnComponent_TEMP_ScaleGradients
              v_nnCompType_FullyConnected
              v_batchsize_regularizer'2735
              v_comp'2737
          in
          0;;
let v_t'5300 =
  fun v_nnCompType_FullyConnected ->
    fun v_lambda'2729 ->
      fun v_x'2742 ->
        fun v_comp'2743 ->
          let v_'2744 =
            Obj.magic
              v_nnComponent_TEMP_L2Regularize
              v_nnCompType_FullyConnected
              (Obj.magic
                 Float.mul
                 2.
                 v_lambda'2729)
              v_comp'2743
          in
          0;;
let v_t'5301 =
  fun v_nnCompType_FullyConnected ->
    fun v_alpha'2728 ->
      fun v_x'2748 ->
        fun v_comp'2749 ->
          let v_'2750 =
            Obj.magic
              v_nnComponent_TEMP_ApplyGradients
              v_nnCompType_FullyConnected
              (Obj.magic
                 Float.neg
                 v_alpha'2728)
              v_comp'2749
          in
          0;;
let v_nnGradientDescentExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_network'2727 ->
              fun v_alpha'2728 ->
                fun v_lambda'2729 ->
                  fun v_batch'2730 ->
                    let v_'2731 =
                      Obj.magic
                        v_nnZeroGrad
                        v_nnCompType_FullyConnected
                        v_network'2727
                    in
                    let v_batchsize'2733 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.get
                        (Obj.magic
                           Boot.Intrinsics.T.shape
                           (let
                              CRec'6354 ({linputs = v_X'2732})
                            =
                              Obj.magic
                                v_batch'2730
                            in
                            Obj.magic
                              v_X'2732))
                        0
                    in
                    let v_'2734 =
                      Obj.magic
                        v_nnBackpropExn
                        v_nnCompType_FullyConnected
                        v_nnCompType_ReLU
                        v_nnCompType_SoftMax
                        v_nnLossfnType_CrossEntropyLoss
                        v_nnLossfnType_SoftMaxCrossEntropyLoss
                        v_network'2727
                        v_batch'2730
                    in
                    let v_batchsize_regularizer'2735 =
                      Obj.magic
                        Float.div
                        1.
                        (Obj.magic
                           float_of_int
                           v_batchsize'2733)
                    in
                    let v_'2741 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.Helpers.fold_left
                        (Obj.magic
                           v_t'5299
                           v_nnCompType_FullyConnected
                           v_batchsize_regularizer'2735)
                        0
                        (let
                           CRec'6353 ({lcomponents = v_X'2740})
                         =
                           Obj.magic
                             v_network'2727
                         in
                         Obj.magic
                           v_X'2740)
                    in
                    let v_'2747 =
                      if
                        Obj.magic
                          (Obj.magic
                             Float.equal
                             v_lambda'2729
                             0.)
                      then
                        ()
                      else
                        Obj.magic
                          (let v_'2746 =
                             Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.fold_left
                               (Obj.magic
                                  v_t'5300
                                  v_nnCompType_FullyConnected
                                  v_lambda'2729)
                               0
                               (let
                                  CRec'6353 ({lcomponents = v_X'2745})
                                =
                                  Obj.magic
                                    v_network'2727
                                in
                                Obj.magic
                                  v_X'2745)
                           in
                           ())
                    in
                    let v_'2752 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.Helpers.fold_left
                        (Obj.magic
                           v_t'5301
                           v_nnCompType_FullyConnected
                           v_alpha'2728)
                        0
                        (let
                           CRec'6353 ({lcomponents = v_X'2751})
                         =
                           Obj.magic
                             v_network'2727
                         in
                         Obj.magic
                           v_X'2751)
                    in
                    ();;
let v_t'5302 =
  fun v_acc'2755 ->
    fun v_e'2756 ->
      Obj.magic
        Int.mul
        v_acc'2755
        v_e'2756;;
let v_tensorSize =
  fun v_t'2754 ->
    Obj.magic
      Boot.Intrinsics.Mseq.Helpers.fold_left
      v_t'5302
      1
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2754);;
let v_t'5303 =
  fun v_t'2762 ->
    fun v_s_offset'2765 ->
      fun v_cand_idx'2766 ->
        fun v_idx'2767 ->
          if
            Obj.magic
              (Obj.magic
                 ((>) : float -> float -> bool)
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_t'2762
                    (Obj.magic
                       Int.add
                       v_idx'2767
                       v_s_offset'2765))
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_t'2762
                    (Obj.magic
                       Int.add
                       v_cand_idx'2766
                       v_s_offset'2765)))
          then
            v_idx'2767
          else
            Obj.magic
              v_cand_idx'2766;;
let v_tensorLinearMaxIdx =
  fun v_s_idx'2761 ->
    fun v_t'2762 ->
      let v_s'2763 =
        Obj.magic
          Boot.Intrinsics.Mseq.get
          (Obj.magic
             Boot.Intrinsics.T.shape
             v_t'2762)
          0
      in
      let v_size'2764 =
        Obj.magic
          Int.div
          (Obj.magic
             v_tensorSize
             v_t'2762)
          v_s'2763
      in
      let v_s_offset'2765 =
        Obj.magic
          Int.mul
          v_s_idx'2761
          v_size'2764
      in
      let rec v_loop'6327 =
          fun v_acc'6328 ->
            fun v_i'6329 ->
              if
                Obj.magic
                  (Obj.magic
                     ((<) : int -> int -> bool)
                     v_i'6329
                     (Obj.magic
                        Int.sub
                        v_size'2764
                        1))
              then
                let v_t'6330 =
                  Obj.magic
                    v_t'5303
                    v_t'2762
                    v_s_offset'2765
                    v_acc'6328
                    v_i'6329
                in
                Obj.magic
                  v_loop'6327
                  v_t'6330
                  (Obj.magic
                     Int.add
                     v_i'6329
                     1)
              else
                Obj.magic
                  v_acc'6328
      in Obj.magic
        v_loop'6327
        (Obj.magic
           Int.sub
           v_size'2764
           1)
        0;;
let v_t'5305 =
  fun v_batch'2775 ->
    fun v_outputs'2779 ->
      fun v_b_acc'2780 ->
        fun v_b_idx'2781 ->
          if
            Obj.magic
              (Obj.magic
                 Int.equal
                 (Obj.magic
                    v_tensorLinearMaxIdx
                    v_b_idx'2781
                    v_outputs'2779)
                 (Obj.magic
                    Boot.Intrinsics.T.get_exn
                    (let
                       CRec'6354 ({lcorrect_linear_outidxs = v_X'2782})
                     =
                       Obj.magic
                         v_batch'2775
                     in
                     Obj.magic
                       v_X'2782)
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_b_idx'2781) |])))
          then
            Obj.magic
              Int.add
              v_b_acc'2780
              1
          else
            Obj.magic
              v_b_acc'2780;;
let v_t'5304 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_printStatus'2758 ->
              fun v_network'2759 ->
                fun v_batches'2760 ->
                  fun v_acc'2769 ->
                    fun v_i'2770 ->
                      let v_'2774 =
                        if
                          Obj.magic
                            v_printStatus'2758
                        then
                          let v_'2771 =
                            Obj.magic
                              Boot.Intrinsics.IO.print
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (13) |])
                          in
                          let v_'2772 =
                            Obj.magic
                              Boot.Intrinsics.IO.print
                              (Obj.magic
                                 Boot.Intrinsics.FloatConversion.float2string
                                 (Obj.magic
                                    float_of_int
                                    (Obj.magic
                                       Int.add
                                       v_i'2770
                                       1)))
                          in
                          let v_'2773 =
                            Obj.magic
                              Boot.Intrinsics.IO.print
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (47) |])
                          in
                          Obj.magic
                            Boot.Intrinsics.IO.print
                            (Obj.magic
                               Boot.Intrinsics.FloatConversion.float2string
                               (Obj.magic
                                  float_of_int
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.length
                                     v_batches'2760)))
                        else
                          Obj.magic
                            ()
                      in
                      let v_batch'2775 =
                        Obj.magic
                          Boot.Intrinsics.Mseq.get
                          v_batches'2760
                          v_i'2770
                      in
                      let v_batchsize'2777 =
                        Obj.magic
                          Boot.Intrinsics.Mseq.get
                          (Obj.magic
                             Boot.Intrinsics.T.shape
                             (let
                                CRec'6354 ({linputs = v_X'2776})
                              =
                                Obj.magic
                                  v_batch'2775
                              in
                              Obj.magic
                                v_X'2776))
                          0
                      in
                      let v_outputs'2779 =
                        Obj.magic
                          v_nnEvalExn
                          v_nnCompType_FullyConnected
                          v_nnCompType_ReLU
                          v_nnCompType_SoftMax
                          v_nnLossfnType_CrossEntropyLoss
                          v_nnLossfnType_SoftMaxCrossEntropyLoss
                          v_network'2759
                          (let
                             CRec'6354 ({linputs = v_X'2778})
                           =
                             Obj.magic
                               v_batch'2775
                           in
                           Obj.magic
                             v_X'2778)
                      in
                      let v_batch_accuracy'2783 =
                        let rec v_loop'6331 =
                            fun v_acc'6332 ->
                              fun v_i'6333 ->
                                if
                                  Obj.magic
                                    (Obj.magic
                                       ((<) : int -> int -> bool)
                                       v_i'6333
                                       v_batchsize'2777)
                                then
                                  let v_t'6334 =
                                    Obj.magic
                                      v_t'5305
                                      v_batch'2775
                                      v_outputs'2779
                                      v_acc'6332
                                      v_i'6333
                                  in
                                  Obj.magic
                                    v_loop'6331
                                    v_t'6334
                                    (Obj.magic
                                       Int.add
                                       v_i'6333
                                       1)
                                else
                                  Obj.magic
                                    v_acc'6332
                        in Obj.magic
                          v_loop'6331
                          0
                          0
                      in
                      Obj.magic
                        Int.add
                        v_acc'2769
                        v_batch_accuracy'2783;;
let v_nnAccuracyDiscrete =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_printStatus'2758 ->
              fun v_network'2759 ->
                fun v_batches'2760 ->
                  let v_correct_guesses'2784 =
                    let rec v_loop'6335 =
                        fun v_acc'6336 ->
                          fun v_i'6337 ->
                            if
                              Obj.magic
                                (Obj.magic
                                   ((<) : int -> int -> bool)
                                   v_i'6337
                                   (Obj.magic
                                      Boot.Intrinsics.Mseq.length
                                      v_batches'2760))
                            then
                              let v_t'6338 =
                                Obj.magic
                                  v_t'5304
                                  v_nnCompType_FullyConnected
                                  v_nnCompType_ReLU
                                  v_nnCompType_SoftMax
                                  v_nnLossfnType_CrossEntropyLoss
                                  v_nnLossfnType_SoftMaxCrossEntropyLoss
                                  v_printStatus'2758
                                  v_network'2759
                                  v_batches'2760
                                  v_acc'6336
                                  v_i'6337
                              in
                              Obj.magic
                                v_loop'6335
                                v_t'6338
                                (Obj.magic
                                   Int.add
                                   v_i'6337
                                   1)
                            else
                              Obj.magic
                                v_acc'6336
                    in Obj.magic
                      v_loop'6335
                      0
                      0
                  in
                  let v_'2785 =
                    if
                      Obj.magic
                        v_printStatus'2758
                    then
                      Obj.magic
                        Boot.Intrinsics.IO.print
                        (Obj.magic
                           Boot.Intrinsics.Mseq.Helpers.of_array
                           [| (10) |])
                    else
                      Obj.magic
                        ()
                  in
                  v_correct_guesses'2784;;
let v_t'5306 =
  fun v_acc'2791 ->
    fun v_batch'2792 ->
      Obj.magic
        Int.add
        v_acc'2791
        (Obj.magic
           Boot.Intrinsics.Mseq.get
           (Obj.magic
              Boot.Intrinsics.T.shape
              (let
                 CRec'6354 ({linputs = v_X'2793})
               =
                 Obj.magic
                   v_batch'2792
               in
               Obj.magic
                 v_X'2793))
           0);;
let v_nnAccuracyProportion =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_printStatus'2787 ->
              fun v_network'2788 ->
                fun v_batches'2789 ->
                  let v_correct_guesses'2790 =
                    Obj.magic
                      v_nnAccuracyDiscrete
                      v_nnCompType_FullyConnected
                      v_nnCompType_ReLU
                      v_nnCompType_SoftMax
                      v_nnLossfnType_CrossEntropyLoss
                      v_nnLossfnType_SoftMaxCrossEntropyLoss
                      v_printStatus'2787
                      v_network'2788
                      v_batches'2789
                  in
                  let v_datalength'2794 =
                    Obj.magic
                      Boot.Intrinsics.Mseq.Helpers.fold_left
                      v_t'5306
                      0
                      v_batches'2789
                  in
                  Obj.magic
                    Float.div
                    (Obj.magic
                       float_of_int
                       v_correct_guesses'2790)
                    (Obj.magic
                       float_of_int
                       v_datalength'2794);;
let v_nnVanillaSGDParameters =
  CRec'6355 { lepochs =
      (Obj.repr
        10);
    lbatchsize =
      (Obj.repr
        32);
    linit_alpha =
      (Obj.repr
        0.9);
    ldecay_alpha =
      (Obj.repr
        0.1);
    linit_lambda =
      (Obj.repr
        0.);
    lprintStatus =
      (Obj.repr
        true);
    ldecay_lambda =
      (Obj.repr
        0.1);
    levaluateBetweenEpochs =
      (Obj.repr
        false);
    levaluateBeforeFirstEpoch =
      (Obj.repr
        false) };;
let rec v_t'5307 =
    fun v_dataset'2825 ->
      fun v_start_idx'2832 ->
        fun v_idx'2840 ->
          let v_b_idx'2841 =
            Obj.magic
              Int.add
              v_start_idx'2832
              (Obj.magic
                 Boot.Intrinsics.Mseq.get
                 v_idx'2840
                 0)
          in
          let v_d_idx'2842 =
            Obj.magic
              Boot.Intrinsics.Mseq.tail
              v_idx'2840
          in
          let v_dp'2843 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_dataset'2825
              v_b_idx'2841
          in
          Obj.magic
            Boot.Intrinsics.T.get_exn
            (let
               CRec'6356 ({linput = v_X'2844})
             =
               Obj.magic
                 v_dp'2843
             in
             Obj.magic
               v_X'2844)
            v_d_idx'2842
and v_t'5308 =
    fun v_dataset'2825 ->
      fun v_start_idx'2832 ->
        fun v_idx'2846 ->
          let v_b_idx'2847 =
            Obj.magic
              Int.add
              v_start_idx'2832
              (Obj.magic
                 Boot.Intrinsics.Mseq.get
                 v_idx'2846
                 0)
          in
          let v_dp'2848 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_dataset'2825
              v_b_idx'2847
          in
          let
            CRec'6356 ({lcorrect_linear_outidx = v_X'2849})
          =
            Obj.magic
              v_dp'2848
          in
          Obj.magic
            v_X'2849
and v_batchMakerH =
    fun v_join ->
      fun v_params'2798 ->
        fun v_dataset'2825 ->
          fun v_acc'2826 ->
            fun v_i'2827 ->
              let v_datalen'2828 =
                Obj.magic
                  Boot.Intrinsics.Mseq.length
                  v_dataset'2825
              in
              let v_'2831 =
                if
                  Obj.magic
                    (let
                       CRec'6355 ({lprintStatus = v_X'2829})
                     =
                       Obj.magic
                         v_params'2798
                     in
                     Obj.magic
                       v_X'2829)
                then
                  let v_'2830 =
                    Obj.magic
                      Boot.Intrinsics.IO.print
                      (Obj.magic
                         v_join
                         (Obj.magic
                            Boot.Intrinsics.Mseq.Helpers.of_array
                            [| (Obj.magic
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (13);
                                     (40) |]));
                              (Obj.magic
                                (Obj.magic
                                   v_int2string
                                   (Obj.magic
                                      Int.add
                                      v_i'2827
                                      1)));
                              (Obj.magic
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (47) |]));
                              (Obj.magic
                                (Obj.magic
                                   v_int2string
                                   v_datalen'2828));
                              (Obj.magic
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (41) |])) |]))
                  in
                  Obj.magic
                    Boot.Intrinsics.IO.flush_stdout
                    ()
                else
                  Obj.magic
                    ()
              in
              if
                Obj.magic
                  (Obj.magic
                     ((>=) : int -> int -> bool)
                     v_i'2827
                     v_datalen'2828)
              then
                v_acc'2826
              else
                Obj.magic
                  (let v_start_idx'2832 =
                     v_i'2827
                   in
                   let v_end_idx'2834 =
                     Obj.magic
                       Int.add
                       v_start_idx'2832
                       (let
                          CRec'6355 ({lbatchsize = v_X'2833})
                        =
                          Obj.magic
                            v_params'2798
                        in
                        Obj.magic
                          v_X'2833)
                   in
                   let v_end_idx'2835 =
                     if
                       Obj.magic
                         (Obj.magic
                            ((>=) : int -> int -> bool)
                            v_end_idx'2834
                            v_datalen'2828)
                     then
                       v_datalen'2828
                     else
                       Obj.magic
                         v_end_idx'2834
                   in
                   let v_bsize'2836 =
                     Obj.magic
                       Int.sub
                       v_end_idx'2835
                       v_start_idx'2832
                   in
                   let v__fst_dp'2837 =
                     Obj.magic
                       Boot.Intrinsics.Mseq.get
                       v_dataset'2825
                       0
                   in
                   let v_datashape'2839 =
                     Obj.magic
                       Boot.Intrinsics.T.shape
                       (let
                          CRec'6356 ({linput = v_X'2838})
                        =
                          Obj.magic
                            v__fst_dp'2837
                        in
                        Obj.magic
                          v_X'2838)
                   in
                   let v_db_inputs'2845 =
                     Obj.magic
                       Boot.Intrinsics.T.create_float_packed
                       (Obj.magic
                          Boot.Intrinsics.Mseq.cons
                          v_bsize'2836
                          v_datashape'2839)
                       (Obj.magic
                          v_t'5307
                          v_dataset'2825
                          v_start_idx'2832)
                   in
                   let v_db_outidxs'2850 =
                     Obj.magic
                       Boot.Intrinsics.T.create_int_packed
                       (Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.of_array
                          [| (Obj.magic
                              v_bsize'2836) |])
                       (Obj.magic
                          v_t'5308
                          v_dataset'2825
                          v_start_idx'2832)
                   in
                   let v_db'2851 =
                     CRec'6354 { linputs =
                         (Obj.repr
                           v_db_inputs'2845);
                       lcorrect_linear_outidxs =
                         (Obj.repr
                           v_db_outidxs'2850) }
                   in
                   Obj.magic
                     v_batchMakerH
                     v_join
                     v_params'2798
                     v_dataset'2825
                     (Obj.magic
                        Boot.Intrinsics.Mseq.snoc
                        v_acc'2826
                        v_db'2851)
                     (Obj.magic
                        Int.add
                        v_i'2827
                        (let
                           CRec'6355 ({lbatchsize = v_X'2852})
                         =
                           Obj.magic
                             v_params'2798
                         in
                         Obj.magic
                           v_X'2852)));;
let v_wrappedPrint =
  fun v_s'2859 ->
    Obj.magic
      Boot.Intrinsics.IO.print
      v_s'2859;;
let v_t'5310 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_params'2798 ->
              fun v_network'2799 ->
                fun v_rounds'2804 ->
                  fun v_training_batches'2853 ->
                    fun v_alpha'2877 ->
                      fun v_lambda'2879 ->
                        fun v_batch_idx'2893 ->
                          let v_'2898 =
                            if
                              Obj.magic
                                (let
                                   CRec'6355 ({lprintStatus = v_X'2894})
                                 =
                                   Obj.magic
                                     v_params'2798
                                 in
                                 Obj.magic
                                   v_X'2894)
                            then
                              let v_'2895 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (13);
                                       (114);
                                       (111);
                                       (117);
                                       (110);
                                       (100);
                                       (32) |])
                              in
                              let v_'2896 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        (Obj.magic
                                           Int.add
                                           v_batch_idx'2893
                                           1)))
                              in
                              let v_'2897 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (47) |])
                              in
                              Obj.magic
                                Boot.Intrinsics.IO.print
                                (Obj.magic
                                   Boot.Intrinsics.FloatConversion.float2string
                                   (Obj.magic
                                      float_of_int
                                      v_rounds'2804))
                            else
                              Obj.magic
                                ()
                          in
                          Obj.magic
                            v_nnGradientDescentExn
                            v_nnCompType_FullyConnected
                            v_nnCompType_ReLU
                            v_nnCompType_SoftMax
                            v_nnLossfnType_CrossEntropyLoss
                            v_nnLossfnType_SoftMaxCrossEntropyLoss
                            v_network'2799
                            v_alpha'2877
                            v_lambda'2879
                            (Obj.magic
                               Boot.Intrinsics.Mseq.get
                               v_training_batches'2853
                               v_batch_idx'2893);;
let v_t'5309 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_params'2798 ->
              fun v_network'2799 ->
                fun v_rounds'2804 ->
                  fun v_training_batches'2853 ->
                    fun v_validation_batches'2856 ->
                      fun v_acc'2873 ->
                        fun v_epoch_idx'2874 ->
                          let v_epoch'2875 =
                            Obj.magic
                              Int.add
                              v_epoch_idx'2874
                              1
                          in
                          let v_alpha'2877 =
                            let
                              CRec'6359 ({l0 = v_X'2876})
                            =
                              Obj.magic
                                v_acc'2873
                            in
                            Obj.magic
                              v_X'2876
                          in
                          let v_lambda'2879 =
                            let
                              CRec'6359 ({l1 = v_X'2878})
                            =
                              Obj.magic
                                v_acc'2873
                            in
                            Obj.magic
                              v_X'2878
                          in
                          let v_'2892 =
                            if
                              Obj.magic
                                (let
                                   CRec'6355 ({lprintStatus = v_X'2880})
                                 =
                                   Obj.magic
                                     v_params'2798
                                 in
                                 Obj.magic
                                   v_X'2880)
                            then
                              let v_'2881 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (91);
                                       (73);
                                       (116);
                                       (101);
                                       (114);
                                       (97);
                                       (116);
                                       (105);
                                       (111);
                                       (110);
                                       (32) |])
                              in
                              let v_'2882 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        v_epoch'2875))
                              in
                              let v_'2883 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (47) |])
                              in
                              let v_'2885 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        (let
                                           CRec'6355 ({lepochs = v_X'2884})
                                         =
                                           Obj.magic
                                             v_params'2798
                                         in
                                         Obj.magic
                                           v_X'2884)))
                              in
                              let v_'2886 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (93);
                                       (10) |])
                              in
                              let v_'2887 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (91);
                                       (97);
                                       (108);
                                       (112);
                                       (104);
                                       (97);
                                       (32);
                                       (61);
                                       (32) |])
                              in
                              let v_'2888 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     v_alpha'2877)
                              in
                              let v_'2889 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (93);
                                       (10) |])
                              in
                              let v_'2890 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (91);
                                       (108);
                                       (97);
                                       (109);
                                       (98);
                                       (100);
                                       (97);
                                       (32);
                                       (61);
                                       (32) |])
                              in
                              let v_'2891 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     v_lambda'2879)
                              in
                              Obj.magic
                                v_wrappedPrint
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (93);
                                     (10) |])
                            else
                              Obj.magic
                                ()
                          in
                          let v_'2899 =
                            let rec v_loop'6339 =
                                fun v_acc'6340 ->
                                  fun v_i'6341 ->
                                    if
                                      Obj.magic
                                        (Obj.magic
                                           ((<) : int -> int -> bool)
                                           v_i'6341
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.length
                                              v_training_batches'2853))
                                    then
                                      let v_t'6342 =
                                        Obj.magic
                                          (fun nv_ ->
                                             Obj.magic
                                               v_t'5310
                                               v_nnCompType_FullyConnected
                                               v_nnCompType_ReLU
                                               v_nnCompType_SoftMax
                                               v_nnLossfnType_CrossEntropyLoss
                                               v_nnLossfnType_SoftMaxCrossEntropyLoss
                                               v_params'2798
                                               v_network'2799
                                               v_rounds'2804
                                               v_training_batches'2853
                                               v_alpha'2877
                                               v_lambda'2879)
                                          v_acc'6340
                                          v_i'6341
                                      in
                                      Obj.magic
                                        v_loop'6339
                                        v_t'6342
                                        (Obj.magic
                                           Int.add
                                           v_i'6341
                                           1)
                                    else
                                      Obj.magic
                                        v_acc'6340
                            in Obj.magic
                              v_loop'6339
                              ()
                              0
                          in
                          let v_'2900 =
                            Obj.magic
                              v_wrappedPrint
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (10) |])
                          in
                          let v_'2909 =
                            if
                              Obj.magic
                                (let
                                   CRec'6355 ({levaluateBetweenEpochs = v_X'2901})
                                 =
                                   Obj.magic
                                     v_params'2798
                                 in
                                 Obj.magic
                                   v_X'2901)
                            then
                              let v_'2903 =
                                if
                                  Obj.magic
                                    (let
                                       CRec'6355 ({lprintStatus = v_X'2902})
                                     =
                                       Obj.magic
                                         v_params'2798
                                     in
                                     Obj.magic
                                       v_X'2902)
                                then
                                  Obj.magic
                                    v_wrappedPrint
                                    (Obj.magic
                                       Boot.Intrinsics.Mseq.Helpers.of_array
                                       [| (101);
                                         (118);
                                         (97);
                                         (108);
                                         (97);
                                         (116);
                                         (105);
                                         (110);
                                         (103);
                                         (32);
                                         (112);
                                         (101);
                                         (114);
                                         (102);
                                         (111);
                                         (114);
                                         (109);
                                         (97);
                                         (110);
                                         (99);
                                         (101);
                                         (46);
                                         (46);
                                         (46);
                                         (10) |])
                                else
                                  Obj.magic
                                    ()
                              in
                              let v_accuracy'2905 =
                                Obj.magic
                                  v_nnAccuracyProportion
                                  v_nnCompType_FullyConnected
                                  v_nnCompType_ReLU
                                  v_nnCompType_SoftMax
                                  v_nnLossfnType_CrossEntropyLoss
                                  v_nnLossfnType_SoftMaxCrossEntropyLoss
                                  (let
                                     CRec'6355 ({lprintStatus = v_X'2904})
                                   =
                                     Obj.magic
                                       v_params'2798
                                   in
                                   Obj.magic
                                     v_X'2904)
                                  v_network'2799
                                  v_validation_batches'2856
                              in
                              if
                                Obj.magic
                                  (let
                                     CRec'6355 ({lprintStatus = v_X'2906})
                                   =
                                     Obj.magic
                                       v_params'2798
                                   in
                                   Obj.magic
                                     v_X'2906)
                              then
                                let v_'2907 =
                                  Obj.magic
                                    v_wrappedPrint
                                    (Obj.magic
                                       Boot.Intrinsics.Mseq.Helpers.of_array
                                       [| (67);
                                         (111);
                                         (109);
                                         (112);
                                         (117);
                                         (116);
                                         (101);
                                         (100);
                                         (32);
                                         (97);
                                         (99);
                                         (99);
                                         (117);
                                         (114);
                                         (97);
                                         (99);
                                         (121);
                                         (58);
                                         (32) |])
                                in
                                let v_'2908 =
                                  Obj.magic
                                    Boot.Intrinsics.IO.print
                                    (Obj.magic
                                       Boot.Intrinsics.FloatConversion.float2string
                                       (Obj.magic
                                          Float.mul
                                          v_accuracy'2905
                                          100.))
                                in
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (37);
                                       (10) |])
                              else
                                Obj.magic
                                  ()
                            else
                              Obj.magic
                                ()
                          in
                          let v_decayed_alpha'2911 =
                            Obj.magic
                              Float.mul
                              v_alpha'2877
                              (Obj.magic
                                 Float.sub
                                 1.
                                 (let
                                    CRec'6355 ({ldecay_alpha = v_X'2910})
                                  =
                                    Obj.magic
                                      v_params'2798
                                  in
                                  Obj.magic
                                    v_X'2910))
                          in
                          let v_decayed_lambda'2913 =
                            Obj.magic
                              Float.mul
                              v_lambda'2879
                              (Obj.magic
                                 Float.sub
                                 1.
                                 (let
                                    CRec'6355 ({ldecay_lambda = v_X'2912})
                                  =
                                    Obj.magic
                                      v_params'2798
                                  in
                                  Obj.magic
                                    v_X'2912))
                          in
                          CRec'6359 { l0 =
                              (Obj.repr
                                v_decayed_alpha'2911);
                            l1 =
                              (Obj.repr
                                v_decayed_lambda'2913) };;
let v_nnTrainSGD =
  fun v_join ->
    fun v_nnCompType_FullyConnected ->
      fun v_nnCompType_ReLU ->
        fun v_nnCompType_SoftMax ->
          fun v_nnLossfnType_CrossEntropyLoss ->
            fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
              fun v_params'2798 ->
                fun v_network'2799 ->
                  fun v_training_data'2800 ->
                    fun v_validation_data'2801 ->
                      let v_rounds'2804 =
                        Obj.magic
                          Int.div
                          (Obj.magic
                             Int.add
                             (Obj.magic
                                Boot.Intrinsics.Mseq.length
                                v_training_data'2800)
                             (Obj.magic
                                Int.sub
                                (let
                                   CRec'6355 ({lbatchsize = v_X'2802})
                                 =
                                   Obj.magic
                                     v_params'2798
                                 in
                                 Obj.magic
                                   v_X'2802)
                                1))
                          (let
                             CRec'6355 ({lbatchsize = v_X'2803})
                           =
                             Obj.magic
                               v_params'2798
                           in
                           Obj.magic
                             v_X'2803)
                      in
                      let v_'2821 =
                        if
                          Obj.magic
                            (let
                               CRec'6355 ({lprintStatus = v_X'2805})
                             =
                               Obj.magic
                                 v_params'2798
                             in
                             Obj.magic
                               v_X'2805)
                        then
                          let v_'2806 =
                            Obj.magic
                              v_printLn
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (83);
                                   (116);
                                   (97);
                                   (114);
                                   (116);
                                   (105);
                                   (110);
                                   (103);
                                   (32);
                                   (83);
                                   (71);
                                   (68);
                                   (32);
                                   (40);
                                   (115);
                                   (116);
                                   (111);
                                   (99);
                                   (104);
                                   (97);
                                   (115);
                                   (116);
                                   (105);
                                   (99);
                                   (32);
                                   (103);
                                   (114);
                                   (97);
                                   (100);
                                   (105);
                                   (101);
                                   (110);
                                   (116);
                                   (32);
                                   (100);
                                   (101);
                                   (115);
                                   (99);
                                   (101);
                                   (110);
                                   (116);
                                   (41) |])
                          in
                          let v_'2807 =
                            Obj.magic
                              v_printLn
                              (Obj.magic
                                 v_join
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [| (Obj.magic
                                        (Obj.magic
                                           Boot.Intrinsics.Mseq.Helpers.of_array
                                           [| (32);
                                             (45);
                                             (32);
                                             (116);
                                             (114);
                                             (97);
                                             (105);
                                             (110);
                                             (105);
                                             (110);
                                             (103);
                                             (95);
                                             (100);
                                             (97);
                                             (116);
                                             (97);
                                             (32);
                                             (115);
                                             (105);
                                             (122);
                                             (101);
                                             (58);
                                             (32) |]));
                                      (Obj.magic
                                        (Obj.magic
                                           v_int2string
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.length
                                              v_training_data'2800))) |]))
                          in
                          let v_'2808 =
                            Obj.magic
                              v_printLn
                              (Obj.magic
                                 v_join
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [| (Obj.magic
                                        (Obj.magic
                                           Boot.Intrinsics.Mseq.Helpers.of_array
                                           [| (32);
                                             (45);
                                             (32);
                                             (118);
                                             (97);
                                             (108);
                                             (105);
                                             (100);
                                             (97);
                                             (116);
                                             (105);
                                             (111);
                                             (110);
                                             (95);
                                             (100);
                                             (97);
                                             (116);
                                             (97);
                                             (32);
                                             (115);
                                             (105);
                                             (122);
                                             (101);
                                             (58);
                                             (32) |]));
                                      (Obj.magic
                                        (Obj.magic
                                           v_int2string
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.length
                                              v_validation_data'2801))) |]))
                          in
                          let v_'2810 =
                            Obj.magic
                              v_printLn
                              (Obj.magic
                                 v_join
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [| (Obj.magic
                                        (Obj.magic
                                           Boot.Intrinsics.Mseq.Helpers.of_array
                                           [| (32);
                                             (45);
                                             (32);
                                             (98);
                                             (97);
                                             (116);
                                             (99);
                                             (104);
                                             (115);
                                             (105);
                                             (122);
                                             (101);
                                             (58);
                                             (32) |]));
                                      (Obj.magic
                                        (Obj.magic
                                           v_int2string
                                           (let
                                              CRec'6355 ({lbatchsize = v_X'2809})
                                            =
                                              Obj.magic
                                                v_params'2798
                                            in
                                            Obj.magic
                                              v_X'2809))) |]))
                          in
                          let v_'2811 =
                            Obj.magic
                              v_printLn
                              (Obj.magic
                                 v_join
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [| (Obj.magic
                                        (Obj.magic
                                           Boot.Intrinsics.Mseq.Helpers.of_array
                                           [| (32);
                                             (45);
                                             (32);
                                             (114);
                                             (111);
                                             (117);
                                             (110);
                                             (100);
                                             (115);
                                             (58);
                                             (32) |]));
                                      (Obj.magic
                                        (Obj.magic
                                           v_int2string
                                           v_rounds'2804)) |]))
                          in
                          let v_'2813 =
                            Obj.magic
                              v_printLn
                              (Obj.magic
                                 v_join
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [| (Obj.magic
                                        (Obj.magic
                                           Boot.Intrinsics.Mseq.Helpers.of_array
                                           [| (32);
                                             (45);
                                             (32);
                                             (101);
                                             (112);
                                             (111);
                                             (99);
                                             (104);
                                             (115);
                                             (58);
                                             (32) |]));
                                      (Obj.magic
                                        (Obj.magic
                                           v_int2string
                                           (let
                                              CRec'6355 ({lepochs = v_X'2812})
                                            =
                                              Obj.magic
                                                v_params'2798
                                            in
                                            Obj.magic
                                              v_X'2812))) |]))
                          in
                          let v_'2815 =
                            Obj.magic
                              v_printLn
                              (Obj.magic
                                 v_join
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [| (Obj.magic
                                        (Obj.magic
                                           Boot.Intrinsics.Mseq.Helpers.of_array
                                           [| (32);
                                             (45);
                                             (32);
                                             (97);
                                             (108);
                                             (112);
                                             (104);
                                             (97);
                                             (32);
                                             (40);
                                             (105);
                                             (110);
                                             (105);
                                             (116);
                                             (105);
                                             (97);
                                             (108);
                                             (32);
                                             (108);
                                             (101);
                                             (97);
                                             (114);
                                             (110);
                                             (105);
                                             (110);
                                             (103);
                                             (32);
                                             (114);
                                             (97);
                                             (116);
                                             (101);
                                             (41);
                                             (58);
                                             (32) |]));
                                      (Obj.magic
                                        (Obj.magic
                                           Boot.Intrinsics.FloatConversion.float2string
                                           (let
                                              CRec'6355 ({linit_alpha = v_X'2814})
                                            =
                                              Obj.magic
                                                v_params'2798
                                            in
                                            Obj.magic
                                              v_X'2814))) |]))
                          in
                          let v_'2817 =
                            Obj.magic
                              v_printLn
                              (Obj.magic
                                 v_join
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [| (Obj.magic
                                        (Obj.magic
                                           Boot.Intrinsics.Mseq.Helpers.of_array
                                           [| (32);
                                             (45);
                                             (32);
                                             (97);
                                             (108);
                                             (112);
                                             (104);
                                             (97);
                                             (32);
                                             (100);
                                             (101);
                                             (99);
                                             (97);
                                             (121);
                                             (58);
                                             (32) |]));
                                      (Obj.magic
                                        (Obj.magic
                                           Boot.Intrinsics.FloatConversion.float2string
                                           (let
                                              CRec'6355 ({ldecay_alpha = v_X'2816})
                                            =
                                              Obj.magic
                                                v_params'2798
                                            in
                                            Obj.magic
                                              v_X'2816))) |]))
                          in
                          let v_'2819 =
                            Obj.magic
                              v_printLn
                              (Obj.magic
                                 v_join
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [| (Obj.magic
                                        (Obj.magic
                                           Boot.Intrinsics.Mseq.Helpers.of_array
                                           [| (32);
                                             (45);
                                             (32);
                                             (108);
                                             (97);
                                             (109);
                                             (98);
                                             (100);
                                             (97);
                                             (32);
                                             (40);
                                             (105);
                                             (110);
                                             (105);
                                             (116);
                                             (105);
                                             (97);
                                             (108);
                                             (32);
                                             (76);
                                             (50);
                                             (32);
                                             (114);
                                             (101);
                                             (103);
                                             (117);
                                             (108);
                                             (97);
                                             (114);
                                             (105);
                                             (122);
                                             (97);
                                             (116);
                                             (105);
                                             (111);
                                             (110);
                                             (32);
                                             (102);
                                             (97);
                                             (99);
                                             (116);
                                             (111);
                                             (114);
                                             (41);
                                             (58);
                                             (32) |]));
                                      (Obj.magic
                                        (Obj.magic
                                           Boot.Intrinsics.FloatConversion.float2string
                                           (let
                                              CRec'6355 ({linit_lambda = v_X'2818})
                                            =
                                              Obj.magic
                                                v_params'2798
                                            in
                                            Obj.magic
                                              v_X'2818))) |]))
                          in
                          Obj.magic
                            v_printLn
                            (Obj.magic
                               v_join
                               (Obj.magic
                                  Boot.Intrinsics.Mseq.Helpers.of_array
                                  [| (Obj.magic
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (32);
                                           (45);
                                           (32);
                                           (108);
                                           (97);
                                           (109);
                                           (98);
                                           (100);
                                           (97);
                                           (32);
                                           (100);
                                           (101);
                                           (99);
                                           (97);
                                           (121);
                                           (58);
                                           (32) |]));
                                    (Obj.magic
                                      (Obj.magic
                                         Boot.Intrinsics.FloatConversion.float2string
                                         (let
                                            CRec'6355 ({ldecay_lambda = v_X'2820})
                                          =
                                            Obj.magic
                                              v_params'2798
                                          in
                                          Obj.magic
                                            v_X'2820))) |]))
                        else
                          Obj.magic
                            ()
                      in
                      let v_'2823 =
                        if
                          Obj.magic
                            (let
                               CRec'6355 ({lprintStatus = v_X'2822})
                             =
                               Obj.magic
                                 v_params'2798
                             in
                             Obj.magic
                               v_X'2822)
                        then
                          Obj.magic
                            v_printLn
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.of_array
                               [| (67);
                                 (114);
                                 (101);
                                 (97);
                                 (116);
                                 (105);
                                 (110);
                                 (103);
                                 (32);
                                 (98);
                                 (97);
                                 (116);
                                 (99);
                                 (104);
                                 (101);
                                 (115);
                                 (46);
                                 (46);
                                 (46) |])
                        else
                          Obj.magic
                            ()
                      in
                      let v_training_batches'2853 =
                        Obj.magic
                          v_batchMakerH
                          v_join
                          v_params'2798
                          v_training_data'2800
                          (Obj.magic
                             Boot.Intrinsics.Mseq.Helpers.of_array
                             [|  |])
                          0
                      in
                      let v_'2855 =
                        if
                          Obj.magic
                            (let
                               CRec'6355 ({lprintStatus = v_X'2854})
                             =
                               Obj.magic
                                 v_params'2798
                             in
                             Obj.magic
                               v_X'2854)
                        then
                          Obj.magic
                            v_printLn
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.of_array
                               [|  |])
                        else
                          Obj.magic
                            ()
                      in
                      let v_validation_batches'2856 =
                        Obj.magic
                          v_batchMakerH
                          v_join
                          v_params'2798
                          v_validation_data'2801
                          (Obj.magic
                             Boot.Intrinsics.Mseq.Helpers.of_array
                             [|  |])
                          0
                      in
                      let v_'2858 =
                        if
                          Obj.magic
                            (let
                               CRec'6355 ({lprintStatus = v_X'2857})
                             =
                               Obj.magic
                                 v_params'2798
                             in
                             Obj.magic
                               v_X'2857)
                        then
                          Obj.magic
                            v_printLn
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.of_array
                               [|  |])
                        else
                          Obj.magic
                            ()
                      in
                      let v_'2915 =
                        let nv_ =
                          Obj.magic
                            v_vv4F90aVQU5'5248
                            v_nnCompType_FullyConnected
                            v_nnCompType_ReLU
                            v_nnCompType_SoftMax
                            v_nnLossfnType_CrossEntropyLoss
                            v_nnLossfnType_SoftMaxCrossEntropyLoss
                            (let
                               CRec'6355 ({lepochs = v_r'6369;lbatchsize = v_r'6370;linit_alpha = v_r'6371;ldecay_alpha = v_r'6372;linit_lambda = v_r'6373;lprintStatus = v_r'6374;ldecay_lambda = v_r'6375;levaluateBetweenEpochs = v_r'6376;levaluateBeforeFirstEpoch = v_r'6377})
                             =
                               v_params'2798
                             in
                             Obj.magic
                               Obj.repr
                               ({lepochs =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6369);
                                 lbatchsize =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6370);
                                 linit_alpha =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6371);
                                 ldecay_alpha =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6372);
                                 linit_lambda =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6373);
                                 lprintStatus =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6374);
                                 ldecay_lambda =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6375);
                                 levaluateBetweenEpochs =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6376);
                                 levaluateBeforeFirstEpoch =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6377)} : v_record'6368))
                            (let
                               CRec'6353 ({llossfn = v_r'6381;lcomponents = v_r'6382})
                             =
                               v_network'2799
                             in
                             Obj.magic
                               Obj.repr
                               ({llossfn =
                                   (let
                                     CRec'6352 ({lty = v_r'6383;lin_grads = v_r'6384;lout_bufs = v_r'6385;lsoftmax_bufs = v_r'6386})
                                   =
                                     Obj.magic
                                       Obj.magic
                                       v_r'6381
                                   in
                                   Obj.magic
                                     Obj.repr
                                     ({lty =
                                         (Obj.magic
                                           Obj.magic
                                           v_r'6383);
                                       lin_grads =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6384));
                                       lout_bufs =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6385));
                                       lsoftmax_bufs =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6386))} : v_record'6378));
                                 lcomponents =
                                   (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.to_array_copy
                                     (Obj.magic
                                        Boot.Intrinsics.Mseq.map
                                        (fun v_x'6387 ->
                                           let
                                             CRec'6351 ({lb = v_r'6388;lw = v_r'6389;lty = v_r'6390;lb_grads = v_r'6391;lw_grads = v_r'6392;lin_grads = v_r'6393;lout_bufs = v_r'6394;lsoftmax_bufs = v_r'6395})
                                           =
                                             v_x'6387
                                           in
                                           Obj.magic
                                             Obj.repr
                                             ({lb =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6388));
                                               lw =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6389));
                                               lty =
                                                 (Obj.magic
                                                   Obj.magic
                                                   v_r'6390);
                                               lb_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6391));
                                               lw_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6392));
                                               lin_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6393));
                                               lout_bufs =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6394));
                                               lsoftmax_bufs =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6395))} : v_record'6379))
                                        (Obj.magic
                                           Obj.magic
                                           v_r'6382)))} : v_record'6380))
                            v_rounds'2804
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.to_array_copy
                               (Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  (fun v_x'6397 ->
                                     let
                                       CRec'6354 ({linputs = v_r'6398;lcorrect_linear_outidxs = v_r'6399})
                                     =
                                       v_x'6397
                                     in
                                     Obj.magic
                                       Obj.repr
                                       ({linputs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6398));
                                         lcorrect_linear_outidxs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6399))} : v_record'6396))
                                  v_training_batches'2853))
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.to_array_copy
                               (Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  (fun v_x'6401 ->
                                     let
                                       CRec'6354 ({linputs = v_r'6402;lcorrect_linear_outidxs = v_r'6403})
                                     =
                                       v_x'6401
                                     in
                                     Obj.magic
                                       Obj.repr
                                       ({linputs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6402));
                                         lcorrect_linear_outidxs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6403))} : v_record'6400))
                                  v_validation_batches'2856))
                        in
                        ()
                      in
                      let v_'2917 =
                        if
                          Obj.magic
                            (let
                               CRec'6355 ({lprintStatus = v_X'2916})
                             =
                               Obj.magic
                                 v_params'2798
                             in
                             Obj.magic
                               v_X'2916)
                        then
                          Obj.magic
                            v_printLn
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.of_array
                               [| (83);
                                 (71);
                                 (68);
                                 (32);
                                 (99);
                                 (111);
                                 (109);
                                 (112);
                                 (108);
                                 (101);
                                 (116);
                                 (101);
                                 (46) |])
                        else
                          Obj.magic
                            ()
                      in
                      ();;
let v_t'5311 =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_print_status'2919 ->
        fun v_convfn'2920 ->
          fun v_dim'2921 ->
            fun v_tensorCreate'2922 ->
              fun v_acc'2928 ->
                fun v_c'2929 ->
                  match
                    Obj.magic
                      (let v__target'6429 =
                         v_acc'2928
                       in
                       let
                         CRec'6358 ({l0 = v_0'6430;l1 = v_1'6431;l2 = v_2'6432})
                       =
                         Obj.magic
                           Obj.magic
                           v__target'6429
                       in
                       Option.Some (v_0'6430, v_1'6431, v_2'6432))
                  with
                  | Option.Some (v_converted'2930, v_current_acc'2931, v_current_strrep'2932) ->
                      (let v_updated_tuple'2933 =
                         if
                           Obj.magic
                             (Obj.magic
                                v_and
                                (Obj.magic
                                   v_or
                                   (Obj.magic
                                      v_eqChar
                                      v_c'2929
                                      10)
                                   (Obj.magic
                                      v_eqChar
                                      v_c'2929
                                      32))
                                (Obj.magic
                                   ((>) : int -> int -> bool)
                                   (Obj.magic
                                      Boot.Intrinsics.Mseq.length
                                      v_current_strrep'2932)
                                   0))
                         then
                           CRec'6359 { l0 =
                               (Obj.repr
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.snoc
                                    v_current_acc'2931
                                    (Obj.magic
                                       v_string2int
                                       v_current_strrep'2932)));
                             l1 =
                               (Obj.repr
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [|  |])) }
                         else
                           Obj.magic
                             (CRec'6359 { l0 =
                                  (Obj.repr
                                    v_current_acc'2931);
                                l1 =
                                  (Obj.repr
                                    v_current_strrep'2932) })
                       in
                       match
                         Obj.magic
                           (let v__target'6433 =
                              v_updated_tuple'2933
                            in
                            let
                              CRec'6359 ({l0 = v_0'6434;l1 = v_1'6435})
                            =
                              Obj.magic
                                Obj.magic
                                v__target'6433
                            in
                            Option.Some (v_0'6434, v_1'6435))
                       with
                       | Option.Some (v_current_acc'2934, v_current_strrep'2935) ->
                           (if
                              Obj.magic
                                (Obj.magic
                                   v_eqChar
                                   v_c'2929
                                   10)
                            then
                              let v_class'2936 =
                                Obj.magic
                                  Boot.Intrinsics.Mseq.head
                                  v_current_acc'2934
                              in
                              let v_normalized_values'2937 =
                                Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  v_convfn'2920
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.tail
                                     v_current_acc'2934)
                              in
                              let v_dp'2938 =
                                CRec'6356 { linput =
                                    (Obj.repr
                                      (Obj.magic
                                         v_tensorOfSeqExn
                                         v_tensorCreate'2922
                                         v_dim'2921
                                         v_normalized_values'2937));
                                  lcorrect_outidx =
                                    (Obj.repr
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (Obj.magic
                                             v_class'2936);
                                           (0) |]));
                                  lcorrect_linear_outidx =
                                    (Obj.repr
                                      v_class'2936) }
                              in
                              let v_'2940 =
                                if
                                  Obj.magic
                                    v_print_status'2919
                                then
                                  let v_'2939 =
                                    Obj.magic
                                      Boot.Intrinsics.IO.print
                                      (Obj.magic
                                         v_join
                                         (Obj.magic
                                            Boot.Intrinsics.Mseq.Helpers.of_array
                                            [| (Obj.magic
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                                   [| (13);
                                                     (112);
                                                     (111);
                                                     (105);
                                                     (110);
                                                     (116);
                                                     (115);
                                                     (32);
                                                     (115);
                                                     (99);
                                                     (97);
                                                     (110);
                                                     (110);
                                                     (101);
                                                     (100);
                                                     (58);
                                                     (32) |]));
                                              (Obj.magic
                                                (Obj.magic
                                                   v_int2string
                                                   (Obj.magic
                                                      Int.add
                                                      (Obj.magic
                                                         Boot.Intrinsics.Mseq.length
                                                         v_converted'2930)
                                                      1))) |]))
                                  in
                                  Obj.magic
                                    Boot.Intrinsics.IO.flush_stdout
                                    ()
                                else
                                  Obj.magic
                                    ()
                              in
                              CRec'6358 { l0 =
                                  (Obj.repr
                                    (Obj.magic
                                       Boot.Intrinsics.Mseq.snoc
                                       v_converted'2930
                                       v_dp'2938));
                                l1 =
                                  (Obj.repr
                                    (Obj.magic
                                       Boot.Intrinsics.Mseq.Helpers.of_array
                                       [|  |]));
                                l2 =
                                  (Obj.repr
                                    (Obj.magic
                                       Boot.Intrinsics.Mseq.Helpers.of_array
                                       [|  |])) }
                            else
                              Obj.magic
                                (if
                                   Obj.magic
                                     (Obj.magic
                                        v_eqChar
                                        v_c'2929
                                        32)
                                 then
                                   CRec'6358 { l0 =
                                       (Obj.repr
                                         v_converted'2930);
                                     l1 =
                                       (Obj.repr
                                         v_current_acc'2934);
                                     l2 =
                                       (Obj.repr
                                         v_current_strrep'2935) }
                                 else
                                   Obj.magic
                                     (CRec'6358 { l0 =
                                          (Obj.repr
                                            v_converted'2930);
                                        l1 =
                                          (Obj.repr
                                            v_current_acc'2934);
                                        l2 =
                                          (Obj.repr
                                            (Obj.magic
                                               Boot.Intrinsics.Mseq.snoc
                                               v_current_strrep'2935
                                               v_c'2929)) })))
                       | Option.None ->
                           (Obj.magic
                              (failwith
                                 "FILE \"/home/wikman/GitRepos/johnwikman/miking-ml/src/dataset/_common.mc\" 33:4-49:53 ERROR: Reached a never term, which should be impossible in a well-typed program.")))
                  | Option.None ->
                      (Obj.magic
                         (failwith
                            "FILE \"/home/wikman/GitRepos/johnwikman/miking-ml/src/dataset/_common.mc\" 26:4-31:6 ERROR: Reached a never term, which should be impossible in a well-typed program."));;
let v_t =
  fun v_x'2944 ->
    v_x'2944;;
let v_datasetLoadGenericIntclassInt2Float =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_print_status'2919 ->
        fun v_convfn'2920 ->
          fun v_dim'2921 ->
            fun v_tensorCreate'2922 ->
              fun v_filename'2923 ->
                let v_'2924 =
                  Obj.magic
                    v_printLn
                    (Obj.magic
                       v_join
                       (Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.of_array
                          [| (Obj.magic
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (114);
                                   (101);
                                   (97);
                                   (100);
                                   (105);
                                   (110);
                                   (103);
                                   (32);
                                   (102);
                                   (105);
                                   (108);
                                   (101);
                                   (32) |]));
                            (Obj.magic
                              v_filename'2923);
                            (Obj.magic
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (46);
                                   (46);
                                   (46) |])) |]))
                in
                let v_contents'2925 =
                  Obj.magic
                    Boot.Intrinsics.File.read
                    v_filename'2923
                in
                let v_'2927 =
                  if
                    Obj.magic
                      v_print_status'2919
                  then
                    let v_'2926 =
                      Obj.magic
                        Boot.Intrinsics.IO.print
                        (Obj.magic
                           Boot.Intrinsics.Mseq.Helpers.of_array
                           [| (112);
                             (111);
                             (105);
                             (110);
                             (116);
                             (115);
                             (32);
                             (115);
                             (99);
                             (97);
                             (110);
                             (110);
                             (101);
                             (100);
                             (58);
                             (32);
                             (48) |])
                    in
                    Obj.magic
                      Boot.Intrinsics.IO.flush_stdout
                      ()
                  else
                    Obj.magic
                      ()
                in
                let v_result'2941 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.Helpers.fold_left
                    (Obj.magic
                       v_t'5311
                       v_join
                       v_tensorOfSeqExn
                       v_print_status'2919
                       v_convfn'2920
                       v_dim'2921
                       v_tensorCreate'2922)
                    (CRec'6358 { l0 =
                         (Obj.repr
                           (Obj.magic
                              Boot.Intrinsics.Mseq.Helpers.of_array
                              [|  |]));
                       l1 =
                         (Obj.repr
                           (Obj.magic
                              Boot.Intrinsics.Mseq.Helpers.of_array
                              [|  |]));
                       l2 =
                         (Obj.repr
                           (Obj.magic
                              Boot.Intrinsics.Mseq.Helpers.of_array
                              [|  |])) })
                    v_contents'2925
                in
                let v_'2943 =
                  if
                    Obj.magic
                      v_print_status'2919
                  then
                    let v_'2942 =
                      Obj.magic
                        Boot.Intrinsics.IO.print
                        (Obj.magic
                           Boot.Intrinsics.Mseq.Helpers.of_array
                           [| (10) |])
                    in
                    Obj.magic
                      Boot.Intrinsics.IO.flush_stdout
                      ()
                  else
                    Obj.magic
                      ()
                in
                Obj.magic
                  Boot.Intrinsics.Mseq.map
                  v_t
                  (let
                     CRec'6358 ({l0 = v_X'2945})
                   =
                     Obj.magic
                       v_result'2941
                   in
                   Obj.magic
                     v_X'2945);;
let v_convfn =
  fun v_i'2950 ->
    Obj.magic
      Float.div
      (Obj.magic
         float_of_int
         v_i'2950)
      255.;;
let v_datasetLoadMnist =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_tensorCreate'2947 ->
        fun v_filename'2948 ->
          let v_print_status'2949 =
            true
          in
          let v_dim'2952 =
            Obj.magic
              Boot.Intrinsics.Mseq.Helpers.of_array
              [| (784) |]
          in
          Obj.magic
            v_datasetLoadGenericIntclassInt2Float
            v_join
            v_tensorOfSeqExn
            v_print_status'2949
            v_convfn
            v_dim'2952
            v_tensorCreate'2947
            v_filename'2948;;
let v_datasetLoadDenseMnist =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      Obj.magic
        v_datasetLoadMnist
        v_join
        v_tensorOfSeqExn
        Boot.Intrinsics.T.create_generic_packed;;
let v_datasetLoadCArrayFloatMnist =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      Obj.magic
        v_datasetLoadMnist
        v_join
        v_tensorOfSeqExn
        Boot.Intrinsics.T.create_float_packed;;
let v_mnist_network =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_nnLossfnType_CrossEntropyLoss ->
              fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
                fun v_batchsize'2956 ->
                  Obj.magic
                    v_nnMake
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           (Obj.magic
                              v_nnFullyConnected
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2956
                              784
                              784));
                         (Obj.magic
                           (Obj.magic
                              v_nnReLU
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2956
                              784));
                         (Obj.magic
                           (Obj.magic
                              v_nnFullyConnected
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2956
                              784
                              128));
                         (Obj.magic
                           (Obj.magic
                              v_nnReLU
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2956
                              128));
                         (Obj.magic
                           (Obj.magic
                              v_nnFullyConnected
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2956
                              128
                              10)) |])
                    (Obj.magic
                       v_nnSoftMaxCrossEntropyLoss
                       v_eqSeq
                       v_join
                       v_nnLossfnType_CrossEntropyLoss
                       v_nnLossfnType_SoftMaxCrossEntropyLoss
                       v_batchsize'2956
                       10);;
let v_mnist_runBenchmark =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_nnLossfnType_CrossEntropyLoss ->
              fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
                fun v_nnVanillaSGDParameters ->
                  fun v_training_data'2958 ->
                    fun v_validation_data'2959 ->
                      let v_params'2960 =
                        let
                          CRec'6355 v_rec'6442
                        =
                          Obj.magic
                            (let
                               CRec'6355 v_rec'6441
                             =
                               Obj.magic
                                 (let
                                    CRec'6355 v_rec'6440
                                  =
                                    Obj.magic
                                      (let
                                         CRec'6355 v_rec'6439
                                       =
                                         Obj.magic
                                           (let
                                              CRec'6355 v_rec'6438
                                            =
                                              Obj.magic
                                                (let
                                                   CRec'6355 v_rec'6437
                                                 =
                                                   Obj.magic
                                                     (let
                                                        CRec'6355 v_rec'6436
                                                      =
                                                        Obj.magic
                                                          v_nnVanillaSGDParameters
                                                      in
                                                      CRec'6355 { v_rec'6436
                                                        with
                                                        lbatchsize =
                                                          Obj.repr
                                                            128 })
                                                 in
                                                 CRec'6355 { v_rec'6437
                                                   with
                                                   lepochs =
                                                     Obj.repr
                                                       100 })
                                            in
                                            CRec'6355 { v_rec'6438
                                              with
                                              linit_alpha =
                                                Obj.repr
                                                  0.9 })
                                       in
                                       CRec'6355 { v_rec'6439
                                         with
                                         linit_lambda =
                                           Obj.repr
                                             0. })
                                  in
                                  CRec'6355 { v_rec'6440
                                    with
                                    lprintStatus =
                                      Obj.repr
                                        true })
                             in
                             CRec'6355 { v_rec'6441
                               with
                               levaluateBetweenEpochs =
                                 Obj.repr
                                   true })
                        in
                        CRec'6355 { v_rec'6442
                          with
                          levaluateBeforeFirstEpoch =
                            Obj.repr
                              true }
                      in
                      let v_'2961 =
                        Obj.magic
                          v_printLn
                          (Obj.magic
                             Boot.Intrinsics.Mseq.Helpers.of_array
                             [| (99);
                               (114);
                               (101);
                               (97);
                               (116);
                               (105);
                               (110);
                               (103);
                               (32);
                               (110);
                               (101);
                               (116);
                               (119);
                               (111);
                               (114);
                               (107);
                               (46);
                               (46);
                               (46) |])
                      in
                      let v_network'2963 =
                        Obj.magic
                          v_mnist_network
                          v_eqSeq
                          v_join
                          v_nnCompType_FullyConnected
                          v_nnCompType_ReLU
                          v_nnCompType_SoftMax
                          v_nnLossfnType_CrossEntropyLoss
                          v_nnLossfnType_SoftMaxCrossEntropyLoss
                          (let
                             CRec'6355 ({lbatchsize = v_X'2962})
                           =
                             Obj.magic
                               v_params'2960
                           in
                           Obj.magic
                             v_X'2962)
                      in
                      let v_'2964 =
                        Obj.magic
                          v_printLn
                          (Obj.magic
                             Boot.Intrinsics.Mseq.Helpers.of_array
                             [| (114);
                               (117);
                               (110);
                               (110);
                               (105);
                               (110);
                               (103);
                               (32);
                               (109);
                               (110);
                               (105);
                               (115);
                               (116);
                               (32);
                               (98);
                               (101);
                               (110);
                               (99);
                               (104);
                               (109);
                               (97);
                               (114);
                               (107) |])
                      in
                      let v_t_start_ms'2965 =
                        Obj.magic
                          Boot.Intrinsics.Time.get_wall_time_ms
                          ()
                      in
                      let v_'2966 =
                        Obj.magic
                          v_nnTrainSGD
                          v_join
                          v_nnCompType_FullyConnected
                          v_nnCompType_ReLU
                          v_nnCompType_SoftMax
                          v_nnLossfnType_CrossEntropyLoss
                          v_nnLossfnType_SoftMaxCrossEntropyLoss
                          v_params'2960
                          v_network'2963
                          v_training_data'2958
                          v_validation_data'2959
                      in
                      let v_t_end_ms'2967 =
                        Obj.magic
                          Boot.Intrinsics.Time.get_wall_time_ms
                          ()
                      in
                      let v_t_diff_ms'2968 =
                        Obj.magic
                          Float.sub
                          v_t_end_ms'2967
                          v_t_start_ms'2965
                      in
                      Obj.magic
                        v_printLn
                        (Obj.magic
                           v_join
                           (Obj.magic
                              Boot.Intrinsics.Mseq.Helpers.of_array
                              [| (Obj.magic
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (101);
                                       (108);
                                       (97);
                                       (112);
                                       (115);
                                       (101);
                                       (100);
                                       (32);
                                       (116);
                                       (105);
                                       (109);
                                       (101);
                                       (58);
                                       (32) |]));
                                (Obj.magic
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     v_t_diff_ms'2968));
                                (Obj.magic
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (32);
                                       (109);
                                       (115) |])) |]));;
if
  Obj.magic
    (Obj.magic
       ((<>) : int -> int -> bool)
       (Obj.magic
          Boot.Intrinsics.Mseq.length
          Boot.Intrinsics.MSys.argv)
       3)
then
  Obj.magic
    Boot.Intrinsics.MSys.error
    (Obj.magic
       v_join
       (Obj.magic
          Boot.Intrinsics.Mseq.Helpers.of_array
          [| (Obj.magic
              (Obj.magic
                 Boot.Intrinsics.Mseq.Helpers.of_array
                 [| (117);
                   (115);
                   (97);
                   (103);
                   (101);
                   (58);
                   (32) |]));
            (Obj.magic
              (Obj.magic
                 Boot.Intrinsics.Mseq.get
                 Boot.Intrinsics.MSys.argv
                 0));
            (Obj.magic
              (Obj.magic
                 Boot.Intrinsics.Mseq.Helpers.of_array
                 [| (32);
                   (116);
                   (114);
                   (97);
                   (105);
                   (110);
                   (105);
                   (110);
                   (103);
                   (95);
                   (100);
                   (97);
                   (116);
                   (97);
                   (102);
                   (105);
                   (108);
                   (101);
                   (32);
                   (118);
                   (97);
                   (108);
                   (105);
                   (100);
                   (97);
                   (116);
                   (105);
                   (111);
                   (110);
                   (95);
                   (100);
                   (97);
                   (116);
                   (97);
                   (102);
                   (105);
                   (108);
                   (101) |])) |]))
else
  Obj.magic
    (let v_'2970 =
       Obj.magic
         v_printLn
         (Obj.magic
            Boot.Intrinsics.Mseq.Helpers.of_array
            [| (108);
              (111);
              (97);
              (100);
              (105);
              (110);
              (103);
              (32);
              (116);
              (114);
              (97);
              (105);
              (110);
              (105);
              (110);
              (103);
              (32);
              (100);
              (97);
              (116);
              (97);
              (115);
              (101);
              (116);
              (46);
              (46);
              (46) |])
     in
     let v_training_data'2971 =
       Obj.magic
         v_datasetLoadCArrayFloatMnist
         v_join
         v_tensorOfSeqExn
         (Obj.magic
            Boot.Intrinsics.Mseq.get
            Boot.Intrinsics.MSys.argv
            1)
     in
     let v_'2972 =
       Obj.magic
         v_printLn
         (Obj.magic
            Boot.Intrinsics.Mseq.Helpers.of_array
            [| (108);
              (111);
              (97);
              (100);
              (105);
              (110);
              (103);
              (32);
              (118);
              (97);
              (108);
              (105);
              (100);
              (97);
              (116);
              (105);
              (111);
              (110);
              (32);
              (100);
              (97);
              (116);
              (97);
              (115);
              (101);
              (116);
              (46);
              (46);
              (46) |])
     in
     let v_validation_data'2973 =
       Obj.magic
         v_datasetLoadCArrayFloatMnist
         v_join
         v_tensorOfSeqExn
         (Obj.magic
            Boot.Intrinsics.Mseq.get
            Boot.Intrinsics.MSys.argv
            2)
     in
     Obj.magic
       v_mnist_runBenchmark
       v_eqSeq
       v_join
       v_nnCompType_FullyConnected
       v_nnCompType_ReLU
       v_nnCompType_SoftMax
       v_nnLossfnType_CrossEntropyLoss
       v_nnLossfnType_SoftMaxCrossEntropyLoss
       v_nnVanillaSGDParameters
       v_training_data'2971
       v_validation_data'2973);;