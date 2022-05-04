external v_vNwYYUKMixx'5211 : Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t = "vSaNZyqlsLs" "vNwYYUKMixx";;
type v_record'6330 = {lepochs: Obj.t;lbatchsize: Obj.t;linit_alpha: Obj.t;ldecay_alpha: Obj.t;linit_lambda: Obj.t;lprintStatus: Obj.t;ldecay_lambda: Obj.t;levaluateBetweenEpochs: Obj.t;levaluateBeforeFirstEpoch: Obj.t};;
type v_record'6340 = {lty: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6341 = {lb: Obj.t;lw: Obj.t;lty: Obj.t;lb_grads: Obj.t;lw_grads: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6342 = {llossfn: Obj.t;lcomponents: Obj.t};;
type v_record'6358 = {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6362 = {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6322 =
  | CRec'6321 of {l0: Obj.t;l1: Obj.t};;
type v_record'6323 =
  | CRec'6320 of {l0: Obj.t;l1: Obj.t;l2: Obj.t};;
type v_record'6324 =
  | CRec'6318 of {linput: Obj.t;lcorrect_outidx: Obj.t;lcorrect_linear_outidx: Obj.t};;
type v_record'6325 =
  | CRec'6317 of {lepochs: Obj.t;lbatchsize: Obj.t;linit_alpha: Obj.t;ldecay_alpha: Obj.t;linit_lambda: Obj.t;lprintStatus: Obj.t;ldecay_lambda: Obj.t;levaluateBetweenEpochs: Obj.t;levaluateBeforeFirstEpoch: Obj.t};;
type v_record'6326 =
  | CRec'6316 of {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6327 =
  | CRec'6315 of {llossfn: Obj.t;lcomponents: Obj.t};;
