external v_vjivEXkNw6z'5192 : Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t = "vmcWpSQoKpn" "vjivEXkNw6z";;
type v_record'6311 = {lepochs: Obj.t;lbatchsize: Obj.t;linit_alpha: Obj.t;ldecay_alpha: Obj.t;linit_lambda: Obj.t;lprintStatus: Obj.t;ldecay_lambda: Obj.t;levaluateBetweenEpochs: Obj.t;levaluateBeforeFirstEpoch: Obj.t};;
type v_record'6321 = {lty: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6322 = {lb: Obj.t;lw: Obj.t;lty: Obj.t;lb_grads: Obj.t;lw_grads: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6323 = {llossfn: Obj.t;lcomponents: Obj.t};;
type v_record'6339 = {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6343 = {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6303 =
  | CRec'6302 of {l0: Obj.t;l1: Obj.t};;
type v_record'6304 =
  | CRec'6301 of {l0: Obj.t;l1: Obj.t;l2: Obj.t};;
type v_record'6305 =
  | CRec'6299 of {linput: Obj.t;lcorrect_outidx: Obj.t;lcorrect_linear_outidx: Obj.t};;
type v_record'6306 =
  | CRec'6298 of {lepochs: Obj.t;lbatchsize: Obj.t;linit_alpha: Obj.t;ldecay_alpha: Obj.t;linit_lambda: Obj.t;lprintStatus: Obj.t;ldecay_lambda: Obj.t;levaluateBetweenEpochs: Obj.t;levaluateBeforeFirstEpoch: Obj.t};;
type v_record'6307 =
  | CRec'6297 of {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6308 =
  | CRec'6296 of {llossfn: Obj.t;lcomponents: Obj.t};;
type v_record'6309 =
  | CRec'6295 of {lty: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6310 =
  | CRec'6294 of {lb: Obj.t;lw: Obj.t;lty: Obj.t;lb_grads: Obj.t;lw_grads: Obj.t;lin_grads: Obj.t;lout_bufs: Obj.t;lsoftmax_bufs: Obj.t};;
type v_Option'2145 =
  | CSome'2147 of Obj.t
  | CNone'2149;;
let v_and =
  fun v_a'2138 ->
    fun v_b'2139 ->
      if
        Obj.magic
          v_a'2138
      then
        v_b'2139
      else
        Obj.magic
          false;;
let v_or =
  fun v_a'2141 ->
    fun v_b'2142 ->
      if
        Obj.magic
          v_a'2141
      then
        true
      else
        Obj.magic
          v_b'2142;;
