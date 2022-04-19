external v_ve1FzN1WPvC'5149 : Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t -> Obj.t = "vVse9MFEvHB" "ve1FzN1WPvC";;
type v_record'6166 = {linit_alpha: Obj.t;linit_lambda: Obj.t;ldecay_alpha: Obj.t;ldecay_lambda: Obj.t;lbatchsize: Obj.t;lepochs: Obj.t;lprintStatus: Obj.t;levaluateBetweenEpochs: Obj.t;levaluateBeforeFirstEpoch: Obj.t};;
type v_record'6176 = {lty: Obj.t;lw: Obj.t;lb: Obj.t;lw_grads: Obj.t;lb_grads: Obj.t;lout_bufs: Obj.t;lin_grads: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6177 = {lty: Obj.t;lout_bufs: Obj.t;lin_grads: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6178 = {lcomponents: Obj.t;llossfn: Obj.t};;
type v_record'6194 = {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6198 = {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6158 =
  | CRec'6157 of {l0: Obj.t;l1: Obj.t};;
type v_record'6159 =
  | CRec'6156 of {l0: Obj.t;l1: Obj.t;l2: Obj.t};;
type v_record'6160 =
  | CRec'6154 of {linput: Obj.t;lcorrect_outidx: Obj.t;lcorrect_linear_outidx: Obj.t};;
type v_record'6161 =
  | CRec'6153 of {linit_alpha: Obj.t;linit_lambda: Obj.t;ldecay_alpha: Obj.t;ldecay_lambda: Obj.t;lbatchsize: Obj.t;lepochs: Obj.t;lprintStatus: Obj.t;levaluateBetweenEpochs: Obj.t;levaluateBeforeFirstEpoch: Obj.t};;
type v_record'6162 =
  | CRec'6152 of {linputs: Obj.t;lcorrect_linear_outidxs: Obj.t};;
type v_record'6163 =
  | CRec'6151 of {lcomponents: Obj.t;llossfn: Obj.t};;
type v_record'6164 =
  | CRec'6150 of {lty: Obj.t;lout_bufs: Obj.t;lin_grads: Obj.t;lsoftmax_bufs: Obj.t};;
type v_record'6165 =
  | CRec'6148 of {lty: Obj.t;lw: Obj.t;lb: Obj.t;lw_grads: Obj.t;lb_grads: Obj.t;lout_bufs: Obj.t;lin_grads: Obj.t;lsoftmax_bufs: Obj.t};;
type v_Option'2115 =
  | CSome'2117 of Obj.t
  | CNone'2119;;
let v_and =
  fun v_a'2108 ->
    fun v_b'2109 ->
      if
        Obj.magic
          v_a'2108
      then
        v_b'2109
      else
        Obj.magic
          false;;
let v_or =
  fun v_a'2111 ->
    fun v_b'2112 ->
      if
        Obj.magic
          v_a'2111
      then
        true
      else
        Obj.magic
          v_b'2112;;