type v_record'6328 =
  | CRec'6314 of {lty: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6329 =
  | CRec'6313 of {lb: Obj.t;lw: Obj.t;lty: Obj.t;lb_grads: Obj.t;lw_grads: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
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
              (let v__target'6366 =
                 CRec'6321 { l0 =
                     (Obj.repr
                       v_s1'2158);
                   l1 =
                     (Obj.repr
                       v_s2'2159) }
               in
               let
                 CRec'6321 ({l0 = v_0'6367;l1 = v_1'6368})
               =
                 Obj.magic
                   Obj.magic
                   v__target'6366
               in
               if
                 Obj.magic
                   ((<) : int -> int -> bool)
                   (Obj.magic
                      Boot.Intrinsics.Mseq.length
                      v_0'6367)
                   1
               then
                 Option.None
               else
                 Obj.magic
                   Obj.magic
                   (let
                      (v__prefix'6369, v__splitTemp'6370)
                    =
                      Obj.magic
                        Boot.Intrinsics.Mseq.split_at
                        v_0'6367
                        1
                    in
                    let
                      (v__middle'6371, v__postfix'6372)
                    =
                      Obj.magic
                        Boot.Intrinsics.Mseq.split_at
                        v__splitTemp'6370
                        (Obj.magic
                           Int.sub
                           (Obj.magic
                              Boot.Intrinsics.Mseq.length
                              v__splitTemp'6370)
                           0)
                    in
                    let v__seqElem'6373 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.get
                        v__prefix'6369
                        0
                    in
                    if
                      Obj.magic
                        ((<) : int -> int -> bool)
                        (Obj.magic
                           Boot.Intrinsics.Mseq.length
                           v_1'6368)
                        1
                    then
                      Option.None
                    else
                      Obj.magic
                        Obj.magic
                        (let
                           (v__prefix'6374, v__splitTemp'6375)
                         =
                           Obj.magic
                             Boot.Intrinsics.Mseq.split_at
                             v_1'6368
                             1
                         in
                         let
                           (v__middle'6376, v__postfix'6377)
                         =
                           Obj.magic
                             Boot.Intrinsics.Mseq.split_at
                             v__splitTemp'6375
                             (Obj.magic
                                Int.sub
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.length
                                   v__splitTemp'6375)
                                0)
                         in
                         let v__seqElem'6378 =
                           Obj.magic
                             Boot.Intrinsics.Mseq.get
                             v__prefix'6374
                             0
                         in
                         Option.Some (v__seqElem'6373, v__middle'6371, v__seqElem'6378, v__middle'6376))))
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
        let v_defaultCase'6379 =
          fun nv_ ->
            failwith
              "FILE \"/home/wikman/.local/lib/mcore/stdlib/seq.mc\" 103:7-103:12 ERROR: Reached a never term, which should be impossible in a well-typed program."
        in
        match
          Obj.magic
            v_fb'2173
        with
        | CSome'2149 v_x'6380 ->
            (match
               Obj.magic
                 (let v__target'6381 =
                    Obj.magic
                      Obj.magic
                      v_x'6380
                  in
                  let
                    CRec'6321 ({l0 = v_0'6382;l1 = v_1'6383})
                  =
                    Obj.magic
                      Obj.magic
                      v__target'6381
                  in
                  Option.Some (v_0'6382, v_1'6383))
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
                       v_defaultCase'6379
                       ())))
        | CNone'2151 ->
            (Obj.magic
               (Obj.magic
                  Boot.Intrinsics.Mseq.Helpers.of_array
                  [|  |]))
        | _ ->
            (Obj.magic
               (v_defaultCase'6379
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
  fun v_x'6385 ->
    (Float.exp)
      v_x'6385;;
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
          (let v__target'6386 =
             v_kidx'2207
           in
           let
             CRec'6321 ({l0 = v_0'6387;l1 = v_1'6388})
           =
             Obj.magic
               Obj.magic
               v__target'6386
           in
           Option.Some (v_0'6387, v_1'6388))
      with
      | Option.Some (v_k'2208, v_idx'2209) ->
          (CRec'6321 { l0 =
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
          (CRec'6321 { l0 =
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
        CRec'6321 ({l1 = v_X'2212})
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
let v_t'5214 =
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
                      v_t'5214
                      v_seq'2228)
               in
               Obj.magic
                 Boot.Intrinsics.T.reshape_exn
                 v_t'2231
                 v_shape'2227);;
let v_t'5215 =
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
    v_t'5215;;
let v_t'5216 =
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
             (CRec'6321 { l0 =
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
                v_t'5216
                v_t'2238
                v_n'2239)
             0);;
let v_t'5217 =
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
    v_t'5217;;
let v_tensorSize'2247 =
  fun v_t'2246 ->
    Obj.magic
      v__prod
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2246);;
let v_t'5218 =
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
                 v_t'5218
                 v_g'2251
                 v_v2'2256)
              v_v1'2255
          else
            Obj.magic
              (Obj.magic
                 v_f'2250
                 ());;
let v_t'5219 =
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
    v_t'5219;;
let v_t'5220 =
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
                 v_t'5220
                 v_g'2265
                 v_shape'2268
                 v_v2'2271)
              v_v1'2270
          else
            Obj.magic
              (Obj.magic
                 v_f'2264
                 ());;
let v_t'5221 =
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
    v_t'5221;;
let v_t'5222 =
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
          v_t'5222
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
let v_t'5223 =
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
      v_t'5223
  in
  ();;
let v_externalGaussianSample =
  fun v_x'6389 ->
    fun v_x'6390 ->
      (Owl_stats.gaussian_rvs)
        ~mu:(v_x'6389)
        ~sigma:(v_x'6390);;
let v_gaussianSample =
  fun v_mu'2290 ->
    fun v_sigma'2291 ->
      Obj.magic
        v_externalGaussianSample
        v_mu'2290
        v_sigma'2291;;
let v_t'5224 =
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
      v_t'5224
      1
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2293);;
let v_t'5225 =
  fun v_w'2298 ->
    fun v_x'2299 ->
      fun v_n'2304 ->
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
                           (Obj.magic
                              Int.mul
                              v_n'2304
                              v_i'2309)
                           v_j'2312))
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
                  let rec v_loop'6189 =
                      fun v_acc'6190 ->
                        fun v_i'6191 ->
                          if
                            Obj.magic
                              (Obj.magic
                                 ((<) : int -> int -> bool)
                                 v_i'6191
                                 v_n'2304)
                          then
                            let v_t'6192 =
                              Obj.magic
                                v_t'5225
                                v_w'2298
                                v_x'2299
                                v_n'2304
                                v_x_offset'2307
                                v_i'2309
                                v_acc'6190
                                v_i'6191
                            in
                            Obj.magic
                              v_loop'6189
                              v_t'6192
                              (Obj.magic
                                 Int.add
                                 v_i'6191
                                 1)
                          else
                            Obj.magic
                              v_acc'6190
                  in Obj.magic
                    v_loop'6189
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
                0
            in
            let v_n'2304 =
              Obj.magic
                Boot.Intrinsics.Mseq.get
                v_w_shape'2302
                1
            in
            let rec v_loop'6193 =
                fun v_acc'6194 ->
                  fun v_i'6195 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6195
                           (Obj.magic
                              Int.mul
                              v_s_max'2297
                              v_m'2303))
                    then
                      let v_t'6196 =
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
                          v_acc'6194
                          v_i'6195
                      in
                      Obj.magic
                        v_loop'6193
                        v_t'6196
                        (Obj.magic
                           Int.add
                           v_i'6195
                           1)
                    else
                      Obj.magic
                        v_acc'6194
            in Obj.magic
              v_loop'6193
              ()
              0;;
let v_t'5226 =
  fun v_x'2317 ->
    fun v_z'2319 ->
      fun v_n'2322 ->
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
                  v_n'2322;;
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
                    v_col'2326
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
                  let rec v_loop'6197 =
                      fun v_acc'6198 ->
                        fun v_i'6199 ->
                          if
                            Obj.magic
                              (Obj.magic
                                 ((<) : int -> int -> bool)
                                 v_i'6199
                                 v_m'2321)
                          then
                            let v_t'6200 =
                              Obj.magic
                                v_t'5226
                                v_x'2317
                                v_z'2319
                                v_n'2322
                                v_x_offset'2328
                                v_y_val'2330
                                v_acc'6198
                                v_i'6199
                            in
                            Obj.magic
                              v_loop'6197
                              v_t'6200
                              (Obj.magic
                                 Int.add
                                 v_i'6199
                                 1)
                          else
                            Obj.magic
                              v_acc'6198
                  in Obj.magic
                    v_loop'6197
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
              1
          in
          let v_n'2322 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_z_shape'2320
              2
          in
          let v_m_x_n'2323 =
            Obj.magic
              Int.mul
              v_m'2321
              v_n'2322
          in
          let rec v_loop'6201 =
              fun v_acc'6202 ->
                fun v_i'6203 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6203
                         (Obj.magic
                            Int.mul
                            v_s_max'2316
                            v_n'2322))
                  then
                    let v_t'6204 =
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
                        v_acc'6202
                        v_i'6203
                    in
                    Obj.magic
                      v_loop'6201
                      v_t'6204
                      (Obj.magic
                         Int.add
                         v_i'6203
                         1)
                  else
                    Obj.magic
                      v_acc'6202
          in Obj.magic
            v_loop'6201
            ()
            0;;
let v_t'5227 =
  fun v_x'2338 ->
    fun v_w'2339 ->
      fun v_n'2343 ->
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
                           (Obj.magic
                              Int.mul
                              v_n'2343
                              v_i'2351)
                           v_j'2349))
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
                let rec v_loop'6205 =
                    fun v_acc'6206 ->
                      fun v_i'6207 ->
                        if
                          Obj.magic
                            (Obj.magic
                               ((<) : int -> int -> bool)
                               v_i'6207
                               v_m'2342)
                        then
                          let v_t'6208 =
                            Obj.magic
                              v_t'5227
                              v_x'2338
                              v_w'2339
                              v_n'2343
                              v_x_offset'2348
                              v_j'2349
                              v_acc'6206
                              v_i'6207
                          in
                          Obj.magic
                            v_loop'6205
                            v_t'6208
                            (Obj.magic
                               Int.add
                               v_i'6207
                               1)
                        else
                          Obj.magic
                            v_acc'6206
                in Obj.magic
                  v_loop'6205
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
              0
          in
          let v_n'2343 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_w_shape'2341
              1
          in
          let rec v_loop'6209 =
              fun v_acc'6210 ->
                fun v_i'6211 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6211
                         (Obj.magic
                            Int.mul
                            v_s_max'2337
                            v_n'2343))
                  then
                    let v_t'6212 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2353
                             v_x'2338
                             v_w'2339
                             v_z'2340
                             v_m'2342
                             v_n'2343)
                        v_acc'6210
                        v_i'6211
                    in
                    Obj.magic
                      v_loop'6209
                      v_t'6212
                      (Obj.magic
                         Int.add
                         v_i'6211
                         1)
                  else
                    Obj.magic
                      v_acc'6210
          in Obj.magic
            v_loop'6209
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
        let rec v_loop'6213 =
            fun v_acc'6214 ->
              fun v_i'6215 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6215
                       (Obj.magic
                          Int.mul
                          v_s_max'2355
                          v_m'2359))
                then
                  let v_t'6216 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2362
                           v_x'2356
                           v_z'2357)
                      v_acc'6214
                      v_i'6215
                  in
                  Obj.magic
                    v_loop'6213
                    v_t'6216
                    (Obj.magic
                       Int.add
                       v_i'6215
                       1)
                else
                  Obj.magic
                    v_acc'6214
        in Obj.magic
          v_loop'6213
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
let v_t'5228 =
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
            let rec v_loop'6217 =
                fun v_acc'6218 ->
                  fun v_i'6219 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6219
                           v_m'2369)
                    then
                      let v_t'6220 =
                        Obj.magic
                          v_t'5228
                          v_z'2367
                          v_offset'2375
                          v_acc'6218
                          v_i'6219
                      in
                      Obj.magic
                        v_loop'6217
                        v_t'6220
                        (Obj.magic
                           Int.add
                           v_i'6219
                           1)
                    else
                      Obj.magic
                        v_acc'6218
            in Obj.magic
              v_loop'6217
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
            let rec v_loop'6221 =
                fun v_acc'6222 ->
                  fun v_i'6223 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6223
                           (Obj.magic
                              Int.mul
                              v_s_max'2364
                              v_m'2369))
                    then
                      let v_t'6224 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_iterfun'2372
                               v_x'2365
                               v_z'2367)
                          v_acc'6222
                          v_i'6223
                      in
                      Obj.magic
                        v_loop'6221
                        v_t'6224
                        (Obj.magic
                           Int.add
                           v_i'6223
                           1)
                    else
                      Obj.magic
                        v_acc'6222
            in Obj.magic
              v_loop'6221
              ()
              0
          in
          let v_'2380 =
            let rec v_loop'6225 =
                fun v_acc'6226 ->
                  fun v_i'6227 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6227
                           v_s_max'2364)
                    then
                      let v_t'6228 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_iterfunSummarize
                               v_expsumbuf'2366
                               v_z'2367
                               v_m'2369)
                          v_acc'6226
                          v_i'6227
                      in
                      Obj.magic
                        v_loop'6225
                        v_t'6228
                        (Obj.magic
                           Int.add
                           v_i'6227
                           1)
                    else
                      Obj.magic
                        v_acc'6226
            in Obj.magic
              v_loop'6225
              ()
              0
          in
          let rec v_loop'6229 =
              fun v_acc'6230 ->
                fun v_i'6231 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6231
                         (Obj.magic
                            Int.mul
                            v_s_max'2364
                            v_m'2369))
                  then
                    let v_t'6232 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfunRegularize
                             v_expsumbuf'2366
                             v_z'2367
                             v_m'2369)
                        v_acc'6230
                        v_i'6231
                    in
                    Obj.magic
                      v_loop'6229
                      v_t'6232
                      (Obj.magic
                         Int.add
                         v_i'6231
                         1)
                  else
                    Obj.magic
                      v_acc'6230
          in Obj.magic
            v_loop'6229
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
          let rec v_loop'6233 =
              fun v_acc'6234 ->
                fun v_i'6235 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6235
                         (Obj.magic
                            Int.mul
                            v_s_max'2387
                            v_m'2392))
                  then
                    let v_t'6236 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2396
                             v_h'2388
                             v_dldh'2389
                             v_z'2390)
                        v_acc'6234
                        v_i'6235
                    in
                    Obj.magic
                      v_loop'6233
                      v_t'6236
                      (Obj.magic
                         Int.add
                         v_i'6235
                         1)
                  else
                    Obj.magic
                      v_acc'6234
          in Obj.magic
            v_loop'6233
            ()
            0;;
let v_t'5229 =
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
              let rec v_loop'6237 =
                  fun v_acc'6238 ->
                    fun v_i'6239 ->
                      if
                        Obj.magic
                          (Obj.magic
                             ((<) : int -> int -> bool)
                             v_i'6239
                             v_m'2403)
                      then
                        let v_t'6240 =
                          Obj.magic
                            v_t'5229
                            v_p'2399
                            v_dldp'2400
                            v_s_offset'2406
                            v_i'2407
                            v_p_i'2408
                            v_acc'6238
                            v_i'6239
                        in
                        Obj.magic
                          v_loop'6237
                          v_t'6240
                          (Obj.magic
                             Int.add
                             v_i'6239
                             1)
                      else
                        Obj.magic
                          v_acc'6238
              in Obj.magic
                v_loop'6237
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
          let rec v_loop'6241 =
              fun v_acc'6242 ->
                fun v_i'6243 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6243
                         (Obj.magic
                            Int.mul
                            v_s_max'2398
                            v_m'2403))
                  then
                    let v_t'6244 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2415
                             v_p'2399
                             v_dldp'2400
                             v_z'2401
                             v_m'2403)
                        v_acc'6242
                        v_i'6243
                    in
                    Obj.magic
                      v_loop'6241
                      v_t'6244
                      (Obj.magic
                         Int.add
                         v_i'6243
                         1)
                  else
                    Obj.magic
                      v_acc'6242
          in Obj.magic
            v_loop'6241
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
        let rec v_loop'6245 =
            fun v_acc'6246 ->
              fun v_i'6247 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6247
                       (Obj.magic
                          Int.mul
                          v_s_max'2417
                          v_m'2421))
                then
                  let v_t'6248 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2423
                           v_x'2418
                           v_z'2419)
                      v_acc'6246
                      v_i'6247
                  in
                  Obj.magic
                    v_loop'6245
                    v_t'6248
                    (Obj.magic
                       Int.add
                       v_i'6247
                       1)
                else
                  Obj.magic
                    v_acc'6246
        in Obj.magic
          v_loop'6245
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
        let rec v_loop'6249 =
            fun v_acc'6250 ->
              fun v_i'6251 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6251
                       (Obj.magic
                          Int.mul
                          v_s_max'2425
                          v_m'2429))
                then
                  let v_t'6252 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2431
                           v_c'2426
                           v_z'2427)
                      v_acc'6250
                      v_i'6251
                  in
                  Obj.magic
                    v_loop'6249
                    v_t'6252
                    (Obj.magic
                       Int.add
                       v_i'6251
                       1)
                else
                  Obj.magic
                    v_acc'6250
        in Obj.magic
          v_loop'6249
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
      let rec v_loop'6253 =
          fun v_acc'6254 ->
            fun v_i'6255 ->
              if
                Obj.magic
                  (Obj.magic
                     ((<) : int -> int -> bool)
                     v_i'6255
                     v_m'2435)
              then
                let v_t'6256 =
                  Obj.magic
                    (fun nv_ ->
                       Obj.magic
                         v_iterfun'2437
                         v_c'2433
                         v_z'2434)
                    v_acc'6254
                    v_i'6255
                in
                Obj.magic
                  v_loop'6253
                  v_t'6256
                  (Obj.magic
                     Int.add
                     v_i'6255
                     1)
              else
                Obj.magic
                  v_acc'6254
      in Obj.magic
        v_loop'6253
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
          let rec v_loop'6257 =
              fun v_acc'6258 ->
                fun v_i'6259 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6259
                         v_m'2443)
                  then
                    let v_t'6260 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2446
                             v_x'2440
                             v_c'2441
                             v_z'2442
                             v_x_offset'2444)
                        v_acc'6258
                        v_i'6259
                    in
                    Obj.magic
                      v_loop'6257
                      v_t'6260
                      (Obj.magic
                         Int.add
                         v_i'6259
                         1)
                  else
                    Obj.magic
                      v_acc'6258
          in Obj.magic
            v_loop'6257
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
          let rec v_loop'6261 =
              fun v_acc'6262 ->
                fun v_i'6263 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6263
                         v_m'2452)
                  then
                    let v_t'6264 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2456
                             v_x'2449
                             v_c'2450
                             v_z'2451
                             v_z_offset'2453)
                        v_acc'6262
                        v_i'6263
                    in
                    Obj.magic
                      v_loop'6261
                      v_t'6264
                      (Obj.magic
                         Int.add
                         v_i'6263
                         1)
                  else
                    Obj.magic
                      v_acc'6262
          in Obj.magic
            v_loop'6261
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
          let rec v_loop'6265 =
              fun v_acc'6266 ->
                fun v_i'6267 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6267
                         v_s_max'2458)
                  then
                    let v_t'6268 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2467
                             v_y'2459
                             v_c'2460
                             v_z'2461
                             v_m'2462)
                        v_acc'6266
                        v_i'6267
                    in
                    Obj.magic
                      v_loop'6265
                      v_t'6268
                      (Obj.magic
                         Int.add
                         v_i'6267
                         1)
                  else
                    Obj.magic
                      v_acc'6266
          in Obj.magic
            v_loop'6265
            ()
            0;;
let v_t'5230 =
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
            let rec v_loop'6269 =
                fun v_acc'6270 ->
                  fun v_i'6271 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6271
                           v_m'2474)
                    then
                      let v_t'6272 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_t'5230
                               v_z'2472
                               v_offset'2476
                               v_idx'2477
                               v_v'2478)
                          v_acc'6270
                          v_i'6271
                      in
                      Obj.magic
                        v_loop'6269
                        v_t'6272
                        (Obj.magic
                           Int.add
                           v_i'6271
                           1)
                    else
                      Obj.magic
                        v_acc'6270
            in Obj.magic
              v_loop'6269
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
          let rec v_loop'6273 =
              fun v_acc'6274 ->
                fun v_i'6275 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6275
                         v_s_max'2469)
                  then
                    let v_t'6276 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2480
                             v_y'2470
                             v_x'2471
                             v_z'2472
                             v_m'2474)
                        v_acc'6274
                        v_i'6275
                    in
                    Obj.magic
                      v_loop'6273
                      v_t'6276
                      (Obj.magic
                         Int.add
                         v_i'6275
                         1)
                  else
                    Obj.magic
                      v_acc'6274
          in Obj.magic
            v_loop'6273
            ()
            0;;
let v_t'5231 =
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
            let rec v_loop'6277 =
                fun v_acc'6278 ->
                  fun v_i'6279 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6279
                           (Obj.magic
                              Int.sub
                              v_s'2483
                              1))
                    then
                      let v_t'6280 =
                        Obj.magic
                          v_t'5231
                          v_z'2482
                          v_m'2484
                          v_i'2485
                          v_acc'6278
                          v_i'6279
                      in
                      Obj.magic
                        v_loop'6277
                        v_t'6280
                        (Obj.magic
                           Int.add
                           v_i'6279
                           1)
                    else
                      Obj.magic
                        v_acc'6278
            in Obj.magic
              v_loop'6277
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
    let rec v_loop'6281 =
        fun v_acc'6282 ->
          fun v_i'6283 ->
            if
              Obj.magic
                (Obj.magic
                   ((<) : int -> int -> bool)
                   v_i'6283
                   v_m'2484)
            then
              let v_t'6284 =
                Obj.magic
                  (fun nv_ ->
                     Obj.magic
                       v_iterfun
                       v_z'2482
                       v_s'2483
                       v_m'2484)
                  v_acc'6282
                  v_i'6283
              in
              Obj.magic
                v_loop'6281
                v_t'6284
                (Obj.magic
                   Int.add
                   v_i'6283
                   1)
            else
              Obj.magic
                v_acc'6282
    in Obj.magic
      v_loop'6281
      ()
      0;;
let v_nnCompType_FullyConnected =
  0;;
let v_nnCompType_ReLU =
  1;;
let v_nnCompType_SoftMax =
  2;;
let v_t'5232 =
  fun v_'2504 ->
    0.;;
let v_t'5233 =
  fun v_'2505 ->
    0.;;
let v_t'5234 =
  fun v_'2506 ->
    0.;;
let v_t'5235 =
  fun v_'2507 ->
    0.;;
let v_t'5236 =
  fun v_'2508 ->
    0.;;
let v_t'5237 =
  fun v_'2509 ->
    0.;;
let v_t'5238 =
  fun v_'2510 ->
    0.;;
let v_t'5239 =
  fun v_'2511 ->
    0.;;
let v_t'5240 =
  fun v_'2512 ->
    0.;;
let v_t'5241 =
  fun v_'2513 ->
    0.;;
let v_t'5242 =
  fun v_'2514 ->
    0.;;
let v_t'5243 =
  fun v_'2515 ->
    0.;;
let v_t'5244 =
  fun v_'2516 ->
    0.;;
let v_t'5245 =
  fun v_'2517 ->
    0.;;
let v_t'5246 =
  fun v_'2518 ->
    0.;;
let v_t'5247 =
  fun v_'2519 ->
    0.;;
let v_t'5248 =
  fun v_'2520 ->
    0.;;
let v_t'5249 =
  fun v_'2521 ->
    0.;;
let v_t'5250 =
  fun v_'2522 ->
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
                            (let v_w'2502 =
                               Obj.magic
                                 Boot.Intrinsics.Mseq.get
                                 v_weights'2499
                                 0
                             in
                             let v_b'2503 =
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
                                       v_w'2502)
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
                                            v_b'2503)
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
                                                    v_w'2502)
                                                 0)
                                              (Obj.magic
                                                 v_tensorSize'2296
                                                 v_b'2503))
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
                                           (CRec'6313 { lb =
                                                (Obj.repr
                                                  v_b'2503);
                                              lw =
                                                (Obj.repr
                                                  v_w'2502);
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
                                                           v_b'2503))
                                                     v_t'5232));
                                              lw_grads =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2500
                                                        (Obj.magic
                                                           Boot.Intrinsics.T.shape
                                                           v_w'2502))
                                                     v_t'5233));
                                              lin_grads =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2500
                                                        v_indim'2497)
                                                     v_t'5234));
                                              lout_bufs =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2500
                                                        v_outdim'2498)
                                                     v_t'5235));
                                              lsoftmax_bufs =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.Helpers.of_array
                                                        [| (1) |])
                                                     v_t'5236)) }))))
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
                             CRec'6313 { lb =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (1) |])
                                      v_t'5237));
                               lw =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (1) |])
                                      v_t'5238));
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
                                      v_t'5239));
                               lw_grads =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (1) |])
                                      v_t'5240));
                               lin_grads =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.cons
                                         v_max_batchsize'2500
                                         v_indim'2497)
                                      v_t'5241));
                               lout_bufs =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.cons
                                         v_max_batchsize'2500
                                         v_outdim'2498)
                                      v_t'5242));
                               lsoftmax_bufs =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (1) |])
                                      v_t'5243)) }
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
                                  CRec'6313 { lb =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (1) |])
                                           v_t'5244));
                                    lw =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (1) |])
                                           v_t'5245));
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
                                           v_t'5246));
                                    lw_grads =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (1) |])
                                           v_t'5247));
                                    lin_grads =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.cons
                                              v_max_batchsize'2500
                                              v_indim'2497)
                                           v_t'5248));
                                    lout_bufs =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.cons
                                              v_max_batchsize'2500
                                              v_outdim'2498)
                                           v_t'5249));
                                    lsoftmax_bufs =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (Obj.magic
                                                  v_max_batchsize'2500) |])
                                           v_t'5250)) }
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
  fun v_comp'2524 ->
    let
      CRec'6313 ({lout_bufs = v_X'2525})
    =
      Obj.magic
        v_comp'2524
    in
    Obj.magic
      v_X'2525;;
let v_nnComponentApplyExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2527 ->
          fun v_inputs'2528 ->
            fun v_comp'2529 ->
              let v_ty'2531 =
                let
                  CRec'6313 ({lty = v_X'2530})
                =
                  Obj.magic
                    v_comp'2529
                in
                Obj.magic
                  v_X'2530
              in
              if
                Obj.magic
                  (Obj.magic
                     Int.equal
                     v_ty'2531
                     v_nnCompType_FullyConnected)
              then
                let v_'2535 =
                  Obj.magic
                    v_tensorOpExn__z___Wx_B
                    v_s_max'2527
                    (let
                       CRec'6313 ({lw = v_X'2532})
                     =
                       Obj.magic
                         v_comp'2529
                     in
                     Obj.magic
                       v_X'2532)
                    v_inputs'2528
                    (let
                       CRec'6313 ({lb = v_X'2533})
                     =
                       Obj.magic
                         v_comp'2529
                     in
                     Obj.magic
                       v_X'2533)
                    (let
                       CRec'6313 ({lout_bufs = v_X'2534})
                     =
                       Obj.magic
                         v_comp'2529
                     in
                     Obj.magic
                       v_X'2534)
                in
                let
                  CRec'6313 ({lout_bufs = v_X'2536})
                =
                  Obj.magic
                    v_comp'2529
                in
                Obj.magic
                  v_X'2536
              else
                Obj.magic
                  (if
                     Obj.magic
                       (Obj.magic
                          Int.equal
                          v_ty'2531
                          v_nnCompType_ReLU)
                   then
                     let v_'2538 =
                       Obj.magic
                         v_tensorOpExn__z___ReLU_x_
                         v_s_max'2527
                         v_inputs'2528
                         (let
                            CRec'6313 ({lout_bufs = v_X'2537})
                          =
                            Obj.magic
                              v_comp'2529
                          in
                          Obj.magic
                            v_X'2537)
                     in
                     let
                       CRec'6313 ({lout_bufs = v_X'2539})
                     =
                       Obj.magic
                         v_comp'2529
                     in
                     Obj.magic
                       v_X'2539
                   else
                     Obj.magic
                       (if
                          Obj.magic
                            (Obj.magic
                               Int.equal
                               v_ty'2531
                               v_nnCompType_SoftMax)
                        then
                          let v_'2542 =
                            Obj.magic
                              v_tensorOpExn__z___SoftMax_x_
                              v_s_max'2527
                              v_inputs'2528
                              (let
                                 CRec'6313 ({lsoftmax_bufs = v_X'2540})
                               =
                                 Obj.magic
                                   v_comp'2529
                               in
                               Obj.magic
                                 v_X'2540)
                              (let
                                 CRec'6313 ({lout_bufs = v_X'2541})
                               =
                                 Obj.magic
                                   v_comp'2529
                               in
                               Obj.magic
                                 v_X'2541)
                          in
                          let
                            CRec'6313 ({lout_bufs = v_X'2543})
                          =
                            Obj.magic
                              v_comp'2529
                          in
                          Obj.magic
                            v_X'2543
                        else
                          Obj.magic
                            (let
                               CRec'6313 ({lout_bufs = v_X'2544})
                             =
                               Obj.magic
                                 v_comp'2529
                             in
                             Obj.magic
                               v_X'2544)));;
let v_nnComponentBackpropExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2546 ->
          fun v_comp_inputs'2547 ->
            fun v_output_grads'2548 ->
              fun v_comp'2549 ->
                let v_ty'2551 =
                  let
                    CRec'6313 ({lty = v_X'2550})
                  =
                    Obj.magic
                      v_comp'2549
                  in
                  Obj.magic
                    v_X'2550
                in
                if
                  Obj.magic
                    (Obj.magic
                       Int.equal
                       v_ty'2551
                       v_nnCompType_FullyConnected)
                then
                  let v_'2553 =
                    Obj.magic
                      v_tensorOpExn__z___x
                      v_s_max'2546
                      v_output_grads'2548
                      (let
                         CRec'6313 ({lb_grads = v_X'2552})
                       =
                         Obj.magic
                           v_comp'2549
                       in
                       Obj.magic
                         v_X'2552)
                  in
                  let v_'2555 =
                    Obj.magic
                      v_tensorOpExn__z___x___y_T
                      v_s_max'2546
                      v_output_grads'2548
                      v_comp_inputs'2547
                      (let
                         CRec'6313 ({lw_grads = v_X'2554})
                       =
                         Obj.magic
                           v_comp'2549
                       in
                       Obj.magic
                         v_X'2554)
                  in
                  let v_'2558 =
                    Obj.magic
                      v_tensorOpExn__z____x_T___W__T
                      v_s_max'2546
                      v_output_grads'2548
                      (let
                         CRec'6313 ({lw = v_X'2556})
                       =
                         Obj.magic
                           v_comp'2549
                       in
                       Obj.magic
                         v_X'2556)
                      (let
                         CRec'6313 ({lin_grads = v_X'2557})
                       =
                         Obj.magic
                           v_comp'2549
                       in
                       Obj.magic
                         v_X'2557)
                  in
                  let
                    CRec'6313 ({lin_grads = v_X'2559})
                  =
                    Obj.magic
                      v_comp'2549
                  in
                  Obj.magic
                    v_X'2559
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            Int.equal
                            v_ty'2551
                            v_nnCompType_ReLU)
                     then
                       let v_'2562 =
                         Obj.magic
                           v_tensorOpExn__z___d_dx_l_ReLU_x__
                           v_s_max'2546
                           (let
                              CRec'6313 ({lout_bufs = v_X'2560})
                            =
                              Obj.magic
                                v_comp'2549
                            in
                            Obj.magic
                              v_X'2560)
                           v_output_grads'2548
                           (let
                              CRec'6313 ({lin_grads = v_X'2561})
                            =
                              Obj.magic
                                v_comp'2549
                            in
                            Obj.magic
                              v_X'2561)
                       in
                       let
                         CRec'6313 ({lin_grads = v_X'2563})
                       =
                         Obj.magic
                           v_comp'2549
                       in
                       Obj.magic
                         v_X'2563
                     else
                       Obj.magic
                         (if
                            Obj.magic
                              (Obj.magic
                                 Int.equal
                                 v_ty'2551
                                 v_nnCompType_SoftMax)
                          then
                            let v_'2566 =
                              Obj.magic
                                v_tensorOpExn__z___d_dx_l_SoftMax_x___
                                v_s_max'2546
                                (let
                                   CRec'6313 ({lout_bufs = v_X'2564})
                                 =
                                   Obj.magic
                                     v_comp'2549
                                 in
                                 Obj.magic
                                   v_X'2564)
                                v_output_grads'2548
                                (let
                                   CRec'6313 ({lin_grads = v_X'2565})
                                 =
                                   Obj.magic
                                     v_comp'2549
                                 in
                                 Obj.magic
                                   v_X'2565)
                            in
                            let
                              CRec'6313 ({lin_grads = v_X'2567})
                            =
                              Obj.magic
                                v_comp'2549
                            in
                            Obj.magic
                              v_X'2567
                          else
                            Obj.magic
                              (let
                                 CRec'6313 ({lin_grads = v_X'2568})
                               =
                                 Obj.magic
                                   v_comp'2549
                               in
                               Obj.magic
                                 v_X'2568)));;