let rec v_work =
    fun v_eq'2152 ->
      fun v_s1'2156 ->
        fun v_s2'2157 ->
          match
            Obj.magic
              (let v__target'6347 =
                 CRec'6302 { l0 =
                     (Obj.repr
                       v_s1'2156);
                   l1 =
                     (Obj.repr
                       v_s2'2157) }
               in
               let
                 CRec'6302 ({l0 = v_0'6348;l1 = v_1'6349})
               =
                 Obj.magic
                   Obj.magic
                   v__target'6347
               in
               if
                 Obj.magic
                   ((<) : int -> int -> bool)
                   (Obj.magic
                      Boot.Intrinsics.Mseq.length
                      v_0'6348)
                   1
               then
                 Option.None
               else
                 Obj.magic
                   Obj.magic
                   (let
                      (v__prefix'6350, v__splitTemp'6351)
                    =
                      Obj.magic
                        Boot.Intrinsics.Mseq.split_at
                        v_0'6348
                        1
                    in
                    let
                      (v__middle'6352, v__postfix'6353)
                    =
                      Obj.magic
                        Boot.Intrinsics.Mseq.split_at
                        v__splitTemp'6351
                        (Obj.magic
                           Int.sub
                           (Obj.magic
                              Boot.Intrinsics.Mseq.length
                              v__splitTemp'6351)
                           0)
                    in
                    let v__seqElem'6354 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.get
                        v__prefix'6350
                        0
                    in
                    if
                      Obj.magic
                        ((<) : int -> int -> bool)
                        (Obj.magic
                           Boot.Intrinsics.Mseq.length
                           v_1'6349)
                        1
                    then
                      Option.None
                    else
                      Obj.magic
                        Obj.magic
                        (let
                           (v__prefix'6355, v__splitTemp'6356)
                         =
                           Obj.magic
                             Boot.Intrinsics.Mseq.split_at
                             v_1'6349
                             1
                         in
                         let
                           (v__middle'6357, v__postfix'6358)
                         =
                           Obj.magic
                             Boot.Intrinsics.Mseq.split_at
                             v__splitTemp'6356
                             (Obj.magic
                                Int.sub
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.length
                                   v__splitTemp'6356)
                                0)
                         in
                         let v__seqElem'6359 =
                           Obj.magic
                             Boot.Intrinsics.Mseq.get
                             v__prefix'6355
                             0
                         in
                         Option.Some (v__seqElem'6354, v__middle'6352, v__seqElem'6359, v__middle'6357))))
          with
          | Option.Some (v_h1'2158, v_t1'2159, v_h2'2160, v_t2'2161) ->
              (if
                 Obj.magic
                   (Obj.magic
                      v_eq'2152
                      v_h1'2158
                      v_h2'2160)
               then
                 Obj.magic
                   v_work
                   v_eq'2152
                   v_t1'2159
                   v_t2'2161
               else
                 Obj.magic
                   false)
          | Option.None ->
              (Obj.magic
                 true);;
let v_eqSeq =
  fun v_eq'2152 ->
    fun v_s1'2153 ->
      fun v_s2'2154 ->
        let v_n1'2162 =
          Obj.magic
            Boot.Intrinsics.Mseq.length
            v_s1'2153
        in
        let v_n2'2163 =
          Obj.magic
            Boot.Intrinsics.Mseq.length
            v_s2'2154
        in
        let v_ndiff'2164 =
          Obj.magic
            Int.sub
            v_n1'2162
            v_n2'2163
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ndiff'2164
               0)
        then
          Obj.magic
            v_work
            v_eq'2152
            v_s1'2153
            v_s2'2154
        else
          Obj.magic
            false;;
let rec v_unfoldr =
    fun v_f'2169 ->
      fun v_b0'2170 ->
        let v_fb'2171 =
          Obj.magic
            v_f'2169
            v_b0'2170
        in
        let v_defaultCase'6360 =
          fun nv_ ->
            failwith
              "FILE \"/home/wikman/.local/lib/mcore/stdlib/seq.mc\" 103:7-103:12 ERROR: Reached a never term, which should be impossible in a well-typed program."
        in
        match
          Obj.magic
            v_fb'2171
        with
        | CSome'2147 v_x'6361 ->
            (match
               Obj.magic
                 (let v__target'6362 =
                    Obj.magic
                      Obj.magic
                      v_x'6361
                  in
                  let
                    CRec'6302 ({l0 = v_0'6363;l1 = v_1'6364})
                  =
                    Obj.magic
                      Obj.magic
                      v__target'6362
                  in
                  Option.Some (v_0'6363, v_1'6364))
             with
             | Option.Some (v_x'2172, v_b1'2173) ->
                 (Obj.magic
                    Boot.Intrinsics.Mseq.cons
                    v_x'2172
                    (Obj.magic
                       v_unfoldr
                       v_f'2169
                       v_b1'2173))
             | Option.None ->
                 (Obj.magic
                    (Obj.magic
                       v_defaultCase'6360
                       ())))
        | CNone'2149 ->
            (Obj.magic
               (Obj.magic
                  Boot.Intrinsics.Mseq.Helpers.of_array
                  [|  |]))
        | _ ->
            (Obj.magic
               (v_defaultCase'6360
                  ()));;
let v_join =
  fun v_seqs'2174 ->
    Obj.magic
      Boot.Intrinsics.Mseq.Helpers.fold_left
      Boot.Intrinsics.Mseq.concat
      (Obj.magic
         Boot.Intrinsics.Mseq.Helpers.of_array
         [|  |])
      v_seqs'2174;;
let v_printLn =
  fun v_s'2176 ->
    let v_'2177 =
      Obj.magic
        Boot.Intrinsics.IO.print
        (Obj.magic
           Boot.Intrinsics.Mseq.concat
           v_s'2176
           (Obj.magic
              Boot.Intrinsics.Mseq.Helpers.of_array
              [| (10) |]))
    in
    Obj.magic
      Boot.Intrinsics.IO.flush_stdout
      ();;
let v_eqChar =
  fun v_c1'2179 ->
    fun v_c2'2180 ->
      Obj.magic
        Int.equal
        v_c1'2179
        v_c2'2180;;
let v_externalExp =
  fun v_x'6366 ->
    (Float.exp)
      v_x'6366;;
let v_exp =
  fun v_x'2183 ->
    Obj.magic
      v_externalExp
      v_x'2183;;
let v_eqString =
  fun v_eqSeq ->
    fun v_s1'2185 ->
      fun v_s2'2186 ->
        Obj.magic
          v_eqSeq
          Int.equal
          v_s1'2185
          v_s2'2186;;
let rec v_string2int_rechelper =
    fun v_s'2190 ->
      let v_len'2191 =
        Obj.magic
          Boot.Intrinsics.Mseq.length
          v_s'2190
      in
      let v_last'2192 =
        Obj.magic
          Int.sub
          v_len'2191
          1
      in
      if
        Obj.magic
          (Obj.magic
             Int.equal
             v_len'2191
             0)
      then
        0
      else
        Obj.magic
          (let v_lsd'2193 =
             Obj.magic
               Int.sub
               (Obj.magic
                  Fun.id
                  (Obj.magic
                     Boot.Intrinsics.Mseq.get
                     v_s'2190
                     v_last'2192))
               (Obj.magic
                  Fun.id
                  48)
           in
           let v_rest'2194 =
             Obj.magic
               Int.mul
               10
               (Obj.magic
                  v_string2int_rechelper
                  (Obj.magic
                     Boot.Intrinsics.Mseq.subsequence
                     v_s'2190
                     0
                     v_last'2192))
           in
           Obj.magic
             Int.add
             v_rest'2194
             v_lsd'2193);;
let v_string2int =
  fun v_s'2188 ->
    if
      Obj.magic
        Boot.Intrinsics.Mseq.null
        v_s'2188
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
                   v_s'2188))
         then
           Obj.magic
             Int.neg
             (Obj.magic
                v_string2int_rechelper
                (Obj.magic
                   Boot.Intrinsics.Mseq.tail
                   v_s'2188))
         else
           Obj.magic
             (Obj.magic
                v_string2int_rechelper
                v_s'2188));;
let rec v_int2string_rechelper =
    fun v_n'2198 ->
      if
        Obj.magic
          (Obj.magic
             ((<) : int -> int -> bool)
             v_n'2198
             10)
      then
        Obj.magic
          Boot.Intrinsics.Mseq.Helpers.of_array
          [| (Obj.magic
              (Obj.magic
                 Fun.id
                 (Obj.magic
                    Int.add
                    v_n'2198
                    (Obj.magic
                       Fun.id
                       48)))) |]
      else
        Obj.magic
          (let v_d'2199 =
             Obj.magic
               Boot.Intrinsics.Mseq.Helpers.of_array
               [| (Obj.magic
                   (Obj.magic
                      Fun.id
                      (Obj.magic
                         Int.add
                         (Obj.magic
                            Int.rem
                            v_n'2198
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
                   v_n'2198
                   10))
             v_d'2199);;
let v_int2string =
  fun v_n'2196 ->
    if
      Obj.magic
        (Obj.magic
           ((<) : int -> int -> bool)
           v_n'2196
           0)
    then
      Obj.magic
        Boot.Intrinsics.Mseq.cons
        45
        (Obj.magic
           v_int2string_rechelper
           (Obj.magic
              Int.neg
              v_n'2196))
    else
      Obj.magic
        (Obj.magic
           v_int2string_rechelper
           v_n'2196);;
let v__prod =
  Obj.magic
    Boot.Intrinsics.Mseq.Helpers.fold_left
    Int.mul
    1;;
let v_f =
  fun v_d'2204 ->
    fun v_kidx'2205 ->
      match
        Obj.magic
          (let v__target'6367 =
             v_kidx'2205
           in
           let
             CRec'6302 ({l0 = v_0'6368;l1 = v_1'6369})
           =
             Obj.magic
               Obj.magic
               v__target'6367
           in
           Option.Some (v_0'6368, v_1'6369))
      with
      | Option.Some (v_k'2206, v_idx'2207) ->
          (CRec'6302 { l0 =
               (Obj.repr
                 (Obj.magic
                    Int.div
                    v_k'2206
                    v_d'2204));
             l1 =
               (Obj.repr
                 (Obj.magic
                    Boot.Intrinsics.Mseq.cons
                    (Obj.magic
                       Int.rem
                       v_k'2206
                       v_d'2204)
                    v_idx'2207)) })
      | Option.None ->
          (Obj.magic
             (failwith
                "FILE \"/home/wikman/.local/lib/mcore/stdlib/tensor.mc\" 21:9-21:14 ERROR: Reached a never term, which should be impossible in a well-typed program."));;
let v_linearToCartesianIndex =
  fun v_shape'2202 ->
    fun v_k'2203 ->
      let v_r'2209 =
        Obj.magic
          Boot.Intrinsics.Mseq.Helpers.fold_right
          v_f
          (CRec'6302 { l0 =
               (Obj.repr
                 v_k'2203);
             l1 =
               (Obj.repr
                 (Obj.magic
                    Boot.Intrinsics.Mseq.Helpers.of_array
                    [|  |])) })
          v_shape'2202
      in
      let
        CRec'6302 ({l1 = v_X'2210})
      =
        Obj.magic
          v_r'2209
      in
      Obj.magic
        v_X'2210;;
let v_tensorHasShape =
  fun v_t'2213 ->
    fun v_shape'2214 ->
      Obj.magic
        v_eqSeq
        Int.equal
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_t'2213)
        v_shape'2214;;
let v_tensorHasSameShape =
  fun v_t1'2218 ->
    fun v_t2'2219 ->
      Obj.magic
        v_eqSeq
        Int.equal
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_t1'2218)
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_t2'2219);;
let v_tensorCreate =
  Boot.Intrinsics.T.create_generic_packed;;
let v_t'5195 =
  fun v_seq'2226 ->
    fun v_idx'2228 ->
      Obj.magic
        Boot.Intrinsics.Mseq.get
        v_seq'2226
        (Obj.magic
           Boot.Intrinsics.Mseq.get
           v_idx'2228
           0);;
let v_tensorOfSeqOrElse =
  fun v_f'2223 ->
    fun v_tcreate'2224 ->
      fun v_shape'2225 ->
        fun v_seq'2226 ->
          let v_n'2227 =
            Obj.magic
              Boot.Intrinsics.Mseq.length
              v_seq'2226
          in
          if
            Obj.magic
              (Obj.magic
                 ((<>) : int -> int -> bool)
                 v_n'2227
                 (Obj.magic
                    v__prod
                    v_shape'2225))
          then
            Obj.magic
              v_f'2223
              ()
          else
            Obj.magic
              (let v_t'2229 =
                 Obj.magic
                   v_tcreate'2224
                   (Obj.magic
                      Boot.Intrinsics.Mseq.Helpers.of_array
                      [| (Obj.magic
                          v_n'2227) |])
                   (Obj.magic
                      v_t'5195
                      v_seq'2226)
               in
               Obj.magic
                 Boot.Intrinsics.T.reshape_exn
                 v_t'2229
                 v_shape'2225);;
let v_t'5196 =
  fun v_'2232 ->
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
    v_t'5196;;
let v_t'5197 =
  fun v_t'2236 ->
    fun v_n'2237 ->
      fun v_i'2238 ->
        if
          Obj.magic
            (Obj.magic
               ((<) : int -> int -> bool)
               v_i'2238
               v_n'2237)
        then
          CSome'2147 (Obj.repr
             (CRec'6302 { l0 =
                  (Obj.repr
                    (Obj.magic
                       Boot.Intrinsics.T.get_exn
                       v_t'2236
                       (Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.of_array
                          [| (Obj.magic
                              v_i'2238) |])));
                l1 =
                  (Obj.repr
                    (Obj.magic
                       Int.add
                       v_i'2238
                       1)) }))
        else
          Obj.magic
            CNone'2149;;
let v_tensorToSeqOrElse =
  fun v_f'2235 ->
    fun v_t'2236 ->
      if
        Obj.magic
          (Obj.magic
             ((<>) : int -> int -> bool)
             (Obj.magic
                Boot.Intrinsics.T.rank
                v_t'2236)
             1)
      then
        Obj.magic
          v_f'2235
          ()
      else
        Obj.magic
          (let v_n'2237 =
             Obj.magic
               Boot.Intrinsics.Mseq.get
               (Obj.magic
                  Boot.Intrinsics.T.shape
                  v_t'2236)
               0
           in
           Obj.magic
             v_unfoldr
             (Obj.magic
                v_t'5197
                v_t'2236
                v_n'2237)
             0);;
let v_t'5198 =
  fun v_'2241 ->
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
    v_t'5198;;
let v_tensorSize'2245 =
  fun v_t'2244 ->
    Obj.magic
      v__prod
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2244);;
let v_t'5199 =
  fun v_g'2249 ->
    fun v_v2'2254 ->
      fun v_i'2255 ->
        fun v_e'2256 ->
          Obj.magic
            Boot.Intrinsics.T.set_exn
            v_v2'2254
            (Obj.magic
               Boot.Intrinsics.Mseq.Helpers.of_array
               [| (Obj.magic
                   v_i'2255) |])
            (Obj.magic
               v_g'2249
               (Obj.magic
                  Boot.Intrinsics.T.get_exn
                  v_e'2256
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [|  |]))
               (Obj.magic
                  Boot.Intrinsics.T.get_exn
                  v_v2'2254
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (Obj.magic
                         v_i'2255) |])));;
let v_tensorMapOrElse =
  fun v_f'2248 ->
    fun v_g'2249 ->
      fun v_t1'2250 ->
        fun v_t2'2251 ->
          if
            Obj.magic
              (Obj.magic
                 v_tensorHasSameShape
                 v_t1'2250
                 v_t2'2251)
          then
            let v_n'2252 =
              Obj.magic
                v_tensorSize'2245
                v_t1'2250
            in
            let v_v1'2253 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t1'2250
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2252) |])
            in
            let v_v2'2254 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t2'2251
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2252) |])
            in
            Obj.magic
              Boot.Intrinsics.T.iter_slice
              (Obj.magic
                 v_t'5199
                 v_g'2249
                 v_v2'2254)
              v_v1'2253
          else
            Obj.magic
              (Obj.magic
                 v_f'2248
                 ());;
let v_t'5200 =
  fun v_'2258 ->
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
    v_t'5200;;
let v_t'5201 =
  fun v_g'2263 ->
    fun v_shape'2266 ->
      fun v_v2'2269 ->
        fun v_i'2270 ->
          fun v_e'2271 ->
            let v_idx'2272 =
              Obj.magic
                v_linearToCartesianIndex
                v_shape'2266
                v_i'2270
            in
            Obj.magic
              Boot.Intrinsics.T.set_exn
              v_v2'2269
              (Obj.magic
                 Boot.Intrinsics.Mseq.Helpers.of_array
                 [| (Obj.magic
                     v_i'2270) |])
              (Obj.magic
                 v_g'2263
                 v_idx'2272
                 (Obj.magic
                    Boot.Intrinsics.T.get_exn
                    v_e'2271
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [|  |]))
                 (Obj.magic
                    Boot.Intrinsics.T.get_exn
                    v_v2'2269
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_i'2270) |])));;
let v_tensorMapiOrElse =
  fun v_f'2262 ->
    fun v_g'2263 ->
      fun v_t1'2264 ->
        fun v_t2'2265 ->
          let v_shape'2266 =
            Obj.magic
              Boot.Intrinsics.T.shape
              v_t1'2264
          in
          if
            Obj.magic
              (Obj.magic
                 v_tensorHasShape
                 v_t2'2265
                 v_shape'2266)
          then
            let v_n'2267 =
              Obj.magic
                v_tensorSize'2245
                v_t1'2264
            in
            let v_v1'2268 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t1'2264
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2267) |])
            in
            let v_v2'2269 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t2'2265
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2267) |])
            in
            Obj.magic
              Boot.Intrinsics.T.iter_slice
              (Obj.magic
                 v_t'5201
                 v_g'2263
                 v_shape'2266
                 v_v2'2269)
              v_v1'2268
          else
            Obj.magic
              (Obj.magic
                 v_f'2262
                 ());;
let v_t'5202 =
  fun v_'2274 ->
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
    v_t'5202;;
let v_t'5203 =
  fun v_x'2279 ->
    fun v_'2280 ->
      v_x'2279;;
let v_tensorBlitExn =
  fun v_t1'2277 ->
    fun v_t2'2278 ->
      if
        Obj.magic
          (Obj.magic
             v_tensorHasSameShape
             v_t1'2277
             v_t2'2278)
      then
        Obj.magic
          v_tensorMapExn
          v_t'5203
          v_t1'2277
          v_t2'2278
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
let v_t'5204 =
  fun v_'2283 ->
    0;;
let v_test =
  let v_t1'2282 =
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
  let v_t2'2284 =
    Obj.magic
      Boot.Intrinsics.T.create_generic_packed
      (Obj.magic
         Boot.Intrinsics.Mseq.Helpers.of_array
         [| (3) |])
      v_t'5204
  in
  ();;
let v_externalGaussianSample =
  fun v_x'6370 ->
    fun v_x'6371 ->
      (Owl_stats.gaussian_rvs)
        ~mu:(v_x'6370)
        ~sigma:(v_x'6371);;
let v_gaussianSample =
  fun v_mu'2288 ->
    fun v_sigma'2289 ->
      Obj.magic
        v_externalGaussianSample
        v_mu'2288
        v_sigma'2289;;
let v_t'5205 =
  fun v_acc'2292 ->
    fun v_e'2293 ->
      Obj.magic
        Int.mul
        v_acc'2292
        v_e'2293;;
let v_tensorSize'2294 =
  fun v_t'2291 ->
    Obj.magic
      Boot.Intrinsics.Mseq.Helpers.fold_left
      v_t'5205
      1
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2291);;
let v_t'5206 =
  fun v_w'2296 ->
    fun v_x'2297 ->
      fun v_n'2302 ->
        fun v_x_offset'2305 ->
          fun v_i'2307 ->
            fun v_acc'2309 ->
              fun v_j'2310 ->
                Obj.magic
                  Float.add
                  v_acc'2309
                  (Obj.magic
                     Float.mul
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_w'2296
                        (Obj.magic
                           Int.add
                           (Obj.magic
                              Int.mul
                              v_n'2302
                              v_i'2307)
                           v_j'2310))
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_x'2297
                        (Obj.magic
                           Int.add
                           v_x_offset'2305
                           v_j'2310)));;
let v_iterfun'2312 =
  fun v_w'2296 ->
    fun v_x'2297 ->
      fun v_b'2298 ->
        fun v_z'2299 ->
          fun v_m'2301 ->
            fun v_n'2302 ->
              fun v_i'2303 ->
                let v_s_idx'2304 =
                  Obj.magic
                    Int.div
                    v_i'2303
                    v_m'2301
                in
                let v_x_offset'2305 =
                  Obj.magic
                    Int.mul
                    v_s_idx'2304
                    v_n'2302
                in
                let v_z_idx'2306 =
                  v_i'2303
                in
                let v_i'2307 =
                  Obj.magic
                    Int.rem
                    v_i'2303
                    v_m'2301
                in
                let v_acc_init'2308 =
                  Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_b'2298
                    v_i'2307
                in
                let v_v'2311 =
                  let rec v_loop'6170 =
                      fun v_acc'6171 ->
                        fun v_i'6172 ->
                          if
                            Obj.magic
                              (Obj.magic
                                 ((<) : int -> int -> bool)
                                 v_i'6172
                                 v_n'2302)
                          then
                            let v_t'6173 =
                              Obj.magic
                                v_t'5206
                                v_w'2296
                                v_x'2297
                                v_n'2302
                                v_x_offset'2305
                                v_i'2307
                                v_acc'6171
                                v_i'6172
                            in
                            Obj.magic
                              v_loop'6170
                              v_t'6173
                              (Obj.magic
                                 Int.add
                                 v_i'6172
                                 1)
                          else
                            Obj.magic
                              v_acc'6171
                  in Obj.magic
                    v_loop'6170
                    v_acc_init'2308
                    0
                in
                Obj.magic
                  Boot.Intrinsics.T.linear_set_exn
                  v_z'2299
                  v_z_idx'2306
                  v_v'2311;;
let v_tensorOpExn__z___Wx_B =
  fun v_s_max'2295 ->
    fun v_w'2296 ->
      fun v_x'2297 ->
        fun v_b'2298 ->
          fun v_z'2299 ->
            let v_w_shape'2300 =
              Obj.magic
                Boot.Intrinsics.T.shape
                v_w'2296
            in
            let v_m'2301 =
              Obj.magic
                Boot.Intrinsics.Mseq.get
                v_w_shape'2300
                0
            in
            let v_n'2302 =
              Obj.magic
                Boot.Intrinsics.Mseq.get
                v_w_shape'2300
                1
            in
            let rec v_loop'6174 =
                fun v_acc'6175 ->
                  fun v_i'6176 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6176
                           (Obj.magic
                              Int.mul
                              v_s_max'2295
                              v_m'2301))
                    then
                      let v_t'6177 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_iterfun'2312
                               v_w'2296
                               v_x'2297
                               v_b'2298
                               v_z'2299
                               v_m'2301
                               v_n'2302)
                          v_acc'6175
                          v_i'6176
                      in
                      Obj.magic
                        v_loop'6174
                        v_t'6177
                        (Obj.magic
                           Int.add
                           v_i'6176
                           1)
                    else
                      Obj.magic
                        v_acc'6175
            in Obj.magic
              v_loop'6174
              ()
              0;;
let v_t'5207 =
  fun v_x'2315 ->
    fun v_z'2317 ->
      fun v_n'2320 ->
        fun v_x_offset'2326 ->
          fun v_y_val'2328 ->
            fun v_z_idx'2329 ->
              fun v_row'2330 ->
                let v_'2331 =
                  Obj.magic
                    Boot.Intrinsics.T.linear_set_exn
                    v_z'2317
                    v_z_idx'2329
                    (Obj.magic
                       Float.mul
                       v_y_val'2328
                       (Obj.magic
                          Boot.Intrinsics.T.linear_get_exn
                          v_x'2315
                          (Obj.magic
                             Int.add
                             v_x_offset'2326
                             v_row'2330)))
                in
                Obj.magic
                  Int.add
                  v_z_idx'2329
                  v_n'2320;;
let v_iterfun'2333 =
  fun v_x'2315 ->
    fun v_y'2316 ->
      fun v_z'2317 ->
        fun v_m'2319 ->
          fun v_n'2320 ->
            fun v_m_x_n'2321 ->
              fun v_i'2322 ->
                let v_s_idx'2323 =
                  Obj.magic
                    Int.div
                    v_i'2322
                    v_n'2320
                in
                let v_col'2324 =
                  Obj.magic
                    Int.rem
                    v_i'2322
                    v_n'2320
                in
                let v_z_offset'2325 =
                  Obj.magic
                    Int.add
                    (Obj.magic
                       Int.mul
                       v_s_idx'2323
                       v_m_x_n'2321)
                    v_col'2324
                in
                let v_x_offset'2326 =
                  Obj.magic
                    Int.mul
                    v_s_idx'2323
                    v_m'2319
                in
                let v_y_offset'2327 =
                  Obj.magic
                    Int.mul
                    v_s_idx'2323
                    v_n'2320
                in
                let v_y_val'2328 =
                  Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_y'2316
                    (Obj.magic
                       Int.add
                       v_y_offset'2327
                       v_col'2324)
                in
                let v_'2332 =
                  let rec v_loop'6178 =
                      fun v_acc'6179 ->
                        fun v_i'6180 ->
                          if
                            Obj.magic
                              (Obj.magic
                                 ((<) : int -> int -> bool)
                                 v_i'6180
                                 v_m'2319)
                          then
                            let v_t'6181 =
                              Obj.magic
                                v_t'5207
                                v_x'2315
                                v_z'2317
                                v_n'2320
                                v_x_offset'2326
                                v_y_val'2328
                                v_acc'6179
                                v_i'6180
                            in
                            Obj.magic
                              v_loop'6178
                              v_t'6181
                              (Obj.magic
                                 Int.add
                                 v_i'6180
                                 1)
                          else
                            Obj.magic
                              v_acc'6179
                  in Obj.magic
                    v_loop'6178
                    v_z_offset'2325
                    0
                in
                ();;
let v_tensorOpExn__z___x___y_T =
  fun v_s_max'2314 ->
    fun v_x'2315 ->
      fun v_y'2316 ->
        fun v_z'2317 ->
          let v_z_shape'2318 =
            Obj.magic
              Boot.Intrinsics.T.shape
              v_z'2317
          in
          let v_m'2319 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_z_shape'2318
              1
          in
          let v_n'2320 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_z_shape'2318
              2
          in
          let v_m_x_n'2321 =
            Obj.magic
              Int.mul
              v_m'2319
              v_n'2320
          in
          let rec v_loop'6182 =
              fun v_acc'6183 ->
                fun v_i'6184 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6184
                         (Obj.magic
                            Int.mul
                            v_s_max'2314
                            v_n'2320))
                  then
                    let v_t'6185 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2333
                             v_x'2315
                             v_y'2316
                             v_z'2317
                             v_m'2319
                             v_n'2320
                             v_m_x_n'2321)
                        v_acc'6183
                        v_i'6184
                    in
                    Obj.magic
                      v_loop'6182
                      v_t'6185
                      (Obj.magic
                         Int.add
                         v_i'6184
                         1)
                  else
                    Obj.magic
                      v_acc'6183
          in Obj.magic
            v_loop'6182
            ()
            0;;
let v_t'5208 =
  fun v_x'2336 ->
    fun v_w'2337 ->
      fun v_n'2341 ->
        fun v_x_offset'2346 ->
          fun v_j'2347 ->
            fun v_acc'2348 ->
              fun v_i'2349 ->
                Obj.magic
                  Float.add
                  v_acc'2348
                  (Obj.magic
                     Float.mul
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_w'2337
                        (Obj.magic
                           Int.add
                           (Obj.magic
                              Int.mul
                              v_n'2341
                              v_i'2349)
                           v_j'2347))
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_x'2336
                        (Obj.magic
                           Int.add
                           v_x_offset'2346
                           v_i'2349)));;
let v_iterfun'2351 =
  fun v_x'2336 ->
    fun v_w'2337 ->
      fun v_z'2338 ->
        fun v_m'2340 ->
          fun v_n'2341 ->
            fun v_j'2342 ->
              let v_s_idx'2343 =
                Obj.magic
                  Int.div
                  v_j'2342
                  v_n'2341
              in
              let v_n_idx'2344 =
                Obj.magic
                  Int.rem
                  v_j'2342
                  v_n'2341
              in
              let v_z_idx'2345 =
                v_j'2342
              in
              let v_x_offset'2346 =
                Obj.magic
                  Int.mul
                  v_s_idx'2343
                  v_m'2340
              in
              let v_j'2347 =
                v_n_idx'2344
              in
              let v_v'2350 =
                let rec v_loop'6186 =
                    fun v_acc'6187 ->
                      fun v_i'6188 ->
                        if
                          Obj.magic
                            (Obj.magic
                               ((<) : int -> int -> bool)
                               v_i'6188
                               v_m'2340)
                        then
                          let v_t'6189 =
                            Obj.magic
                              v_t'5208
                              v_x'2336
                              v_w'2337
                              v_n'2341
                              v_x_offset'2346
                              v_j'2347
                              v_acc'6187
                              v_i'6188
                          in
                          Obj.magic
                            v_loop'6186
                            v_t'6189
                            (Obj.magic
                               Int.add
                               v_i'6188
                               1)
                        else
                          Obj.magic
                            v_acc'6187
                in Obj.magic
                  v_loop'6186
                  0.
                  0
              in
              Obj.magic
                Boot.Intrinsics.T.linear_set_exn
                v_z'2338
                v_z_idx'2345
                v_v'2350;;
let v_tensorOpExn__z____x_T___W__T =
  fun v_s_max'2335 ->
    fun v_x'2336 ->
      fun v_w'2337 ->
        fun v_z'2338 ->
          let v_w_shape'2339 =
            Obj.magic
              Boot.Intrinsics.T.shape
              v_w'2337
          in
          let v_m'2340 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_w_shape'2339
              0
          in
          let v_n'2341 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_w_shape'2339
              1
          in
          let rec v_loop'6190 =
              fun v_acc'6191 ->
                fun v_i'6192 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6192
                         (Obj.magic
                            Int.mul
                            v_s_max'2335
                            v_n'2341))
                  then
                    let v_t'6193 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2351
                             v_x'2336
                             v_w'2337
                             v_z'2338
                             v_m'2340
                             v_n'2341)
                        v_acc'6191
                        v_i'6192
                    in
                    Obj.magic
                      v_loop'6190
                      v_t'6193
                      (Obj.magic
                         Int.add
                         v_i'6192
                         1)
                  else
                    Obj.magic
                      v_acc'6191
          in Obj.magic
            v_loop'6190
            ()
            0;;
let v_iterfun'2360 =
  fun v_x'2354 ->
    fun v_z'2355 ->
      fun v_i'2358 ->
        let v_x_i'2359 =
          Obj.magic
            Boot.Intrinsics.T.linear_get_exn
            v_x'2354
            v_i'2358
        in
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2355
          v_i'2358
          (if
             Obj.magic
               (Obj.magic
                  ((>) : float -> float -> bool)
                  v_x_i'2359
                  0.)
           then
             v_x_i'2359
           else
             Obj.magic
               0.);;
let v_tensorOpExn__z___ReLU_x_ =
  fun v_s_max'2353 ->
    fun v_x'2354 ->
      fun v_z'2355 ->
        let v_s'2356 =
          Obj.magic
            Boot.Intrinsics.Mseq.get
            (Obj.magic
               Boot.Intrinsics.T.shape
               v_x'2354)
            0
        in
        let v_m'2357 =
          Obj.magic
            Int.div
            (Obj.magic
               v_tensorSize'2294
               v_x'2354)
            v_s'2356
        in
        let rec v_loop'6194 =
            fun v_acc'6195 ->
              fun v_i'6196 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6196
                       (Obj.magic
                          Int.mul
                          v_s_max'2353
                          v_m'2357))
                then
                  let v_t'6197 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2360
                           v_x'2354
                           v_z'2355)
                      v_acc'6195
                      v_i'6196
                  in
                  Obj.magic
                    v_loop'6194
                    v_t'6197
                    (Obj.magic
                       Int.add
                       v_i'6196
                       1)
                else
                  Obj.magic
                    v_acc'6195
        in Obj.magic
          v_loop'6194
          ()
          0;;
let v_iterfun'2370 =
  fun v_x'2363 ->
    fun v_z'2365 ->
      fun v_i'2368 ->
        let v_x_i'2369 =
          Obj.magic
            Boot.Intrinsics.T.linear_get_exn
            v_x'2363
            v_i'2368
        in
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2365
          v_i'2368
          (Obj.magic
             v_exp
             v_x_i'2369);;
let v_t'5209 =
  fun v_z'2365 ->
    fun v_offset'2373 ->
      fun v_acc'2374 ->
        fun v_i'2375 ->
          Obj.magic
            Float.add
            v_acc'2374
            (Obj.magic
               Boot.Intrinsics.T.linear_get_exn
               v_z'2365
               (Obj.magic
                  Int.add
                  v_offset'2373
                  v_i'2375));;
let v_iterfunSummarize =
  fun v_expsumbuf'2364 ->
    fun v_z'2365 ->
      fun v_m'2367 ->
        fun v_s_idx'2372 ->
          let v_offset'2373 =
            Obj.magic
              Int.mul
              v_s_idx'2372
              v_m'2367
          in
          let v_expsum'2376 =
            let rec v_loop'6198 =
                fun v_acc'6199 ->
                  fun v_i'6200 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6200
                           v_m'2367)
                    then
                      let v_t'6201 =
                        Obj.magic
                          v_t'5209
                          v_z'2365
                          v_offset'2373
                          v_acc'6199
                          v_i'6200
                      in
                      Obj.magic
                        v_loop'6198
                        v_t'6201
                        (Obj.magic
                           Int.add
                           v_i'6200
                           1)
                    else
                      Obj.magic
                        v_acc'6199
            in Obj.magic
              v_loop'6198
              0.
              0
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_expsumbuf'2364
            v_s_idx'2372
            v_expsum'2376;;
let v_iterfunRegularize =
  fun v_expsumbuf'2364 ->
    fun v_z'2365 ->
      fun v_m'2367 ->
        fun v_i'2379 ->
          let v_s_idx'2380 =
            Obj.magic
              Int.div
              v_i'2379
              v_m'2367
          in
          let v_expsum'2381 =
            Obj.magic
              Boot.Intrinsics.T.linear_get_exn
              v_expsumbuf'2364
              v_s_idx'2380
          in
          let v_z_i'2382 =
            Obj.magic
              Boot.Intrinsics.T.linear_get_exn
              v_z'2365
              v_i'2379
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_z'2365
            v_i'2379
            (Obj.magic
               Float.div
               v_z_i'2382
               v_expsum'2381);;
let v_tensorOpExn__z___SoftMax_x_ =
  fun v_s_max'2362 ->
    fun v_x'2363 ->
      fun v_expsumbuf'2364 ->
        fun v_z'2365 ->
          let v_s'2366 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_x'2363)
              0
          in
          let v_m'2367 =
            Obj.magic
              Int.div
              (Obj.magic
                 v_tensorSize'2294
                 v_x'2363)
              v_s'2366
          in
          let v_'2371 =
            let rec v_loop'6202 =
                fun v_acc'6203 ->
                  fun v_i'6204 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6204
                           (Obj.magic
                              Int.mul
                              v_s_max'2362
                              v_m'2367))
                    then
                      let v_t'6205 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_iterfun'2370
                               v_x'2363
                               v_z'2365)
                          v_acc'6203
                          v_i'6204
                      in
                      Obj.magic
                        v_loop'6202
                        v_t'6205
                        (Obj.magic
                           Int.add
                           v_i'6204
                           1)
                    else
                      Obj.magic
                        v_acc'6203
            in Obj.magic
              v_loop'6202
              ()
              0
          in
          let v_'2378 =
            let rec v_loop'6206 =
                fun v_acc'6207 ->
                  fun v_i'6208 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6208
                           v_s_max'2362)
                    then
                      let v_t'6209 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_iterfunSummarize
                               v_expsumbuf'2364
                               v_z'2365
                               v_m'2367)
                          v_acc'6207
                          v_i'6208
                      in
                      Obj.magic
                        v_loop'6206
                        v_t'6209
                        (Obj.magic
                           Int.add
                           v_i'6208
                           1)
                    else
                      Obj.magic
                        v_acc'6207
            in Obj.magic
              v_loop'6206
              ()
              0
          in
          let rec v_loop'6210 =
              fun v_acc'6211 ->
                fun v_i'6212 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6212
                         (Obj.magic
                            Int.mul
                            v_s_max'2362
                            v_m'2367))
                  then
                    let v_t'6213 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfunRegularize
                             v_expsumbuf'2364
                             v_z'2365
                             v_m'2367)
                        v_acc'6211
                        v_i'6212
                    in
                    Obj.magic
                      v_loop'6210
                      v_t'6213
                      (Obj.magic
                         Int.add
                         v_i'6212
                         1)
                  else
                    Obj.magic
                      v_acc'6211
          in Obj.magic
            v_loop'6210
            ()
            0;;
let v_iterfun'2394 =
  fun v_h'2386 ->
    fun v_dldh'2387 ->
      fun v_z'2388 ->
        fun v_i'2391 ->
          let v_dhds_ii'2392 =
            if
              Obj.magic
                (Obj.magic
                   ((>) : float -> float -> bool)
                   (Obj.magic
                      Boot.Intrinsics.T.linear_get_exn
                      v_h'2386
                      v_i'2391)
                   0.)
            then
              1.
            else
              Obj.magic
                0.
          in
          let v_dldh_i'2393 =
            Obj.magic
              Boot.Intrinsics.T.linear_get_exn
              v_dldh'2387
              v_i'2391
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_z'2388
            v_i'2391
            (Obj.magic
               Float.mul
               v_dhds_ii'2392
               v_dldh_i'2393);;
let v_tensorOpExn__z___d_dx_l_ReLU_x__ =
  fun v_s_max'2385 ->
    fun v_h'2386 ->
      fun v_dldh'2387 ->
        fun v_z'2388 ->
          let v_s'2389 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_h'2386)
              0
          in
          let v_m'2390 =
            Obj.magic
              Int.div
              (Obj.magic
                 v_tensorSize'2294
                 v_h'2386)
              v_s'2389
          in
          let rec v_loop'6214 =
              fun v_acc'6215 ->
                fun v_i'6216 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6216
                         (Obj.magic
                            Int.mul
                            v_s_max'2385
                            v_m'2390))
                  then
                    let v_t'6217 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2394
                             v_h'2386
                             v_dldh'2387
                             v_z'2388)
                        v_acc'6215
                        v_i'6216
                    in
                    Obj.magic
                      v_loop'6214
                      v_t'6217
                      (Obj.magic
                         Int.add
                         v_i'6216
                         1)
                  else
                    Obj.magic
                      v_acc'6215
          in Obj.magic
            v_loop'6214
            ()
            0;;
let v_t'5210 =
  fun v_p'2397 ->
    fun v_dldp'2398 ->
      fun v_s_offset'2404 ->
        fun v_i'2405 ->
          fun v_p_i'2406 ->
            fun v_acc'2407 ->
              fun v_j'2408 ->
                let v_s_ij'2410 =
                  if
                    Obj.magic
                      (Obj.magic
                         Int.equal
                         v_j'2408
                         v_i'2405)
                  then
                    Obj.magic
                      Float.sub
                      v_p_i'2406
                      (Obj.magic
                         Float.mul
                         v_p_i'2406
                         v_p_i'2406)
                  else
                    Obj.magic
                      (let v_p_j'2409 =
                         Obj.magic
                           Boot.Intrinsics.T.linear_get_exn
                           v_p'2397
                           (Obj.magic
                              Int.add
                              v_s_offset'2404
                              v_j'2408)
                       in
                       Obj.magic
                         Float.neg
                         (Obj.magic
                            Float.mul
                            v_p_i'2406
                            v_p_j'2409))
                in
                let v_dldp_j'2411 =
                  Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_dldp'2398
                    (Obj.magic
                       Int.add
                       v_s_offset'2404
                       v_j'2408)
                in
                Obj.magic
                  Float.add
                  v_acc'2407
                  (Obj.magic
                     Float.mul
                     v_dldp_j'2411
                     v_s_ij'2410);;
let v_iterfun'2413 =
  fun v_p'2397 ->
    fun v_dldp'2398 ->
      fun v_z'2399 ->
        fun v_m'2401 ->
          fun v_i'2402 ->
            let v_s_idx'2403 =
              Obj.magic
                Int.div
                v_i'2402
                v_m'2401
            in
            let v_s_offset'2404 =
              Obj.magic
                Int.mul
                v_s_idx'2403
                v_m'2401
            in
            let v_i'2405 =
              Obj.magic
                Int.rem
                v_i'2402
                v_m'2401
            in
            let v_p_i'2406 =
              Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_p'2397
                (Obj.magic
                   Int.add
                   v_s_offset'2404
                   v_i'2405)
            in
            let v_v'2412 =
              let rec v_loop'6218 =
                  fun v_acc'6219 ->
                    fun v_i'6220 ->
                      if
                        Obj.magic
                          (Obj.magic
                             ((<) : int -> int -> bool)
                             v_i'6220
                             v_m'2401)
                      then
                        let v_t'6221 =
                          Obj.magic
                            v_t'5210
                            v_p'2397
                            v_dldp'2398
                            v_s_offset'2404
                            v_i'2405
                            v_p_i'2406
                            v_acc'6219
                            v_i'6220
                        in
                        Obj.magic
                          v_loop'6218
                          v_t'6221
                          (Obj.magic
                             Int.add
                             v_i'6220
                             1)
                      else
                        Obj.magic
                          v_acc'6219
              in Obj.magic
                v_loop'6218
                0.
                0
            in
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2399
              (Obj.magic
                 Int.add
                 v_s_offset'2404
                 v_i'2405)
              v_v'2412;;
let v_tensorOpExn__z___d_dx_l_SoftMax_x___ =
  fun v_s_max'2396 ->
    fun v_p'2397 ->
      fun v_dldp'2398 ->
        fun v_z'2399 ->
          let v_s'2400 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_p'2397)
              0
          in
          let v_m'2401 =
            Obj.magic
              Int.div
              (Obj.magic
                 v_tensorSize'2294
                 v_p'2397)
              v_s'2400
          in
          let rec v_loop'6222 =
              fun v_acc'6223 ->
                fun v_i'6224 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6224
                         (Obj.magic
                            Int.mul
                            v_s_max'2396
                            v_m'2401))
                  then
                    let v_t'6225 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2413
                             v_p'2397
                             v_dldp'2398
                             v_z'2399
                             v_m'2401)
                        v_acc'6223
                        v_i'6224
                    in
                    Obj.magic
                      v_loop'6222
                      v_t'6225
                      (Obj.magic
                         Int.add
                         v_i'6224
                         1)
                  else
                    Obj.magic
                      v_acc'6223
          in Obj.magic
            v_loop'6222
            ()
            0;;
let v_iterfun'2421 =
  fun v_x'2416 ->
    fun v_z'2417 ->
      fun v_i'2420 ->
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2417
          v_i'2420
          (Obj.magic
             Boot.Intrinsics.T.linear_get_exn
             v_x'2416
             v_i'2420);;
let v_tensorOpExn__z___x =
  fun v_s_max'2415 ->
    fun v_x'2416 ->
      fun v_z'2417 ->
        let v_s'2418 =
          Obj.magic
            Boot.Intrinsics.Mseq.get
            (Obj.magic
               Boot.Intrinsics.T.shape
               v_x'2416)
            0
        in
        let v_m'2419 =
          Obj.magic
            Int.div
            (Obj.magic
               v_tensorSize'2294
               v_x'2416)
            v_s'2418
        in
        let rec v_loop'6226 =
            fun v_acc'6227 ->
              fun v_i'6228 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6228
                       (Obj.magic
                          Int.mul
                          v_s_max'2415
                          v_m'2419))
                then
                  let v_t'6229 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2421
                           v_x'2416
                           v_z'2417)
                      v_acc'6227
                      v_i'6228
                  in
                  Obj.magic
                    v_loop'6226
                    v_t'6229
                    (Obj.magic
                       Int.add
                       v_i'6228
                       1)
                else
                  Obj.magic
                    v_acc'6227
        in Obj.magic
          v_loop'6226
          ()
          0;;
let v_iterfun'2429 =
  fun v_c'2424 ->
    fun v_z'2425 ->
      fun v_i'2428 ->
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2425
          v_i'2428
          (Obj.magic
             Float.mul
             (Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_z'2425
                v_i'2428)
             v_c'2424);;
let v_tensorOpExn__z____scalar_c_ =
  fun v_s_max'2423 ->
    fun v_c'2424 ->
      fun v_z'2425 ->
        let v_s'2426 =
          Obj.magic
            Boot.Intrinsics.Mseq.get
            (Obj.magic
               Boot.Intrinsics.T.shape
               v_z'2425)
            0
        in
        let v_m'2427 =
          Obj.magic
            Int.div
            (Obj.magic
               v_tensorSize'2294
               v_z'2425)
            v_s'2426
        in
        let rec v_loop'6230 =
            fun v_acc'6231 ->
              fun v_i'6232 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6232
                       (Obj.magic
                          Int.mul
                          v_s_max'2423
                          v_m'2427))
                then
                  let v_t'6233 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2429
                           v_c'2424
                           v_z'2425)
                      v_acc'6231
                      v_i'6232
                  in
                  Obj.magic
                    v_loop'6230
                    v_t'6233
                    (Obj.magic
                       Int.add
                       v_i'6232
                       1)
                else
                  Obj.magic
                    v_acc'6231
        in Obj.magic
          v_loop'6230
          ()
          0;;
let v_iterfun'2435 =
  fun v_c'2431 ->
    fun v_z'2432 ->
      fun v_i'2434 ->
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2432
          v_i'2434
          v_c'2431;;
let v_tensorOpExn__Z___scalar_c_ =
  fun v_c'2431 ->
    fun v_z'2432 ->
      let v_m'2433 =
        Obj.magic
          v_tensorSize'2294
          v_z'2432
      in
      let rec v_loop'6234 =
          fun v_acc'6235 ->
            fun v_i'6236 ->
              if
                Obj.magic
                  (Obj.magic
                     ((<) : int -> int -> bool)
                     v_i'6236
                     v_m'2433)
              then
                let v_t'6237 =
                  Obj.magic
                    (fun nv_ ->
                       Obj.magic
                         v_iterfun'2435
                         v_c'2431
                         v_z'2432)
                    v_acc'6235
                    v_i'6236
                in
                Obj.magic
                  v_loop'6234
                  v_t'6237
                  (Obj.magic
                     Int.add
                     v_i'6236
                     1)
              else
                Obj.magic
                  v_acc'6235
      in Obj.magic
        v_loop'6234
        ()
        0;;
let v_iterfun'2444 =
  fun v_x'2438 ->
    fun v_c'2439 ->
      fun v_z'2440 ->
        fun v_x_offset'2442 ->
          fun v_i'2443 ->
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2440
              v_i'2443
              (Obj.magic
                 Float.add
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_z'2440
                    v_i'2443)
                 (Obj.magic
                    Float.mul
                    (Obj.magic
                       Boot.Intrinsics.T.linear_get_exn
                       v_x'2438
                       (Obj.magic
                          Int.add
                          v_i'2443
                          v_x_offset'2442))
                    v_c'2439));;
let v_tensorOpExn__Z____x___scalar_c_ =
  fun v_s_idx'2437 ->
    fun v_x'2438 ->
      fun v_c'2439 ->
        fun v_z'2440 ->
          let v_m'2441 =
            Obj.magic
              v_tensorSize'2294
              v_z'2440
          in
          let v_x_offset'2442 =
            Obj.magic
              Int.mul
              v_s_idx'2437
              v_m'2441
          in
          let rec v_loop'6238 =
              fun v_acc'6239 ->
                fun v_i'6240 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6240
                         v_m'2441)
                  then
                    let v_t'6241 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2444
                             v_x'2438
                             v_c'2439
                             v_z'2440
                             v_x_offset'2442)
                        v_acc'6239
                        v_i'6240
                    in
                    Obj.magic
                      v_loop'6238
                      v_t'6241
                      (Obj.magic
                         Int.add
                         v_i'6240
                         1)
                  else
                    Obj.magic
                      v_acc'6239
          in Obj.magic
            v_loop'6238
            ()
            0;;
let v_iterfun'2454 =
  fun v_x'2447 ->
    fun v_c'2448 ->
      fun v_z'2449 ->
        fun v_z_offset'2451 ->
          fun v_i'2452 ->
            let v_z_idx'2453 =
              Obj.magic
                Int.add
                v_i'2452
                v_z_offset'2451
            in
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2449
              v_z_idx'2453
              (Obj.magic
                 Float.add
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_z'2449
                    v_z_idx'2453)
                 (Obj.magic
                    Float.mul
                    (Obj.magic
                       Boot.Intrinsics.T.linear_get_exn
                       v_x'2447
                       v_i'2452)
                    v_c'2448));;
let v_tensorOpExn__z____X___scalar_c_ =
  fun v_s_idx'2446 ->
    fun v_x'2447 ->
      fun v_c'2448 ->
        fun v_z'2449 ->
          let v_m'2450 =
            Obj.magic
              v_tensorSize'2294
              v_x'2447
          in
          let v_z_offset'2451 =
            Obj.magic
              Int.mul
              v_s_idx'2446
              v_m'2450
          in
          let rec v_loop'6242 =
              fun v_acc'6243 ->
                fun v_i'6244 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6244
                         v_m'2450)
                  then
                    let v_t'6245 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2454
                             v_x'2447
                             v_c'2448
                             v_z'2449
                             v_z_offset'2451)
                        v_acc'6243
                        v_i'6244
                    in
                    Obj.magic
                      v_loop'6242
                      v_t'6245
                      (Obj.magic
                         Int.add
                         v_i'6244
                         1)
                  else
                    Obj.magic
                      v_acc'6243
          in Obj.magic
            v_loop'6242
            ()
            0;;
let v_iterfun'2465 =
  fun v_y'2457 ->
    fun v_c'2458 ->
      fun v_z'2459 ->
        fun v_m'2460 ->
          fun v_i'2461 ->
            let v_idx'2462 =
              Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_y'2457
                v_i'2461
            in
            let v_offset'2463 =
              Obj.magic
                Int.mul
                v_i'2461
                v_m'2460
            in
            let v_z_idx'2464 =
              Obj.magic
                Int.add
                v_idx'2462
                v_offset'2463
            in
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2459
              v_z_idx'2464
              (Obj.magic
                 Float.add
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_z'2459
                    v_z_idx'2464)
                 v_c'2458);;
let v_tensorOpExp__z____1_Hot_y____scalar_c_ =
  fun v_s_max'2456 ->
    fun v_y'2457 ->
      fun v_c'2458 ->
        fun v_z'2459 ->
          let v_m'2460 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_z'2459)
              1
          in
          let rec v_loop'6246 =
              fun v_acc'6247 ->
                fun v_i'6248 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6248
                         v_s_max'2456)
                  then
                    let v_t'6249 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2465
                             v_y'2457
                             v_c'2458
                             v_z'2459
                             v_m'2460)
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
            ()
            0;;
let v_t'5211 =
  fun v_z'2470 ->
    fun v_offset'2474 ->
      fun v_idx'2475 ->
        fun v_v'2476 ->
          fun v_j'2477 ->
            if
              Obj.magic
                (Obj.magic
                   Int.equal
                   v_j'2477
                   v_idx'2475)
            then
              Obj.magic
                Boot.Intrinsics.T.linear_set_exn
                v_z'2470
                (Obj.magic
                   Int.add
                   v_j'2477
                   v_offset'2474)
                v_v'2476
            else
              Obj.magic
                (Obj.magic
                   Boot.Intrinsics.T.linear_set_exn
                   v_z'2470
                   (Obj.magic
                      Int.add
                      v_j'2477
                      v_offset'2474)
                   0.);;
let v_iterfun'2478 =
  fun v_y'2468 ->
    fun v_x'2469 ->
      fun v_z'2470 ->
        fun v_m'2472 ->
          fun v_i'2473 ->
            let v_offset'2474 =
              Obj.magic
                Int.mul
                v_i'2473
                v_m'2472
            in
            let v_idx'2475 =
              Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_y'2468
                v_i'2473
            in
            let v_v'2476 =
              Obj.magic
                Float.neg
                (Obj.magic
                   Float.div
                   1.
                   (Obj.magic
                      Boot.Intrinsics.T.linear_get_exn
                      v_x'2469
                      (Obj.magic
                         Int.add
                         v_idx'2475
                         v_offset'2474)))
            in
            let rec v_loop'6250 =
                fun v_acc'6251 ->
                  fun v_i'6252 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6252
                           v_m'2472)
                    then
                      let v_t'6253 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_t'5211
                               v_z'2470
                               v_offset'2474
                               v_idx'2475
                               v_v'2476)
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
let v_tensorOpExn__z___1_Hot_y____scalar__1__x_T___1_Hot_y___ =
  fun v_s_max'2467 ->
    fun v_y'2468 ->
      fun v_x'2469 ->
        fun v_z'2470 ->
          let v_s'2471 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_x'2469)
              0
          in
          let v_m'2472 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_x'2469)
              1
          in
          let rec v_loop'6254 =
              fun v_acc'6255 ->
                fun v_i'6256 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6256
                         v_s_max'2467)
                  then
                    let v_t'6257 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2478
                             v_y'2468
                             v_x'2469
                             v_z'2470
                             v_m'2472)
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
            ()
            0;;
let v_t'5212 =
  fun v_z'2480 ->
    fun v_m'2482 ->
      fun v_i'2483 ->
        fun v_acc'2484 ->
          fun v_j'2485 ->
            let v_s_idx'2486 =
              Obj.magic
                Int.add
                v_j'2485
                1
            in
            let v_s_offset'2487 =
              Obj.magic
                Int.mul
                v_s_idx'2486
                v_m'2482
            in
            Obj.magic
              Float.add
              v_acc'2484
              (Obj.magic
                 Boot.Intrinsics.T.linear_get_exn
                 v_z'2480
                 (Obj.magic
                    Int.add
                    v_s_offset'2487
                    v_i'2483));;
let v_iterfun =
  fun v_z'2480 ->
    fun v_s'2481 ->
      fun v_m'2482 ->
        fun v_i'2483 ->
          let v_v'2488 =
            let rec v_loop'6258 =
                fun v_acc'6259 ->
                  fun v_i'6260 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6260
                           (Obj.magic
                              Int.sub
                              v_s'2481
                              1))
                    then
                      let v_t'6261 =
                        Obj.magic
                          v_t'5212
                          v_z'2480
                          v_m'2482
                          v_i'2483
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
              (Obj.magic
                 Boot.Intrinsics.T.linear_get_exn
                 v_z'2480
                 v_i'2483)
              0
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_z'2480
            v_i'2483
            v_v'2488;;
let v_tensorOpExn__Dim1Reduce_z__dst___z_0__op_____ =
  fun v_z'2480 ->
    let v_s'2481 =
      Obj.magic
        Boot.Intrinsics.Mseq.get
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_z'2480)
        0
    in
    let v_m'2482 =
      Obj.magic
        Int.div
        (Obj.magic
           v_tensorSize'2294
           v_z'2480)
        v_s'2481
    in
    let rec v_loop'6262 =
        fun v_acc'6263 ->
          fun v_i'6264 ->
            if
              Obj.magic
                (Obj.magic
                   ((<) : int -> int -> bool)
                   v_i'6264
                   v_m'2482)
            then
              let v_t'6265 =
                Obj.magic
                  (fun nv_ ->
                     Obj.magic
                       v_iterfun
                       v_z'2480
                       v_s'2481
                       v_m'2482)
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
      ()
      0;;
let v_nnCompType_FullyConnected =
  0;;
let v_nnCompType_ReLU =
  1;;
let v_nnCompType_SoftMax =
  2;;
let v_t'5213 =
  fun v_'2502 ->
    0.;;
let v_t'5214 =
  fun v_'2503 ->
    0.;;
let v_t'5215 =
  fun v_'2504 ->
    0.;;
let v_t'5216 =
  fun v_'2505 ->
    0.;;
let v_t'5217 =
  fun v_'2506 ->
    0.;;
let v_t'5218 =
  fun v_'2507 ->
    0.;;
let v_t'5219 =
  fun v_'2508 ->
    0.;;
let v_t'5220 =
  fun v_'2509 ->
    0.;;
let v_t'5221 =
  fun v_'2510 ->
    0.;;
let v_t'5222 =
  fun v_'2511 ->
    0.;;
let v_t'5223 =
  fun v_'2512 ->
    0.;;
let v_t'5224 =
  fun v_'2513 ->
    0.;;
let v_t'5225 =
  fun v_'2514 ->
    0.;;
let v_t'5226 =
  fun v_'2515 ->
    0.;;
let v_t'5227 =
  fun v_'2516 ->
    0.;;
let v_t'5228 =
  fun v_'2517 ->
    0.;;
let v_t'5229 =
  fun v_'2518 ->
    0.;;
let v_t'5230 =
  fun v_'2519 ->
    0.;;
let v_t'5231 =
  fun v_'2520 ->
    0.;;
let v_nnComponentMakeExn =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_indim'2495 ->
              fun v_outdim'2496 ->
                fun v_weights'2497 ->
                  fun v_max_batchsize'2498 ->
                    fun v_name'2499 ->
                      if
                        Obj.magic
                          (Obj.magic
                             v_eqString
                             v_eqSeq
                             v_name'2499
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
                                  v_weights'2497)
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
                            (let v_w'2500 =
                               Obj.magic
                                 Boot.Intrinsics.Mseq.get
                                 v_weights'2497
                                 0
                             in
                             let v_b'2501 =
                               Obj.magic
                                 Boot.Intrinsics.Mseq.get
                                 v_weights'2497
                                 1
                             in
                             if
                               Obj.magic
                                 (Obj.magic
                                    ((<>) : int -> int -> bool)
                                    (Obj.magic
                                       Boot.Intrinsics.T.rank
                                       v_w'2500)
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
                                            v_b'2501)
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
                                                    v_w'2500)
                                                 0)
                                              (Obj.magic
                                                 v_tensorSize'2294
                                                 v_b'2501))
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
                                           (CRec'6294 { lb =
                                                (Obj.repr
                                                  v_b'2501);
                                              lw =
                                                (Obj.repr
                                                  v_w'2500);
                                              lty =
                                                (Obj.repr
                                                  v_nnCompType_FullyConnected);
                                              lb_grads =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2498
                                                        (Obj.magic
                                                           Boot.Intrinsics.T.shape
                                                           v_b'2501))
                                                     v_t'5213));
                                              lw_grads =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2498
                                                        (Obj.magic
                                                           Boot.Intrinsics.T.shape
                                                           v_w'2500))
                                                     v_t'5214));
                                              lin_grads =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2498
                                                        v_indim'2495)
                                                     v_t'5215));
                                              lout_bufs =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2498
                                                        v_outdim'2496)
                                                     v_t'5216));
                                              lsoftmax_bufs =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.Helpers.of_array
                                                        [| (1) |])
                                                     v_t'5217)) }))))
                      else
                        Obj.magic
                          (if
                             Obj.magic
                               (Obj.magic
                                  v_eqString
                                  v_eqSeq
                                  v_name'2499
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (82);
                                       (101);
                                       (76);
                                       (85) |]))
                           then
                             CRec'6294 { lb =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (1) |])
                                      v_t'5218));
                               lw =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (1) |])
                                      v_t'5219));
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
                                      v_t'5220));
                               lw_grads =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (1) |])
                                      v_t'5221));
                               lin_grads =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.cons
                                         v_max_batchsize'2498
                                         v_indim'2495)
                                      v_t'5222));
                               lout_bufs =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.cons
                                         v_max_batchsize'2498
                                         v_outdim'2496)
                                      v_t'5223));
                               lsoftmax_bufs =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (1) |])
                                      v_t'5224)) }
                           else
                             Obj.magic
                               (if
                                  Obj.magic
                                    (Obj.magic
                                       v_eqString
                                       v_eqSeq
                                       v_name'2499
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
                                  CRec'6294 { lb =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (1) |])
                                           v_t'5225));
                                    lw =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (1) |])
                                           v_t'5226));
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
                                           v_t'5227));
                                    lw_grads =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (1) |])
                                           v_t'5228));
                                    lin_grads =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.cons
                                              v_max_batchsize'2498
                                              v_indim'2495)
                                           v_t'5229));
                                    lout_bufs =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.cons
                                              v_max_batchsize'2498
                                              v_outdim'2496)
                                           v_t'5230));
                                    lsoftmax_bufs =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (Obj.magic
                                                  v_max_batchsize'2498) |])
                                           v_t'5231)) }
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
                                                 v_name'2499);
                                               (Obj.magic
                                                 (Obj.magic
                                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                                    [| (34) |])) |])))));;
let v_nnComponentOutBufs =
  fun v_comp'2522 ->
    let
      CRec'6294 ({lout_bufs = v_X'2523})
    =
      Obj.magic
        v_comp'2522
    in
    Obj.magic
      v_X'2523;;
let v_nnComponentApplyExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2525 ->
          fun v_inputs'2526 ->
            fun v_comp'2527 ->
              let v_ty'2529 =
                let
                  CRec'6294 ({lty = v_X'2528})
                =
                  Obj.magic
                    v_comp'2527
                in
                Obj.magic
                  v_X'2528
              in
              if
                Obj.magic
                  (Obj.magic
                     Int.equal
                     v_ty'2529
                     v_nnCompType_FullyConnected)
              then
                let v_'2533 =
                  Obj.magic
                    v_tensorOpExn__z___Wx_B
                    v_s_max'2525
                    (let
                       CRec'6294 ({lw = v_X'2530})
                     =
                       Obj.magic
                         v_comp'2527
                     in
                     Obj.magic
                       v_X'2530)
                    v_inputs'2526
                    (let
                       CRec'6294 ({lb = v_X'2531})
                     =
                       Obj.magic
                         v_comp'2527
                     in
                     Obj.magic
                       v_X'2531)
                    (let
                       CRec'6294 ({lout_bufs = v_X'2532})
                     =
                       Obj.magic
                         v_comp'2527
                     in
                     Obj.magic
                       v_X'2532)
                in
                let
                  CRec'6294 ({lout_bufs = v_X'2534})
                =
                  Obj.magic
                    v_comp'2527
                in
                Obj.magic
                  v_X'2534
              else
                Obj.magic
                  (if
                     Obj.magic
                       (Obj.magic
                          Int.equal
                          v_ty'2529
                          v_nnCompType_ReLU)
                   then
                     let v_'2536 =
                       Obj.magic
                         v_tensorOpExn__z___ReLU_x_
                         v_s_max'2525
                         v_inputs'2526
                         (let
                            CRec'6294 ({lout_bufs = v_X'2535})
                          =
                            Obj.magic
                              v_comp'2527
                          in
                          Obj.magic
                            v_X'2535)
                     in
                     let
                       CRec'6294 ({lout_bufs = v_X'2537})
                     =
                       Obj.magic
                         v_comp'2527
                     in
                     Obj.magic
                       v_X'2537
                   else
                     Obj.magic
                       (if
                          Obj.magic
                            (Obj.magic
                               Int.equal
                               v_ty'2529
                               v_nnCompType_SoftMax)
                        then
                          let v_'2540 =
                            Obj.magic
                              v_tensorOpExn__z___SoftMax_x_
                              v_s_max'2525
                              v_inputs'2526
                              (let
                                 CRec'6294 ({lsoftmax_bufs = v_X'2538})
                               =
                                 Obj.magic
                                   v_comp'2527
                               in
                               Obj.magic
                                 v_X'2538)
                              (let
                                 CRec'6294 ({lout_bufs = v_X'2539})
                               =
                                 Obj.magic
                                   v_comp'2527
                               in
                               Obj.magic
                                 v_X'2539)
                          in
                          let
                            CRec'6294 ({lout_bufs = v_X'2541})
                          =
                            Obj.magic
                              v_comp'2527
                          in
                          Obj.magic
                            v_X'2541
                        else
                          Obj.magic
                            (let
                               CRec'6294 ({lout_bufs = v_X'2542})
                             =
                               Obj.magic
                                 v_comp'2527
                             in
                             Obj.magic
                               v_X'2542)));;
let v_nnComponentBackpropExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2544 ->
          fun v_comp_inputs'2545 ->
            fun v_output_grads'2546 ->
              fun v_comp'2547 ->
                let v_ty'2549 =
                  let
                    CRec'6294 ({lty = v_X'2548})
                  =
                    Obj.magic
                      v_comp'2547
                  in
                  Obj.magic
                    v_X'2548
                in
                if
                  Obj.magic
                    (Obj.magic
                       Int.equal
                       v_ty'2549
                       v_nnCompType_FullyConnected)
                then
                  let v_'2551 =
                    Obj.magic
                      v_tensorOpExn__z___x
                      v_s_max'2544
                      v_output_grads'2546
                      (let
                         CRec'6294 ({lb_grads = v_X'2550})
                       =
                         Obj.magic
                           v_comp'2547
                       in
                       Obj.magic
                         v_X'2550)
                  in
                  let v_'2553 =
                    Obj.magic
                      v_tensorOpExn__z___x___y_T
                      v_s_max'2544
                      v_output_grads'2546
                      v_comp_inputs'2545
                      (let
                         CRec'6294 ({lw_grads = v_X'2552})
                       =
                         Obj.magic
                           v_comp'2547
                       in
                       Obj.magic
                         v_X'2552)
                  in
                  let v_'2556 =
                    Obj.magic
                      v_tensorOpExn__z____x_T___W__T
                      v_s_max'2544
                      v_output_grads'2546
                      (let
                         CRec'6294 ({lw = v_X'2554})
                       =
                         Obj.magic
                           v_comp'2547
                       in
                       Obj.magic
                         v_X'2554)
                      (let
                         CRec'6294 ({lin_grads = v_X'2555})
                       =
                         Obj.magic
                           v_comp'2547
                       in
                       Obj.magic
                         v_X'2555)
                  in
                  let
                    CRec'6294 ({lin_grads = v_X'2557})
                  =
                    Obj.magic
                      v_comp'2547
                  in
                  Obj.magic
                    v_X'2557
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            Int.equal
                            v_ty'2549
                            v_nnCompType_ReLU)
                     then
                       let v_'2560 =
                         Obj.magic
                           v_tensorOpExn__z___d_dx_l_ReLU_x__
                           v_s_max'2544
                           (let
                              CRec'6294 ({lout_bufs = v_X'2558})
                            =
                              Obj.magic
                                v_comp'2547
                            in
                            Obj.magic
                              v_X'2558)
                           v_output_grads'2546
                           (let
                              CRec'6294 ({lin_grads = v_X'2559})
                            =
                              Obj.magic
                                v_comp'2547
                            in
                            Obj.magic
                              v_X'2559)
                       in
                       let
                         CRec'6294 ({lin_grads = v_X'2561})
                       =
                         Obj.magic
                           v_comp'2547
                       in
                       Obj.magic
                         v_X'2561
                     else
                       Obj.magic
                         (if
                            Obj.magic
                              (Obj.magic
                                 Int.equal
                                 v_ty'2549
                                 v_nnCompType_SoftMax)
                          then
                            let v_'2564 =
                              Obj.magic
                                v_tensorOpExn__z___d_dx_l_SoftMax_x___
                                v_s_max'2544
                                (let
                                   CRec'6294 ({lout_bufs = v_X'2562})
                                 =
                                   Obj.magic
                                     v_comp'2547
                                 in
                                 Obj.magic
                                   v_X'2562)
                                v_output_grads'2546
                                (let
                                   CRec'6294 ({lin_grads = v_X'2563})
                                 =
                                   Obj.magic
                                     v_comp'2547
                                 in
                                 Obj.magic
                                   v_X'2563)
                            in
                            let
                              CRec'6294 ({lin_grads = v_X'2565})
                            =
                              Obj.magic
                                v_comp'2547
                            in
                            Obj.magic
                              v_X'2565
                          else
                            Obj.magic
                              (let
                                 CRec'6294 ({lin_grads = v_X'2566})
                               =
                                 Obj.magic
                                   v_comp'2547
                               in
                               Obj.magic
                                 v_X'2566)));;
let v_nnComponent_TEMP_SetGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2568 ->
      fun v_comp'2569 ->
        let v_ty'2571 =
          let
            CRec'6294 ({lty = v_X'2570})
          =
            Obj.magic
              v_comp'2569
          in
          Obj.magic
            v_X'2570
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2571
               v_nnCompType_FullyConnected)
        then
          let v_'2573 =
            Obj.magic
              v_tensorOpExn__Z___scalar_c_
              v_scalar'2568
              (let
                 CRec'6294 ({lw_grads = v_X'2572})
               =
                 Obj.magic
                   v_comp'2569
               in
               Obj.magic
                 v_X'2572)
          in
          Obj.magic
            v_tensorOpExn__Z___scalar_c_
            v_scalar'2568
            (let
               CRec'6294 ({lb_grads = v_X'2574})
             =
               Obj.magic
                 v_comp'2569
             in
             Obj.magic
               v_X'2574)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_ReduceGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_comp'2576 ->
      let v_ty'2578 =
        let
          CRec'6294 ({lty = v_X'2577})
        =
          Obj.magic
            v_comp'2576
        in
        Obj.magic
          v_X'2577
      in
      if
        Obj.magic
          (Obj.magic
             Int.equal
             v_ty'2578
             v_nnCompType_FullyConnected)
      then
        let v_'2580 =
          Obj.magic
            v_tensorOpExn__Dim1Reduce_z__dst___z_0__op_____
            (let
               CRec'6294 ({lw_grads = v_X'2579})
             =
               Obj.magic
                 v_comp'2576
             in
             Obj.magic
               v_X'2579)
        in
        Obj.magic
          v_tensorOpExn__Dim1Reduce_z__dst___z_0__op_____
          (let
             CRec'6294 ({lb_grads = v_X'2581})
           =
             Obj.magic
               v_comp'2576
           in
           Obj.magic
             v_X'2581)
      else
        Obj.magic
          ();;
let v_nnComponent_TEMP_ScaleGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2583 ->
      fun v_comp'2584 ->
        let v_ty'2586 =
          let
            CRec'6294 ({lty = v_X'2585})
          =
            Obj.magic
              v_comp'2584
          in
          Obj.magic
            v_X'2585
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2586
               v_nnCompType_FullyConnected)
        then
          let v_'2588 =
            Obj.magic
              v_tensorOpExn__z____scalar_c_
              1
              v_scalar'2583
              (let
                 CRec'6294 ({lw_grads = v_X'2587})
               =
                 Obj.magic
                   v_comp'2584
               in
               Obj.magic
                 v_X'2587)
          in
          Obj.magic
            v_tensorOpExn__z____scalar_c_
            1
            v_scalar'2583
            (let
               CRec'6294 ({lb_grads = v_X'2589})
             =
               Obj.magic
                 v_comp'2584
             in
             Obj.magic
               v_X'2589)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_ApplyGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2591 ->
      fun v_comp'2592 ->
        let v_ty'2594 =
          let
            CRec'6294 ({lty = v_X'2593})
          =
            Obj.magic
              v_comp'2592
          in
          Obj.magic
            v_X'2593
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2594
               v_nnCompType_FullyConnected)
        then
          let v_'2597 =
            Obj.magic
              v_tensorOpExn__Z____x___scalar_c_
              0
              (let
                 CRec'6294 ({lw_grads = v_X'2595})
               =
                 Obj.magic
                   v_comp'2592
               in
               Obj.magic
                 v_X'2595)
              v_scalar'2591
              (let
                 CRec'6294 ({lw = v_X'2596})
               =
                 Obj.magic
                   v_comp'2592
               in
               Obj.magic
                 v_X'2596)
          in
          Obj.magic
            v_tensorOpExn__Z____x___scalar_c_
            0
            (let
               CRec'6294 ({lb_grads = v_X'2598})
             =
               Obj.magic
                 v_comp'2592
             in
             Obj.magic
               v_X'2598)
            v_scalar'2591
            (let
               CRec'6294 ({lb = v_X'2599})
             =
               Obj.magic
                 v_comp'2592
             in
             Obj.magic
               v_X'2599)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_L2Regularize =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2601 ->
      fun v_comp'2602 ->
        let v_ty'2604 =
          let
            CRec'6294 ({lty = v_X'2603})
          =
            Obj.magic
              v_comp'2602
          in
          Obj.magic
            v_X'2603
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2604
               v_nnCompType_FullyConnected)
        then
          let v_'2607 =
            Obj.magic
              v_tensorOpExn__z____X___scalar_c_
              0
              (let
                 CRec'6294 ({lw = v_X'2605})
               =
                 Obj.magic
                   v_comp'2602
               in
               Obj.magic
                 v_X'2605)
              v_scalar'2601
              (let
                 CRec'6294 ({lw_grads = v_X'2606})
               =
                 Obj.magic
                   v_comp'2602
               in
               Obj.magic
                 v_X'2606)
          in
          Obj.magic
            v_tensorOpExn__z____X___scalar_c_
            0
            (let
               CRec'6294 ({lb = v_X'2608})
             =
               Obj.magic
                 v_comp'2602
             in
             Obj.magic
               v_X'2608)
            v_scalar'2601
            (let
               CRec'6294 ({lb_grads = v_X'2609})
             =
               Obj.magic
                 v_comp'2602
             in
             Obj.magic
               v_X'2609)
        else
          Obj.magic
            ();;
let v_nnComponentZeroGrad =
  fun v_nnCompType_FullyConnected ->
    fun v_comp'2611 ->
      Obj.magic
        v_nnComponent_TEMP_SetGradients
        v_nnCompType_FullyConnected
        0.
        v_comp'2611;;
let v_t'5232 =
  fun v_mu'2616 ->
    fun v_sigma'2617 ->
      fun v_'2618 ->
        Obj.magic
          v_gaussianSample
          v_mu'2616
          v_sigma'2617;;
let v_t'5233 =
  fun v_mu'2616 ->
    fun v_sigma'2617 ->
      fun v_'2620 ->
        Obj.magic
          v_gaussianSample
          v_mu'2616
          v_sigma'2617;;
let v_nnFullyConnected =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_max_batchsize'2613 ->
              fun v_indim'2614 ->
                fun v_outdim'2615 ->
                  let v_mu'2616 =
                    0.
                  in
                  let v_sigma'2617 =
                    0.001
                  in
                  let v_w'2619 =
                    Obj.magic
                      Boot.Intrinsics.T.create_float_packed
                      (Obj.magic
                         Boot.Intrinsics.Mseq.Helpers.of_array
                         [| (Obj.magic
                             v_outdim'2615);
                           (Obj.magic
                             v_indim'2614) |])
                      (Obj.magic
                         v_t'5232
                         v_mu'2616
                         v_sigma'2617)
                  in
                  let v_b'2621 =
                    Obj.magic
                      Boot.Intrinsics.T.create_float_packed
                      (Obj.magic
                         Boot.Intrinsics.Mseq.Helpers.of_array
                         [| (Obj.magic
                             v_outdim'2615) |])
                      (Obj.magic
                         v_t'5233
                         v_mu'2616
                         v_sigma'2617)
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
                           v_indim'2614) |])
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_outdim'2615) |])
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_w'2619);
                         (Obj.magic
                           v_b'2621) |])
                    v_max_batchsize'2613
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
            fun v_max_batchsize'2623 ->
              fun v_dim'2624 ->
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
                         v_dim'2624) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (Obj.magic
                         v_dim'2624) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [|  |])
                  v_max_batchsize'2623
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
let v_t'5234 =
  fun v_'2632 ->
    0.;;
let v_t'5235 =
  fun v_'2633 ->
    0.;;
let v_t'5236 =
  fun v_'2634 ->
    0.;;
let v_t'5237 =
  fun v_'2635 ->
    0.;;
let v_t'5238 =
  fun v_'2636 ->
    0.;;
let v_t'5239 =
  fun v_'2637 ->
    0.;;
let v_nnLossFunctionMakeExn =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnLossfnType_CrossEntropyLoss ->
        fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
          fun v_indim'2629 ->
            fun v_max_batchsize'2630 ->
              fun v_name'2631 ->
                if
                  Obj.magic
                    (Obj.magic
                       v_eqString
                       v_eqSeq
                       v_name'2631
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
                  CRec'6295 { lty =
                      (Obj.repr
                        v_nnLossfnType_CrossEntropyLoss);
                    lin_grads =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.cons
                              v_max_batchsize'2630
                              v_indim'2629)
                           v_t'5234));
                    lout_bufs =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.Helpers.of_array
                              [| (Obj.magic
                                  v_max_batchsize'2630) |])
                           v_t'5235));
                    lsoftmax_bufs =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.Helpers.of_array
                              [| (1) |])
                           v_t'5236)) }
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            v_eqString
                            v_eqSeq
                            v_name'2631
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
                       CRec'6295 { lty =
                           (Obj.repr
                             v_nnLossfnType_SoftMaxCrossEntropyLoss);
                         lin_grads =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.cons
                                   v_max_batchsize'2630
                                   v_indim'2629)
                                v_t'5237));
                         lout_bufs =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (Obj.magic
                                       v_max_batchsize'2630) |])
                                v_t'5238));
                         lsoftmax_bufs =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (Obj.magic
                                       v_max_batchsize'2630) |])
                                v_t'5239)) }
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
                                      v_name'2631);
                                    (Obj.magic
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (34) |])) |]))));;
let v_nnLossFunctionApplyExn =
  fun v_nnLossfnType_CrossEntropyLoss ->
    fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
      fun v_s_max'2639 ->
        fun v_inputs'2640 ->
          fun v_lossfn'2641 ->
            let v_ty'2643 =
              let
                CRec'6295 ({lty = v_X'2642})
              =
                Obj.magic
                  v_lossfn'2641
              in
              Obj.magic
                v_X'2642
            in
            if
              Obj.magic
                (Obj.magic
                   Int.equal
                   v_ty'2643
                   v_nnLossfnType_CrossEntropyLoss)
            then
              v_inputs'2640
            else
              Obj.magic
                (if
                   Obj.magic
                     (Obj.magic
                        Int.equal
                        v_ty'2643
                        v_nnLossfnType_SoftMaxCrossEntropyLoss)
                 then
                   let v_'2646 =
                     Obj.magic
                       v_tensorOpExn__z___SoftMax_x_
                       v_s_max'2639
                       v_inputs'2640
                       (let
                          CRec'6295 ({lsoftmax_bufs = v_X'2644})
                        =
                          Obj.magic
                            v_lossfn'2641
                        in
                        Obj.magic
                          v_X'2644)
                       (let
                          CRec'6295 ({lin_grads = v_X'2645})
                        =
                          Obj.magic
                            v_lossfn'2641
                        in
                        Obj.magic
                          v_X'2645)
                   in
                   let
                     CRec'6295 ({lin_grads = v_X'2647})
                   =
                     Obj.magic
                       v_lossfn'2641
                   in
                   Obj.magic
                     v_X'2647
                 else
                   Obj.magic
                     v_inputs'2640);;
let v_nnLossFunctionBackpropExn =
  fun v_nnLossfnType_CrossEntropyLoss ->
    fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
      fun v_s_max'2649 ->
        fun v_inputs'2650 ->
          fun v_expecteds'2651 ->
            fun v_lossfn'2652 ->
              let v_ty'2654 =
                let
                  CRec'6295 ({lty = v_X'2653})
                =
                  Obj.magic
                    v_lossfn'2652
                in
                Obj.magic
                  v_X'2653
              in
              if
                Obj.magic
                  (Obj.magic
                     Int.equal
                     v_ty'2654
                     v_nnLossfnType_CrossEntropyLoss)
              then
                let v_'2656 =
                  Obj.magic
                    v_tensorOpExn__z___1_Hot_y____scalar__1__x_T___1_Hot_y___
                    v_s_max'2649
                    v_expecteds'2651
                    v_inputs'2650
                    (let
                       CRec'6295 ({lin_grads = v_X'2655})
                     =
                       Obj.magic
                         v_lossfn'2652
                     in
                     Obj.magic
                       v_X'2655)
                in
                let
                  CRec'6295 ({lin_grads = v_X'2657})
                =
                  Obj.magic
                    v_lossfn'2652
                in
                Obj.magic
                  v_X'2657
              else
                Obj.magic
                  (if
                     Obj.magic
                       (Obj.magic
                          Int.equal
                          v_ty'2654
                          v_nnLossfnType_SoftMaxCrossEntropyLoss)
                   then
                     let v_'2659 =
                       Obj.magic
                         v_tensorOpExp__z____1_Hot_y____scalar_c_
                         v_s_max'2649
                         v_expecteds'2651
                         (Obj.magic
                            Float.neg
                            1.)
                         (let
                            CRec'6295 ({lin_grads = v_X'2658})
                          =
                            Obj.magic
                              v_lossfn'2652
                          in
                          Obj.magic
                            v_X'2658)
                     in
                     let
                       CRec'6295 ({lin_grads = v_X'2660})
                     =
                       Obj.magic
                         v_lossfn'2652
                     in
                     Obj.magic
                       v_X'2660
                   else
                     Obj.magic
                       (let
                          CRec'6295 ({lin_grads = v_X'2661})
                        =
                          Obj.magic
                            v_lossfn'2652
                        in
                        Obj.magic
                          v_X'2661));;
let v_nnSoftMaxCrossEntropyLoss =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnLossfnType_CrossEntropyLoss ->
        fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
          fun v_max_batchsize'2663 ->
            fun v_dim'2664 ->
              Obj.magic
                v_nnLossFunctionMakeExn
                v_eqSeq
                v_join
                v_nnLossfnType_CrossEntropyLoss
                v_nnLossfnType_SoftMaxCrossEntropyLoss
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_dim'2664) |])
                v_max_batchsize'2663
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
  fun v_components'2669 ->
    fun v_lossfn'2670 ->
      CRec'6296 { llossfn =
          (Obj.repr
            v_lossfn'2670);
        lcomponents =
          (Obj.repr
            v_components'2669) };;
let v_t'5240 =
  fun v_nnCompType_FullyConnected ->
    fun v_x'2673 ->
      fun v_comp'2674 ->
        let v_'2675 =
          Obj.magic
            v_nnComponentZeroGrad
            v_nnCompType_FullyConnected
            v_comp'2674
        in
        0;;
let v_nnZeroGrad =
  fun v_nnCompType_FullyConnected ->
    fun v_network'2672 ->
      let v_'2677 =
        Obj.magic
          Boot.Intrinsics.Mseq.Helpers.fold_left
          (Obj.magic
             v_t'5240
             v_nnCompType_FullyConnected)
          0
          (let
             CRec'6296 ({lcomponents = v_X'2676})
           =
             Obj.magic
               v_network'2672
           in
           Obj.magic
             v_X'2676)
      in
      ();;
let v_t'5241 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2681 ->
          fun v_prevouts'2682 ->
            fun v_comp'2683 ->
              Obj.magic
                v_nnComponentApplyExn
                v_nnCompType_FullyConnected
                v_nnCompType_ReLU
                v_nnCompType_SoftMax
                v_s_max'2681
                v_prevouts'2682
                v_comp'2683;;
let v_nnEvalExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_network'2679 ->
              fun v_inputs'2680 ->
                let v_s_max'2681 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.get
                    (Obj.magic
                       Boot.Intrinsics.T.shape
                       v_inputs'2680)
                    0
                in
                let v_comp_out'2685 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.Helpers.fold_left
                    (Obj.magic
                       v_t'5241
                       v_nnCompType_FullyConnected
                       v_nnCompType_ReLU
                       v_nnCompType_SoftMax
                       v_s_max'2681)
                    v_inputs'2680
                    (let
                       CRec'6296 ({lcomponents = v_X'2684})
                     =
                       Obj.magic
                         v_network'2679
                     in
                     Obj.magic
                       v_X'2684)
                in
                Obj.magic
                  v_nnLossFunctionApplyExn
                  v_nnLossfnType_CrossEntropyLoss
                  v_nnLossfnType_SoftMaxCrossEntropyLoss
                  v_s_max'2681
                  v_comp_out'2685
                  (let
                     CRec'6296 ({llossfn = v_X'2686})
                   =
                     Obj.magic
                       v_network'2679
                   in
                   Obj.magic
                     v_X'2686);;
let v_t'5242 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_network'2688 ->
          fun v_s_max'2691 ->
            fun v_n_components'2698 ->
              fun v_out_grads'2708 ->
                fun v_i'2709 ->
                  let v_idx'2710 =
                    Obj.magic
                      Int.sub
                      v_n_components'2698
                      (Obj.magic
                         Int.add
                         v_i'2709
                         2)
                  in
                  let v_previdx'2711 =
                    Obj.magic
                      Int.sub
                      v_idx'2710
                      1
                  in
                  let v_comp'2713 =
                    Obj.magic
                      Boot.Intrinsics.Mseq.get
                      (let
                         CRec'6296 ({lcomponents = v_X'2712})
                       =
                         Obj.magic
                           v_network'2688
                       in
                       Obj.magic
                         v_X'2712)
                      v_idx'2710
                  in
                  let v_in_bufs'2715 =
                    Obj.magic
                      v_nnComponentOutBufs
                      (Obj.magic
                         Boot.Intrinsics.Mseq.get
                         (let
                            CRec'6296 ({lcomponents = v_X'2714})
                          =
                            Obj.magic
                              v_network'2688
                          in
                          Obj.magic
                            v_X'2714)
                         v_previdx'2711)
                  in
                  Obj.magic
                    v_nnComponentBackpropExn
                    v_nnCompType_FullyConnected
                    v_nnCompType_ReLU
                    v_nnCompType_SoftMax
                    v_s_max'2691
                    v_in_bufs'2715
                    v_out_grads'2708
                    v_comp'2713;;
let v_nnBackpropExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_network'2688 ->
              fun v_batch'2689 ->
                let v_s_max'2691 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.get
                    (Obj.magic
                       Boot.Intrinsics.T.shape
                       (let
                          CRec'6297 ({linputs = v_X'2690})
                        =
                          Obj.magic
                            v_batch'2689
                        in
                        Obj.magic
                          v_X'2690))
                    0
                in
                let v_outputs'2693 =
                  Obj.magic
                    v_nnEvalExn
                    v_nnCompType_FullyConnected
                    v_nnCompType_ReLU
                    v_nnCompType_SoftMax
                    v_nnLossfnType_CrossEntropyLoss
                    v_nnLossfnType_SoftMaxCrossEntropyLoss
                    v_network'2688
                    (let
                       CRec'6297 ({linputs = v_X'2692})
                     =
                       Obj.magic
                         v_batch'2689
                     in
                     Obj.magic
                       v_X'2692)
                in
                let v_lossgrads'2696 =
                  Obj.magic
                    v_nnLossFunctionBackpropExn
                    v_nnLossfnType_CrossEntropyLoss
                    v_nnLossfnType_SoftMaxCrossEntropyLoss
                    v_s_max'2691
                    v_outputs'2693
                    (let
                       CRec'6297 ({lcorrect_linear_outidxs = v_X'2694})
                     =
                       Obj.magic
                         v_batch'2689
                     in
                     Obj.magic
                       v_X'2694)
                    (let
                       CRec'6296 ({llossfn = v_X'2695})
                     =
                       Obj.magic
                         v_network'2688
                     in
                     Obj.magic
                       v_X'2695)
                in
                let v_n_components'2698 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.length
                    (let
                       CRec'6296 ({lcomponents = v_X'2697})
                     =
                       Obj.magic
                         v_network'2688
                     in
                     Obj.magic
                       v_X'2697)
                in
                if
                  Obj.magic
                    (Obj.magic
                       Int.equal
                       v_n_components'2698
                       0)
                then
                  ()
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            Int.equal
                            v_n_components'2698
                            1)
                     then
                       let v_lastcomp'2700 =
                         Obj.magic
                           Boot.Intrinsics.Mseq.get
                           (let
                              CRec'6296 ({lcomponents = v_X'2699})
                            =
                              Obj.magic
                                v_network'2688
                            in
                            Obj.magic
                              v_X'2699)
                           0
                       in
                       let v_'2702 =
                         Obj.magic
                           v_nnComponentBackpropExn
                           v_nnCompType_FullyConnected
                           v_nnCompType_ReLU
                           v_nnCompType_SoftMax
                           v_s_max'2691
                           (let
                              CRec'6297 ({linputs = v_X'2701})
                            =
                              Obj.magic
                                v_batch'2689
                            in
                            Obj.magic
                              v_X'2701)
                           v_lossgrads'2696
                           v_lastcomp'2700
                       in
                       ()
                     else
                       Obj.magic
                         (let v_lastcomp'2704 =
                            Obj.magic
                              Boot.Intrinsics.Mseq.get
                              (let
                                 CRec'6296 ({lcomponents = v_X'2703})
                               =
                                 Obj.magic
                                   v_network'2688
                               in
                               Obj.magic
                                 v_X'2703)
                              (Obj.magic
                                 Int.sub
                                 v_n_components'2698
                                 1)
                          in
                          let v_lastcomp_in_bufs'2706 =
                            Obj.magic
                              v_nnComponentOutBufs
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.get
                                 (let
                                    CRec'6296 ({lcomponents = v_X'2705})
                                  =
                                    Obj.magic
                                      v_network'2688
                                  in
                                  Obj.magic
                                    v_X'2705)
                                 (Obj.magic
                                    Int.sub
                                    v_n_components'2698
                                    2))
                          in
                          let v_lastcomp_in_grads'2707 =
                            Obj.magic
                              v_nnComponentBackpropExn
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_s_max'2691
                              v_lastcomp_in_bufs'2706
                              v_lossgrads'2696
                              v_lastcomp'2704
                          in
                          let v_firstcomp_out_grads'2716 =
                            let rec v_loop'6266 =
                                fun v_acc'6267 ->
                                  fun v_i'6268 ->
                                    if
                                      Obj.magic
                                        (Obj.magic
                                           ((<) : int -> int -> bool)
                                           v_i'6268
                                           (Obj.magic
                                              Int.sub
                                              v_n_components'2698
                                              2))
                                    then
                                      let v_t'6269 =
                                        Obj.magic
                                          v_t'5242
                                          v_nnCompType_FullyConnected
                                          v_nnCompType_ReLU
                                          v_nnCompType_SoftMax
                                          v_network'2688
                                          v_s_max'2691
                                          v_n_components'2698
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
                              v_lastcomp_in_grads'2707
                              0
                          in
                          let v_firstcomp'2718 =
                            Obj.magic
                              Boot.Intrinsics.Mseq.get
                              (let
                                 CRec'6296 ({lcomponents = v_X'2717})
                               =
                                 Obj.magic
                                   v_network'2688
                               in
                               Obj.magic
                                 v_X'2717)
                              0
                          in
                          let v_firstcomp_in_bufs'2720 =
                            let
                              CRec'6297 ({linputs = v_X'2719})
                            =
                              Obj.magic
                                v_batch'2689
                            in
                            Obj.magic
                              v_X'2719
                          in
                          let v_'2721 =
                            Obj.magic
                              v_nnComponentBackpropExn
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_s_max'2691
                              v_firstcomp_in_bufs'2720
                              v_firstcomp_out_grads'2716
                              v_firstcomp'2718
                          in
                          ()));;
let v_t'5243 =
  fun v_nnCompType_FullyConnected ->
    fun v_batchsize_regularizer'2731 ->
      fun v_x'2732 ->
        fun v_comp'2733 ->
          let v_'2734 =
            Obj.magic
              v_nnComponent_TEMP_ReduceGradients
              v_nnCompType_FullyConnected
              v_comp'2733
          in
          let v_'2735 =
            Obj.magic
              v_nnComponent_TEMP_ScaleGradients
              v_nnCompType_FullyConnected
              v_batchsize_regularizer'2731
              v_comp'2733
          in
          0;;
let v_t'5244 =
  fun v_nnCompType_FullyConnected ->
    fun v_lambda'2725 ->
      fun v_x'2738 ->
        fun v_comp'2739 ->
          let v_'2740 =
            Obj.magic
              v_nnComponent_TEMP_L2Regularize
              v_nnCompType_FullyConnected
              (Obj.magic
                 Float.mul
                 2.
                 v_lambda'2725)
              v_comp'2739
          in
          0;;
let v_t'5245 =
  fun v_nnCompType_FullyConnected ->
    fun v_alpha'2724 ->
      fun v_x'2744 ->
        fun v_comp'2745 ->
          let v_'2746 =
            Obj.magic
              v_nnComponent_TEMP_ApplyGradients
              v_nnCompType_FullyConnected
              (Obj.magic
                 Float.neg
                 v_alpha'2724)
              v_comp'2745
          in
          0;;
let v_nnGradientDescentExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_network'2723 ->
              fun v_alpha'2724 ->
                fun v_lambda'2725 ->
                  fun v_batch'2726 ->
                    let v_'2727 =
                      Obj.magic
                        v_nnZeroGrad
                        v_nnCompType_FullyConnected
                        v_network'2723
                    in
                    let v_batchsize'2729 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.get
                        (Obj.magic
                           Boot.Intrinsics.T.shape
                           (let
                              CRec'6297 ({linputs = v_X'2728})
                            =
                              Obj.magic
                                v_batch'2726
                            in
                            Obj.magic
                              v_X'2728))
                        0
                    in
                    let v_'2730 =
                      Obj.magic
                        v_nnBackpropExn
                        v_nnCompType_FullyConnected
                        v_nnCompType_ReLU
                        v_nnCompType_SoftMax
                        v_nnLossfnType_CrossEntropyLoss
                        v_nnLossfnType_SoftMaxCrossEntropyLoss
                        v_network'2723
                        v_batch'2726
                    in
                    let v_batchsize_regularizer'2731 =
                      Obj.magic
                        Float.div
                        1.
                        (Obj.magic
                           float_of_int
                           v_batchsize'2729)
                    in
                    let v_'2737 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.Helpers.fold_left
                        (Obj.magic
                           v_t'5243
                           v_nnCompType_FullyConnected
                           v_batchsize_regularizer'2731)
                        0
                        (let
                           CRec'6296 ({lcomponents = v_X'2736})
                         =
                           Obj.magic
                             v_network'2723
                         in
                         Obj.magic
                           v_X'2736)
                    in
                    let v_'2743 =
                      if
                        Obj.magic
                          (Obj.magic
                             Float.equal
                             v_lambda'2725
                             0.)
                      then
                        ()
                      else
                        Obj.magic
                          (let v_'2742 =
                             Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.fold_left
                               (Obj.magic
                                  v_t'5244
                                  v_nnCompType_FullyConnected
                                  v_lambda'2725)
                               0
                               (let
                                  CRec'6296 ({lcomponents = v_X'2741})
                                =
                                  Obj.magic
                                    v_network'2723
                                in
                                Obj.magic
                                  v_X'2741)
                           in
                           ())
                    in
                    let v_'2748 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.Helpers.fold_left
                        (Obj.magic
                           v_t'5245
                           v_nnCompType_FullyConnected
                           v_alpha'2724)
                        0
                        (let
                           CRec'6296 ({lcomponents = v_X'2747})
                         =
                           Obj.magic
                             v_network'2723
                         in
                         Obj.magic
                           v_X'2747)
                    in
                    ();;
let v_t'5246 =
  fun v_acc'2751 ->
    fun v_e'2752 ->
      Obj.magic
        Int.mul
        v_acc'2751
        v_e'2752;;
let v_tensorSize =
  fun v_t'2750 ->
    Obj.magic
      Boot.Intrinsics.Mseq.Helpers.fold_left
      v_t'5246
      1
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2750);;
let v_t'5247 =
  fun v_t'2758 ->
    fun v_s_offset'2761 ->
      fun v_cand_idx'2762 ->
        fun v_idx'2763 ->
          if
            Obj.magic
              (Obj.magic
                 ((>) : float -> float -> bool)
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_t'2758
                    (Obj.magic
                       Int.add
                       v_idx'2763
                       v_s_offset'2761))
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_t'2758
                    (Obj.magic
                       Int.add
                       v_cand_idx'2762
                       v_s_offset'2761)))
          then
            v_idx'2763
          else
            Obj.magic
              v_cand_idx'2762;;
let v_tensorLinearMaxIdx =
  fun v_s_idx'2757 ->
    fun v_t'2758 ->
      let v_s'2759 =
        Obj.magic
          Boot.Intrinsics.Mseq.get
          (Obj.magic
             Boot.Intrinsics.T.shape
             v_t'2758)
          0
      in
      let v_size'2760 =
        Obj.magic
          Int.div
          (Obj.magic
             v_tensorSize
             v_t'2758)
          v_s'2759
      in
      let v_s_offset'2761 =
        Obj.magic
          Int.mul
          v_s_idx'2757
          v_size'2760
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
                        Int.sub
                        v_size'2760
                        1))
              then
                let v_t'6273 =
                  Obj.magic
                    v_t'5247
                    v_t'2758
                    v_s_offset'2761
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
        (Obj.magic
           Int.sub
           v_size'2760
           1)
        0;;
let v_t'5249 =
  fun v_batch'2771 ->
    fun v_outputs'2775 ->
      fun v_b_acc'2776 ->
        fun v_b_idx'2777 ->
          if
            Obj.magic
              (Obj.magic
                 Int.equal
                 (Obj.magic
                    v_tensorLinearMaxIdx
                    v_b_idx'2777
                    v_outputs'2775)
                 (Obj.magic
                    Boot.Intrinsics.T.get_exn
                    (let
                       CRec'6297 ({lcorrect_linear_outidxs = v_X'2778})
                     =
                       Obj.magic
                         v_batch'2771
                     in
                     Obj.magic
                       v_X'2778)
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_b_idx'2777) |])))
          then
            Obj.magic
              Int.add
              v_b_acc'2776
              1
          else
            Obj.magic
              v_b_acc'2776;;
let v_t'5248 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_printStatus'2754 ->
              fun v_network'2755 ->
                fun v_batches'2756 ->
                  fun v_acc'2765 ->
                    fun v_i'2766 ->
                      let v_'2770 =
                        if
                          Obj.magic
                            v_printStatus'2754
                        then
                          let v_'2767 =
                            Obj.magic
                              Boot.Intrinsics.IO.print
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (13) |])
                          in
                          let v_'2768 =
                            Obj.magic
                              Boot.Intrinsics.IO.print
                              (Obj.magic
                                 Boot.Intrinsics.FloatConversion.float2string
                                 (Obj.magic
                                    float_of_int
                                    (Obj.magic
                                       Int.add
                                       v_i'2766
                                       1)))
                          in
                          let v_'2769 =
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
                                     v_batches'2756)))
                        else
                          Obj.magic
                            ()
                      in
                      let v_batch'2771 =
                        Obj.magic
                          Boot.Intrinsics.Mseq.get
                          v_batches'2756
                          v_i'2766
                      in
                      let v_batchsize'2773 =
                        Obj.magic
                          Boot.Intrinsics.Mseq.get
                          (Obj.magic
                             Boot.Intrinsics.T.shape
                             (let
                                CRec'6297 ({linputs = v_X'2772})
                              =
                                Obj.magic
                                  v_batch'2771
                              in
                              Obj.magic
                                v_X'2772))
                          0
                      in
                      let v_outputs'2775 =
                        Obj.magic
                          v_nnEvalExn
                          v_nnCompType_FullyConnected
                          v_nnCompType_ReLU
                          v_nnCompType_SoftMax
                          v_nnLossfnType_CrossEntropyLoss
                          v_nnLossfnType_SoftMaxCrossEntropyLoss
                          v_network'2755
                          (let
                             CRec'6297 ({linputs = v_X'2774})
                           =
                             Obj.magic
                               v_batch'2771
                           in
                           Obj.magic
                             v_X'2774)
                      in
                      let v_batch_accuracy'2779 =
                        let rec v_loop'6274 =
                            fun v_acc'6275 ->
                              fun v_i'6276 ->
                                if
                                  Obj.magic
                                    (Obj.magic
                                       ((<) : int -> int -> bool)
                                       v_i'6276
                                       v_batchsize'2773)
                                then
                                  let v_t'6277 =
                                    Obj.magic
                                      v_t'5249
                                      v_batch'2771
                                      v_outputs'2775
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
                          0
                          0
                      in
                      Obj.magic
                        Int.add
                        v_acc'2765
                        v_batch_accuracy'2779;;
let v_nnAccuracyDiscrete =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_printStatus'2754 ->
              fun v_network'2755 ->
                fun v_batches'2756 ->
                  let v_correct_guesses'2780 =
                    let rec v_loop'6278 =
                        fun v_acc'6279 ->
                          fun v_i'6280 ->
                            if
                              Obj.magic
                                (Obj.magic
                                   ((<) : int -> int -> bool)
                                   v_i'6280
                                   (Obj.magic
                                      Boot.Intrinsics.Mseq.length
                                      v_batches'2756))
                            then
                              let v_t'6281 =
                                Obj.magic
                                  v_t'5248
                                  v_nnCompType_FullyConnected
                                  v_nnCompType_ReLU
                                  v_nnCompType_SoftMax
                                  v_nnLossfnType_CrossEntropyLoss
                                  v_nnLossfnType_SoftMaxCrossEntropyLoss
                                  v_printStatus'2754
                                  v_network'2755
                                  v_batches'2756
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
                      0
                      0
                  in
                  let v_'2781 =
                    if
                      Obj.magic
                        v_printStatus'2754
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
                  v_correct_guesses'2780;;
let v_t'5250 =
  fun v_acc'2787 ->
    fun v_batch'2788 ->
      Obj.magic
        Int.add
        v_acc'2787
        (Obj.magic
           Boot.Intrinsics.Mseq.get
           (Obj.magic
              Boot.Intrinsics.T.shape
              (let
                 CRec'6297 ({linputs = v_X'2789})
               =
                 Obj.magic
                   v_batch'2788
               in
               Obj.magic
                 v_X'2789))
           0);;
let v_nnAccuracyProportion =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_printStatus'2783 ->
              fun v_network'2784 ->
                fun v_batches'2785 ->
                  let v_correct_guesses'2786 =
                    Obj.magic
                      v_nnAccuracyDiscrete
                      v_nnCompType_FullyConnected
                      v_nnCompType_ReLU
                      v_nnCompType_SoftMax
                      v_nnLossfnType_CrossEntropyLoss
                      v_nnLossfnType_SoftMaxCrossEntropyLoss
                      v_printStatus'2783
                      v_network'2784
                      v_batches'2785
                  in
                  let v_datalength'2790 =
                    Obj.magic
                      Boot.Intrinsics.Mseq.Helpers.fold_left
                      v_t'5250
                      0
                      v_batches'2785
                  in
                  Obj.magic
                    Float.div
                    (Obj.magic
                       float_of_int
                       v_correct_guesses'2786)
                    (Obj.magic
                       float_of_int
                       v_datalength'2790);;
let v_nnVanillaSGDParameters =
  CRec'6298 { lepochs =
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
let rec v_t'5251 =
    fun v_dataset'2821 ->
      fun v_start_idx'2828 ->
        fun v_idx'2836 ->
          let v_b_idx'2837 =
            Obj.magic
              Int.add
              v_start_idx'2828
              (Obj.magic
                 Boot.Intrinsics.Mseq.get
                 v_idx'2836
                 0)
          in
          let v_d_idx'2838 =
            Obj.magic
              Boot.Intrinsics.Mseq.tail
              v_idx'2836
          in
          let v_dp'2839 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_dataset'2821
              v_b_idx'2837
          in
          Obj.magic
            Boot.Intrinsics.T.get_exn
            (let
               CRec'6299 ({linput = v_X'2840})
             =
               Obj.magic
                 v_dp'2839
             in
             Obj.magic
               v_X'2840)
            v_d_idx'2838
and v_t'5252 =
    fun v_dataset'2821 ->
      fun v_start_idx'2828 ->
        fun v_idx'2842 ->
          let v_b_idx'2843 =
            Obj.magic
              Int.add
              v_start_idx'2828
              (Obj.magic
                 Boot.Intrinsics.Mseq.get
                 v_idx'2842
                 0)
          in
          let v_dp'2844 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_dataset'2821
              v_b_idx'2843
          in
          let
            CRec'6299 ({lcorrect_linear_outidx = v_X'2845})
          =
            Obj.magic
              v_dp'2844
          in
          Obj.magic
            v_X'2845
and v_batchMakerH =
    fun v_join ->
      fun v_params'2794 ->
        fun v_dataset'2821 ->
          fun v_acc'2822 ->
            fun v_i'2823 ->
              let v_datalen'2824 =
                Obj.magic
                  Boot.Intrinsics.Mseq.length
                  v_dataset'2821
              in
              let v_'2827 =
                if
                  Obj.magic
                    (let
                       CRec'6298 ({lprintStatus = v_X'2825})
                     =
                       Obj.magic
                         v_params'2794
                     in
                     Obj.magic
                       v_X'2825)
                then
                  let v_'2826 =
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
                                      v_i'2823
                                      1)));
                              (Obj.magic
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (47) |]));
                              (Obj.magic
                                (Obj.magic
                                   v_int2string
                                   v_datalen'2824));
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
                     v_i'2823
                     v_datalen'2824)
              then
                v_acc'2822
              else
                Obj.magic
                  (let v_start_idx'2828 =
                     v_i'2823
                   in
                   let v_end_idx'2830 =
                     Obj.magic
                       Int.add
                       v_start_idx'2828
                       (let
                          CRec'6298 ({lbatchsize = v_X'2829})
                        =
                          Obj.magic
                            v_params'2794
                        in
                        Obj.magic
                          v_X'2829)
                   in
                   let v_end_idx'2831 =
                     if
                       Obj.magic
                         (Obj.magic
                            ((>=) : int -> int -> bool)
                            v_end_idx'2830
                            v_datalen'2824)
                     then
                       v_datalen'2824
                     else
                       Obj.magic
                         v_end_idx'2830
                   in
                   let v_bsize'2832 =
                     Obj.magic
                       Int.sub
                       v_end_idx'2831
                       v_start_idx'2828
                   in
                   let v__fst_dp'2833 =
                     Obj.magic
                       Boot.Intrinsics.Mseq.get
                       v_dataset'2821
                       0
                   in
                   let v_datashape'2835 =
                     Obj.magic
                       Boot.Intrinsics.T.shape
                       (let
                          CRec'6299 ({linput = v_X'2834})
                        =
                          Obj.magic
                            v__fst_dp'2833
                        in
                        Obj.magic
                          v_X'2834)
                   in
                   let v_db_inputs'2841 =
                     Obj.magic
                       Boot.Intrinsics.T.create_float_packed
                       (Obj.magic
                          Boot.Intrinsics.Mseq.cons
                          v_bsize'2832
                          v_datashape'2835)
                       (Obj.magic
                          v_t'5251
                          v_dataset'2821
                          v_start_idx'2828)
                   in
                   let v_db_outidxs'2846 =
                     Obj.magic
                       Boot.Intrinsics.T.create_int_packed
                       (Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.of_array
                          [| (Obj.magic
                              v_bsize'2832) |])
                       (Obj.magic
                          v_t'5252
                          v_dataset'2821
                          v_start_idx'2828)
                   in
                   let v_db'2847 =
                     CRec'6297 { linputs =
                         (Obj.repr
                           v_db_inputs'2841);
                       lcorrect_linear_outidxs =
                         (Obj.repr
                           v_db_outidxs'2846) }
                   in
                   Obj.magic
                     v_batchMakerH
                     v_join
                     v_params'2794
                     v_dataset'2821
                     (Obj.magic
                        Boot.Intrinsics.Mseq.snoc
                        v_acc'2822
                        v_db'2847)
                     (Obj.magic
                        Int.add
                        v_i'2823
                        (let
                           CRec'6298 ({lbatchsize = v_X'2848})
                         =
                           Obj.magic
                             v_params'2794
                         in
                         Obj.magic
                           v_X'2848)));;
let v_wrappedPrint =
  fun v_s'2855 ->
    Obj.magic
      Boot.Intrinsics.IO.print
      v_s'2855;;
let v_t'5254 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_params'2794 ->
              fun v_network'2795 ->
                fun v_rounds'2800 ->
                  fun v_training_batches'2849 ->
                    fun v_alpha'2873 ->
                      fun v_lambda'2875 ->
                        fun v_batch_idx'2889 ->
                          let v_'2894 =
                            if
                              Obj.magic
                                (let
                                   CRec'6298 ({lprintStatus = v_X'2890})
                                 =
                                   Obj.magic
                                     v_params'2794
                                 in
                                 Obj.magic
                                   v_X'2890)
                            then
                              let v_'2891 =
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
                              let v_'2892 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        (Obj.magic
                                           Int.add
                                           v_batch_idx'2889
                                           1)))
                              in
                              let v_'2893 =
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
                                      v_rounds'2800))
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
                            v_network'2795
                            v_alpha'2873
                            v_lambda'2875
                            (Obj.magic
                               Boot.Intrinsics.Mseq.get
                               v_training_batches'2849
                               v_batch_idx'2889);;
let v_t'5253 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_params'2794 ->
              fun v_network'2795 ->
                fun v_rounds'2800 ->
                  fun v_training_batches'2849 ->
                    fun v_validation_batches'2852 ->
                      fun v_acc'2869 ->
                        fun v_epoch_idx'2870 ->
                          let v_epoch'2871 =
                            Obj.magic
                              Int.add
                              v_epoch_idx'2870
                              1
                          in
                          let v_alpha'2873 =
                            let
                              CRec'6302 ({l0 = v_X'2872})
                            =
                              Obj.magic
                                v_acc'2869
                            in
                            Obj.magic
                              v_X'2872
                          in
                          let v_lambda'2875 =
                            let
                              CRec'6302 ({l1 = v_X'2874})
                            =
                              Obj.magic
                                v_acc'2869
                            in
                            Obj.magic
                              v_X'2874
                          in
                          let v_'2888 =
                            if
                              Obj.magic
                                (let
                                   CRec'6298 ({lprintStatus = v_X'2876})
                                 =
                                   Obj.magic
                                     v_params'2794
                                 in
                                 Obj.magic
                                   v_X'2876)
                            then
                              let v_'2877 =
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
                              let v_'2878 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        v_epoch'2871))
                              in
                              let v_'2879 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (47) |])
                              in
                              let v_'2881 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        (let
                                           CRec'6298 ({lepochs = v_X'2880})
                                         =
                                           Obj.magic
                                             v_params'2794
                                         in
                                         Obj.magic
                                           v_X'2880)))
                              in
                              let v_'2882 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (93);
                                       (10) |])
                              in
                              let v_'2883 =
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
                              let v_'2884 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     v_alpha'2873)
                              in
                              let v_'2885 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (93);
                                       (10) |])
                              in
                              let v_'2886 =
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
                              let v_'2887 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     v_lambda'2875)
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
                          let v_'2895 =
                            let rec v_loop'6282 =
                                fun v_acc'6283 ->
                                  fun v_i'6284 ->
                                    if
                                      Obj.magic
                                        (Obj.magic
                                           ((<) : int -> int -> bool)
                                           v_i'6284
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.length
                                              v_training_batches'2849))
                                    then
                                      let v_t'6285 =
                                        Obj.magic
                                          (fun nv_ ->
                                             Obj.magic
                                               v_t'5254
                                               v_nnCompType_FullyConnected
                                               v_nnCompType_ReLU
                                               v_nnCompType_SoftMax
                                               v_nnLossfnType_CrossEntropyLoss
                                               v_nnLossfnType_SoftMaxCrossEntropyLoss
                                               v_params'2794
                                               v_network'2795
                                               v_rounds'2800
                                               v_training_batches'2849
                                               v_alpha'2873
                                               v_lambda'2875)
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
                          let v_'2896 =
                            Obj.magic
                              v_wrappedPrint
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (10) |])
                          in
                          let v_'2905 =
                            if
                              Obj.magic
                                (let
                                   CRec'6298 ({levaluateBetweenEpochs = v_X'2897})
                                 =
                                   Obj.magic
                                     v_params'2794
                                 in
                                 Obj.magic
                                   v_X'2897)
                            then
                              let v_'2899 =
                                if
                                  Obj.magic
                                    (let
                                       CRec'6298 ({lprintStatus = v_X'2898})
                                     =
                                       Obj.magic
                                         v_params'2794
                                     in
                                     Obj.magic
                                       v_X'2898)
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
                              let v_accuracy'2901 =
                                Obj.magic
                                  v_nnAccuracyProportion
                                  v_nnCompType_FullyConnected
                                  v_nnCompType_ReLU
                                  v_nnCompType_SoftMax
                                  v_nnLossfnType_CrossEntropyLoss
                                  v_nnLossfnType_SoftMaxCrossEntropyLoss
                                  (let
                                     CRec'6298 ({lprintStatus = v_X'2900})
                                   =
                                     Obj.magic
                                       v_params'2794
                                   in
                                   Obj.magic
                                     v_X'2900)
                                  v_network'2795
                                  v_validation_batches'2852
                              in
                              if
                                Obj.magic
                                  (let
                                     CRec'6298 ({lprintStatus = v_X'2902})
                                   =
                                     Obj.magic
                                       v_params'2794
                                   in
                                   Obj.magic
                                     v_X'2902)
                              then
                                let v_'2903 =
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
                                let v_'2904 =
                                  Obj.magic
                                    Boot.Intrinsics.IO.print
                                    (Obj.magic
                                       Boot.Intrinsics.FloatConversion.float2string
                                       (Obj.magic
                                          Float.mul
                                          v_accuracy'2901
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
                          let v_decayed_alpha'2907 =
                            Obj.magic
                              Float.mul
                              v_alpha'2873
                              (Obj.magic
                                 Float.sub
                                 1.
                                 (let
                                    CRec'6298 ({ldecay_alpha = v_X'2906})
                                  =
                                    Obj.magic
                                      v_params'2794
                                  in
                                  Obj.magic
                                    v_X'2906))
                          in
                          let v_decayed_lambda'2909 =
                            Obj.magic
                              Float.mul
                              v_lambda'2875
                              (Obj.magic
                                 Float.sub
                                 1.
                                 (let
                                    CRec'6298 ({ldecay_lambda = v_X'2908})
                                  =
                                    Obj.magic
                                      v_params'2794
                                  in
                                  Obj.magic
                                    v_X'2908))
                          in
                          CRec'6302 { l0 =
                              (Obj.repr
                                v_decayed_alpha'2907);
                            l1 =
                              (Obj.repr
                                v_decayed_lambda'2909) };;
let v_nnTrainSGD =
  fun v_join ->
    fun v_nnCompType_FullyConnected ->
      fun v_nnCompType_ReLU ->
        fun v_nnCompType_SoftMax ->
          fun v_nnLossfnType_CrossEntropyLoss ->
            fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
              fun v_params'2794 ->
                fun v_network'2795 ->
                  fun v_training_data'2796 ->
                    fun v_validation_data'2797 ->
                      let v_rounds'2800 =
                        Obj.magic
                          Int.div
                          (Obj.magic
                             Int.add
                             (Obj.magic
                                Boot.Intrinsics.Mseq.length
                                v_training_data'2796)
                             (Obj.magic
                                Int.sub
                                (let
                                   CRec'6298 ({lbatchsize = v_X'2798})
                                 =
                                   Obj.magic
                                     v_params'2794
                                 in
                                 Obj.magic
                                   v_X'2798)
                                1))
                          (let
                             CRec'6298 ({lbatchsize = v_X'2799})
                           =
                             Obj.magic
                               v_params'2794
                           in
                           Obj.magic
                             v_X'2799)
                      in
                      let v_'2817 =
                        if
                          Obj.magic
                            (let
                               CRec'6298 ({lprintStatus = v_X'2801})
                             =
                               Obj.magic
                                 v_params'2794
                             in
                             Obj.magic
                               v_X'2801)
                        then
                          let v_'2802 =
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
                          let v_'2803 =
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
                                              v_training_data'2796))) |]))
                          in
                          let v_'2804 =
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
                                              v_validation_data'2797))) |]))
                          in
                          let v_'2806 =
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
                                              CRec'6298 ({lbatchsize = v_X'2805})
                                            =
                                              Obj.magic
                                                v_params'2794
                                            in
                                            Obj.magic
                                              v_X'2805))) |]))
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
                                           v_rounds'2800)) |]))
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
                                              CRec'6298 ({lepochs = v_X'2808})
                                            =
                                              Obj.magic
                                                v_params'2794
                                            in
                                            Obj.magic
                                              v_X'2808))) |]))
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
                                              CRec'6298 ({linit_alpha = v_X'2810})
                                            =
                                              Obj.magic
                                                v_params'2794
                                            in
                                            Obj.magic
                                              v_X'2810))) |]))
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
                                              CRec'6298 ({ldecay_alpha = v_X'2812})
                                            =
                                              Obj.magic
                                                v_params'2794
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
                                              CRec'6298 ({linit_lambda = v_X'2814})
                                            =
                                              Obj.magic
                                                v_params'2794
                                            in
                                            Obj.magic
                                              v_X'2814))) |]))
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
                                            CRec'6298 ({ldecay_lambda = v_X'2816})
                                          =
                                            Obj.magic
                                              v_params'2794
                                          in
                                          Obj.magic
                                            v_X'2816))) |]))
                        else
                          Obj.magic
                            ()
                      in
                      let v_'2819 =
                        if
                          Obj.magic
                            (let
                               CRec'6298 ({lprintStatus = v_X'2818})
                             =
                               Obj.magic
                                 v_params'2794
                             in
                             Obj.magic
                               v_X'2818)
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
                      let v_training_batches'2849 =
                        Obj.magic
                          v_batchMakerH
                          v_join
                          v_params'2794
                          v_training_data'2796
                          (Obj.magic
                             Boot.Intrinsics.Mseq.Helpers.of_array
                             [|  |])
                          0
                      in
                      let v_'2851 =
                        if
                          Obj.magic
                            (let
                               CRec'6298 ({lprintStatus = v_X'2850})
                             =
                               Obj.magic
                                 v_params'2794
                             in
                             Obj.magic
                               v_X'2850)
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
                      let v_validation_batches'2852 =
                        Obj.magic
                          v_batchMakerH
                          v_join
                          v_params'2794
                          v_validation_data'2797
                          (Obj.magic
                             Boot.Intrinsics.Mseq.Helpers.of_array
                             [|  |])
                          0
                      in
                      let v_'2854 =
                        if
                          Obj.magic
                            (let
                               CRec'6298 ({lprintStatus = v_X'2853})
                             =
                               Obj.magic
                                 v_params'2794
                             in
                             Obj.magic
                               v_X'2853)
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
                      let v_'2911 =
                        let nv_ =
                          Obj.magic
                            v_vjivEXkNw6z'5192
                            v_nnCompType_FullyConnected
                            v_nnCompType_ReLU
                            v_nnCompType_SoftMax
                            v_nnLossfnType_CrossEntropyLoss
                            v_nnLossfnType_SoftMaxCrossEntropyLoss
                            (let
                               CRec'6298 ({lepochs = v_r'6312;lbatchsize = v_r'6313;linit_alpha = v_r'6314;ldecay_alpha = v_r'6315;linit_lambda = v_r'6316;lprintStatus = v_r'6317;ldecay_lambda = v_r'6318;levaluateBetweenEpochs = v_r'6319;levaluateBeforeFirstEpoch = v_r'6320})
                             =
                               v_params'2794
                             in
                             Obj.magic
                               Obj.repr
                               ({lepochs =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6312);
                                 lbatchsize =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6313);
                                 linit_alpha =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6314);
                                 ldecay_alpha =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6315);
                                 linit_lambda =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6316);
                                 lprintStatus =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6317);
                                 ldecay_lambda =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6318);
                                 levaluateBetweenEpochs =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6319);
                                 levaluateBeforeFirstEpoch =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6320)} : v_record'6311))
                            (let
                               CRec'6296 ({llossfn = v_r'6324;lcomponents = v_r'6325})
                             =
                               v_network'2795
                             in
                             Obj.magic
                               Obj.repr
                               ({llossfn =
                                   (let
                                     CRec'6295 ({lty = v_r'6326;lin_grads = v_r'6327;lout_bufs = v_r'6328;lsoftmax_bufs = v_r'6329})
                                   =
                                     Obj.magic
                                       Obj.magic
                                       v_r'6324
                                   in
                                   Obj.magic
                                     Obj.repr
                                     ({lty =
                                         (Obj.magic
                                           Obj.magic
                                           v_r'6326);
                                       lin_grads =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6327));
                                       lout_bufs =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6328));
                                       lsoftmax_bufs =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6329))} : v_record'6321));
                                 lcomponents =
                                   (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.to_array_copy
                                     (Obj.magic
                                        Boot.Intrinsics.Mseq.map
                                        (fun v_x'6330 ->
                                           let
                                             CRec'6294 ({lb = v_r'6331;lw = v_r'6332;lty = v_r'6333;lb_grads = v_r'6334;lw_grads = v_r'6335;lin_grads = v_r'6336;lout_bufs = v_r'6337;lsoftmax_bufs = v_r'6338})
                                           =
                                             v_x'6330
                                           in
                                           Obj.magic
                                             Obj.repr
                                             ({lb =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6331));
                                               lw =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6332));
                                               lty =
                                                 (Obj.magic
                                                   Obj.magic
                                                   v_r'6333);
                                               lb_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6334));
                                               lw_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6335));
                                               lin_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6336));
                                               lout_bufs =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6337));
                                               lsoftmax_bufs =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6338))} : v_record'6322))
                                        (Obj.magic
                                           Obj.magic
                                           v_r'6325)))} : v_record'6323))
                            v_rounds'2800
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.to_array_copy
                               (Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  (fun v_x'6340 ->
                                     let
                                       CRec'6297 ({linputs = v_r'6341;lcorrect_linear_outidxs = v_r'6342})
                                     =
                                       v_x'6340
                                     in
                                     Obj.magic
                                       Obj.repr
                                       ({linputs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6341));
                                         lcorrect_linear_outidxs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6342))} : v_record'6339))
                                  v_training_batches'2849))
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.to_array_copy
                               (Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  (fun v_x'6344 ->
                                     let
                                       CRec'6297 ({linputs = v_r'6345;lcorrect_linear_outidxs = v_r'6346})
                                     =
                                       v_x'6344
                                     in
                                     Obj.magic
                                       Obj.repr
                                       ({linputs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6345));
                                         lcorrect_linear_outidxs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6346))} : v_record'6343))
                                  v_validation_batches'2852))
                        in
                        ()
                      in
                      let v_'2913 =
                        if
                          Obj.magic
                            (let
                               CRec'6298 ({lprintStatus = v_X'2912})
                             =
                               Obj.magic
                                 v_params'2794
                             in
                             Obj.magic
                               v_X'2912)
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
let v_t'5255 =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_print_status'2915 ->
        fun v_convfn'2916 ->
          fun v_dim'2917 ->
            fun v_tensorCreate'2918 ->
              fun v_acc'2924 ->
                fun v_c'2925 ->
                  match
                    Obj.magic
                      (let v__target'6372 =
                         v_acc'2924
                       in
                       let
                         CRec'6301 ({l0 = v_0'6373;l1 = v_1'6374;l2 = v_2'6375})
                       =
                         Obj.magic
                           Obj.magic
                           v__target'6372
                       in
                       Option.Some (v_0'6373, v_1'6374, v_2'6375))
                  with
                  | Option.Some (v_converted'2926, v_current_acc'2927, v_current_strrep'2928) ->
                      (let v_updated_tuple'2929 =
                         if
                           Obj.magic
                             (Obj.magic
                                v_and
                                (Obj.magic
                                   v_or
                                   (Obj.magic
                                      v_eqChar
                                      v_c'2925
                                      10)
                                   (Obj.magic
                                      v_eqChar
                                      v_c'2925
                                      32))
                                (Obj.magic
                                   ((>) : int -> int -> bool)
                                   (Obj.magic
                                      Boot.Intrinsics.Mseq.length
                                      v_current_strrep'2928)
                                   0))
                         then
                           CRec'6302 { l0 =
                               (Obj.repr
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.snoc
                                    v_current_acc'2927
                                    (Obj.magic
                                       v_string2int
                                       v_current_strrep'2928)));
                             l1 =
                               (Obj.repr
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [|  |])) }
                         else
                           Obj.magic
                             (CRec'6302 { l0 =
                                  (Obj.repr
                                    v_current_acc'2927);
                                l1 =
                                  (Obj.repr
                                    v_current_strrep'2928) })
                       in
                       match
                         Obj.magic
                           (let v__target'6376 =
                              v_updated_tuple'2929
                            in
                            let
                              CRec'6302 ({l0 = v_0'6377;l1 = v_1'6378})
                            =
                              Obj.magic
                                Obj.magic
                                v__target'6376
                            in
                            Option.Some (v_0'6377, v_1'6378))
                       with
                       | Option.Some (v_current_acc'2930, v_current_strrep'2931) ->
                           (if
                              Obj.magic
                                (Obj.magic
                                   v_eqChar
                                   v_c'2925
                                   10)
                            then
                              let v_class'2932 =
                                Obj.magic
                                  Boot.Intrinsics.Mseq.head
                                  v_current_acc'2930
                              in
                              let v_normalized_values'2933 =
                                Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  v_convfn'2916
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.tail
                                     v_current_acc'2930)
                              in
                              let v_dp'2934 =
                                CRec'6299 { linput =
                                    (Obj.repr
                                      (Obj.magic
                                         v_tensorOfSeqExn
                                         v_tensorCreate'2918
                                         v_dim'2917
                                         v_normalized_values'2933));
                                  lcorrect_outidx =
                                    (Obj.repr
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (Obj.magic
                                             v_class'2932);
                                           (0) |]));
                                  lcorrect_linear_outidx =
                                    (Obj.repr
                                      v_class'2932) }
                              in
                              let v_'2936 =
                                if
                                  Obj.magic
                                    v_print_status'2915
                                then
                                  let v_'2935 =
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
                                                         v_converted'2926)
                                                      1))) |]))
                                  in
                                  Obj.magic
                                    Boot.Intrinsics.IO.flush_stdout
                                    ()
                                else
                                  Obj.magic
                                    ()
                              in
                              CRec'6301 { l0 =
                                  (Obj.repr
                                    (Obj.magic
                                       Boot.Intrinsics.Mseq.snoc
                                       v_converted'2926
                                       v_dp'2934));
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
                                        v_c'2925
                                        32)
                                 then
                                   CRec'6301 { l0 =
                                       (Obj.repr
                                         v_converted'2926);
                                     l1 =
                                       (Obj.repr
                                         v_current_acc'2930);
                                     l2 =
                                       (Obj.repr
                                         v_current_strrep'2931) }
                                 else
                                   Obj.magic
                                     (CRec'6301 { l0 =
                                          (Obj.repr
                                            v_converted'2926);
                                        l1 =
                                          (Obj.repr
                                            v_current_acc'2930);
                                        l2 =
                                          (Obj.repr
                                            (Obj.magic
                                               Boot.Intrinsics.Mseq.snoc
                                               v_current_strrep'2931
                                               v_c'2925)) })))
                       | Option.None ->
                           (Obj.magic
                              (failwith
                                 "FILE \"/home/wikman/GitRepos/johnwikman/miking-ml/src/dataset/_common.mc\" 33:4-49:53 ERROR: Reached a never term, which should be impossible in a well-typed program.")))
                  | Option.None ->
                      (Obj.magic
                         (failwith
                            "FILE \"/home/wikman/GitRepos/johnwikman/miking-ml/src/dataset/_common.mc\" 26:4-31:6 ERROR: Reached a never term, which should be impossible in a well-typed program."));;
let v_t =
  fun v_x'2940 ->
    v_x'2940;;
let v_datasetLoadGenericIntclassInt2Float =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_print_status'2915 ->
        fun v_convfn'2916 ->
          fun v_dim'2917 ->
            fun v_tensorCreate'2918 ->
              fun v_filename'2919 ->
                let v_'2920 =
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
                              v_filename'2919);
                            (Obj.magic
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (46);
                                   (46);
                                   (46) |])) |]))
                in
                let v_contents'2921 =
                  Obj.magic
                    Boot.Intrinsics.File.read
                    v_filename'2919
                in
                let v_'2923 =
                  if
                    Obj.magic
                      v_print_status'2915
                  then
                    let v_'2922 =
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
                let v_result'2937 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.Helpers.fold_left
                    (Obj.magic
                       v_t'5255
                       v_join
                       v_tensorOfSeqExn
                       v_print_status'2915
                       v_convfn'2916
                       v_dim'2917
                       v_tensorCreate'2918)
                    (CRec'6301 { l0 =
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
                    v_contents'2921
                in
                let v_'2939 =
                  if
                    Obj.magic
                      v_print_status'2915
                  then
                    let v_'2938 =
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
                     CRec'6301 ({l0 = v_X'2941})
                   =
                     Obj.magic
                       v_result'2937
                   in
                   Obj.magic
                     v_X'2941);;
let v_convfn =
  fun v_i'2946 ->
    Obj.magic
      Float.div
      (Obj.magic
         float_of_int
         v_i'2946)
      255.;;
let v_datasetLoadMnist =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_tensorCreate'2943 ->
        fun v_filename'2944 ->
          let v_print_status'2945 =
            true
          in
          let v_dim'2948 =
            Obj.magic
              Boot.Intrinsics.Mseq.Helpers.of_array
              [| (784) |]
          in
          Obj.magic
            v_datasetLoadGenericIntclassInt2Float
            v_join
            v_tensorOfSeqExn
            v_print_status'2945
            v_convfn
            v_dim'2948
            v_tensorCreate'2943
            v_filename'2944;;
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
                fun v_batchsize'2952 ->
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
                              v_batchsize'2952
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
                              v_batchsize'2952
                              784));
                         (Obj.magic
                           (Obj.magic
                              v_nnFullyConnected
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2952
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
                              v_batchsize'2952
                              128));
                         (Obj.magic
                           (Obj.magic
                              v_nnFullyConnected
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2952
                              128
                              10)) |])
                    (Obj.magic
                       v_nnSoftMaxCrossEntropyLoss
                       v_eqSeq
                       v_join
                       v_nnLossfnType_CrossEntropyLoss
                       v_nnLossfnType_SoftMaxCrossEntropyLoss
                       v_batchsize'2952
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
                  fun v_training_data'2954 ->
                    fun v_validation_data'2955 ->
                      let v_params'2956 =
                        let
                          CRec'6298 v_rec'6385
                        =
                          Obj.magic
                            (let
                               CRec'6298 v_rec'6384
                             =
                               Obj.magic
                                 (let
                                    CRec'6298 v_rec'6383
                                  =
                                    Obj.magic
                                      (let
                                         CRec'6298 v_rec'6382
                                       =
                                         Obj.magic
                                           (let
                                              CRec'6298 v_rec'6381
                                            =
                                              Obj.magic
                                                (let
                                                   CRec'6298 v_rec'6380
                                                 =
                                                   Obj.magic
                                                     (let
                                                        CRec'6298 v_rec'6379
                                                      =
                                                        Obj.magic
                                                          v_nnVanillaSGDParameters
                                                      in
                                                      CRec'6298 { v_rec'6379
                                                        with
                                                        lbatchsize =
                                                          Obj.repr
                                                            128 })
                                                 in
                                                 CRec'6298 { v_rec'6380
                                                   with
                                                   lepochs =
                                                     Obj.repr
                                                       100 })
                                            in
                                            CRec'6298 { v_rec'6381
                                              with
                                              linit_alpha =
                                                Obj.repr
                                                  0.9 })
                                       in
                                       CRec'6298 { v_rec'6382
                                         with
                                         linit_lambda =
                                           Obj.repr
                                             0. })
                                  in
                                  CRec'6298 { v_rec'6383
                                    with
                                    lprintStatus =
                                      Obj.repr
                                        true })
                             in
                             CRec'6298 { v_rec'6384
                               with
                               levaluateBetweenEpochs =
                                 Obj.repr
                                   true })
                        in
                        CRec'6298 { v_rec'6385
                          with
                          levaluateBeforeFirstEpoch =
                            Obj.repr
                              true }
                      in
                      let v_'2957 =
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
                      let v_network'2959 =
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
                             CRec'6298 ({lbatchsize = v_X'2958})
                           =
                             Obj.magic
                               v_params'2956
                           in
                           Obj.magic
                             v_X'2958)
                      in
                      let v_'2960 =
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
                      let v_t_start_ms'2961 =
                        Obj.magic
                          Boot.Intrinsics.Time.get_wall_time_ms
                          ()
                      in
                      let v_'2962 =
                        Obj.magic
                          v_nnTrainSGD
                          v_join
                          v_nnCompType_FullyConnected
                          v_nnCompType_ReLU
                          v_nnCompType_SoftMax
                          v_nnLossfnType_CrossEntropyLoss
                          v_nnLossfnType_SoftMaxCrossEntropyLoss
                          v_params'2956
                          v_network'2959
                          v_training_data'2954
                          v_validation_data'2955
                      in
                      let v_t_end_ms'2963 =
                        Obj.magic
                          Boot.Intrinsics.Time.get_wall_time_ms
                          ()
                      in
                      let v_t_diff_ms'2964 =
                        Obj.magic
                          Float.sub
                          v_t_end_ms'2963
                          v_t_start_ms'2961
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
                                     v_t_diff_ms'2964));
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
    (let v_'2966 =
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
     let v_training_data'2967 =
       Obj.magic
         v_datasetLoadCArrayFloatMnist
         v_join
         v_tensorOfSeqExn
         (Obj.magic
            Boot.Intrinsics.Mseq.get
            Boot.Intrinsics.MSys.argv
            1)
     in
     let v_'2968 =
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
     let v_validation_data'2969 =
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
       v_training_data'2967
       v_validation_data'2969);;