let rec v_work =
    fun v_eq'2122 ->
      fun v_s1'2126 ->
        fun v_s2'2127 ->
          match
            Obj.magic
              (let v__target'6202 =
                 CRec'6157 { l0 =
                     (Obj.repr
                       v_s1'2126);
                   l1 =
                     (Obj.repr
                       v_s2'2127) }
               in
               let
                 CRec'6157 ({l0 = v_0'6203;l1 = v_1'6204})
               =
                 Obj.magic
                   Obj.magic
                   v__target'6202
               in
               if
                 Obj.magic
                   ((<) : int -> int -> bool)
                   (Obj.magic
                      Boot.Intrinsics.Mseq.length
                      v_0'6203)
                   1
               then
                 Option.None
               else
                 Obj.magic
                   Obj.magic
                   (let
                      (v__prefix'6205, v__splitTemp'6206)
                    =
                      Obj.magic
                        Boot.Intrinsics.Mseq.split_at
                        v_0'6203
                        1
                    in
                    let
                      (v__middle'6207, v__postfix'6208)
                    =
                      Obj.magic
                        Boot.Intrinsics.Mseq.split_at
                        v__splitTemp'6206
                        (Obj.magic
                           Int.sub
                           (Obj.magic
                              Boot.Intrinsics.Mseq.length
                              v__splitTemp'6206)
                           0)
                    in
                    let v__seqElem'6209 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.get
                        v__prefix'6205
                        0
                    in
                    if
                      Obj.magic
                        ((<) : int -> int -> bool)
                        (Obj.magic
                           Boot.Intrinsics.Mseq.length
                           v_1'6204)
                        1
                    then
                      Option.None
                    else
                      Obj.magic
                        Obj.magic
                        (let
                           (v__prefix'6210, v__splitTemp'6211)
                         =
                           Obj.magic
                             Boot.Intrinsics.Mseq.split_at
                             v_1'6204
                             1
                         in
                         let
                           (v__middle'6212, v__postfix'6213)
                         =
                           Obj.magic
                             Boot.Intrinsics.Mseq.split_at
                             v__splitTemp'6211
                             (Obj.magic
                                Int.sub
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.length
                                   v__splitTemp'6211)
                                0)
                         in
                         let v__seqElem'6214 =
                           Obj.magic
                             Boot.Intrinsics.Mseq.get
                             v__prefix'6210
                             0
                         in
                         Option.Some (v__seqElem'6209, v__middle'6207, v__seqElem'6214, v__middle'6212))))
          with
          | Option.Some (v_h1'2128, v_t1'2129, v_h2'2130, v_t2'2131) ->
              (if
                 Obj.magic
                   (Obj.magic
                      v_eq'2122
                      v_h1'2128
                      v_h2'2130)
               then
                 Obj.magic
                   v_work
                   v_eq'2122
                   v_t1'2129
                   v_t2'2131
               else
                 Obj.magic
                   false)
          | Option.None ->
              (Obj.magic
                 true);;
let v_eqSeq =
  fun v_eq'2122 ->
    fun v_s1'2123 ->
      fun v_s2'2124 ->
        let v_n1'2132 =
          Obj.magic
            Boot.Intrinsics.Mseq.length
            v_s1'2123
        in
        let v_n2'2133 =
          Obj.magic
            Boot.Intrinsics.Mseq.length
            v_s2'2124
        in
        let v_ndiff'2134 =
          Obj.magic
            Int.sub
            v_n1'2132
            v_n2'2133
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ndiff'2134
               0)
        then
          Obj.magic
            v_work
            v_eq'2122
            v_s1'2123
            v_s2'2124
        else
          Obj.magic
            false;;
let rec v_unfoldr =
    fun v_f'2139 ->
      fun v_b0'2140 ->
        let v_fb'2141 =
          Obj.magic
            v_f'2139
            v_b0'2140
        in
        let v_defaultCase'6215 =
          fun nv_ ->
            failwith
              "FILE \"/home/wikman/.local/lib/mcore/stdlib/seq.mc\" 103:7-103:12 ERROR: Reached a never term, which should be impossible in a well-typed program."
        in
        match
          Obj.magic
            v_fb'2141
        with
        | CSome'2117 v_x'6216 ->
            (match
               Obj.magic
                 (let v__target'6217 =
                    Obj.magic
                      Obj.magic
                      v_x'6216
                  in
                  let
                    CRec'6157 ({l0 = v_0'6218;l1 = v_1'6219})
                  =
                    Obj.magic
                      Obj.magic
                      v__target'6217
                  in
                  Option.Some (v_0'6218, v_1'6219))
             with
             | Option.Some (v_x'2142, v_b1'2143) ->
                 (Obj.magic
                    Boot.Intrinsics.Mseq.cons
                    v_x'2142
                    (Obj.magic
                       v_unfoldr
                       v_f'2139
                       v_b1'2143))
             | Option.None ->
                 (Obj.magic
                    (Obj.magic
                       v_defaultCase'6215
                       ())))
        | CNone'2119 ->
            (Obj.magic
               (Obj.magic
                  Boot.Intrinsics.Mseq.Helpers.of_array
                  [|  |]))
        | _ ->
            (Obj.magic
               (v_defaultCase'6215
                  ()));;
let v_join =
  fun v_seqs'2144 ->
    Obj.magic
      Boot.Intrinsics.Mseq.Helpers.fold_left
      Boot.Intrinsics.Mseq.concat
      (Obj.magic
         Boot.Intrinsics.Mseq.Helpers.of_array
         [|  |])
      v_seqs'2144;;
let v_printLn =
  fun v_s'2146 ->
    let v_'2147 =
      Obj.magic
        Boot.Intrinsics.IO.print
        (Obj.magic
           Boot.Intrinsics.Mseq.concat
           v_s'2146
           (Obj.magic
              Boot.Intrinsics.Mseq.Helpers.of_array
              [| (10) |]))
    in
    Obj.magic
      Boot.Intrinsics.IO.flush_stdout
      ();;
let v_eqChar =
  fun v_c1'2149 ->
    fun v_c2'2150 ->
      Obj.magic
        Int.equal
        v_c1'2149
        v_c2'2150;;
let v_externalExp =
  fun v_x'6221 ->
    (Float.exp)
      v_x'6221;;
let v_exp =
  fun v_x'2153 ->
    Obj.magic
      v_externalExp
      v_x'2153;;
let v_eqString =
  fun v_eqSeq ->
    fun v_s1'2155 ->
      fun v_s2'2156 ->
        Obj.magic
          v_eqSeq
          Int.equal
          v_s1'2155
          v_s2'2156;;
let rec v_string2int_rechelper =
    fun v_s'2160 ->
      let v_len'2161 =
        Obj.magic
          Boot.Intrinsics.Mseq.length
          v_s'2160
      in
      let v_last'2162 =
        Obj.magic
          Int.sub
          v_len'2161
          1
      in
      if
        Obj.magic
          (Obj.magic
             Int.equal
             v_len'2161
             0)
      then
        0
      else
        Obj.magic
          (let v_lsd'2163 =
             Obj.magic
               Int.sub
               (Obj.magic
                  Fun.id
                  (Obj.magic
                     Boot.Intrinsics.Mseq.get
                     v_s'2160
                     v_last'2162))
               (Obj.magic
                  Fun.id
                  48)
           in
           let v_rest'2164 =
             Obj.magic
               Int.mul
               10
               (Obj.magic
                  v_string2int_rechelper
                  (Obj.magic
                     Boot.Intrinsics.Mseq.subsequence
                     v_s'2160
                     0
                     v_last'2162))
           in
           Obj.magic
             Int.add
             v_rest'2164
             v_lsd'2163);;
let v_string2int =
  fun v_s'2158 ->
    if
      Obj.magic
        Boot.Intrinsics.Mseq.null
        v_s'2158
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
                   v_s'2158))
         then
           Obj.magic
             Int.neg
             (Obj.magic
                v_string2int_rechelper
                (Obj.magic
                   Boot.Intrinsics.Mseq.tail
                   v_s'2158))
         else
           Obj.magic
             (Obj.magic
                v_string2int_rechelper
                v_s'2158));;
let rec v_int2string_rechelper =
    fun v_n'2168 ->
      if
        Obj.magic
          (Obj.magic
             ((<) : int -> int -> bool)
             v_n'2168
             10)
      then
        Obj.magic
          Boot.Intrinsics.Mseq.Helpers.of_array
          [| (Obj.magic
              (Obj.magic
                 Fun.id
                 (Obj.magic
                    Int.add
                    v_n'2168
                    (Obj.magic
                       Fun.id
                       48)))) |]
      else
        Obj.magic
          (let v_d'2169 =
             Obj.magic
               Boot.Intrinsics.Mseq.Helpers.of_array
               [| (Obj.magic
                   (Obj.magic
                      Fun.id
                      (Obj.magic
                         Int.add
                         (Obj.magic
                            Int.rem
                            v_n'2168
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
                   v_n'2168
                   10))
             v_d'2169);;
let v_int2string =
  fun v_n'2166 ->
    if
      Obj.magic
        (Obj.magic
           ((<) : int -> int -> bool)
           v_n'2166
           0)
    then
      Obj.magic
        Boot.Intrinsics.Mseq.cons
        45
        (Obj.magic
           v_int2string_rechelper
           (Obj.magic
              Int.neg
              v_n'2166))
    else
      Obj.magic
        (Obj.magic
           v_int2string_rechelper
           v_n'2166);;
let v__prod =
  Obj.magic
    Boot.Intrinsics.Mseq.Helpers.fold_left
    Int.mul
    1;;
let v_f =
  fun v_d'2174 ->
    fun v_kidx'2175 ->
      match
        Obj.magic
          (let v__target'6222 =
             v_kidx'2175
           in
           let
             CRec'6157 ({l0 = v_0'6223;l1 = v_1'6224})
           =
             Obj.magic
               Obj.magic
               v__target'6222
           in
           Option.Some (v_0'6223, v_1'6224))
      with
      | Option.Some (v_k'2176, v_idx'2177) ->
          (CRec'6157 { l0 =
               (Obj.repr
                 (Obj.magic
                    Int.div
                    v_k'2176
                    v_d'2174));
             l1 =
               (Obj.repr
                 (Obj.magic
                    Boot.Intrinsics.Mseq.cons
                    (Obj.magic
                       Int.rem
                       v_k'2176
                       v_d'2174)
                    v_idx'2177)) })
      | Option.None ->
          (Obj.magic
             (failwith
                "FILE \"/home/wikman/.local/lib/mcore/stdlib/tensor.mc\" 21:9-21:14 ERROR: Reached a never term, which should be impossible in a well-typed program."));;
let v_linearToCartesianIndex =
  fun v_shape'2172 ->
    fun v_k'2173 ->
      let v_r'2179 =
        Obj.magic
          Boot.Intrinsics.Mseq.Helpers.fold_right
          v_f
          (CRec'6157 { l0 =
               (Obj.repr
                 v_k'2173);
             l1 =
               (Obj.repr
                 (Obj.magic
                    Boot.Intrinsics.Mseq.Helpers.of_array
                    [|  |])) })
          v_shape'2172
      in
      let
        CRec'6157 ({l1 = v_X'2180})
      =
        Obj.magic
          v_r'2179
      in
      Obj.magic
        v_X'2180;;
let v_tensorHasShape =
  fun v_t'2183 ->
    fun v_shape'2184 ->
      Obj.magic
        v_eqSeq
        Int.equal
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_t'2183)
        v_shape'2184;;
let v_tensorHasSameShape =
  fun v_t1'2188 ->
    fun v_t2'2189 ->
      Obj.magic
        v_eqSeq
        Int.equal
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_t1'2188)
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_t2'2189);;
let v_tensorCreate =
  Boot.Intrinsics.T.create_generic_packed;;
let v_t'5152 =
  fun v_seq'2196 ->
    fun v_idx'2198 ->
      Obj.magic
        Boot.Intrinsics.Mseq.get
        v_seq'2196
        (Obj.magic
           Boot.Intrinsics.Mseq.get
           v_idx'2198
           0);;
let v_tensorOfSeqOrElse =
  fun v_f'2193 ->
    fun v_tcreate'2194 ->
      fun v_shape'2195 ->
        fun v_seq'2196 ->
          let v_n'2197 =
            Obj.magic
              Boot.Intrinsics.Mseq.length
              v_seq'2196
          in
          if
            Obj.magic
              (Obj.magic
                 ((<>) : int -> int -> bool)
                 v_n'2197
                 (Obj.magic
                    v__prod
                    v_shape'2195))
          then
            Obj.magic
              v_f'2193
              ()
          else
            Obj.magic
              (let v_t'2199 =
                 Obj.magic
                   v_tcreate'2194
                   (Obj.magic
                      Boot.Intrinsics.Mseq.Helpers.of_array
                      [| (Obj.magic
                          v_n'2197) |])
                   (Obj.magic
                      v_t'5152
                      v_seq'2196)
               in
               Obj.magic
                 Boot.Intrinsics.T.reshape_exn
                 v_t'2199
                 v_shape'2195);;
let v_t'5153 =
  fun v_'2202 ->
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
    v_t'5153;;
let v_t'5154 =
  fun v_t'2206 ->
    fun v_n'2207 ->
      fun v_i'2208 ->
        if
          Obj.magic
            (Obj.magic
               ((<) : int -> int -> bool)
               v_i'2208
               v_n'2207)
        then
          CSome'2117 (Obj.repr
             (CRec'6157 { l0 =
                  (Obj.repr
                    (Obj.magic
                       Boot.Intrinsics.T.get_exn
                       v_t'2206
                       (Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.of_array
                          [| (Obj.magic
                              v_i'2208) |])));
                l1 =
                  (Obj.repr
                    (Obj.magic
                       Int.add
                       v_i'2208
                       1)) }))
        else
          Obj.magic
            CNone'2119;;
let v_tensorToSeqOrElse =
  fun v_f'2205 ->
    fun v_t'2206 ->
      if
        Obj.magic
          (Obj.magic
             ((<>) : int -> int -> bool)
             (Obj.magic
                Boot.Intrinsics.T.rank
                v_t'2206)
             1)
      then
        Obj.magic
          v_f'2205
          ()
      else
        Obj.magic
          (let v_n'2207 =
             Obj.magic
               Boot.Intrinsics.Mseq.get
               (Obj.magic
                  Boot.Intrinsics.T.shape
                  v_t'2206)
               0
           in
           Obj.magic
             v_unfoldr
             (Obj.magic
                v_t'5154
                v_t'2206
                v_n'2207)
             0);;
let v_t'5155 =
  fun v_'2211 ->
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
    v_t'5155;;
let v_tensorSize'2215 =
  fun v_t'2214 ->
    Obj.magic
      v__prod
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2214);;
let v_t'5156 =
  fun v_g'2219 ->
    fun v_v2'2224 ->
      fun v_i'2225 ->
        fun v_e'2226 ->
          Obj.magic
            Boot.Intrinsics.T.set_exn
            v_v2'2224
            (Obj.magic
               Boot.Intrinsics.Mseq.Helpers.of_array
               [| (Obj.magic
                   v_i'2225) |])
            (Obj.magic
               v_g'2219
               (Obj.magic
                  Boot.Intrinsics.T.get_exn
                  v_e'2226
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [|  |]))
               (Obj.magic
                  Boot.Intrinsics.T.get_exn
                  v_v2'2224
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (Obj.magic
                         v_i'2225) |])));;
let v_tensorMapOrElse =
  fun v_f'2218 ->
    fun v_g'2219 ->
      fun v_t1'2220 ->
        fun v_t2'2221 ->
          if
            Obj.magic
              (Obj.magic
                 v_tensorHasSameShape
                 v_t1'2220
                 v_t2'2221)
          then
            let v_n'2222 =
              Obj.magic
                v_tensorSize'2215
                v_t1'2220
            in
            let v_v1'2223 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t1'2220
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2222) |])
            in
            let v_v2'2224 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t2'2221
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2222) |])
            in
            Obj.magic
              Boot.Intrinsics.T.iter_slice
              (Obj.magic
                 v_t'5156
                 v_g'2219
                 v_v2'2224)
              v_v1'2223
          else
            Obj.magic
              (Obj.magic
                 v_f'2218
                 ());;
let v_t'5157 =
  fun v_'2228 ->
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
    v_t'5157;;
let v_t'5158 =
  fun v_g'2233 ->
    fun v_shape'2236 ->
      fun v_v2'2239 ->
        fun v_i'2240 ->
          fun v_e'2241 ->
            let v_idx'2242 =
              Obj.magic
                v_linearToCartesianIndex
                v_shape'2236
                v_i'2240
            in
            Obj.magic
              Boot.Intrinsics.T.set_exn
              v_v2'2239
              (Obj.magic
                 Boot.Intrinsics.Mseq.Helpers.of_array
                 [| (Obj.magic
                     v_i'2240) |])
              (Obj.magic
                 v_g'2233
                 v_idx'2242
                 (Obj.magic
                    Boot.Intrinsics.T.get_exn
                    v_e'2241
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [|  |]))
                 (Obj.magic
                    Boot.Intrinsics.T.get_exn
                    v_v2'2239
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_i'2240) |])));;
let v_tensorMapiOrElse =
  fun v_f'2232 ->
    fun v_g'2233 ->
      fun v_t1'2234 ->
        fun v_t2'2235 ->
          let v_shape'2236 =
            Obj.magic
              Boot.Intrinsics.T.shape
              v_t1'2234
          in
          if
            Obj.magic
              (Obj.magic
                 v_tensorHasShape
                 v_t2'2235
                 v_shape'2236)
          then
            let v_n'2237 =
              Obj.magic
                v_tensorSize'2215
                v_t1'2234
            in
            let v_v1'2238 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t1'2234
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2237) |])
            in
            let v_v2'2239 =
              Obj.magic
                Boot.Intrinsics.T.reshape_exn
                v_t2'2235
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_n'2237) |])
            in
            Obj.magic
              Boot.Intrinsics.T.iter_slice
              (Obj.magic
                 v_t'5158
                 v_g'2233
                 v_shape'2236
                 v_v2'2239)
              v_v1'2238
          else
            Obj.magic
              (Obj.magic
                 v_f'2232
                 ());;
let v_t'5159 =
  fun v_'2244 ->
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
    v_t'5159;;
let v_t'5160 =
  fun v_x'2249 ->
    fun v_'2250 ->
      v_x'2249;;
let v_tensorBlitExn =
  fun v_t1'2247 ->
    fun v_t2'2248 ->
      if
        Obj.magic
          (Obj.magic
             v_tensorHasSameShape
             v_t1'2247
             v_t2'2248)
      then
        Obj.magic
          v_tensorMapExn
          v_t'5160
          v_t1'2247
          v_t2'2248
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
let v_t'5161 =
  fun v_'2253 ->
    0;;
let v_test =
  let v_t1'2252 =
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
  let v_t2'2254 =
    Obj.magic
      Boot.Intrinsics.T.create_generic_packed
      (Obj.magic
         Boot.Intrinsics.Mseq.Helpers.of_array
         [| (3) |])
      v_t'5161
  in
  ();;
let v_externalGaussianSample =
  fun v_x'6225 ->
    fun v_x'6226 ->
      (Owl_stats.gaussian_rvs)
        ~mu:(v_x'6225)
        ~sigma:(v_x'6226);;
let v_gaussianSample =
  fun v_mu'2258 ->
    fun v_sigma'2259 ->
      Obj.magic
        v_externalGaussianSample
        v_mu'2258
        v_sigma'2259;;
let v_t'5162 =
  fun v_acc'2262 ->
    fun v_e'2263 ->
      Obj.magic
        Int.mul
        v_acc'2262
        v_e'2263;;
let v_tensorSize'2264 =
  fun v_t'2261 ->
    Obj.magic
      Boot.Intrinsics.Mseq.Helpers.fold_left
      v_t'5162
      1
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2261);;
let v_t'5163 =
  fun v_w'2266 ->
    fun v_x'2267 ->
      fun v_n'2272 ->
        fun v_x_offset'2275 ->
          fun v_i'2277 ->
            fun v_acc'2279 ->
              fun v_j'2280 ->
                Obj.magic
                  Float.add
                  v_acc'2279
                  (Obj.magic
                     Float.mul
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_w'2266
                        (Obj.magic
                           Int.add
                           (Obj.magic
                              Int.mul
                              v_n'2272
                              v_i'2277)
                           v_j'2280))
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_x'2267
                        (Obj.magic
                           Int.add
                           v_x_offset'2275
                           v_j'2280)));;
let v_iterfun'2282 =
  fun v_w'2266 ->
    fun v_x'2267 ->
      fun v_b'2268 ->
        fun v_z'2269 ->
          fun v_m'2271 ->
            fun v_n'2272 ->
              fun v_i'2273 ->
                let v_s_idx'2274 =
                  Obj.magic
                    Int.div
                    v_i'2273
                    v_m'2271
                in
                let v_x_offset'2275 =
                  Obj.magic
                    Int.mul
                    v_s_idx'2274
                    v_n'2272
                in
                let v_z_idx'2276 =
                  v_i'2273
                in
                let v_i'2277 =
                  Obj.magic
                    Int.rem
                    v_i'2273
                    v_m'2271
                in
                let v_acc_init'2278 =
                  Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_b'2268
                    v_i'2277
                in
                let v_v'2281 =
                  let rec v_loop'6028 =
                      fun v_acc'6029 ->
                        fun v_i'6030 ->
                          if
                            Obj.magic
                              (Obj.magic
                                 ((<) : int -> int -> bool)
                                 v_i'6030
                                 v_n'2272)
                          then
                            let v_t'6031 =
                              Obj.magic
                                v_t'5163
                                v_w'2266
                                v_x'2267
                                v_n'2272
                                v_x_offset'2275
                                v_i'2277
                                v_acc'6029
                                v_i'6030
                            in
                            Obj.magic
                              v_loop'6028
                              v_t'6031
                              (Obj.magic
                                 Int.add
                                 v_i'6030
                                 1)
                          else
                            Obj.magic
                              v_acc'6029
                  in Obj.magic
                    v_loop'6028
                    v_acc_init'2278
                    0
                in
                Obj.magic
                  Boot.Intrinsics.T.linear_set_exn
                  v_z'2269
                  v_z_idx'2276
                  v_v'2281;;
let v_tensorOpExn__z___Wx_B =
  fun v_s_max'2265 ->
    fun v_w'2266 ->
      fun v_x'2267 ->
        fun v_b'2268 ->
          fun v_z'2269 ->
            let v_w_shape'2270 =
              Obj.magic
                Boot.Intrinsics.T.shape
                v_w'2266
            in
            let v_m'2271 =
              Obj.magic
                Boot.Intrinsics.Mseq.get
                v_w_shape'2270
                0
            in
            let v_n'2272 =
              Obj.magic
                Boot.Intrinsics.Mseq.get
                v_w_shape'2270
                1
            in
            let rec v_loop'6032 =
                fun v_acc'6033 ->
                  fun v_i'6034 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6034
                           (Obj.magic
                              Int.mul
                              v_s_max'2265
                              v_m'2271))
                    then
                      let v_t'6035 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_iterfun'2282
                               v_w'2266
                               v_x'2267
                               v_b'2268
                               v_z'2269
                               v_m'2271
                               v_n'2272)
                          v_acc'6033
                          v_i'6034
                      in
                      Obj.magic
                        v_loop'6032
                        v_t'6035
                        (Obj.magic
                           Int.add
                           v_i'6034
                           1)
                    else
                      Obj.magic
                        v_acc'6033
            in Obj.magic
              v_loop'6032
              ()
              0;;
let v_iterfun'2300 =
  fun v_x'2285 ->
    fun v_y'2286 ->
      fun v_z'2287 ->
        fun v_m'2289 ->
          fun v_n'2290 ->
            fun v_m_x_n'2291 ->
              fun v_i'2292 ->
                let v_s_idx'2293 =
                  Obj.magic
                    Int.div
                    v_i'2292
                    v_m_x_n'2291
                in
                let v_z_idx'2294 =
                  v_i'2292
                in
                let v_i'2295 =
                  Obj.magic
                    Int.rem
                    v_i'2292
                    v_m_x_n'2291
                in
                let v_row'2296 =
                  Obj.magic
                    Int.div
                    v_i'2295
                    v_n'2290
                in
                let v_col'2297 =
                  Obj.magic
                    Int.rem
                    v_i'2295
                    v_n'2290
                in
                let v_x_idx'2298 =
                  Obj.magic
                    Int.add
                    v_row'2296
                    (Obj.magic
                       Int.mul
                       v_s_idx'2293
                       v_m'2289)
                in
                let v_y_idx'2299 =
                  Obj.magic
                    Int.add
                    v_col'2297
                    (Obj.magic
                       Int.mul
                       v_s_idx'2293
                       v_n'2290)
                in
                Obj.magic
                  Boot.Intrinsics.T.linear_set_exn
                  v_z'2287
                  v_z_idx'2294
                  (Obj.magic
                     Float.mul
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_x'2285
                        v_x_idx'2298)
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_y'2286
                        v_y_idx'2299));;
let v_tensorOpExn__z___x___y_T =
  fun v_s_max'2284 ->
    fun v_x'2285 ->
      fun v_y'2286 ->
        fun v_z'2287 ->
          let v_z_shape'2288 =
            Obj.magic
              Boot.Intrinsics.T.shape
              v_z'2287
          in
          let v_m'2289 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_z_shape'2288
              1
          in
          let v_n'2290 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_z_shape'2288
              2
          in
          let v_m_x_n'2291 =
            Obj.magic
              Int.mul
              v_m'2289
              v_n'2290
          in
          let rec v_loop'6036 =
              fun v_acc'6037 ->
                fun v_i'6038 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6038
                         (Obj.magic
                            Int.mul
                            v_s_max'2284
                            v_m_x_n'2291))
                  then
                    let v_t'6039 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2300
                             v_x'2285
                             v_y'2286
                             v_z'2287
                             v_m'2289
                             v_n'2290
                             v_m_x_n'2291)
                        v_acc'6037
                        v_i'6038
                    in
                    Obj.magic
                      v_loop'6036
                      v_t'6039
                      (Obj.magic
                         Int.add
                         v_i'6038
                         1)
                  else
                    Obj.magic
                      v_acc'6037
          in Obj.magic
            v_loop'6036
            ()
            0;;
let v_t'5164 =
  fun v_x'2303 ->
    fun v_w'2304 ->
      fun v_n'2308 ->
        fun v_x_offset'2313 ->
          fun v_j'2314 ->
            fun v_acc'2315 ->
              fun v_i'2316 ->
                Obj.magic
                  Float.add
                  v_acc'2315
                  (Obj.magic
                     Float.mul
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_w'2304
                        (Obj.magic
                           Int.add
                           (Obj.magic
                              Int.mul
                              v_n'2308
                              v_i'2316)
                           v_j'2314))
                     (Obj.magic
                        Boot.Intrinsics.T.linear_get_exn
                        v_x'2303
                        (Obj.magic
                           Int.add
                           v_x_offset'2313
                           v_i'2316)));;
let v_iterfun'2318 =
  fun v_x'2303 ->
    fun v_w'2304 ->
      fun v_z'2305 ->
        fun v_m'2307 ->
          fun v_n'2308 ->
            fun v_j'2309 ->
              let v_s_idx'2310 =
                Obj.magic
                  Int.div
                  v_j'2309
                  v_n'2308
              in
              let v_n_idx'2311 =
                Obj.magic
                  Int.rem
                  v_j'2309
                  v_n'2308
              in
              let v_z_idx'2312 =
                v_j'2309
              in
              let v_x_offset'2313 =
                Obj.magic
                  Int.mul
                  v_s_idx'2310
                  v_m'2307
              in
              let v_j'2314 =
                v_n_idx'2311
              in
              let v_v'2317 =
                let rec v_loop'6040 =
                    fun v_acc'6041 ->
                      fun v_i'6042 ->
                        if
                          Obj.magic
                            (Obj.magic
                               ((<) : int -> int -> bool)
                               v_i'6042
                               v_m'2307)
                        then
                          let v_t'6043 =
                            Obj.magic
                              v_t'5164
                              v_x'2303
                              v_w'2304
                              v_n'2308
                              v_x_offset'2313
                              v_j'2314
                              v_acc'6041
                              v_i'6042
                          in
                          Obj.magic
                            v_loop'6040
                            v_t'6043
                            (Obj.magic
                               Int.add
                               v_i'6042
                               1)
                        else
                          Obj.magic
                            v_acc'6041
                in Obj.magic
                  v_loop'6040
                  0.
                  0
              in
              Obj.magic
                Boot.Intrinsics.T.linear_set_exn
                v_z'2305
                v_z_idx'2312
                v_v'2317;;
let v_tensorOpExn__z____x_T___W__T =
  fun v_s_max'2302 ->
    fun v_x'2303 ->
      fun v_w'2304 ->
        fun v_z'2305 ->
          let v_w_shape'2306 =
            Obj.magic
              Boot.Intrinsics.T.shape
              v_w'2304
          in
          let v_m'2307 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_w_shape'2306
              0
          in
          let v_n'2308 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_w_shape'2306
              1
          in
          let rec v_loop'6044 =
              fun v_acc'6045 ->
                fun v_i'6046 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6046
                         (Obj.magic
                            Int.mul
                            v_s_max'2302
                            v_n'2308))
                  then
                    let v_t'6047 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2318
                             v_x'2303
                             v_w'2304
                             v_z'2305
                             v_m'2307
                             v_n'2308)
                        v_acc'6045
                        v_i'6046
                    in
                    Obj.magic
                      v_loop'6044
                      v_t'6047
                      (Obj.magic
                         Int.add
                         v_i'6046
                         1)
                  else
                    Obj.magic
                      v_acc'6045
          in Obj.magic
            v_loop'6044
            ()
            0;;
let v_iterfun'2327 =
  fun v_x'2321 ->
    fun v_z'2322 ->
      fun v_i'2325 ->
        let v_x_i'2326 =
          Obj.magic
            Boot.Intrinsics.T.linear_get_exn
            v_x'2321
            v_i'2325
        in
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2322
          v_i'2325
          (if
             Obj.magic
               (Obj.magic
                  ((>) : float -> float -> bool)
                  v_x_i'2326
                  0.)
           then
             v_x_i'2326
           else
             Obj.magic
               0.);;
let v_tensorOpExn__z___ReLU_x_ =
  fun v_s_max'2320 ->
    fun v_x'2321 ->
      fun v_z'2322 ->
        let v_s'2323 =
          Obj.magic
            Boot.Intrinsics.Mseq.get
            (Obj.magic
               Boot.Intrinsics.T.shape
               v_x'2321)
            0
        in
        let v_m'2324 =
          Obj.magic
            Int.div
            (Obj.magic
               v_tensorSize'2264
               v_x'2321)
            v_s'2323
        in
        let rec v_loop'6048 =
            fun v_acc'6049 ->
              fun v_i'6050 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6050
                       (Obj.magic
                          Int.mul
                          v_s_max'2320
                          v_m'2324))
                then
                  let v_t'6051 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2327
                           v_x'2321
                           v_z'2322)
                      v_acc'6049
                      v_i'6050
                  in
                  Obj.magic
                    v_loop'6048
                    v_t'6051
                    (Obj.magic
                       Int.add
                       v_i'6050
                       1)
                else
                  Obj.magic
                    v_acc'6049
        in Obj.magic
          v_loop'6048
          ()
          0;;
let v_iterfun'2337 =
  fun v_x'2330 ->
    fun v_z'2332 ->
      fun v_i'2335 ->
        let v_x_i'2336 =
          Obj.magic
            Boot.Intrinsics.T.linear_get_exn
            v_x'2330
            v_i'2335
        in
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2332
          v_i'2335
          (Obj.magic
             v_exp
             v_x_i'2336);;
let v_t'5165 =
  fun v_z'2332 ->
    fun v_offset'2340 ->
      fun v_acc'2341 ->
        fun v_i'2342 ->
          Obj.magic
            Float.add
            v_acc'2341
            (Obj.magic
               Boot.Intrinsics.T.linear_get_exn
               v_z'2332
               (Obj.magic
                  Int.add
                  v_offset'2340
                  v_i'2342));;
let v_iterfunSummarize =
  fun v_expsumbuf'2331 ->
    fun v_z'2332 ->
      fun v_m'2334 ->
        fun v_s_idx'2339 ->
          let v_offset'2340 =
            Obj.magic
              Int.mul
              v_s_idx'2339
              v_m'2334
          in
          let v_expsum'2343 =
            let rec v_loop'6052 =
                fun v_acc'6053 ->
                  fun v_i'6054 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6054
                           v_m'2334)
                    then
                      let v_t'6055 =
                        Obj.magic
                          v_t'5165
                          v_z'2332
                          v_offset'2340
                          v_acc'6053
                          v_i'6054
                      in
                      Obj.magic
                        v_loop'6052
                        v_t'6055
                        (Obj.magic
                           Int.add
                           v_i'6054
                           1)
                    else
                      Obj.magic
                        v_acc'6053
            in Obj.magic
              v_loop'6052
              0.
              0
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_expsumbuf'2331
            v_s_idx'2339
            v_expsum'2343;;
let v_iterfunRegularize =
  fun v_expsumbuf'2331 ->
    fun v_z'2332 ->
      fun v_m'2334 ->
        fun v_i'2346 ->
          let v_s_idx'2347 =
            Obj.magic
              Int.div
              v_i'2346
              v_m'2334
          in
          let v_expsum'2348 =
            Obj.magic
              Boot.Intrinsics.T.linear_get_exn
              v_expsumbuf'2331
              v_s_idx'2347
          in
          let v_z_i'2349 =
            Obj.magic
              Boot.Intrinsics.T.linear_get_exn
              v_z'2332
              v_i'2346
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_z'2332
            v_i'2346
            (Obj.magic
               Float.div
               v_z_i'2349
               v_expsum'2348);;
let v_tensorOpExn__z___SoftMax_x_ =
  fun v_s_max'2329 ->
    fun v_x'2330 ->
      fun v_expsumbuf'2331 ->
        fun v_z'2332 ->
          let v_s'2333 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_x'2330)
              0
          in
          let v_m'2334 =
            Obj.magic
              Int.div
              (Obj.magic
                 v_tensorSize'2264
                 v_x'2330)
              v_s'2333
          in
          let v_'2338 =
            let rec v_loop'6056 =
                fun v_acc'6057 ->
                  fun v_i'6058 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6058
                           (Obj.magic
                              Int.mul
                              v_s_max'2329
                              v_m'2334))
                    then
                      let v_t'6059 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_iterfun'2337
                               v_x'2330
                               v_z'2332)
                          v_acc'6057
                          v_i'6058
                      in
                      Obj.magic
                        v_loop'6056
                        v_t'6059
                        (Obj.magic
                           Int.add
                           v_i'6058
                           1)
                    else
                      Obj.magic
                        v_acc'6057
            in Obj.magic
              v_loop'6056
              ()
              0
          in
          let v_'2345 =
            let rec v_loop'6060 =
                fun v_acc'6061 ->
                  fun v_i'6062 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6062
                           v_s_max'2329)
                    then
                      let v_t'6063 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_iterfunSummarize
                               v_expsumbuf'2331
                               v_z'2332
                               v_m'2334)
                          v_acc'6061
                          v_i'6062
                      in
                      Obj.magic
                        v_loop'6060
                        v_t'6063
                        (Obj.magic
                           Int.add
                           v_i'6062
                           1)
                    else
                      Obj.magic
                        v_acc'6061
            in Obj.magic
              v_loop'6060
              ()
              0
          in
          let rec v_loop'6064 =
              fun v_acc'6065 ->
                fun v_i'6066 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6066
                         (Obj.magic
                            Int.mul
                            v_s_max'2329
                            v_m'2334))
                  then
                    let v_t'6067 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfunRegularize
                             v_expsumbuf'2331
                             v_z'2332
                             v_m'2334)
                        v_acc'6065
                        v_i'6066
                    in
                    Obj.magic
                      v_loop'6064
                      v_t'6067
                      (Obj.magic
                         Int.add
                         v_i'6066
                         1)
                  else
                    Obj.magic
                      v_acc'6065
          in Obj.magic
            v_loop'6064
            ()
            0;;
let v_iterfun'2361 =
  fun v_h'2353 ->
    fun v_dldh'2354 ->
      fun v_z'2355 ->
        fun v_i'2358 ->
          let v_dhds_ii'2359 =
            if
              Obj.magic
                (Obj.magic
                   ((>) : float -> float -> bool)
                   (Obj.magic
                      Boot.Intrinsics.T.linear_get_exn
                      v_h'2353
                      v_i'2358)
                   0.)
            then
              1.
            else
              Obj.magic
                0.
          in
          let v_dldh_i'2360 =
            Obj.magic
              Boot.Intrinsics.T.linear_get_exn
              v_dldh'2354
              v_i'2358
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_z'2355
            v_i'2358
            (Obj.magic
               Float.mul
               v_dhds_ii'2359
               v_dldh_i'2360);;
let v_tensorOpExn__z___d_dx_l_ReLU_x__ =
  fun v_s_max'2352 ->
    fun v_h'2353 ->
      fun v_dldh'2354 ->
        fun v_z'2355 ->
          let v_s'2356 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_h'2353)
              0
          in
          let v_m'2357 =
            Obj.magic
              Int.div
              (Obj.magic
                 v_tensorSize'2264
                 v_h'2353)
              v_s'2356
          in
          let rec v_loop'6068 =
              fun v_acc'6069 ->
                fun v_i'6070 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6070
                         (Obj.magic
                            Int.mul
                            v_s_max'2352
                            v_m'2357))
                  then
                    let v_t'6071 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2361
                             v_h'2353
                             v_dldh'2354
                             v_z'2355)
                        v_acc'6069
                        v_i'6070
                    in
                    Obj.magic
                      v_loop'6068
                      v_t'6071
                      (Obj.magic
                         Int.add
                         v_i'6070
                         1)
                  else
                    Obj.magic
                      v_acc'6069
          in Obj.magic
            v_loop'6068
            ()
            0;;
let v_t'5166 =
  fun v_p'2364 ->
    fun v_dldp'2365 ->
      fun v_s_offset'2371 ->
        fun v_i'2372 ->
          fun v_p_i'2373 ->
            fun v_acc'2374 ->
              fun v_j'2375 ->
                let v_s_ij'2377 =
                  if
                    Obj.magic
                      (Obj.magic
                         Int.equal
                         v_j'2375
                         v_i'2372)
                  then
                    Obj.magic
                      Float.sub
                      v_p_i'2373
                      (Obj.magic
                         Float.mul
                         v_p_i'2373
                         v_p_i'2373)
                  else
                    Obj.magic
                      (let v_p_j'2376 =
                         Obj.magic
                           Boot.Intrinsics.T.linear_get_exn
                           v_p'2364
                           (Obj.magic
                              Int.add
                              v_s_offset'2371
                              v_j'2375)
                       in
                       Obj.magic
                         Float.neg
                         (Obj.magic
                            Float.mul
                            v_p_i'2373
                            v_p_j'2376))
                in
                let v_dldp_j'2378 =
                  Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_dldp'2365
                    (Obj.magic
                       Int.add
                       v_s_offset'2371
                       v_j'2375)
                in
                Obj.magic
                  Float.add
                  v_acc'2374
                  (Obj.magic
                     Float.mul
                     v_dldp_j'2378
                     v_s_ij'2377);;
let v_iterfun'2380 =
  fun v_p'2364 ->
    fun v_dldp'2365 ->
      fun v_z'2366 ->
        fun v_m'2368 ->
          fun v_i'2369 ->
            let v_s_idx'2370 =
              Obj.magic
                Int.div
                v_i'2369
                v_m'2368
            in
            let v_s_offset'2371 =
              Obj.magic
                Int.mul
                v_s_idx'2370
                v_m'2368
            in
            let v_i'2372 =
              Obj.magic
                Int.rem
                v_i'2369
                v_m'2368
            in
            let v_p_i'2373 =
              Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_p'2364
                (Obj.magic
                   Int.add
                   v_s_offset'2371
                   v_i'2372)
            in
            let v_v'2379 =
              let rec v_loop'6072 =
                  fun v_acc'6073 ->
                    fun v_i'6074 ->
                      if
                        Obj.magic
                          (Obj.magic
                             ((<) : int -> int -> bool)
                             v_i'6074
                             v_m'2368)
                      then
                        let v_t'6075 =
                          Obj.magic
                            v_t'5166
                            v_p'2364
                            v_dldp'2365
                            v_s_offset'2371
                            v_i'2372
                            v_p_i'2373
                            v_acc'6073
                            v_i'6074
                        in
                        Obj.magic
                          v_loop'6072
                          v_t'6075
                          (Obj.magic
                             Int.add
                             v_i'6074
                             1)
                      else
                        Obj.magic
                          v_acc'6073
              in Obj.magic
                v_loop'6072
                0.
                0
            in
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2366
              (Obj.magic
                 Int.add
                 v_s_offset'2371
                 v_i'2372)
              v_v'2379;;
let v_tensorOpExn__z___d_dx_l_SoftMax_x___ =
  fun v_s_max'2363 ->
    fun v_p'2364 ->
      fun v_dldp'2365 ->
        fun v_z'2366 ->
          let v_s'2367 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_p'2364)
              0
          in
          let v_m'2368 =
            Obj.magic
              Int.div
              (Obj.magic
                 v_tensorSize'2264
                 v_p'2364)
              v_s'2367
          in
          let rec v_loop'6076 =
              fun v_acc'6077 ->
                fun v_i'6078 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6078
                         (Obj.magic
                            Int.mul
                            v_s_max'2363
                            v_m'2368))
                  then
                    let v_t'6079 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2380
                             v_p'2364
                             v_dldp'2365
                             v_z'2366
                             v_m'2368)
                        v_acc'6077
                        v_i'6078
                    in
                    Obj.magic
                      v_loop'6076
                      v_t'6079
                      (Obj.magic
                         Int.add
                         v_i'6078
                         1)
                  else
                    Obj.magic
                      v_acc'6077
          in Obj.magic
            v_loop'6076
            ()
            0;;
let v_iterfun'2388 =
  fun v_x'2383 ->
    fun v_z'2384 ->
      fun v_i'2387 ->
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2384
          v_i'2387
          (Obj.magic
             Boot.Intrinsics.T.linear_get_exn
             v_x'2383
             v_i'2387);;
let v_tensorOpExn__z___x =
  fun v_s_max'2382 ->
    fun v_x'2383 ->
      fun v_z'2384 ->
        let v_s'2385 =
          Obj.magic
            Boot.Intrinsics.Mseq.get
            (Obj.magic
               Boot.Intrinsics.T.shape
               v_x'2383)
            0
        in
        let v_m'2386 =
          Obj.magic
            Int.div
            (Obj.magic
               v_tensorSize'2264
               v_x'2383)
            v_s'2385
        in
        let rec v_loop'6080 =
            fun v_acc'6081 ->
              fun v_i'6082 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6082
                       (Obj.magic
                          Int.mul
                          v_s_max'2382
                          v_m'2386))
                then
                  let v_t'6083 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2388
                           v_x'2383
                           v_z'2384)
                      v_acc'6081
                      v_i'6082
                  in
                  Obj.magic
                    v_loop'6080
                    v_t'6083
                    (Obj.magic
                       Int.add
                       v_i'6082
                       1)
                else
                  Obj.magic
                    v_acc'6081
        in Obj.magic
          v_loop'6080
          ()
          0;;
let v_iterfun'2396 =
  fun v_c'2391 ->
    fun v_z'2392 ->
      fun v_i'2395 ->
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2392
          v_i'2395
          (Obj.magic
             Float.mul
             (Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_z'2392
                v_i'2395)
             v_c'2391);;
let v_tensorOpExn__z____scalar_c_ =
  fun v_s_max'2390 ->
    fun v_c'2391 ->
      fun v_z'2392 ->
        let v_s'2393 =
          Obj.magic
            Boot.Intrinsics.Mseq.get
            (Obj.magic
               Boot.Intrinsics.T.shape
               v_z'2392)
            0
        in
        let v_m'2394 =
          Obj.magic
            Int.div
            (Obj.magic
               v_tensorSize'2264
               v_z'2392)
            v_s'2393
        in
        let rec v_loop'6084 =
            fun v_acc'6085 ->
              fun v_i'6086 ->
                if
                  Obj.magic
                    (Obj.magic
                       ((<) : int -> int -> bool)
                       v_i'6086
                       (Obj.magic
                          Int.mul
                          v_s_max'2390
                          v_m'2394))
                then
                  let v_t'6087 =
                    Obj.magic
                      (fun nv_ ->
                         Obj.magic
                           v_iterfun'2396
                           v_c'2391
                           v_z'2392)
                      v_acc'6085
                      v_i'6086
                  in
                  Obj.magic
                    v_loop'6084
                    v_t'6087
                    (Obj.magic
                       Int.add
                       v_i'6086
                       1)
                else
                  Obj.magic
                    v_acc'6085
        in Obj.magic
          v_loop'6084
          ()
          0;;
let v_iterfun'2402 =
  fun v_c'2398 ->
    fun v_z'2399 ->
      fun v_i'2401 ->
        Obj.magic
          Boot.Intrinsics.T.linear_set_exn
          v_z'2399
          v_i'2401
          v_c'2398;;
let v_tensorOpExn__Z___scalar_c_ =
  fun v_c'2398 ->
    fun v_z'2399 ->
      let v_m'2400 =
        Obj.magic
          v_tensorSize'2264
          v_z'2399
      in
      let rec v_loop'6088 =
          fun v_acc'6089 ->
            fun v_i'6090 ->
              if
                Obj.magic
                  (Obj.magic
                     ((<) : int -> int -> bool)
                     v_i'6090
                     v_m'2400)
              then
                let v_t'6091 =
                  Obj.magic
                    (fun nv_ ->
                       Obj.magic
                         v_iterfun'2402
                         v_c'2398
                         v_z'2399)
                    v_acc'6089
                    v_i'6090
                in
                Obj.magic
                  v_loop'6088
                  v_t'6091
                  (Obj.magic
                     Int.add
                     v_i'6090
                     1)
              else
                Obj.magic
                  v_acc'6089
      in Obj.magic
        v_loop'6088
        ()
        0;;
let v_iterfun'2411 =
  fun v_x'2405 ->
    fun v_c'2406 ->
      fun v_z'2407 ->
        fun v_x_offset'2409 ->
          fun v_i'2410 ->
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2407
              v_i'2410
              (Obj.magic
                 Float.add
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_z'2407
                    v_i'2410)
                 (Obj.magic
                    Float.mul
                    (Obj.magic
                       Boot.Intrinsics.T.linear_get_exn
                       v_x'2405
                       (Obj.magic
                          Int.add
                          v_i'2410
                          v_x_offset'2409))
                    v_c'2406));;
let v_tensorOpExn__Z____x___scalar_c_ =
  fun v_s_idx'2404 ->
    fun v_x'2405 ->
      fun v_c'2406 ->
        fun v_z'2407 ->
          let v_m'2408 =
            Obj.magic
              v_tensorSize'2264
              v_z'2407
          in
          let v_x_offset'2409 =
            Obj.magic
              Int.mul
              v_s_idx'2404
              v_m'2408
          in
          let rec v_loop'6092 =
              fun v_acc'6093 ->
                fun v_i'6094 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6094
                         v_m'2408)
                  then
                    let v_t'6095 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2411
                             v_x'2405
                             v_c'2406
                             v_z'2407
                             v_x_offset'2409)
                        v_acc'6093
                        v_i'6094
                    in
                    Obj.magic
                      v_loop'6092
                      v_t'6095
                      (Obj.magic
                         Int.add
                         v_i'6094
                         1)
                  else
                    Obj.magic
                      v_acc'6093
          in Obj.magic
            v_loop'6092
            ()
            0;;
let v_iterfun'2421 =
  fun v_x'2414 ->
    fun v_c'2415 ->
      fun v_z'2416 ->
        fun v_z_offset'2418 ->
          fun v_i'2419 ->
            let v_z_idx'2420 =
              Obj.magic
                Int.add
                v_i'2419
                v_z_offset'2418
            in
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2416
              v_z_idx'2420
              (Obj.magic
                 Float.add
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_z'2416
                    v_z_idx'2420)
                 (Obj.magic
                    Float.mul
                    (Obj.magic
                       Boot.Intrinsics.T.linear_get_exn
                       v_x'2414
                       v_i'2419)
                    v_c'2415));;
let v_tensorOpExn__z____X___scalar_c_ =
  fun v_s_idx'2413 ->
    fun v_x'2414 ->
      fun v_c'2415 ->
        fun v_z'2416 ->
          let v_m'2417 =
            Obj.magic
              v_tensorSize'2264
              v_x'2414
          in
          let v_z_offset'2418 =
            Obj.magic
              Int.mul
              v_s_idx'2413
              v_m'2417
          in
          let rec v_loop'6096 =
              fun v_acc'6097 ->
                fun v_i'6098 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6098
                         v_m'2417)
                  then
                    let v_t'6099 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2421
                             v_x'2414
                             v_c'2415
                             v_z'2416
                             v_z_offset'2418)
                        v_acc'6097
                        v_i'6098
                    in
                    Obj.magic
                      v_loop'6096
                      v_t'6099
                      (Obj.magic
                         Int.add
                         v_i'6098
                         1)
                  else
                    Obj.magic
                      v_acc'6097
          in Obj.magic
            v_loop'6096
            ()
            0;;
let v_iterfun'2432 =
  fun v_y'2424 ->
    fun v_c'2425 ->
      fun v_z'2426 ->
        fun v_m'2427 ->
          fun v_i'2428 ->
            let v_idx'2429 =
              Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_y'2424
                v_i'2428
            in
            let v_offset'2430 =
              Obj.magic
                Int.mul
                v_i'2428
                v_m'2427
            in
            let v_z_idx'2431 =
              Obj.magic
                Int.add
                v_idx'2429
                v_offset'2430
            in
            Obj.magic
              Boot.Intrinsics.T.linear_set_exn
              v_z'2426
              v_z_idx'2431
              (Obj.magic
                 Float.add
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_z'2426
                    v_z_idx'2431)
                 v_c'2425);;
let v_tensorOpExp__z____1_Hot_y____scalar_c_ =
  fun v_s_max'2423 ->
    fun v_y'2424 ->
      fun v_c'2425 ->
        fun v_z'2426 ->
          let v_m'2427 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_z'2426)
              1
          in
          let rec v_loop'6100 =
              fun v_acc'6101 ->
                fun v_i'6102 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6102
                         v_s_max'2423)
                  then
                    let v_t'6103 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2432
                             v_y'2424
                             v_c'2425
                             v_z'2426
                             v_m'2427)
                        v_acc'6101
                        v_i'6102
                    in
                    Obj.magic
                      v_loop'6100
                      v_t'6103
                      (Obj.magic
                         Int.add
                         v_i'6102
                         1)
                  else
                    Obj.magic
                      v_acc'6101
          in Obj.magic
            v_loop'6100
            ()
            0;;
let v_t'5167 =
  fun v_z'2437 ->
    fun v_offset'2441 ->
      fun v_idx'2442 ->
        fun v_v'2443 ->
          fun v_j'2444 ->
            if
              Obj.magic
                (Obj.magic
                   Int.equal
                   v_j'2444
                   v_idx'2442)
            then
              Obj.magic
                Boot.Intrinsics.T.linear_set_exn
                v_z'2437
                (Obj.magic
                   Int.add
                   v_j'2444
                   v_offset'2441)
                v_v'2443
            else
              Obj.magic
                (Obj.magic
                   Boot.Intrinsics.T.linear_set_exn
                   v_z'2437
                   (Obj.magic
                      Int.add
                      v_j'2444
                      v_offset'2441)
                   0.);;
let v_iterfun'2445 =
  fun v_y'2435 ->
    fun v_x'2436 ->
      fun v_z'2437 ->
        fun v_m'2439 ->
          fun v_i'2440 ->
            let v_offset'2441 =
              Obj.magic
                Int.mul
                v_i'2440
                v_m'2439
            in
            let v_idx'2442 =
              Obj.magic
                Boot.Intrinsics.T.linear_get_exn
                v_y'2435
                v_i'2440
            in
            let v_v'2443 =
              Obj.magic
                Float.neg
                (Obj.magic
                   Float.div
                   1.
                   (Obj.magic
                      Boot.Intrinsics.T.linear_get_exn
                      v_x'2436
                      (Obj.magic
                         Int.add
                         v_idx'2442
                         v_offset'2441)))
            in
            let rec v_loop'6104 =
                fun v_acc'6105 ->
                  fun v_i'6106 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6106
                           v_m'2439)
                    then
                      let v_t'6107 =
                        Obj.magic
                          (fun nv_ ->
                             Obj.magic
                               v_t'5167
                               v_z'2437
                               v_offset'2441
                               v_idx'2442
                               v_v'2443)
                          v_acc'6105
                          v_i'6106
                      in
                      Obj.magic
                        v_loop'6104
                        v_t'6107
                        (Obj.magic
                           Int.add
                           v_i'6106
                           1)
                    else
                      Obj.magic
                        v_acc'6105
            in Obj.magic
              v_loop'6104
              ()
              0;;
let v_tensorOpExn__z___1_Hot_y____scalar__1__x_T___1_Hot_y___ =
  fun v_s_max'2434 ->
    fun v_y'2435 ->
      fun v_x'2436 ->
        fun v_z'2437 ->
          let v_s'2438 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_x'2436)
              0
          in
          let v_m'2439 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              (Obj.magic
                 Boot.Intrinsics.T.shape
                 v_x'2436)
              1
          in
          let rec v_loop'6108 =
              fun v_acc'6109 ->
                fun v_i'6110 ->
                  if
                    Obj.magic
                      (Obj.magic
                         ((<) : int -> int -> bool)
                         v_i'6110
                         v_s_max'2434)
                  then
                    let v_t'6111 =
                      Obj.magic
                        (fun nv_ ->
                           Obj.magic
                             v_iterfun'2445
                             v_y'2435
                             v_x'2436
                             v_z'2437
                             v_m'2439)
                        v_acc'6109
                        v_i'6110
                    in
                    Obj.magic
                      v_loop'6108
                      v_t'6111
                      (Obj.magic
                         Int.add
                         v_i'6110
                         1)
                  else
                    Obj.magic
                      v_acc'6109
          in Obj.magic
            v_loop'6108
            ()
            0;;
let v_t'5168 =
  fun v_z'2447 ->
    fun v_m'2449 ->
      fun v_i'2450 ->
        fun v_acc'2451 ->
          fun v_j'2452 ->
            let v_s_idx'2453 =
              Obj.magic
                Int.add
                v_j'2452
                1
            in
            let v_s_offset'2454 =
              Obj.magic
                Int.mul
                v_s_idx'2453
                v_m'2449
            in
            Obj.magic
              Float.add
              v_acc'2451
              (Obj.magic
                 Boot.Intrinsics.T.linear_get_exn
                 v_z'2447
                 (Obj.magic
                    Int.add
                    v_s_offset'2454
                    v_i'2450));;
let v_iterfun =
  fun v_z'2447 ->
    fun v_s'2448 ->
      fun v_m'2449 ->
        fun v_i'2450 ->
          let v_v'2455 =
            let rec v_loop'6112 =
                fun v_acc'6113 ->
                  fun v_i'6114 ->
                    if
                      Obj.magic
                        (Obj.magic
                           ((<) : int -> int -> bool)
                           v_i'6114
                           (Obj.magic
                              Int.sub
                              v_s'2448
                              1))
                    then
                      let v_t'6115 =
                        Obj.magic
                          v_t'5168
                          v_z'2447
                          v_m'2449
                          v_i'2450
                          v_acc'6113
                          v_i'6114
                      in
                      Obj.magic
                        v_loop'6112
                        v_t'6115
                        (Obj.magic
                           Int.add
                           v_i'6114
                           1)
                    else
                      Obj.magic
                        v_acc'6113
            in Obj.magic
              v_loop'6112
              (Obj.magic
                 Boot.Intrinsics.T.linear_get_exn
                 v_z'2447
                 v_i'2450)
              0
          in
          Obj.magic
            Boot.Intrinsics.T.linear_set_exn
            v_z'2447
            v_i'2450
            v_v'2455;;
let v_tensorOpExn__Dim1Reduce_z__dst___z_0__op_____ =
  fun v_z'2447 ->
    let v_s'2448 =
      Obj.magic
        Boot.Intrinsics.Mseq.get
        (Obj.magic
           Boot.Intrinsics.T.shape
           v_z'2447)
        0
    in
    let v_m'2449 =
      Obj.magic
        Int.div
        (Obj.magic
           v_tensorSize'2264
           v_z'2447)
        v_s'2448
    in
    let rec v_loop'6116 =
        fun v_acc'6117 ->
          fun v_i'6118 ->
            if
              Obj.magic
                (Obj.magic
                   ((<) : int -> int -> bool)
                   v_i'6118
                   v_m'2449)
            then
              let v_t'6119 =
                Obj.magic
                  (fun nv_ ->
                     Obj.magic
                       v_iterfun
                       v_z'2447
                       v_s'2448
                       v_m'2449)
                  v_acc'6117
                  v_i'6118
              in
              Obj.magic
                v_loop'6116
                v_t'6119
                (Obj.magic
                   Int.add
                   v_i'6118
                   1)
            else
              Obj.magic
                v_acc'6117
    in Obj.magic
      v_loop'6116
      ()
      0;;
let v_nnCompType_FullyConnected =
  0;;
let v_nnCompType_ReLU =
  1;;
let v_nnCompType_SoftMax =
  2;;
let v_t'5169 =
  fun v_'2469 ->
    0.;;
let v_t'5170 =
  fun v_'2470 ->
    0.;;
let v_t'5171 =
  fun v_'2471 ->
    0.;;
let v_t'5172 =
  fun v_'2472 ->
    0.;;
let v_t'5173 =
  fun v_'2473 ->
    0.;;
let v_t'5174 =
  fun v_'2474 ->
    0.;;
let v_t'5175 =
  fun v_'2475 ->
    0.;;
let v_t'5176 =
  fun v_'2476 ->
    0.;;
let v_t'5177 =
  fun v_'2477 ->
    0.;;
let v_t'5178 =
  fun v_'2478 ->
    0.;;
let v_t'5179 =
  fun v_'2479 ->
    0.;;
let v_t'5180 =
  fun v_'2480 ->
    0.;;
let v_t'5181 =
  fun v_'2481 ->
    0.;;
let v_t'5182 =
  fun v_'2482 ->
    0.;;
let v_t'5183 =
  fun v_'2483 ->
    0.;;
let v_t'5184 =
  fun v_'2484 ->
    0.;;
let v_t'5185 =
  fun v_'2485 ->
    0.;;
let v_t'5186 =
  fun v_'2486 ->
    0.;;
let v_t'5187 =
  fun v_'2487 ->
    0.;;
let v_nnComponentMakeExn =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_indim'2462 ->
              fun v_outdim'2463 ->
                fun v_weights'2464 ->
                  fun v_max_batchsize'2465 ->
                    fun v_name'2466 ->
                      if
                        Obj.magic
                          (Obj.magic
                             v_eqString
                             v_eqSeq
                             v_name'2466
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
                                  v_weights'2464)
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
                            (let v_w'2467 =
                               Obj.magic
                                 Boot.Intrinsics.Mseq.get
                                 v_weights'2464
                                 0
                             in
                             let v_b'2468 =
                               Obj.magic
                                 Boot.Intrinsics.Mseq.get
                                 v_weights'2464
                                 1
                             in
                             if
                               Obj.magic
                                 (Obj.magic
                                    ((<>) : int -> int -> bool)
                                    (Obj.magic
                                       Boot.Intrinsics.T.rank
                                       v_w'2467)
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
                                            v_b'2468)
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
                                                    v_w'2467)
                                                 0)
                                              (Obj.magic
                                                 v_tensorSize'2264
                                                 v_b'2468))
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
                                           (CRec'6148 { lty =
                                                (Obj.repr
                                                  v_nnCompType_FullyConnected);
                                              lw =
                                                (Obj.repr
                                                  v_w'2467);
                                              lb =
                                                (Obj.repr
                                                  v_b'2468);
                                              lw_grads =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2465
                                                        (Obj.magic
                                                           Boot.Intrinsics.T.shape
                                                           v_w'2467))
                                                     v_t'5169));
                                              lb_grads =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2465
                                                        (Obj.magic
                                                           Boot.Intrinsics.T.shape
                                                           v_b'2468))
                                                     v_t'5170));
                                              lout_bufs =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2465
                                                        v_outdim'2463)
                                                     v_t'5171));
                                              lin_grads =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.cons
                                                        v_max_batchsize'2465
                                                        v_indim'2462)
                                                     v_t'5172));
                                              lsoftmax_bufs =
                                                (Obj.repr
                                                  (Obj.magic
                                                     Boot.Intrinsics.T.create_float_packed
                                                     (Obj.magic
                                                        Boot.Intrinsics.Mseq.Helpers.of_array
                                                        [| (1) |])
                                                     v_t'5173)) }))))
                      else
                        Obj.magic
                          (if
                             Obj.magic
                               (Obj.magic
                                  v_eqString
                                  v_eqSeq
                                  v_name'2466
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (82);
                                       (101);
                                       (76);
                                       (85) |]))
                           then
                             CRec'6148 { lty =
                                 (Obj.repr
                                   v_nnCompType_ReLU);
                               lw =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (1) |])
                                      v_t'5174));
                               lb =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (1) |])
                                      v_t'5175));
                               lw_grads =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (1) |])
                                      v_t'5176));
                               lb_grads =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (1) |])
                                      v_t'5177));
                               lout_bufs =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.cons
                                         v_max_batchsize'2465
                                         v_outdim'2463)
                                      v_t'5178));
                               lin_grads =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.cons
                                         v_max_batchsize'2465
                                         v_indim'2462)
                                      v_t'5179));
                               lsoftmax_bufs =
                                 (Obj.repr
                                   (Obj.magic
                                      Boot.Intrinsics.T.create_float_packed
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (1) |])
                                      v_t'5180)) }
                           else
                             Obj.magic
                               (if
                                  Obj.magic
                                    (Obj.magic
                                       v_eqString
                                       v_eqSeq
                                       v_name'2466
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
                                  CRec'6148 { lty =
                                      (Obj.repr
                                        v_nnCompType_SoftMax);
                                    lw =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (1) |])
                                           v_t'5181));
                                    lb =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (1) |])
                                           v_t'5182));
                                    lw_grads =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (1) |])
                                           v_t'5183));
                                    lb_grads =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (1) |])
                                           v_t'5184));
                                    lout_bufs =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.cons
                                              v_max_batchsize'2465
                                              v_outdim'2463)
                                           v_t'5185));
                                    lin_grads =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.cons
                                              v_max_batchsize'2465
                                              v_indim'2462)
                                           v_t'5186));
                                    lsoftmax_bufs =
                                      (Obj.repr
                                        (Obj.magic
                                           Boot.Intrinsics.T.create_float_packed
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.Helpers.of_array
                                              [| (Obj.magic
                                                  v_max_batchsize'2465) |])
                                           v_t'5187)) }
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
                                                 v_name'2466);
                                               (Obj.magic
                                                 (Obj.magic
                                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                                    [| (34) |])) |])))));;
let v_nnComponentOutBufs =
  fun v_comp'2489 ->
    let
      CRec'6148 ({lout_bufs = v_X'2490})
    =
      Obj.magic
        v_comp'2489
    in
    Obj.magic
      v_X'2490;;
let v_nnComponentApplyExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2492 ->
          fun v_inputs'2493 ->
            fun v_comp'2494 ->
              let v_ty'2496 =
                let
                  CRec'6148 ({lty = v_X'2495})
                =
                  Obj.magic
                    v_comp'2494
                in
                Obj.magic
                  v_X'2495
              in
              if
                Obj.magic
                  (Obj.magic
                     Int.equal
                     v_ty'2496
                     v_nnCompType_FullyConnected)
              then
                let v_'2500 =
                  Obj.magic
                    v_tensorOpExn__z___Wx_B
                    v_s_max'2492
                    (let
                       CRec'6148 ({lw = v_X'2497})
                     =
                       Obj.magic
                         v_comp'2494
                     in
                     Obj.magic
                       v_X'2497)
                    v_inputs'2493
                    (let
                       CRec'6148 ({lb = v_X'2498})
                     =
                       Obj.magic
                         v_comp'2494
                     in
                     Obj.magic
                       v_X'2498)
                    (let
                       CRec'6148 ({lout_bufs = v_X'2499})
                     =
                       Obj.magic
                         v_comp'2494
                     in
                     Obj.magic
                       v_X'2499)
                in
                let
                  CRec'6148 ({lout_bufs = v_X'2501})
                =
                  Obj.magic
                    v_comp'2494
                in
                Obj.magic
                  v_X'2501
              else
                Obj.magic
                  (if
                     Obj.magic
                       (Obj.magic
                          Int.equal
                          v_ty'2496
                          v_nnCompType_ReLU)
                   then
                     let v_'2503 =
                       Obj.magic
                         v_tensorOpExn__z___ReLU_x_
                         v_s_max'2492
                         v_inputs'2493
                         (let
                            CRec'6148 ({lout_bufs = v_X'2502})
                          =
                            Obj.magic
                              v_comp'2494
                          in
                          Obj.magic
                            v_X'2502)
                     in
                     let
                       CRec'6148 ({lout_bufs = v_X'2504})
                     =
                       Obj.magic
                         v_comp'2494
                     in
                     Obj.magic
                       v_X'2504
                   else
                     Obj.magic
                       (if
                          Obj.magic
                            (Obj.magic
                               Int.equal
                               v_ty'2496
                               v_nnCompType_SoftMax)
                        then
                          let v_'2507 =
                            Obj.magic
                              v_tensorOpExn__z___SoftMax_x_
                              v_s_max'2492
                              v_inputs'2493
                              (let
                                 CRec'6148 ({lsoftmax_bufs = v_X'2505})
                               =
                                 Obj.magic
                                   v_comp'2494
                               in
                               Obj.magic
                                 v_X'2505)
                              (let
                                 CRec'6148 ({lout_bufs = v_X'2506})
                               =
                                 Obj.magic
                                   v_comp'2494
                               in
                               Obj.magic
                                 v_X'2506)
                          in
                          let
                            CRec'6148 ({lout_bufs = v_X'2508})
                          =
                            Obj.magic
                              v_comp'2494
                          in
                          Obj.magic
                            v_X'2508
                        else
                          Obj.magic
                            (let
                               CRec'6148 ({lout_bufs = v_X'2509})
                             =
                               Obj.magic
                                 v_comp'2494
                             in
                             Obj.magic
                               v_X'2509)));;
let v_nnComponentBackpropExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2511 ->
          fun v_comp_inputs'2512 ->
            fun v_output_grads'2513 ->
              fun v_comp'2514 ->
                let v_ty'2516 =
                  let
                    CRec'6148 ({lty = v_X'2515})
                  =
                    Obj.magic
                      v_comp'2514
                  in
                  Obj.magic
                    v_X'2515
                in
                if
                  Obj.magic
                    (Obj.magic
                       Int.equal
                       v_ty'2516
                       v_nnCompType_FullyConnected)
                then
                  let v_'2518 =
                    Obj.magic
                      v_tensorOpExn__z___x
                      v_s_max'2511
                      v_output_grads'2513
                      (let
                         CRec'6148 ({lb_grads = v_X'2517})
                       =
                         Obj.magic
                           v_comp'2514
                       in
                       Obj.magic
                         v_X'2517)
                  in
                  let v_'2520 =
                    Obj.magic
                      v_tensorOpExn__z___x___y_T
                      v_s_max'2511
                      v_output_grads'2513
                      v_comp_inputs'2512
                      (let
                         CRec'6148 ({lw_grads = v_X'2519})
                       =
                         Obj.magic
                           v_comp'2514
                       in
                       Obj.magic
                         v_X'2519)
                  in
                  let v_'2523 =
                    Obj.magic
                      v_tensorOpExn__z____x_T___W__T
                      v_s_max'2511
                      v_output_grads'2513
                      (let
                         CRec'6148 ({lw = v_X'2521})
                       =
                         Obj.magic
                           v_comp'2514
                       in
                       Obj.magic
                         v_X'2521)
                      (let
                         CRec'6148 ({lin_grads = v_X'2522})
                       =
                         Obj.magic
                           v_comp'2514
                       in
                       Obj.magic
                         v_X'2522)
                  in
                  let
                    CRec'6148 ({lin_grads = v_X'2524})
                  =
                    Obj.magic
                      v_comp'2514
                  in
                  Obj.magic
                    v_X'2524
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            Int.equal
                            v_ty'2516
                            v_nnCompType_ReLU)
                     then
                       let v_'2527 =
                         Obj.magic
                           v_tensorOpExn__z___d_dx_l_ReLU_x__
                           v_s_max'2511
                           (let
                              CRec'6148 ({lout_bufs = v_X'2525})
                            =
                              Obj.magic
                                v_comp'2514
                            in
                            Obj.magic
                              v_X'2525)
                           v_output_grads'2513
                           (let
                              CRec'6148 ({lin_grads = v_X'2526})
                            =
                              Obj.magic
                                v_comp'2514
                            in
                            Obj.magic
                              v_X'2526)
                       in
                       let
                         CRec'6148 ({lin_grads = v_X'2528})
                       =
                         Obj.magic
                           v_comp'2514
                       in
                       Obj.magic
                         v_X'2528
                     else
                       Obj.magic
                         (if
                            Obj.magic
                              (Obj.magic
                                 Int.equal
                                 v_ty'2516
                                 v_nnCompType_SoftMax)
                          then
                            let v_'2531 =
                              Obj.magic
                                v_tensorOpExn__z___d_dx_l_SoftMax_x___
                                v_s_max'2511
                                (let
                                   CRec'6148 ({lout_bufs = v_X'2529})
                                 =
                                   Obj.magic
                                     v_comp'2514
                                 in
                                 Obj.magic
                                   v_X'2529)
                                v_output_grads'2513
                                (let
                                   CRec'6148 ({lin_grads = v_X'2530})
                                 =
                                   Obj.magic
                                     v_comp'2514
                                 in
                                 Obj.magic
                                   v_X'2530)
                            in
                            let
                              CRec'6148 ({lin_grads = v_X'2532})
                            =
                              Obj.magic
                                v_comp'2514
                            in
                            Obj.magic
                              v_X'2532
                          else
                            Obj.magic
                              (let
                                 CRec'6148 ({lin_grads = v_X'2533})
                               =
                                 Obj.magic
                                   v_comp'2514
                               in
                               Obj.magic
                                 v_X'2533)));;
let v_nnComponent_TEMP_SetGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2535 ->
      fun v_comp'2536 ->
        let v_ty'2538 =
          let
            CRec'6148 ({lty = v_X'2537})
          =
            Obj.magic
              v_comp'2536
          in
          Obj.magic
            v_X'2537
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2538
               v_nnCompType_FullyConnected)
        then
          let v_'2540 =
            Obj.magic
              v_tensorOpExn__Z___scalar_c_
              v_scalar'2535
              (let
                 CRec'6148 ({lw_grads = v_X'2539})
               =
                 Obj.magic
                   v_comp'2536
               in
               Obj.magic
                 v_X'2539)
          in
          Obj.magic
            v_tensorOpExn__Z___scalar_c_
            v_scalar'2535
            (let
               CRec'6148 ({lb_grads = v_X'2541})
             =
               Obj.magic
                 v_comp'2536
             in
             Obj.magic
               v_X'2541)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_ReduceGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_comp'2543 ->
      let v_ty'2545 =
        let
          CRec'6148 ({lty = v_X'2544})
        =
          Obj.magic
            v_comp'2543
        in
        Obj.magic
          v_X'2544
      in
      if
        Obj.magic
          (Obj.magic
             Int.equal
             v_ty'2545
             v_nnCompType_FullyConnected)
      then
        let v_'2547 =
          Obj.magic
            v_tensorOpExn__Dim1Reduce_z__dst___z_0__op_____
            (let
               CRec'6148 ({lw_grads = v_X'2546})
             =
               Obj.magic
                 v_comp'2543
             in
             Obj.magic
               v_X'2546)
        in
        Obj.magic
          v_tensorOpExn__Dim1Reduce_z__dst___z_0__op_____
          (let
             CRec'6148 ({lb_grads = v_X'2548})
           =
             Obj.magic
               v_comp'2543
           in
           Obj.magic
             v_X'2548)
      else
        Obj.magic
          ();;
let v_nnComponent_TEMP_ScaleGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2550 ->
      fun v_comp'2551 ->
        let v_ty'2553 =
          let
            CRec'6148 ({lty = v_X'2552})
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
              v_tensorOpExn__z____scalar_c_
              1
              v_scalar'2550
              (let
                 CRec'6148 ({lw_grads = v_X'2554})
               =
                 Obj.magic
                   v_comp'2551
               in
               Obj.magic
                 v_X'2554)
          in
          Obj.magic
            v_tensorOpExn__z____scalar_c_
            1
            v_scalar'2550
            (let
               CRec'6148 ({lb_grads = v_X'2556})
             =
               Obj.magic
                 v_comp'2551
             in
             Obj.magic
               v_X'2556)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_ApplyGradients =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2558 ->
      fun v_comp'2559 ->
        let v_ty'2561 =
          let
            CRec'6148 ({lty = v_X'2560})
          =
            Obj.magic
              v_comp'2559
          in
          Obj.magic
            v_X'2560
        in
        if
          Obj.magic
            (Obj.magic
               Int.equal
               v_ty'2561
               v_nnCompType_FullyConnected)
        then
          let v_'2564 =
            Obj.magic
              v_tensorOpExn__Z____x___scalar_c_
              0
              (let
                 CRec'6148 ({lw_grads = v_X'2562})
               =
                 Obj.magic
                   v_comp'2559
               in
               Obj.magic
                 v_X'2562)
              v_scalar'2558
              (let
                 CRec'6148 ({lw = v_X'2563})
               =
                 Obj.magic
                   v_comp'2559
               in
               Obj.magic
                 v_X'2563)
          in
          Obj.magic
            v_tensorOpExn__Z____x___scalar_c_
            0
            (let
               CRec'6148 ({lb_grads = v_X'2565})
             =
               Obj.magic
                 v_comp'2559
             in
             Obj.magic
               v_X'2565)
            v_scalar'2558
            (let
               CRec'6148 ({lb = v_X'2566})
             =
               Obj.magic
                 v_comp'2559
             in
             Obj.magic
               v_X'2566)
        else
          Obj.magic
            ();;
let v_nnComponent_TEMP_L2Regularize =
  fun v_nnCompType_FullyConnected ->
    fun v_scalar'2568 ->
      fun v_comp'2569 ->
        let v_ty'2571 =
          let
            CRec'6148 ({lty = v_X'2570})
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
          let v_'2574 =
            Obj.magic
              v_tensorOpExn__z____X___scalar_c_
              0
              (let
                 CRec'6148 ({lw = v_X'2572})
               =
                 Obj.magic
                   v_comp'2569
               in
               Obj.magic
                 v_X'2572)
              v_scalar'2568
              (let
                 CRec'6148 ({lw_grads = v_X'2573})
               =
                 Obj.magic
                   v_comp'2569
               in
               Obj.magic
                 v_X'2573)
          in
          Obj.magic
            v_tensorOpExn__z____X___scalar_c_
            0
            (let
               CRec'6148 ({lb = v_X'2575})
             =
               Obj.magic
                 v_comp'2569
             in
             Obj.magic
               v_X'2575)
            v_scalar'2568
            (let
               CRec'6148 ({lb_grads = v_X'2576})
             =
               Obj.magic
                 v_comp'2569
             in
             Obj.magic
               v_X'2576)
        else
          Obj.magic
            ();;
let v_nnComponentZeroGrad =
  fun v_nnCompType_FullyConnected ->
    fun v_comp'2578 ->
      Obj.magic
        v_nnComponent_TEMP_SetGradients
        v_nnCompType_FullyConnected
        0.
        v_comp'2578;;
let v_t'5188 =
  fun v_mu'2583 ->
    fun v_sigma'2584 ->
      fun v_'2585 ->
        Obj.magic
          v_gaussianSample
          v_mu'2583
          v_sigma'2584;;
let v_t'5189 =
  fun v_mu'2583 ->
    fun v_sigma'2584 ->
      fun v_'2587 ->
        Obj.magic
          v_gaussianSample
          v_mu'2583
          v_sigma'2584;;
let v_nnFullyConnected =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnCompType_FullyConnected ->
        fun v_nnCompType_ReLU ->
          fun v_nnCompType_SoftMax ->
            fun v_max_batchsize'2580 ->
              fun v_indim'2581 ->
                fun v_outdim'2582 ->
                  let v_mu'2583 =
                    0.
                  in
                  let v_sigma'2584 =
                    0.001
                  in
                  let v_w'2586 =
                    Obj.magic
                      Boot.Intrinsics.T.create_float_packed
                      (Obj.magic
                         Boot.Intrinsics.Mseq.Helpers.of_array
                         [| (Obj.magic
                             v_outdim'2582);
                           (Obj.magic
                             v_indim'2581) |])
                      (Obj.magic
                         v_t'5188
                         v_mu'2583
                         v_sigma'2584)
                  in
                  let v_b'2588 =
                    Obj.magic
                      Boot.Intrinsics.T.create_float_packed
                      (Obj.magic
                         Boot.Intrinsics.Mseq.Helpers.of_array
                         [| (Obj.magic
                             v_outdim'2582) |])
                      (Obj.magic
                         v_t'5189
                         v_mu'2583
                         v_sigma'2584)
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
                           v_indim'2581) |])
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_outdim'2582) |])
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_w'2586);
                         (Obj.magic
                           v_b'2588) |])
                    v_max_batchsize'2580
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
            fun v_max_batchsize'2590 ->
              fun v_dim'2591 ->
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
                         v_dim'2591) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (Obj.magic
                         v_dim'2591) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [|  |])
                  v_max_batchsize'2590
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
            fun v_max_batchsize'2593 ->
              fun v_dim'2594 ->
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
                         v_dim'2594) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [| (Obj.magic
                         v_dim'2594) |])
                  (Obj.magic
                     Boot.Intrinsics.Mseq.Helpers.of_array
                     [|  |])
                  v_max_batchsize'2593
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
let v_t'5190 =
  fun v_'2602 ->
    0.;;
let v_t'5191 =
  fun v_'2603 ->
    0.;;
let v_t'5192 =
  fun v_'2604 ->
    0.;;
let v_t'5193 =
  fun v_'2605 ->
    0.;;
let v_t'5194 =
  fun v_'2606 ->
    0.;;
let v_t'5195 =
  fun v_'2607 ->
    0.;;
let v_nnLossFunctionMakeExn =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnLossfnType_CrossEntropyLoss ->
        fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
          fun v_indim'2599 ->
            fun v_max_batchsize'2600 ->
              fun v_name'2601 ->
                if
                  Obj.magic
                    (Obj.magic
                       v_eqString
                       v_eqSeq
                       v_name'2601
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
                  CRec'6150 { lty =
                      (Obj.repr
                        v_nnLossfnType_CrossEntropyLoss);
                    lout_bufs =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.Helpers.of_array
                              [| (Obj.magic
                                  v_max_batchsize'2600) |])
                           v_t'5190));
                    lin_grads =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.cons
                              v_max_batchsize'2600
                              v_indim'2599)
                           v_t'5191));
                    lsoftmax_bufs =
                      (Obj.repr
                        (Obj.magic
                           Boot.Intrinsics.T.create_float_packed
                           (Obj.magic
                              Boot.Intrinsics.Mseq.Helpers.of_array
                              [| (1) |])
                           v_t'5192)) }
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            v_eqString
                            v_eqSeq
                            v_name'2601
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
                       CRec'6150 { lty =
                           (Obj.repr
                             v_nnLossfnType_SoftMaxCrossEntropyLoss);
                         lout_bufs =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (Obj.magic
                                       v_max_batchsize'2600) |])
                                v_t'5193));
                         lin_grads =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.cons
                                   v_max_batchsize'2600
                                   v_indim'2599)
                                v_t'5194));
                         lsoftmax_bufs =
                           (Obj.repr
                             (Obj.magic
                                Boot.Intrinsics.T.create_float_packed
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (Obj.magic
                                       v_max_batchsize'2600) |])
                                v_t'5195)) }
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
                                      v_name'2601);
                                    (Obj.magic
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (34) |])) |]))));;
let v_nnLossFunctionBackpropExn =
  fun v_nnLossfnType_CrossEntropyLoss ->
    fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
      fun v_s_max'2609 ->
        fun v_inputs'2610 ->
          fun v_expecteds'2611 ->
            fun v_lossfn'2612 ->
              let v_ty'2614 =
                let
                  CRec'6150 ({lty = v_X'2613})
                =
                  Obj.magic
                    v_lossfn'2612
                in
                Obj.magic
                  v_X'2613
              in
              if
                Obj.magic
                  (Obj.magic
                     Int.equal
                     v_ty'2614
                     v_nnLossfnType_CrossEntropyLoss)
              then
                let v_'2616 =
                  Obj.magic
                    v_tensorOpExn__z___1_Hot_y____scalar__1__x_T___1_Hot_y___
                    v_s_max'2609
                    v_expecteds'2611
                    v_inputs'2610
                    (let
                       CRec'6150 ({lin_grads = v_X'2615})
                     =
                       Obj.magic
                         v_lossfn'2612
                     in
                     Obj.magic
                       v_X'2615)
                in
                let
                  CRec'6150 ({lin_grads = v_X'2617})
                =
                  Obj.magic
                    v_lossfn'2612
                in
                Obj.magic
                  v_X'2617
              else
                Obj.magic
                  (if
                     Obj.magic
                       (Obj.magic
                          Int.equal
                          v_ty'2614
                          v_nnLossfnType_SoftMaxCrossEntropyLoss)
                   then
                     let v_'2620 =
                       Obj.magic
                         v_tensorOpExn__z___SoftMax_x_
                         v_s_max'2609
                         v_inputs'2610
                         (let
                            CRec'6150 ({lsoftmax_bufs = v_X'2618})
                          =
                            Obj.magic
                              v_lossfn'2612
                          in
                          Obj.magic
                            v_X'2618)
                         (let
                            CRec'6150 ({lin_grads = v_X'2619})
                          =
                            Obj.magic
                              v_lossfn'2612
                          in
                          Obj.magic
                            v_X'2619)
                     in
                     let v_'2622 =
                       Obj.magic
                         v_tensorOpExp__z____1_Hot_y____scalar_c_
                         v_s_max'2609
                         v_expecteds'2611
                         (Obj.magic
                            Float.neg
                            1.)
                         (let
                            CRec'6150 ({lin_grads = v_X'2621})
                          =
                            Obj.magic
                              v_lossfn'2612
                          in
                          Obj.magic
                            v_X'2621)
                     in
                     let
                       CRec'6150 ({lin_grads = v_X'2623})
                     =
                       Obj.magic
                         v_lossfn'2612
                     in
                     Obj.magic
                       v_X'2623
                   else
                     Obj.magic
                       (let
                          CRec'6150 ({lin_grads = v_X'2624})
                        =
                          Obj.magic
                            v_lossfn'2612
                        in
                        Obj.magic
                          v_X'2624));;
let v_nnCrossEntropyLoss =
  fun v_eqSeq ->
    fun v_join ->
      fun v_nnLossfnType_CrossEntropyLoss ->
        fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
          fun v_max_batchsize'2626 ->
            fun v_dim'2627 ->
              Obj.magic
                v_nnLossFunctionMakeExn
                v_eqSeq
                v_join
                v_nnLossfnType_CrossEntropyLoss
                v_nnLossfnType_SoftMaxCrossEntropyLoss
                (Obj.magic
                   Boot.Intrinsics.Mseq.Helpers.of_array
                   [| (Obj.magic
                       v_dim'2627) |])
                v_max_batchsize'2626
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
  fun v_components'2632 ->
    fun v_lossfn'2633 ->
      CRec'6151 { lcomponents =
          (Obj.repr
            v_components'2632);
        llossfn =
          (Obj.repr
            v_lossfn'2633) };;
let v_t'5196 =
  fun v_nnCompType_FullyConnected ->
    fun v_x'2636 ->
      fun v_comp'2637 ->
        let v_'2638 =
          Obj.magic
            v_nnComponentZeroGrad
            v_nnCompType_FullyConnected
            v_comp'2637
        in
        0;;
let v_nnZeroGrad =
  fun v_nnCompType_FullyConnected ->
    fun v_network'2635 ->
      let v_'2640 =
        Obj.magic
          Boot.Intrinsics.Mseq.Helpers.fold_left
          (Obj.magic
             v_t'5196
             v_nnCompType_FullyConnected)
          0
          (let
             CRec'6151 ({lcomponents = v_X'2639})
           =
             Obj.magic
               v_network'2635
           in
           Obj.magic
             v_X'2639)
      in
      ();;
let v_t'5197 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_s_max'2644 ->
          fun v_prevouts'2645 ->
            fun v_comp'2646 ->
              Obj.magic
                v_nnComponentApplyExn
                v_nnCompType_FullyConnected
                v_nnCompType_ReLU
                v_nnCompType_SoftMax
                v_s_max'2644
                v_prevouts'2645
                v_comp'2646;;
let v_nnEvalExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_network'2642 ->
          fun v_inputs'2643 ->
            let v_s_max'2644 =
              Obj.magic
                Boot.Intrinsics.Mseq.get
                (Obj.magic
                   Boot.Intrinsics.T.shape
                   v_inputs'2643)
                0
            in
            Obj.magic
              Boot.Intrinsics.Mseq.Helpers.fold_left
              (Obj.magic
                 v_t'5197
                 v_nnCompType_FullyConnected
                 v_nnCompType_ReLU
                 v_nnCompType_SoftMax
                 v_s_max'2644)
              v_inputs'2643
              (let
                 CRec'6151 ({lcomponents = v_X'2647})
               =
                 Obj.magic
                   v_network'2642
               in
               Obj.magic
                 v_X'2647);;
let v_t'5198 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_network'2649 ->
          fun v_s_max'2652 ->
            fun v_n_components'2659 ->
              fun v_out_grads'2669 ->
                fun v_i'2670 ->
                  let v_idx'2671 =
                    Obj.magic
                      Int.sub
                      v_n_components'2659
                      (Obj.magic
                         Int.add
                         v_i'2670
                         2)
                  in
                  let v_previdx'2672 =
                    Obj.magic
                      Int.sub
                      v_idx'2671
                      1
                  in
                  let v_comp'2674 =
                    Obj.magic
                      Boot.Intrinsics.Mseq.get
                      (let
                         CRec'6151 ({lcomponents = v_X'2673})
                       =
                         Obj.magic
                           v_network'2649
                       in
                       Obj.magic
                         v_X'2673)
                      v_idx'2671
                  in
                  let v_in_bufs'2676 =
                    Obj.magic
                      v_nnComponentOutBufs
                      (Obj.magic
                         Boot.Intrinsics.Mseq.get
                         (let
                            CRec'6151 ({lcomponents = v_X'2675})
                          =
                            Obj.magic
                              v_network'2649
                          in
                          Obj.magic
                            v_X'2675)
                         v_previdx'2672)
                  in
                  Obj.magic
                    v_nnComponentBackpropExn
                    v_nnCompType_FullyConnected
                    v_nnCompType_ReLU
                    v_nnCompType_SoftMax
                    v_s_max'2652
                    v_in_bufs'2676
                    v_out_grads'2669
                    v_comp'2674;;
let v_nnBackpropExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_network'2649 ->
              fun v_batch'2650 ->
                let v_s_max'2652 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.get
                    (Obj.magic
                       Boot.Intrinsics.T.shape
                       (let
                          CRec'6152 ({linputs = v_X'2651})
                        =
                          Obj.magic
                            v_batch'2650
                        in
                        Obj.magic
                          v_X'2651))
                    0
                in
                let v_outputs'2654 =
                  Obj.magic
                    v_nnEvalExn
                    v_nnCompType_FullyConnected
                    v_nnCompType_ReLU
                    v_nnCompType_SoftMax
                    v_network'2649
                    (let
                       CRec'6152 ({linputs = v_X'2653})
                     =
                       Obj.magic
                         v_batch'2650
                     in
                     Obj.magic
                       v_X'2653)
                in
                let v_lossgrads'2657 =
                  Obj.magic
                    v_nnLossFunctionBackpropExn
                    v_nnLossfnType_CrossEntropyLoss
                    v_nnLossfnType_SoftMaxCrossEntropyLoss
                    v_s_max'2652
                    v_outputs'2654
                    (let
                       CRec'6152 ({lcorrect_linear_outidxs = v_X'2655})
                     =
                       Obj.magic
                         v_batch'2650
                     in
                     Obj.magic
                       v_X'2655)
                    (let
                       CRec'6151 ({llossfn = v_X'2656})
                     =
                       Obj.magic
                         v_network'2649
                     in
                     Obj.magic
                       v_X'2656)
                in
                let v_n_components'2659 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.length
                    (let
                       CRec'6151 ({lcomponents = v_X'2658})
                     =
                       Obj.magic
                         v_network'2649
                     in
                     Obj.magic
                       v_X'2658)
                in
                if
                  Obj.magic
                    (Obj.magic
                       Int.equal
                       v_n_components'2659
                       0)
                then
                  ()
                else
                  Obj.magic
                    (if
                       Obj.magic
                         (Obj.magic
                            Int.equal
                            v_n_components'2659
                            1)
                     then
                       let v_lastcomp'2661 =
                         Obj.magic
                           Boot.Intrinsics.Mseq.get
                           (let
                              CRec'6151 ({lcomponents = v_X'2660})
                            =
                              Obj.magic
                                v_network'2649
                            in
                            Obj.magic
                              v_X'2660)
                           0
                       in
                       let v_'2663 =
                         Obj.magic
                           v_nnComponentBackpropExn
                           v_nnCompType_FullyConnected
                           v_nnCompType_ReLU
                           v_nnCompType_SoftMax
                           v_s_max'2652
                           (let
                              CRec'6152 ({linputs = v_X'2662})
                            =
                              Obj.magic
                                v_batch'2650
                            in
                            Obj.magic
                              v_X'2662)
                           v_lossgrads'2657
                           v_lastcomp'2661
                       in
                       ()
                     else
                       Obj.magic
                         (let v_lastcomp'2665 =
                            Obj.magic
                              Boot.Intrinsics.Mseq.get
                              (let
                                 CRec'6151 ({lcomponents = v_X'2664})
                               =
                                 Obj.magic
                                   v_network'2649
                               in
                               Obj.magic
                                 v_X'2664)
                              (Obj.magic
                                 Int.sub
                                 v_n_components'2659
                                 1)
                          in
                          let v_lastcomp_in_bufs'2667 =
                            Obj.magic
                              v_nnComponentOutBufs
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.get
                                 (let
                                    CRec'6151 ({lcomponents = v_X'2666})
                                  =
                                    Obj.magic
                                      v_network'2649
                                  in
                                  Obj.magic
                                    v_X'2666)
                                 (Obj.magic
                                    Int.sub
                                    v_n_components'2659
                                    2))
                          in
                          let v_lastcomp_in_grads'2668 =
                            Obj.magic
                              v_nnComponentBackpropExn
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_s_max'2652
                              v_lastcomp_in_bufs'2667
                              v_lossgrads'2657
                              v_lastcomp'2665
                          in
                          let v_firstcomp_out_grads'2677 =
                            let rec v_loop'6120 =
                                fun v_acc'6121 ->
                                  fun v_i'6122 ->
                                    if
                                      Obj.magic
                                        (Obj.magic
                                           ((<) : int -> int -> bool)
                                           v_i'6122
                                           (Obj.magic
                                              Int.sub
                                              v_n_components'2659
                                              2))
                                    then
                                      let v_t'6123 =
                                        Obj.magic
                                          v_t'5198
                                          v_nnCompType_FullyConnected
                                          v_nnCompType_ReLU
                                          v_nnCompType_SoftMax
                                          v_network'2649
                                          v_s_max'2652
                                          v_n_components'2659
                                          v_acc'6121
                                          v_i'6122
                                      in
                                      Obj.magic
                                        v_loop'6120
                                        v_t'6123
                                        (Obj.magic
                                           Int.add
                                           v_i'6122
                                           1)
                                    else
                                      Obj.magic
                                        v_acc'6121
                            in Obj.magic
                              v_loop'6120
                              v_lastcomp_in_grads'2668
                              0
                          in
                          let v_firstcomp'2679 =
                            Obj.magic
                              Boot.Intrinsics.Mseq.get
                              (let
                                 CRec'6151 ({lcomponents = v_X'2678})
                               =
                                 Obj.magic
                                   v_network'2649
                               in
                               Obj.magic
                                 v_X'2678)
                              0
                          in
                          let v_firstcomp_in_bufs'2681 =
                            let
                              CRec'6152 ({linputs = v_X'2680})
                            =
                              Obj.magic
                                v_batch'2650
                            in
                            Obj.magic
                              v_X'2680
                          in
                          let v_'2682 =
                            Obj.magic
                              v_nnComponentBackpropExn
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_s_max'2652
                              v_firstcomp_in_bufs'2681
                              v_firstcomp_out_grads'2677
                              v_firstcomp'2679
                          in
                          ()));;
let v_t'5199 =
  fun v_nnCompType_FullyConnected ->
    fun v_batchsize_regularizer'2692 ->
      fun v_x'2693 ->
        fun v_comp'2694 ->
          let v_'2695 =
            Obj.magic
              v_nnComponent_TEMP_ReduceGradients
              v_nnCompType_FullyConnected
              v_comp'2694
          in
          let v_'2696 =
            Obj.magic
              v_nnComponent_TEMP_ScaleGradients
              v_nnCompType_FullyConnected
              v_batchsize_regularizer'2692
              v_comp'2694
          in
          0;;
let v_t'5200 =
  fun v_nnCompType_FullyConnected ->
    fun v_lambda'2686 ->
      fun v_x'2699 ->
        fun v_comp'2700 ->
          let v_'2701 =
            Obj.magic
              v_nnComponent_TEMP_L2Regularize
              v_nnCompType_FullyConnected
              (Obj.magic
                 Float.mul
                 2.
                 v_lambda'2686)
              v_comp'2700
          in
          0;;
let v_t'5201 =
  fun v_nnCompType_FullyConnected ->
    fun v_alpha'2685 ->
      fun v_x'2705 ->
        fun v_comp'2706 ->
          let v_'2707 =
            Obj.magic
              v_nnComponent_TEMP_ApplyGradients
              v_nnCompType_FullyConnected
              (Obj.magic
                 Float.neg
                 v_alpha'2685)
              v_comp'2706
          in
          0;;
let v_nnGradientDescentExn =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_network'2684 ->
              fun v_alpha'2685 ->
                fun v_lambda'2686 ->
                  fun v_batch'2687 ->
                    let v_'2688 =
                      Obj.magic
                        v_nnZeroGrad
                        v_nnCompType_FullyConnected
                        v_network'2684
                    in
                    let v_batchsize'2690 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.get
                        (Obj.magic
                           Boot.Intrinsics.T.shape
                           (let
                              CRec'6152 ({linputs = v_X'2689})
                            =
                              Obj.magic
                                v_batch'2687
                            in
                            Obj.magic
                              v_X'2689))
                        0
                    in
                    let v_'2691 =
                      Obj.magic
                        v_nnBackpropExn
                        v_nnCompType_FullyConnected
                        v_nnCompType_ReLU
                        v_nnCompType_SoftMax
                        v_nnLossfnType_CrossEntropyLoss
                        v_nnLossfnType_SoftMaxCrossEntropyLoss
                        v_network'2684
                        v_batch'2687
                    in
                    let v_batchsize_regularizer'2692 =
                      Obj.magic
                        Float.div
                        1.
                        (Obj.magic
                           float_of_int
                           v_batchsize'2690)
                    in
                    let v_'2698 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.Helpers.fold_left
                        (Obj.magic
                           v_t'5199
                           v_nnCompType_FullyConnected
                           v_batchsize_regularizer'2692)
                        0
                        (let
                           CRec'6151 ({lcomponents = v_X'2697})
                         =
                           Obj.magic
                             v_network'2684
                         in
                         Obj.magic
                           v_X'2697)
                    in
                    let v_'2704 =
                      if
                        Obj.magic
                          (Obj.magic
                             Float.equal
                             v_lambda'2686
                             0.)
                      then
                        ()
                      else
                        Obj.magic
                          (let v_'2703 =
                             Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.fold_left
                               (Obj.magic
                                  v_t'5200
                                  v_nnCompType_FullyConnected
                                  v_lambda'2686)
                               0
                               (let
                                  CRec'6151 ({lcomponents = v_X'2702})
                                =
                                  Obj.magic
                                    v_network'2684
                                in
                                Obj.magic
                                  v_X'2702)
                           in
                           ())
                    in
                    let v_'2709 =
                      Obj.magic
                        Boot.Intrinsics.Mseq.Helpers.fold_left
                        (Obj.magic
                           v_t'5201
                           v_nnCompType_FullyConnected
                           v_alpha'2685)
                        0
                        (let
                           CRec'6151 ({lcomponents = v_X'2708})
                         =
                           Obj.magic
                             v_network'2684
                         in
                         Obj.magic
                           v_X'2708)
                    in
                    ();;
let v_t'5202 =
  fun v_acc'2712 ->
    fun v_e'2713 ->
      Obj.magic
        Int.mul
        v_acc'2712
        v_e'2713;;
let v_tensorSize =
  fun v_t'2711 ->
    Obj.magic
      Boot.Intrinsics.Mseq.Helpers.fold_left
      v_t'5202
      1
      (Obj.magic
         Boot.Intrinsics.T.shape
         v_t'2711);;
let v_t'5203 =
  fun v_t'2719 ->
    fun v_s_offset'2722 ->
      fun v_cand_idx'2723 ->
        fun v_idx'2724 ->
          if
            Obj.magic
              (Obj.magic
                 ((>) : float -> float -> bool)
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_t'2719
                    (Obj.magic
                       Int.add
                       v_idx'2724
                       v_s_offset'2722))
                 (Obj.magic
                    Boot.Intrinsics.T.linear_get_exn
                    v_t'2719
                    (Obj.magic
                       Int.add
                       v_cand_idx'2723
                       v_s_offset'2722)))
          then
            v_idx'2724
          else
            Obj.magic
              v_cand_idx'2723;;
let v_tensorLinearMaxIdx =
  fun v_s_idx'2718 ->
    fun v_t'2719 ->
      let v_s'2720 =
        Obj.magic
          Boot.Intrinsics.Mseq.get
          (Obj.magic
             Boot.Intrinsics.T.shape
             v_t'2719)
          0
      in
      let v_size'2721 =
        Obj.magic
          Int.div
          (Obj.magic
             v_tensorSize
             v_t'2719)
          v_s'2720
      in
      let v_s_offset'2722 =
        Obj.magic
          Int.mul
          v_s_idx'2718
          v_size'2721
      in
      let rec v_loop'6124 =
          fun v_acc'6125 ->
            fun v_i'6126 ->
              if
                Obj.magic
                  (Obj.magic
                     ((<) : int -> int -> bool)
                     v_i'6126
                     (Obj.magic
                        Int.sub
                        v_size'2721
                        1))
              then
                let v_t'6127 =
                  Obj.magic
                    v_t'5203
                    v_t'2719
                    v_s_offset'2722
                    v_acc'6125
                    v_i'6126
                in
                Obj.magic
                  v_loop'6124
                  v_t'6127
                  (Obj.magic
                     Int.add
                     v_i'6126
                     1)
              else
                Obj.magic
                  v_acc'6125
      in Obj.magic
        v_loop'6124
        (Obj.magic
           Int.sub
           v_size'2721
           1)
        0;;
let v_t'5205 =
  fun v_batch'2732 ->
    fun v_outputs'2736 ->
      fun v_b_acc'2737 ->
        fun v_b_idx'2738 ->
          if
            Obj.magic
              (Obj.magic
                 Int.equal
                 (Obj.magic
                    v_tensorLinearMaxIdx
                    v_b_idx'2738
                    v_outputs'2736)
                 (Obj.magic
                    Boot.Intrinsics.T.get_exn
                    (let
                       CRec'6152 ({lcorrect_linear_outidxs = v_X'2739})
                     =
                       Obj.magic
                         v_batch'2732
                     in
                     Obj.magic
                       v_X'2739)
                    (Obj.magic
                       Boot.Intrinsics.Mseq.Helpers.of_array
                       [| (Obj.magic
                           v_b_idx'2738) |])))
          then
            Obj.magic
              Int.add
              v_b_acc'2737
              1
          else
            Obj.magic
              v_b_acc'2737;;
let v_t'5204 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_printStatus'2715 ->
          fun v_network'2716 ->
            fun v_batches'2717 ->
              fun v_acc'2726 ->
                fun v_i'2727 ->
                  let v_'2731 =
                    if
                      Obj.magic
                        v_printStatus'2715
                    then
                      let v_'2728 =
                        Obj.magic
                          Boot.Intrinsics.IO.print
                          (Obj.magic
                             Boot.Intrinsics.Mseq.Helpers.of_array
                             [| (13) |])
                      in
                      let v_'2729 =
                        Obj.magic
                          Boot.Intrinsics.IO.print
                          (Obj.magic
                             Boot.Intrinsics.FloatConversion.float2string
                             (Obj.magic
                                float_of_int
                                (Obj.magic
                                   Int.add
                                   v_i'2727
                                   1)))
                      in
                      let v_'2730 =
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
                                 v_batches'2717)))
                    else
                      Obj.magic
                        ()
                  in
                  let v_batch'2732 =
                    Obj.magic
                      Boot.Intrinsics.Mseq.get
                      v_batches'2717
                      v_i'2727
                  in
                  let v_batchsize'2734 =
                    Obj.magic
                      Boot.Intrinsics.Mseq.get
                      (Obj.magic
                         Boot.Intrinsics.T.shape
                         (let
                            CRec'6152 ({linputs = v_X'2733})
                          =
                            Obj.magic
                              v_batch'2732
                          in
                          Obj.magic
                            v_X'2733))
                      0
                  in
                  let v_outputs'2736 =
                    Obj.magic
                      v_nnEvalExn
                      v_nnCompType_FullyConnected
                      v_nnCompType_ReLU
                      v_nnCompType_SoftMax
                      v_network'2716
                      (let
                         CRec'6152 ({linputs = v_X'2735})
                       =
                         Obj.magic
                           v_batch'2732
                       in
                       Obj.magic
                         v_X'2735)
                  in
                  let v_batch_accuracy'2740 =
                    let rec v_loop'6128 =
                        fun v_acc'6129 ->
                          fun v_i'6130 ->
                            if
                              Obj.magic
                                (Obj.magic
                                   ((<) : int -> int -> bool)
                                   v_i'6130
                                   v_batchsize'2734)
                            then
                              let v_t'6131 =
                                Obj.magic
                                  v_t'5205
                                  v_batch'2732
                                  v_outputs'2736
                                  v_acc'6129
                                  v_i'6130
                              in
                              Obj.magic
                                v_loop'6128
                                v_t'6131
                                (Obj.magic
                                   Int.add
                                   v_i'6130
                                   1)
                            else
                              Obj.magic
                                v_acc'6129
                    in Obj.magic
                      v_loop'6128
                      0
                      0
                  in
                  Obj.magic
                    Int.add
                    v_acc'2726
                    v_batch_accuracy'2740;;
let v_nnAccuracyDiscrete =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_printStatus'2715 ->
          fun v_network'2716 ->
            fun v_batches'2717 ->
              let v_correct_guesses'2741 =
                let rec v_loop'6132 =
                    fun v_acc'6133 ->
                      fun v_i'6134 ->
                        if
                          Obj.magic
                            (Obj.magic
                               ((<) : int -> int -> bool)
                               v_i'6134
                               (Obj.magic
                                  Boot.Intrinsics.Mseq.length
                                  v_batches'2717))
                        then
                          let v_t'6135 =
                            Obj.magic
                              v_t'5204
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_printStatus'2715
                              v_network'2716
                              v_batches'2717
                              v_acc'6133
                              v_i'6134
                          in
                          Obj.magic
                            v_loop'6132
                            v_t'6135
                            (Obj.magic
                               Int.add
                               v_i'6134
                               1)
                        else
                          Obj.magic
                            v_acc'6133
                in Obj.magic
                  v_loop'6132
                  0
                  0
              in
              let v_'2742 =
                if
                  Obj.magic
                    v_printStatus'2715
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
              v_correct_guesses'2741;;
let v_t'5206 =
  fun v_acc'2748 ->
    fun v_batch'2749 ->
      Obj.magic
        Int.add
        v_acc'2748
        (Obj.magic
           Boot.Intrinsics.Mseq.get
           (Obj.magic
              Boot.Intrinsics.T.shape
              (let
                 CRec'6152 ({linputs = v_X'2750})
               =
                 Obj.magic
                   v_batch'2749
               in
               Obj.magic
                 v_X'2750))
           0);;
let v_nnAccuracyProportion =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_printStatus'2744 ->
          fun v_network'2745 ->
            fun v_batches'2746 ->
              let v_correct_guesses'2747 =
                Obj.magic
                  v_nnAccuracyDiscrete
                  v_nnCompType_FullyConnected
                  v_nnCompType_ReLU
                  v_nnCompType_SoftMax
                  v_printStatus'2744
                  v_network'2745
                  v_batches'2746
              in
              let v_datalength'2751 =
                Obj.magic
                  Boot.Intrinsics.Mseq.Helpers.fold_left
                  v_t'5206
                  0
                  v_batches'2746
              in
              Obj.magic
                Float.div
                (Obj.magic
                   float_of_int
                   v_correct_guesses'2747)
                (Obj.magic
                   float_of_int
                   v_datalength'2751);;
let v_nnVanillaSGDParameters =
  CRec'6153 { linit_alpha =
      (Obj.repr
        0.9);
    linit_lambda =
      (Obj.repr
        0.);
    ldecay_alpha =
      (Obj.repr
        0.1);
    ldecay_lambda =
      (Obj.repr
        0.1);
    lbatchsize =
      (Obj.repr
        32);
    lepochs =
      (Obj.repr
        10);
    lprintStatus =
      (Obj.repr
        true);
    levaluateBetweenEpochs =
      (Obj.repr
        false);
    levaluateBeforeFirstEpoch =
      (Obj.repr
        false) };;
let rec v_t'5207 =
    fun v_dataset'2782 ->
      fun v_start_idx'2789 ->
        fun v_idx'2797 ->
          let v_b_idx'2798 =
            Obj.magic
              Int.add
              v_start_idx'2789
              (Obj.magic
                 Boot.Intrinsics.Mseq.get
                 v_idx'2797
                 0)
          in
          let v_d_idx'2799 =
            Obj.magic
              Boot.Intrinsics.Mseq.tail
              v_idx'2797
          in
          let v_dp'2800 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_dataset'2782
              v_b_idx'2798
          in
          Obj.magic
            Boot.Intrinsics.T.get_exn
            (let
               CRec'6154 ({linput = v_X'2801})
             =
               Obj.magic
                 v_dp'2800
             in
             Obj.magic
               v_X'2801)
            v_d_idx'2799
and v_t'5208 =
    fun v_dataset'2782 ->
      fun v_start_idx'2789 ->
        fun v_idx'2803 ->
          let v_b_idx'2804 =
            Obj.magic
              Int.add
              v_start_idx'2789
              (Obj.magic
                 Boot.Intrinsics.Mseq.get
                 v_idx'2803
                 0)
          in
          let v_dp'2805 =
            Obj.magic
              Boot.Intrinsics.Mseq.get
              v_dataset'2782
              v_b_idx'2804
          in
          let
            CRec'6154 ({lcorrect_linear_outidx = v_X'2806})
          =
            Obj.magic
              v_dp'2805
          in
          Obj.magic
            v_X'2806
and v_batchMakerH =
    fun v_join ->
      fun v_params'2755 ->
        fun v_dataset'2782 ->
          fun v_acc'2783 ->
            fun v_i'2784 ->
              let v_datalen'2785 =
                Obj.magic
                  Boot.Intrinsics.Mseq.length
                  v_dataset'2782
              in
              let v_'2788 =
                if
                  Obj.magic
                    (let
                       CRec'6153 ({lprintStatus = v_X'2786})
                     =
                       Obj.magic
                         v_params'2755
                     in
                     Obj.magic
                       v_X'2786)
                then
                  let v_'2787 =
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
                                      v_i'2784
                                      1)));
                              (Obj.magic
                                (Obj.magic
                                   Boot.Intrinsics.Mseq.Helpers.of_array
                                   [| (47) |]));
                              (Obj.magic
                                (Obj.magic
                                   v_int2string
                                   v_datalen'2785));
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
                     v_i'2784
                     v_datalen'2785)
              then
                v_acc'2783
              else
                Obj.magic
                  (let v_start_idx'2789 =
                     v_i'2784
                   in
                   let v_end_idx'2791 =
                     Obj.magic
                       Int.add
                       v_start_idx'2789
                       (let
                          CRec'6153 ({lbatchsize = v_X'2790})
                        =
                          Obj.magic
                            v_params'2755
                        in
                        Obj.magic
                          v_X'2790)
                   in
                   let v_end_idx'2792 =
                     if
                       Obj.magic
                         (Obj.magic
                            ((>=) : int -> int -> bool)
                            v_end_idx'2791
                            v_datalen'2785)
                     then
                       v_datalen'2785
                     else
                       Obj.magic
                         v_end_idx'2791
                   in
                   let v_bsize'2793 =
                     Obj.magic
                       Int.sub
                       v_end_idx'2792
                       v_start_idx'2789
                   in
                   let v__fst_dp'2794 =
                     Obj.magic
                       Boot.Intrinsics.Mseq.get
                       v_dataset'2782
                       0
                   in
                   let v_datashape'2796 =
                     Obj.magic
                       Boot.Intrinsics.T.shape
                       (let
                          CRec'6154 ({linput = v_X'2795})
                        =
                          Obj.magic
                            v__fst_dp'2794
                        in
                        Obj.magic
                          v_X'2795)
                   in
                   let v_db_inputs'2802 =
                     Obj.magic
                       Boot.Intrinsics.T.create_float_packed
                       (Obj.magic
                          Boot.Intrinsics.Mseq.cons
                          v_bsize'2793
                          v_datashape'2796)
                       (Obj.magic
                          v_t'5207
                          v_dataset'2782
                          v_start_idx'2789)
                   in
                   let v_db_outidxs'2807 =
                     Obj.magic
                       Boot.Intrinsics.T.create_int_packed
                       (Obj.magic
                          Boot.Intrinsics.Mseq.Helpers.of_array
                          [| (Obj.magic
                              v_bsize'2793) |])
                       (Obj.magic
                          v_t'5208
                          v_dataset'2782
                          v_start_idx'2789)
                   in
                   let v_db'2808 =
                     CRec'6152 { linputs =
                         (Obj.repr
                           v_db_inputs'2802);
                       lcorrect_linear_outidxs =
                         (Obj.repr
                           v_db_outidxs'2807) }
                   in
                   Obj.magic
                     v_batchMakerH
                     v_join
                     v_params'2755
                     v_dataset'2782
                     (Obj.magic
                        Boot.Intrinsics.Mseq.snoc
                        v_acc'2783
                        v_db'2808)
                     (Obj.magic
                        Int.add
                        v_i'2784
                        (let
                           CRec'6153 ({lbatchsize = v_X'2809})
                         =
                           Obj.magic
                             v_params'2755
                         in
                         Obj.magic
                           v_X'2809)));;
let v_wrappedPrint =
  fun v_s'2816 ->
    Obj.magic
      Boot.Intrinsics.IO.print
      v_s'2816;;
let v_t'5210 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_params'2755 ->
              fun v_network'2756 ->
                fun v_rounds'2761 ->
                  fun v_training_batches'2810 ->
                    fun v_alpha'2834 ->
                      fun v_lambda'2836 ->
                        fun v_batch_idx'2850 ->
                          let v_'2855 =
                            if
                              Obj.magic
                                (let
                                   CRec'6153 ({lprintStatus = v_X'2851})
                                 =
                                   Obj.magic
                                     v_params'2755
                                 in
                                 Obj.magic
                                   v_X'2851)
                            then
                              let v_'2852 =
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
                              let v_'2853 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        (Obj.magic
                                           Int.add
                                           v_batch_idx'2850
                                           1)))
                              in
                              let v_'2854 =
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
                                      v_rounds'2761))
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
                            v_network'2756
                            v_alpha'2834
                            v_lambda'2836
                            (Obj.magic
                               Boot.Intrinsics.Mseq.get
                               v_training_batches'2810
                               v_batch_idx'2850);;
let v_t'5209 =
  fun v_nnCompType_FullyConnected ->
    fun v_nnCompType_ReLU ->
      fun v_nnCompType_SoftMax ->
        fun v_nnLossfnType_CrossEntropyLoss ->
          fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
            fun v_params'2755 ->
              fun v_network'2756 ->
                fun v_rounds'2761 ->
                  fun v_training_batches'2810 ->
                    fun v_validation_batches'2813 ->
                      fun v_acc'2830 ->
                        fun v_epoch_idx'2831 ->
                          let v_epoch'2832 =
                            Obj.magic
                              Int.add
                              v_epoch_idx'2831
                              1
                          in
                          let v_alpha'2834 =
                            let
                              CRec'6157 ({l0 = v_X'2833})
                            =
                              Obj.magic
                                v_acc'2830
                            in
                            Obj.magic
                              v_X'2833
                          in
                          let v_lambda'2836 =
                            let
                              CRec'6157 ({l1 = v_X'2835})
                            =
                              Obj.magic
                                v_acc'2830
                            in
                            Obj.magic
                              v_X'2835
                          in
                          let v_'2849 =
                            if
                              Obj.magic
                                (let
                                   CRec'6153 ({lprintStatus = v_X'2837})
                                 =
                                   Obj.magic
                                     v_params'2755
                                 in
                                 Obj.magic
                                   v_X'2837)
                            then
                              let v_'2838 =
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
                              let v_'2839 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        v_epoch'2832))
                              in
                              let v_'2840 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (47) |])
                              in
                              let v_'2842 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     (Obj.magic
                                        float_of_int
                                        (let
                                           CRec'6153 ({lepochs = v_X'2841})
                                         =
                                           Obj.magic
                                             v_params'2755
                                         in
                                         Obj.magic
                                           v_X'2841)))
                              in
                              let v_'2843 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (93);
                                       (10) |])
                              in
                              let v_'2844 =
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
                              let v_'2845 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     v_alpha'2834)
                              in
                              let v_'2846 =
                                Obj.magic
                                  v_wrappedPrint
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.of_array
                                     [| (93);
                                       (10) |])
                              in
                              let v_'2847 =
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
                              let v_'2848 =
                                Obj.magic
                                  Boot.Intrinsics.IO.print
                                  (Obj.magic
                                     Boot.Intrinsics.FloatConversion.float2string
                                     v_lambda'2836)
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
                          let v_'2856 =
                            let rec v_loop'6136 =
                                fun v_acc'6137 ->
                                  fun v_i'6138 ->
                                    if
                                      Obj.magic
                                        (Obj.magic
                                           ((<) : int -> int -> bool)
                                           v_i'6138
                                           (Obj.magic
                                              Boot.Intrinsics.Mseq.length
                                              v_training_batches'2810))
                                    then
                                      let v_t'6139 =
                                        Obj.magic
                                          (fun nv_ ->
                                             Obj.magic
                                               v_t'5210
                                               v_nnCompType_FullyConnected
                                               v_nnCompType_ReLU
                                               v_nnCompType_SoftMax
                                               v_nnLossfnType_CrossEntropyLoss
                                               v_nnLossfnType_SoftMaxCrossEntropyLoss
                                               v_params'2755
                                               v_network'2756
                                               v_rounds'2761
                                               v_training_batches'2810
                                               v_alpha'2834
                                               v_lambda'2836)
                                          v_acc'6137
                                          v_i'6138
                                      in
                                      Obj.magic
                                        v_loop'6136
                                        v_t'6139
                                        (Obj.magic
                                           Int.add
                                           v_i'6138
                                           1)
                                    else
                                      Obj.magic
                                        v_acc'6137
                            in Obj.magic
                              v_loop'6136
                              ()
                              0
                          in
                          let v_'2857 =
                            Obj.magic
                              v_wrappedPrint
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (10) |])
                          in
                          let v_'2866 =
                            if
                              Obj.magic
                                (let
                                   CRec'6153 ({levaluateBetweenEpochs = v_X'2858})
                                 =
                                   Obj.magic
                                     v_params'2755
                                 in
                                 Obj.magic
                                   v_X'2858)
                            then
                              let v_'2860 =
                                if
                                  Obj.magic
                                    (let
                                       CRec'6153 ({lprintStatus = v_X'2859})
                                     =
                                       Obj.magic
                                         v_params'2755
                                     in
                                     Obj.magic
                                       v_X'2859)
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
                              let v_accuracy'2862 =
                                Obj.magic
                                  v_nnAccuracyProportion
                                  v_nnCompType_FullyConnected
                                  v_nnCompType_ReLU
                                  v_nnCompType_SoftMax
                                  (let
                                     CRec'6153 ({lprintStatus = v_X'2861})
                                   =
                                     Obj.magic
                                       v_params'2755
                                   in
                                   Obj.magic
                                     v_X'2861)
                                  v_network'2756
                                  v_validation_batches'2813
                              in
                              if
                                Obj.magic
                                  (let
                                     CRec'6153 ({lprintStatus = v_X'2863})
                                   =
                                     Obj.magic
                                       v_params'2755
                                   in
                                   Obj.magic
                                     v_X'2863)
                              then
                                let v_'2864 =
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
                                let v_'2865 =
                                  Obj.magic
                                    Boot.Intrinsics.IO.print
                                    (Obj.magic
                                       Boot.Intrinsics.FloatConversion.float2string
                                       (Obj.magic
                                          Float.mul
                                          v_accuracy'2862
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
                          let v_decayed_alpha'2868 =
                            Obj.magic
                              Float.mul
                              v_alpha'2834
                              (Obj.magic
                                 Float.sub
                                 1.
                                 (let
                                    CRec'6153 ({ldecay_alpha = v_X'2867})
                                  =
                                    Obj.magic
                                      v_params'2755
                                  in
                                  Obj.magic
                                    v_X'2867))
                          in
                          let v_decayed_lambda'2870 =
                            Obj.magic
                              Float.mul
                              v_lambda'2836
                              (Obj.magic
                                 Float.sub
                                 1.
                                 (let
                                    CRec'6153 ({ldecay_lambda = v_X'2869})
                                  =
                                    Obj.magic
                                      v_params'2755
                                  in
                                  Obj.magic
                                    v_X'2869))
                          in
                          CRec'6157 { l0 =
                              (Obj.repr
                                v_decayed_alpha'2868);
                            l1 =
                              (Obj.repr
                                v_decayed_lambda'2870) };;
let v_nnTrainSGD =
  fun v_join ->
    fun v_nnCompType_FullyConnected ->
      fun v_nnCompType_ReLU ->
        fun v_nnCompType_SoftMax ->
          fun v_nnLossfnType_CrossEntropyLoss ->
            fun v_nnLossfnType_SoftMaxCrossEntropyLoss ->
              fun v_params'2755 ->
                fun v_network'2756 ->
                  fun v_training_data'2757 ->
                    fun v_validation_data'2758 ->
                      let v_rounds'2761 =
                        Obj.magic
                          Int.div
                          (Obj.magic
                             Int.add
                             (Obj.magic
                                Boot.Intrinsics.Mseq.length
                                v_training_data'2757)
                             (Obj.magic
                                Int.sub
                                (let
                                   CRec'6153 ({lbatchsize = v_X'2759})
                                 =
                                   Obj.magic
                                     v_params'2755
                                 in
                                 Obj.magic
                                   v_X'2759)
                                1))
                          (let
                             CRec'6153 ({lbatchsize = v_X'2760})
                           =
                             Obj.magic
                               v_params'2755
                           in
                           Obj.magic
                             v_X'2760)
                      in
                      let v_'2778 =
                        if
                          Obj.magic
                            (let
                               CRec'6153 ({lprintStatus = v_X'2762})
                             =
                               Obj.magic
                                 v_params'2755
                             in
                             Obj.magic
                               v_X'2762)
                        then
                          let v_'2763 =
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
                          let v_'2764 =
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
                                              v_training_data'2757))) |]))
                          in
                          let v_'2765 =
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
                                              v_validation_data'2758))) |]))
                          in
                          let v_'2767 =
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
                                              CRec'6153 ({lbatchsize = v_X'2766})
                                            =
                                              Obj.magic
                                                v_params'2755
                                            in
                                            Obj.magic
                                              v_X'2766))) |]))
                          in
                          let v_'2768 =
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
                                           v_rounds'2761)) |]))
                          in
                          let v_'2770 =
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
                                              CRec'6153 ({lepochs = v_X'2769})
                                            =
                                              Obj.magic
                                                v_params'2755
                                            in
                                            Obj.magic
                                              v_X'2769))) |]))
                          in
                          let v_'2772 =
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
                                              CRec'6153 ({linit_alpha = v_X'2771})
                                            =
                                              Obj.magic
                                                v_params'2755
                                            in
                                            Obj.magic
                                              v_X'2771))) |]))
                          in
                          let v_'2774 =
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
                                              CRec'6153 ({ldecay_alpha = v_X'2773})
                                            =
                                              Obj.magic
                                                v_params'2755
                                            in
                                            Obj.magic
                                              v_X'2773))) |]))
                          in
                          let v_'2776 =
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
                                              CRec'6153 ({linit_lambda = v_X'2775})
                                            =
                                              Obj.magic
                                                v_params'2755
                                            in
                                            Obj.magic
                                              v_X'2775))) |]))
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
                                            CRec'6153 ({ldecay_lambda = v_X'2777})
                                          =
                                            Obj.magic
                                              v_params'2755
                                          in
                                          Obj.magic
                                            v_X'2777))) |]))
                        else
                          Obj.magic
                            ()
                      in
                      let v_'2780 =
                        if
                          Obj.magic
                            (let
                               CRec'6153 ({lprintStatus = v_X'2779})
                             =
                               Obj.magic
                                 v_params'2755
                             in
                             Obj.magic
                               v_X'2779)
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
                      let v_training_batches'2810 =
                        Obj.magic
                          v_batchMakerH
                          v_join
                          v_params'2755
                          v_training_data'2757
                          (Obj.magic
                             Boot.Intrinsics.Mseq.Helpers.of_array
                             [|  |])
                          0
                      in
                      let v_'2812 =
                        if
                          Obj.magic
                            (let
                               CRec'6153 ({lprintStatus = v_X'2811})
                             =
                               Obj.magic
                                 v_params'2755
                             in
                             Obj.magic
                               v_X'2811)
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
                      let v_validation_batches'2813 =
                        Obj.magic
                          v_batchMakerH
                          v_join
                          v_params'2755
                          v_validation_data'2758
                          (Obj.magic
                             Boot.Intrinsics.Mseq.Helpers.of_array
                             [|  |])
                          0
                      in
                      let v_'2815 =
                        if
                          Obj.magic
                            (let
                               CRec'6153 ({lprintStatus = v_X'2814})
                             =
                               Obj.magic
                                 v_params'2755
                             in
                             Obj.magic
                               v_X'2814)
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
                      let v_'2872 =
                        let nv_ =
                          Obj.magic
                            v_ve1FzN1WPvC'5149
                            v_nnCompType_FullyConnected
                            v_nnCompType_ReLU
                            v_nnCompType_SoftMax
                            v_nnLossfnType_CrossEntropyLoss
                            v_nnLossfnType_SoftMaxCrossEntropyLoss
                            (let
                               CRec'6153 ({linit_alpha = v_r'6167;linit_lambda = v_r'6168;ldecay_alpha = v_r'6169;ldecay_lambda = v_r'6170;lbatchsize = v_r'6171;lepochs = v_r'6172;lprintStatus = v_r'6173;levaluateBetweenEpochs = v_r'6174;levaluateBeforeFirstEpoch = v_r'6175})
                             =
                               v_params'2755
                             in
                             Obj.magic
                               Obj.repr
                               ({linit_alpha =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6167);
                                 linit_lambda =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6168);
                                 ldecay_alpha =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6169);
                                 ldecay_lambda =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6170);
                                 lbatchsize =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6171);
                                 lepochs =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6172);
                                 lprintStatus =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6173);
                                 levaluateBetweenEpochs =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6174);
                                 levaluateBeforeFirstEpoch =
                                   (Obj.magic
                                     Obj.magic
                                     v_r'6175)} : v_record'6166))
                            (let
                               CRec'6151 ({lcomponents = v_r'6179;llossfn = v_r'6180})
                             =
                               v_network'2756
                             in
                             Obj.magic
                               Obj.repr
                               ({lcomponents =
                                   (Obj.magic
                                     Boot.Intrinsics.Mseq.Helpers.to_array_copy
                                     (Obj.magic
                                        Boot.Intrinsics.Mseq.map
                                        (fun v_x'6181 ->
                                           let
                                             CRec'6148 ({lty = v_r'6182;lw = v_r'6183;lb = v_r'6184;lw_grads = v_r'6185;lb_grads = v_r'6186;lout_bufs = v_r'6187;lin_grads = v_r'6188;lsoftmax_bufs = v_r'6189})
                                           =
                                             v_x'6181
                                           in
                                           Obj.magic
                                             Obj.repr
                                             ({lty =
                                                 (Obj.magic
                                                   Obj.magic
                                                   v_r'6182);
                                               lw =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6183));
                                               lb =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6184));
                                               lw_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6185));
                                               lb_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6186));
                                               lout_bufs =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6187));
                                               lin_grads =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6188));
                                               lsoftmax_bufs =
                                                 (Obj.magic
                                                   Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                                   (Obj.magic
                                                      Obj.magic
                                                      v_r'6189))} : v_record'6176))
                                        (Obj.magic
                                           Obj.magic
                                           v_r'6179)));
                                 llossfn =
                                   (let
                                     CRec'6150 ({lty = v_r'6190;lout_bufs = v_r'6192;lin_grads = v_r'6191;lsoftmax_bufs = v_r'6193})
                                   =
                                     Obj.magic
                                       Obj.magic
                                       v_r'6180
                                   in
                                   Obj.magic
                                     Obj.repr
                                     ({lty =
                                         (Obj.magic
                                           Obj.magic
                                           v_r'6190);
                                       lout_bufs =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6191));
                                       lin_grads =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6192));
                                       lsoftmax_bufs =
                                         (Obj.magic
                                           Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                           (Obj.magic
                                              Obj.magic
                                              v_r'6193))} : v_record'6177))} : v_record'6178))
                            v_rounds'2761
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.to_array_copy
                               (Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  (fun v_x'6195 ->
                                     let
                                       CRec'6152 ({linputs = v_r'6196;lcorrect_linear_outidxs = v_r'6197})
                                     =
                                       v_x'6195
                                     in
                                     Obj.magic
                                       Obj.repr
                                       ({linputs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6196));
                                         lcorrect_linear_outidxs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6197))} : v_record'6194))
                                  v_training_batches'2810))
                            (Obj.magic
                               Boot.Intrinsics.Mseq.Helpers.to_array_copy
                               (Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  (fun v_x'6199 ->
                                     let
                                       CRec'6152 ({linputs = v_r'6200;lcorrect_linear_outidxs = v_r'6201})
                                     =
                                       v_x'6199
                                     in
                                     Obj.magic
                                       Obj.repr
                                       ({linputs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6200));
                                         lcorrect_linear_outidxs =
                                           (Obj.magic
                                             Boot.Intrinsics.T.Helpers.to_genarray_clayout
                                             (Obj.magic
                                                Obj.magic
                                                v_r'6201))} : v_record'6198))
                                  v_validation_batches'2813))
                        in
                        ()
                      in
                      let v_'2874 =
                        if
                          Obj.magic
                            (let
                               CRec'6153 ({lprintStatus = v_X'2873})
                             =
                               Obj.magic
                                 v_params'2755
                             in
                             Obj.magic
                               v_X'2873)
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
let v_t'5211 =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_print_status'2876 ->
        fun v_convfn'2877 ->
          fun v_dim'2878 ->
            fun v_tensorCreate'2879 ->
              fun v_acc'2885 ->
                fun v_c'2886 ->
                  match
                    Obj.magic
                      (let v__target'6227 =
                         v_acc'2885
                       in
                       let
                         CRec'6156 ({l0 = v_0'6228;l1 = v_1'6229;l2 = v_2'6230})
                       =
                         Obj.magic
                           Obj.magic
                           v__target'6227
                       in
                       Option.Some (v_0'6228, v_1'6229, v_2'6230))
                  with
                  | Option.Some (v_converted'2887, v_current_acc'2888, v_current_strrep'2889) ->
                      (let v_updated_tuple'2890 =
                         if
                           Obj.magic
                             (Obj.magic
                                v_and
                                (Obj.magic
                                   v_or
                                   (Obj.magic
                                      v_eqChar
                                      v_c'2886
                                      10)
                                   (Obj.magic
                                      v_eqChar
                                      v_c'2886
                                      32))
                                (Obj.magic
                                   ((>) : int -> int -> bool)
                                   (Obj.magic
                                      Boot.Intrinsics.Mseq.length
                                      v_current_strrep'2889)
                                   0))
                         then
                           CRec'6157 { l0 =
                               (Obj.repr
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.snoc
                                    v_current_acc'2888
                                    (Obj.magic
                                       v_string2int
                                       v_current_strrep'2889)));
                             l1 =
                               (Obj.repr
                                 (Obj.magic
                                    Boot.Intrinsics.Mseq.Helpers.of_array
                                    [|  |])) }
                         else
                           Obj.magic
                             (CRec'6157 { l0 =
                                  (Obj.repr
                                    v_current_acc'2888);
                                l1 =
                                  (Obj.repr
                                    v_current_strrep'2889) })
                       in
                       match
                         Obj.magic
                           (let v__target'6231 =
                              v_updated_tuple'2890
                            in
                            let
                              CRec'6157 ({l0 = v_0'6232;l1 = v_1'6233})
                            =
                              Obj.magic
                                Obj.magic
                                v__target'6231
                            in
                            Option.Some (v_0'6232, v_1'6233))
                       with
                       | Option.Some (v_current_acc'2891, v_current_strrep'2892) ->
                           (if
                              Obj.magic
                                (Obj.magic
                                   v_eqChar
                                   v_c'2886
                                   10)
                            then
                              let v_class'2893 =
                                Obj.magic
                                  Boot.Intrinsics.Mseq.head
                                  v_current_acc'2891
                              in
                              let v_normalized_values'2894 =
                                Obj.magic
                                  Boot.Intrinsics.Mseq.map
                                  v_convfn'2877
                                  (Obj.magic
                                     Boot.Intrinsics.Mseq.tail
                                     v_current_acc'2891)
                              in
                              let v_dp'2895 =
                                CRec'6154 { linput =
                                    (Obj.repr
                                      (Obj.magic
                                         v_tensorOfSeqExn
                                         v_tensorCreate'2879
                                         v_dim'2878
                                         v_normalized_values'2894));
                                  lcorrect_outidx =
                                    (Obj.repr
                                      (Obj.magic
                                         Boot.Intrinsics.Mseq.Helpers.of_array
                                         [| (Obj.magic
                                             v_class'2893);
                                           (0) |]));
                                  lcorrect_linear_outidx =
                                    (Obj.repr
                                      v_class'2893) }
                              in
                              let v_'2897 =
                                if
                                  Obj.magic
                                    v_print_status'2876
                                then
                                  let v_'2896 =
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
                                                         v_converted'2887)
                                                      1))) |]))
                                  in
                                  Obj.magic
                                    Boot.Intrinsics.IO.flush_stdout
                                    ()
                                else
                                  Obj.magic
                                    ()
                              in
                              CRec'6156 { l0 =
                                  (Obj.repr
                                    (Obj.magic
                                       Boot.Intrinsics.Mseq.snoc
                                       v_converted'2887
                                       v_dp'2895));
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
                                        v_c'2886
                                        32)
                                 then
                                   CRec'6156 { l0 =
                                       (Obj.repr
                                         v_converted'2887);
                                     l1 =
                                       (Obj.repr
                                         v_current_acc'2891);
                                     l2 =
                                       (Obj.repr
                                         v_current_strrep'2892) }
                                 else
                                   Obj.magic
                                     (CRec'6156 { l0 =
                                          (Obj.repr
                                            v_converted'2887);
                                        l1 =
                                          (Obj.repr
                                            v_current_acc'2891);
                                        l2 =
                                          (Obj.repr
                                            (Obj.magic
                                               Boot.Intrinsics.Mseq.snoc
                                               v_current_strrep'2892
                                               v_c'2886)) })))
                       | Option.None ->
                           (Obj.magic
                              (failwith
                                 "FILE \"/home/wikman/GitRepos/johnwikman/miking-ml/src/dataset/_common.mc\" 33:4-49:53 ERROR: Reached a never term, which should be impossible in a well-typed program.")))
                  | Option.None ->
                      (Obj.magic
                         (failwith
                            "FILE \"/home/wikman/GitRepos/johnwikman/miking-ml/src/dataset/_common.mc\" 26:4-31:6 ERROR: Reached a never term, which should be impossible in a well-typed program."));;
let v_t =
  fun v_x'2901 ->
    v_x'2901;;
let v_datasetLoadGenericIntclassInt2Float =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_print_status'2876 ->
        fun v_convfn'2877 ->
          fun v_dim'2878 ->
            fun v_tensorCreate'2879 ->
              fun v_filename'2880 ->
                let v_'2881 =
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
                              v_filename'2880);
                            (Obj.magic
                              (Obj.magic
                                 Boot.Intrinsics.Mseq.Helpers.of_array
                                 [| (46);
                                   (46);
                                   (46) |])) |]))
                in
                let v_contents'2882 =
                  Obj.magic
                    Boot.Intrinsics.File.read
                    v_filename'2880
                in
                let v_'2884 =
                  if
                    Obj.magic
                      v_print_status'2876
                  then
                    let v_'2883 =
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
                let v_result'2898 =
                  Obj.magic
                    Boot.Intrinsics.Mseq.Helpers.fold_left
                    (Obj.magic
                       v_t'5211
                       v_join
                       v_tensorOfSeqExn
                       v_print_status'2876
                       v_convfn'2877
                       v_dim'2878
                       v_tensorCreate'2879)
                    (CRec'6156 { l0 =
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
                    v_contents'2882
                in
                let v_'2900 =
                  if
                    Obj.magic
                      v_print_status'2876
                  then
                    let v_'2899 =
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
                     CRec'6156 ({l0 = v_X'2902})
                   =
                     Obj.magic
                       v_result'2898
                   in
                   Obj.magic
                     v_X'2902);;
let v_convfn =
  fun v_i'2907 ->
    Obj.magic
      Float.div
      (Obj.magic
         float_of_int
         v_i'2907)
      255.;;
let v_datasetLoadCifar10 =
  fun v_join ->
    fun v_tensorOfSeqExn ->
      fun v_tensorCreate'2904 ->
        fun v_filename'2905 ->
          let v_print_status'2906 =
            true
          in
          let v_dim'2909 =
            Obj.magic
              Boot.Intrinsics.Mseq.Helpers.of_array
              [| (3072) |]
          in
          Obj.magic
            v_datasetLoadGenericIntclassInt2Float
            v_join
            v_tensorOfSeqExn
            v_print_status'2906
            v_convfn
            v_dim'2909
            v_tensorCreate'2904
            v_filename'2905;;
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
                fun v_batchsize'2913 ->
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
                              v_batchsize'2913
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
                              v_batchsize'2913
                              3072));
                         (Obj.magic
                           (Obj.magic
                              v_nnFullyConnected
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2913
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
                              v_batchsize'2913
                              1024));
                         (Obj.magic
                           (Obj.magic
                              v_nnFullyConnected
                              v_eqSeq
                              v_join
                              v_nnCompType_FullyConnected
                              v_nnCompType_ReLU
                              v_nnCompType_SoftMax
                              v_batchsize'2913
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
                              v_batchsize'2913
                              10)) |])
                    (Obj.magic
                       v_nnCrossEntropyLoss
                       v_eqSeq
                       v_join
                       v_nnLossfnType_CrossEntropyLoss
                       v_nnLossfnType_SoftMaxCrossEntropyLoss
                       v_batchsize'2913
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
                  fun v_training_data'2915 ->
                    fun v_validation_data'2916 ->
                      let v_params'2917 =
                        let
                          CRec'6153 v_rec'6241
                        =
                          Obj.magic
                            (let
                               CRec'6153 v_rec'6240
                             =
                               Obj.magic
                                 (let
                                    CRec'6153 v_rec'6239
                                  =
                                    Obj.magic
                                      (let
                                         CRec'6153 v_rec'6238
                                       =
                                         Obj.magic
                                           (let
                                              CRec'6153 v_rec'6237
                                            =
                                              Obj.magic
                                                (let
                                                   CRec'6153 v_rec'6236
                                                 =
                                                   Obj.magic
                                                     (let
                                                        CRec'6153 v_rec'6235
                                                      =
                                                        Obj.magic
                                                          (let
                                                             CRec'6153 v_rec'6234
                                                           =
                                                             Obj.magic
                                                               v_nnVanillaSGDParameters
                                                           in
                                                           CRec'6153 { v_rec'6234
                                                             with
                                                             lbatchsize =
                                                               Obj.repr
                                                                 64 })
                                                      in
                                                      CRec'6153 { v_rec'6235
                                                        with
                                                        lepochs =
                                                          Obj.repr
                                                            100 })
                                                 in
                                                 CRec'6153 { v_rec'6236
                                                   with
                                                   linit_alpha =
                                                     Obj.repr
                                                       0.01 })
                                            in
                                            CRec'6153 { v_rec'6237
                                              with
                                              ldecay_alpha =
                                                Obj.repr
                                                  0.01 })
                                       in
                                       CRec'6153 { v_rec'6238
                                         with
                                         linit_lambda =
                                           Obj.repr
                                             0. })
                                  in
                                  CRec'6153 { v_rec'6239
                                    with
                                    lprintStatus =
                                      Obj.repr
                                        true })
                             in
                             CRec'6153 { v_rec'6240
                               with
                               levaluateBetweenEpochs =
                                 Obj.repr
                                   true })
                        in
                        CRec'6153 { v_rec'6241
                          with
                          levaluateBeforeFirstEpoch =
                            Obj.repr
                              true }
                      in
                      let v_'2918 =
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
                      let v_network'2920 =
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
                             CRec'6153 ({lbatchsize = v_X'2919})
                           =
                             Obj.magic
                               v_params'2917
                           in
                           Obj.magic
                             v_X'2919)
                      in
                      let v_'2921 =
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
                      let v_t_start_ms'2922 =
                        Obj.magic
                          Boot.Intrinsics.Time.get_wall_time_ms
                          ()
                      in
                      let v_'2923 =
                        Obj.magic
                          v_nnTrainSGD
                          v_join
                          v_nnCompType_FullyConnected
                          v_nnCompType_ReLU
                          v_nnCompType_SoftMax
                          v_nnLossfnType_CrossEntropyLoss
                          v_nnLossfnType_SoftMaxCrossEntropyLoss
                          v_params'2917
                          v_network'2920
                          v_training_data'2915
                          v_validation_data'2916
                      in
                      let v_t_end_ms'2924 =
                        Obj.magic
                          Boot.Intrinsics.Time.get_wall_time_ms
                          ()
                      in
                      let v_t_diff_ms'2925 =
                        Obj.magic
                          Float.sub
                          v_t_end_ms'2924
                          v_t_start_ms'2922
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
                                     v_t_diff_ms'2925));
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
    (let v_'2927 =
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
     let v_training_data'2928 =
       Obj.magic
         v_datasetLoadCArrayFloatCifar10
         v_join
         v_tensorOfSeqExn
         (Obj.magic
            Boot.Intrinsics.Mseq.get
            Boot.Intrinsics.MSys.argv
            1)
     in
     let v_'2929 =
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
     let v_validation_data'2930 =
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
       v_training_data'2928
       v_validation_data'2930);;