let v_nnComponent_TEMP_SetGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2570 ->
      fun v_comp'2571 ->
        let v_ty'2573 =
          let
            CRec'6313 ({lty = v_X'2572})
          =
            Obj.magic
              v_comp'2571
          in
          Obj.magic
            v_X'2572
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2573
               v_nnCompType_FullyConnected)
        then
          let v_'2575 =
            Obj.magic
              v_tensorOpExn__Z___scalar_c_
              v_scalar'2570
              (let
                 CRec'6313 ({lw_grads = v_X'2574})
               =
                 Obj.magic
                   v_comp'2571
               in
               Obj.magic
                 v_X'2574)
          in
          Obj.magic
            v_tensorOpExn__Z___scalar_c_
            v_scalar'2570
            (let
               CRec'6313 ({lb_grads = v_X'2576})
             =
               Obj.magic
                 v_comp'2571
             in
             Obj.magic
               v_X'2576)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_ReduceGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_comp'2578 ->
      let v_ty'2580 =
        let
          CRec'6313 ({lty = v_X'2579})
        =
          Obj.magic
            v_comp'2578
        in
        Obj.magic
          v_X'2579
      in
      if
        Obj.magic
          (Obj.magic
             Int.equal
             v_ty'2580
             v_nnCompType_FullyConnected)
      then
        let v_'2582 =
          Obj.magic
            v_tensorOpExn__Dim1Reduce_z__dst___z_0__op_____
            (let
               CRec'6313 ({lw_grads = v_X'2581})
             =
               Obj.magic
                 v_comp'2578
             in
             Obj.magic
               v_X'2581)
        in
        Obj.magic
          v_tensorOpExn__Dim1Reduce_z__dst___z_0__op_____
          (let
             CRec'6313 ({lb_grads = v_X'2583})
           =
             Obj.magic
               v_comp'2578
           in
           Obj.magic
             v_X'2583)
      else
        Obj.magic
          ();;
let v_nnComponent_TEMP_ScaleGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2585 ->
      fun v_comp'2586 ->
        let v_ty'2588 =
          let
            CRec'6313 ({lty = v_X'2587})
          =
            Obj.magic
              v_comp'2586
          in
          Obj.magic
            v_X'2587
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2588
               v_nnCompType_FullyConnected)
        then
          let v_'2590 =
            Obj.magic
              v_tensorOpExn__z____scalar_c_
              1
              v_scalar'2585
              (let
                 CRec'6313 ({lw_grads = v_X'2589})
               =
                 Obj.magic
                   v_comp'2586
               in
               Obj.magic
                 v_X'2589)
          in
          Obj.magic
            v_tensorOpExn__z____scalar_c_
            1
            v_scalar'2585
            (let
               CRec'6313 ({lb_grads = v_X'2591})
             =
               Obj.magic
                 v_comp'2586
             in
             Obj.magic
               v_X'2591)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_ApplyGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2593 ->
      fun v_comp'2594 ->
        let v_ty'2596 =
          let
            CRec'6313 ({lty = v_X'2595})
          =
            Obj.magic
              v_comp'2594
          in
          Obj.magic
            v_X'2595
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2596
               v_nnCompType_FullyConnected)
        then
          let v_'2599 =
            Obj.magic
              v_tensorOpExn__Z____x___scalar_c_
              0
              (let
                 CRec'6313 ({lw_grads = v_X'2597})
               =
                 Obj.magic
                   v_comp'2594
               in
               Obj.magic
                 v_X'2597)
              v_scalar'2593
              (let
                 CRec'6313 ({lw = v_X'2598})
               =
                 Obj.magic
                   v_comp'2594
               in
               Obj.magic
                 v_X'2598)
          in
          Obj.magic
            v_tensorOpExn__Z____x___scalar_c_
            0
            (let
               CRec'6313 ({lb_grads = v_X'2600})
             =
               Obj.magic
                 v_comp'2594
             in
             Obj.magic
               v_X'2600)
            v_scalar'2593
            (let
               CRec'6313 ({lb = v_X'2601})
             =
               Obj.magic
                 v_comp'2594
             in
             Obj.magic
               v_X'2601)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_L2Regularize =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2603 ->
      fun v_comp'2604 ->
        let v_ty'2606 =
          let
            CRec'6313 ({lty = v_X'2605})
          =
            Obj.magic
              v_comp'2604
          in
          Obj.magic
            v_X'2605
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2606
               v_nnCompType_FullyConnected)
        then
          let v_'2609 =
            Obj.magic
              v_tensorOpExn__z____X___scalar_c_
              0
              (let
                 CRec'6313 ({lw = v_X'2607})
               =
                 Obj.magic
                   v_comp'2604
               in
               Obj.magic
                 v_X'2607)
              v_scalar'2603
              (let
                 CRec'6313 ({lw_grads = v_X'2608})
               =
                 Obj.magic
                   v_comp'2604
               in
               Obj.magic
                 v_X'2608)
          in
          Obj.magic
            v_tensorOpExn__z____X___scalar_c_
            0
            (let
               CRec'6313 ({lb = v_X'2610})
             =
               Obj.magic
                 v_comp'2604
             in
             Obj.magic
               v_X'2610)
            v_scalar'2603
            (let
               CRec'6313 ({lb_grads = v_X'2611})
             =
               Obj.magic
                 v_comp'2604
             in
             Obj.magic
               v_X'2611)
        else
          Obj.magic
            ();;
