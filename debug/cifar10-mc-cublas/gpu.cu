#include <stdint.h>
#include <stdio.h>
#include <math.h>
#include <stddef.h>
#include <stdlib.h>
#include <stdio.h>
#include "caml/alloc.h"
#include "caml/bigarray.h"
#include "caml/memory.h"
#include "caml/mlvalues.h"
enum tensor_state {STATE_OK, STATE_CPU_INVALID, STATE_GPU_INVALID, STATE_RETURNED};
__managed__ enum tensor_state (*t_state);
typedef struct Tensor {int64_t id; double (*data); int64_t dims[3]; int64_t rank; int64_t offset; int64_t size;} Tensor;
typedef struct Seq {int64_t (*seq); int64_t len;} Seq;
typedef struct Tensor1 {int64_t id; int64_t (*data); int64_t dims[3]; int64_t rank; int64_t offset; int64_t size;} Tensor1;
typedef struct Rec {int64_t ty; Tensor w; Tensor b; Tensor w_grads; Tensor b_grads; Tensor out_bufs; Tensor in_grads; Tensor softmax_bufs;} Rec;
typedef struct Rec1 {int64_t ty; Tensor out_bufs; Tensor in_grads; Tensor softmax_bufs;} Rec1;
typedef struct Seq1 {Rec (*seq); int64_t len;} Seq1;
typedef struct Rec2 {Seq1 components; Rec1 lossfn;} Rec2;
typedef struct Rec3 {Tensor inputs; Tensor1 correct_linear_outidxs;} Rec3;
typedef struct Seq2 {Rec3 (*seq); int64_t len;} Seq2;
typedef struct Rec4 {double init_alpha; double init_lambda; double decay_alpha; double decay_lambda; int64_t batchsize; int64_t epochs; char printStatus; char evaluateBetweenEpochs; char evaluateBeforeFirstEpoch;} Rec4;
typedef struct Rec5 {double _0; double _1;} Rec5;
__host__ __device__ int64_t cartesian_to_linear_index0(int64_t dims1[3], int64_t rank1) {
  {
    int64_t t;
    (t = 0);
    return t;
  }
}
__host__ __device__ int64_t cartesian_to_linear_index1(int64_t dims1[3], int64_t rank1, int64_t i) {
  if ((rank1 == 3)) {
    {
      int64_t t1;
      (t1 = (((dims1[2]) * (dims1[1])) * i));
      return t1;
    }
  } else {
    if ((rank1 == 2)) {
      {
        int64_t t2;
        (t2 = ((dims1[1]) * i));
        return t2;
      }
    } else {
      {
        int64_t t3;
        (t3 = i);
        return t3;
      }
    }
  }
}
__host__ __device__ int64_t cartesian_to_linear_index2(int64_t dims1[3], int64_t rank1, int64_t i1, int64_t i2) {
  if ((rank1 == 3)) {
    {
      int64_t t4;
      (t4 = ((((dims1[2]) * (dims1[1])) * i1) + ((dims1[2]) * i2)));
      return t4;
    }
  } else {
    if ((rank1 == 2)) {
      {
        int64_t t5;
        (t5 = (((dims1[1]) * i1) + i2));
        return t5;
      }
    } else {
      printf("Accessed tensor of rank %ld using 2 indices\n", rank1);
      {
        int64_t t6;
        (t6 = -1);
        return t6;
      }
    }
  }
}
__host__ __device__ int64_t cartesian_to_linear_index3(int64_t dims1[3], int64_t rank1, int64_t i3, int64_t i4, int64_t i5) {
  if ((rank1 == 3)) {
    {
      int64_t t7;
      (t7 = (((((dims1[2]) * (dims1[1])) * i3) + ((dims1[2]) * i4)) + i5));
      return t7;
    }
  } else {
    printf("Accessed tensor of rank %ld using 3 indices\n", rank1);
    {
      int64_t t8;
      (t8 = -1);
      return t8;
    }
  }
}
__host__ __device__ int64_t cartesian_to_linear_index(int64_t dims1[3], int64_t rank1, Seq cartesian_idx) {
  if (((cartesian_idx.len) == 1)) {
    {
      int64_t t9;
      (t9 = cartesian_to_linear_index1(dims1, rank1, ((cartesian_idx.seq)[0])));
      return t9;
    }
  } else {
    if (((cartesian_idx.len) == 2)) {
      {
        int64_t t10;
        (t10 = cartesian_to_linear_index2(dims1, rank1, ((cartesian_idx.seq)[0]), ((cartesian_idx.seq)[1])));
        return t10;
      }
    } else {
      if (((cartesian_idx.len) == 3)) {
        {
          int64_t t11;
          (t11 = cartesian_to_linear_index3(dims1, rank1, ((cartesian_idx.seq)[0]), ((cartesian_idx.seq)[1]), ((cartesian_idx.seq)[2])));
          return t11;
        }
      } else {
        {
          int64_t t12;
          (t12 = cartesian_to_linear_index0(dims1, rank1));
          return t12;
        }
      }
    }
  }
}
__host__ __device__ Seq tensor_shape(int64_t dims2[3], int64_t rank2) {
  Seq s;
  ((s.seq) = dims2);
  ((s.len) = rank2);
  {
    Seq t13;
    (t13 = s);
    return t13;
  }
}
extern double exp(double);
__host__ __device__ double exp1(double x) {
  {
    double t14;
    (t14 = exp(x));
    return t14;
  }
}
__host__ __device__ int64_t t15(int64_t acc, int64_t e) {
  {
    int64_t t16;
    (t16 = (acc * e));
    return t16;
  }
}
__host__ __device__ int64_t foldl(int64_t acc_init, Seq s1) {
  int64_t acc1 = acc_init;
  int64_t i6 = 0;
  while ((i6 < (s1.len))) {
    (acc1 = t15(acc1, ((s1.seq)[i6])));
    (i6 = (i6 + 1));
  }
  return acc1;
}
__host__ __device__ int64_t tensorSize(Tensor t17) {
  Seq t18;
  (t18 = tensor_shape((t17.dims), (t17.rank)));
  {
    int64_t t19;
    (t19 = foldl(1, t18));
    return t19;
  }
}
__host__ __device__ double t20(Tensor w1, Tensor x1, int64_t n, int64_t x_offset, int64_t i7, double acc2, int64_t j) {
  int64_t t21;
  (t21 = (n * i7));
  int64_t t22;
  (t22 = (t21 + j));
  double t23;
  (t23 = ((w1.data)[t22]));
  int64_t t24;
  (t24 = (x_offset + j));
  double t25;
  (t25 = ((x1.data)[t24]));
  double t26;
  (t26 = (t23 * t25));
  {
    double t27;
    (t27 = (acc2 + t26));
    return t27;
  }
}
__host__ __device__ void iterfun(Tensor w1, Tensor x1, Tensor b1, Tensor z, int64_t m, int64_t n, int64_t i8) {
  int64_t s_idx;
  (s_idx = (i8 / m));
  int64_t x_offset;
  (x_offset = (s_idx * n));
  int64_t z_idx;
  (z_idx = i8);
  int64_t i7;
  (i7 = (i8 % m));
  double acc_init1;
  (acc_init1 = ((b1.data)[i7]));
  double v;
  {
    int64_t i9 = 0;
    double acc3 = acc_init1;
    while ((i9 < n)) {
      (acc3 = t20(w1, x1, n, x_offset, i7, acc3, i9));
      (i9 = (i9 + 1));
    }
    (v = acc3);
  }
  (((z.data)[z_idx]) = v);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel(int64_t n1, Tensor w1, Tensor x1, Tensor b1, Tensor z, int64_t m, int64_t n) {
  int64_t idx = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride = (gridDim.x * blockDim.x);
  while ((idx < n1)) {
    iterfun(w1, x1, b1, z, m, n, idx);
    (idx = (idx + stride));
  }
}
__host__ void tensorOpExn__z___Wx_B(int64_t s_max, Tensor w1, Tensor x1, Tensor b1, Tensor z) {
  Seq w_shape;
  (w_shape = tensor_shape((w1.dims), (w1.rank)));
  int64_t m;
  (m = ((w_shape.seq)[0]));
  int64_t n;
  (n = ((w_shape.seq)[1]));
  int64_t t28;
  (t28 = (s_max * m));
  {
    int64_t niterations = t28;
    int64_t tpb = 256;
    int64_t nblocks = (((niterations + (tpb * 10)) - 1) / (tpb * 10));
    loopKernel<<<nblocks, tpb>>>(t28, w1, x1, b1, z, m, n);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ void iterfun1(Tensor x2, Tensor y, Tensor z1, int64_t m1, int64_t n2, int64_t m_x_n, int64_t i10) {
  int64_t s_idx1;
  (s_idx1 = (i10 / m_x_n));
  int64_t z_idx1;
  (z_idx1 = i10);
  int64_t i11;
  (i11 = (i10 % m_x_n));
  int64_t row;
  (row = (i11 / n2));
  int64_t col;
  (col = (i11 % n2));
  int64_t t29;
  (t29 = (s_idx1 * m1));
  int64_t x_idx;
  (x_idx = (row + t29));
  int64_t t30;
  (t30 = (s_idx1 * n2));
  int64_t y_idx;
  (y_idx = (col + t30));
  double t31;
  (t31 = ((x2.data)[x_idx]));
  double t32;
  (t32 = ((y.data)[y_idx]));
  double t33;
  (t33 = (t31 * t32));
  (((z1.data)[z_idx1]) = t33);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z1.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z1.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel1(int64_t n3, Tensor x2, Tensor y, Tensor z1, int64_t m1, int64_t n2, int64_t m_x_n) {
  int64_t idx1 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride1 = (gridDim.x * blockDim.x);
  while ((idx1 < n3)) {
    iterfun1(x2, y, z1, m1, n2, m_x_n, idx1);
    (idx1 = (idx1 + stride1));
  }
}
__host__ void tensorOpExn__z___x___y_T(int64_t s_max1, Tensor x2, Tensor y, Tensor z1) {
  Seq z_shape;
  (z_shape = tensor_shape((z1.dims), (z1.rank)));
  int64_t m1;
  (m1 = ((z_shape.seq)[1]));
  int64_t n2;
  (n2 = ((z_shape.seq)[2]));
  int64_t m_x_n;
  (m_x_n = (m1 * n2));
  int64_t t34;
  (t34 = (s_max1 * m_x_n));
  {
    int64_t niterations1 = t34;
    int64_t tpb1 = 256;
    int64_t nblocks1 = (((niterations1 + (tpb1 * 10)) - 1) / (tpb1 * 10));
    loopKernel1<<<nblocks1, tpb1>>>(t34, x2, y, z1, m1, n2, m_x_n);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ double t35(Tensor x3, Tensor w2, int64_t n4, int64_t x_offset1, int64_t j1, double acc4, int64_t i12) {
  int64_t t36;
  (t36 = (n4 * i12));
  int64_t t37;
  (t37 = (t36 + j1));
  double t38;
  (t38 = ((w2.data)[t37]));
  int64_t t39;
  (t39 = (x_offset1 + i12));
  double t40;
  (t40 = ((x3.data)[t39]));
  double t41;
  (t41 = (t38 * t40));
  {
    double t42;
    (t42 = (acc4 + t41));
    return t42;
  }
}
__host__ __device__ void iterfun2(Tensor x3, Tensor w2, Tensor z2, int64_t m2, int64_t n4, int64_t j2) {
  int64_t s_idx2;
  (s_idx2 = (j2 / n4));
  int64_t n_idx;
  (n_idx = (j2 % n4));
  int64_t z_idx2;
  (z_idx2 = j2);
  int64_t x_offset1;
  (x_offset1 = (s_idx2 * m2));
  int64_t j1;
  (j1 = n_idx);
  double v1;
  {
    int64_t i13 = 0;
    double acc5 = 0.;
    while ((i13 < m2)) {
      (acc5 = t35(x3, w2, n4, x_offset1, j1, acc5, i13));
      (i13 = (i13 + 1));
    }
    (v1 = acc5);
  }
  (((z2.data)[z_idx2]) = v1);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z2.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z2.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel2(int64_t n5, Tensor x3, Tensor w2, Tensor z2, int64_t m2, int64_t n4) {
  int64_t idx2 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride2 = (gridDim.x * blockDim.x);
  while ((idx2 < n5)) {
    iterfun2(x3, w2, z2, m2, n4, idx2);
    (idx2 = (idx2 + stride2));
  }
}
__host__ void tensorOpExn__z____x_T___W__T(int64_t s_max2, Tensor x3, Tensor w2, Tensor z2) {
  Seq w_shape1;
  (w_shape1 = tensor_shape((w2.dims), (w2.rank)));
  int64_t m2;
  (m2 = ((w_shape1.seq)[0]));
  int64_t n4;
  (n4 = ((w_shape1.seq)[1]));
  int64_t t43;
  (t43 = (s_max2 * n4));
  {
    int64_t niterations2 = t43;
    int64_t tpb2 = 256;
    int64_t nblocks2 = (((niterations2 + (tpb2 * 10)) - 1) / (tpb2 * 10));
    loopKernel2<<<nblocks2, tpb2>>>(t43, x3, w2, z2, m2, n4);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ void iterfun3(Tensor x4, Tensor z3, int64_t i14) {
  double x_i;
  (x_i = ((x4.data)[i14]));
  char t44;
  (t44 = (x_i > 0.));
  double t45;
  if ((t44 == 1)) {
    (t45 = x_i);
  } else {
    (t45 = 0.);
  }
  (((z3.data)[i14]) = t45);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z3.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z3.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel3(int64_t n6, Tensor x4, Tensor z3) {
  int64_t idx3 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride3 = (gridDim.x * blockDim.x);
  while ((idx3 < n6)) {
    iterfun3(x4, z3, idx3);
    (idx3 = (idx3 + stride3));
  }
}
__host__ void tensorOpExn__z___ReLU_x_(int64_t s_max3, Tensor x4, Tensor z3) {
  Seq t46;
  (t46 = tensor_shape((x4.dims), (x4.rank)));
  int64_t s2;
  (s2 = ((t46.seq)[0]));
  int64_t t47;
  (t47 = tensorSize(x4));
  int64_t m3;
  (m3 = (t47 / s2));
  int64_t t48;
  (t48 = (s_max3 * m3));
  {
    int64_t niterations3 = t48;
    int64_t tpb3 = 256;
    int64_t nblocks3 = (((niterations3 + (tpb3 * 10)) - 1) / (tpb3 * 10));
    loopKernel3<<<nblocks3, tpb3>>>(t48, x4, z3);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ void iterfun4(Tensor x5, Tensor z4, int64_t i15) {
  double x_i1;
  (x_i1 = ((x5.data)[i15]));
  double t49;
  (t49 = exp1(x_i1));
  (((z4.data)[i15]) = t49);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z4.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z4.id)]) = STATE_GPU_INVALID);
  #endif
}
__host__ __device__ double t50(Tensor z4, int64_t offset1, double acc6, int64_t i16) {
  int64_t t51;
  (t51 = (offset1 + i16));
  double t52;
  (t52 = ((z4.data)[t51]));
  {
    double t53;
    (t53 = (acc6 + t52));
    return t53;
  }
}
__host__ __device__ void iterfunSummarize(Tensor expsumbuf, Tensor z4, int64_t m4, int64_t s_idx3) {
  int64_t offset1;
  (offset1 = (s_idx3 * m4));
  double expsum;
  {
    int64_t i17 = 0;
    double acc7 = 0.;
    while ((i17 < m4)) {
      (acc7 = t50(z4, offset1, acc7, i17));
      (i17 = (i17 + 1));
    }
    (expsum = acc7);
  }
  (((expsumbuf.data)[s_idx3]) = expsum);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(expsumbuf.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(expsumbuf.id)]) = STATE_GPU_INVALID);
  #endif
}
__host__ __device__ void iterfunRegularize(Tensor expsumbuf, Tensor z4, int64_t m4, int64_t i18) {
  int64_t s_idx4;
  (s_idx4 = (i18 / m4));
  double expsum1;
  (expsum1 = ((expsumbuf.data)[s_idx4]));
  double z_i;
  (z_i = ((z4.data)[i18]));
  double t54;
  (t54 = (z_i / expsum1));
  (((z4.data)[i18]) = t54);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z4.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z4.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel4(int64_t n7, Tensor expsumbuf, Tensor z4, int64_t m4) {
  int64_t idx4 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride4 = (gridDim.x * blockDim.x);
  while ((idx4 < n7)) {
    iterfunRegularize(expsumbuf, z4, m4, idx4);
    (idx4 = (idx4 + stride4));
  }
}
__global__ void loopKernel5(int64_t n8, Tensor expsumbuf, Tensor z4, int64_t m4) {
  int64_t idx5 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride5 = (gridDim.x * blockDim.x);
  while ((idx5 < n8)) {
    iterfunSummarize(expsumbuf, z4, m4, idx5);
    (idx5 = (idx5 + stride5));
  }
}
__global__ void loopKernel6(int64_t n9, Tensor x5, Tensor z4) {
  int64_t idx6 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride6 = (gridDim.x * blockDim.x);
  while ((idx6 < n9)) {
    iterfun4(x5, z4, idx6);
    (idx6 = (idx6 + stride6));
  }
}
__host__ void tensorOpExn__z___SoftMax_x_(int64_t s_max4, Tensor x5, Tensor expsumbuf, Tensor z4) {
  Seq t55;
  (t55 = tensor_shape((x5.dims), (x5.rank)));
  int64_t s3;
  (s3 = ((t55.seq)[0]));
  int64_t t56;
  (t56 = tensorSize(x5));
  int64_t m4;
  (m4 = (t56 / s3));
  int64_t t57;
  (t57 = (s_max4 * m4));
  {
    int64_t niterations4 = t57;
    int64_t tpb4 = 256;
    int64_t nblocks4 = (((niterations4 + (tpb4 * 10)) - 1) / (tpb4 * 10));
    loopKernel6<<<nblocks4, tpb4>>>(t57, x5, z4);
    cudaDeviceSynchronize();
  }
  {
    int64_t niterations5 = s_max4;
    int64_t tpb5 = 256;
    int64_t nblocks5 = (((niterations5 + (tpb5 * 10)) - 1) / (tpb5 * 10));
    loopKernel5<<<nblocks5, tpb5>>>(s_max4, expsumbuf, z4, m4);
    cudaDeviceSynchronize();
  }
  int64_t t58;
  (t58 = (s_max4 * m4));
  {
    int64_t niterations6 = t58;
    int64_t tpb6 = 256;
    int64_t nblocks6 = (((niterations6 + (tpb6 * 10)) - 1) / (tpb6 * 10));
    loopKernel4<<<nblocks6, tpb6>>>(t58, expsumbuf, z4, m4);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ void iterfun5(Tensor h, Tensor dldh, Tensor z5, int64_t i19) {
  double t59;
  (t59 = ((h.data)[i19]));
  char t60;
  (t60 = (t59 > 0.));
  double dhds_ii;
  if ((t60 == 1)) {
    (dhds_ii = 1.);
  } else {
    (dhds_ii = 0.);
  }
  double dldh_i;
  (dldh_i = ((dldh.data)[i19]));
  double t61;
  (t61 = (dhds_ii * dldh_i));
  (((z5.data)[i19]) = t61);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z5.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z5.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel7(int64_t n10, Tensor h, Tensor dldh, Tensor z5) {
  int64_t idx7 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride7 = (gridDim.x * blockDim.x);
  while ((idx7 < n10)) {
    iterfun5(h, dldh, z5, idx7);
    (idx7 = (idx7 + stride7));
  }
}
__host__ void tensorOpExn__z___d_dx_l_ReLU_x__(int64_t s_max5, Tensor h, Tensor dldh, Tensor z5) {
  Seq t62;
  (t62 = tensor_shape((h.dims), (h.rank)));
  int64_t s4;
  (s4 = ((t62.seq)[0]));
  int64_t t63;
  (t63 = tensorSize(h));
  int64_t m5;
  (m5 = (t63 / s4));
  int64_t t64;
  (t64 = (s_max5 * m5));
  {
    int64_t niterations7 = t64;
    int64_t tpb7 = 256;
    int64_t nblocks7 = (((niterations7 + (tpb7 * 10)) - 1) / (tpb7 * 10));
    loopKernel7<<<nblocks7, tpb7>>>(t64, h, dldh, z5);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ double t65(Tensor p, Tensor dldp, int64_t s_offset, int64_t i20, double p_i, double acc8, int64_t j3) {
  char t66;
  (t66 = (j3 == i20));
  double s_ij;
  if ((t66 == 1)) {
    double t67;
    (t67 = (p_i * p_i));
    (s_ij = (p_i - t67));
  } else {
    int64_t t68;
    (t68 = (s_offset + j3));
    double p_j;
    (p_j = ((p.data)[t68]));
    double t69;
    (t69 = (p_i * p_j));
    (s_ij = (-t69));
  }
  int64_t t70;
  (t70 = (s_offset + j3));
  double dldp_j;
  (dldp_j = ((dldp.data)[t70]));
  double t71;
  (t71 = (dldp_j * s_ij));
  {
    double t72;
    (t72 = (acc8 + t71));
    return t72;
  }
}
__host__ __device__ void iterfun6(Tensor p, Tensor dldp, Tensor z6, int64_t m6, int64_t i21) {
  int64_t s_idx5;
  (s_idx5 = (i21 / m6));
  int64_t s_offset;
  (s_offset = (s_idx5 * m6));
  int64_t i20;
  (i20 = (i21 % m6));
  int64_t t73;
  (t73 = (s_offset + i20));
  double p_i;
  (p_i = ((p.data)[t73]));
  double v2;
  {
    int64_t i22 = 0;
    double acc9 = 0.;
    while ((i22 < m6)) {
      (acc9 = t65(p, dldp, s_offset, i20, p_i, acc9, i22));
      (i22 = (i22 + 1));
    }
    (v2 = acc9);
  }
  int64_t t74;
  (t74 = (s_offset + i20));
  (((z6.data)[t74]) = v2);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z6.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z6.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel8(int64_t n11, Tensor p, Tensor dldp, Tensor z6, int64_t m6) {
  int64_t idx8 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride8 = (gridDim.x * blockDim.x);
  while ((idx8 < n11)) {
    iterfun6(p, dldp, z6, m6, idx8);
    (idx8 = (idx8 + stride8));
  }
}
__host__ void tensorOpExn__z___d_dx_l_SoftMax_x___(int64_t s_max6, Tensor p, Tensor dldp, Tensor z6) {
  Seq t75;
  (t75 = tensor_shape((p.dims), (p.rank)));
  int64_t s5;
  (s5 = ((t75.seq)[0]));
  int64_t t76;
  (t76 = tensorSize(p));
  int64_t m6;
  (m6 = (t76 / s5));
  int64_t t77;
  (t77 = (s_max6 * m6));
  {
    int64_t niterations8 = t77;
    int64_t tpb8 = 256;
    int64_t nblocks8 = (((niterations8 + (tpb8 * 10)) - 1) / (tpb8 * 10));
    loopKernel8<<<nblocks8, tpb8>>>(t77, p, dldp, z6, m6);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ void iterfun7(Tensor x6, Tensor z7, int64_t i23) {
  double t78;
  (t78 = ((x6.data)[i23]));
  (((z7.data)[i23]) = t78);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z7.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z7.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel9(int64_t n12, Tensor x6, Tensor z7) {
  int64_t idx9 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride9 = (gridDim.x * blockDim.x);
  while ((idx9 < n12)) {
    iterfun7(x6, z7, idx9);
    (idx9 = (idx9 + stride9));
  }
}
__host__ void tensorOpExn__z___x(int64_t s_max7, Tensor x6, Tensor z7) {
  Seq t79;
  (t79 = tensor_shape((x6.dims), (x6.rank)));
  int64_t s6;
  (s6 = ((t79.seq)[0]));
  int64_t t80;
  (t80 = tensorSize(x6));
  int64_t m7;
  (m7 = (t80 / s6));
  int64_t t81;
  (t81 = (s_max7 * m7));
  {
    int64_t niterations9 = t81;
    int64_t tpb9 = 256;
    int64_t nblocks9 = (((niterations9 + (tpb9 * 10)) - 1) / (tpb9 * 10));
    loopKernel9<<<nblocks9, tpb9>>>(t81, x6, z7);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ void iterfun8(double c, Tensor z8, int64_t i24) {
  double t82;
  (t82 = ((z8.data)[i24]));
  double t83;
  (t83 = (t82 * c));
  (((z8.data)[i24]) = t83);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z8.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z8.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel10(int64_t n13, double c, Tensor z8) {
  int64_t idx10 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride10 = (gridDim.x * blockDim.x);
  while ((idx10 < n13)) {
    iterfun8(c, z8, idx10);
    (idx10 = (idx10 + stride10));
  }
}
__host__ void tensorOpExn__z____scalar_c_(int64_t s_max8, double c, Tensor z8) {
  Seq t84;
  (t84 = tensor_shape((z8.dims), (z8.rank)));
  int64_t s7;
  (s7 = ((t84.seq)[0]));
  int64_t t85;
  (t85 = tensorSize(z8));
  int64_t m8;
  (m8 = (t85 / s7));
  int64_t t86;
  (t86 = (s_max8 * m8));
  {
    int64_t niterations10 = t86;
    int64_t tpb10 = 256;
    int64_t nblocks10 = (((niterations10 + (tpb10 * 10)) - 1) / (tpb10 * 10));
    loopKernel10<<<nblocks10, tpb10>>>(t86, c, z8);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ void iterfun9(double c1, Tensor z9, int64_t i25) {
  (((z9.data)[i25]) = c1);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z9.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z9.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel11(int64_t n14, double c1, Tensor z9) {
  int64_t idx11 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride11 = (gridDim.x * blockDim.x);
  while ((idx11 < n14)) {
    iterfun9(c1, z9, idx11);
    (idx11 = (idx11 + stride11));
  }
}
__host__ void tensorOpExn__Z___scalar_c_(double c1, Tensor z9) {
  int64_t m9;
  (m9 = tensorSize(z9));
  {
    int64_t niterations11 = m9;
    int64_t tpb11 = 256;
    int64_t nblocks11 = (((niterations11 + (tpb11 * 10)) - 1) / (tpb11 * 10));
    loopKernel11<<<nblocks11, tpb11>>>(m9, c1, z9);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ void iterfun10(Tensor x7, double c2, Tensor z10, int64_t x_offset2, int64_t i26) {
  double t87;
  (t87 = ((z10.data)[i26]));
  int64_t t88;
  (t88 = (i26 + x_offset2));
  double t89;
  (t89 = ((x7.data)[t88]));
  double t90;
  (t90 = (t89 * c2));
  double t91;
  (t91 = (t87 + t90));
  (((z10.data)[i26]) = t91);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z10.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z10.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel12(int64_t n15, Tensor x7, double c2, Tensor z10, int64_t x_offset2) {
  int64_t idx12 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride12 = (gridDim.x * blockDim.x);
  while ((idx12 < n15)) {
    iterfun10(x7, c2, z10, x_offset2, idx12);
    (idx12 = (idx12 + stride12));
  }
}
__host__ void tensorOpExn__Z____x___scalar_c_(int64_t s_idx6, Tensor x7, double c2, Tensor z10) {
  int64_t m10;
  (m10 = tensorSize(z10));
  int64_t x_offset2;
  (x_offset2 = (s_idx6 * m10));
  {
    int64_t niterations12 = m10;
    int64_t tpb12 = 256;
    int64_t nblocks12 = (((niterations12 + (tpb12 * 10)) - 1) / (tpb12 * 10));
    loopKernel12<<<nblocks12, tpb12>>>(m10, x7, c2, z10, x_offset2);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ void iterfun11(Tensor x8, double c3, Tensor z11, int64_t z_offset, int64_t i27) {
  int64_t z_idx3;
  (z_idx3 = (i27 + z_offset));
  double t92;
  (t92 = ((z11.data)[z_idx3]));
  double t93;
  (t93 = ((x8.data)[i27]));
  double t94;
  (t94 = (t93 * c3));
  double t95;
  (t95 = (t92 + t94));
  (((z11.data)[z_idx3]) = t95);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z11.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z11.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel13(int64_t n16, Tensor x8, double c3, Tensor z11, int64_t z_offset) {
  int64_t idx13 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride13 = (gridDim.x * blockDim.x);
  while ((idx13 < n16)) {
    iterfun11(x8, c3, z11, z_offset, idx13);
    (idx13 = (idx13 + stride13));
  }
}
__host__ void tensorOpExn__z____X___scalar_c_(int64_t s_idx7, Tensor x8, double c3, Tensor z11) {
  int64_t m11;
  (m11 = tensorSize(x8));
  int64_t z_offset;
  (z_offset = (s_idx7 * m11));
  {
    int64_t niterations13 = m11;
    int64_t tpb13 = 256;
    int64_t nblocks13 = (((niterations13 + (tpb13 * 10)) - 1) / (tpb13 * 10));
    loopKernel13<<<nblocks13, tpb13>>>(m11, x8, c3, z11, z_offset);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ void iterfun12(Tensor1 y1, double c4, Tensor z12, int64_t m12, int64_t i28) {
  int64_t idx14;
  (idx14 = ((y1.data)[i28]));
  int64_t offset2;
  (offset2 = (i28 * m12));
  int64_t z_idx4;
  (z_idx4 = (idx14 + offset2));
  double t96;
  (t96 = ((z12.data)[z_idx4]));
  double t97;
  (t97 = (t96 + c4));
  (((z12.data)[z_idx4]) = t97);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z12.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z12.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel14(int64_t n17, Tensor1 y1, double c4, Tensor z12, int64_t m12) {
  int64_t idx15 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride14 = (gridDim.x * blockDim.x);
  while ((idx15 < n17)) {
    iterfun12(y1, c4, z12, m12, idx15);
    (idx15 = (idx15 + stride14));
  }
}
__host__ void tensorOpExp__z____1_Hot_y____scalar_c_(int64_t s_max9, Tensor1 y1, double c4, Tensor z12) {
  Seq t98;
  (t98 = tensor_shape((z12.dims), (z12.rank)));
  int64_t m12;
  (m12 = ((t98.seq)[1]));
  {
    int64_t niterations14 = s_max9;
    int64_t tpb14 = 256;
    int64_t nblocks14 = (((niterations14 + (tpb14 * 10)) - 1) / (tpb14 * 10));
    loopKernel14<<<nblocks14, tpb14>>>(s_max9, y1, c4, z12, m12);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ void t99(Tensor z13, int64_t offset3, int64_t idx16, double v3, int64_t j4) {
  char t100;
  (t100 = (j4 == idx16));
  if ((t100 == 1)) {
    int64_t t101;
    (t101 = (j4 + offset3));
    (((z13.data)[t101]) = v3);
  } else {
    int64_t t102;
    (t102 = (j4 + offset3));
    (((z13.data)[t102]) = 0.);
  }
}
__host__ __device__ void iterfun13(Tensor1 y2, Tensor x9, Tensor z13, int64_t m13, int64_t i29) {
  int64_t offset3;
  (offset3 = (i29 * m13));
  int64_t idx16;
  (idx16 = ((y2.data)[i29]));
  int64_t t103;
  (t103 = (idx16 + offset3));
  double t104;
  (t104 = ((x9.data)[t103]));
  double t105;
  (t105 = (1. / t104));
  double v3;
  (v3 = (-t105));
  {
    int64_t i30 = 0;
    while ((i30 < m13)) {
      t99(z13, offset3, idx16, v3, i30);
      (i30 = (i30 + 1));
    }
  }
}
__global__ void loopKernel15(int64_t n18, Tensor1 y2, Tensor x9, Tensor z13, int64_t m13) {
  int64_t idx17 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride15 = (gridDim.x * blockDim.x);
  while ((idx17 < n18)) {
    iterfun13(y2, x9, z13, m13, idx17);
    (idx17 = (idx17 + stride15));
  }
}
__host__ void tensorOpExn__z___1_Hot_y____scalar__1__x_T___1_Hot_y___(int64_t s_max10, Tensor1 y2, Tensor x9, Tensor z13) {
  Seq t106;
  (t106 = tensor_shape((x9.dims), (x9.rank)));
  int64_t s8;
  (s8 = ((t106.seq)[0]));
  Seq t107;
  (t107 = tensor_shape((x9.dims), (x9.rank)));
  int64_t m13;
  (m13 = ((t107.seq)[1]));
  {
    int64_t niterations15 = s_max10;
    int64_t tpb15 = 256;
    int64_t nblocks15 = (((niterations15 + (tpb15 * 10)) - 1) / (tpb15 * 10));
    loopKernel15<<<nblocks15, tpb15>>>(s_max10, y2, x9, z13, m13);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ double t108(Tensor z14, int64_t m14, int64_t i31, double acc10, int64_t j5) {
  int64_t s_idx8;
  (s_idx8 = (j5 + 1));
  int64_t s_offset1;
  (s_offset1 = (s_idx8 * m14));
  int64_t t109;
  (t109 = (s_offset1 + i31));
  double t110;
  (t110 = ((z14.data)[t109]));
  {
    double t111;
    (t111 = (acc10 + t110));
    return t111;
  }
}
__host__ __device__ void iterfun14(Tensor z14, int64_t s9, int64_t m14, int64_t i31) {
  int64_t t112;
  (t112 = (s9 - 1));
  double v4;
  {
    int64_t i32 = 0;
    double acc11 = ((z14.data)[i31]);
    while ((i32 < t112)) {
      (acc11 = t108(z14, m14, i31, acc11, i32));
      (i32 = (i32 + 1));
    }
    (v4 = acc11);
  }
  (((z14.data)[i31]) = v4);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z14.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z14.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel16(int64_t n19, Tensor z14, int64_t s9, int64_t m14) {
  int64_t idx18 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride16 = (gridDim.x * blockDim.x);
  while ((idx18 < n19)) {
    iterfun14(z14, s9, m14, idx18);
    (idx18 = (idx18 + stride16));
  }
}
__host__ void tensorOpExn__Dim1Reduce_z__dst___z_0__op_____(Tensor z14) {
  Seq t113;
  (t113 = tensor_shape((z14.dims), (z14.rank)));
  int64_t s9;
  (s9 = ((t113.seq)[0]));
  int64_t t114;
  (t114 = tensorSize(z14));
  int64_t m14;
  (m14 = (t114 / s9));
  {
    int64_t niterations16 = m14;
    int64_t tpb16 = 256;
    int64_t nblocks16 = (((niterations16 + (tpb16 * 10)) - 1) / (tpb16 * 10));
    loopKernel16<<<nblocks16, tpb16>>>(m14, z14, s9, m14);
    cudaDeviceSynchronize();
  }
}
__host__ __device__ Tensor nnComponentOutBufs(Rec comp) {
  Tensor X = (comp.out_bufs);
  {
    Tensor t115;
    (t115 = X);
    return t115;
  }
}
__host__ __device__ Tensor nnComponentApplyExn(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t s_max11, Tensor inputs1, Rec comp1) {
  int64_t ty1;
  int64_t X1 = (comp1.ty);
  (ty1 = X1);
  char t116;
  (t116 = (ty1 == nnCompType_FullyConnected));
  if ((t116 == 1)) {
    Tensor t117;
    Tensor X2 = (comp1.w);
    (t117 = X2);
    Tensor t118;
    Tensor X3 = (comp1.b);
    (t118 = X3);
    Tensor t119;
    Tensor X4 = (comp1.out_bufs);
    (t119 = X4);
    tensorOpExn__z___Wx_B(s_max11, t117, inputs1, t118, t119);
    Tensor X5 = (comp1.out_bufs);
    {
      Tensor t120;
      (t120 = X5);
      return t120;
    }
  } else {
    char t121;
    (t121 = (ty1 == nnCompType_ReLU));
    if ((t121 == 1)) {
      Tensor t122;
      Tensor X6 = (comp1.out_bufs);
      (t122 = X6);
      tensorOpExn__z___ReLU_x_(s_max11, inputs1, t122);
      Tensor X7 = (comp1.out_bufs);
      {
        Tensor t123;
        (t123 = X7);
        return t123;
      }
    } else {
      char t124;
      (t124 = (ty1 == nnCompType_SoftMax));
      if ((t124 == 1)) {
        Tensor t125;
        Tensor X8 = (comp1.softmax_bufs);
        (t125 = X8);
        Tensor t126;
        Tensor X9 = (comp1.out_bufs);
        (t126 = X9);
        tensorOpExn__z___SoftMax_x_(s_max11, inputs1, t125, t126);
        Tensor X10 = (comp1.out_bufs);
        {
          Tensor t127;
          (t127 = X10);
          return t127;
        }
      } else {
        Tensor X11 = (comp1.out_bufs);
        {
          Tensor t128;
          (t128 = X11);
          return t128;
        }
      }
    }
  }
}
__host__ __device__ Tensor nnComponentBackpropExn(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t s_max12, Tensor comp_inputs, Tensor output_grads, Rec comp2) {
  int64_t ty2;
  int64_t X12 = (comp2.ty);
  (ty2 = X12);
  char t129;
  (t129 = (ty2 == nnCompType_FullyConnected));
  if ((t129 == 1)) {
    Tensor t130;
    Tensor X13 = (comp2.b_grads);
    (t130 = X13);
    tensorOpExn__z___x(s_max12, output_grads, t130);
    Tensor t131;
    Tensor X14 = (comp2.w_grads);
    (t131 = X14);
    tensorOpExn__z___x___y_T(s_max12, output_grads, comp_inputs, t131);
    Tensor t132;
    Tensor X15 = (comp2.w);
    (t132 = X15);
    Tensor t133;
    Tensor X16 = (comp2.in_grads);
    (t133 = X16);
    tensorOpExn__z____x_T___W__T(s_max12, output_grads, t132, t133);
    Tensor X17 = (comp2.in_grads);
    {
      Tensor t134;
      (t134 = X17);
      return t134;
    }
  } else {
    char t135;
    (t135 = (ty2 == nnCompType_ReLU));
    if ((t135 == 1)) {
      Tensor t136;
      Tensor X18 = (comp2.out_bufs);
      (t136 = X18);
      Tensor t137;
      Tensor X19 = (comp2.in_grads);
      (t137 = X19);
      tensorOpExn__z___d_dx_l_ReLU_x__(s_max12, t136, output_grads, t137);
      Tensor X20 = (comp2.in_grads);
      {
        Tensor t138;
        (t138 = X20);
        return t138;
      }
    } else {
      char t139;
      (t139 = (ty2 == nnCompType_SoftMax));
      if ((t139 == 1)) {
        Tensor t140;
        Tensor X21 = (comp2.out_bufs);
        (t140 = X21);
        Tensor t141;
        Tensor X22 = (comp2.in_grads);
        (t141 = X22);
        tensorOpExn__z___d_dx_l_SoftMax_x___(s_max12, t140, output_grads, t141);
        Tensor X23 = (comp2.in_grads);
        {
          Tensor t142;
          (t142 = X23);
          return t142;
        }
      } else {
        Tensor X24 = (comp2.in_grads);
        {
          Tensor t143;
          (t143 = X24);
          return t143;
        }
      }
    }
  }
}
__host__ __device__ void nnComponent_TEMP_SetGradients(int64_t nnCompType_FullyConnected, double scalar, Rec comp3) {
  int64_t ty3;
  int64_t X25 = (comp3.ty);
  (ty3 = X25);
  char t144;
  (t144 = (ty3 == nnCompType_FullyConnected));
  if ((t144 == 1)) {
    Tensor t145;
    Tensor X26 = (comp3.w_grads);
    (t145 = X26);
    tensorOpExn__Z___scalar_c_(scalar, t145);
    Tensor t146;
    Tensor X27 = (comp3.b_grads);
    (t146 = X27);
    tensorOpExn__Z___scalar_c_(scalar, t146);
  } else {
    ;
  }
}
__host__ __device__ void nnComponent_TEMP_ReduceGradients(int64_t nnCompType_FullyConnected, Rec comp4) {
  int64_t ty4;
  int64_t X28 = (comp4.ty);
  (ty4 = X28);
  char t147;
  (t147 = (ty4 == nnCompType_FullyConnected));
  if ((t147 == 1)) {
    Tensor t148;
    Tensor X29 = (comp4.w_grads);
    (t148 = X29);
    tensorOpExn__Dim1Reduce_z__dst___z_0__op_____(t148);
    Tensor t149;
    Tensor X30 = (comp4.b_grads);
    (t149 = X30);
    tensorOpExn__Dim1Reduce_z__dst___z_0__op_____(t149);
  } else {
    ;
  }
}
__host__ __device__ void nnComponent_TEMP_ScaleGradients(int64_t nnCompType_FullyConnected, double scalar1, Rec comp5) {
  int64_t ty5;
  int64_t X31 = (comp5.ty);
  (ty5 = X31);
  char t150;
  (t150 = (ty5 == nnCompType_FullyConnected));
  if ((t150 == 1)) {
    Tensor t151;
    Tensor X32 = (comp5.w_grads);
    (t151 = X32);
    tensorOpExn__z____scalar_c_(1, scalar1, t151);
    Tensor t152;
    Tensor X33 = (comp5.b_grads);
    (t152 = X33);
    tensorOpExn__z____scalar_c_(1, scalar1, t152);
  } else {
    ;
  }
}
__host__ __device__ void nnComponent_TEMP_ApplyGradients(int64_t nnCompType_FullyConnected, double scalar2, Rec comp6) {
  int64_t ty6;
  int64_t X34 = (comp6.ty);
  (ty6 = X34);
  char t153;
  (t153 = (ty6 == nnCompType_FullyConnected));
  if ((t153 == 1)) {
    Tensor t154;
    Tensor X35 = (comp6.w_grads);
    (t154 = X35);
    Tensor t155;
    Tensor X36 = (comp6.w);
    (t155 = X36);
    tensorOpExn__Z____x___scalar_c_(0, t154, scalar2, t155);
    Tensor t156;
    Tensor X37 = (comp6.b_grads);
    (t156 = X37);
    Tensor t157;
    Tensor X38 = (comp6.b);
    (t157 = X38);
    tensorOpExn__Z____x___scalar_c_(0, t156, scalar2, t157);
  } else {
    ;
  }
}
__host__ __device__ void nnComponent_TEMP_L2Regularize(int64_t nnCompType_FullyConnected, double scalar3, Rec comp7) {
  int64_t ty7;
  int64_t X39 = (comp7.ty);
  (ty7 = X39);
  char t158;
  (t158 = (ty7 == nnCompType_FullyConnected));
  if ((t158 == 1)) {
    Tensor t159;
    Tensor X40 = (comp7.w);
    (t159 = X40);
    Tensor t160;
    Tensor X41 = (comp7.w_grads);
    (t160 = X41);
    tensorOpExn__z____X___scalar_c_(0, t159, scalar3, t160);
    Tensor t161;
    Tensor X42 = (comp7.b);
    (t161 = X42);
    Tensor t162;
    Tensor X43 = (comp7.b_grads);
    (t162 = X43);
    tensorOpExn__z____X___scalar_c_(0, t161, scalar3, t162);
  } else {
    ;
  }
}
__host__ __device__ void nnComponentZeroGrad(int64_t nnCompType_FullyConnected, Rec comp8) {
  nnComponent_TEMP_SetGradients(nnCompType_FullyConnected, 0., comp8);
}
__host__ __device__ Tensor nnLossFunctionBackpropExn(int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, int64_t s_max13, Tensor inputs2, Tensor1 expecteds, Rec1 lossfn1) {
  int64_t ty8;
  int64_t X44 = (lossfn1.ty);
  (ty8 = X44);
  char t163;
  (t163 = (ty8 == nnLossfnType_CrossEntropyLoss));
  if ((t163 == 1)) {
    Tensor t164;
    Tensor X45 = (lossfn1.in_grads);
    (t164 = X45);
    tensorOpExn__z___1_Hot_y____scalar__1__x_T___1_Hot_y___(s_max13, expecteds, inputs2, t164);
    Tensor X46 = (lossfn1.in_grads);
    {
      Tensor t165;
      (t165 = X46);
      return t165;
    }
  } else {
    char t166;
    (t166 = (ty8 == nnLossfnType_SoftMaxCrossEntropyLoss));
    if ((t166 == 1)) {
      Tensor t167;
      Tensor X47 = (lossfn1.softmax_bufs);
      (t167 = X47);
      Tensor t168;
      Tensor X48 = (lossfn1.in_grads);
      (t168 = X48);
      tensorOpExn__z___SoftMax_x_(s_max13, inputs2, t167, t168);
      double t169;
      (t169 = (-1.));
      Tensor t170;
      Tensor X49 = (lossfn1.in_grads);
      (t170 = X49);
      tensorOpExp__z____1_Hot_y____scalar_c_(s_max13, expecteds, t169, t170);
      Tensor X50 = (lossfn1.in_grads);
      {
        Tensor t171;
        (t171 = X50);
        return t171;
      }
    } else {
      Tensor X51 = (lossfn1.in_grads);
      {
        Tensor t172;
        (t172 = X51);
        return t172;
      }
    }
  }
}
__host__ __device__ int64_t t173(int64_t nnCompType_FullyConnected, int64_t x10, Rec comp9) {
  nnComponentZeroGrad(nnCompType_FullyConnected, comp9);
  {
    int64_t t174;
    (t174 = 0);
    return t174;
  }
}
__host__ __device__ int64_t foldl1(int64_t acc_init2, Seq1 s10, int64_t nnCompType_FullyConnected) {
  int64_t acc12 = acc_init2;
  int64_t i33 = 0;
  while ((i33 < (s10.len))) {
    (acc12 = t173(nnCompType_FullyConnected, acc12, ((s10.seq)[i33])));
    (i33 = (i33 + 1));
  }
  return acc12;
}
__host__ __device__ void nnZeroGrad(int64_t nnCompType_FullyConnected, Rec2 network) {
  Seq1 t175;
  Seq1 X52 = (network.components);
  (t175 = X52);
  int64_t _;
  (_ = foldl1(0, t175, nnCompType_FullyConnected));
  ;
}
__host__ __device__ Tensor t176(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t s_max14, Tensor prevouts, Rec comp10) {
  {
    Tensor t177;
    (t177 = nnComponentApplyExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, s_max14, prevouts, comp10));
    return t177;
  }
}
__host__ __device__ Tensor foldl2(Tensor acc_init3, Seq1 s11, int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t s_max14) {
  Tensor acc13 = acc_init3;
  int64_t i34 = 0;
  while ((i34 < (s11.len))) {
    (acc13 = t176(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, s_max14, acc13, ((s11.seq)[i34])));
    (i34 = (i34 + 1));
  }
  return acc13;
}
__host__ __device__ Tensor nnEvalExn(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, Rec2 network1, Tensor inputs3) {
  Seq t178;
  (t178 = tensor_shape((inputs3.dims), (inputs3.rank)));
  int64_t s_max14;
  (s_max14 = ((t178.seq)[0]));
  Seq1 t179;
  Seq1 X53 = (network1.components);
  (t179 = X53);
  {
    Tensor t180;
    (t180 = foldl2(inputs3, t179, nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, s_max14));
    return t180;
  }
}
__host__ __device__ Tensor t181(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, Rec2 network2, int64_t s_max15, int64_t n_components, Tensor out_grads, int64_t i35) {
  int64_t t182;
  (t182 = (i35 + 2));
  int64_t idx19;
  (idx19 = (n_components - t182));
  int64_t previdx;
  (previdx = (idx19 - 1));
  Seq1 t183;
  Seq1 X54 = (network2.components);
  (t183 = X54);
  Rec comp11;
  (comp11 = ((t183.seq)[idx19]));
  Seq1 t184;
  Seq1 X55 = (network2.components);
  (t184 = X55);
  Rec t185;
  (t185 = ((t184.seq)[previdx]));
  Tensor in_bufs;
  (in_bufs = nnComponentOutBufs(t185));
  {
    Tensor t186;
    (t186 = nnComponentBackpropExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, s_max15, in_bufs, out_grads, comp11));
    return t186;
  }
}
__host__ __device__ void nnBackpropExn(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, Rec2 network2, Rec3 batch) {
  Tensor t187;
  Tensor X56 = (batch.inputs);
  (t187 = X56);
  Seq t188;
  (t188 = tensor_shape((t187.dims), (t187.rank)));
  int64_t s_max15;
  (s_max15 = ((t188.seq)[0]));
  Tensor t189;
  Tensor X57 = (batch.inputs);
  (t189 = X57);
  Tensor outputs;
  (outputs = nnEvalExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, network2, t189));
  Tensor1 t190;
  Tensor1 X58 = (batch.correct_linear_outidxs);
  (t190 = X58);
  Rec1 t191;
  Rec1 X59 = (network2.lossfn);
  (t191 = X59);
  Tensor lossgrads;
  (lossgrads = nnLossFunctionBackpropExn(nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, s_max15, outputs, t190, t191));
  Seq1 t192;
  Seq1 X60 = (network2.components);
  (t192 = X60);
  int64_t n_components;
  (n_components = (t192.len));
  char t193;
  (t193 = (n_components == 0));
  if ((t193 == 1)) {
    ;
  } else {
    char t194;
    (t194 = (n_components == 1));
    if ((t194 == 1)) {
      Seq1 t195;
      Seq1 X61 = (network2.components);
      (t195 = X61);
      Rec lastcomp;
      (lastcomp = ((t195.seq)[0]));
      Tensor t196;
      Tensor X62 = (batch.inputs);
      (t196 = X62);
      Tensor _2;
      (_2 = nnComponentBackpropExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, s_max15, t196, lossgrads, lastcomp));
      ;
    } else {
      Seq1 t197;
      Seq1 X63 = (network2.components);
      (t197 = X63);
      int64_t t198;
      (t198 = (n_components - 1));
      Rec lastcomp1;
      (lastcomp1 = ((t197.seq)[t198]));
      Seq1 t199;
      Seq1 X64 = (network2.components);
      (t199 = X64);
      int64_t t200;
      (t200 = (n_components - 2));
      Rec t201;
      (t201 = ((t199.seq)[t200]));
      Tensor lastcomp_in_bufs;
      (lastcomp_in_bufs = nnComponentOutBufs(t201));
      Tensor lastcomp_in_grads;
      (lastcomp_in_grads = nnComponentBackpropExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, s_max15, lastcomp_in_bufs, lossgrads, lastcomp1));
      int64_t t202;
      (t202 = (n_components - 2));
      Tensor firstcomp_out_grads;
      {
        int64_t i36 = 0;
        Tensor acc14 = lastcomp_in_grads;
        while ((i36 < t202)) {
          (acc14 = t181(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, network2, s_max15, n_components, acc14, i36));
          (i36 = (i36 + 1));
        }
        (firstcomp_out_grads = acc14);
      }
      Seq1 t203;
      Seq1 X65 = (network2.components);
      (t203 = X65);
      Rec firstcomp;
      (firstcomp = ((t203.seq)[0]));
      Tensor firstcomp_in_bufs;
      Tensor X66 = (batch.inputs);
      (firstcomp_in_bufs = X66);
      Tensor _3;
      (_3 = nnComponentBackpropExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, s_max15, firstcomp_in_bufs, firstcomp_out_grads, firstcomp));
      ;
    }
  }
}
__host__ __device__ int64_t t204(int64_t nnCompType_FullyConnected, double batchsize_regularizer, int64_t x11, Rec comp12) {
  nnComponent_TEMP_ReduceGradients(nnCompType_FullyConnected, comp12);
  nnComponent_TEMP_ScaleGradients(nnCompType_FullyConnected, batchsize_regularizer, comp12);
  {
    int64_t t205;
    (t205 = 0);
    return t205;
  }
}
__host__ __device__ int64_t t206(int64_t nnCompType_FullyConnected, double lambda, int64_t x12, Rec comp13) {
  double t207;
  (t207 = (2. * lambda));
  nnComponent_TEMP_L2Regularize(nnCompType_FullyConnected, t207, comp13);
  {
    int64_t t208;
    (t208 = 0);
    return t208;
  }
}
__host__ __device__ int64_t t209(int64_t nnCompType_FullyConnected, double alpha, int64_t x13, Rec comp14) {
  double t210;
  (t210 = (-alpha));
  nnComponent_TEMP_ApplyGradients(nnCompType_FullyConnected, t210, comp14);
  {
    int64_t t211;
    (t211 = 0);
    return t211;
  }
}
__host__ __device__ int64_t foldl3(int64_t acc_init4, Seq1 s12, int64_t nnCompType_FullyConnected, double alpha) {
  int64_t acc15 = acc_init4;
  int64_t i37 = 0;
  while ((i37 < (s12.len))) {
    (acc15 = t209(nnCompType_FullyConnected, alpha, acc15, ((s12.seq)[i37])));
    (i37 = (i37 + 1));
  }
  return acc15;
}
__host__ __device__ int64_t foldl4(int64_t acc_init5, Seq1 s13, int64_t nnCompType_FullyConnected, double lambda) {
  int64_t acc16 = acc_init5;
  int64_t i38 = 0;
  while ((i38 < (s13.len))) {
    (acc16 = t206(nnCompType_FullyConnected, lambda, acc16, ((s13.seq)[i38])));
    (i38 = (i38 + 1));
  }
  return acc16;
}
__host__ __device__ int64_t foldl5(int64_t acc_init6, Seq1 s14, int64_t nnCompType_FullyConnected, double batchsize_regularizer) {
  int64_t acc17 = acc_init6;
  int64_t i39 = 0;
  while ((i39 < (s14.len))) {
    (acc17 = t204(nnCompType_FullyConnected, batchsize_regularizer, acc17, ((s14.seq)[i39])));
    (i39 = (i39 + 1));
  }
  return acc17;
}
__host__ __device__ void nnGradientDescentExn(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, Rec2 network3, double alpha, double lambda, Rec3 batch1) {
  nnZeroGrad(nnCompType_FullyConnected, network3);
  Tensor t212;
  Tensor X67 = (batch1.inputs);
  (t212 = X67);
  Seq t213;
  (t213 = tensor_shape((t212.dims), (t212.rank)));
  int64_t batchsize1;
  (batchsize1 = ((t213.seq)[0]));
  nnBackpropExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, network3, batch1);
  double t214;
  (t214 = (( double ) batchsize1));
  double batchsize_regularizer;
  (batchsize_regularizer = (1. / t214));
  Seq1 t215;
  Seq1 X68 = (network3.components);
  (t215 = X68);
  int64_t _4;
  (_4 = foldl5(0, t215, nnCompType_FullyConnected, batchsize_regularizer));
  char t216;
  (t216 = (lambda == 0.));
  if ((t216 == 1)) {
    ;
  } else {
    Seq1 t217;
    Seq1 X69 = (network3.components);
    (t217 = X69);
    int64_t _5;
    (_5 = foldl4(0, t217, nnCompType_FullyConnected, lambda));
    ;
  }
  Seq1 t218;
  Seq1 X70 = (network3.components);
  (t218 = X70);
  int64_t _6;
  (_6 = foldl3(0, t218, nnCompType_FullyConnected, alpha));
  ;
}
__host__ __device__ int64_t t219(int64_t acc18, int64_t e1) {
  {
    int64_t t220;
    (t220 = (acc18 * e1));
    return t220;
  }
}
__host__ __device__ int64_t foldl6(int64_t acc_init7, Seq s15) {
  int64_t acc19 = acc_init7;
  int64_t i40 = 0;
  while ((i40 < (s15.len))) {
    (acc19 = t219(acc19, ((s15.seq)[i40])));
    (i40 = (i40 + 1));
  }
  return acc19;
}
__host__ __device__ int64_t tensorSize1(Tensor t221) {
  Seq t222;
  (t222 = tensor_shape((t221.dims), (t221.rank)));
  {
    int64_t t223;
    (t223 = foldl6(1, t222));
    return t223;
  }
}
__host__ __device__ int64_t t224(Tensor t225, int64_t s_offset2, int64_t cand_idx, int64_t idx20) {
  int64_t t226;
  (t226 = (idx20 + s_offset2));
  double t227;
  (t227 = ((t225.data)[t226]));
  int64_t t228;
  (t228 = (cand_idx + s_offset2));
  double t229;
  (t229 = ((t225.data)[t228]));
  char t230;
  (t230 = (t227 > t229));
  if ((t230 == 1)) {
    {
      int64_t t231;
      (t231 = idx20);
      return t231;
    }
  } else {
    {
      int64_t t232;
      (t232 = cand_idx);
      return t232;
    }
  }
}
__host__ __device__ int64_t tensorLinearMaxIdx(int64_t s_idx9, Tensor t225) {
  Seq t233;
  (t233 = tensor_shape((t225.dims), (t225.rank)));
  int64_t s16;
  (s16 = ((t233.seq)[0]));
  int64_t t234;
  (t234 = tensorSize1(t225));
  int64_t size1;
  (size1 = (t234 / s16));
  int64_t s_offset2;
  (s_offset2 = (s_idx9 * size1));
  int64_t t235;
  (t235 = (size1 - 1));
  {
    int64_t t236;
    {
      int64_t i41 = 0;
      int64_t acc20 = (size1 - 1);
      while ((i41 < t235)) {
        (acc20 = t224(t225, s_offset2, acc20, i41));
        (i41 = (i41 + 1));
      }
      (t236 = acc20);
    }
    return t236;
  }
}
__host__ __device__ int64_t t237(Rec3 batch2, Tensor outputs1, int64_t b_acc, int64_t b_idx) {
  int64_t seqAlloc[1];
  Seq t238;
  int64_t t239;
  (t239 = tensorLinearMaxIdx(b_idx, outputs1));
  Tensor1 t240;
  Tensor1 X71 = (batch2.correct_linear_outidxs);
  (t240 = X71);
  ((seqAlloc[0]) = b_idx);
  ((t238.seq) = seqAlloc);
  ((t238.len) = 1);
  int64_t t241;
  (t241 = ((t240.data)[(cartesian_to_linear_index((t240.dims), (t240.rank), t238) + (t240.offset))]));
  char t242;
  (t242 = (t239 == t241));
  if ((t242 == 1)) {
    {
      int64_t t243;
      (t243 = (b_acc + 1));
      return t243;
    }
  } else {
    {
      int64_t t244;
      (t244 = b_acc);
      return t244;
    }
  }
}
__host__ __device__ int64_t t245(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, char printStatus1, Rec2 network4, Seq2 batches, int64_t acc21, int64_t i42) {
  char (*t246) = "/";
  char (*t247) = "\r";
  if ((printStatus1 == 1)) {
    printf("%s", t247);
    int64_t t248;
    (t248 = (i42 + 1));
    double t249;
    (t249 = (( double ) t248));
    printf("%f", t249);
    printf("%s", t246);
    int64_t t250;
    (t250 = (batches.len));
    double t251;
    (t251 = (( double ) t250));
    printf("%f", t251);
  } else {
    ;
  }
  Rec3 batch2;
  (batch2 = ((batches.seq)[i42]));
  Tensor t252;
  Tensor X72 = (batch2.inputs);
  (t252 = X72);
  Seq t253;
  (t253 = tensor_shape((t252.dims), (t252.rank)));
  int64_t batchsize2;
  (batchsize2 = ((t253.seq)[0]));
  Tensor t254;
  Tensor X73 = (batch2.inputs);
  (t254 = X73);
  Tensor outputs1;
  (outputs1 = nnEvalExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, network4, t254));
  int64_t batch_accuracy;
  {
    int64_t i43 = 0;
    int64_t acc22 = 0;
    while ((i43 < batchsize2)) {
      (acc22 = t237(batch2, outputs1, acc22, i43));
      (i43 = (i43 + 1));
    }
    (batch_accuracy = acc22);
  }
  {
    int64_t t255;
    (t255 = (acc21 + batch_accuracy));
    return t255;
  }
}
__host__ __device__ int64_t nnAccuracyDiscrete(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, char printStatus1, Rec2 network4, Seq2 batches) {
  char (*t256) = "\n";
  int64_t t257;
  (t257 = (batches.len));
  int64_t correct_guesses;
  {
    int64_t i44 = 0;
    int64_t acc23 = 0;
    while ((i44 < t257)) {
      (acc23 = t245(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, printStatus1, network4, batches, acc23, i44));
      (i44 = (i44 + 1));
    }
    (correct_guesses = acc23);
  }
  if ((printStatus1 == 1)) {
    printf("%s", t256);
  } else {
    ;
  }
  {
    int64_t t258;
    (t258 = correct_guesses);
    return t258;
  }
}
__host__ __device__ int64_t t259(int64_t acc24, Rec3 batch3) {
  Tensor t260;
  Tensor X74 = (batch3.inputs);
  (t260 = X74);
  Seq t261;
  (t261 = tensor_shape((t260.dims), (t260.rank)));
  int64_t t262;
  (t262 = ((t261.seq)[0]));
  {
    int64_t t263;
    (t263 = (acc24 + t262));
    return t263;
  }
}
__host__ __device__ int64_t foldl7(int64_t acc_init8, Seq2 s17) {
  int64_t acc25 = acc_init8;
  int64_t i45 = 0;
  while ((i45 < (s17.len))) {
    (acc25 = t259(acc25, ((s17.seq)[i45])));
    (i45 = (i45 + 1));
  }
  return acc25;
}
__host__ __device__ double nnAccuracyProportion(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, char printStatus2, Rec2 network5, Seq2 batches1) {
  int64_t correct_guesses1;
  (correct_guesses1 = nnAccuracyDiscrete(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, printStatus2, network5, batches1));
  int64_t datalength;
  (datalength = foldl7(0, batches1));
  double t264;
  (t264 = (( double ) correct_guesses1));
  double t265;
  (t265 = (( double ) datalength));
  {
    double t266;
    (t266 = (t264 / t265));
    return t266;
  }
}
__host__ __device__ void wrappedPrint(char (*s18)) {
  printf("%s", s18);
}
__host__ __device__ void t267(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, Rec4 params, Rec2 network6, int64_t rounds, Seq2 training_batches, double alpha1, double lambda1, int64_t batch_idx) {
  char (*t268) = "/";
  char (*t269) = "\rround ";
  char t270;
  char X75 = (params.printStatus);
  (t270 = X75);
  if ((t270 == 1)) {
    wrappedPrint(t269);
    int64_t t271;
    (t271 = (batch_idx + 1));
    double t272;
    (t272 = (( double ) t271));
    printf("%f", t272);
    wrappedPrint(t268);
    double t273;
    (t273 = (( double ) rounds));
    printf("%f", t273);
  } else {
    ;
  }
  Rec3 t274;
  (t274 = ((training_batches.seq)[batch_idx]));
  nnGradientDescentExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, network6, alpha1, lambda1, t274);
}
__host__ __device__ Rec5 t275(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, Rec4 params, Rec2 network6, int64_t rounds, Seq2 training_batches, Seq2 validation_batches, Rec5 acc26, int64_t epoch_idx) {
  Rec5 alloc;
  char (*t276) = "%\n";
  char (*t277) = "Computed accuracy: ";
  char (*t278) = "evalating performance...\n";
  char (*t279) = "\n";
  char (*t280) = "]\n";
  char (*t281) = "[lambda = ";
  char (*t282) = "]\n";
  char (*t283) = "[alpha = ";
  char (*t284) = "]\n";
  char (*t285) = "/";
  char (*t286) = "[Iteration ";
  int64_t epoch;
  (epoch = (epoch_idx + 1));
  double alpha1;
  double X76 = (acc26._0);
  (alpha1 = X76);
  double lambda1;
  double X77 = (acc26._1);
  (lambda1 = X77);
  char t287;
  char X78 = (params.printStatus);
  (t287 = X78);
  if ((t287 == 1)) {
    wrappedPrint(t286);
    double t288;
    (t288 = (( double ) epoch));
    printf("%f", t288);
    wrappedPrint(t285);
    int64_t t289;
    int64_t X79 = (params.epochs);
    (t289 = X79);
    double t290;
    (t290 = (( double ) t289));
    printf("%f", t290);
    printf("%s", t284);
    wrappedPrint(t283);
    printf("%f", alpha1);
    wrappedPrint(t282);
    wrappedPrint(t281);
    printf("%f", lambda1);
    wrappedPrint(t280);
  } else {
    ;
  }
  int64_t t291;
  (t291 = (training_batches.len));
  {
    int64_t i46 = 0;
    while ((i46 < t291)) {
      t267(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, params, network6, rounds, training_batches, alpha1, lambda1, i46);
      (i46 = (i46 + 1));
    }
  }
  wrappedPrint(t279);
  char t292;
  char X80 = (params.evaluateBetweenEpochs);
  (t292 = X80);
  if ((t292 == 1)) {
    char t293;
    char X81 = (params.printStatus);
    (t293 = X81);
    if ((t293 == 1)) {
      wrappedPrint(t278);
    } else {
      ;
    }
    char t294;
    char X82 = (params.printStatus);
    (t294 = X82);
    double accuracy;
    (accuracy = nnAccuracyProportion(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, t294, network6, validation_batches));
    char t295;
    char X83 = (params.printStatus);
    (t295 = X83);
    if ((t295 == 1)) {
      wrappedPrint(t277);
      double t296;
      (t296 = (accuracy * 100.));
      printf("%f", t296);
      wrappedPrint(t276);
    } else {
      ;
    }
  } else {
    ;
  }
  double t297;
  double X84 = (params.decay_alpha);
  (t297 = X84);
  double t298;
  (t298 = (1. - t297));
  double decayed_alpha;
  (decayed_alpha = (alpha1 * t298));
  double t299;
  double X85 = (params.decay_lambda);
  (t299 = X85);
  double t300;
  (t300 = (1. - t299));
  double decayed_lambda;
  (decayed_lambda = (lambda1 * t300));
  ((alloc._0) = decayed_alpha);
  ((alloc._1) = decayed_lambda);
  {
    Rec5 t301;
    (t301 = alloc);
    return t301;
  }
}
void cuda_wrap(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, Rec4 params, Rec2 network6, int64_t rounds, Seq2 training_batches, Seq2 validation_batches) {
  Rec5 t302;
  char (*t303) = "%\n";
  char (*t304) = "Computed accuracy: ";
  char (*t305) = "evalating performance...\n";
  char t306;
  char X86 = (params.evaluateBeforeFirstEpoch);
  (t306 = X86);
  if ((t306 == 1)) {
    char t307;
    char X87 = (params.printStatus);
    (t307 = X87);
    if ((t307 == 1)) {
      wrappedPrint(t305);
    } else {
      ;
    }
    char t308;
    char X88 = (params.printStatus);
    (t308 = X88);
    double accuracy1;
    (accuracy1 = nnAccuracyProportion(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, t308, network6, validation_batches));
    char t309;
    char X89 = (params.printStatus);
    (t309 = X89);
    if ((t309 == 1)) {
      wrappedPrint(t304);
      double t310;
      (t310 = (accuracy1 * 100.));
      printf("%f", t310);
      wrappedPrint(t303);
    } else {
      ;
    }
  } else {
    ;
  }
  double t311;
  double X90 = (params.init_lambda);
  (t311 = X90);
  double t312;
  double X91 = (params.init_alpha);
  (t312 = X91);
  ((t302._0) = t312);
  ((t302._1) = t311);
  int64_t t313;
  int64_t X92 = (params.epochs);
  (t313 = X92);
  Rec5 _7;
  {
    int64_t i47 = 0;
    Rec5 acc27 = t302;
    while ((i47 < t313)) {
      (acc27 = t275(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, params, network6, rounds, training_batches, validation_batches, acc27, i47));
      (i47 = (i47 + 1));
    }
    (_7 = acc27);
  }
  ;
}
extern "C" void vBkMGL47RfZ(value nnCompType_FullyConnected, value nnCompType_ReLU, value nnCompType_SoftMax, value nnLossfnType_CrossEntropyLoss, value nnLossfnType_SoftMaxCrossEntropyLoss, value params, value network6, value rounds, value training_batches, value validation_batches) {
  CAMLparam5(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss);
  CAMLxparam5(params, network6, rounds, training_batches, validation_batches);
  int64_t tensor_count = (tensor_count = 0);
  int64_t gpu_tmp = Long_val(nnCompType_FullyConnected);
  int64_t gpu_tmp1 = Long_val(nnCompType_ReLU);
  int64_t gpu_tmp2 = Long_val(nnCompType_SoftMax);
  int64_t gpu_tmp3 = Long_val(nnLossfnType_CrossEntropyLoss);
  int64_t gpu_tmp4 = Long_val(nnLossfnType_SoftMaxCrossEntropyLoss);
  Rec4 gpu_tmp5;
  double cuda_rec_field = Double_val(Field(params, 0));
  ((gpu_tmp5.init_alpha) = cuda_rec_field);
  double cuda_rec_field1 = Double_val(Field(params, 1));
  ((gpu_tmp5.init_lambda) = cuda_rec_field1);
  double cuda_rec_field2 = Double_val(Field(params, 2));
  ((gpu_tmp5.decay_alpha) = cuda_rec_field2);
  double cuda_rec_field3 = Double_val(Field(params, 3));
  ((gpu_tmp5.decay_lambda) = cuda_rec_field3);
  int64_t cuda_rec_field4 = Long_val(Field(params, 4));
  ((gpu_tmp5.batchsize) = cuda_rec_field4);
  int64_t cuda_rec_field5 = Long_val(Field(params, 5));
  ((gpu_tmp5.epochs) = cuda_rec_field5);
  char cuda_rec_field6 = Int_val(Field(params, 6));
  ((gpu_tmp5.printStatus) = cuda_rec_field6);
  char cuda_rec_field7 = Int_val(Field(params, 7));
  ((gpu_tmp5.evaluateBetweenEpochs) = cuda_rec_field7);
  char cuda_rec_field8 = Int_val(Field(params, 8));
  ((gpu_tmp5.evaluateBeforeFirstEpoch) = cuda_rec_field8);
  Rec2 gpu_tmp6;
  Seq1 cuda_rec_field9;
  ((cuda_rec_field9.len) = Wosize_val(Field(network6, 0)));
  cudaMallocManaged((&(cuda_rec_field9.seq)), (Wosize_val(Field(network6, 0)) * (sizeof(Rec))));
  int64_t i48 = 0;
  while ((i48 < (cuda_rec_field9.len))) {
    Rec cuda_seq_temp;
    int64_t cuda_rec_field10 = Long_val(Field(Field(Field(network6, 0), i48), 0));
    ((cuda_seq_temp.ty) = cuda_rec_field10);
    Tensor cuda_rec_field11;
    ((cuda_rec_field11.rank) = (Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 1))->num_dims));
    if (((cuda_rec_field11.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field11.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field11.offset) = 0);
    ((cuda_rec_field11.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i49 = 0;
    int64_t n20 = (sizeof(double));
    while ((i49 < (cuda_rec_field11.rank))) {
      (((cuda_rec_field11.dims)[i49]) = ((Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 1))->dim)[i49]));
      (n20 = (n20 * ((Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 1))->dim)[i49])));
      (i49 = (i49 + 1));
    }
    ((cuda_rec_field11.size) = n20);
    double (*t314);
    cudaMallocManaged((&t314), n20);
    cudaMemcpy(t314, Caml_ba_data_val(Field(Field(Field(network6, 0), i48), 1)), n20, cudaMemcpyHostToDevice);
    ((cuda_rec_field11.data) = t314);
    ((cuda_seq_temp.w) = cuda_rec_field11);
    Tensor cuda_rec_field12;
    ((cuda_rec_field12.rank) = (Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 2))->num_dims));
    if (((cuda_rec_field12.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field12.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field12.offset) = 0);
    ((cuda_rec_field12.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i50 = 0;
    int64_t n21 = (sizeof(double));
    while ((i50 < (cuda_rec_field12.rank))) {
      (((cuda_rec_field12.dims)[i50]) = ((Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 2))->dim)[i50]));
      (n21 = (n21 * ((Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 2))->dim)[i50])));
      (i50 = (i50 + 1));
    }
    ((cuda_rec_field12.size) = n21);
    double (*t315);
    cudaMallocManaged((&t315), n21);
    cudaMemcpy(t315, Caml_ba_data_val(Field(Field(Field(network6, 0), i48), 2)), n21, cudaMemcpyHostToDevice);
    ((cuda_rec_field12.data) = t315);
    ((cuda_seq_temp.b) = cuda_rec_field12);
    Tensor cuda_rec_field13;
    ((cuda_rec_field13.rank) = (Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 3))->num_dims));
    if (((cuda_rec_field13.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field13.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field13.offset) = 0);
    ((cuda_rec_field13.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i51 = 0;
    int64_t n22 = (sizeof(double));
    while ((i51 < (cuda_rec_field13.rank))) {
      (((cuda_rec_field13.dims)[i51]) = ((Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 3))->dim)[i51]));
      (n22 = (n22 * ((Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 3))->dim)[i51])));
      (i51 = (i51 + 1));
    }
    ((cuda_rec_field13.size) = n22);
    double (*t316);
    cudaMallocManaged((&t316), n22);
    cudaMemcpy(t316, Caml_ba_data_val(Field(Field(Field(network6, 0), i48), 3)), n22, cudaMemcpyHostToDevice);
    ((cuda_rec_field13.data) = t316);
    ((cuda_seq_temp.w_grads) = cuda_rec_field13);
    Tensor cuda_rec_field14;
    ((cuda_rec_field14.rank) = (Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 4))->num_dims));
    if (((cuda_rec_field14.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field14.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field14.offset) = 0);
    ((cuda_rec_field14.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i52 = 0;
    int64_t n23 = (sizeof(double));
    while ((i52 < (cuda_rec_field14.rank))) {
      (((cuda_rec_field14.dims)[i52]) = ((Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 4))->dim)[i52]));
      (n23 = (n23 * ((Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 4))->dim)[i52])));
      (i52 = (i52 + 1));
    }
    ((cuda_rec_field14.size) = n23);
    double (*t317);
    cudaMallocManaged((&t317), n23);
    cudaMemcpy(t317, Caml_ba_data_val(Field(Field(Field(network6, 0), i48), 4)), n23, cudaMemcpyHostToDevice);
    ((cuda_rec_field14.data) = t317);
    ((cuda_seq_temp.b_grads) = cuda_rec_field14);
    Tensor cuda_rec_field15;
    ((cuda_rec_field15.rank) = (Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 5))->num_dims));
    if (((cuda_rec_field15.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field15.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field15.offset) = 0);
    ((cuda_rec_field15.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i53 = 0;
    int64_t n24 = (sizeof(double));
    while ((i53 < (cuda_rec_field15.rank))) {
      (((cuda_rec_field15.dims)[i53]) = ((Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 5))->dim)[i53]));
      (n24 = (n24 * ((Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 5))->dim)[i53])));
      (i53 = (i53 + 1));
    }
    ((cuda_rec_field15.size) = n24);
    double (*t318);
    cudaMallocManaged((&t318), n24);
    cudaMemcpy(t318, Caml_ba_data_val(Field(Field(Field(network6, 0), i48), 5)), n24, cudaMemcpyHostToDevice);
    ((cuda_rec_field15.data) = t318);
    ((cuda_seq_temp.out_bufs) = cuda_rec_field15);
    Tensor cuda_rec_field16;
    ((cuda_rec_field16.rank) = (Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 6))->num_dims));
    if (((cuda_rec_field16.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field16.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field16.offset) = 0);
    ((cuda_rec_field16.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i54 = 0;
    int64_t n25 = (sizeof(double));
    while ((i54 < (cuda_rec_field16.rank))) {
      (((cuda_rec_field16.dims)[i54]) = ((Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 6))->dim)[i54]));
      (n25 = (n25 * ((Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 6))->dim)[i54])));
      (i54 = (i54 + 1));
    }
    ((cuda_rec_field16.size) = n25);
    double (*t319);
    cudaMallocManaged((&t319), n25);
    cudaMemcpy(t319, Caml_ba_data_val(Field(Field(Field(network6, 0), i48), 6)), n25, cudaMemcpyHostToDevice);
    ((cuda_rec_field16.data) = t319);
    ((cuda_seq_temp.in_grads) = cuda_rec_field16);
    Tensor cuda_rec_field17;
    ((cuda_rec_field17.rank) = (Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 7))->num_dims));
    if (((cuda_rec_field17.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field17.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field17.offset) = 0);
    ((cuda_rec_field17.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i55 = 0;
    int64_t n26 = (sizeof(double));
    while ((i55 < (cuda_rec_field17.rank))) {
      (((cuda_rec_field17.dims)[i55]) = ((Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 7))->dim)[i55]));
      (n26 = (n26 * ((Caml_ba_array_val(Field(Field(Field(network6, 0), i48), 7))->dim)[i55])));
      (i55 = (i55 + 1));
    }
    ((cuda_rec_field17.size) = n26);
    double (*t320);
    cudaMallocManaged((&t320), n26);
    cudaMemcpy(t320, Caml_ba_data_val(Field(Field(Field(network6, 0), i48), 7)), n26, cudaMemcpyHostToDevice);
    ((cuda_rec_field17.data) = t320);
    ((cuda_seq_temp.softmax_bufs) = cuda_rec_field17);
    (((cuda_rec_field9.seq)[i48]) = cuda_seq_temp);
    (i48 = (i48 + 1));
  }
  ((gpu_tmp6.components) = cuda_rec_field9);
  Rec1 cuda_rec_field18;
  int64_t cuda_rec_field19 = Long_val(Field(Field(network6, 1), 0));
  ((cuda_rec_field18.ty) = cuda_rec_field19);
  Tensor cuda_rec_field20;
  ((cuda_rec_field20.rank) = (Caml_ba_array_val(Field(Field(network6, 1), 1))->num_dims));
  if (((cuda_rec_field20.rank) > 3)) {
    printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field20.rank));
    exit(1);
  } else {
    
  }
  ((cuda_rec_field20.offset) = 0);
  ((cuda_rec_field20.id) = tensor_count);
  (tensor_count = (tensor_count + 1));
  int64_t i56 = 0;
  int64_t n27 = (sizeof(double));
  while ((i56 < (cuda_rec_field20.rank))) {
    (((cuda_rec_field20.dims)[i56]) = ((Caml_ba_array_val(Field(Field(network6, 1), 1))->dim)[i56]));
    (n27 = (n27 * ((Caml_ba_array_val(Field(Field(network6, 1), 1))->dim)[i56])));
    (i56 = (i56 + 1));
  }
  ((cuda_rec_field20.size) = n27);
  double (*t321);
  cudaMallocManaged((&t321), n27);
  cudaMemcpy(t321, Caml_ba_data_val(Field(Field(network6, 1), 1)), n27, cudaMemcpyHostToDevice);
  ((cuda_rec_field20.data) = t321);
  ((cuda_rec_field18.in_grads) = cuda_rec_field20);
  Tensor cuda_rec_field21;
  ((cuda_rec_field21.rank) = (Caml_ba_array_val(Field(Field(network6, 1), 2))->num_dims));
  if (((cuda_rec_field21.rank) > 3)) {
    printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field21.rank));
    exit(1);
  } else {
    
  }
  ((cuda_rec_field21.offset) = 0);
  ((cuda_rec_field21.id) = tensor_count);
  (tensor_count = (tensor_count + 1));
  int64_t i57 = 0;
  int64_t n28 = (sizeof(double));
  while ((i57 < (cuda_rec_field21.rank))) {
    (((cuda_rec_field21.dims)[i57]) = ((Caml_ba_array_val(Field(Field(network6, 1), 2))->dim)[i57]));
    (n28 = (n28 * ((Caml_ba_array_val(Field(Field(network6, 1), 2))->dim)[i57])));
    (i57 = (i57 + 1));
  }
  ((cuda_rec_field21.size) = n28);
  double (*t322);
  cudaMallocManaged((&t322), n28);
  cudaMemcpy(t322, Caml_ba_data_val(Field(Field(network6, 1), 2)), n28, cudaMemcpyHostToDevice);
  ((cuda_rec_field21.data) = t322);
  ((cuda_rec_field18.out_bufs) = cuda_rec_field21);
  Tensor cuda_rec_field22;
  ((cuda_rec_field22.rank) = (Caml_ba_array_val(Field(Field(network6, 1), 3))->num_dims));
  if (((cuda_rec_field22.rank) > 3)) {
    printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field22.rank));
    exit(1);
  } else {
    
  }
  ((cuda_rec_field22.offset) = 0);
  ((cuda_rec_field22.id) = tensor_count);
  (tensor_count = (tensor_count + 1));
  int64_t i58 = 0;
  int64_t n29 = (sizeof(double));
  while ((i58 < (cuda_rec_field22.rank))) {
    (((cuda_rec_field22.dims)[i58]) = ((Caml_ba_array_val(Field(Field(network6, 1), 3))->dim)[i58]));
    (n29 = (n29 * ((Caml_ba_array_val(Field(Field(network6, 1), 3))->dim)[i58])));
    (i58 = (i58 + 1));
  }
  ((cuda_rec_field22.size) = n29);
  double (*t323);
  cudaMallocManaged((&t323), n29);
  cudaMemcpy(t323, Caml_ba_data_val(Field(Field(network6, 1), 3)), n29, cudaMemcpyHostToDevice);
  ((cuda_rec_field22.data) = t323);
  ((cuda_rec_field18.softmax_bufs) = cuda_rec_field22);
  ((gpu_tmp6.lossfn) = cuda_rec_field18);
  int64_t gpu_tmp7 = Long_val(rounds);
  Seq2 gpu_tmp8;
  ((gpu_tmp8.len) = Wosize_val(training_batches));
  cudaMallocManaged((&(gpu_tmp8.seq)), (Wosize_val(training_batches) * (sizeof(Rec3))));
  int64_t i59 = 0;
  while ((i59 < (gpu_tmp8.len))) {
    Rec3 cuda_seq_temp1;
    Tensor cuda_rec_field23;
    ((cuda_rec_field23.rank) = (Caml_ba_array_val(Field(Field(training_batches, i59), 0))->num_dims));
    if (((cuda_rec_field23.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field23.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field23.offset) = 0);
    ((cuda_rec_field23.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i60 = 0;
    int64_t n30 = (sizeof(double));
    while ((i60 < (cuda_rec_field23.rank))) {
      (((cuda_rec_field23.dims)[i60]) = ((Caml_ba_array_val(Field(Field(training_batches, i59), 0))->dim)[i60]));
      (n30 = (n30 * ((Caml_ba_array_val(Field(Field(training_batches, i59), 0))->dim)[i60])));
      (i60 = (i60 + 1));
    }
    ((cuda_rec_field23.size) = n30);
    double (*t324);
    cudaMallocManaged((&t324), n30);
    cudaMemcpy(t324, Caml_ba_data_val(Field(Field(training_batches, i59), 0)), n30, cudaMemcpyHostToDevice);
    ((cuda_rec_field23.data) = t324);
    ((cuda_seq_temp1.inputs) = cuda_rec_field23);
    Tensor1 cuda_rec_field24;
    ((cuda_rec_field24.rank) = (Caml_ba_array_val(Field(Field(training_batches, i59), 1))->num_dims));
    if (((cuda_rec_field24.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field24.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field24.offset) = 0);
    ((cuda_rec_field24.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i61 = 0;
    int64_t n31 = (sizeof(int64_t));
    while ((i61 < (cuda_rec_field24.rank))) {
      (((cuda_rec_field24.dims)[i61]) = ((Caml_ba_array_val(Field(Field(training_batches, i59), 1))->dim)[i61]));
      (n31 = (n31 * ((Caml_ba_array_val(Field(Field(training_batches, i59), 1))->dim)[i61])));
      (i61 = (i61 + 1));
    }
    ((cuda_rec_field24.size) = n31);
    int64_t (*t325);
    cudaMallocManaged((&t325), n31);
    cudaMemcpy(t325, Caml_ba_data_val(Field(Field(training_batches, i59), 1)), n31, cudaMemcpyHostToDevice);
    ((cuda_rec_field24.data) = t325);
    ((cuda_seq_temp1.correct_linear_outidxs) = cuda_rec_field24);
    (((gpu_tmp8.seq)[i59]) = cuda_seq_temp1);
    (i59 = (i59 + 1));
  }
  Seq2 gpu_tmp9;
  ((gpu_tmp9.len) = Wosize_val(validation_batches));
  cudaMallocManaged((&(gpu_tmp9.seq)), (Wosize_val(validation_batches) * (sizeof(Rec3))));
  int64_t i62 = 0;
  while ((i62 < (gpu_tmp9.len))) {
    Rec3 cuda_seq_temp2;
    Tensor cuda_rec_field25;
    ((cuda_rec_field25.rank) = (Caml_ba_array_val(Field(Field(validation_batches, i62), 0))->num_dims));
    if (((cuda_rec_field25.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field25.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field25.offset) = 0);
    ((cuda_rec_field25.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i63 = 0;
    int64_t n32 = (sizeof(double));
    while ((i63 < (cuda_rec_field25.rank))) {
      (((cuda_rec_field25.dims)[i63]) = ((Caml_ba_array_val(Field(Field(validation_batches, i62), 0))->dim)[i63]));
      (n32 = (n32 * ((Caml_ba_array_val(Field(Field(validation_batches, i62), 0))->dim)[i63])));
      (i63 = (i63 + 1));
    }
    ((cuda_rec_field25.size) = n32);
    double (*t326);
    cudaMallocManaged((&t326), n32);
    cudaMemcpy(t326, Caml_ba_data_val(Field(Field(validation_batches, i62), 0)), n32, cudaMemcpyHostToDevice);
    ((cuda_rec_field25.data) = t326);
    ((cuda_seq_temp2.inputs) = cuda_rec_field25);
    Tensor1 cuda_rec_field26;
    ((cuda_rec_field26.rank) = (Caml_ba_array_val(Field(Field(validation_batches, i62), 1))->num_dims));
    if (((cuda_rec_field26.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field26.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field26.offset) = 0);
    ((cuda_rec_field26.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i64 = 0;
    int64_t n33 = (sizeof(int64_t));
    while ((i64 < (cuda_rec_field26.rank))) {
      (((cuda_rec_field26.dims)[i64]) = ((Caml_ba_array_val(Field(Field(validation_batches, i62), 1))->dim)[i64]));
      (n33 = (n33 * ((Caml_ba_array_val(Field(Field(validation_batches, i62), 1))->dim)[i64])));
      (i64 = (i64 + 1));
    }
    ((cuda_rec_field26.size) = n33);
    int64_t (*t327);
    cudaMallocManaged((&t327), n33);
    cudaMemcpy(t327, Caml_ba_data_val(Field(Field(validation_batches, i62), 1)), n33, cudaMemcpyHostToDevice);
    ((cuda_rec_field26.data) = t327);
    ((cuda_seq_temp2.correct_linear_outidxs) = cuda_rec_field26);
    (((gpu_tmp9.seq)[i62]) = cuda_seq_temp2);
    (i62 = (i62 + 1));
  }
  cudaMallocManaged((&t_state), (tensor_count * (sizeof(enum tensor_state))));
  int64_t i65 = 0;
  while ((i65 < ((gpu_tmp6.components).len))) {
    ((t_state[(((((gpu_tmp6.components).seq)[i65]).w).id)]) = STATE_OK);
    ((t_state[(((((gpu_tmp6.components).seq)[i65]).b).id)]) = STATE_OK);
    ((t_state[(((((gpu_tmp6.components).seq)[i65]).w_grads).id)]) = STATE_OK);
    ((t_state[(((((gpu_tmp6.components).seq)[i65]).b_grads).id)]) = STATE_OK);
    ((t_state[(((((gpu_tmp6.components).seq)[i65]).out_bufs).id)]) = STATE_OK);
    ((t_state[(((((gpu_tmp6.components).seq)[i65]).in_grads).id)]) = STATE_OK);
    ((t_state[(((((gpu_tmp6.components).seq)[i65]).softmax_bufs).id)]) = STATE_OK);
    (i65 = (i65 + 1));
  }
  ((t_state[(((gpu_tmp6.lossfn).in_grads).id)]) = STATE_OK);
  ((t_state[(((gpu_tmp6.lossfn).out_bufs).id)]) = STATE_OK);
  ((t_state[(((gpu_tmp6.lossfn).softmax_bufs).id)]) = STATE_OK);
  int64_t i66 = 0;
  while ((i66 < (gpu_tmp8.len))) {
    ((t_state[((((gpu_tmp8.seq)[i66]).inputs).id)]) = STATE_OK);
    ((t_state[((((gpu_tmp8.seq)[i66]).correct_linear_outidxs).id)]) = STATE_OK);
    (i66 = (i66 + 1));
  }
  int64_t i67 = 0;
  while ((i67 < (gpu_tmp9.len))) {
    ((t_state[((((gpu_tmp9.seq)[i67]).inputs).id)]) = STATE_OK);
    ((t_state[((((gpu_tmp9.seq)[i67]).correct_linear_outidxs).id)]) = STATE_OK);
    (i67 = (i67 + 1));
  }
  cuda_wrap(gpu_tmp, gpu_tmp1, gpu_tmp2, gpu_tmp3, gpu_tmp4, gpu_tmp5, gpu_tmp6, gpu_tmp7, gpu_tmp8, gpu_tmp9);
  int64_t i68 = 0;
  while ((i68 < ((gpu_tmp6.components).len))) {
    if (((t_state[(((((gpu_tmp6.components).seq)[i68]).w).id)]) != STATE_OK)) {
      cudaMemcpy(Caml_ba_data_val(Field(Field(Field(network6, 0), i68), 1)), (((((gpu_tmp6.components).seq)[i68]).w).data), (((((gpu_tmp6.components).seq)[i68]).w).size), cudaMemcpyDeviceToHost);
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i68]).w).id)]) != STATE_RETURNED)) {
      cudaFree((((((gpu_tmp6.components).seq)[i68]).w).data));
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i68]).b).id)]) != STATE_OK)) {
      cudaMemcpy(Caml_ba_data_val(Field(Field(Field(network6, 0), i68), 2)), (((((gpu_tmp6.components).seq)[i68]).b).data), (((((gpu_tmp6.components).seq)[i68]).b).size), cudaMemcpyDeviceToHost);
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i68]).b).id)]) != STATE_RETURNED)) {
      cudaFree((((((gpu_tmp6.components).seq)[i68]).b).data));
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i68]).w_grads).id)]) != STATE_OK)) {
      cudaMemcpy(Caml_ba_data_val(Field(Field(Field(network6, 0), i68), 3)), (((((gpu_tmp6.components).seq)[i68]).w_grads).data), (((((gpu_tmp6.components).seq)[i68]).w_grads).size), cudaMemcpyDeviceToHost);
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i68]).w_grads).id)]) != STATE_RETURNED)) {
      cudaFree((((((gpu_tmp6.components).seq)[i68]).w_grads).data));
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i68]).b_grads).id)]) != STATE_OK)) {
      cudaMemcpy(Caml_ba_data_val(Field(Field(Field(network6, 0), i68), 4)), (((((gpu_tmp6.components).seq)[i68]).b_grads).data), (((((gpu_tmp6.components).seq)[i68]).b_grads).size), cudaMemcpyDeviceToHost);
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i68]).b_grads).id)]) != STATE_RETURNED)) {
      cudaFree((((((gpu_tmp6.components).seq)[i68]).b_grads).data));
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i68]).out_bufs).id)]) != STATE_OK)) {
      cudaMemcpy(Caml_ba_data_val(Field(Field(Field(network6, 0), i68), 5)), (((((gpu_tmp6.components).seq)[i68]).out_bufs).data), (((((gpu_tmp6.components).seq)[i68]).out_bufs).size), cudaMemcpyDeviceToHost);
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i68]).out_bufs).id)]) != STATE_RETURNED)) {
      cudaFree((((((gpu_tmp6.components).seq)[i68]).out_bufs).data));
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i68]).in_grads).id)]) != STATE_OK)) {
      cudaMemcpy(Caml_ba_data_val(Field(Field(Field(network6, 0), i68), 6)), (((((gpu_tmp6.components).seq)[i68]).in_grads).data), (((((gpu_tmp6.components).seq)[i68]).in_grads).size), cudaMemcpyDeviceToHost);
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i68]).in_grads).id)]) != STATE_RETURNED)) {
      cudaFree((((((gpu_tmp6.components).seq)[i68]).in_grads).data));
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i68]).softmax_bufs).id)]) != STATE_OK)) {
      cudaMemcpy(Caml_ba_data_val(Field(Field(Field(network6, 0), i68), 7)), (((((gpu_tmp6.components).seq)[i68]).softmax_bufs).data), (((((gpu_tmp6.components).seq)[i68]).softmax_bufs).size), cudaMemcpyDeviceToHost);
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i68]).softmax_bufs).id)]) != STATE_RETURNED)) {
      cudaFree((((((gpu_tmp6.components).seq)[i68]).softmax_bufs).data));
    } else {
      
    }
    (i68 = (i68 + 1));
  }
  cudaFree(((gpu_tmp6.components).seq));
  if (((t_state[(((gpu_tmp6.lossfn).in_grads).id)]) != STATE_OK)) {
    cudaMemcpy(Caml_ba_data_val(Field(Field(network6, 1), 1)), (((gpu_tmp6.lossfn).in_grads).data), (((gpu_tmp6.lossfn).in_grads).size), cudaMemcpyDeviceToHost);
  } else {
    
  }
  if (((t_state[(((gpu_tmp6.lossfn).in_grads).id)]) != STATE_RETURNED)) {
    cudaFree((((gpu_tmp6.lossfn).in_grads).data));
  } else {
    
  }
  if (((t_state[(((gpu_tmp6.lossfn).out_bufs).id)]) != STATE_OK)) {
    cudaMemcpy(Caml_ba_data_val(Field(Field(network6, 1), 2)), (((gpu_tmp6.lossfn).out_bufs).data), (((gpu_tmp6.lossfn).out_bufs).size), cudaMemcpyDeviceToHost);
  } else {
    
  }
  if (((t_state[(((gpu_tmp6.lossfn).out_bufs).id)]) != STATE_RETURNED)) {
    cudaFree((((gpu_tmp6.lossfn).out_bufs).data));
  } else {
    
  }
  if (((t_state[(((gpu_tmp6.lossfn).softmax_bufs).id)]) != STATE_OK)) {
    cudaMemcpy(Caml_ba_data_val(Field(Field(network6, 1), 3)), (((gpu_tmp6.lossfn).softmax_bufs).data), (((gpu_tmp6.lossfn).softmax_bufs).size), cudaMemcpyDeviceToHost);
  } else {
    
  }
  if (((t_state[(((gpu_tmp6.lossfn).softmax_bufs).id)]) != STATE_RETURNED)) {
    cudaFree((((gpu_tmp6.lossfn).softmax_bufs).data));
  } else {
    
  }
  int64_t i69 = 0;
  while ((i69 < (gpu_tmp8.len))) {
    if (((t_state[((((gpu_tmp8.seq)[i69]).inputs).id)]) != STATE_OK)) {
      cudaMemcpy(Caml_ba_data_val(Field(Field(training_batches, i69), 0)), ((((gpu_tmp8.seq)[i69]).inputs).data), ((((gpu_tmp8.seq)[i69]).inputs).size), cudaMemcpyDeviceToHost);
    } else {
      
    }
    if (((t_state[((((gpu_tmp8.seq)[i69]).inputs).id)]) != STATE_RETURNED)) {
      cudaFree(((((gpu_tmp8.seq)[i69]).inputs).data));
    } else {
      
    }
    if (((t_state[((((gpu_tmp8.seq)[i69]).correct_linear_outidxs).id)]) != STATE_OK)) {
      cudaMemcpy(Caml_ba_data_val(Field(Field(training_batches, i69), 1)), ((((gpu_tmp8.seq)[i69]).correct_linear_outidxs).data), ((((gpu_tmp8.seq)[i69]).correct_linear_outidxs).size), cudaMemcpyDeviceToHost);
    } else {
      
    }
    if (((t_state[((((gpu_tmp8.seq)[i69]).correct_linear_outidxs).id)]) != STATE_RETURNED)) {
      cudaFree(((((gpu_tmp8.seq)[i69]).correct_linear_outidxs).data));
    } else {
      
    }
    (i69 = (i69 + 1));
  }
  cudaFree((gpu_tmp8.seq));
  int64_t i70 = 0;
  while ((i70 < (gpu_tmp9.len))) {
    if (((t_state[((((gpu_tmp9.seq)[i70]).inputs).id)]) != STATE_OK)) {
      cudaMemcpy(Caml_ba_data_val(Field(Field(validation_batches, i70), 0)), ((((gpu_tmp9.seq)[i70]).inputs).data), ((((gpu_tmp9.seq)[i70]).inputs).size), cudaMemcpyDeviceToHost);
    } else {
      
    }
    if (((t_state[((((gpu_tmp9.seq)[i70]).inputs).id)]) != STATE_RETURNED)) {
      cudaFree(((((gpu_tmp9.seq)[i70]).inputs).data));
    } else {
      
    }
    if (((t_state[((((gpu_tmp9.seq)[i70]).correct_linear_outidxs).id)]) != STATE_OK)) {
      cudaMemcpy(Caml_ba_data_val(Field(Field(validation_batches, i70), 1)), ((((gpu_tmp9.seq)[i70]).correct_linear_outidxs).data), ((((gpu_tmp9.seq)[i70]).correct_linear_outidxs).size), cudaMemcpyDeviceToHost);
    } else {
      
    }
    if (((t_state[((((gpu_tmp9.seq)[i70]).correct_linear_outidxs).id)]) != STATE_RETURNED)) {
      cudaFree(((((gpu_tmp9.seq)[i70]).correct_linear_outidxs).data));
    } else {
      
    }
    (i70 = (i70 + 1));
  }
  cudaFree((gpu_tmp9.seq));
  cudaFree(t_state);
  CAMLreturn0;
}
extern "C" void vvdRMkFMy5E(value (*args), int argc) {
  return vBkMGL47RfZ((args[0]), (args[1]), (args[2]), (args[3]), (args[4]), (args[5]), (args[6]), (args[7]), (args[8]), (args[9]));
}