external v_vXrkk6MJAk3'5267 : Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t = "vtCOqRaPrWZ" "vXrkk6MJAk3";;
type v_record'6387 = {lepochs: Obj.t;lbatchsize: Obj.t;linit_alpha: Obj.t;ldecay_alpha: Obj.t;linit_lambda: Obj.t;lprintStatus: Obj.t;ldecay_lambda: Obj.t;levaluateBetweenEpochs: Obj.t;levaluateBeforeFirstEpoch: Obj.t};;
type v_record'6397 = {lty: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6398 = {lb: Obj.t;lw: Obj.t;lty: Obj.t;lb_grads: Obj.t;lw_grads: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6399 = {llossfn: Obj.t;lcomponents: Obj.t};;
type v_record'6415 = {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6419 = {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6379 =
  | CRec'6378 of {l0: Obj.t;l1: Obj.t};;
type v_record'6380 =
  | CRec'6377 of {l0: Obj.t;l1: Obj.t;l2: Obj.t};;
type v_record'6381 =
  | CRec'6375 of {linput: Obj.t;lcorrect_outidx: Obj.t;lcorrect_linear_outidx: Obj.t};;
type v_record'6382 =
  | CRec'6374 of {lepochs: Obj.t;lbatchsize: Obj.t;linit_alpha: Obj.t;ldecay_alpha: Obj.t;linit_lambda: Obj.t;lprintStatus: Obj.t;ldecay_lambda: Obj.t;levaluateBetweenEpochs: Obj.t;levaluateBeforeFirstEpoch: Obj.t};;
type v_record'6383 =
  | CRec'6373 of {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6384 =
  | CRec'6372 of {llossfn: Obj.t;lcomponents: Obj.t};;
type v_record'6385 =
  | CRec'6371 of {lty: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6386 =
  | CRec'6370 of {lb: Obj.t;lw: Obj.t;lty: Obj.t;lb_grads: Obj.t;lw_grads: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_Option'2149 =
  | CSome'2151 of Obj.t
  | CNone'2153;;
let v_and =
  fun v_a'2142 ->
    fun v_b'2143 ->
      if
        Obj.magic
          v_a'2142
      then
        v_b'2143
      else
        Obj.magic
          false;;
let v_or =
  fun v_a'2145 ->
    fun v_b'2146 ->
      if
        Obj.magic
          v_a'2145
      then
        true
      else
        Obj.magic
          v_b'2146;;