let v_nnComponentZeroGrad =
  fun v_nnCompType_FullyConnected ->
    fun v_comp'2613 ->
      Obj.magic
        v_nnComponent_TEMP_SetGradients
        v_nnCompType_FullyConnected
        0.
        v_comp'2613;;
let v_t'5251 =
  fun v_mu'2618 ->
    fun v_sigma'2619 ->
      fun v_'2620 ->
        Obj.magic
          v_gaussianSample
          v_mu'2618
          v_sigma'2619;;
let v_t'5252 =
  fun v_mu'2618 ->
    fun v_sigma'2619 ->
      fun v_'2622 ->
        Obj.magic
          v_gaussianSample
          v_mu'2618
          v_sigma'2619;;
let v_nnFullyConnected =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_max_batchsize'2615 ->
              fun v_indim'2616 ->
                fun v_outdim'2617 ->
                  let v_mu'2618 =
                    0.
                  in
                  let v_sigma'2619 =
                    0.001
                  in
                  let v_w'2621 =
                    Obj.magic
                      Boot.Intrinsics.T.create_float_packed
                      (Obj.magic
                         Boot.Intrinsics.Mseq.Helpers.of_array
                         [| (Obj.magic
                             v_outdim'2617);
                           (Obj.magic
                             v_indim'2616) |])
                      (Obj.magic
                         v_t'5251
                         v_mu'2618
                         v_sigma'2619)
                  in
                  let v_b'2623 =
                    Obj.magic
                      Boot.Intrinsics.T.create_float_packed
                      (Obj.magic
                         Boot.Intrinsics.Mseq.Helpers.of_array
                         [| (Obj.magic
                             v_outdim'2617) |])
                      (Obj.magic
                         v_t'5252
                         v_mu'2618
                         v_sigma'2619)
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
                           v_indim'2616) |])
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_outdim'2617) |])
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_w'2621);
                         (Obj.magic
                           v_b'2623) |])
                    v_max_batchsize'2615
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
            fun v_max_batchsize'2625 ->
              fun v_dim'2626 ->
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
                         v_dim'2626) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (Obj.magic
                         v_dim'2626) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [|  |])
                  v_max_batchsize'2625
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
            fun v_max_batchsize'2628 ->
              fun v_dim'2629 ->
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
                         v_dim'2629) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (Obj.magic
                         v_dim'2629) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [|  |])
                  v_max_batchsize'2628
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
let v_t'5253 =
  fun v_'2637 ->
    0.;;
let v_t'5254 =
  fun v_'2638 ->
    0.;;
let v_t'5255 =
  fun v_'2639 ->
    0.;;
let v_t'5256 =
  fun v_'2640 ->
    0.;;
let v_t'5257 =
  fun v_'2641 ->
    0.;;
let v_t'5258 =
  fun v_'2642 ->
    0.;;
let v_nnLossFunctionMakeExn =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnLossfnType_CrossEntropyLoss ->
        fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
          fun v_indim'2634 ->
            fun v_max_batchsize'2635 ->
              fun v_name'2636 ->
                if
                  Obj.magic
                    (Obj.magic
                       v_eqString
                       v_eqSeq
                       v_name'2636
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
                  CRec'6314 { lty =
                      (Obj.repr
                        v_nnLossfnType_CrossEntropyLoss);
                    lin_grads =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.cons
                              v_max_batchsize'2635
                              v_indim'2634)
                           v_t'5253));
                    lout_bufs =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.Helpers.of_array
                              [| (Obj.magic
                                  v_max_batchsize'2635) |])
                           v_t'5254));
                    lsoftmax_bufs =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.Helpers.of_array
                              [| (1) |])
                           v_t'5255)) }
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            v_eqString
                            v_eqSeq
                            v_name'2636
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
                       CRec'6314 { lty =
                           (Obj.repr
                             v_nnLossfnType_SoftMaxCrossEntropyLoss);
                         lin_grads =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.cons
                                   v_max_batchsize'2635
                                   v_indim'2634)
                                v_t'5256));
                         lout_bufs =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (Obj.magic
                                       v_max_batchsize'2635) |])
                                v_t'5257));
                         lsoftmax_bufs =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (Obj.magic
                                       v_max_batchsize'2635) |])
                                v_t'5258)) }
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
                                      v_name'2636);
                                    (Obj.magic
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (34) |])) |]))));;
let v_nnLossFunctionApplyExn =
  fun v_nnLossfnType_CrossEntropyLoss ->
    fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
      fun v_s_max'2644 ->
        fun v_inputs'2645 ->
          fun v_lossfn'2646 ->
            let v_ty'2648 =
              let
                CRec'6314 ({lty = v_X'2647})
              =
                Obj.magic
                  v_lossfn'2646
              in
              Obj.magic
                v_X'2647
            in
            if
              Obj.magic
                (Obj.magic
                   Int.equal
                   v_ty'2648
                   v_nnLossfnType_CrossEntropyLoss)
            then
              v_inputs'2645
            else
              Obj.magic
                (if
                   Obj.magic
                     (Obj.magic
                        Int.equal
                        v_ty'2648
                        v_nnLossfnType_SoftMaxCrossEntropyLoss)
                 then
                   let v_'2651 =
                     Obj.magic
                       v_tensorOpExn__z___SoftMax_x_
                       v_s_max'2644
                       v_inputs'2645
                       (let
                          CRec'6314 ({lsoftmax_bufs = v_X'2649})
                        =
                          Obj.magic
                            v_lossfn'2646
                        in
                        Obj.magic
                          v_X'2649)
                       (let
                          CRec'6314 ({lin_grads = v_X'2650})
                        =
                          Obj.magic
                            v_lossfn'2646
                        in
                        Obj.magic
                          v_X'2650)
                   in
                   let
                     CRec'6314 ({lin_grads = v_X'2652})
                   =
                     Obj.magic
                       v_lossfn'2646
                   in
                   Obj.magic
                     v_X'2652
                 else
                   Obj.magic
                     v_inputs'2645);;
let v_nnLossFunctionBackpropExn =
  fun v_nnLossfnType_CrossEntropyLoss ->
    fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
      fun v_s_max'2654 ->
        fun v_inputs'2655 ->
          fun v_expecteds'2656 ->
            fun v_lossfn'2657 ->
              let v_ty'2659 =
                let
                  CRec'6314 ({lty = v_X'2658})
                =
                  Obj.magic
                    v_lossfn'2657
                in
                Obj.magic
                  v_X'2658
              in
              if
                Obj.magic
                  (Obj.magic
                     Int.equal
                     v_ty'2659
                     v_nnLossfnType_CrossEntropyLoss)
              then
                let v_'2661 =
                  Obj.magic
                    v_tensorOpExn__z___1_Hot_y____scalar__1__x_T___1_Hot_y___
                    v_s_max'2654
                    v_expecteds'2656
                    v_inputs'2655
                    (let
                       CRec'6314 ({lin_grads = v_X'2660})
                     =
                       Obj.magic
                         v_lossfn'2657
                     in
                     Obj.magic
                       v_X'2660)
                in
                let
                  CRec'6314 ({lin_grads = v_X'2662})
                =
                  Obj.magic
                    v_lossfn'2657
                in
                Obj.magic
                  v_X'2662
              else
                Obj.magic
                  (if
                     Obj.magic
                       (Obj.magic
                          Int.equal
                          v_ty'2659
                          v_nnLossfnType_SoftMaxCrossEntropyLoss)
                   then
                     let v_'2664 =
                       Obj.magic
                         v_tensorOpExp__z____1_Hot_y____scalar_c_
                         v_s_max'2654
                         v_expecteds'2656
                         (Obj.magic
                            Float.neg
                            1.)
                         (let
                            CRec'6314 ({lin_grads = v_X'2663})
                          =
                            Obj.magic
                              v_lossfn'2657
                          in
                          Obj.magic
                            v_X'2663)
                     in
                     let
                       CRec'6314 ({lin_grads = v_X'2665})
                     =
                       Obj.magic
                         v_lossfn'2657
                     in
                     Obj.magic
                       v_X'2665
                   else
                     Obj.magic
                       (let
                          CRec'6314 ({lin_grads = v_X'2666})
                        =
                          Obj.magic
                            v_lossfn'2657
                        in
                        Obj.magic
                          v_X'2666));;
let v_nnCrossEntropyLoss =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnLossfnType_CrossEntropyLoss ->
        fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
          fun v_max_batchsize'2668 ->
            fun v_dim'2669 ->
              Obj.magic
                v_nnLossFunctionMakeExn
                v_eqSeq
                v_join
                v_nnLossfnType_CrossEntropyLoss
                v_nnLossfnType_SoftMaxCrossEntropyLoss
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_dim'2669) |])
                v_max_batchsize'2668
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
  fun v_components'2674 ->
    fun v_lossfn'2675 ->
      CRec'6315 { llossfn =
          (Obj.repr
            v_lossfn'2675);
        lcomponents =
          (Obj.repr
            v_components'2674) };;
let v_t'5259 =
  fun v_nnCompType_FullyConnected ->
    fun v_x'2678 ->
      fun v_comp'2679 ->
        let v_'2680 =
          Obj.magic
            v_nnComponentZeroGrad
            v_nnCompType_FullyConnected
            v_comp'2679
        in
        0;;
let v_nnZeroGrad =
  fun v_nnCompType_FullyConnected ->
    fun v_network'2677 ->
      let v_'2682 =
        Obj.magic
          Boot.Intrinsics.Mseq.Helpers.fold_left
          (Obj.magic
             v_t'5259
             v_nnCompType_FullyConnected)
          0
          (let
             CRec'6315 ({lcomponents = v_X'2681})
           =
             Obj.magic
               v_network'2677
           in
           Obj.magic
             v_X'2681)
      in
      ();;
let v_t'5260 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2686 ->
          fun v_prevouts'2687 ->
            fun v_comp'2688 ->
              Obj.magic
                v_nnComponentApplyExn
                v_nnCompType_FullyConnected
                v_nnCompType_ReLU
                v_nnCompType_SoftMax
                v_s_max'2686
                v_prevouts'2687
                v_comp'2688;;
let v_nnEvalExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_network'2684 ->
              fun v_inputs'2685 ->
                let v_s_max'2686 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.get
                    (Obj.magic
                       Boot.Intrinsics.T.shape
                       v_inputs'2685)
                    0
                in
                let v_comp_out'2690 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.Helpers.fold_left
                    (Obj.magic
                       v_t'5260
                       v_nnCompType_FullyConnected
                       v_nnCompType_ReLU
                       v_nnCompType_SoftMax
                       v_s_max'2686)
                    v_inputs'2685
                    (let
                       CRec'6315 ({lcomponents = v_X'2689})
                     =
                       Obj.magic
                         v_network'2684
                     in
                     Obj.magic
                       v_X'2689)
                in
                Obj.magic
                  v_nnLossFunctionApplyExn
                  v_nnLossfnType_CrossEntropyLoss
                  v_nnLossfnType_SoftMaxCrossEntropyLoss
                  v_s_max'2686
                  v_comp_out'2690
                  (let
                     CRec'6315 ({llossfn = v_X'2691})
                   =
                     Obj.magic
                       v_network'2684
                   in
                   Obj.magic
                     v_X'2691);;
let v_t'5261 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_network'2693 ->
          fun v_s_max'2696 ->
            fun v_n_components'2703 ->
              fun v_out_grads'2713 ->
                fun v_i'2714 ->
                  let v_idx'2715 =
                    Obj.magic
                      Int.sub
                      v_n_components'2703
                      (Obj.magic
                         Int.add
                         v_i'2714
                         2)
                  in
                  let v_previdx'2716 =
                    Obj.magic
                      Int.sub
                      v_idx'2715
                      1
                  in
                  let v_comp'2718 =
                    Obj.magic
                      Boot.Intrinsics.Mseq.get
                      (let
                         CRec'6315 ({lcomponents = v_X'2717})
                       =
                         Obj.magic
                           v_network'2693
                       in
                       Obj.magic
                         v_X'2717)
                      v_idx'2715
                  in
                  let v_in_bufs'2720 =
                    Obj.magic
                      v_nnComponentOutBufs
                      (Obj.magic
                         Boot.Intrinsics.Mseq.get
                         (let
                            CRec'6315 ({lcomponents = v_X'2719})
                          =
                            Obj.magic
                              v_network'2693
                          in
                          Obj.magic
                            v_X'2719)
                         v_previdx'2716)
                  in
                  Obj.magic
                    v_nnComponentBackpropExn
                    v_nnCompType_FullyConnected
                    v_nnCompType_ReLU
                    v_nnCompType_SoftMax
                    v_s_max'2696
                    v_in_bufs'2720
                    v_out_grads'2713
                    v_comp'2718;;
let v_nnBackpropExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_network'2693 ->
              fun v_batch'2694 ->
                let v_s_max'2696 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.get
                    (Obj.magic
                       Boot.Intrinsics.T.shape
                       (let
                          CRec'6316 ({linputs = v_X'2695})
                        =
                          Obj.magic
                            v_batch'2694
                        in
                        Obj.magic
                          v_X'2695))
                    0
                in
                let v_outputs'2698 =
                  Obj.magic
                    v_nnEvalExn
                    v_nnCompType_FullyConnected
                    v_nnCompType_ReLU
                    v_nnCompType_SoftMax
                    v_nnLossfnType_CrossEntropyLoss
                    v_nnLossfnType_SoftMaxCrossEntropyLoss
                    v_network'2693
                    (let
                       CRec'6316 ({linputs = v_X'2697})
                     =
                       Obj.magic
                         v_batch'2694
                     in
                     Obj.magic
                       v_X'2697)
                in
                let v_lossgrads'2701 =
                  Obj.magic
                    v_nnLossFunctionBackpropExn
                    v_nnLossfnType_CrossEntropyLoss
                    v_nnLossfnType_SoftMaxCrossEntropyLoss
                    v_s_max'2696
                    v_outputs'2698
                    (let
                       CRec'6316 ({lcorrect_linear_outidxs = v_X'2699})
                     =
                       Obj.magic
                         v_batch'2694
                     in
                     Obj.magic
                       v_X'2699)
                    (let
                       CRec'6315 ({llossfn = v_X'2700})
                     =
                       Obj.magic
                         v_network'2693
                     in
                     Obj.magic
                       v_X'2700)
                in
                let v_n_components'2703 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.length
                    (let
                       CRec'6315 ({lcomponents = v_X'2702})
                     =
                       Obj.magic
                         v_network'2693
                     in
                     Obj.magic
                       v_X'2702)
                in
                if
                  Obj.magic
                    (Obj.magic
                       Int.equal
                       v_n_components'2703
                       0)
                then
                  ()
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            Int.equal
                            v_n_components'2703
                            1)
                     then
                       let v_lastcomp'2705 =
                         Obj.magic
                           Boot.Intrinsics.Mseq.get
                           (let
                              CRec'6315 ({lcomponents = v_X'2704})
                            =
                              Obj.magic
                                v_network'2693
                            in
                            Obj.magic
                              v_X'2704)
                           0
                       in
                       let v_'2707 =
                         Obj.magic
                           v_nnComponentBackpropExn
                           v_nnCompType_FullyConnected
                           v_nnCompType_ReLU
                           v_nnCompType_SoftMax
                           v_s_max'2696
                           (let
                              CRec'6316 ({linputs = v_X'2706})
                            =
                              Obj.magic
                                v_batch'2694
                            in
                            Obj.magic
                              v_X'2706)
                           v_lossgrads'2701
                           v_lastcomp'2705
                       in
                       ()
                     else
                       Obj.magic
                         (let v_lastcomp'2709 =
                            Obj.magic
                              Boot.Intrinsics.Mseq.get
                              (let
                                 CRec'6315 ({lcomponents = v_X'2708})
                               =
                                 Obj.magic
                                   v_network'2693
                               in
                               Obj.magic
                                 v_X'2708)
                              (Obj.magic
                                 Int.sub
                                 v_n_components'2703
                                 1)
                          in
                          let v_lastcomp_in_bufs'2711 =
                            Obj.magic
                              v_nnComponentOutBufs
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.get
                                 (let
                                    CRec'6315 ({lcomponents = v_X'2710})
                                  =
                                    Obj.magic
                                      v_network'2693
                                  in
                                  Obj.magic
                                    v_X'2710)
                                 (Obj.magic
                                    Int.sub
                                    v_n_components'2703
                                    2))
                          in
                          let v_lastcomp_in_grads'2712 =
                            Obj.magic
                              v_nnComponentBackpropExn
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_s_max'2696
                              v_lastcomp_in_bufs'2711
                              v_lossgrads'2701
                              v_lastcomp'2709
                          in
                          let v_firstcomp_out_grads'2721 =
                            let rec v_loop'6285 =
                                fun v_acc'6286 ->
                                  fun v_i'6287 ->
                                    if
                                      Obj.magic
                                        (Obj.magic
                                           ((<) : int -> int -> bool)
                                           v_i'6287
                                           (Obj.magic
                                              Int.sub
                                              v_n_components'2703
                                              2))
                                    then
                                      let v_t'6288 =
                                        Obj.magic
                                          v_t'5261
                                          v_nnCompType_FullyConnected
                                          v_nnCompType_ReLU
                                          v_nnCompType_SoftMax
                                          v_network'2693
                                          v_s_max'2696
                                          v_n_components'2703
                                          v_acc'6286
                                          v_i'6287
                                      in
                                      Obj.magic
                                        v_loop'6285
                                        v_t'6288
                                        (Obj.magic
                                           Int.add
                                           v_i'6287
                                           1)
                                    else
                                      Obj.magic
                                        v_acc'6286
                            in Obj.magic
                              v_loop'6285
                              v_lastcomp_in_grads'2712
                              0
                          in
                          let v_firstcomp'2723 =
                            Obj.magic
                              Boot.Intrinsics.Mseq.get
                              (let
                                 CRec'6315 ({lcomponents = v_X'2722})
                               =
                                 Obj.magic
                                   v_network'2693
                               in
                               Obj.magic
                                 v_X'2722)
                              0
                          in
                          let v_firstcomp_in_bufs'2725 =
                            let
                              CRec'6316 ({linputs = v_X'2724})
                            =
                              Obj.magic
                                v_batch'2694
                            in
                            Obj.magic
                              v_X'2724
                          in
                          let v_'2726 =
                            Obj.magic
                              v_nnComponentBackpropExn
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_s_max'2696
                              v_firstcomp_in_bufs'2725
                              v_firstcomp_out_grads'2721
                              v_firstcomp'2723
                          in
                          ()));;
let v_t'5262 =
  fun v_nnCompType_FullyConnected ->
    fun v_batchsize_regularizer'2736 ->
      fun v_x'2737 ->
        fun v_comp'2738 ->
          let v_'2739 =
            Obj.magic
              v_nnComponent_TEMP_ReduceGradients
              v_nnCompType_FullyConnected
              v_comp'2738
          in
          let v_'2740 =
            Obj.magic
              v_nnComponent_TEMP_ScaleGradients
              v_nnCompType_FullyConnected
              v_batchsize_regularizer'2736
              v_comp'2738
          in
          0;;