let rec v_work =
    fun v_eq'2156 ->
      fun v_s1'2160 ->
        fun v_s2'2161 ->
          match
            Obj.magic
              (let v__target'6423 =
                 CRec'6378 { l0 =
                     (Obj.repr
                       v_s1'2160);
                   l1 =
                     (Obj.repr
                       v_s2'2161) }
               in
               let
                 CRec'6378 ({l0 = v_0'6424;l1 = v_1'6425})
               =
                 Obj.magic
                   Obj.magic
                   v__target'6423
               in
               if
                 Obj.magic
                   ((<) : int -> int -> bool)
                   (Obj.magic
                      Boot.Intrinsics.Mseq.length
                      v_0'6424)
                   1
               then
                 Option.None
               else
                 Obj.magic
                   Obj.magic
                   (let
                      (v__prefix'6426, v__splitTemp'6427)
                    =
                      Obj.magic
                        Boot.Intrinsics.Mseq.split_at
                        v_0'6424
                        1
                    in
                    let
                      (v__middle'6428, v__postfix'6429)
                    =
                      Obj.magic
                        Boot.Intrinsics.Mseq.split_at
                        v__splitTemp'6427
                        (Obj.magic
                           Int.sub
                           (Obj.magic
                              Boot.Intrinsics.Mseq.length
                              v__splitTemp'6427)
                           0)
                    in
                    let v__seqElem'6430 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.get
                        v__prefix'6426
                        0
                    in
                    if
                      Obj.magic
                        ((<) : int -> int -> bool)
                        (Obj.magic
                           Boot.Intrinsics.Mseq.length
                           v_1'6425)
                        1
                    then
                      Option.None
                    else
                      Obj.magic
                        Obj.magic
                        (let
                           (v__prefix'6431, v__splitTemp'6432)
                         =
                           Obj.magic
                             Boot.Intrinsics.Mseq.split_at
                             v_1'6425
                             1
                         in
                         let
                           (v__middle'6433, v__postfix'6434)
                         =
                           Obj.magic
                             Boot.Intrinsics.Mseq.split_at
                             v__splitTemp'6432
                             (Obj.magic
                                Int.sub
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.length
                                   v__splitTemp'6432)
                                0)
                         in
                         let v__seqElem'6435 =
                           Obj.magic
                             Boot.Intrinsics.Mseq.get
                             v__prefix'6431
                             0
                         in
                         Option.Some (v__seqElem'6430, v__middle'6428, v__seqElem'6435, v__middle'6433))))
          with
          | Option.Some (v_h1'2162, v_t1'2163, v_h2'2164, v_t2'2165) ->
              (if
                 Obj.magic
                   (Obj.magic
                      v_eq'2156
                      v_h1'2162
                      v_h2'2164)
               then
                 Obj.magic
                   v_work
                   v_eq'2156
                   v_t1'2163
                   v_t2'2165
               else
                 Obj.magic
                   false)
          | Option.None ->
              (Obj.magic
                 true);;
let v_eqSeq =
  fun v_eq'2156 ->
    fun v_s1'2157 ->
      fun v_s2'2158 ->
        let v_n1'2166 =
          Obj.magic
            Boot.Intrinsics.Mseq.length
            v_s1'2157
        in
        let v_n2'2167 =
          Obj.magic
            Boot.Intrinsics.Mseq.length
            v_s2'2158
        in
        let v_ndiff'2168 =
          Obj.magic
            Int.sub
            v_n1'2166
            v_n2'2167
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ndiff'2168
               0)
        then
          Obj.magic
            v_work
            v_eq'2156
            v_s1'2157
            v_s2'2158
        else
          Obj.magic
            false;;
let rec v_unfoldr =
    fun v_f'2173 ->
      fun v_b0'2174 ->
        let v_fb'2175 =
          Obj.magic
            v_f'2173
            v_b0'2174
        in
        let v_defaultCase'6436 =
          fun nv_ ->
            failwith
              "FILE \"/home/wikman/.local/lib/mcore/stdlib/seq.mc\" 103:7-103:12 ERROR: Reached a never term, which should be impossible in a well-typed program."
        in
        match
          Obj.magic
            v_fb'2175
        with
        | CSome'2151 v_x'6437 ->
            (match
               Obj.magic
                 (let v__target'6438 =
                    Obj.magic
                      Obj.magic
                      v_x'6437
                  in
                  let
                    CRec'6378 ({l0 = v_0'6439;l1 = v_1'6440})
                  =
                    Obj.magic
                      Obj.magic
                      v__target'6438
                  in
                  Option.Some (v_0'6439, v_1'6440))
             with
             | Option.Some (v_x'2176, v_b1'2177) ->
                 (Obj.magic
                    Boot.Intrinsics.Mseq.cons
                    v_x'2176
                    (Obj.magic
                       v_unfoldr
                       v_f'2173
                       v_b1'2177))
             | Option.None ->
                 (Obj.magic
                    (Obj.magic
                       v_defaultCase'6436
                       ())))
        | CNone'2153 ->
            (Obj.magic
               (Obj.magic
                  Boot.Intrinsics.Mseq.Helpers.of_array
                  [|  |]))
        | _ ->
            (Obj.magic
               (v_defaultCase'6436
                  ()));;
let v_join =
  fun v_seqs'2178 ->
    Obj.magic
      Boot.Intrinsics.Mseq.Helpers.fold_left
      Boot.Intrinsics.Mseq.concat
      (Obj.magic
         Boot.Intrinsics.Mseq.Helpers.of_array
         [|  |])
      v_seqs'2178;;
let v_printLn =
  fun v_s'2180 ->
    let v_'2181 =
      Obj.magic
        Boot.Intrinsics.IO.print
        (Obj.magic
           Boot.Intrinsics.Mseq.concat
           v_s'2180
           (Obj.magic
              Boot.Intrinsics.Mseq.Helpers.of_array
              [| (10) |]))
    in
    Obj.magic
      Boot.Intrinsics.IO.flush_stdout
      ();;
let v_eqChar =
  fun v_c1'2183 ->
    fun v_c2'2184 ->
      Obj.magic
        Int.equal
        v_c1'2183
        v_c2'2184;;
let v_externalExp =
  fun v_x'6442 ->
    (Float.exp)
      v_x'6442;;
let v_exp =
  fun v_x'2187 ->
    Obj.magic
      v_externalExp
      v_x'2187;;
let v_eqString =
  fun v_eqSeq ->
    fun v_s1'2189 ->
      fun v_s2'2190 ->
        Obj.magic
          v_eqSeq
          Int.equal
          v_s1'2189
          v_s2'2190;;
let rec v_string2int_rechelper =
    fun v_s'2194 ->
      let v_len'2195 =
        Obj.magic
          Boot.Intrinsics.Mseq.length
          v_s'2194
      in
      let v_last'2196 =
        Obj.magic
          Int.sub
          v_len'2195
          1
      in
      if
        Obj.magic
          (Obj.magic
             Int.equal
             v_len'2195
             0)
      then
        0
      else
        Obj.magic
          (let v_lsd'2197 =
             Obj.magic
               Int.sub
               (Obj.magic
                  Fun.id
                  (Obj.magic
                     Boot.Intrinsics.Mseq.get
                     v_s'2194
                     v_last'2196))
               (Obj.magic
                  Fun.id
                  48)
           in
           let v_rest'2198 =
             Obj.magic
               Int.mul
               10
               (Obj.magic
                  v_string2int_rechelper
                  (Obj.magic
                     Boot.Intrinsics.Mseq.subsequence
                     v_s'2194
                     0
                     v_last'2196))
           in
           Obj.magic
             Int.add
             v_rest'2198
             v_lsd'2197);;
let v_string2int =
  fun v_s'2192 ->
    if
      Obj.magic
        Boot.Intrinsics.Mseq.null
        v_s'2192
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
                   v_s'2192))
         then
           Obj.magic
             Int.neg
             (Obj.magic
                v_string2int_rechelper
                (Obj.magic
                   Boot.Intrinsics.Mseq.tail
                   v_s'2192))
         else
           Obj.magic
             (Obj.magic
                v_string2int_rechelper
                v_s'2192));;
let rec v_int2string_rechelper =
    fun v_n'2202 ->
      if
        Obj.magic
          (Obj.magic
             ((<) : int -> int -> bool)
             v_n'2202
             10)
      then
        Obj.magic
          Boot.Intrinsics.Mseq.Helpers.of_array
          [| (Obj.magic
              (Obj.magic
                 Fun.id
                 (Obj.magic
                    Int.add
                    v_n'2202
                    (Obj.magic
                       Fun.id
                       48)))) |]
      else
        Obj.magic
          (let v_d'2203 =
             Obj.magic
               Boot.Intrinsics.Mseq.Helpers.of_array
               [| (Obj.magic
                   (Obj.magic
                      Fun.id
                      (Obj.magic
                         Int.add
                         (Obj.magic
                            Int.rem
                            v_n'2202
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
                   v_n'2202
                   10))
             v_d'2203);;
let v_int2string =
  fun v_n'2200 ->
    if
      Obj.magic
        (Obj.magic
           ((<) : int -> int -> bool)
           v_n'2200
           0)
    then
      Obj.magic
        Boot.Intrinsics.Mseq.cons
        45
        (Obj.magic
           v_int2string_rechelper
           (Obj.magic
              Int.neg
              v_n'2200))
    else
      Obj.magic
        (Obj.magic
           v_int2string_rechelper
           v_n'2200);;
let v__prod =
  Obj.magic
    Boot.Intrinsics.Mseq.Helpers.fold_left
    Int.mul
    1;;
let v_f =
  fun v_d'2208 ->
    fun v_kidx'2209 ->
      match
        Obj.magic
          (let v__target'6443 =
             v_kidx'2209
           in
           let
             CRec'6378 ({l0 = v_0'6444;l1 = v_1'6445})
           =
             Obj.magic
               Obj.magic
               v__target'6443
           in
           Option.Some (v_0'6444, v_1'6445))
      with
      | Option.Some (v_k'2210, v_idx'2211) ->
          (CRec'6378 { l0 =
               (Obj.repr
                 (Obj.magic
                    Int.div
                    v_k'2210
                    v_d'2208));
             l1 =
               (Obj.repr
                 (Obj.magic
                    Boot.Intrinsics.Mseq.cons
                    (Obj.magic
                       Int.rem
                       v_k'2210
                       v_d'2208)
                    v_idx'2211)) })
      | Option.None ->
          (Obj.magic
             (failwith
                "FILE \"/home/wikman/.local/lib/mcore/stdlib/tensor.mc\" 21:9-21:14 ERROR: Reached a never term, which should be impossible in a well-typed program."));;
let v_linearToCartesianIndex =
  fun v_shape'2206 ->
    fun v_k'2207 ->
      let v_r'2213 =
        Obj.magic
          Boot.Intrinsics.Mseq.Helpers.fold_right
          v_f
          (CRec'6378 { l0 =
               (Obj.repr
                 v_k'2207);
             l1 =
               (Obj.repr
                 (Obj.magic
                    Boot.Intrinsics.Mseq.Helpers.of_array
                    [|  |])) })
          v_shape'2206
      in
      let
        CRec'6378 ({l1 = v_X'2214})
      =
        Obj.magic
          v_r'2213
      in
      Obj.magic
        v_X'2214;;
let v_tensorHasShape =
  fun v_t'2217 ->
    fun v_shape'2218 ->
      Obj.magic
        v_eqSeq
        Int.equal
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_t'2217)
        v_shape'2218;;
let v_tensorHasSameShape =
  fun v_t1'2222 ->
    fun v_t2'2223 ->
      Obj.magic
        v_eqSeq
        Int.equal
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_t1'2222)
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_t2'2223);;
let v_tensorCreate =
  Boot.Intrinsics.T.create_generic_packed;;
let v_t'5270 =
  fun v_seq'2230 ->
    fun v_idx'2232 ->
      Obj.magic
        Boot.Intrinsics.Mseq.get
        v_seq'2230
        (Obj.magic
           Boot.Intrinsics.Mseq.get
           v_idx'2232
           0);;
let v_tensorOfSeqOrElse =
  fun v_f'2227 ->
    fun v_tcreate'2228 ->
      fun v_shape'2229 ->
        fun v_seq'2230 ->
          let v_n'2231 =
            Obj.magic
              Boot.Intrinsics.Mseq.length
              v_seq'2230
          in
          if
            Obj.magic
              (Obj.magic
                 ((<>) : int -> int -> bool)
                 v_n'2231
                 (Obj.magic
                    v__prod
                    v_shape'2229))
          then
            Obj.magic
              v_f'2227
              ()
          else
            Obj.magic
              (let v_t'2233 =
                 Obj.magic
                   v_tcreate'2228
                   (Obj.magic
                      Boot.Intrinsics.Mseq.Helpers.of_array
                      [| (Obj.magic
                          v_n'2231) |])
                   (Obj.magic
                      v_t'5270
                      v_seq'2230)
               in
               Obj.magic
                 Boot.Intrinsics.T.reshape_exn
                 v_t'2233
                 v_shape'2229);;
let v_t'5271 =
  fun v_'2236 ->
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
    v_t'5271;;
let v_t'5272 =
  fun v_t'2240 ->
    fun v_n'2241 ->
      fun v_i'2242 ->
        if
          Obj.magic
            (Obj.magic
               ((<) : int -> int -> bool)
               v_i'2242
               v_n'2241)
        then
          CSome'2151 (Obj.repr
             (CRec'6378 { l0 =
                  (Obj.repr
                    (Obj.magic
                       Boot.Intrinsics.T.get_exn
                       v_t'2240
                       (Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.of_array
                          [| (Obj.magic
                              v_i'2242) |])));
                l1 =
                  (Obj.repr
                    (Obj.magic
                       Int.add
                       v_i'2242
                       1)) }))
        else
          Obj.magic
            CNone'2153;;
let v_tensorToSeqOrElse =
  fun v_f'2239 ->
    fun v_t'2240 ->
      if
        Obj.magic
          (Obj.magic
             ((<>) : int -> int -> bool)
             (Obj.magic
                Boot.Intrinsics.T.rank
                v_t'2240)
             1)
      then
        Obj.magic
          v_f'2239
          ()
      else
        Obj.magic
          (let v_n'2241 =
             Obj.magic
               Boot.Intrinsics.Mseq.get
               (Obj.magic
                  Boot.Intrinsics.T.shape
                  v_t'2240)
               0
           in
           Obj.magic
             v_unfoldr
             (Obj.magic
                v_t'5272
                v_t'2240
                v_n'2241)
             0);;
let v_t'5273 =
  fun v_'2245 ->
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
    v_t'5273;;
let v_tensorSize'2249 =
  fun v_t'2248 ->
    Obj.magic
      v__prod
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2248);;
let v_t'5274 =
  fun v_g'2253 ->
    fun v_v2'2258 ->
      fun v_i'2259 ->
        fun v_e'2260 ->
          Obj.magic
            Boot.Intrinsics.T.set_exn
            v_v2'2258
            (Obj.magic
               Boot.Intrinsics.Mseq.Helpers.of_array
               [| (Obj.magic
                   v_i'2259) |])
            (Obj.magic
               v_g'2253
               (Obj.magic
                  Boot.Intrinsics.T.get_exn
                  v_e'2260
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [|  |]))
               (Obj.magic
                  Boot.Intrinsics.T.get_exn
                  v_v2'2258
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (Obj.magic
                         v_i'2259) |])));;
let v_tensorMapOrElse =
  fun v_f'2252 ->
    fun v_g'2253 ->
      fun v_t1'2254 ->
        fun v_t2'2255 ->
          if
            Obj.magic
              (Obj.magic
                 v_tensorHasSameShape
                 v_t1'2254
                 v_t2'2255)
          then
            let v_n'2256 =
              Obj.magic
                v_tensorSize'2249
                v_t1'2254
            in
            let v_v1'2257 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t1'2254
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2256) |])
            in
            let v_v2'2258 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t2'2255
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2256) |])
            in
            Obj.magic
              Boot.Intrinsics.T.iter_slice
              (Obj.magic
                 v_t'5274
                 v_g'2253
                 v_v2'2258)
              v_v1'2257
          else
            Obj.magic
              (Obj.magic
                 v_f'2252
                 ());;
let v_t'5275 =
  fun v_'2262 ->
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
    v_t'5275;;
let v_t'5276 =
  fun v_g'2267 ->
    fun v_shape'2270 ->
      fun v_v2'2273 ->
        fun v_i'2274 ->
          fun v_e'2275 ->
            let v_idx'2276 =
              Obj.magic
                v_linearToCartesianIndex
                v_shape'2270
                v_i'2274
            in
            Obj.magic
              Boot.Intrinsics.T.set_exn
              v_v2'2273
              (Obj.magic
                 Boot.Intrinsics.Mseq.Helpers.of_array
                 [| (Obj.magic
                     v_i'2274) |])
              (Obj.magic
                 v_g'2267
                 v_idx'2276
                 (Obj.magic
                    Boot.Intrinsics.T.get_exn
                    v_e'2275
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [|  |]))
                 (Obj.magic
                    Boot.Intrinsics.T.get_exn
                    v_v2'2273
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_i'2274) |])));;
let v_tensorMapiOrElse =
  fun v_f'2266 ->
    fun v_g'2267 ->
      fun v_t1'2268 ->
        fun v_t2'2269 ->
          let v_shape'2270 =
            Obj.magic
              Boot.Intrinsics.T.shape
              v_t1'2268
          in
          if
            Obj.magic
              (Obj.magic
                 v_tensorHasShape
                 v_t2'2269
                 v_shape'2270)
          then
            let v_n'2271 =
              Obj.magic
                v_tensorSize'2249
                v_t1'2268
            in
            let v_v1'2272 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t1'2268
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2271) |])
            in
            let v_v2'2273 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t2'2269
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2271) |])
            in
            Obj.magic
              Boot.Intrinsics.T.iter_slice
              (Obj.magic
                 v_t'5276
                 v_g'2267
                 v_shape'2270
                 v_v2'2273)
              v_v1'2272
          else
            Obj.magic
              (Obj.magic
                 v_f'2266
                 ());;
let v_t'5277 =
  fun v_'2278 ->
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
    v_t'5277;;
let v_t'5278 =
  fun v_x'2283 ->
    fun v_'2284 ->
      v_x'2283;;
let v_tensorBlitExn =
  fun v_t1'2281 ->
    fun v_t2'2282 ->
      if
        Obj.magic
          (Obj.magic
             v_tensorHasSameShape
             v_t1'2281
             v_t2'2282)
      then
        Obj.magic
          v_tensorMapExn
          v_t'5278
          v_t1'2281
          v_t2'2282
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
let v_t'5279 =
  fun v_'2287 ->
    0;;
let v_test =
  let v_t1'2286 =
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
  let v_t2'2288 =
    Obj.magic
      Boot.Intrinsics.T.create_generic_packed
      (Obj.magic
         Boot.Intrinsics.Mseq.Helpers.of_array
         [| (3) |])
      v_t'5279
  in
  ();;
let v_externalGaussianSample =
  fun v_x'6446 ->
    fun v_x'6447 ->
      (Owl_stats.gaussian_rvs)
        ~mu:(v_x'6446)
        ~sigma:(v_x'6447);;
let v_gaussianSample =
  fun v_mu'2292 ->
    fun v_sigma'2293 ->
      Obj.magic
        v_externalGaussianSample
        v_mu'2292
        v_sigma'2293;;
let v_t'5280 =
  fun v_acc'2296 ->
    fun v_e'2297 ->
      Obj.magic
        Int.mul
        v_acc'2296
        v_e'2297;;
let v_tensorSize'2298 =
  fun v_t'2295 ->
    Obj.magic
      Boot.Intrinsics.Mseq.Helpers.fold_left
      v_t'5280
      1
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2295);;
let v_t'5281 =
  fun v_w'2300 ->
    fun v_x'2301 ->
      fun v_m'2305 ->
        fun v_x_offset'2309 ->
          fun v_i'2311 ->
            fun v_acc'2313 ->
              fun v_j'2314 ->
                Obj.magic
                  Float.add
                  v_acc'2313
                  (Obj.magic
                     Float.mul
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_w'2300
                        (Obj.magic
                           Int.add
                           v_i'2311
                           (Obj.magic
                              Int.mul
                              v_m'2305
                              v_j'2314)))
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_x'2301
                        (Obj.magic
                           Int.add
                           v_x_offset'2309
                           v_j'2314)));;
let v_iterfun'2316 =
  fun v_w'2300 ->
    fun v_x'2301 ->
      fun v_b'2302 ->
        fun v_z'2303 ->
          fun v_m'2305 ->
            fun v_n'2306 ->
              fun v_i'2307 ->
                let v_s_idx'2308 =
                  Obj.magic
                    Int.div
                    v_i'2307
                    v_m'2305
                in
                let v_x_offset'2309 =
                  Obj.magic
                    Int.mul
                    v_s_idx'2308
                    v_n'2306
                in
                let v_z_idx'2310 =
                  v_i'2307
                in
                let v_i'2311 =
                  Obj.magic
                    Int.rem
                    v_i'2307
                    v_m'2305
                in
                let v_acc_init'2312 =
                  Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_b'2302
                    v_i'2311
                in
                let v_v'2315 =
                  let rec v_loop'6246 =
                      fun v_acc'6247 ->
                        fun v_i'6248 ->
                          if
                            Obj.magic
                              (Obj.magic
                                 ((<) : int -> int -> bool)
                                 v_i'6248
                                 v_n'2306)
                          then
                            let v_t'6249 =
                              Obj.magic
                                v_t'5281
                                v_w'2300
                                v_x'2301
                                v_m'2305
                                v_x_offset'2309
                                v_i'2311
                                v_acc'6247
                                v_i'6248
                            in
                            Obj.magic
                              v_loop'6246
                              v_t'6249
                              (Obj.magic
                                 Int.add
                                 v_i'6248
                                 1)
                          else
                            Obj.magic
                              v_acc'6247
                  in Obj.magic
                    v_loop'6246
                    v_acc_init'2312
                    0
                in
                Obj.magic
                  Boot.Intrinsics.T.linear_set_exn
                  v_z'2303
                  v_z_idx'2310
                  v_v'2315;;
let v_tensorOpExn__z___Wx_B =
  fun v_s_max'2299 ->
    fun v_w'2300 ->
      fun v_x'2301 ->
        fun v_b'2302 ->
          fun v_z'2303 ->
            let v_w_shape'2304 =
              Obj.magic
                Boot.Intrinsics.T.shape
                v_w'2300
            in
            let v_m'2305 =
              Obj.magic
                Boot.Intrinsics.Mseq.get
                v_w_shape'2304
                1
            in
            let v_n'2306 =
              Obj.magic
                Boot.Intrinsics.Mseq.get
                v_w_shape'2304
                0
            in
            let rec v_loop'6250 =
                fun v_acc'6251 ->
                  fun v_i'6252 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6252
                           (Obj.magic
                              Int.mul
                              v_s_max'2299
                              v_m'2305))
                    then
                      let v_t'6253 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_iterfun'2316
                               v_w'2300
                               v_x'2301
                               v_b'2302
                               v_z'2303
                               v_m'2305
                               v_n'2306)
                          v_acc'6251
                          v_i'6252
                      in
                      Obj.magic
                        v_loop'6250
                        v_t'6253
                        (Obj.magic
                           Int.add
                           v_i'6252
                           1)
                    else
                      Obj.magic
                        v_acc'6251
            in Obj.magic
              v_loop'6250
              ()
              0;;
let v_t'5282 =
  fun v_x'2319 ->
    fun v_z'2321 ->
      fun v_x_offset'2330 ->
        fun v_y_val'2332 ->
          fun v_z_idx'2333 ->
            fun v_row'2334 ->
              let v_'2335 =
                Obj.magic
                  Boot.Intrinsics.T.linear_set_exn
                  v_z'2321
                  v_z_idx'2333
                  (Obj.magic
                     Float.mul
                     v_y_val'2332
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_x'2319
                        (Obj.magic
                           Int.add
                           v_x_offset'2330
                           v_row'2334)))
              in
              Obj.magic
                Int.add
                v_z_idx'2333
                1;;
let v_iterfun'2337 =
  fun v_x'2319 ->
    fun v_y'2320 ->
      fun v_z'2321 ->
        fun v_m'2323 ->
          fun v_n'2324 ->
            fun v_m_x_n'2325 ->
              fun v_i'2326 ->
                let v_s_idx'2327 =
                  Obj.magic
                    Int.div
                    v_i'2326
                    v_n'2324
                in
                let v_col'2328 =
                  Obj.magic
                    Int.rem
                    v_i'2326
                    v_n'2324
                in
                let v_z_offset'2329 =
                  Obj.magic
                    Int.add
                    (Obj.magic
                       Int.mul
                       v_s_idx'2327
                       v_m_x_n'2325)
                    (Obj.magic
                       Int.mul
                       v_m'2323
                       v_col'2328)
                in
                let v_x_offset'2330 =
                  Obj.magic
                    Int.mul
                    v_s_idx'2327
                    v_m'2323
                in
                let v_y_offset'2331 =
                  Obj.magic
                    Int.mul
                    v_s_idx'2327
                    v_n'2324
                in
                let v_y_val'2332 =
                  Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_y'2320
                    (Obj.magic
                       Int.add
                       v_y_offset'2331
                       v_col'2328)
                in
                let v_'2336 =
                  let rec v_loop'6254 =
                      fun v_acc'6255 ->
                        fun v_i'6256 ->
                          if
                            Obj.magic
                              (Obj.magic
                                 ((<) : int -> int -> bool)
                                 v_i'6256
                                 v_m'2323)
                          then
                            let v_t'6257 =
                              Obj.magic
                                v_t'5282
                                v_x'2319
                                v_z'2321
                                v_x_offset'2330
                                v_y_val'2332
                                v_acc'6255
                                v_i'6256
                            in
                            Obj.magic
                              v_loop'6254
                              v_t'6257
                              (Obj.magic
                                 Int.add
                                 v_i'6256
                                 1)
                          else
                            Obj.magic
                              v_acc'6255
                  in Obj.magic
                    v_loop'6254
                    v_z_offset'2329
                    0
                in
                ();;
let v_tensorOpExn__z___x___y_T =
  fun v_s_max'2318 ->
    fun v_x'2319 ->
      fun v_y'2320 ->
        fun v_z'2321 ->
          let v_z_shape'2322 =
            Obj.magic
              Boot.Intrinsics.T.shape
              v_z'2321
          in
          let v_m'2323 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_z_shape'2322
              2
          in
          let v_n'2324 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_z_shape'2322
              1
          in
          let v_m_x_n'2325 =
            Obj.magic
              Int.mul
              v_m'2323
              v_n'2324
          in
          let rec v_loop'6258 =
              fun v_acc'6259 ->
                fun v_i'6260 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6260
                         (Obj.magic
                            Int.mul
                            v_s_max'2318
                            v_n'2324))
                  then
                    let v_t'6261 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2337
                             v_x'2319
                             v_y'2320
                             v_z'2321
                             v_m'2323
                             v_n'2324
                             v_m_x_n'2325)
                        v_acc'6259
                        v_i'6260
                    in
                    Obj.magic
                      v_loop'6258
                      v_t'6261
                      (Obj.magic
                         Int.add
                         v_i'6260
                         1)
                  else
                    Obj.magic
                      v_acc'6259
          in Obj.magic
            v_loop'6258
            ()
            0;;
let v_t'5283 =
  fun v_x'2340 ->
    fun v_w'2341 ->
      fun v_m'2344 ->
        fun v_x_offset'2350 ->
          fun v_j'2351 ->
            fun v_acc'2352 ->
              fun v_i'2353 ->
                Obj.magic
                  Float.add
                  v_acc'2352
                  (Obj.magic
                     Float.mul
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_w'2341
                        (Obj.magic
                           Int.add
                           v_i'2353
                           (Obj.magic
                              Int.mul
                              v_m'2344
                              v_j'2351)))
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_x'2340
                        (Obj.magic
                           Int.add
                           v_x_offset'2350
                           v_i'2353)));;
let v_iterfun'2355 =
  fun v_x'2340 ->
    fun v_w'2341 ->
      fun v_z'2342 ->
        fun v_m'2344 ->
          fun v_n'2345 ->
            fun v_j'2346 ->
              let v_s_idx'2347 =
                Obj.magic
                  Int.div
                  v_j'2346
                  v_n'2345
              in
              let v_n_idx'2348 =
                Obj.magic
                  Int.rem
                  v_j'2346
                  v_n'2345
              in
              let v_z_idx'2349 =
                v_j'2346
              in
              let v_x_offset'2350 =
                Obj.magic
                  Int.mul
                  v_s_idx'2347
                  v_m'2344
              in
              let v_j'2351 =
                v_n_idx'2348
              in
              let v_v'2354 =
                let rec v_loop'6262 =
                    fun v_acc'6263 ->
                      fun v_i'6264 ->
                        if
                          Obj.magic
                            (Obj.magic
                               ((<) : int -> int -> bool)
                               v_i'6264
                               v_m'2344)
                        then
                          let v_t'6265 =
                            Obj.magic
                              v_t'5283
                              v_x'2340
                              v_w'2341
                              v_m'2344
                              v_x_offset'2350
                              v_j'2351
                              v_acc'6263
                              v_i'6264
                          in
                          Obj.magic
                            v_loop'6262
                            v_t'6265
                            (Obj.magic
                               Int.add
                               v_i'6264
                               1)
                        else
                          Obj.magic
                            v_acc'6263
                in Obj.magic
                  v_loop'6262
                  0.
                  0
              in
              Obj.magic
                Boot.Intrinsics.T.linear_set_exn
                v_z'2342
                v_z_idx'2349
                v_v'2354;;
let v_tensorOpExn__z____x_T___W__T =
  fun v_s_max'2339 ->
    fun v_x'2340 ->
      fun v_w'2341 ->
        fun v_z'2342 ->
          let v_w_shape'2343 =
            Obj.magic
              Boot.Intrinsics.T.shape
              v_w'2341
          in
          let v_m'2344 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_w_shape'2343
              1
          in
          let v_n'2345 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_w_shape'2343
              0
          in
          let rec v_loop'6266 =
              fun v_acc'6267 ->
                fun v_i'6268 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6268
                         (Obj.magic
                            Int.mul
                            v_s_max'2339
                            v_n'2345))
                  then
                    let v_t'6269 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2355
                             v_x'2340
                             v_w'2341
                             v_z'2342
                             v_m'2344
                             v_n'2345)
                        v_acc'6267
                        v_i'6268
                    in
                    Obj.magic
                      v_loop'6266
                      v_t'6269
                      (Obj.magic
                         Int.add
                         v_i'6268
                         1)
                  else
                    Obj.magic
                      v_acc'6267
          in Obj.magic
            v_loop'6266
            ()
            0;;
let v_iterfun'2364 =
  fun v_x'2358 ->
    fun v_z'2359 ->
      fun v_i'2362 ->
        let v_x_i'2363 =
          Obj.magic
            Boot.Intrinsics.T.linear_get_exn
            v_x'2358
            v_i'2362
        in
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2359
          v_i'2362
          (if
             Obj.magic
               (Obj.magic
                  ((>) : float -> float -> bool)
                  v_x_i'2363
                  0.)
           then
             v_x_i'2363
           else
             Obj.magic
               0.);;
let v_tensorOpExn__z___ReLU_x_ =
  fun v_s_max'2357 ->
    fun v_x'2358 ->
      fun v_z'2359 ->
        let v_s'2360 =
          Obj.magic
            Boot.Intrinsics.Mseq.get
            (Obj.magic
               Boot.Intrinsics.T.shape
               v_x'2358)
            0
        in
        let v_m'2361 =
          Obj.magic
            Int.div
            (Obj.magic
               v_tensorSize'2298
               v_x'2358)
            v_s'2360
        in
        let rec v_loop'6270 =
            fun v_acc'6271 ->
              fun v_i'6272 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6272
                       (Obj.magic
                          Int.mul
                          v_s_max'2357
                          v_m'2361))
                then
                  let v_t'6273 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2364
                           v_x'2358
                           v_z'2359)
                      v_acc'6271
                      v_i'6272
                  in
                  Obj.magic
                    v_loop'6270
                    v_t'6273
                    (Obj.magic
                       Int.add
                       v_i'6272
                       1)
                else
                  Obj.magic
                    v_acc'6271
        in Obj.magic
          v_loop'6270
          ()
          0;;
let v_iterfun'2374 =
  fun v_x'2367 ->
    fun v_z'2369 ->
      fun v_i'2372 ->
        let v_x_i'2373 =
          Obj.magic
            Boot.Intrinsics.T.linear_get_exn
            v_x'2367
            v_i'2372
        in
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2369
          v_i'2372
          (Obj.magic
             v_exp
             v_x_i'2373);;
let v_t'5284 =
  fun v_z'2369 ->
    fun v_offset'2377 ->
      fun v_acc'2378 ->
        fun v_i'2379 ->
          Obj.magic
            Float.add
            v_acc'2378
            (Obj.magic
               Boot.Intrinsics.T.linear_get_exn
               v_z'2369
               (Obj.magic
                  Int.add
                  v_offset'2377
                  v_i'2379));;
let v_iterfunSummarize =
  fun v_expsumbuf'2368 ->
    fun v_z'2369 ->
      fun v_m'2371 ->
        fun v_s_idx'2376 ->
          let v_offset'2377 =
            Obj.magic
              Int.mul
              v_s_idx'2376
              v_m'2371
          in
          let v_expsum'2380 =
            let rec v_loop'6274 =
                fun v_acc'6275 ->
                  fun v_i'6276 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6276
                           v_m'2371)
                    then
                      let v_t'6277 =
                        Obj.magic
                          v_t'5284
                          v_z'2369
                          v_offset'2377
                          v_acc'6275
                          v_i'6276
                      in
                      Obj.magic
                        v_loop'6274
                        v_t'6277
                        (Obj.magic
                           Int.add
                           v_i'6276
                           1)
                    else
                      Obj.magic
                        v_acc'6275
            in Obj.magic
              v_loop'6274
              0.
              0
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_expsumbuf'2368
            v_s_idx'2376
            v_expsum'2380;;
let v_iterfunRegularize =
  fun v_expsumbuf'2368 ->
    fun v_z'2369 ->
      fun v_m'2371 ->
        fun v_i'2383 ->
          let v_s_idx'2384 =
            Obj.magic
              Int.div
              v_i'2383
              v_m'2371
          in
          let v_expsum'2385 =
            Obj.magic
              Boot.Intrinsics.T.linear_get_exn
              v_expsumbuf'2368
              v_s_idx'2384
          in
          let v_z_i'2386 =
            Obj.magic
              Boot.Intrinsics.T.linear_get_exn
              v_z'2369
              v_i'2383
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_z'2369
            v_i'2383
            (Obj.magic
               Float.div
               v_z_i'2386
               v_expsum'2385);;
let v_tensorOpExn__z___SoftMax_x_ =
  fun v_s_max'2366 ->
    fun v_x'2367 ->
      fun v_expsumbuf'2368 ->
        fun v_z'2369 ->
          let v_s'2370 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_x'2367)
              0
          in
          let v_m'2371 =
            Obj.magic
              Int.div
              (Obj.magic
                 v_tensorSize'2298
                 v_x'2367)
              v_s'2370
          in
          let v_'2375 =
            let rec v_loop'6278 =
                fun v_acc'6279 ->
                  fun v_i'6280 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6280
                           (Obj.magic
                              Int.mul
                              v_s_max'2366
                              v_m'2371))
                    then
                      let v_t'6281 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_iterfun'2374
                               v_x'2367
                               v_z'2369)
                          v_acc'6279
                          v_i'6280
                      in
                      Obj.magic
                        v_loop'6278
                        v_t'6281
                        (Obj.magic
                           Int.add
                           v_i'6280
                           1)
                    else
                      Obj.magic
                        v_acc'6279
            in Obj.magic
              v_loop'6278
              ()
              0
          in
          let v_'2382 =
            let rec v_loop'6282 =
                fun v_acc'6283 ->
                  fun v_i'6284 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6284
                           v_s_max'2366)
                    then
                      let v_t'6285 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_iterfunSummarize
                               v_expsumbuf'2368
                               v_z'2369
                               v_m'2371)
                          v_acc'6283
                          v_i'6284
                      in
                      Obj.magic
                        v_loop'6282
                        v_t'6285
                        (Obj.magic
                           Int.add
                           v_i'6284
                           1)
                    else
                      Obj.magic
                        v_acc'6283
            in Obj.magic
              v_loop'6282
              ()
              0
          in
          let rec v_loop'6286 =
              fun v_acc'6287 ->
                fun v_i'6288 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6288
                         (Obj.magic
                            Int.mul
                            v_s_max'2366
                            v_m'2371))
                  then
                    let v_t'6289 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfunRegularize
                             v_expsumbuf'2368
                             v_z'2369
                             v_m'2371)
                        v_acc'6287
                        v_i'6288
                    in
                    Obj.magic
                      v_loop'6286
                      v_t'6289
                      (Obj.magic
                         Int.add
                         v_i'6288
                         1)
                  else
                    Obj.magic
                      v_acc'6287
          in Obj.magic
            v_loop'6286
            ()
            0;;
let v_iterfun'2398 =
  fun v_h'2390 ->
    fun v_dldh'2391 ->
      fun v_z'2392 ->
        fun v_i'2395 ->
          let v_dhds_ii'2396 =
            if
              Obj.magic
                (Obj.magic
                   ((>) : float -> float -> bool)
                   (Obj.magic
                      Boot.Intrinsics.T.linear_get_exn
                      v_h'2390
                      v_i'2395)
                   0.)
            then
              1.
            else
              Obj.magic
                0.
          in
          let v_dldh_i'2397 =
            Obj.magic
              Boot.Intrinsics.T.linear_get_exn
              v_dldh'2391
              v_i'2395
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_z'2392
            v_i'2395
            (Obj.magic
               Float.mul
               v_dhds_ii'2396
               v_dldh_i'2397);;
let v_tensorOpExn__z___d_dx_l_ReLU_x__ =
  fun v_s_max'2389 ->
    fun v_h'2390 ->
      fun v_dldh'2391 ->
        fun v_z'2392 ->
          let v_s'2393 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_h'2390)
              0
          in
          let v_m'2394 =
            Obj.magic
              Int.div
              (Obj.magic
                 v_tensorSize'2298
                 v_h'2390)
              v_s'2393
          in
          let rec v_loop'6290 =
              fun v_acc'6291 ->
                fun v_i'6292 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6292
                         (Obj.magic
                            Int.mul
                            v_s_max'2389
                            v_m'2394))
                  then
                    let v_t'6293 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2398
                             v_h'2390
                             v_dldh'2391
                             v_z'2392)
                        v_acc'6291
                        v_i'6292
                    in
                    Obj.magic
                      v_loop'6290
                      v_t'6293
                      (Obj.magic
                         Int.add
                         v_i'6292
                         1)
                  else
                    Obj.magic
                      v_acc'6291
          in Obj.magic
            v_loop'6290
            ()
            0;;
let v_t'5285 =
  fun v_p'2401 ->
    fun v_dldp'2402 ->
      fun v_s_offset'2408 ->
        fun v_i'2409 ->
          fun v_p_i'2410 ->
            fun v_acc'2411 ->
              fun v_j'2412 ->
                let v_s_ij'2414 =
                  if
                    Obj.magic
                      (Obj.magic
                         Int.equal
                         v_j'2412
                         v_i'2409)
                  then
                    Obj.magic
                      Float.sub
                      v_p_i'2410
                      (Obj.magic
                         Float.mul
                         v_p_i'2410
                         v_p_i'2410)
                  else
                    Obj.magic
                      (let v_p_j'2413 =
                         Obj.magic
                           Boot.Intrinsics.T.linear_get_exn
                           v_p'2401
                           (Obj.magic
                              Int.add
                              v_s_offset'2408
                              v_j'2412)
                       in
                       Obj.magic
                         Float.neg
                         (Obj.magic
                            Float.mul
                            v_p_i'2410
                            v_p_j'2413))
                in
                let v_dldp_j'2415 =
                  Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_dldp'2402
                    (Obj.magic
                       Int.add
                       v_s_offset'2408
                       v_j'2412)
                in
                Obj.magic
                  Float.add
                  v_acc'2411
                  (Obj.magic
                     Float.mul
                     v_dldp_j'2415
                     v_s_ij'2414);;
let v_iterfun'2417 =
  fun v_p'2401 ->
    fun v_dldp'2402 ->
      fun v_z'2403 ->
        fun v_m'2405 ->
          fun v_i'2406 ->
            let v_s_idx'2407 =
              Obj.magic
                Int.div
                v_i'2406
                v_m'2405
            in
            let v_s_offset'2408 =
              Obj.magic
                Int.mul
                v_s_idx'2407
                v_m'2405
            in
            let v_i'2409 =
              Obj.magic
                Int.rem
                v_i'2406
                v_m'2405
            in
            let v_p_i'2410 =
              Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_p'2401
                (Obj.magic
                   Int.add
                   v_s_offset'2408
                   v_i'2409)
            in
            let v_v'2416 =
              let rec v_loop'6294 =
                  fun v_acc'6295 ->
                    fun v_i'6296 ->
                      if
                        Obj.magic
                          (Obj.magic
                             ((<) : int -> int -> bool)
                             v_i'6296
                             v_m'2405)
                      then
                        let v_t'6297 =
                          Obj.magic
                            v_t'5285
                            v_p'2401
                            v_dldp'2402
                            v_s_offset'2408
                            v_i'2409
                            v_p_i'2410
                            v_acc'6295
                            v_i'6296
                        in
                        Obj.magic
                          v_loop'6294
                          v_t'6297
                          (Obj.magic
                             Int.add
                             v_i'6296
                             1)
                      else
                        Obj.magic
                          v_acc'6295
              in Obj.magic
                v_loop'6294
                0.
                0
            in
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2403
              (Obj.magic
                 Int.add
                 v_s_offset'2408
                 v_i'2409)
              v_v'2416;;
let v_tensorOpExn__z___d_dx_l_SoftMax_x___ =
  fun v_s_max'2400 ->
    fun v_p'2401 ->
      fun v_dldp'2402 ->
        fun v_z'2403 ->
          let v_s'2404 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_p'2401)
              0
          in
          let v_m'2405 =
            Obj.magic
              Int.div
              (Obj.magic
                 v_tensorSize'2298
                 v_p'2401)
              v_s'2404
          in
          let rec v_loop'6298 =
              fun v_acc'6299 ->
                fun v_i'6300 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6300
                         (Obj.magic
                            Int.mul
                            v_s_max'2400
                            v_m'2405))
                  then
                    let v_t'6301 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2417
                             v_p'2401
                             v_dldp'2402
                             v_z'2403
                             v_m'2405)
                        v_acc'6299
                        v_i'6300
                    in
                    Obj.magic
                      v_loop'6298
                      v_t'6301
                      (Obj.magic
                         Int.add
                         v_i'6300
                         1)
                  else
                    Obj.magic
                      v_acc'6299
          in Obj.magic
            v_loop'6298
            ()
            0;;
let v_iterfun'2425 =
  fun v_x'2420 ->
    fun v_z'2421 ->
      fun v_i'2424 ->
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2421
          v_i'2424
          (Obj.magic
             Boot.Intrinsics.T.linear_get_exn
             v_x'2420
             v_i'2424);;
let v_tensorOpExn__z___x =
  fun v_s_max'2419 ->
    fun v_x'2420 ->
      fun v_z'2421 ->
        let v_s'2422 =
          Obj.magic
            Boot.Intrinsics.Mseq.get
            (Obj.magic
               Boot.Intrinsics.T.shape
               v_x'2420)
            0
        in
        let v_m'2423 =
          Obj.magic
            Int.div
            (Obj.magic
               v_tensorSize'2298
               v_x'2420)
            v_s'2422
        in
        let rec v_loop'6302 =
            fun v_acc'6303 ->
              fun v_i'6304 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6304
                       (Obj.magic
                          Int.mul
                          v_s_max'2419
                          v_m'2423))
                then
                  let v_t'6305 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2425
                           v_x'2420
                           v_z'2421)
                      v_acc'6303
                      v_i'6304
                  in
                  Obj.magic
                    v_loop'6302
                    v_t'6305
                    (Obj.magic
                       Int.add
                       v_i'6304
                       1)
                else
                  Obj.magic
                    v_acc'6303
        in Obj.magic
          v_loop'6302
          ()
          0;;
let v_iterfun'2433 =
  fun v_c'2428 ->
    fun v_z'2429 ->
      fun v_i'2432 ->
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2429
          v_i'2432
          (Obj.magic
             Float.mul
             (Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_z'2429
                v_i'2432)
             v_c'2428);;
let v_tensorOpExn__z____scalar_c_ =
  fun v_s_max'2427 ->
    fun v_c'2428 ->
      fun v_z'2429 ->
        let v_s'2430 =
          Obj.magic
            Boot.Intrinsics.Mseq.get
            (Obj.magic
               Boot.Intrinsics.T.shape
               v_z'2429)
            0
        in
        let v_m'2431 =
          Obj.magic
            Int.div
            (Obj.magic
               v_tensorSize'2298
               v_z'2429)
            v_s'2430
        in
        let rec v_loop'6306 =
            fun v_acc'6307 ->
              fun v_i'6308 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6308
                       (Obj.magic
                          Int.mul
                          v_s_max'2427
                          v_m'2431))
                then
                  let v_t'6309 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2433
                           v_c'2428
                           v_z'2429)
                      v_acc'6307
                      v_i'6308
                  in
                  Obj.magic
                    v_loop'6306
                    v_t'6309
                    (Obj.magic
                       Int.add
                       v_i'6308
                       1)
                else
                  Obj.magic
                    v_acc'6307
        in Obj.magic
          v_loop'6306
          ()
          0;;
let v_iterfun'2439 =
  fun v_c'2435 ->
    fun v_z'2436 ->
      fun v_i'2438 ->
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2436
          v_i'2438
          v_c'2435;;
let v_tensorOpExn__Z___scalar_c_ =
  fun v_c'2435 ->
    fun v_z'2436 ->
      let v_m'2437 =
        Obj.magic
          v_tensorSize'2298
          v_z'2436
      in
      let rec v_loop'6310 =
          fun v_acc'6311 ->
            fun v_i'6312 ->
              if
                Obj.magic
                  (Obj.magic
                     ((<) : int -> int -> bool)
                     v_i'6312
                     v_m'2437)
              then
                let v_t'6313 =
                  Obj.magic
                    (fun nv_ ->
                       Obj.magic
                         v_iterfun'2439
                         v_c'2435
                         v_z'2436)
                    v_acc'6311
                    v_i'6312
                in
                Obj.magic
                  v_loop'6310
                  v_t'6313
                  (Obj.magic
                     Int.add
                     v_i'6312
                     1)
              else
                Obj.magic
                  v_acc'6311
      in Obj.magic
        v_loop'6310
        ()
        0;;
let v_iterfun'2448 =
  fun v_x'2442 ->
    fun v_c'2443 ->
      fun v_z'2444 ->
        fun v_x_offset'2446 ->
          fun v_i'2447 ->
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2444
              v_i'2447
              (Obj.magic
                 Float.add
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_z'2444
                    v_i'2447)
                 (Obj.magic
                    Float.mul
                    (Obj.magic
                       Boot.Intrinsics.T.linear_get_exn
                       v_x'2442
                       (Obj.magic
                          Int.add
                          v_i'2447
                          v_x_offset'2446))
                    v_c'2443));;
let v_tensorOpExn__Z____x___scalar_c_ =
  fun v_s_idx'2441 ->
    fun v_x'2442 ->
      fun v_c'2443 ->
        fun v_z'2444 ->
          let v_m'2445 =
            Obj.magic
              v_tensorSize'2298
              v_z'2444
          in
          let v_x_offset'2446 =
            Obj.magic
              Int.mul
              v_s_idx'2441
              v_m'2445
          in
          let rec v_loop'6314 =
              fun v_acc'6315 ->
                fun v_i'6316 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6316
                         v_m'2445)
                  then
                    let v_t'6317 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2448
                             v_x'2442
                             v_c'2443
                             v_z'2444
                             v_x_offset'2446)
                        v_acc'6315
                        v_i'6316
                    in
                    Obj.magic
                      v_loop'6314
                      v_t'6317
                      (Obj.magic
                         Int.add
                         v_i'6316
                         1)
                  else
                    Obj.magic
                      v_acc'6315
          in Obj.magic
            v_loop'6314
            ()
            0;;
let v_iterfun'2458 =
  fun v_x'2451 ->
    fun v_c'2452 ->
      fun v_z'2453 ->
        fun v_z_offset'2455 ->
          fun v_i'2456 ->
            let v_z_idx'2457 =
              Obj.magic
                Int.add
                v_i'2456
                v_z_offset'2455
            in
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2453
              v_z_idx'2457
              (Obj.magic
                 Float.add
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_z'2453
                    v_z_idx'2457)
                 (Obj.magic
                    Float.mul
                    (Obj.magic
                       Boot.Intrinsics.T.linear_get_exn
                       v_x'2451
                       v_i'2456)
                    v_c'2452));;
let v_tensorOpExn__z____X___scalar_c_ =
  fun v_s_idx'2450 ->
    fun v_x'2451 ->
      fun v_c'2452 ->
        fun v_z'2453 ->
          let v_m'2454 =
            Obj.magic
              v_tensorSize'2298
              v_x'2451
          in
          let v_z_offset'2455 =
            Obj.magic
              Int.mul
              v_s_idx'2450
              v_m'2454
          in
          let rec v_loop'6318 =
              fun v_acc'6319 ->
                fun v_i'6320 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6320
                         v_m'2454)
                  then
                    let v_t'6321 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2458
                             v_x'2451
                             v_c'2452
                             v_z'2453
                             v_z_offset'2455)
                        v_acc'6319
                        v_i'6320
                    in
                    Obj.magic
                      v_loop'6318
                      v_t'6321
                      (Obj.magic
                         Int.add
                         v_i'6320
                         1)
                  else
                    Obj.magic
                      v_acc'6319
          in Obj.magic
            v_loop'6318
            ()
            0;;
let v_iterfun'2469 =
  fun v_y'2461 ->
    fun v_c'2462 ->
      fun v_z'2463 ->
        fun v_m'2464 ->
          fun v_i'2465 ->
            let v_idx'2466 =
              Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_y'2461
                v_i'2465
            in
            let v_offset'2467 =
              Obj.magic
                Int.mul
                v_i'2465
                v_m'2464
            in
            let v_z_idx'2468 =
              Obj.magic
                Int.add
                v_idx'2466
                v_offset'2467
            in
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2463
              v_z_idx'2468
              (Obj.magic
                 Float.add
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_z'2463
                    v_z_idx'2468)
                 v_c'2462);;
let v_tensorOpExp__z____1_Hot_y____scalar_c_ =
  fun v_s_max'2460 ->
    fun v_y'2461 ->
      fun v_c'2462 ->
        fun v_z'2463 ->
          let v_m'2464 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_z'2463)
              1
          in
          let rec v_loop'6322 =
              fun v_acc'6323 ->
                fun v_i'6324 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6324
                         v_s_max'2460)
                  then
                    let v_t'6325 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2469
                             v_y'2461
                             v_c'2462
                             v_z'2463
                             v_m'2464)
                        v_acc'6323
                        v_i'6324
                    in
                    Obj.magic
                      v_loop'6322
                      v_t'6325
                      (Obj.magic
                         Int.add
                         v_i'6324
                         1)
                  else
                    Obj.magic
                      v_acc'6323
          in Obj.magic
            v_loop'6322
            ()
            0;;
let v_t'5286 =
  fun v_z'2474 ->
    fun v_offset'2478 ->
      fun v_idx'2479 ->
        fun v_v'2480 ->
          fun v_j'2481 ->
            if
              Obj.magic
                (Obj.magic
                   Int.equal
                   v_j'2481
                   v_idx'2479)
            then
              Obj.magic
                Boot.Intrinsics.T.linear_set_exn
                v_z'2474
                (Obj.magic
                   Int.add
                   v_j'2481
                   v_offset'2478)
                v_v'2480
            else
              Obj.magic
                (Obj.magic
                   Boot.Intrinsics.T.linear_set_exn
                   v_z'2474
                   (Obj.magic
                      Int.add
                      v_j'2481
                      v_offset'2478)
                   0.);;
let v_iterfun'2482 =
  fun v_y'2472 ->
    fun v_x'2473 ->
      fun v_z'2474 ->
        fun v_m'2476 ->
          fun v_i'2477 ->
            let v_offset'2478 =
              Obj.magic
                Int.mul
                v_i'2477
                v_m'2476
            in
            let v_idx'2479 =
              Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_y'2472
                v_i'2477
            in
            let v_v'2480 =
              Obj.magic
                Float.neg
                (Obj.magic
                   Float.div
                   1.
                   (Obj.magic
                      Boot.Intrinsics.T.linear_get_exn
                      v_x'2473
                      (Obj.magic
                         Int.add
                         v_idx'2479
                         v_offset'2478)))
            in
            let rec v_loop'6326 =
                fun v_acc'6327 ->
                  fun v_i'6328 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6328
                           v_m'2476)
                    then
                      let v_t'6329 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_t'5286
                               v_z'2474
                               v_offset'2478
                               v_idx'2479
                               v_v'2480)
                          v_acc'6327
                          v_i'6328
                      in
                      Obj.magic
                        v_loop'6326
                        v_t'6329
                        (Obj.magic
                           Int.add
                           v_i'6328
                           1)
                    else
                      Obj.magic
                        v_acc'6327
            in Obj.magic
              v_loop'6326
              ()
              0;;
let v_tensorOpExn__z___1_Hot_y____scalar__1__x_T___1_Hot_y___ =
  fun v_s_max'2471 ->
    fun v_y'2472 ->
      fun v_x'2473 ->
        fun v_z'2474 ->
          let v_s'2475 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_x'2473)
              0
          in
          let v_m'2476 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_x'2473)
              1
          in
          let rec v_loop'6330 =
              fun v_acc'6331 ->
                fun v_i'6332 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6332
                         v_s_max'2471)
                  then
                    let v_t'6333 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2482
                             v_y'2472
                             v_x'2473
                             v_z'2474
                             v_m'2476)
                        v_acc'6331
                        v_i'6332
                    in
                    Obj.magic
                      v_loop'6330
                      v_t'6333
                      (Obj.magic
                         Int.add
                         v_i'6332
                         1)
                  else
                    Obj.magic
                      v_acc'6331
          in Obj.magic
            v_loop'6330
            ()
            0;;
let v_t'5287 =
  fun v_z'2484 ->
    fun v_m'2486 ->
      fun v_i'2487 ->
        fun v_acc'2488 ->
          fun v_j'2489 ->
            let v_s_idx'2490 =
              Obj.magic
                Int.add
                v_j'2489
                1
            in
            let v_s_offset'2491 =
              Obj.magic
                Int.mul
                v_s_idx'2490
                v_m'2486
            in
            Obj.magic
              Float.add
              v_acc'2488
              (Obj.magic
                 Boot.Intrinsics.T.linear_get_exn
                 v_z'2484
                 (Obj.magic
                    Int.add
                    v_s_offset'2491
                    v_i'2487));;
let v_iterfun =
  fun v_z'2484 ->
    fun v_s'2485 ->
      fun v_m'2486 ->
        fun v_i'2487 ->
          let v_v'2492 =
            let rec v_loop'6334 =
                fun v_acc'6335 ->
                  fun v_i'6336 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6336
                           (Obj.magic
                              Int.sub
                              v_s'2485
                              1))
                    then
                      let v_t'6337 =
                        Obj.magic
                          v_t'5287
                          v_z'2484
                          v_m'2486
                          v_i'2487
                          v_acc'6335
                          v_i'6336
                      in
                      Obj.magic
                        v_loop'6334
                        v_t'6337
                        (Obj.magic
                           Int.add
                           v_i'6336
                           1)
                    else
                      Obj.magic
                        v_acc'6335
            in Obj.magic
              v_loop'6334
              (Obj.magic
                 Boot.Intrinsics.T.linear_get_exn
                 v_z'2484
                 v_i'2487)
              0
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_z'2484
            v_i'2487
            v_v'2492;;
let v_tensorOpExn__Dim1Reduce_z__dst___z_0__op_____ =
  fun v_z'2484 ->
    let v_s'2485 =
      Obj.magic
        Boot.Intrinsics.Mseq.get
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_z'2484)
        0
    in
    let v_m'2486 =
      Obj.magic
        Int.div
        (Obj.magic
           v_tensorSize'2298
           v_z'2484)
        v_s'2485
    in
    let rec v_loop'6338 =
        fun v_acc'6339 ->
          fun v_i'6340 ->
            if
              Obj.magic
                (Obj.magic
                   ((<) : int -> int -> bool)
                   v_i'6340
                   v_m'2486)
            then
              let v_t'6341 =
                Obj.magic
                  (fun nv_ ->
                     Obj.magic
                       v_iterfun
                       v_z'2484
                       v_s'2485
                       v_m'2486)
                  v_acc'6339
                  v_i'6340
              in
              Obj.magic
                v_loop'6338
                v_t'6341
                (Obj.magic
                   Int.add
                   v_i'6340
                   1)
            else
              Obj.magic
                v_acc'6339
    in Obj.magic
      v_loop'6338
      ()
      0;;
let v_nnCompType_FullyConnected =
  0;;
let v_nnCompType_ReLU =
  1;;
let v_nnCompType_SoftMax =
  2;;
let v_t'5288 =
  fun v_'2508 ->
    0.;;
let v_t'5289 =
  fun v_'2509 ->
    0.;;
let v_t'5290 =
  fun v_'2510 ->
    0.;;
let v_t'5291 =
  fun v_'2511 ->
    0.;;
let v_t'5292 =
  fun v_'2512 ->
    0.;;
let v_t'5293 =
  fun v_'2513 ->
    0.;;
let v_t'5294 =
  fun v_'2514 ->
    0.;;
let v_t'5295 =
  fun v_'2515 ->
    0.;;
let v_t'5296 =
  fun v_'2516 ->
    0.;;
let v_t'5297 =
  fun v_'2517 ->
    0.;;
let v_t'5298 =
  fun v_'2518 ->
    0.;;
let v_t'5299 =
  fun v_'2519 ->
    0.;;
let v_t'5300 =
  fun v_'2520 ->
    0.;;
let v_t'5301 =
  fun v_'2521 ->
    0.;;
let v_t'5302 =
  fun v_'2522 ->
    0.;;
let v_t'5303 =
  fun v_'2523 ->
    0.;;
let v_t'5304 =
  fun v_'2524 ->
    0.;;
let v_t'5305 =
  fun v_'2525 ->
    0.;;
let v_t'5306 =
  fun v_'2526 ->
    0.;;
let v_nnComponentMakeExn =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_indim'2499 ->
              fun v_outdim'2500 ->
                fun v_weights'2501 ->
                  fun v_max_batchsize'2502 ->
                    fun v_name'2503 ->
                      let v_sizeIndim'2504 =
                        Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.fold_left
                          Int.mul
                          1
                          v_indim'2499
                      in
                      let v_sizeOutdim'2505 =
                        Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.fold_left
                          Int.mul
                          1
                          v_outdim'2500
                      in
                      if
                        Obj.magic
                          (Obj.magic
                             v_eqString
                             v_eqSeq
                             v_name'2503
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
                                  v_weights'2501)
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
                            (let v_w'2506 =
                               Obj.magic
                                 Boot.Intrinsics.Mseq.get
                                 v_weights'2501
                                 0
                             in
                             let v_b'2507 =
                               Obj.magic
                                 Boot.Intrinsics.Mseq.get
                                 v_weights'2501
                                 1
                             in
                             if
                               Obj.magic
                                 (Obj.magic
                                    ((<>) : int -> int -> bool)
                                    (Obj.magic
                                       Boot.Intrinsics.T.rank
                                       v_w'2506)
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
                                            v_b'2507)
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
                                                    v_w'2506)
                                                 1)
                                              (Obj.magic
                                                 v_tensorSize'2298
                                                 v_b'2507))
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
                                                      v_tensorSize'2298
                                                      v_b'2507)
                                                   v_sizeOutdim'2505)
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
                                                              v_w'2506)
                                                           0)
                                                        v_sizeIndim'2504)
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
                                                     (CRec'6370 { lb =
                                                          (Obj.repr
                                                            v_b'2507);
                                                        lw =
                                                          (Obj.repr
                                                            v_w'2506);
                                                        lty =
                                                          (Obj.repr
                                                            v_nnCompType_FullyConnected);
                                                        lb_grads =
                                                          (Obj.repr
                                                            (Obj.magic
                                                               Boot.Intrinsics.T.create_float_packed
                                                               (Obj.magic
                                                                  Boot.Intrinsics.Mseq.cons
                                                                  v_max_batchsize'2502
                                                                  (Obj.magic
                                                                     Boot.Intrinsics.T.shape
                                                                     v_b'2507))
                                                               v_t'5288));
                                                        lw_grads =
                                                          (Obj.repr
                                                            (Obj.magic
                                                               Boot.Intrinsics.T.create_float_packed
                                                               (Obj.magic
                                                                  Boot.Intrinsics.Mseq.cons
                                                                  v_max_batchsize'2502
                                                                  (Obj.magic
                                                                     Boot.Intrinsics.T.shape
                                                                     v_w'2506))
                                                               v_t'5289));
                                                        lin_grads =
                                                          (Obj.repr
                                                            (Obj.magic
                                                               Boot.Intrinsics.T.create_float_packed
                                                               (Obj.magic
                                                                  Boot.Intrinsics.Mseq.cons
                                                                  v_max_batchsize'2502
                                                                  v_indim'2499)
                                                               v_t'5290));
                                                        lout_bufs =
                                                          (Obj.repr
                                                            (Obj.magic
                                                               Boot.Intrinsics.T.create_float_packed
                                                               (Obj.magic
                                                                  Boot.Intrinsics.Mseq.cons
                                                                  v_max_batchsize'2502
                                                                  v_outdim'2500)
                                                               v_t'5291));
                                                        lsoftmax_bufs =
                                                          (Obj.repr
                                                            (Obj.magic
                                                               Boot.Intrinsics.T.create_float_packed
                                                               (Obj.magic
                                                                  Boot.Intrinsics.Mseq.Helpers.of_array
                                                                  [| (1) |])
                                                               v_t'5292)) }))))))
                      else
                        Obj.magic
                          (if
                             Obj.magic
                               (Obj.magic
                                  v_eqString
                                  v_eqSeq
                                  v_name'2503
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
                                       v_weights'2501)
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
                                         v_sizeIndim'2504
                                         v_sizeOutdim'2505)
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
                                      (CRec'6370 { lb =
                                           (Obj.repr
                                             (Obj.magic
                                                Boot.Intrinsics.T.create_float_packed
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                                   [| (1) |])
                                                v_t'5293));
                                         lw =
                                           (Obj.repr
                                             (Obj.magic
                                                Boot.Intrinsics.T.create_float_packed
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                                   [| (1) |])
                                                v_t'5294));
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
                                                v_t'5295));
                                         lw_grads =
                                           (Obj.repr
                                             (Obj.magic
                                                Boot.Intrinsics.T.create_float_packed
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                                   [| (1) |])
                                                v_t'5296));
                                         lin_grads =
                                           (Obj.repr
                                             (Obj.magic
                                                Boot.Intrinsics.T.create_float_packed
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.cons
                                                   v_max_batchsize'2502
                                                   v_indim'2499)
                                                v_t'5297));
                                         lout_bufs =
                                           (Obj.repr
                                             (Obj.magic
                                                Boot.Intrinsics.T.create_float_packed
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.cons
                                                   v_max_batchsize'2502
                                                   v_outdim'2500)
                                                v_t'5298));
                                         lsoftmax_bufs =
                                           (Obj.repr
                                             (Obj.magic
                                                Boot.Intrinsics.T.create_float_packed
                                                (Obj.magic
                                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                                   [| (1) |])
                                                v_t'5299)) }))
                           else
                             Obj.magic
                               (if
                                  Obj.magic
                                    (Obj.magic
                                       v_eqString
                                       v_eqSeq
                                       v_name'2503
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
                                            v_weights'2501)
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
                                              v_sizeIndim'2504
                                              v_sizeOutdim'2505)
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
                                           (CRec'6370 { lb =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.Helpers.of_array
                                                        [| (1) |])
                                                     v_t'5300));
                                              lw =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.Helpers.of_array
                                                        [| (1) |])
                                                     v_t'5301));
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
                                                     v_t'5302));
                                              lw_grads =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.Helpers.of_array
                                                        [| (1) |])
                                                     v_t'5303));
                                              lin_grads =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2502
                                                        v_indim'2499)
                                                     v_t'5304));
                                              lout_bufs =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2502
                                                        v_outdim'2500)
                                                     v_t'5305));
                                              lsoftmax_bufs =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.Helpers.of_array
                                                        [| (Obj.magic
                                                            v_max_batchsize'2502) |])
                                                     v_t'5306)) }))
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
                                                 v_name'2503);
                                               (Obj.magic
                                                 (Obj.magic
                                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                                    [| (34) |])) |])))));;
let v_nnComponentOutBufs =
  fun v_comp'2528 ->
    let
      CRec'6370 ({lout_bufs = v_X'2529})
    =
      Obj.magic
        v_comp'2528
    in
    Obj.magic
      v_X'2529;;
let v_nnComponentApplyExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2531 ->
          fun v_inputs'2532 ->
            fun v_comp'2533 ->
              let v_ty'2535 =
                let
                  CRec'6370 ({lty = v_X'2534})
                =
                  Obj.magic
                    v_comp'2533
                in
                Obj.magic
                  v_X'2534
              in
              if
                Obj.magic
                  (Obj.magic
                     Int.equal
                     v_ty'2535
                     v_nnCompType_FullyConnected)
              then
                let v_'2539 =
                  Obj.magic
                    v_tensorOpExn__z___Wx_B
                    v_s_max'2531
                    (let
                       CRec'6370 ({lw = v_X'2536})
                     =
                       Obj.magic
                         v_comp'2533
                     in
                     Obj.magic
                       v_X'2536)
                    v_inputs'2532
                    (let
                       CRec'6370 ({lb = v_X'2537})
                     =
                       Obj.magic
                         v_comp'2533
                     in
                     Obj.magic
                       v_X'2537)
                    (let
                       CRec'6370 ({lout_bufs = v_X'2538})
                     =
                       Obj.magic
                         v_comp'2533
                     in
                     Obj.magic
                       v_X'2538)
                in
                let
                  CRec'6370 ({lout_bufs = v_X'2540})
                =
                  Obj.magic
                    v_comp'2533
                in
                Obj.magic
                  v_X'2540
              else
                Obj.magic
                  (if
                     Obj.magic
                       (Obj.magic
                          Int.equal
                          v_ty'2535
                          v_nnCompType_ReLU)
                   then
                     let v_'2542 =
                       Obj.magic
                         v_tensorOpExn__z___ReLU_x_
                         v_s_max'2531
                         v_inputs'2532
                         (let
                            CRec'6370 ({lout_bufs = v_X'2541})
                          =
                            Obj.magic
                              v_comp'2533
                          in
                          Obj.magic
                            v_X'2541)
                     in
                     let
                       CRec'6370 ({lout_bufs = v_X'2543})
                     =
                       Obj.magic
                         v_comp'2533
                     in
                     Obj.magic
                       v_X'2543
                   else
                     Obj.magic
                       (if
                          Obj.magic
                            (Obj.magic
                               Int.equal
                               v_ty'2535
                               v_nnCompType_SoftMax)
                        then
                          let v_'2546 =
                            Obj.magic
                              v_tensorOpExn__z___SoftMax_x_
                              v_s_max'2531
                              v_inputs'2532
                              (let
                                 CRec'6370 ({lsoftmax_bufs = v_X'2544})
                               =
                                 Obj.magic
                                   v_comp'2533
                               in
                               Obj.magic
                                 v_X'2544)
                              (let
                                 CRec'6370 ({lout_bufs = v_X'2545})
                               =
                                 Obj.magic
                                   v_comp'2533
                               in
                               Obj.magic
                                 v_X'2545)
                          in
                          let
                            CRec'6370 ({lout_bufs = v_X'2547})
                          =
                            Obj.magic
                              v_comp'2533
                          in
                          Obj.magic
                            v_X'2547
                        else
                          Obj.magic
                            (let
                               CRec'6370 ({lout_bufs = v_X'2548})
                             =
                               Obj.magic
                                 v_comp'2533
                             in
                             Obj.magic
                               v_X'2548)));;
let v_nnComponentBackpropExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2550 ->
          fun v_comp_inputs'2551 ->
            fun v_output_grads'2552 ->
              fun v_comp'2553 ->
                let v_ty'2555 =
                  let
                    CRec'6370 ({lty = v_X'2554})
                  =
                    Obj.magic
                      v_comp'2553
                  in
                  Obj.magic
                    v_X'2554
                in
                if
                  Obj.magic
                    (Obj.magic
                       Int.equal
                       v_ty'2555
                       v_nnCompType_FullyConnected)
                then
                  let v_'2557 =
                    Obj.magic
                      v_tensorOpExn__z___x
                      v_s_max'2550
                      v_output_grads'2552
                      (let
                         CRec'6370 ({lb_grads = v_X'2556})
                       =
                         Obj.magic
                           v_comp'2553
                       in
                       Obj.magic
                         v_X'2556)
                  in
                  let v_'2559 =
                    Obj.magic
                      v_tensorOpExn__z___x___y_T
                      v_s_max'2550
                      v_output_grads'2552
                      v_comp_inputs'2551
                      (let
                         CRec'6370 ({lw_grads = v_X'2558})
                       =
                         Obj.magic
                           v_comp'2553
                       in
                       Obj.magic
                         v_X'2558)
                  in
                  let v_'2562 =
                    Obj.magic
                      v_tensorOpExn__z____x_T___W__T
                      v_s_max'2550
                      v_output_grads'2552
                      (let
                         CRec'6370 ({lw = v_X'2560})
                       =
                         Obj.magic
                           v_comp'2553
                       in
                       Obj.magic
                         v_X'2560)
                      (let
                         CRec'6370 ({lin_grads = v_X'2561})
                       =
                         Obj.magic
                           v_comp'2553
                       in
                       Obj.magic
                         v_X'2561)
                  in
                  let
                    CRec'6370 ({lin_grads = v_X'2563})
                  =
                    Obj.magic
                      v_comp'2553
                  in
                  Obj.magic
                    v_X'2563
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            Int.equal
                            v_ty'2555
                            v_nnCompType_ReLU)
                     then
                       let v_'2566 =
                         Obj.magic
                           v_tensorOpExn__z___d_dx_l_ReLU_x__
                           v_s_max'2550
                           (let
                              CRec'6370 ({lout_bufs = v_X'2564})
                            =
                              Obj.magic
                                v_comp'2553
                            in
                            Obj.magic
                              v_X'2564)
                           v_output_grads'2552
                           (let
                              CRec'6370 ({lin_grads = v_X'2565})
                            =
                              Obj.magic
                                v_comp'2553
                            in
                            Obj.magic
                              v_X'2565)
                       in
                       let
                         CRec'6370 ({lin_grads = v_X'2567})
                       =
                         Obj.magic
                           v_comp'2553
                       in
                       Obj.magic
                         v_X'2567
                     else
                       Obj.magic
                         (if
                            Obj.magic
                              (Obj.magic
                                 Int.equal
                                 v_ty'2555
                                 v_nnCompType_SoftMax)
                          then
                            let v_'2570 =
                              Obj.magic
                                v_tensorOpExn__z___d_dx_l_SoftMax_x___
                                v_s_max'2550
                                (let
                                   CRec'6370 ({lout_bufs = v_X'2568})
                                 =
                                   Obj.magic
                                     v_comp'2553
                                 in
                                 Obj.magic
                                   v_X'2568)
                                v_output_grads'2552
                                (let
                                   CRec'6370 ({lin_grads = v_X'2569})
                                 =
                                   Obj.magic
                                     v_comp'2553
                                 in
                                 Obj.magic
                                   v_X'2569)
                            in
                            let
                              CRec'6370 ({lin_grads = v_X'2571})
                            =
                              Obj.magic
                                v_comp'2553
                            in
                            Obj.magic
                              v_X'2571
                          else
                            Obj.magic
                              (let
                                 CRec'6370 ({lin_grads = v_X'2572})
                               =
                                 Obj.magic
                                   v_comp'2553
                               in
                               Obj.magic
                                 v_X'2572)));;
let v_nnComponent_TEMP_SetGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2574 ->
      fun v_comp'2575 ->
        let v_ty'2577 =
          let
            CRec'6370 ({lty = v_X'2576})
          =
            Obj.magic
              v_comp'2575
          in
          Obj.magic
            v_X'2576
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2577
               v_nnCompType_FullyConnected)
        then
          let v_'2579 =
            Obj.magic
              v_tensorOpExn__Z___scalar_c_
              v_scalar'2574
              (let
                 CRec'6370 ({lw_grads = v_X'2578})
               =
                 Obj.magic
                   v_comp'2575
               in
               Obj.magic
                 v_X'2578)
          in
          Obj.magic
            v_tensorOpExn__Z___scalar_c_
            v_scalar'2574
            (let
               CRec'6370 ({lb_grads = v_X'2580})
             =
               Obj.magic
                 v_comp'2575
             in
             Obj.magic
               v_X'2580)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_ReduceGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_comp'2582 ->
      let v_ty'2584 =
        let
          CRec'6370 ({lty = v_X'2583})
        =
          Obj.magic
            v_comp'2582
        in
        Obj.magic
          v_X'2583
      in
      if
        Obj.magic
          (Obj.magic
             Int.equal
             v_ty'2584
             v_nnCompType_FullyConnected)
      then
        let v_'2586 =
          Obj.magic
            v_tensorOpExn__Dim1Reduce_z__dst___z_0__op_____
            (let
               CRec'6370 ({lw_grads = v_X'2585})
             =
               Obj.magic
                 v_comp'2582
             in
             Obj.magic
               v_X'2585)
        in
        Obj.magic
          v_tensorOpExn__Dim1Reduce_z__dst___z_0__op_____
          (let
             CRec'6370 ({lb_grads = v_X'2587})
           =
             Obj.magic
               v_comp'2582
           in
           Obj.magic
             v_X'2587)
      else
        Obj.magic
          ();;
let v_nnComponent_TEMP_ScaleGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2589 ->
      fun v_comp'2590 ->
        let v_ty'2592 =
          let
            CRec'6370 ({lty = v_X'2591})
          =
            Obj.magic
              v_comp'2590
          in
          Obj.magic
            v_X'2591
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2592
               v_nnCompType_FullyConnected)
        then
          let v_'2594 =
            Obj.magic
              v_tensorOpExn__z____scalar_c_
              1
              v_scalar'2589
              (let
                 CRec'6370 ({lw_grads = v_X'2593})
               =
                 Obj.magic
                   v_comp'2590
               in
               Obj.magic
                 v_X'2593)
          in
          Obj.magic
            v_tensorOpExn__z____scalar_c_
            1
            v_scalar'2589
            (let
               CRec'6370 ({lb_grads = v_X'2595})
             =
               Obj.magic
                 v_comp'2590
             in
             Obj.magic
               v_X'2595)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_ApplyGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2597 ->
      fun v_comp'2598 ->
        let v_ty'2600 =
          let
            CRec'6370 ({lty = v_X'2599})
          =
            Obj.magic
              v_comp'2598
          in
          Obj.magic
            v_X'2599
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2600
               v_nnCompType_FullyConnected)
        then
          let v_'2603 =
            Obj.magic
              v_tensorOpExn__Z____x___scalar_c_
              0
              (let
                 CRec'6370 ({lw_grads = v_X'2601})
               =
                 Obj.magic
                   v_comp'2598
               in
               Obj.magic
                 v_X'2601)
              v_scalar'2597
              (let
                 CRec'6370 ({lw = v_X'2602})
               =
                 Obj.magic
                   v_comp'2598
               in
               Obj.magic
                 v_X'2602)
          in
          Obj.magic
            v_tensorOpExn__Z____x___scalar_c_
            0
            (let
               CRec'6370 ({lb_grads = v_X'2604})
             =
               Obj.magic
                 v_comp'2598
             in
             Obj.magic
               v_X'2604)
            v_scalar'2597
            (let
               CRec'6370 ({lb = v_X'2605})
             =
               Obj.magic
                 v_comp'2598
             in
             Obj.magic
               v_X'2605)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_L2Regularize =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2607 ->
      fun v_comp'2608 ->
        let v_ty'2610 =
          let
            CRec'6370 ({lty = v_X'2609})
          =
            Obj.magic
              v_comp'2608
          in
          Obj.magic
            v_X'2609
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2610
               v_nnCompType_FullyConnected)
        then
          let v_'2613 =
            Obj.magic
              v_tensorOpExn__z____X___scalar_c_
              0
              (let
                 CRec'6370 ({lw = v_X'2611})
               =
                 Obj.magic
                   v_comp'2608
               in
               Obj.magic
                 v_X'2611)
              v_scalar'2607
              (let
                 CRec'6370 ({lw_grads = v_X'2612})
               =
                 Obj.magic
                   v_comp'2608
               in
               Obj.magic
                 v_X'2612)
          in
          Obj.magic
            v_tensorOpExn__z____X___scalar_c_
            0
            (let
               CRec'6370 ({lb = v_X'2614})
             =
               Obj.magic
                 v_comp'2608
             in
             Obj.magic
               v_X'2614)
            v_scalar'2607
            (let
               CRec'6370 ({lb_grads = v_X'2615})
             =
               Obj.magic
                 v_comp'2608
             in
             Obj.magic
               v_X'2615)
        else
          Obj.magic
            ();;
let v_nnComponentZeroGrad =
  fun v_nnCompType_FullyConnected ->
    fun v_comp'2617 ->
      Obj.magic
        v_nnComponent_TEMP_SetGradients
        v_nnCompType_FullyConnected
        0.
        v_comp'2617;;
let v_t'5307 =
  fun v_mu'2622 ->
    fun v_sigma'2623 ->
      fun v_'2624 ->
        Obj.magic
          v_gaussianSample
          v_mu'2622
          v_sigma'2623;;
let v_t'5308 =
  fun v_mu'2622 ->
    fun v_sigma'2623 ->
      fun v_'2626 ->
        Obj.magic
          v_gaussianSample
          v_mu'2622
          v_sigma'2623;;
let v_nnFullyConnected =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_max_batchsize'2619 ->
              fun v_indim'2620 ->
                fun v_outdim'2621 ->
                  let v_mu'2622 =
                    0.
                  in
                  let v_sigma'2623 =
                    0.001
                  in
                  let v_w'2625 =
                    Obj.magic
                      Boot.Intrinsics.T.create_float_packed
                      (Obj.magic
                         Boot.Intrinsics.Mseq.Helpers.of_array
                         [| (Obj.magic
                             v_indim'2620);
                           (Obj.magic
                             v_outdim'2621) |])
                      (Obj.magic
                         v_t'5307
                         v_mu'2622
                         v_sigma'2623)
                  in
                  let v_b'2627 =
                    Obj.magic
                      Boot.Intrinsics.T.create_float_packed
                      (Obj.magic
                         Boot.Intrinsics.Mseq.Helpers.of_array
                         [| (Obj.magic
                             v_outdim'2621) |])
                      (Obj.magic
                         v_t'5308
                         v_mu'2622
                         v_sigma'2623)
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
                           v_indim'2620) |])
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_outdim'2621) |])
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_w'2625);
                         (Obj.magic
                           v_b'2627) |])
                    v_max_batchsize'2619
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
            fun v_max_batchsize'2629 ->
              fun v_dim'2630 ->
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
                         v_dim'2630) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (Obj.magic
                         v_dim'2630) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [|  |])
                  v_max_batchsize'2629
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (82);
                       (101);
                       (76);
                       (85) |]);;
let v_nnSoftMax =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_max_batchsize'2632 ->
              fun v_dim'2633 ->
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
                         v_dim'2633) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (Obj.magic
                         v_dim'2633) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [|  |])
                  v_max_batchsize'2632
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (83);
                       (111);
                       (102);
                       (116);
                       (77);
                       (97);
                       (120) |]);;
let v_nnLossfnType_CrossEntropyLoss =
  0;;
let v_nnLossfnType_SoftMaxCrossEntropyLoss =
  1;;
let v_t'5309 =
  fun v_'2641 ->
    0.;;
let v_t'5310 =
  fun v_'2642 ->
    0.;;
let v_t'5311 =
  fun v_'2643 ->
    0.;;
let v_t'5312 =
  fun v_'2644 ->
    0.;;
let v_t'5313 =
  fun v_'2645 ->
    0.;;
let v_t'5314 =
  fun v_'2646 ->
    0.;;
let v_nnLossFunctionMakeExn =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnLossfnType_CrossEntropyLoss ->
        fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
          fun v_indim'2638 ->
            fun v_max_batchsize'2639 ->
              fun v_name'2640 ->
                if
                  Obj.magic
                    (Obj.magic
                       v_eqString
                       v_eqSeq
                       v_name'2640
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
                  CRec'6371 { lty =
                      (Obj.repr
                        v_nnLossfnType_CrossEntropyLoss);
                    lin_grads =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.cons
                              v_max_batchsize'2639
                              v_indim'2638)
                           v_t'5309));
                    lout_bufs =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.Helpers.of_array
                              [| (Obj.magic
                                  v_max_batchsize'2639) |])
                           v_t'5310));
                    lsoftmax_bufs =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.Helpers.of_array
                              [| (1) |])
                           v_t'5311)) }
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            v_eqString
                            v_eqSeq
                            v_name'2640
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
                       CRec'6371 { lty =
                           (Obj.repr
                             v_nnLossfnType_SoftMaxCrossEntropyLoss);
                         lin_grads =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.cons
                                   v_max_batchsize'2639
                                   v_indim'2638)
                                v_t'5312));
                         lout_bufs =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (Obj.magic
                                       v_max_batchsize'2639) |])
                                v_t'5313));
                         lsoftmax_bufs =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (Obj.magic
                                       v_max_batchsize'2639) |])
                                v_t'5314)) }
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
                                      v_name'2640);
                                    (Obj.magic
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (34) |])) |]))));;
let v_nnLossFunctionApplyExn =
  fun v_nnLossfnType_CrossEntropyLoss ->
    fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
      fun v_s_max'2648 ->
        fun v_inputs'2649 ->
          fun v_lossfn'2650 ->
            let v_ty'2652 =
              let
                CRec'6371 ({lty = v_X'2651})
              =
                Obj.magic
                  v_lossfn'2650
              in
              Obj.magic
                v_X'2651
            in
            if
              Obj.magic
                (Obj.magic
                   Int.equal
                   v_ty'2652
                   v_nnLossfnType_CrossEntropyLoss)
            then
              v_inputs'2649
            else
              Obj.magic
                (if
                   Obj.magic
                     (Obj.magic
                        Int.equal
                        v_ty'2652
                        v_nnLossfnType_SoftMaxCrossEntropyLoss)
                 then
                   let v_'2655 =
                     Obj.magic
                       v_tensorOpExn__z___SoftMax_x_
                       v_s_max'2648
                       v_inputs'2649
                       (let
                          CRec'6371 ({lsoftmax_bufs = v_X'2653})
                        =
                          Obj.magic
                            v_lossfn'2650
                        in
                        Obj.magic
                          v_X'2653)
                       (let
                          CRec'6371 ({lin_grads = v_X'2654})
                        =
                          Obj.magic
                            v_lossfn'2650
                        in
                        Obj.magic
                          v_X'2654)
                   in
                   let
                     CRec'6371 ({lin_grads = v_X'2656})
                   =
                     Obj.magic
                       v_lossfn'2650
                   in
                   Obj.magic
                     v_X'2656
                 else
                   Obj.magic
                     v_inputs'2649);;
let v_nnLossFunctionBackpropExn =
  fun v_nnLossfnType_CrossEntropyLoss ->
    fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
      fun v_s_max'2658 ->
        fun v_inputs'2659 ->
          fun v_expecteds'2660 ->
            fun v_lossfn'2661 ->
              let v_ty'2663 =
                let
                  CRec'6371 ({lty = v_X'2662})
                =
                  Obj.magic
                    v_lossfn'2661
                in
                Obj.magic
                  v_X'2662
              in
              if
                Obj.magic
                  (Obj.magic
                     Int.equal
                     v_ty'2663
                     v_nnLossfnType_CrossEntropyLoss)
              then
                let v_'2665 =
                  Obj.magic
                    v_tensorOpExn__z___1_Hot_y____scalar__1__x_T___1_Hot_y___
                    v_s_max'2658
                    v_expecteds'2660
                    v_inputs'2659
                    (let
                       CRec'6371 ({lin_grads = v_X'2664})
                     =
                       Obj.magic
                         v_lossfn'2661
                     in
                     Obj.magic
                       v_X'2664)
                in
                let
                  CRec'6371 ({lin_grads = v_X'2666})
                =
                  Obj.magic
                    v_lossfn'2661
                in
                Obj.magic
                  v_X'2666
              else
                Obj.magic
                  (if
                     Obj.magic
                       (Obj.magic
                          Int.equal
                          v_ty'2663
                          v_nnLossfnType_SoftMaxCrossEntropyLoss)
                   then
                     let v_'2668 =
                       Obj.magic
                         v_tensorOpExp__z____1_Hot_y____scalar_c_
                         v_s_max'2658
                         v_expecteds'2660
                         (Obj.magic
                            Float.neg
                            1.)
                         (let
                            CRec'6371 ({lin_grads = v_X'2667})
                          =
                            Obj.magic
                              v_lossfn'2661
                          in
                          Obj.magic
                            v_X'2667)
                     in
                     let
                       CRec'6371 ({lin_grads = v_X'2669})
                     =
                       Obj.magic
                         v_lossfn'2661
                     in
                     Obj.magic
                       v_X'2669
                   else
                     Obj.magic
                       (let
                          CRec'6371 ({lin_grads = v_X'2670})
                        =
                          Obj.magic
                            v_lossfn'2661
                        in
                        Obj.magic
                          v_X'2670));;
let v_nnCrossEntropyLoss =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnLossfnType_CrossEntropyLoss ->
        fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
          fun v_max_batchsize'2672 ->
            fun v_dim'2673 ->
              Obj.magic
                v_nnLossFunctionMakeExn
                v_eqSeq
                v_join
                v_nnLossfnType_CrossEntropyLoss
                v_nnLossfnType_SoftMaxCrossEntropyLoss
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_dim'2673) |])
                v_max_batchsize'2672
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
                     (115) |]);;
let v_nnMake =
  fun v_components'2678 ->
    fun v_lossfn'2679 ->
      CRec'6372 { llossfn =
          (Obj.repr
            v_lossfn'2679);
        lcomponents =
          (Obj.repr
            v_components'2678) };;
let v_t'5315 =
  fun v_nnCompType_FullyConnected ->
    fun v_x'2682 ->
      fun v_comp'2683 ->
        let v_'2684 =
          Obj.magic
            v_nnComponentZeroGrad
            v_nnCompType_FullyConnected
            v_comp'2683
        in
        0;;
let v_nnZeroGrad =
  fun v_nnCompType_FullyConnected ->
    fun v_network'2681 ->
      let v_'2686 =
        Obj.magic
          Boot.Intrinsics.Mseq.Helpers.fold_left
          (Obj.magic
             v_t'5315
             v_nnCompType_FullyConnected)
          0
          (let
             CRec'6372 ({lcomponents = v_X'2685})
           =
             Obj.magic
               v_network'2681
           in
           Obj.magic
             v_X'2685)
      in
      ();;
let v_t'5316 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2690 ->
          fun v_prevouts'2691 ->
            fun v_comp'2692 ->
              Obj.magic
                v_nnComponentApplyExn
                v_nnCompType_FullyConnected
                v_nnCompType_ReLU
                v_nnCompType_SoftMax
                v_s_max'2690
                v_prevouts'2691
                v_comp'2692;;
let v_nnEvalExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_network'2688 ->
              fun v_inputs'2689 ->
                let v_s_max'2690 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.get
                    (Obj.magic
                       Boot.Intrinsics.T.shape
                       v_inputs'2689)
                    0
                in
                let v_comp_out'2694 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.Helpers.fold_left
                    (Obj.magic
                       v_t'5316
                       v_nnCompType_FullyConnected
                       v_nnCompType_ReLU
                       v_nnCompType_SoftMax
                       v_s_max'2690)
                    v_inputs'2689
                    (let
                       CRec'6372 ({lcomponents = v_X'2693})
                     =
                       Obj.magic
                         v_network'2688
                     in
                     Obj.magic
                       v_X'2693)
                in
                Obj.magic
                  v_nnLossFunctionApplyExn
                  v_nnLossfnType_CrossEntropyLoss
                  v_nnLossfnType_SoftMaxCrossEntropyLoss
                  v_s_max'2690
                  v_comp_out'2694
                  (let
                     CRec'6372 ({llossfn = v_X'2695})
                   =
                     Obj.magic
                       v_network'2688
                   in
                   Obj.magic
                     v_X'2695);;
let v_t'5317 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_network'2697 ->
          fun v_s_max'2700 ->
            fun v_n_components'2707 ->
              fun v_out_grads'2717 ->
                fun v_i'2718 ->
                  let v_idx'2719 =
                    Obj.magic
                      Int.sub
                      v_n_components'2707
                      (Obj.magic
                         Int.add
                         v_i'2718
                         2)
                  in
                  let v_previdx'2720 =
                    Obj.magic
                      Int.sub
                      v_idx'2719
                      1
                  in
                  let v_comp'2722 =
                    Obj.magic
                      Boot.Intrinsics.Mseq.get
                      (let
                         CRec'6372 ({lcomponents = v_X'2721})
                       =
                         Obj.magic
                           v_network'2697
                       in
                       Obj.magic
                         v_X'2721)
                      v_idx'2719
                  in
                  let v_in_bufs'2724 =
                    Obj.magic
                      v_nnComponentOutBufs
                      (Obj.magic
                         Boot.Intrinsics.Mseq.get
                         (let
                            CRec'6372 ({lcomponents = v_X'2723})
                          =
                            Obj.magic
                              v_network'2697
                          in
                          Obj.magic
                            v_X'2723)
                         v_previdx'2720)
                  in
                  Obj.magic
                    v_nnComponentBackpropExn
                    v_nnCompType_FullyConnected
                    v_nnCompType_ReLU
                    v_nnCompType_SoftMax
                    v_s_max'2700
                    v_in_bufs'2724
                    v_out_grads'2717
                    v_comp'2722;;
let v_nnBackpropExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_network'2697 ->
              fun v_batch'2698 ->
                let v_s_max'2700 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.get
                    (Obj.magic
                       Boot.Intrinsics.T.shape
                       (let
                          CRec'6373 ({linputs = v_X'2699})
                        =
                          Obj.magic
                            v_batch'2698
                        in
                        Obj.magic
                          v_X'2699))
                    0
                in
                let v_outputs'2702 =
                  Obj.magic
                    v_nnEvalExn
                    v_nnCompType_FullyConnected
                    v_nnCompType_ReLU
                    v_nnCompType_SoftMax
                    v_nnLossfnType_CrossEntropyLoss
                    v_nnLossfnType_SoftMaxCrossEntropyLoss
                    v_network'2697
                    (let
                       CRec'6373 ({linputs = v_X'2701})
                     =
                       Obj.magic
                         v_batch'2698
                     in
                     Obj.magic
                       v_X'2701)
                in
                let v_lossgrads'2705 =
                  Obj.magic
                    v_nnLossFunctionBackpropExn
                    v_nnLossfnType_CrossEntropyLoss
                    v_nnLossfnType_SoftMaxCrossEntropyLoss
                    v_s_max'2700
                    v_outputs'2702
                    (let
                       CRec'6373 ({lcorrect_linear_outidxs = v_X'2703})
                     =
                       Obj.magic
                         v_batch'2698
                     in
                     Obj.magic
                       v_X'2703)
                    (let
                       CRec'6372 ({llossfn = v_X'2704})
                     =
                       Obj.magic
                         v_network'2697
                     in
                     Obj.magic
                       v_X'2704)
                in
                let v_n_components'2707 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.length
                    (let
                       CRec'6372 ({lcomponents = v_X'2706})
                     =
                       Obj.magic
                         v_network'2697
                     in
                     Obj.magic
                       v_X'2706)
                in
                if
                  Obj.magic
                    (Obj.magic
                       Int.equal
                       v_n_components'2707
                       0)
                then
                  ()
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            Int.equal
                            v_n_components'2707
                            1)
                     then
                       let v_lastcomp'2709 =
                         Obj.magic
                           Boot.Intrinsics.Mseq.get
                           (let
                              CRec'6372 ({lcomponents = v_X'2708})
                            =
                              Obj.magic
                                v_network'2697
                            in
                            Obj.magic
                              v_X'2708)
                           0
                       in
                       let v_'2711 =
                         Obj.magic
                           v_nnComponentBackpropExn
                           v_nnCompType_FullyConnected
                           v_nnCompType_ReLU
                           v_nnCompType_SoftMax
                           v_s_max'2700
                           (let
                              CRec'6373 ({linputs = v_X'2710})
                            =
                              Obj.magic
                                v_batch'2698
                            in
                            Obj.magic
                              v_X'2710)
                           v_lossgrads'2705
                           v_lastcomp'2709
                       in
                       ()
                     else
                       Obj.magic
                         (let v_lastcomp'2713 =
                            Obj.magic
                              Boot.Intrinsics.Mseq.get
                              (let
                                 CRec'6372 ({lcomponents = v_X'2712})
                               =
                                 Obj.magic
                                   v_network'2697
                               in
                               Obj.magic
                                 v_X'2712)
                              (Obj.magic
                                 Int.sub
                                 v_n_components'2707
                                 1)
                          in
                          let v_lastcomp_in_bufs'2715 =
                            Obj.magic
                              v_nnComponentOutBufs
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.get
                                 (let
                                    CRec'6372 ({lcomponents = v_X'2714})
                                  =
                                    Obj.magic
                                      v_network'2697
                                  in
                                  Obj.magic
                                    v_X'2714)
                                 (Obj.magic
                                    Int.sub
                                    v_n_components'2707
                                    2))
                          in
                          let v_lastcomp_in_grads'2716 =
                            Obj.magic
                              v_nnComponentBackpropExn
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_s_max'2700
                              v_lastcomp_in_bufs'2715
                              v_lossgrads'2705
                              v_lastcomp'2713
                          in
                          let v_firstcomp_out_grads'2725 =
                            let rec v_loop'6342 =
                                fun v_acc'6343 ->
                                  fun v_i'6344 ->
                                    if
                                      Obj.magic
                                        (Obj.magic
                                           ((<) : int -> int -> bool)
                                           v_i'6344
                                           (Obj.magic
                                              Int.sub
                                              v_n_components'2707
                                              2))
                                    then
                                      let v_t'6345 =
                                        Obj.magic
                                          v_t'5317
                                          v_nnCompType_FullyConnected
                                          v_nnCompType_ReLU
                                          v_nnCompType_SoftMax
                                          v_network'2697
                                          v_s_max'2700
                                          v_n_components'2707
                                          v_acc'6343
                                          v_i'6344
                                      in
                                      Obj.magic
                                        v_loop'6342
                                        v_t'6345
                                        (Obj.magic
                                           Int.add
                                           v_i'6344
                                           1)
                                    else
                                      Obj.magic
                                        v_acc'6343
                            in Obj.magic
                              v_loop'6342
                              v_lastcomp_in_grads'2716
                              0
                          in
                          let v_firstcomp'2727 =
                            Obj.magic
                              Boot.Intrinsics.Mseq.get
                              (let
                                 CRec'6372 ({lcomponents = v_X'2726})
                               =
                                 Obj.magic
                                   v_network'2697
                               in
                               Obj.magic
                                 v_X'2726)
                              0
                          in
                          let v_firstcomp_in_bufs'2729 =
                            let
                              CRec'6373 ({linputs = v_X'2728})
                            =
                              Obj.magic
                                v_batch'2698
                            in
                            Obj.magic
                              v_X'2728
                          in
                          let v_'2730 =
                            Obj.magic
                              v_nnComponentBackpropExn
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_s_max'2700
                              v_firstcomp_in_bufs'2729
                              v_firstcomp_out_grads'2725
                              v_firstcomp'2727
                          in
                          ()));;
let v_t'5318 =
  fun v_nnCompType_FullyConnected ->
    fun v_batchsize_regularizer'2740 ->
      fun v_x'2741 ->
        fun v_comp'2742 ->
          let v_'2743 =
            Obj.magic
              v_nnComponent_TEMP_ReduceGradients
              v_nnCompType_FullyConnected
              v_comp'2742
          in
          let v_'2744 =
            Obj.magic
              v_nnComponent_TEMP_ScaleGradients
              v_nnCompType_FullyConnected
              v_batchsize_regularizer'2740
              v_comp'2742
          in
          0;;
let v_t'5319 =
  fun v_nnCompType_FullyConnected ->
    fun v_lambda'2734 ->
      fun v_x'2747 ->
        fun v_comp'2748 ->
          let v_'2749 =
            Obj.magic
              v_nnComponent_TEMP_L2Regularize
              v_nnCompType_FullyConnected
              (Obj.magic
                 Float.mul
                 2.
                 v_lambda'2734)
              v_comp'2748
          in
          0;;
let v_t'5320 =
  fun v_nnCompType_FullyConnected ->
    fun v_alpha'2733 ->
      fun v_x'2753 ->
        fun v_comp'2754 ->
          let v_'2755 =
            Obj.magic
              v_nnComponent_TEMP_ApplyGradients
              v_nnCompType_FullyConnected
              (Obj.magic
                 Float.neg
                 v_alpha'2733)
              v_comp'2754
          in
          0;;
let v_nnGradientDescentExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_network'2732 ->
              fun v_alpha'2733 ->
                fun v_lambda'2734 ->
                  fun v_batch'2735 ->
                    let v_'2736 =
                      Obj.magic
                        v_nnZeroGrad
                        v_nnCompType_FullyConnected
                        v_network'2732
                    in
                    let v_batchsize'2738 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.get
                        (Obj.magic
                           Boot.Intrinsics.T.shape
                           (let
                              CRec'6373 ({linputs = v_X'2737})
                            =
                              Obj.magic
                                v_batch'2735
                            in
                            Obj.magic
                              v_X'2737))
                        0
                    in
                    let v_'2739 =
                      Obj.magic
                        v_nnBackpropExn
                        v_nnCompType_FullyConnected
                        v_nnCompType_ReLU
                        v_nnCompType_SoftMax
                        v_nnLossfnType_CrossEntropyLoss
                        v_nnLossfnType_SoftMaxCrossEntropyLoss
                        v_network'2732
                        v_batch'2735
                    in
                    let v_batchsize_regularizer'2740 =
                      Obj.magic
                        Float.div
                        1.
                        (Obj.magic
                           float_of_int
                           v_batchsize'2738)
                    in
                    let v_'2746 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.Helpers.fold_left
                        (Obj.magic
                           v_t'5318
                           v_nnCompType_FullyConnected
                           v_batchsize_regularizer'2740)
                        0
                        (let
                           CRec'6372 ({lcomponents = v_X'2745})
                         =
                           Obj.magic
                             v_network'2732
                         in
                         Obj.magic
                           v_X'2745)
                    in
                    let v_'2752 =
                      if
                        Obj.magic
                          (Obj.magic
                             Float.equal
                             v_lambda'2734
                             0.)
                      then
                        ()
                      else
                        Obj.magic
                          (let v_'2751 =
                             Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.fold_left
                               (Obj.magic
                                  v_t'5319
                                  v_nnCompType_FullyConnected
                                  v_lambda'2734)
                               0
                               (let
                                  CRec'6372 ({lcomponents = v_X'2750})
                                =
                                  Obj.magic
                                    v_network'2732
                                in
                                Obj.magic
                                  v_X'2750)
                           in
                           ())
                    in
                    let v_'2757 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.Helpers.fold_left
                        (Obj.magic
                           v_t'5320
                           v_nnCompType_FullyConnected
                           v_alpha'2733)
                        0
                        (let
                           CRec'6372 ({lcomponents = v_X'2756})
                         =
                           Obj.magic
                             v_network'2732
                         in
                         Obj.magic
                           v_X'2756)
                    in
                    ();;
let v_t'5321 =
  fun v_acc'2760 ->
    fun v_e'2761 ->
      Obj.magic
        Int.mul
        v_acc'2760
        v_e'2761;;
let v_tensorSize =
  fun v_t'2759 ->
    Obj.magic
      Boot.Intrinsics.Mseq.Helpers.fold_left
      v_t'5321
      1
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2759);;
let v_t'5322 =
  fun v_t'2767 ->
    fun v_s_offset'2770 ->
      fun v_cand_idx'2771 ->
        fun v_idx'2772 ->
          if
            Obj.magic
              (Obj.magic
                 ((>) : float -> float -> bool)
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_t'2767
                    (Obj.magic
                       Int.add
                       v_idx'2772
                       v_s_offset'2770))
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_t'2767
                    (Obj.magic
                       Int.add
                       v_cand_idx'2771
                       v_s_offset'2770)))
          then
            v_idx'2772
          else
            Obj.magic
              v_cand_idx'2771;;
let v_tensorLinearMaxIdx =
  fun v_s_idx'2766 ->
    fun v_t'2767 ->
      let v_s'2768 =
        Obj.magic
          Boot.Intrinsics.Mseq.get
          (Obj.magic
             Boot.Intrinsics.T.shape
             v_t'2767)
          0
      in
      let v_size'2769 =
        Obj.magic
          Int.div
          (Obj.magic
             v_tensorSize
             v_t'2767)
          v_s'2768
      in
      let v_s_offset'2770 =
        Obj.magic
          Int.mul
          v_s_idx'2766
          v_size'2769
      in
      let rec v_loop'6346 =
          fun v_acc'6347 ->
            fun v_i'6348 ->
              if
                Obj.magic
                  (Obj.magic
                     ((<) : int -> int -> bool)
                     v_i'6348
                     (Obj.magic
                        Int.sub
                        v_size'2769
                        1))
              then
                let v_t'6349 =
                  Obj.magic
                    v_t'5322
                    v_t'2767
                    v_s_offset'2770
                    v_acc'6347
                    v_i'6348
                in
                Obj.magic
                  v_loop'6346
                  v_t'6349
                  (Obj.magic
                     Int.add
                     v_i'6348
                     1)
              else
                Obj.magic
                  v_acc'6347
      in Obj.magic
        v_loop'6346
        (Obj.magic
           Int.sub
           v_size'2769
           1)
        0;;
let v_t'5324 =
  fun v_batch'2780 ->
    fun v_outputs'2784 ->
      fun v_b_acc'2785 ->
        fun v_b_idx'2786 ->
          if
            Obj.magic
              (Obj.magic
                 Int.equal
                 (Obj.magic
                    v_tensorLinearMaxIdx
                    v_b_idx'2786
                    v_outputs'2784)
                 (Obj.magic
                    Boot.Intrinsics.T.get_exn
                    (let
                       CRec'6373 ({lcorrect_linear_outidxs = v_X'2787})
                     =
                       Obj.magic
                         v_batch'2780
                     in
                     Obj.magic
                       v_X'2787)
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_b_idx'2786) |])))
          then
            Obj.magic
              Int.add
              v_b_acc'2785
              1
          else
            Obj.magic
              v_b_acc'2785;;
let v_t'5323 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_printStatus'2763 ->
              fun v_network'2764 ->
                fun v_batches'2765 ->
                  fun v_acc'2774 ->
                    fun v_i'2775 ->
                      let v_'2779 =
                        if
                          Obj.magic
                            v_printStatus'2763
                        then
                          let v_'2776 =
                            Obj.magic
                              Boot.Intrinsics.IO.print
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (13) |])
                          in
                          let v_'2777 =
                            Obj.magic
                              Boot.Intrinsics.IO.print
                              (Obj.magic
                                 Boot.Intrinsics.FloatConversion.float2string
                                 (Obj.magic
                                    float_of_int
                                    (Obj.magic
                                       Int.add
                                       v_i'2775
                                       1)))
                          in
                          let v_'2778 =
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
                                     v_batches'2765)))
                        else
                          Obj.magic
                            ()
                      in
                      let v_batch'2780 =
                        Obj.magic
                          Boot.Intrinsics.Mseq.get
                          v_batches'2765
                          v_i'2775
                      in
                      let v_batchsize'2782 =
                        Obj.magic
                          Boot.Intrinsics.Mseq.get
                          (Obj.magic
                             Boot.Intrinsics.T.shape
                             (let
                                CRec'6373 ({linputs = v_X'2781})
                              =
                                Obj.magic
                                  v_batch'2780
                              in
                              Obj.magic
                                v_X'2781))
                          0
                      in
                      let v_outputs'2784 =
                        Obj.magic
                          v_nnEvalExn
                          v_nnCompType_FullyConnected
                          v_nnCompType_ReLU
                          v_nnCompType_SoftMax
                          v_nnLossfnType_CrossEntropyLoss
                          v_nnLossfnType_SoftMaxCrossEntropyLoss
                          v_network'2764
                          (let
                             CRec'6373 ({linputs = v_X'2783})
                           =
                             Obj.magic
                               v_batch'2780
                           in
                           Obj.magic
                             v_X'2783)
                      in
                      let v_batch_accuracy'2788 =
                        let rec v_loop'6350 =
                            fun v_acc'6351 ->
                              fun v_i'6352 ->
                                if
                                  Obj.magic
                                    (Obj.magic
                                       ((<) : int -> int -> bool)
                                       v_i'6352
                                       v_batchsize'2782)
                                then
                                  let v_t'6353 =
                                    Obj.magic
                                      v_t'5324
                                      v_batch'2780
                                      v_outputs'2784
                                      v_acc'6351
                                      v_i'6352
                                  in
                                  Obj.magic
                                    v_loop'6350
                                    v_t'6353
                                    (Obj.magic
                                       Int.add
                                       v_i'6352
                                       1)
                                else
                                  Obj.magic
                                    v_acc'6351
                        in Obj.magic
                          v_loop'6350
                          0
                          0
                      in
                      Obj.magic
                        Int.add
                        v_acc'2774
                        v_batch_accuracy'2788;;
let v_nnAccuracyDiscrete =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_printStatus'2763 ->
              fun v_network'2764 ->
                fun v_batches'2765 ->
                  let v_correct_guesses'2789 =
                    let rec v_loop'6354 =
                        fun v_acc'6355 ->
                          fun v_i'6356 ->
                            if
                              Obj.magic
                                (Obj.magic
                                   ((<) : int -> int -> bool)
                                   v_i'6356
                                   (Obj.magic
                                      Boot.Intrinsics.Mseq.length
                                      v_batches'2765))
                            then
                              let v_t'6357 =
                                Obj.magic
                                  v_t'5323
                                  v_nnCompType_FullyConnected
                                  v_nnCompType_ReLU
                                  v_nnCompType_SoftMax
                                  v_nnLossfnType_CrossEntropyLoss
                                  v_nnLossfnType_SoftMaxCrossEntropyLoss
                                  v_printStatus'2763
                                  v_network'2764
                                  v_batches'2765
                                  v_acc'6355
                                  v_i'6356
                              in
                              Obj.magic
                                v_loop'6354
                                v_t'6357
                                (Obj.magic
                                   Int.add
                                   v_i'6356
                                   1)
                            else
                              Obj.magic
                                v_acc'6355
                    in Obj.magic
                      v_loop'6354
                      0
                      0
                  in
                  let v_'2790 =
                    if
                      Obj.magic
                        v_printStatus'2763
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
                  v_correct_guesses'2789;;
let v_t'5325 =
  fun v_acc'2796 ->
    fun v_batch'2797 ->
      Obj.magic
        Int.add
        v_acc'2796
        (Obj.magic
           Boot.Intrinsics.Mseq.get
           (Obj.magic
              Boot.Intrinsics.T.shape
              (let
                 CRec'6373 ({linputs = v_X'2798})
               =
                 Obj.magic
                   v_batch'2797
               in
               Obj.magic
                 v_X'2798))
           0);;
let v_nnAccuracyProportion =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_printStatus'2792 ->
              fun v_network'2793 ->
                fun v_batches'2794 ->
                  let v_correct_guesses'2795 =
                    Obj.magic
                      v_nnAccuracyDiscrete
                      v_nnCompType_FullyConnected
                      v_nnCompType_ReLU
                      v_nnCompType_SoftMax
                      v_nnLossfnType_CrossEntropyLoss
                      v_nnLossfnType_SoftMaxCrossEntropyLoss
                      v_printStatus'2792
                      v_network'2793
                      v_batches'2794
                  in
                  let v_datalength'2799 =
                    Obj.magic
                      Boot.Intrinsics.Mseq.Helpers.fold_left
                      v_t'5325
                      0
                      v_batches'2794
                  in
                  Obj.magic
                    Float.div
                    (Obj.magic
                       float_of_int
                       v_correct_guesses'2795)
                    (Obj.magic
                       float_of_int
                       v_datalength'2799);;
let v_nnVanillaSGDParameters =
  CRec'6374 { lepochs =
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
let rec v_t'5326 =
    fun v_dataset'2830 ->
      fun v_start_idx'2837 ->
        fun v_idx'2845 ->
          let v_b_idx'2846 =
            Obj.magic
              Int.add
              v_start_idx'2837
              (Obj.magic
                 Boot.Intrinsics.Mseq.get
                 v_idx'2845
                 0)
          in
          let v_d_idx'2847 =
            Obj.magic
              Boot.Intrinsics.Mseq.tail
              v_idx'2845
          in
          let v_dp'2848 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_dataset'2830
              v_b_idx'2846
          in
          Obj.magic
            Boot.Intrinsics.T.get_exn
            (let
               CRec'6375 ({linput = v_X'2849})
             =
               Obj.magic
                 v_dp'2848
             in
             Obj.magic
               v_X'2849)
            v_d_idx'2847
and v_t'5327 =
    fun v_dataset'2830 ->
      fun v_start_idx'2837 ->
        fun v_idx'2851 ->
          let v_b_idx'2852 =
            Obj.magic
              Int.add
              v_start_idx'2837
              (Obj.magic
                 Boot.Intrinsics.Mseq.get
                 v_idx'2851
                 0)
          in
          let v_dp'2853 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_dataset'2830
              v_b_idx'2852
          in
          let
            CRec'6375 ({lcorrect_linear_outidx = v_X'2854})
          =
            Obj.magic
              v_dp'2853
          in
          Obj.magic
            v_X'2854
and v_batchMakerH =
    fun v_join ->
      fun v_params'2803 ->
        fun v_dataset'2830 ->
          fun v_acc'2831 ->
            fun v_i'2832 ->
              let v_datalen'2833 =
                Obj.magic
                  Boot.Intrinsics.Mseq.length
                  v_dataset'2830
              in
              let v_'2836 =
                if
                  Obj.magic
                    (let
                       CRec'6374 ({lprintStatus = v_X'2834})
                     =
                       Obj.magic
                         v_params'2803
                     in
                     Obj.magic
                       v_X'2834)
                then
                  let v_'2835 =
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
                                      v_i'2832
                                      1)));
                              (Obj.magic
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (47) |]));
                              (Obj.magic
                                (Obj.magic
                                   v_int2string
                                   v_datalen'2833));
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
                     v_i'2832
                     v_datalen'2833)
              then
                v_acc'2831
              else
                Obj.magic
                  (let v_start_idx'2837 =
                     v_i'2832
                   in
                   let v_end_idx'2839 =
                     Obj.magic
                       Int.add
                       v_start_idx'2837
                       (let
                          CRec'6374 ({lbatchsize = v_X'2838})
                        =
                          Obj.magic
                            v_params'2803
                        in
                        Obj.magic
                          v_X'2838)
                   in
                   let v_end_idx'2840 =
                     if
                       Obj.magic
                         (Obj.magic
                            ((>=) : int -> int -> bool)
                            v_end_idx'2839
                            v_datalen'2833)
                     then
                       v_datalen'2833
                     else
                       Obj.magic
                         v_end_idx'2839
                   in
                   let v_bsize'2841 =
                     Obj.magic
                       Int.sub
                       v_end_idx'2840
                       v_start_idx'2837
                   in
                   let v__fst_dp'2842 =
                     Obj.magic
                       Boot.Intrinsics.Mseq.get
                       v_dataset'2830
                       0
                   in
                   let v_datashape'2844 =
                     Obj.magic
                       Boot.Intrinsics.T.shape
                       (let
                          CRec'6375 ({linput = v_X'2843})
                        =
                          Obj.magic
                            v__fst_dp'2842
                        in
                        Obj.magic
                          v_X'2843)
                   in
                   let v_db_inputs'2850 =
                     Obj.magic
                       Boot.Intrinsics.T.create_float_packed
                       (Obj.magic
                          Boot.Intrinsics.Mseq.cons
                          v_bsize'2841
                          v_datashape'2844)
                       (Obj.magic
                          v_t'5326
                          v_dataset'2830
                          v_start_idx'2837)
                   in
                   let v_db_outidxs'2855 =
                     Obj.magic
                       Boot.Intrinsics.T.create_int_packed
                       (Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.of_array
                          [| (Obj.magic
                              v_bsize'2841) |])
                       (Obj.magic
                          v_t'5327
                          v_dataset'2830
                          v_start_idx'2837)
                   in
                   let v_db'2856 =
                     CRec'6373 { linputs =
                         (Obj.repr
                           v_db_inputs'2850);
                       lcorrect_linear_outidxs =
                         (Obj.repr
                           v_db_outidxs'2855) }
                   in
                   Obj.magic
                     v_batchMakerH
                     v_join
                     v_params'2803
                     v_dataset'2830
                     (Obj.magic
                        Boot.Intrinsics.Mseq.snoc
                        v_acc'2831
                        v_db'2856)
                     (Obj.magic
                        Int.add
                        v_i'2832
                        (let
                           CRec'6374 ({lbatchsize = v_X'2857})
                         =
                           Obj.magic
                             v_params'2803
                         in
                         Obj.magic
                           v_X'2857)));;
let v_wrappedPrint =
  fun v_s'2864 ->
    Obj.magic
      Boot.Intrinsics.IO.print
      v_s'2864;;
let v_t'5329 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_params'2803 ->
              fun v_network'2804 ->
                fun v_rounds'2809 ->
                  fun v_training_batches'2858 ->
                    fun v_alpha'2882 ->
                      fun v_lambda'2884 ->
                        fun v_batch_idx'2898 ->
                          let v_'2903 =
                            if
                              Obj.magic
                                (let
                                   CRec'6374 ({lprintStatus = v_X'2899})
                                 =
                                   Obj.magic
                                     v_params'2803
                                 in
                                 Obj.magic
                                   v_X'2899)
                            then
                              let v_'2900 =
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
                              let v_'2901 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        (Obj.magic
                                           Int.add
                                           v_batch_idx'2898
                                           1)))
                              in
                              let v_'2902 =
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
                                      v_rounds'2809))
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
                            v_network'2804
                            v_alpha'2882
                            v_lambda'2884
                            (Obj.magic
                               Boot.Intrinsics.Mseq.get
                               v_training_batches'2858
                               v_batch_idx'2898);;
let v_t'5328 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_params'2803 ->
              fun v_network'2804 ->
                fun v_rounds'2809 ->
                  fun v_training_batches'2858 ->
                    fun v_validation_batches'2861 ->
                      fun v_acc'2878 ->
                        fun v_epoch_idx'2879 ->
                          let v_epoch'2880 =
                            Obj.magic
                              Int.add
                              v_epoch_idx'2879
                              1
                          in
                          let v_alpha'2882 =
                            let
                              CRec'6378 ({l0 = v_X'2881})
                            =
                              Obj.magic
                                v_acc'2878
                            in
                            Obj.magic
                              v_X'2881
                          in
                          let v_lambda'2884 =
                            let
                              CRec'6378 ({l1 = v_X'2883})
                            =
                              Obj.magic
                                v_acc'2878
                            in
                            Obj.magic
                              v_X'2883
                          in
                          let v_'2897 =
                            if
                              Obj.magic
                                (let
                                   CRec'6374 ({lprintStatus = v_X'2885})
                                 =
                                   Obj.magic
                                     v_params'2803
                                 in
                                 Obj.magic
                                   v_X'2885)
                            then
                              let v_'2886 =
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
                              let v_'2887 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        v_epoch'2880))
                              in
                              let v_'2888 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (47) |])
                              in
                              let v_'2890 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        (let
                                           CRec'6374 ({lepochs = v_X'2889})
                                         =
                                           Obj.magic
                                             v_params'2803
                                         in
                                         Obj.magic
                                           v_X'2889)))
                              in
                              let v_'2891 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (93);
                                       (10) |])
                              in
                              let v_'2892 =
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
                              let v_'2893 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     v_alpha'2882)
                              in
                              let v_'2894 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (93);
                                       (10) |])
                              in
                              let v_'2895 =
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
                              let v_'2896 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     v_lambda'2884)
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
                          let v_'2904 =
                            let rec v_loop'6358 =
                                fun v_acc'6359 ->
                                  fun v_i'6360 ->
                                    if
                                      Obj.magic
                                        (Obj.magic
                                           ((<) : int -> int -> bool)
                                           v_i'6360
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.length
                                              v_training_batches'2858))
                                    then
                                      let v_t'6361 =
                                        Obj.magic
                                          (fun nv_ ->
                                             Obj.magic
                                               v_t'5329
                                               v_nnCompType_FullyConnected
                                               v_nnCompType_ReLU
                                               v_nnCompType_SoftMax
                                               v_nnLossfnType_CrossEntropyLoss
                                               v_nnLossfnType_SoftMaxCrossEntropyLoss
                                               v_params'2803
                                               v_network'2804
                                               v_rounds'2809
                                               v_training_batches'2858
                                               v_alpha'2882
                                               v_lambda'2884)
                                          v_acc'6359
                                          v_i'6360
                                      in
                                      Obj.magic
                                        v_loop'6358
                                        v_t'6361
                                        (Obj.magic
                                           Int.add
                                           v_i'6360
                                           1)
                                    else
                                      Obj.magic
                                        v_acc'6359
                            in Obj.magic
                              v_loop'6358
                              ()
                              0
                          in
                          let v_'2905 =
                            Obj.magic
                              v_wrappedPrint
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (10) |])
                          in
                          let v_'2914 =
                            if
                              Obj.magic
                                (let
                                   CRec'6374 ({levaluateBetweenEpochs = v_X'2906})
                                 =
                                   Obj.magic
                                     v_params'2803
                                 in
                                 Obj.magic
                                   v_X'2906)
                            then
                              let v_'2908 =
                                if
                                  Obj.magic
                                    (let
                                       CRec'6374 ({lprintStatus = v_X'2907})
                                     =
                                       Obj.magic
                                         v_params'2803
                                     in
                                     Obj.magic
                                       v_X'2907)
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
                              let v_accuracy'2910 =
                                Obj.magic
                                  v_nnAccuracyProportion
                                  v_nnCompType_FullyConnected
                                  v_nnCompType_ReLU
                                  v_nnCompType_SoftMax
                                  v_nnLossfnType_CrossEntropyLoss
                                  v_nnLossfnType_SoftMaxCrossEntropyLoss
                                  (let
                                     CRec'6374 ({lprintStatus = v_X'2909})
                                   =
                                     Obj.magic
                                       v_params'2803
                                   in
                                   Obj.magic
                                     v_X'2909)
                                  v_network'2804
                                  v_validation_batches'2861
                              in
                              if
                                Obj.magic
                                  (let
                                     CRec'6374 ({lprintStatus = v_X'2911})
                                   =
                                     Obj.magic
                                       v_params'2803
                                   in
                                   Obj.magic
                                     v_X'2911)
                              then
                                let v_'2912 =
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
                                let v_'2913 =
                                  Obj.magic
                                    Boot.Intrinsics.IO.print
                                    (Obj.magic
                                       Boot.Intrinsics.FloatConversion.float2string
                                       (Obj.magic
                                          Float.mul
                                          v_accuracy'2910
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
                          let v_decayed_alpha'2916 =
                            Obj.magic
                              Float.mul
                              v_alpha'2882
                              (Obj.magic
                                 Float.sub
                                 1.
                                 (let
                                    CRec'6374 ({ldecay_alpha = v_X'2915})
                                  =
                                    Obj.magic
                                      v_params'2803
                                  in
                                  Obj.magic
                                    v_X'2915))
                          in
                          let v_decayed_lambda'2918 =
                            Obj.magic
                              Float.mul
                              v_lambda'2884
                              (Obj.magic
                                 Float.sub
                                 1.
                                 (let
                                    CRec'6374 ({ldecay_lambda = v_X'2917})
                                  =
                                    Obj.magic
                                      v_params'2803
                                  in
                                  Obj.magic
                                    v_X'2917))
                          in
                          CRec'6378 { l0 =
                              (Obj.repr
                                v_decayed_alpha'2916);
                            l1 =
                              (Obj.repr
                                v_decayed_lambda'2918) };;
let v_nnTrainSGD =
  fun v_join ->
    fun v_nnCompType_FullyConnected ->
      fun v_nnCompType_ReLU ->
        fun v_nnCompType_SoftMax ->
          fun v_nnLossfnType_CrossEntropyLoss ->
            fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
              fun v_params'2803 ->
                fun v_network'2804 ->
                  fun v_training_data'2805 ->
                    fun v_validation_data'2806 ->
                      let v_rounds'2809 =
                        Obj.magic
                          Int.div
                          (Obj.magic
                             Int.add
                             (Obj.magic
                                Boot.Intrinsics.Mseq.length
                                v_training_data'2805)
                             (Obj.magic
                                Int.sub
                                (let
                                   CRec'6374 ({lbatchsize = v_X'2807})
                                 =
                                   Obj.magic
                                     v_params'2803
                                 in
                                 Obj.magic
                                   v_X'2807)
                                1))
                          (let
                             CRec'6374 ({lbatchsize = v_X'2808})
                           =
                             Obj.magic
                               v_params'2803
                           in
                           Obj.magic
                             v_X'2808)
                      in
                      let v_'2826 =
                        if
                          Obj.magic
                            (let
                               CRec'6374 ({lprintStatus = v_X'2810})
                             =
                               Obj.magic
                                 v_params'2803
                             in
                             Obj.magic
                               v_X'2810)
                        then
                          let v_'2811 =
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
                          let v_'2812 =
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
                                              v_training_data'2805))) |]))
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
                                              v_validation_data'2806))) |]))
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
                                              CRec'6374 ({lbatchsize = v_X'2814})
                                            =
                                              Obj.magic
                                                v_params'2803
                                            in
                                            Obj.magic
                                              v_X'2814))) |]))
                          in
                          let v_'2816 =
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
                                           v_rounds'2809)) |]))
                          in
                          let v_'2818 =
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
                                              CRec'6374 ({lepochs = v_X'2817})
                                            =
                                              Obj.magic
                                                v_params'2803
                                            in
                                            Obj.magic
                                              v_X'2817))) |]))
                          in
                          let v_'2820 =
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
                                              CRec'6374 ({linit_alpha = v_X'2819})
                                            =
                                              Obj.magic
                                                v_params'2803
                                            in
                                            Obj.magic
                                              v_X'2819))) |]))
                          in
                          let v_'2822 =
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
                                              CRec'6374 ({ldecay_alpha = v_X'2821})
                                            =
                                              Obj.magic
                                                v_params'2803
                                            in
                                            Obj.magic
                                              v_X'2821))) |]))
                          in
                          let v_'2824 =
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
                                              CRec'6374 ({linit_lambda = v_X'2823})
                                            =
                                              Obj.magic
                                                v_params'2803
                                            in
                                            Obj.magic
                                              v_X'2823))) |]))
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
                                            CRec'6374 ({ldecay_lambda = v_X'2825})
                                          =
                                            Obj.magic
                                              v_params'2803
                                          in
                                          Obj.magic
                                            v_X'2825))) |]))
                        else
                          Obj.magic
                            ()
                      in
                      let v_'2828 =
                        if
                          Obj.magic
                            (let
                               CRec'6374 ({lprintStatus = v_X'2827})
                             =
                               Obj.magic
                                 v_params'2803
                             in
                             Obj.magic
                               v_X'2827)
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
                      let v_training_batches'2858 =
                        Obj.magic
                          v_batchMakerH
                          v_join
                          v_params'2803
                          v_training_data'2805
                          (Obj.magic
                             Boot.Intrinsics.Mseq.Helpers.of_array
                             [|  |])
                          0
                      in
                      let v_'2860 =
                        if
                          Obj.magic
                            (let
                               CRec'6374 ({lprintStatus = v_X'2859})
                             =
                               Obj.magic
                                 v_params'2803
                             in
                             Obj.magic
                               v_X'2859)
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
                      let v_validation_batches'2861 =
                        Obj.magic
                          v_batchMakerH
                          v_join
                          v_params'2803
                          v_validation_data'2806
                          (Obj.magic
                             Boot.Intrinsics.Mseq.Helpers.of_array
                             [|  |])
                          0
                      in
                      let v_'2863 =
                        if
                          Obj.magic
                            (let
                               CRec'6374 ({lprintStatus = v_X'2862})
                             =
                               Obj.magic
                                 v_params'2803
                             in
                             Obj.magic
                               v_X'2862)
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
                      let v_'2920 =
                        let nv_ =
                          Obj.magic
                            v_vXrkk6MJAk3'5267
                            v_nnCompType_FullyConnected
                            v_nnCompType_ReLU
                            v_nnCompType_SoftMax
                            v_nnLossfnType_CrossEntropyLoss
                            v_nnLossfnType_SoftMaxCrossEntropyLoss
                            (let
                               CRec'6374 ({lepochs = v_r'6388;lbatchsize = v_r'6389;linit_alpha = v_r'6390;ldecay_alpha = v_r'6391;linit_lambda = v_r'6392;lprintStatus = v_r'6393;ldecay_lambda = v_r'6394;levaluateBetweenEpochs = v_r'6395;levaluateBeforeFirstEpoch = v_r'6396})
                             =
                               v_params'2803
                             in
                             Obj.magic
                               Obj.repr
                               ({lepochs =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6388);
                                 lbatchsize =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6389);
                                 linit_alpha =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6390);
                                 ldecay_alpha =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6391);
                                 linit_lambda =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6392);
                                 lprintStatus =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6393);
                                 ldecay_lambda =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6394);
                                 levaluateBetweenEpochs =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6395);
                                 levaluateBeforeFirstEpoch =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6396)} : v_record'6387))
                            (let
                               CRec'6372 ({llossfn = v_r'6400;lcomponents = v_r'6401})
                             =
                               v_network'2804
                             in
                             Obj.magic
                               Obj.repr
                               ({llossfn =
                                   (let
                                     CRec'6371 ({lty = v_r'6402;lin_grads = v_r'6403;lout_bufs = v_r'6404;lsoftmax_bufs = v_r'6405})
                                   =
                                     Obj.magic
                                       Obj.magic
                                       v_r'6400
                                   in
                                   Obj.magic
                                     Obj.repr
                                     ({lty =
                                         (Obj.magic
                                           Obj.magic
                                           v_r'6402);
                                       lin_grads =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6403));
                                       lout_bufs =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6404));
                                       lsoftmax_bufs =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6405))} : v_record'6397));
                                 lcomponents =
                                   (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.to_array_copy
                                     (Obj.magic
                                        Boot.Intrinsics.Mseq.map
                                        (fun v_x'6406 ->
                                           let
                                             CRec'6370 ({lb = v_r'6407;lw = v_r'6408;lty = v_r'6409;lb_grads = v_r'6410;lw_grads = v_r'6411;lin_grads = v_r'6412;lout_bufs = v_r'6413;lsoftmax_bufs = v_r'6414})
                                           =
                                             v_x'6406
                                           in
                                           Obj.magic
                                             Obj.repr
                                             ({lb =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6407));
                                               lw =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6408));
                                               lty =
                                                 (Obj.magic
                                                   Obj.magic
                                                   v_r'6409);
                                               lb_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6410));
                                               lw_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6411));
                                               lin_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6412));
                                               lout_bufs =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6413));
                                               lsoftmax_bufs =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6414))} : v_record'6398))
                                        (Obj.magic
                                           Obj.magic
                                           v_r'6401)))} : v_record'6399))
                            v_rounds'2809
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.to_array_copy
                               (Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  (fun v_x'6416 ->
                                     let
                                       CRec'6373 ({linputs = v_r'6417;lcorrect_linear_outidxs = v_r'6418})
                                     =
                                       v_x'6416
                                     in
                                     Obj.magic
                                       Obj.repr
                                       ({linputs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6417));
                                         lcorrect_linear_outidxs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6418))} : v_record'6415))
                                  v_training_batches'2858))
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.to_array_copy
                               (Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  (fun v_x'6420 ->
                                     let
                                       CRec'6373 ({linputs = v_r'6421;lcorrect_linear_outidxs = v_r'6422})
                                     =
                                       v_x'6420
                                     in
                                     Obj.magic
                                       Obj.repr
                                       ({linputs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6421));
                                         lcorrect_linear_outidxs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6422))} : v_record'6419))
                                  v_validation_batches'2861))
                        in
                        ()
                      in
                      let v_'2922 =
                        if
                          Obj.magic
                            (let
                               CRec'6374 ({lprintStatus = v_X'2921})
                             =
                               Obj.magic
                                 v_params'2803
                             in
                             Obj.magic
                               v_X'2921)
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
let v_t'5330 =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_print_status'2924 ->
        fun v_convfn'2925 ->
          fun v_dim'2926 ->
            fun v_tensorCreate'2927 ->
              fun v_acc'2933 ->
                fun v_c'2934 ->
                  match
                    Obj.magic
                      (let v__target'6448 =
                         v_acc'2933
                       in
                       let
                         CRec'6377 ({l0 = v_0'6449;l1 = v_1'6450;l2 = v_2'6451})
                       =
                         Obj.magic
                           Obj.magic
                           v__target'6448
                       in
                       Option.Some (v_0'6449, v_1'6450, v_2'6451))
                  with
                  | Option.Some (v_converted'2935, v_current_acc'2936, v_current_strrep'2937) ->
                      (let v_updated_tuple'2938 =
                         if
                           Obj.magic
                             (Obj.magic
                                v_and
                                (Obj.magic
                                   v_or
                                   (Obj.magic
                                      v_eqChar
                                      v_c'2934
                                      10)
                                   (Obj.magic
                                      v_eqChar
                                      v_c'2934
                                      32))
                                (Obj.magic
                                   ((>) : int -> int -> bool)
                                   (Obj.magic
                                      Boot.Intrinsics.Mseq.length
                                      v_current_strrep'2937)
                                   0))
                         then
                           CRec'6378 { l0 =
                               (Obj.repr
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.snoc
                                    v_current_acc'2936
                                    (Obj.magic
                                       v_string2int
                                       v_current_strrep'2937)));
                             l1 =
                               (Obj.repr
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [|  |])) }
                         else
                           Obj.magic
                             (CRec'6378 { l0 =
                                  (Obj.repr
                                    v_current_acc'2936);
                                l1 =
                                  (Obj.repr
                                    v_current_strrep'2937) })
                       in
                       match
                         Obj.magic
                           (let v__target'6452 =
                              v_updated_tuple'2938
                            in
                            let
                              CRec'6378 ({l0 = v_0'6453;l1 = v_1'6454})
                            =
                              Obj.magic
                                Obj.magic
                                v__target'6452
                            in
                            Option.Some (v_0'6453, v_1'6454))
                       with
                       | Option.Some (v_current_acc'2939, v_current_strrep'2940) ->
                           (if
                              Obj.magic
                                (Obj.magic
                                   v_eqChar
                                   v_c'2934
                                   10)
                            then
                              let v_class'2941 =
                                Obj.magic
                                  Boot.Intrinsics.Mseq.head
                                  v_current_acc'2939
                              in
                              let v_normalized_values'2942 =
                                Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  v_convfn'2925
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.tail
                                     v_current_acc'2939)
                              in
                              let v_dp'2943 =
                                CRec'6375 { linput =
                                    (Obj.repr
                                      (Obj.magic
                                         v_tensorOfSeqExn
                                         v_tensorCreate'2927
                                         v_dim'2926
                                         v_normalized_values'2942));
                                  lcorrect_outidx =
                                    (Obj.repr
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (Obj.magic
                                             v_class'2941);
                                           (0) |]));
                                  lcorrect_linear_outidx =
                                    (Obj.repr
                                      v_class'2941) }
                              in
                              let v_'2945 =
                                if
                                  Obj.magic
                                    v_print_status'2924
                                then
                                  let v_'2944 =
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
                                                         v_converted'2935)
                                                      1))) |]))
                                  in
                                  Obj.magic
                                    Boot.Intrinsics.IO.flush_stdout
                                    ()
                                else
                                  Obj.magic
                                    ()
                              in
                              CRec'6377 { l0 =
                                  (Obj.repr
                                    (Obj.magic
                                       Boot.Intrinsics.Mseq.snoc
                                       v_converted'2935
                                       v_dp'2943));
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
                                        v_c'2934
                                        32)
                                 then
                                   CRec'6377 { l0 =
                                       (Obj.repr
                                         v_converted'2935);
                                     l1 =
                                       (Obj.repr
                                         v_current_acc'2939);
                                     l2 =
                                       (Obj.repr
                                         v_current_strrep'2940) }
                                 else
                                   Obj.magic
                                     (CRec'6377 { l0 =
                                          (Obj.repr
                                            v_converted'2935);
                                        l1 =
                                          (Obj.repr
                                            v_current_acc'2939);
                                        l2 =
                                          (Obj.repr
                                            (Obj.magic
                                               Boot.Intrinsics.Mseq.snoc
                                               v_current_strrep'2940
                                               v_c'2934)) })))
                       | Option.None ->
                           (Obj.magic
                              (failwith
                                 "FILE \"/home/wikman/GitRepos/johnwikman/miking-ml/src/dataset/_common.mc\" 33:4-49:53 ERROR: Reached a never term, which should be impossible in a well-typed program.")))
                  | Option.None ->
                      (Obj.magic
                         (failwith
                            "FILE \"/home/wikman/GitRepos/johnwikman/miking-ml/src/dataset/_common.mc\" 26:4-31:6 ERROR: Reached a never term, which should be impossible in a well-typed program."));;
let v_t =
  fun v_x'2949 ->
    v_x'2949;;
let v_datasetLoadGenericIntclassInt2Float =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_print_status'2924 ->
        fun v_convfn'2925 ->
          fun v_dim'2926 ->
            fun v_tensorCreate'2927 ->
              fun v_filename'2928 ->
                let v_'2929 =
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
                              v_filename'2928);
                            (Obj.magic
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (46);
                                   (46);
                                   (46) |])) |]))
                in
                let v_contents'2930 =
                  Obj.magic
                    Boot.Intrinsics.File.read
                    v_filename'2928
                in
                let v_'2932 =
                  if
                    Obj.magic
                      v_print_status'2924
                  then
                    let v_'2931 =
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
                let v_result'2946 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.Helpers.fold_left
                    (Obj.magic
                       v_t'5330
                       v_join
                       v_tensorOfSeqExn
                       v_print_status'2924
                       v_convfn'2925
                       v_dim'2926
                       v_tensorCreate'2927)
                    (CRec'6377 { l0 =
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
                    v_contents'2930
                in
                let v_'2948 =
                  if
                    Obj.magic
                      v_print_status'2924
                  then
                    let v_'2947 =
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
                     CRec'6377 ({l0 = v_X'2950})
                   =
                     Obj.magic
                       v_result'2946
                   in
                   Obj.magic
                     v_X'2950);;
let v_convfn =
  fun v_i'2955 ->
    Obj.magic
      Float.div
      (Obj.magic
         float_of_int
         v_i'2955)
      255.;;
let v_datasetLoadCifar10 =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_tensorCreate'2952 ->
        fun v_filename'2953 ->
          let v_print_status'2954 =
            true
          in
          let v_dim'2957 =
            Obj.magic
              Boot.Intrinsics.Mseq.Helpers.of_array
              [| (3072) |]
          in
          Obj.magic
            v_datasetLoadGenericIntclassInt2Float
            v_join
            v_tensorOfSeqExn
            v_print_status'2954
            v_convfn
            v_dim'2957
            v_tensorCreate'2952
            v_filename'2953;;
let v_datasetLoadDenseCifar10 =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      Obj.magic
        v_datasetLoadCifar10
        v_join
        v_tensorOfSeqExn
        Boot.Intrinsics.T.create_generic_packed;;
let v_datasetLoadCArrayFloatCifar10 =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      Obj.magic
        v_datasetLoadCifar10
        v_join
        v_tensorOfSeqExn
        Boot.Intrinsics.T.create_float_packed;;
let v_cifar10_network =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_nnLossfnType_CrossEntropyLoss ->
              fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
                fun v_batchsize'2961 ->
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
                              v_batchsize'2961
                              3072
                              3072));
                         (Obj.magic
                           (Obj.magic
                              v_nnReLU
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2961
                              3072));
                         (Obj.magic
                           (Obj.magic
                              v_nnFullyConnected
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2961
                              3072
                              1024));
                         (Obj.magic
                           (Obj.magic
                              v_nnReLU
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2961
                              1024));
                         (Obj.magic
                           (Obj.magic
                              v_nnFullyConnected
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2961
                              1024
                              10));
                         (Obj.magic
                           (Obj.magic
                              v_nnSoftMax
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2961
                              10)) |])
                    (Obj.magic
                       v_nnCrossEntropyLoss
                       v_eqSeq
                       v_join
                       v_nnLossfnType_CrossEntropyLoss
                       v_nnLossfnType_SoftMaxCrossEntropyLoss
                       v_batchsize'2961
                       10);;
let v_cifar10_runBenchmark =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_nnLossfnType_CrossEntropyLoss ->
              fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
                fun v_nnVanillaSGDParameters ->
                  fun v_training_data'2963 ->
                    fun v_validation_data'2964 ->
                      let v_params'2965 =
                        let
                          CRec'6374 v_rec'6462
                        =
                          Obj.magic
                            (let
                               CRec'6374 v_rec'6461
                             =
                               Obj.magic
                                 (let
                                    CRec'6374 v_rec'6460
                                  =
                                    Obj.magic
                                      (let
                                         CRec'6374 v_rec'6459
                                       =
                                         Obj.magic
                                           (let
                                              CRec'6374 v_rec'6458
                                            =
                                              Obj.magic
                                                (let
                                                   CRec'6374 v_rec'6457
                                                 =
                                                   Obj.magic
                                                     (let
                                                        CRec'6374 v_rec'6456
                                                      =
                                                        Obj.magic
                                                          (let
                                                             CRec'6374 v_rec'6455
                                                           =
                                                             Obj.magic
                                                               v_nnVanillaSGDParameters
                                                           in
                                                           CRec'6374 { v_rec'6455
                                                             with
                                                             lbatchsize =
                                                               Obj.repr
                                                                 64 })
                                                      in
                                                      CRec'6374 { v_rec'6456
                                                        with
                                                        lepochs =
                                                          Obj.repr
                                                            100 })
                                                 in
                                                 CRec'6374 { v_rec'6457
                                                   with
                                                   linit_alpha =
                                                     Obj.repr
                                                       0.01 })
                                            in
                                            CRec'6374 { v_rec'6458
                                              with
                                              ldecay_alpha =
                                                Obj.repr
                                                  0.01 })
                                       in
                                       CRec'6374 { v_rec'6459
                                         with
                                         linit_lambda =
                                           Obj.repr
                                             0. })
                                  in
                                  CRec'6374 { v_rec'6460
                                    with
                                    lprintStatus =
                                      Obj.repr
                                        true })
                             in
                             CRec'6374 { v_rec'6461
                               with
                               levaluateBetweenEpochs =
                                 Obj.repr
                                   true })
                        in
                        CRec'6374 { v_rec'6462
                          with
                          levaluateBeforeFirstEpoch =
                            Obj.repr
                              true }
                      in
                      let v_'2966 =
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
                      let v_network'2968 =
                        Obj.magic
                          v_cifar10_network
                          v_eqSeq
                          v_join
                          v_nnCompType_FullyConnected
                          v_nnCompType_ReLU
                          v_nnCompType_SoftMax
                          v_nnLossfnType_CrossEntropyLoss
                          v_nnLossfnType_SoftMaxCrossEntropyLoss
                          (let
                             CRec'6374 ({lbatchsize = v_X'2967})
                           =
                             Obj.magic
                               v_params'2965
                           in
                           Obj.magic
                             v_X'2967)
                      in
                      let v_'2969 =
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
                               (99);
                               (105);
                               (102);
                               (97);
                               (114);
                               (49);
                               (48);
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
                      let v_t_start_ms'2970 =
                        Obj.magic
                          Boot.Intrinsics.Time.get_wall_time_ms
                          ()
                      in
                      let v_'2971 =
                        Obj.magic
                          v_nnTrainSGD
                          v_join
                          v_nnCompType_FullyConnected
                          v_nnCompType_ReLU
                          v_nnCompType_SoftMax
                          v_nnLossfnType_CrossEntropyLoss
                          v_nnLossfnType_SoftMaxCrossEntropyLoss
                          v_params'2965
                          v_network'2968
                          v_training_data'2963
                          v_validation_data'2964
                      in
                      let v_t_end_ms'2972 =
                        Obj.magic
                          Boot.Intrinsics.Time.get_wall_time_ms
                          ()
                      in
                      let v_t_diff_ms'2973 =
                        Obj.magic
                          Float.sub
                          v_t_end_ms'2972
                          v_t_start_ms'2970
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
                                     v_t_diff_ms'2973));
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
    (let v_'2975 =
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
     let v_training_data'2976 =
       Obj.magic
         v_datasetLoadCArrayFloatCifar10
         v_join
         v_tensorOfSeqExn
         (Obj.magic
            Boot.Intrinsics.Mseq.get
            Boot.Intrinsics.MSys.argv
            1)
     in
     let v_'2977 =
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
     let v_validation_data'2978 =
       Obj.magic
         v_datasetLoadCArrayFloatCifar10
         v_join
         v_tensorOfSeqExn
         (Obj.magic
            Boot.Intrinsics.Mseq.get
            Boot.Intrinsics.MSys.argv
            2)
     in
     Obj.magic
       v_cifar10_runBenchmark
       v_eqSeq
       v_join
       v_nnCompType_FullyConnected
       v_nnCompType_ReLU
       v_nnCompType_SoftMax
       v_nnLossfnType_CrossEntropyLoss
       v_nnLossfnType_SoftMaxCrossEntropyLoss
       v_nnVanillaSGDParameters
       v_training_data'2976
       v_validation_data'2978);;