let v_t'5263 =
  fun v_nnCompType_FullyConnected ->
    fun v_lambda'2730 ->
      fun v_x'2743 ->
        fun v_comp'2744 ->
          let v_'2745 =
            Obj.magic
              v_nnComponent_TEMP_L2Regularize
              v_nnCompType_FullyConnected
              (Obj.magic
                 Float.mul
                 2.
                 v_lambda'2730)
              v_comp'2744
          in
          0;;
let v_t'5264 =
  fun v_nnCompType_FullyConnected ->
    fun v_alpha'2729 ->
      fun v_x'2749 ->
        fun v_comp'2750 ->
          let v_'2751 =
            Obj.magic
              v_nnComponent_TEMP_ApplyGradients
              v_nnCompType_FullyConnected
              (Obj.magic
                 Float.neg
                 v_alpha'2729)
              v_comp'2750
          in
          0;;
let v_nnGradientDescentExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_network'2728 ->
              fun v_alpha'2729 ->
                fun v_lambda'2730 ->
                  fun v_batch'2731 ->
                    let v_'2732 =
                      Obj.magic
                        v_nnZeroGrad
                        v_nnCompType_FullyConnected
                        v_network'2728
                    in
                    let v_batchsize'2734 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.get
                        (Obj.magic
                           Boot.Intrinsics.T.shape
                           (let
                              CRec'6316 ({linputs = v_X'2733})
                            =
                              Obj.magic
                                v_batch'2731
                            in
                            Obj.magic
                              v_X'2733))
                        0
                    in
                    let v_'2735 =
                      Obj.magic
                        v_nnBackpropExn
                        v_nnCompType_FullyConnected
                        v_nnCompType_ReLU
                        v_nnCompType_SoftMax
                        v_nnLossfnType_CrossEntropyLoss
                        v_nnLossfnType_SoftMaxCrossEntropyLoss
                        v_network'2728
                        v_batch'2731
                    in
                    let v_batchsize_regularizer'2736 =
                      Obj.magic
                        Float.div
                        1.
                        (Obj.magic
                           float_of_int
                           v_batchsize'2734)
                    in
                    let v_'2742 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.Helpers.fold_left
                        (Obj.magic
                           v_t'5262
                           v_nnCompType_FullyConnected
                           v_batchsize_regularizer'2736)
                        0
                        (let
                           CRec'6315 ({lcomponents = v_X'2741})
                         =
                           Obj.magic
                             v_network'2728
                         in
                         Obj.magic
                           v_X'2741)
                    in
                    let v_'2748 =
                      if
                        Obj.magic
                          (Obj.magic
                             Float.equal
                             v_lambda'2730
                             0.)
                      then
                        ()
                      else
                        Obj.magic
                          (let v_'2747 =
                             Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.fold_left
                               (Obj.magic
                                  v_t'5263
                                  v_nnCompType_FullyConnected
                                  v_lambda'2730)
                               0
                               (let
                                  CRec'6315 ({lcomponents = v_X'2746})
                                =
                                  Obj.magic
                                    v_network'2728
                                in
                                Obj.magic
                                  v_X'2746)
                           in
                           ())
                    in
                    let v_'2753 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.Helpers.fold_left
                        (Obj.magic
                           v_t'5264
                           v_nnCompType_FullyConnected
                           v_alpha'2729)
                        0
                        (let
                           CRec'6315 ({lcomponents = v_X'2752})
                         =
                           Obj.magic
                             v_network'2728
                         in
                         Obj.magic
                           v_X'2752)
                    in
                    ();;
let v_t'5265 =
  fun v_acc'2756 ->
    fun v_e'2757 ->
      Obj.magic
        Int.mul
        v_acc'2756
        v_e'2757;;
let v_tensorSize =
  fun v_t'2755 ->
    Obj.magic
      Boot.Intrinsics.Mseq.Helpers.fold_left
      v_t'5265
      1
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2755);;
let v_t'5266 =
  fun v_t'2763 ->
    fun v_s_offset'2766 ->
      fun v_cand_idx'2767 ->
        fun v_idx'2768 ->
          if
            Obj.magic
              (Obj.magic
                 ((>) : float -> float -> bool)
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_t'2763
                    (Obj.magic
                       Int.add
                       v_idx'2768
                       v_s_offset'2766))
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_t'2763
                    (Obj.magic
                       Int.add
                       v_cand_idx'2767
                       v_s_offset'2766)))
          then
            v_idx'2768
          else
            Obj.magic
              v_cand_idx'2767;;
let v_tensorLinearMaxIdx =
  fun v_s_idx'2762 ->
    fun v_t'2763 ->
      let v_s'2764 =
        Obj.magic
          Boot.Intrinsics.Mseq.get
          (Obj.magic
             Boot.Intrinsics.T.shape
             v_t'2763)
          0
      in
      let v_size'2765 =
        Obj.magic
          Int.div
          (Obj.magic
             v_tensorSize
             v_t'2763)
          v_s'2764
      in
      let v_s_offset'2766 =
        Obj.magic
          Int.mul
          v_s_idx'2762
          v_size'2765
      in
      let rec v_loop'6289 =
          fun v_acc'6290 ->
            fun v_i'6291 ->
              if
                Obj.magic
                  (Obj.magic
                     ((<) : int -> int -> bool)
                     v_i'6291
                     (Obj.magic
                        Int.sub
                        v_size'2765
                        1))
              then
                let v_t'6292 =
                  Obj.magic
                    v_t'5266
                    v_t'2763
                    v_s_offset'2766
                    v_acc'6290
                    v_i'6291
                in
                Obj.magic
                  v_loop'6289
                  v_t'6292
                  (Obj.magic
                     Int.add
                     v_i'6291
                     1)
              else
                Obj.magic
                  v_acc'6290
      in Obj.magic
        v_loop'6289
        (Obj.magic
           Int.sub
           v_size'2765
           1)
        0;;
let v_t'5268 =
  fun v_batch'2776 ->
    fun v_outputs'2780 ->
      fun v_b_acc'2781 ->
        fun v_b_idx'2782 ->
          if
            Obj.magic
              (Obj.magic
                 Int.equal
                 (Obj.magic
                    v_tensorLinearMaxIdx
                    v_b_idx'2782
                    v_outputs'2780)
                 (Obj.magic
                    Boot.Intrinsics.T.get_exn
                    (let
                       CRec'6316 ({lcorrect_linear_outidxs = v_X'2783})
                     =
                       Obj.magic
                         v_batch'2776
                     in
                     Obj.magic
                       v_X'2783)
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_b_idx'2782) |])))
          then
            Obj.magic
              Int.add
              v_b_acc'2781
              1
          else
            Obj.magic
              v_b_acc'2781;;
let v_t'5267 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_printStatus'2759 ->
              fun v_network'2760 ->
                fun v_batches'2761 ->
                  fun v_acc'2770 ->
                    fun v_i'2771 ->
                      let v_'2775 =
                        if
                          Obj.magic
                            v_printStatus'2759
                        then
                          let v_'2772 =
                            Obj.magic
                              Boot.Intrinsics.IO.print
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (13) |])
                          in
                          let v_'2773 =
                            Obj.magic
                              Boot.Intrinsics.IO.print
                              (Obj.magic
                                 Boot.Intrinsics.FloatConversion.float2string
                                 (Obj.magic
                                    float_of_int
                                    (Obj.magic
                                       Int.add
                                       v_i'2771
                                       1)))
                          in
                          let v_'2774 =
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
                                     v_batches'2761)))
                        else
                          Obj.magic
                            ()
                      in
                      let v_batch'2776 =
                        Obj.magic
                          Boot.Intrinsics.Mseq.get
                          v_batches'2761
                          v_i'2771
                      in
                      let v_batchsize'2778 =
                        Obj.magic
                          Boot.Intrinsics.Mseq.get
                          (Obj.magic
                             Boot.Intrinsics.T.shape
                             (let
                                CRec'6316 ({linputs = v_X'2777})
                              =
                                Obj.magic
                                  v_batch'2776
                              in
                              Obj.magic
                                v_X'2777))
                          0
                      in
                      let v_outputs'2780 =
                        Obj.magic
                          v_nnEvalExn
                          v_nnCompType_FullyConnected
                          v_nnCompType_ReLU
                          v_nnCompType_SoftMax
                          v_nnLossfnType_CrossEntropyLoss
                          v_nnLossfnType_SoftMaxCrossEntropyLoss
                          v_network'2760
                          (let
                             CRec'6316 ({linputs = v_X'2779})
                           =
                             Obj.magic
                               v_batch'2776
                           in
                           Obj.magic
                             v_X'2779)
                      in
                      let v_batch_accuracy'2784 =
                        let rec v_loop'6293 =
                            fun v_acc'6294 ->
                              fun v_i'6295 ->
                                if
                                  Obj.magic
                                    (Obj.magic
                                       ((<) : int -> int -> bool)
                                       v_i'6295
                                       v_batchsize'2778)
                                then
                                  let v_t'6296 =
                                    Obj.magic
                                      v_t'5268
                                      v_batch'2776
                                      v_outputs'2780
                                      v_acc'6294
                                      v_i'6295
                                  in
                                  Obj.magic
                                    v_loop'6293
                                    v_t'6296
                                    (Obj.magic
                                       Int.add
                                       v_i'6295
                                       1)
                                else
                                  Obj.magic
                                    v_acc'6294
                        in Obj.magic
                          v_loop'6293
                          0
                          0
                      in
                      Obj.magic
                        Int.add
                        v_acc'2770
                        v_batch_accuracy'2784;;
let v_nnAccuracyDiscrete =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_printStatus'2759 ->
              fun v_network'2760 ->
                fun v_batches'2761 ->
                  let v_correct_guesses'2785 =
                    let rec v_loop'6297 =
                        fun v_acc'6298 ->
                          fun v_i'6299 ->
                            if
                              Obj.magic
                                (Obj.magic
                                   ((<) : int -> int -> bool)
                                   v_i'6299
                                   (Obj.magic
                                      Boot.Intrinsics.Mseq.length
                                      v_batches'2761))
                            then
                              let v_t'6300 =
                                Obj.magic
                                  v_t'5267
                                  v_nnCompType_FullyConnected
                                  v_nnCompType_ReLU
                                  v_nnCompType_SoftMax
                                  v_nnLossfnType_CrossEntropyLoss
                                  v_nnLossfnType_SoftMaxCrossEntropyLoss
                                  v_printStatus'2759
                                  v_network'2760
                                  v_batches'2761
                                  v_acc'6298
                                  v_i'6299
                              in
                              Obj.magic
                                v_loop'6297
                                v_t'6300
                                (Obj.magic
                                   Int.add
                                   v_i'6299
                                   1)
                            else
                              Obj.magic
                                v_acc'6298
                    in Obj.magic
                      v_loop'6297
                      0
                      0
                  in
                  let v_'2786 =
                    if
                      Obj.magic
                        v_printStatus'2759
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
                  v_correct_guesses'2785;;
let v_t'5269 =
  fun v_acc'2792 ->
    fun v_batch'2793 ->
      Obj.magic
        Int.add
        v_acc'2792
        (Obj.magic
           Boot.Intrinsics.Mseq.get
           (Obj.magic
              Boot.Intrinsics.T.shape
              (let
                 CRec'6316 ({linputs = v_X'2794})
               =
                 Obj.magic
                   v_batch'2793
               in
               Obj.magic
                 v_X'2794))
           0);;
let v_nnAccuracyProportion =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_printStatus'2788 ->
              fun v_network'2789 ->
                fun v_batches'2790 ->
                  let v_correct_guesses'2791 =
                    Obj.magic
                      v_nnAccuracyDiscrete
                      v_nnCompType_FullyConnected
                      v_nnCompType_ReLU
                      v_nnCompType_SoftMax
                      v_nnLossfnType_CrossEntropyLoss
                      v_nnLossfnType_SoftMaxCrossEntropyLoss
                      v_printStatus'2788
                      v_network'2789
                      v_batches'2790
                  in
                  let v_datalength'2795 =
                    Obj.magic
                      Boot.Intrinsics.Mseq.Helpers.fold_left
                      v_t'5269
                      0
                      v_batches'2790
                  in
                  Obj.magic
                    Float.div
                    (Obj.magic
                       float_of_int
                       v_correct_guesses'2791)
                    (Obj.magic
                       float_of_int
                       v_datalength'2795);;
let v_nnVanillaSGDParameters =
  CRec'6317 { lepochs =
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
let rec v_t'5270 =
    fun v_dataset'2826 ->
      fun v_start_idx'2833 ->
        fun v_idx'2841 ->
          let v_b_idx'2842 =
            Obj.magic
              Int.add
              v_start_idx'2833
              (Obj.magic
                 Boot.Intrinsics.Mseq.get
                 v_idx'2841
                 0)
          in
          let v_d_idx'2843 =
            Obj.magic
              Boot.Intrinsics.Mseq.tail
              v_idx'2841
          in
          let v_dp'2844 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_dataset'2826
              v_b_idx'2842
          in
          Obj.magic
            Boot.Intrinsics.T.get_exn
            (let
               CRec'6318 ({linput = v_X'2845})
             =
               Obj.magic
                 v_dp'2844
             in
             Obj.magic
               v_X'2845)
            v_d_idx'2843
and v_t'5271 =
    fun v_dataset'2826 ->
      fun v_start_idx'2833 ->
        fun v_idx'2847 ->
          let v_b_idx'2848 =
            Obj.magic
              Int.add
              v_start_idx'2833
              (Obj.magic
                 Boot.Intrinsics.Mseq.get
                 v_idx'2847
                 0)
          in
          let v_dp'2849 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_dataset'2826
              v_b_idx'2848
          in
          let
            CRec'6318 ({lcorrect_linear_outidx = v_X'2850})
          =
            Obj.magic
              v_dp'2849
          in
          Obj.magic
            v_X'2850
and v_batchMakerH =
    fun v_join ->
      fun v_params'2799 ->
        fun v_dataset'2826 ->
          fun v_acc'2827 ->
            fun v_i'2828 ->
              let v_datalen'2829 =
                Obj.magic
                  Boot.Intrinsics.Mseq.length
                  v_dataset'2826
              in
              let v_'2832 =
                if
                  Obj.magic
                    (let
                       CRec'6317 ({lprintStatus = v_X'2830})
                     =
                       Obj.magic
                         v_params'2799
                     in
                     Obj.magic
                       v_X'2830)
                then
                  let v_'2831 =
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
                                      v_i'2828
                                      1)));
                              (Obj.magic
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (47) |]));
                              (Obj.magic
                                (Obj.magic
                                   v_int2string
                                   v_datalen'2829));
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
                     v_i'2828
                     v_datalen'2829)
              then
                v_acc'2827
              else
                Obj.magic
                  (let v_start_idx'2833 =
                     v_i'2828
                   in
                   let v_end_idx'2835 =
                     Obj.magic
                       Int.add
                       v_start_idx'2833
                       (let
                          CRec'6317 ({lbatchsize = v_X'2834})
                        =
                          Obj.magic
                            v_params'2799
                        in
                        Obj.magic
                          v_X'2834)
                   in
                   let v_end_idx'2836 =
                     if
                       Obj.magic
                         (Obj.magic
                            ((>=) : int -> int -> bool)
                            v_end_idx'2835
                            v_datalen'2829)
                     then
                       v_datalen'2829
                     else
                       Obj.magic
                         v_end_idx'2835
                   in
                   let v_bsize'2837 =
                     Obj.magic
                       Int.sub
                       v_end_idx'2836
                       v_start_idx'2833
                   in
                   let v__fst_dp'2838 =
                     Obj.magic
                       Boot.Intrinsics.Mseq.get
                       v_dataset'2826
                       0
                   in
                   let v_datashape'2840 =
                     Obj.magic
                       Boot.Intrinsics.T.shape
                       (let
                          CRec'6318 ({linput = v_X'2839})
                        =
                          Obj.magic
                            v__fst_dp'2838
                        in
                        Obj.magic
                          v_X'2839)
                   in
                   let v_db_inputs'2846 =
                     Obj.magic
                       Boot.Intrinsics.T.create_float_packed
                       (Obj.magic
                          Boot.Intrinsics.Mseq.cons
                          v_bsize'2837
                          v_datashape'2840)
                       (Obj.magic
                          v_t'5270
                          v_dataset'2826
                          v_start_idx'2833)
                   in
                   let v_db_outidxs'2851 =
                     Obj.magic
                       Boot.Intrinsics.T.create_int_packed
                       (Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.of_array
                          [| (Obj.magic
                              v_bsize'2837) |])
                       (Obj.magic
                          v_t'5271
                          v_dataset'2826
                          v_start_idx'2833)
                   in
                   let v_db'2852 =
                     CRec'6316 { linputs =
                         (Obj.repr
                           v_db_inputs'2846);
                       lcorrect_linear_outidxs =
                         (Obj.repr
                           v_db_outidxs'2851) }
                   in
                   Obj.magic
                     v_batchMakerH
                     v_join
                     v_params'2799
                     v_dataset'2826
                     (Obj.magic
                        Boot.Intrinsics.Mseq.snoc
                        v_acc'2827
                        v_db'2852)
                     (Obj.magic
                        Int.add
                        v_i'2828
                        (let
                           CRec'6317 ({lbatchsize = v_X'2853})
                         =
                           Obj.magic
                             v_params'2799
                         in
                         Obj.magic
                           v_X'2853)));;
let v_wrappedPrint =
  fun v_s'2860 ->
    Obj.magic
      Boot.Intrinsics.IO.print
      v_s'2860;;
let v_t'5273 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_params'2799 ->
              fun v_network'2800 ->
                fun v_rounds'2805 ->
                  fun v_training_batches'2854 ->
                    fun v_alpha'2878 ->
                      fun v_lambda'2880 ->
                        fun v_batch_idx'2894 ->
                          let v_'2899 =
                            if
                              Obj.magic
                                (let
                                   CRec'6317 ({lprintStatus = v_X'2895})
                                 =
                                   Obj.magic
                                     v_params'2799
                                 in
                                 Obj.magic
                                   v_X'2895)
                            then
                              let v_'2896 =
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
                              let v_'2897 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        (Obj.magic
                                           Int.add
                                           v_batch_idx'2894
                                           1)))
                              in
                              let v_'2898 =
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
                                      v_rounds'2805))
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
                            v_network'2800
                            v_alpha'2878
                            v_lambda'2880
                            (Obj.magic
                               Boot.Intrinsics.Mseq.get
                               v_training_batches'2854
                               v_batch_idx'2894);;
let v_t'5272 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_params'2799 ->
              fun v_network'2800 ->
                fun v_rounds'2805 ->
                  fun v_training_batches'2854 ->
                    fun v_validation_batches'2857 ->
                      fun v_acc'2874 ->
                        fun v_epoch_idx'2875 ->
                          let v_epoch'2876 =
                            Obj.magic
                              Int.add
                              v_epoch_idx'2875
                              1
                          in
                          let v_alpha'2878 =
                            let
                              CRec'6321 ({l0 = v_X'2877})
                            =
                              Obj.magic
                                v_acc'2874
                            in
                            Obj.magic
                              v_X'2877
                          in
                          let v_lambda'2880 =
                            let
                              CRec'6321 ({l1 = v_X'2879})
                            =
                              Obj.magic
                                v_acc'2874
                            in
                            Obj.magic
                              v_X'2879
                          in
                          let v_'2893 =
                            if
                              Obj.magic
                                (let
                                   CRec'6317 ({lprintStatus = v_X'2881})
                                 =
                                   Obj.magic
                                     v_params'2799
                                 in
                                 Obj.magic
                                   v_X'2881)
                            then
                              let v_'2882 =
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
                              let v_'2883 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        v_epoch'2876))
                              in
                              let v_'2884 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (47) |])
                              in
                              let v_'2886 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        (let
                                           CRec'6317 ({lepochs = v_X'2885})
                                         =
                                           Obj.magic
                                             v_params'2799
                                         in
                                         Obj.magic
                                           v_X'2885)))
                              in
                              let v_'2887 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (93);
                                       (10) |])
                              in
                              let v_'2888 =
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
                              let v_'2889 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     v_alpha'2878)
                              in
                              let v_'2890 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (93);
                                       (10) |])
                              in
                              let v_'2891 =
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
                              let v_'2892 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     v_lambda'2880)
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
                          let v_'2900 =
                            let rec v_loop'6301 =
                                fun v_acc'6302 ->
                                  fun v_i'6303 ->
                                    if
                                      Obj.magic
                                        (Obj.magic
                                           ((<) : int -> int -> bool)
                                           v_i'6303
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.length
                                              v_training_batches'2854))
                                    then
                                      let v_t'6304 =
                                        Obj.magic
                                          (fun nv_ ->
                                             Obj.magic
                                               v_t'5273
                                               v_nnCompType_FullyConnected
                                               v_nnCompType_ReLU
                                               v_nnCompType_SoftMax
                                               v_nnLossfnType_CrossEntropyLoss
                                               v_nnLossfnType_SoftMaxCrossEntropyLoss
                                               v_params'2799
                                               v_network'2800
                                               v_rounds'2805
                                               v_training_batches'2854
                                               v_alpha'2878
                                               v_lambda'2880)
                                          v_acc'6302
                                          v_i'6303
                                      in
                                      Obj.magic
                                        v_loop'6301
                                        v_t'6304
                                        (Obj.magic
                                           Int.add
                                           v_i'6303
                                           1)
                                    else
                                      Obj.magic
                                        v_acc'6302
                            in Obj.magic
                              v_loop'6301
                              ()
                              0
                          in
                          let v_'2901 =
                            Obj.magic
                              v_wrappedPrint
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (10) |])
                          in
                          let v_'2910 =
                            if
                              Obj.magic
                                (let
                                   CRec'6317 ({levaluateBetweenEpochs = v_X'2902})
                                 =
                                   Obj.magic
                                     v_params'2799
                                 in
                                 Obj.magic
                                   v_X'2902)
                            then
                              let v_'2904 =
                                if
                                  Obj.magic
                                    (let
                                       CRec'6317 ({lprintStatus = v_X'2903})
                                     =
                                       Obj.magic
                                         v_params'2799
                                     in
                                     Obj.magic
                                       v_X'2903)
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
                              let v_accuracy'2906 =
                                Obj.magic
                                  v_nnAccuracyProportion
                                  v_nnCompType_FullyConnected
                                  v_nnCompType_ReLU
                                  v_nnCompType_SoftMax
                                  v_nnLossfnType_CrossEntropyLoss
                                  v_nnLossfnType_SoftMaxCrossEntropyLoss
                                  (let
                                     CRec'6317 ({lprintStatus = v_X'2905})
                                   =
                                     Obj.magic
                                       v_params'2799
                                   in
                                   Obj.magic
                                     v_X'2905)
                                  v_network'2800
                                  v_validation_batches'2857
                              in
                              if
                                Obj.magic
                                  (let
                                     CRec'6317 ({lprintStatus = v_X'2907})
                                   =
                                     Obj.magic
                                       v_params'2799
                                   in
                                   Obj.magic
                                     v_X'2907)
                              then
                                let v_'2908 =
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
                                let v_'2909 =
                                  Obj.magic
                                    Boot.Intrinsics.IO.print
                                    (Obj.magic
                                       Boot.Intrinsics.FloatConversion.float2string
                                       (Obj.magic
                                          Float.mul
                                          v_accuracy'2906
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
                          let v_decayed_alpha'2912 =
                            Obj.magic
                              Float.mul
                              v_alpha'2878
                              (Obj.magic
                                 Float.sub
                                 1.
                                 (let
                                    CRec'6317 ({ldecay_alpha = v_X'2911})
                                  =
                                    Obj.magic
                                      v_params'2799
                                  in
                                  Obj.magic
                                    v_X'2911))
                          in
                          let v_decayed_lambda'2914 =
                            Obj.magic
                              Float.mul
                              v_lambda'2880
                              (Obj.magic
                                 Float.sub
                                 1.
                                 (let
                                    CRec'6317 ({ldecay_lambda = v_X'2913})
                                  =
                                    Obj.magic
                                      v_params'2799
                                  in
                                  Obj.magic
                                    v_X'2913))
                          in
                          CRec'6321 { l0 =
                              (Obj.repr
                                v_decayed_alpha'2912);
                            l1 =
                              (Obj.repr
                                v_decayed_lambda'2914) };;
let v_nnTrainSGD =
  fun v_join ->
    fun v_nnCompType_FullyConnected ->
      fun v_nnCompType_ReLU ->
        fun v_nnCompType_SoftMax ->
          fun v_nnLossfnType_CrossEntropyLoss ->
            fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
              fun v_params'2799 ->
                fun v_network'2800 ->
                  fun v_training_data'2801 ->
                    fun v_validation_data'2802 ->
                      let v_rounds'2805 =
                        Obj.magic
                          Int.div
                          (Obj.magic
                             Int.add
                             (Obj.magic
                                Boot.Intrinsics.Mseq.length
                                v_training_data'2801)
                             (Obj.magic
                                Int.sub
                                (let
                                   CRec'6317 ({lbatchsize = v_X'2803})
                                 =
                                   Obj.magic
                                     v_params'2799
                                 in
                                 Obj.magic
                                   v_X'2803)
                                1))
                          (let
                             CRec'6317 ({lbatchsize = v_X'2804})
                           =
                             Obj.magic
                               v_params'2799
                           in
                           Obj.magic
                             v_X'2804)
                      in
                      let v_'2822 =
                        if
                          Obj.magic
                            (let
                               CRec'6317 ({lprintStatus = v_X'2806})
                             =
                               Obj.magic
                                 v_params'2799
                             in
                             Obj.magic
                               v_X'2806)
                        then
                          let v_'2807 =
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
                                              v_training_data'2801))) |]))
                          in
                          let v_'2809 =
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
                                              v_validation_data'2802))) |]))
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
                                              CRec'6317 ({lbatchsize = v_X'2810})
                                            =
                                              Obj.magic
                                                v_params'2799
                                            in
                                            Obj.magic
                                              v_X'2810))) |]))
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
                                           v_rounds'2805)) |]))
                          in
                          let v_'2814 =
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
                                              CRec'6317 ({lepochs = v_X'2813})
                                            =
                                              Obj.magic
                                                v_params'2799
                                            in
                                            Obj.magic
                                              v_X'2813))) |]))
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
                                              CRec'6317 ({linit_alpha = v_X'2815})
                                            =
                                              Obj.magic
                                                v_params'2799
                                            in
                                            Obj.magic
                                              v_X'2815))) |]))
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
                                              CRec'6317 ({ldecay_alpha = v_X'2817})
                                            =
                                              Obj.magic
                                                v_params'2799
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
                                              CRec'6317 ({linit_lambda = v_X'2819})
                                            =
                                              Obj.magic
                                                v_params'2799
                                            in
                                            Obj.magic
                                              v_X'2819))) |]))
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
                                            CRec'6317 ({ldecay_lambda = v_X'2821})
                                          =
                                            Obj.magic
                                              v_params'2799
                                          in
                                          Obj.magic
                                            v_X'2821))) |]))
                        else
                          Obj.magic
                            ()
                      in
                      let v_'2824 =
                        if
                          Obj.magic
                            (let
                               CRec'6317 ({lprintStatus = v_X'2823})
                             =
                               Obj.magic
                                 v_params'2799
                             in
                             Obj.magic
                               v_X'2823)
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
                      let v_training_batches'2854 =
                        Obj.magic
                          v_batchMakerH
                          v_join
                          v_params'2799
                          v_training_data'2801
                          (Obj.magic
                             Boot.Intrinsics.Mseq.Helpers.of_array
                             [|  |])
                          0
                      in
                      let v_'2856 =
                        if
                          Obj.magic
                            (let
                               CRec'6317 ({lprintStatus = v_X'2855})
                             =
                               Obj.magic
                                 v_params'2799
                             in
                             Obj.magic
                               v_X'2855)
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
                      let v_validation_batches'2857 =
                        Obj.magic
                          v_batchMakerH
                          v_join
                          v_params'2799
                          v_validation_data'2802
                          (Obj.magic
                             Boot.Intrinsics.Mseq.Helpers.of_array
                             [|  |])
                          0
                      in
                      let v_'2859 =
                        if
                          Obj.magic
                            (let
                               CRec'6317 ({lprintStatus = v_X'2858})
                             =
                               Obj.magic
                                 v_params'2799
                             in
                             Obj.magic
                               v_X'2858)
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
                      let v_'2916 =
                        let nv_ =
                          Obj.magic
                            v_vNwYYUKMixx'5211
                            v_nnCompType_FullyConnected
                            v_nnCompType_ReLU
                            v_nnCompType_SoftMax
                            v_nnLossfnType_CrossEntropyLoss
                            v_nnLossfnType_SoftMaxCrossEntropyLoss
                            (let
                               CRec'6317 ({lepochs = v_r'6331;lbatchsize = v_r'6332;linit_alpha = v_r'6333;ldecay_alpha = v_r'6334;linit_lambda = v_r'6335;lprintStatus = v_r'6336;ldecay_lambda = v_r'6337;levaluateBetweenEpochs = v_r'6338;levaluateBeforeFirstEpoch = v_r'6339})
                             =
                               v_params'2799
                             in
                             Obj.magic
                               Obj.repr
                               ({lepochs =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6331);
                                 lbatchsize =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6332);
                                 linit_alpha =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6333);
                                 ldecay_alpha =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6334);
                                 linit_lambda =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6335);
                                 lprintStatus =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6336);
                                 ldecay_lambda =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6337);
                                 levaluateBetweenEpochs =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6338);
                                 levaluateBeforeFirstEpoch =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6339)} : v_record'6330))
                            (let
                               CRec'6315 ({llossfn = v_r'6343;lcomponents = v_r'6344})
                             =
                               v_network'2800
                             in
                             Obj.magic
                               Obj.repr
                               ({llossfn =
                                   (let
                                     CRec'6314 ({lty = v_r'6345;lin_grads = v_r'6346;lout_bufs = v_r'6347;lsoftmax_bufs = v_r'6348})
                                   =
                                     Obj.magic
                                       Obj.magic
                                       v_r'6343
                                   in
                                   Obj.magic
                                     Obj.repr
                                     ({lty =
                                         (Obj.magic
                                           Obj.magic
                                           v_r'6345);
                                       lin_grads =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6346));
                                       lout_bufs =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6347));
                                       lsoftmax_bufs =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6348))} : v_record'6340));
                                 lcomponents =
                                   (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.to_array_copy
                                     (Obj.magic
                                        Boot.Intrinsics.Mseq.map
                                        (fun v_x'6349 ->
                                           let
                                             CRec'6313 ({lb = v_r'6350;lw = v_r'6351;lty = v_r'6352;lb_grads = v_r'6353;lw_grads = v_r'6354;lin_grads = v_r'6355;lout_bufs = v_r'6356;lsoftmax_bufs = v_r'6357})
                                           =
                                             v_x'6349
                                           in
                                           Obj.magic
                                             Obj.repr
                                             ({lb =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6350));
                                               lw =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6351));
                                               lty =
                                                 (Obj.magic
                                                   Obj.magic
                                                   v_r'6352);
                                               lb_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6353));
                                               lw_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6354));
                                               lin_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6355));
                                               lout_bufs =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6356));
                                               lsoftmax_bufs =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6357))} : v_record'6341))
                                        (Obj.magic
                                           Obj.magic
                                           v_r'6344)))} : v_record'6342))
                            v_rounds'2805
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.to_array_copy
                               (Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  (fun v_x'6359 ->
                                     let
                                       CRec'6316 ({linputs = v_r'6360;lcorrect_linear_outidxs = v_r'6361})
                                     =
                                       v_x'6359
                                     in
                                     Obj.magic
                                       Obj.repr
                                       ({linputs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6360));
                                         lcorrect_linear_outidxs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6361))} : v_record'6358))
                                  v_training_batches'2854))
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.to_array_copy
                               (Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  (fun v_x'6363 ->
                                     let
                                       CRec'6316 ({linputs = v_r'6364;lcorrect_linear_outidxs = v_r'6365})
                                     =
                                       v_x'6363
                                     in
                                     Obj.magic
                                       Obj.repr
                                       ({linputs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6364));
                                         lcorrect_linear_outidxs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6365))} : v_record'6362))
                                  v_validation_batches'2857))
                        in
                        ()
                      in
                      let v_'2918 =
                        if
                          Obj.magic
                            (let
                               CRec'6317 ({lprintStatus = v_X'2917})
                             =
                               Obj.magic
                                 v_params'2799
                             in
                             Obj.magic
                               v_X'2917)
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
let v_t'5274 =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_print_status'2920 ->
        fun v_convfn'2921 ->
          fun v_dim'2922 ->
            fun v_tensorCreate'2923 ->
              fun v_acc'2929 ->
                fun v_c'2930 ->
                  match
                    Obj.magic
                      (let v__target'6391 =
                         v_acc'2929
                       in
                       let
                         CRec'6320 ({l0 = v_0'6392;l1 = v_1'6393;l2 = v_2'6394})
                       =
                         Obj.magic
                           Obj.magic
                           v__target'6391
                       in
                       Option.Some (v_0'6392, v_1'6393, v_2'6394))
                  with
                  | Option.Some (v_converted'2931, v_current_acc'2932, v_current_strrep'2933) ->
                      (let v_updated_tuple'2934 =
                         if
                           Obj.magic
                             (Obj.magic
                                v_and
                                (Obj.magic
                                   v_or
                                   (Obj.magic
                                      v_eqChar
                                      v_c'2930
                                      10)
                                   (Obj.magic
                                      v_eqChar
                                      v_c'2930
                                      32))
                                (Obj.magic
                                   ((>) : int -> int -> bool)
                                   (Obj.magic
                                      Boot.Intrinsics.Mseq.length
                                      v_current_strrep'2933)
                                   0))
                         then
                           CRec'6321 { l0 =
                               (Obj.repr
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.snoc
                                    v_current_acc'2932
                                    (Obj.magic
                                       v_string2int
                                       v_current_strrep'2933)));
                             l1 =
                               (Obj.repr
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [|  |])) }
                         else
                           Obj.magic
                             (CRec'6321 { l0 =
                                  (Obj.repr
                                    v_current_acc'2932);
                                l1 =
                                  (Obj.repr
                                    v_current_strrep'2933) })
                       in
                       match
                         Obj.magic
                           (let v__target'6395 =
                              v_updated_tuple'2934
                            in
                            let
                              CRec'6321 ({l0 = v_0'6396;l1 = v_1'6397})
                            =
                              Obj.magic
                                Obj.magic
                                v__target'6395
                            in
                            Option.Some (v_0'6396, v_1'6397))
                       with
                       | Option.Some (v_current_acc'2935, v_current_strrep'2936) ->
                           (if
                              Obj.magic
                                (Obj.magic
                                   v_eqChar
                                   v_c'2930
                                   10)
                            then
                              let v_class'2937 =
                                Obj.magic
                                  Boot.Intrinsics.Mseq.head
                                  v_current_acc'2935
                              in
                              let v_normalized_values'2938 =
                                Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  v_convfn'2921
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.tail
                                     v_current_acc'2935)
                              in
                              let v_dp'2939 =
                                CRec'6318 { linput =
                                    (Obj.repr
                                      (Obj.magic
                                         v_tensorOfSeqExn
                                         v_tensorCreate'2923
                                         v_dim'2922
                                         v_normalized_values'2938));
                                  lcorrect_outidx =
                                    (Obj.repr
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (Obj.magic
                                             v_class'2937);
                                           (0) |]));
                                  lcorrect_linear_outidx =
                                    (Obj.repr
                                      v_class'2937) }
                              in
                              let v_'2941 =
                                if
                                  Obj.magic
                                    v_print_status'2920
                                then
                                  let v_'2940 =
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
                                                         v_converted'2931)
                                                      1))) |]))
                                  in
                                  Obj.magic
                                    Boot.Intrinsics.IO.flush_stdout
                                    ()
                                else
                                  Obj.magic
                                    ()
                              in
                              CRec'6320 { l0 =
                                  (Obj.repr
                                    (Obj.magic
                                       Boot.Intrinsics.Mseq.snoc
                                       v_converted'2931
                                       v_dp'2939));
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
                                        v_c'2930
                                        32)
                                 then
                                   CRec'6320 { l0 =
                                       (Obj.repr
                                         v_converted'2931);
                                     l1 =
                                       (Obj.repr
                                         v_current_acc'2935);
                                     l2 =
                                       (Obj.repr
                                         v_current_strrep'2936) }
                                 else
                                   Obj.magic
                                     (CRec'6320 { l0 =
                                          (Obj.repr
                                            v_converted'2931);
                                        l1 =
                                          (Obj.repr
                                            v_current_acc'2935);
                                        l2 =
                                          (Obj.repr
                                            (Obj.magic
                                               Boot.Intrinsics.Mseq.snoc
                                               v_current_strrep'2936
                                               v_c'2930)) })))
                       | Option.None ->
                           (Obj.magic
                              (failwith
                                 "FILE \"/home/wikman/GitRepos/johnwikman/miking-ml/src/dataset/_common.mc\" 33:4-49:53 ERROR: Reached a never term, which should be impossible in a well-typed program.")))
                  | Option.None ->
                      (Obj.magic
                         (failwith
                            "FILE \"/home/wikman/GitRepos/johnwikman/miking-ml/src/dataset/_common.mc\" 26:4-31:6 ERROR: Reached a never term, which should be impossible in a well-typed program."));;
let v_t =
  fun v_x'2945 ->
    v_x'2945;;
let v_datasetLoadGenericIntclassInt2Float =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_print_status'2920 ->
        fun v_convfn'2921 ->
          fun v_dim'2922 ->
            fun v_tensorCreate'2923 ->
              fun v_filename'2924 ->
                let v_'2925 =
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
                              v_filename'2924);
                            (Obj.magic
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (46);
                                   (46);
                                   (46) |])) |]))
                in
                let v_contents'2926 =
                  Obj.magic
                    Boot.Intrinsics.File.read
                    v_filename'2924
                in
                let v_'2928 =
                  if
                    Obj.magic
                      v_print_status'2920
                  then
                    let v_'2927 =
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
                let v_result'2942 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.Helpers.fold_left
                    (Obj.magic
                       v_t'5274
                       v_join
                       v_tensorOfSeqExn
                       v_print_status'2920
                       v_convfn'2921
                       v_dim'2922
                       v_tensorCreate'2923)
                    (CRec'6320 { l0 =
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
                    v_contents'2926
                in
                let v_'2944 =
                  if
                    Obj.magic
                      v_print_status'2920
                  then
                    let v_'2943 =
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
                     CRec'6320 ({l0 = v_X'2946})
                   =
                     Obj.magic
                       v_result'2942
                   in
                   Obj.magic
                     v_X'2946);;
let v_convfn =
  fun v_i'2951 ->
    Obj.magic
      Float.div
      (Obj.magic
         float_of_int
         v_i'2951)
      255.;;
let v_datasetLoadCifar10 =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_tensorCreate'2948 ->
        fun v_filename'2949 ->
          let v_print_status'2950 =
            true
          in
          let v_dim'2953 =
            Obj.magic
              Boot.Intrinsics.Mseq.Helpers.of_array
              [| (3072) |]
          in
          Obj.magic
            v_datasetLoadGenericIntclassInt2Float
            v_join
            v_tensorOfSeqExn
            v_print_status'2950
            v_convfn
            v_dim'2953
            v_tensorCreate'2948
            v_filename'2949;;
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
                fun v_batchsize'2957 ->
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
                              v_batchsize'2957
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
                              v_batchsize'2957
                              3072));
                         (Obj.magic
                           (Obj.magic
                              v_nnFullyConnected
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2957
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
                              v_batchsize'2957
                              1024));
                         (Obj.magic
                           (Obj.magic
                              v_nnFullyConnected
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2957
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
                              v_batchsize'2957
                              10)) |])
                    (Obj.magic
                       v_nnCrossEntropyLoss
                       v_eqSeq
                       v_join
                       v_nnLossfnType_CrossEntropyLoss
                       v_nnLossfnType_SoftMaxCrossEntropyLoss
                       v_batchsize'2957
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
                  fun v_training_data'2959 ->
                    fun v_validation_data'2960 ->
                      let v_params'2961 =
                        let
                          CRec'6317 v_rec'6405
                        =
                          Obj.magic
                            (let
                               CRec'6317 v_rec'6404
                             =
                               Obj.magic
                                 (let
                                    CRec'6317 v_rec'6403
                                  =
                                    Obj.magic
                                      (let
                                         CRec'6317 v_rec'6402
                                       =
                                         Obj.magic
                                           (let
                                              CRec'6317 v_rec'6401
                                            =
                                              Obj.magic
                                                (let
                                                   CRec'6317 v_rec'6400
                                                 =
                                                   Obj.magic
                                                     (let
                                                        CRec'6317 v_rec'6399
                                                      =
                                                        Obj.magic
                                                          (let
                                                             CRec'6317 v_rec'6398
                                                           =
                                                             Obj.magic
                                                               v_nnVanillaSGDParameters
                                                           in
                                                           CRec'6317 { v_rec'6398
                                                             with
                                                             lbatchsize =
                                                               Obj.repr
                                                                 64 })
                                                      in
                                                      CRec'6317 { v_rec'6399
                                                        with
                                                        lepochs =
                                                          Obj.repr
                                                            100 })
                                                 in
                                                 CRec'6317 { v_rec'6400
                                                   with
                                                   linit_alpha =
                                                     Obj.repr
                                                       0.01 })
                                            in
                                            CRec'6317 { v_rec'6401
                                              with
                                              ldecay_alpha =
                                                Obj.repr
                                                  0.01 })
                                       in
                                       CRec'6317 { v_rec'6402
                                         with
                                         linit_lambda =
                                           Obj.repr
                                             0. })
                                  in
                                  CRec'6317 { v_rec'6403
                                    with
                                    lprintStatus =
                                      Obj.repr
                                        true })
                             in
                             CRec'6317 { v_rec'6404
                               with
                               levaluateBetweenEpochs =
                                 Obj.repr
                                   true })
                        in
                        CRec'6317 { v_rec'6405
                          with
                          levaluateBeforeFirstEpoch =
                            Obj.repr
                              true }
                      in
                      let v_'2962 =
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
                      let v_network'2964 =
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
                             CRec'6317 ({lbatchsize = v_X'2963})
                           =
                             Obj.magic
                               v_params'2961
                           in
                           Obj.magic
                             v_X'2963)
                      in
                      let v_'2965 =
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
                      let v_t_start_ms'2966 =
                        Obj.magic
                          Boot.Intrinsics.Time.get_wall_time_ms
                          ()
                      in
                      let v_'2967 =
                        Obj.magic
                          v_nnTrainSGD
                          v_join
                          v_nnCompType_FullyConnected
                          v_nnCompType_ReLU
                          v_nnCompType_SoftMax
                          v_nnLossfnType_CrossEntropyLoss
                          v_nnLossfnType_SoftMaxCrossEntropyLoss
                          v_params'2961
                          v_network'2964
                          v_training_data'2959
                          v_validation_data'2960
                      in
                      let v_t_end_ms'2968 =
                        Obj.magic
                          Boot.Intrinsics.Time.get_wall_time_ms
                          ()
                      in
                      let v_t_diff_ms'2969 =
                        Obj.magic
                          Float.sub
                          v_t_end_ms'2968
                          v_t_start_ms'2966
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
                                     v_t_diff_ms'2969));
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
    (let v_'2971 =
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
     let v_training_data'2972 =
       Obj.magic
         v_datasetLoadCArrayFloatCifar10
         v_join
         v_tensorOfSeqExn
         (Obj.magic
            Boot.Intrinsics.Mseq.get
            Boot.Intrinsics.MSys.argv
            1)
     in
     let v_'2973 =
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
     let v_validation_data'2974 =
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
       v_training_data'2972
       v_validation_data'2974);;