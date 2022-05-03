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
#include "gpu-utils.cu"
#include "cublas_v2.h"
enum tensor_state {STATE_OK, STATE_CPU_INVALID, STATE_GPU_INVALID, STATE_RETURNED};
__managed__ enum tensor_state (*t_state);
typedef struct Tensor {int64_t id; float (*data); int64_t dims[3]; int64_t rank; int64_t offset; int64_t size;} Tensor;
typedef struct Seq {int64_t (*seq); int64_t len;} Seq;
typedef struct Tensor1 {int64_t id; int64_t (*data); int64_t dims[3]; int64_t rank; int64_t offset; int64_t size;} Tensor1;
typedef struct Rec {Tensor b; Tensor w; int64_t ty; Tensor b_grads; Tensor w_grads; Tensor in_grads; Tensor out_bufs; Tensor softmax_bufs;} Rec;
typedef struct Rec1 {int64_t ty; Tensor in_grads; Tensor out_bufs; Tensor softmax_bufs;} Rec1;
typedef struct Seq1 {Rec (*seq); int64_t len;} Seq1;
typedef struct Rec2 {Rec1 lossfn; Seq1 components;} Rec2;
typedef struct Rec3 {Tensor inputs; Tensor1 correct_linear_outidxs;} Rec3;
typedef struct Seq2 {Rec3 (*seq); int64_t len;} Seq2;
typedef struct Rec4 {int64_t epochs; int64_t batchsize; float init_alpha; float decay_alpha; float init_lambda; char printStatus; float decay_lambda; char evaluateBetweenEpochs; char evaluateBeforeFirstEpoch;} Rec4;
typedef struct Rec5 {float _0; float _1;} Rec5;

static cublasHandle_t _cublas_handle;

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
__host__ __device__ float exp1(float x) {
  {
    float t14;
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
__host__ __device__ float t20(Tensor w1, Tensor x1, int64_t m, int64_t x_offset, int64_t i7, float acc2, int64_t j) {
  int64_t t21;
  (t21 = (m * j));
  int64_t t22;
  (t22 = (i7 + t21));
  float t23;
  (t23 = ((w1.data)[(t22 + (w1.offset))]));
  int64_t t24;
  (t24 = (x_offset + j));
  float t25;
  (t25 = ((x1.data)[(t24 + (x1.offset))]));
  float t26;
  (t26 = (t23 * t25));
  {
    float t27;
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
  float acc_init1;
  (acc_init1 = ((b1.data)[(i7 + (b1.offset))]));
  float v;
  {
    int64_t i9 = 0;
    float acc3 = acc_init1;
    while ((i9 < n)) {
      (acc3 = t20(w1, x1, m, x_offset, i7, acc3, i9));
      (i9 = (i9 + 1));
    }
    (v = acc3);
  }
  (((z.data)[(z_idx + (z.offset))]) = v);
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
  (m = ((w_shape.seq)[1]));
  int64_t n;
  (n = ((w_shape.seq)[0]));
  int64_t m_x_n = m * n;

  float alpha = 1.0;
  float beta = 1.0;
  for (int64_t s = 0; s < s_max; ++s) {
    float *w_data = w1.data + (s * m_x_n);
    float *b_data = b1.data + (s * m);
    cublasSgemv(
      _cublas_handle,
      CUBLAS_OP_N,
      (int) m, (int) n,
      &alpha,
      w1.data, (int) m, /* lda */
      x1.data, 0, /* incx */
      &beta,
      b1.data, 0 /* incy */
    );
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
  cudaDeviceSynchronize();
  GPU_UTILS_CHECK_CUDA_ERROR();
  /* OLD CODE:
  int64_t t28;
  (t28 = (s_max * m));
  {
    int64_t niterations = t28;
    int64_t tpb = 256;
    int64_t nblocks = (((niterations + (tpb * 10)) - 1) / (tpb * 10));
    loopKernel<<<nblocks, tpb>>>(t28, w1, x1, b1, z, m, n);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
  */
}
__host__ __device__ int64_t t29(Tensor x2, Tensor z1, int64_t x_offset1, float y_val, int64_t z_idx1, int64_t row) {
  int64_t t30;
  (t30 = (x_offset1 + row));
  float t31;
  (t31 = ((x2.data)[(t30 + (x2.offset))]));
  float t32;
  (t32 = (y_val * t31));
  (((z1.data)[(z_idx1 + (z1.offset))]) = t32);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z1.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z1.id)]) = STATE_GPU_INVALID);
  #endif
  {
    int64_t t33;
    (t33 = (z_idx1 + 1));
    return t33;
  }
}
__host__ __device__ void iterfun1(Tensor x2, Tensor y, Tensor z1, int64_t m1, int64_t n2, int64_t m_x_n, int64_t i10) {
  int64_t s_idx1;
  (s_idx1 = (i10 / n2));
  int64_t col;
  (col = (i10 % n2));
  int64_t t34;
  (t34 = (s_idx1 * m_x_n));
  int64_t t35;
  (t35 = (m1 * col));
  int64_t z_offset;
  (z_offset = (t34 + t35));
  int64_t x_offset1;
  (x_offset1 = (s_idx1 * m1));
  int64_t y_offset;
  (y_offset = (s_idx1 * n2));
  int64_t t36;
  (t36 = (y_offset + col));
  float y_val;
  (y_val = ((y.data)[(t36 + (y.offset))]));
  int64_t _;
  {
    int64_t i11 = 0;
    int64_t acc4 = z_offset;
    while ((i11 < m1)) {
      (acc4 = t29(x2, z1, x_offset1, y_val, acc4, i11));
      (i11 = (i11 + 1));
    }
    (_ = acc4);
  }
  ;
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
  (m1 = ((z_shape.seq)[2]));
  int64_t n2;
  (n2 = ((z_shape.seq)[1]));
  int64_t m_x_n;
  (m_x_n = (m1 * n2));
  int64_t t37;
  (t37 = (s_max1 * n2));
  {
    int64_t niterations1 = t37;
    int64_t tpb1 = 256;
    int64_t nblocks1 = (((niterations1 + (tpb1 * 10)) - 1) / (tpb1 * 10));
    loopKernel1<<<nblocks1, tpb1>>>(t37, x2, y, z1, m1, n2, m_x_n);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
}
__host__ __device__ float t38(Tensor x3, Tensor w2, int64_t m2, int64_t x_offset2, int64_t j1, float acc5, int64_t i12) {
  int64_t t39;
  (t39 = (m2 * j1));
  int64_t t40;
  (t40 = (i12 + t39));
  float t41;
  (t41 = ((w2.data)[(t40 + (w2.offset))]));
  int64_t t42;
  (t42 = (x_offset2 + i12));
  float t43;
  (t43 = ((x3.data)[(t42 + (x3.offset))]));
  float t44;
  (t44 = (t41 * t43));
  {
    float t45;
    (t45 = (acc5 + t44));
    return t45;
  }
}
__host__ __device__ void iterfun2(Tensor x3, Tensor w2, Tensor z2, int64_t m2, int64_t n4, int64_t j2) {
  int64_t s_idx2;
  (s_idx2 = (j2 / n4));
  int64_t n_idx;
  (n_idx = (j2 % n4));
  int64_t z_idx2;
  (z_idx2 = j2);
  int64_t x_offset2;
  (x_offset2 = (s_idx2 * m2));
  int64_t j1;
  (j1 = n_idx);
  float v1;
  {
    int64_t i13 = 0;
    float acc6 = 0.;
    while ((i13 < m2)) {
      (acc6 = t38(x3, w2, m2, x_offset2, j1, acc6, i13));
      (i13 = (i13 + 1));
    }
    (v1 = acc6);
  }
  (((z2.data)[(z_idx2 + (z2.offset))]) = v1);
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
  (m2 = ((w_shape1.seq)[1]));
  int64_t n4;
  (n4 = ((w_shape1.seq)[0]));
  int64_t t46;
  (t46 = (s_max2 * n4));
  {
    int64_t niterations2 = t46;
    int64_t tpb2 = 256;
    int64_t nblocks2 = (((niterations2 + (tpb2 * 10)) - 1) / (tpb2 * 10));
    loopKernel2<<<nblocks2, tpb2>>>(t46, x3, w2, z2, m2, n4);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
}
__host__ __device__ void iterfun3(Tensor x4, Tensor z3, int64_t i14) {
  float x_i;
  (x_i = ((x4.data)[(i14 + (x4.offset))]));
  char t47;
  (t47 = (x_i > 0.));
  float t48;
  if ((t47 == 1)) {
    (t48 = x_i);
  } else {
    (t48 = 0.);
  }
  (((z3.data)[(i14 + (z3.offset))]) = t48);
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
  Seq t49;
  (t49 = tensor_shape((x4.dims), (x4.rank)));
  int64_t s2;
  (s2 = ((t49.seq)[0]));
  int64_t t50;
  (t50 = tensorSize(x4));
  int64_t m3;
  (m3 = (t50 / s2));
  int64_t t51;
  (t51 = (s_max3 * m3));
  {
    int64_t niterations3 = t51;
    int64_t tpb3 = 256;
    int64_t nblocks3 = (((niterations3 + (tpb3 * 10)) - 1) / (tpb3 * 10));
    loopKernel3<<<nblocks3, tpb3>>>(t51, x4, z3);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
}
__host__ __device__ void iterfun4(Tensor x5, Tensor z4, int64_t i15) {
  float x_i1;
  (x_i1 = ((x5.data)[(i15 + (x5.offset))]));
  float t52;
  (t52 = exp1(x_i1));
  (((z4.data)[(i15 + (z4.offset))]) = t52);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z4.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z4.id)]) = STATE_GPU_INVALID);
  #endif
}
__host__ __device__ float t53(Tensor z4, int64_t offset1, float acc7, int64_t i16) {
  int64_t t54;
  (t54 = (offset1 + i16));
  float t55;
  (t55 = ((z4.data)[(t54 + (z4.offset))]));
  {
    float t56;
    (t56 = (acc7 + t55));
    return t56;
  }
}
__host__ __device__ void iterfunSummarize(Tensor expsumbuf, Tensor z4, int64_t m4, int64_t s_idx3) {
  int64_t offset1;
  (offset1 = (s_idx3 * m4));
  float expsum;
  {
    int64_t i17 = 0;
    float acc8 = 0.;
    while ((i17 < m4)) {
      (acc8 = t53(z4, offset1, acc8, i17));
      (i17 = (i17 + 1));
    }
    (expsum = acc8);
  }
  (((expsumbuf.data)[(s_idx3 + (expsumbuf.offset))]) = expsum);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(expsumbuf.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(expsumbuf.id)]) = STATE_GPU_INVALID);
  #endif
}
__host__ __device__ void iterfunRegularize(Tensor expsumbuf, Tensor z4, int64_t m4, int64_t i18) {
  int64_t s_idx4;
  (s_idx4 = (i18 / m4));
  float expsum1;
  (expsum1 = ((expsumbuf.data)[(s_idx4 + (expsumbuf.offset))]));
  float z_i;
  (z_i = ((z4.data)[(i18 + (z4.offset))]));
  float t57;
  (t57 = (z_i / expsum1));
  (((z4.data)[(i18 + (z4.offset))]) = t57);
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
  Seq t58;
  (t58 = tensor_shape((x5.dims), (x5.rank)));
  int64_t s3;
  (s3 = ((t58.seq)[0]));
  int64_t t59;
  (t59 = tensorSize(x5));
  int64_t m4;
  (m4 = (t59 / s3));
  int64_t t60;
  (t60 = (s_max4 * m4));
  {
    int64_t niterations4 = t60;
    int64_t tpb4 = 256;
    int64_t nblocks4 = (((niterations4 + (tpb4 * 10)) - 1) / (tpb4 * 10));
    loopKernel6<<<nblocks4, tpb4>>>(t60, x5, z4);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
  {
    int64_t niterations5 = s_max4;
    int64_t tpb5 = 256;
    int64_t nblocks5 = (((niterations5 + (tpb5 * 10)) - 1) / (tpb5 * 10));
    loopKernel5<<<nblocks5, tpb5>>>(s_max4, expsumbuf, z4, m4);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
  int64_t t61;
  (t61 = (s_max4 * m4));
  {
    int64_t niterations6 = t61;
    int64_t tpb6 = 256;
    int64_t nblocks6 = (((niterations6 + (tpb6 * 10)) - 1) / (tpb6 * 10));
    loopKernel4<<<nblocks6, tpb6>>>(t61, expsumbuf, z4, m4);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
}
__host__ __device__ void iterfun5(Tensor h, Tensor dldh, Tensor z5, int64_t i19) {
  float t62;
  (t62 = ((h.data)[(i19 + (h.offset))]));
  char t63;
  (t63 = (t62 > 0.));
  float dhds_ii;
  if ((t63 == 1)) {
    (dhds_ii = 1.);
  } else {
    (dhds_ii = 0.);
  }
  float dldh_i;
  (dldh_i = ((dldh.data)[(i19 + (dldh.offset))]));
  float t64;
  (t64 = (dhds_ii * dldh_i));
  (((z5.data)[(i19 + (z5.offset))]) = t64);
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
  Seq t65;
  (t65 = tensor_shape((h.dims), (h.rank)));
  int64_t s4;
  (s4 = ((t65.seq)[0]));
  int64_t t66;
  (t66 = tensorSize(h));
  int64_t m5;
  (m5 = (t66 / s4));
  int64_t t67;
  (t67 = (s_max5 * m5));
  {
    int64_t niterations7 = t67;
    int64_t tpb7 = 256;
    int64_t nblocks7 = (((niterations7 + (tpb7 * 10)) - 1) / (tpb7 * 10));
    loopKernel7<<<nblocks7, tpb7>>>(t67, h, dldh, z5);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
}
__host__ __device__ float t68(Tensor p, Tensor dldp, int64_t s_offset, int64_t i20, float p_i, float acc9, int64_t j3) {
  char t69;
  (t69 = (j3 == i20));
  float s_ij;
  if ((t69 == 1)) {
    float t70;
    (t70 = (p_i * p_i));
    (s_ij = (p_i - t70));
  } else {
    int64_t t71;
    (t71 = (s_offset + j3));
    float p_j;
    (p_j = ((p.data)[(t71 + (p.offset))]));
    float t72;
    (t72 = (p_i * p_j));
    (s_ij = (-t72));
  }
  int64_t t73;
  (t73 = (s_offset + j3));
  float dldp_j;
  (dldp_j = ((dldp.data)[(t73 + (dldp.offset))]));
  float t74;
  (t74 = (dldp_j * s_ij));
  {
    float t75;
    (t75 = (acc9 + t74));
    return t75;
  }
}
__host__ __device__ void iterfun6(Tensor p, Tensor dldp, Tensor z6, int64_t m6, int64_t i21) {
  int64_t s_idx5;
  (s_idx5 = (i21 / m6));
  int64_t s_offset;
  (s_offset = (s_idx5 * m6));
  int64_t i20;
  (i20 = (i21 % m6));
  int64_t t76;
  (t76 = (s_offset + i20));
  float p_i;
  (p_i = ((p.data)[(t76 + (p.offset))]));
  float v2;
  {
    int64_t i22 = 0;
    float acc10 = 0.;
    while ((i22 < m6)) {
      (acc10 = t68(p, dldp, s_offset, i20, p_i, acc10, i22));
      (i22 = (i22 + 1));
    }
    (v2 = acc10);
  }
  int64_t t77;
  (t77 = (s_offset + i20));
  (((z6.data)[(t77 + (z6.offset))]) = v2);
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
  Seq t78;
  (t78 = tensor_shape((p.dims), (p.rank)));
  int64_t s5;
  (s5 = ((t78.seq)[0]));
  int64_t t79;
  (t79 = tensorSize(p));
  int64_t m6;
  (m6 = (t79 / s5));
  int64_t t80;
  (t80 = (s_max6 * m6));
  {
    int64_t niterations8 = t80;
    int64_t tpb8 = 256;
    int64_t nblocks8 = (((niterations8 + (tpb8 * 10)) - 1) / (tpb8 * 10));
    loopKernel8<<<nblocks8, tpb8>>>(t80, p, dldp, z6, m6);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
}
__host__ __device__ void iterfun7(Tensor x6, Tensor z7, int64_t i23) {
  float t81;
  (t81 = ((x6.data)[(i23 + (x6.offset))]));
  (((z7.data)[(i23 + (z7.offset))]) = t81);
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
  Seq t82;
  (t82 = tensor_shape((x6.dims), (x6.rank)));
  int64_t s6;
  (s6 = ((t82.seq)[0]));
  int64_t t83;
  (t83 = tensorSize(x6));
  int64_t m7;
  (m7 = (t83 / s6));
  int64_t t84;
  (t84 = (s_max7 * m7));
  {
    int64_t niterations9 = t84;
    int64_t tpb9 = 256;
    int64_t nblocks9 = (((niterations9 + (tpb9 * 10)) - 1) / (tpb9 * 10));
    loopKernel9<<<nblocks9, tpb9>>>(t84, x6, z7);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
}
__host__ __device__ void iterfun8(float c, Tensor z8, int64_t i24) {
  float t85;
  (t85 = ((z8.data)[(i24 + (z8.offset))]));
  float t86;
  (t86 = (t85 * c));
  (((z8.data)[(i24 + (z8.offset))]) = t86);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z8.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z8.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel10(int64_t n13, float c, Tensor z8) {
  int64_t idx10 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride10 = (gridDim.x * blockDim.x);
  while ((idx10 < n13)) {
    iterfun8(c, z8, idx10);
    (idx10 = (idx10 + stride10));
  }
}
__host__ void tensorOpExn__z____scalar_c_(int64_t s_max8, float c, Tensor z8) {
  Seq t87;
  (t87 = tensor_shape((z8.dims), (z8.rank)));
  int64_t s7;
  (s7 = ((t87.seq)[0]));
  int64_t t88;
  (t88 = tensorSize(z8));
  int64_t m8;
  (m8 = (t88 / s7));
  int64_t t89;
  (t89 = (s_max8 * m8));
  {
    int64_t niterations10 = t89;
    int64_t tpb10 = 256;
    int64_t nblocks10 = (((niterations10 + (tpb10 * 10)) - 1) / (tpb10 * 10));
    loopKernel10<<<nblocks10, tpb10>>>(t89, c, z8);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
}
__host__ __device__ void iterfun9(float c1, Tensor z9, int64_t i25) {
  (((z9.data)[(i25 + (z9.offset))]) = c1);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z9.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z9.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel11(int64_t n14, float c1, Tensor z9) {
  int64_t idx11 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride11 = (gridDim.x * blockDim.x);
  while ((idx11 < n14)) {
    iterfun9(c1, z9, idx11);
    (idx11 = (idx11 + stride11));
  }
}
__host__ void tensorOpExn__Z___scalar_c_(float c1, Tensor z9) {
  int64_t m9;
  (m9 = tensorSize(z9));
  {
    int64_t niterations11 = m9;
    int64_t tpb11 = 256;
    int64_t nblocks11 = (((niterations11 + (tpb11 * 10)) - 1) / (tpb11 * 10));
    loopKernel11<<<nblocks11, tpb11>>>(m9, c1, z9);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
}
__host__ __device__ void iterfun10(Tensor x7, float c2, Tensor z10, int64_t x_offset3, int64_t i26) {
  float t90;
  (t90 = ((z10.data)[(i26 + (z10.offset))]));
  int64_t t91;
  (t91 = (i26 + x_offset3));
  float t92;
  (t92 = ((x7.data)[(t91 + (x7.offset))]));
  float t93;
  (t93 = (t92 * c2));
  float t94;
  (t94 = (t90 + t93));
  (((z10.data)[(i26 + (z10.offset))]) = t94);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z10.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z10.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel12(int64_t n15, Tensor x7, float c2, Tensor z10, int64_t x_offset3) {
  int64_t idx12 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride12 = (gridDim.x * blockDim.x);
  while ((idx12 < n15)) {
    iterfun10(x7, c2, z10, x_offset3, idx12);
    (idx12 = (idx12 + stride12));
  }
}
__host__ void tensorOpExn__Z____x___scalar_c_(int64_t s_idx6, Tensor x7, float c2, Tensor z10) {
  int64_t m10;
  (m10 = tensorSize(z10));
  int64_t x_offset3;
  (x_offset3 = (s_idx6 * m10));
  {
    int64_t niterations12 = m10;
    int64_t tpb12 = 256;
    int64_t nblocks12 = (((niterations12 + (tpb12 * 10)) - 1) / (tpb12 * 10));
    loopKernel12<<<nblocks12, tpb12>>>(m10, x7, c2, z10, x_offset3);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
}
__host__ __device__ void iterfun11(Tensor x8, float c3, Tensor z11, int64_t z_offset1, int64_t i27) {
  int64_t z_idx3;
  (z_idx3 = (i27 + z_offset1));
  float t95;
  (t95 = ((z11.data)[(z_idx3 + (z11.offset))]));
  float t96;
  (t96 = ((x8.data)[(i27 + (x8.offset))]));
  float t97;
  (t97 = (t96 * c3));
  float t98;
  (t98 = (t95 + t97));
  (((z11.data)[(z_idx3 + (z11.offset))]) = t98);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z11.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z11.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel13(int64_t n16, Tensor x8, float c3, Tensor z11, int64_t z_offset1) {
  int64_t idx13 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride13 = (gridDim.x * blockDim.x);
  while ((idx13 < n16)) {
    iterfun11(x8, c3, z11, z_offset1, idx13);
    (idx13 = (idx13 + stride13));
  }
}
__host__ void tensorOpExn__z____X___scalar_c_(int64_t s_idx7, Tensor x8, float c3, Tensor z11) {
  int64_t m11;
  (m11 = tensorSize(x8));
  int64_t z_offset1;
  (z_offset1 = (s_idx7 * m11));
  {
    int64_t niterations13 = m11;
    int64_t tpb13 = 256;
    int64_t nblocks13 = (((niterations13 + (tpb13 * 10)) - 1) / (tpb13 * 10));
    loopKernel13<<<nblocks13, tpb13>>>(m11, x8, c3, z11, z_offset1);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
}
__host__ __device__ void iterfun12(Tensor1 y1, float c4, Tensor z12, int64_t m12, int64_t i28) {
  int64_t idx14;
  (idx14 = ((y1.data)[(i28 + (y1.offset))]));
  int64_t offset2;
  (offset2 = (i28 * m12));
  int64_t z_idx4;
  (z_idx4 = (idx14 + offset2));
  float t99;
  (t99 = ((z12.data)[(z_idx4 + (z12.offset))]));
  float t100;
  (t100 = (t99 + c4));
  (((z12.data)[(z_idx4 + (z12.offset))]) = t100);
  #if ((defined(__CUDA_ARCH__) && (__CUDA_ARCH__ > 0)))
  ((t_state[(z12.id)]) = STATE_CPU_INVALID);
  #else
  ((t_state[(z12.id)]) = STATE_GPU_INVALID);
  #endif
}
__global__ void loopKernel14(int64_t n17, Tensor1 y1, float c4, Tensor z12, int64_t m12) {
  int64_t idx15 = ((blockDim.x * blockIdx.x) + threadIdx.x);
  int64_t stride14 = (gridDim.x * blockDim.x);
  while ((idx15 < n17)) {
    iterfun12(y1, c4, z12, m12, idx15);
    (idx15 = (idx15 + stride14));
  }
}
__host__ void tensorOpExp__z____1_Hot_y____scalar_c_(int64_t s_max9, Tensor1 y1, float c4, Tensor z12) {
  Seq t101;
  (t101 = tensor_shape((z12.dims), (z12.rank)));
  int64_t m12;
  (m12 = ((t101.seq)[1]));
  {
    int64_t niterations14 = s_max9;
    int64_t tpb14 = 256;
    int64_t nblocks14 = (((niterations14 + (tpb14 * 10)) - 1) / (tpb14 * 10));
    loopKernel14<<<nblocks14, tpb14>>>(s_max9, y1, c4, z12, m12);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
}
__host__ __device__ void t102(Tensor z13, int64_t offset3, int64_t idx16, float v3, int64_t j4) {
  char t103;
  (t103 = (j4 == idx16));
  if ((t103 == 1)) {
    int64_t t104;
    (t104 = (j4 + offset3));
    (((z13.data)[(t104 + (z13.offset))]) = v3);
  } else {
    int64_t t105;
    (t105 = (j4 + offset3));
    (((z13.data)[(t105 + (z13.offset))]) = 0.);
  }
}
__host__ __device__ void iterfun13(Tensor1 y2, Tensor x9, Tensor z13, int64_t m13, int64_t i29) {
  int64_t offset3;
  (offset3 = (i29 * m13));
  int64_t idx16;
  (idx16 = ((y2.data)[(i29 + (y2.offset))]));
  int64_t t106;
  (t106 = (idx16 + offset3));
  float t107;
  (t107 = ((x9.data)[(t106 + (x9.offset))]));
  float t108;
  (t108 = (1. / t107));
  float v3;
  (v3 = (-t108));
  {
    int64_t i30 = 0;
    while ((i30 < m13)) {
      t102(z13, offset3, idx16, v3, i30);
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
  Seq t109;
  (t109 = tensor_shape((x9.dims), (x9.rank)));
  int64_t s8;
  (s8 = ((t109.seq)[0]));
  Seq t110;
  (t110 = tensor_shape((x9.dims), (x9.rank)));
  int64_t m13;
  (m13 = ((t110.seq)[1]));
  {
    int64_t niterations15 = s_max10;
    int64_t tpb15 = 256;
    int64_t nblocks15 = (((niterations15 + (tpb15 * 10)) - 1) / (tpb15 * 10));
    loopKernel15<<<nblocks15, tpb15>>>(s_max10, y2, x9, z13, m13);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
}
__host__ __device__ float t111(Tensor z14, int64_t m14, int64_t i31, float acc11, int64_t j5) {
  int64_t s_idx8;
  (s_idx8 = (j5 + 1));
  int64_t s_offset1;
  (s_offset1 = (s_idx8 * m14));
  int64_t t112;
  (t112 = (s_offset1 + i31));
  float t113;
  (t113 = ((z14.data)[(t112 + (z14.offset))]));
  {
    float t114;
    (t114 = (acc11 + t113));
    return t114;
  }
}
__host__ __device__ void iterfun14(Tensor z14, int64_t s9, int64_t m14, int64_t i31) {
  int64_t t115;
  (t115 = (s9 - 1));
  float v4;
  {
    int64_t i32 = 0;
    float acc12 = ((z14.data)[(i31 + (z14.offset))]);
    while ((i32 < t115)) {
      (acc12 = t111(z14, m14, i31, acc12, i32));
      (i32 = (i32 + 1));
    }
    (v4 = acc12);
  }
  (((z14.data)[(i31 + (z14.offset))]) = v4);
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
  Seq t116;
  (t116 = tensor_shape((z14.dims), (z14.rank)));
  int64_t s9;
  (s9 = ((t116.seq)[0]));
  int64_t t117;
  (t117 = tensorSize(z14));
  int64_t m14;
  (m14 = (t117 / s9));
  {
    int64_t niterations16 = m14;
    int64_t tpb16 = 256;
    int64_t nblocks16 = (((niterations16 + (tpb16 * 10)) - 1) / (tpb16 * 10));
    loopKernel16<<<nblocks16, tpb16>>>(m14, z14, s9, m14);
    GPU_UTILS_CHECK_CUDA_ERROR();
    cudaDeviceSynchronize();
    GPU_UTILS_CHECK_CUDA_ERROR();
  }
}
__host__ __device__ Tensor nnComponentOutBufs(Rec comp) {
  Tensor X = (comp.out_bufs);
  {
    Tensor t118;
    (t118 = X);
    return t118;
  }
}
__host__ __device__ Tensor nnComponentApplyExn(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t s_max11, Tensor inputs1, Rec comp1) {
  int64_t ty1;
  int64_t X1 = (comp1.ty);
  (ty1 = X1);
  char t119;
  (t119 = (ty1 == nnCompType_FullyConnected));
  if ((t119 == 1)) {
    Tensor t120;
    Tensor X2 = (comp1.w);
    (t120 = X2);
    Tensor t121;
    Tensor X3 = (comp1.b);
    (t121 = X3);
    Tensor t122;
    Tensor X4 = (comp1.out_bufs);
    (t122 = X4);
    tensorOpExn__z___Wx_B(s_max11, t120, inputs1, t121, t122);
    Tensor X5 = (comp1.out_bufs);
    {
      Tensor t123;
      (t123 = X5);
      return t123;
    }
  } else {
    char t124;
    (t124 = (ty1 == nnCompType_ReLU));
    if ((t124 == 1)) {
      Tensor t125;
      Tensor X6 = (comp1.out_bufs);
      (t125 = X6);
      tensorOpExn__z___ReLU_x_(s_max11, inputs1, t125);
      Tensor X7 = (comp1.out_bufs);
      {
        Tensor t126;
        (t126 = X7);
        return t126;
      }
    } else {
      char t127;
      (t127 = (ty1 == nnCompType_SoftMax));
      if ((t127 == 1)) {
        Tensor t128;
        Tensor X8 = (comp1.softmax_bufs);
        (t128 = X8);
        Tensor t129;
        Tensor X9 = (comp1.out_bufs);
        (t129 = X9);
        tensorOpExn__z___SoftMax_x_(s_max11, inputs1, t128, t129);
        Tensor X10 = (comp1.out_bufs);
        {
          Tensor t130;
          (t130 = X10);
          return t130;
        }
      } else {
        Tensor X11 = (comp1.out_bufs);
        {
          Tensor t131;
          (t131 = X11);
          return t131;
        }
      }
    }
  }
}
__host__ __device__ Tensor nnComponentBackpropExn(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t s_max12, Tensor comp_inputs, Tensor output_grads, Rec comp2) {
  int64_t ty2;
  int64_t X12 = (comp2.ty);
  (ty2 = X12);
  char t132;
  (t132 = (ty2 == nnCompType_FullyConnected));
  if ((t132 == 1)) {
    Tensor t133;
    Tensor X13 = (comp2.b_grads);
    (t133 = X13);
    tensorOpExn__z___x(s_max12, output_grads, t133);
    Tensor t134;
    Tensor X14 = (comp2.w_grads);
    (t134 = X14);
    tensorOpExn__z___x___y_T(s_max12, output_grads, comp_inputs, t134);
    Tensor t135;
    Tensor X15 = (comp2.w);
    (t135 = X15);
    Tensor t136;
    Tensor X16 = (comp2.in_grads);
    (t136 = X16);
    tensorOpExn__z____x_T___W__T(s_max12, output_grads, t135, t136);
    Tensor X17 = (comp2.in_grads);
    {
      Tensor t137;
      (t137 = X17);
      return t137;
    }
  } else {
    char t138;
    (t138 = (ty2 == nnCompType_ReLU));
    if ((t138 == 1)) {
      Tensor t139;
      Tensor X18 = (comp2.out_bufs);
      (t139 = X18);
      Tensor t140;
      Tensor X19 = (comp2.in_grads);
      (t140 = X19);
      tensorOpExn__z___d_dx_l_ReLU_x__(s_max12, t139, output_grads, t140);
      Tensor X20 = (comp2.in_grads);
      {
        Tensor t141;
        (t141 = X20);
        return t141;
      }
    } else {
      char t142;
      (t142 = (ty2 == nnCompType_SoftMax));
      if ((t142 == 1)) {
        Tensor t143;
        Tensor X21 = (comp2.out_bufs);
        (t143 = X21);
        Tensor t144;
        Tensor X22 = (comp2.in_grads);
        (t144 = X22);
        tensorOpExn__z___d_dx_l_SoftMax_x___(s_max12, t143, output_grads, t144);
        Tensor X23 = (comp2.in_grads);
        {
          Tensor t145;
          (t145 = X23);
          return t145;
        }
      } else {
        Tensor X24 = (comp2.in_grads);
        {
          Tensor t146;
          (t146 = X24);
          return t146;
        }
      }
    }
  }
}
__host__ __device__ void nnComponent_TEMP_SetGradients(int64_t nnCompType_FullyConnected, float scalar, Rec comp3) {
  int64_t ty3;
  int64_t X25 = (comp3.ty);
  (ty3 = X25);
  char t147;
  (t147 = (ty3 == nnCompType_FullyConnected));
  if ((t147 == 1)) {
    Tensor t148;
    Tensor X26 = (comp3.w_grads);
    (t148 = X26);
    tensorOpExn__Z___scalar_c_(scalar, t148);
    Tensor t149;
    Tensor X27 = (comp3.b_grads);
    (t149 = X27);
    tensorOpExn__Z___scalar_c_(scalar, t149);
  } else {
    ;
  }
}
__host__ __device__ void nnComponent_TEMP_ReduceGradients(int64_t nnCompType_FullyConnected, Rec comp4) {
  int64_t ty4;
  int64_t X28 = (comp4.ty);
  (ty4 = X28);
  char t150;
  (t150 = (ty4 == nnCompType_FullyConnected));
  if ((t150 == 1)) {
    Tensor t151;
    Tensor X29 = (comp4.w_grads);
    (t151 = X29);
    tensorOpExn__Dim1Reduce_z__dst___z_0__op_____(t151);
    Tensor t152;
    Tensor X30 = (comp4.b_grads);
    (t152 = X30);
    tensorOpExn__Dim1Reduce_z__dst___z_0__op_____(t152);
  } else {
    ;
  }
}
__host__ __device__ void nnComponent_TEMP_ScaleGradients(int64_t nnCompType_FullyConnected, float scalar1, Rec comp5) {
  int64_t ty5;
  int64_t X31 = (comp5.ty);
  (ty5 = X31);
  char t153;
  (t153 = (ty5 == nnCompType_FullyConnected));
  if ((t153 == 1)) {
    Tensor t154;
    Tensor X32 = (comp5.w_grads);
    (t154 = X32);
    tensorOpExn__z____scalar_c_(1, scalar1, t154);
    Tensor t155;
    Tensor X33 = (comp5.b_grads);
    (t155 = X33);
    tensorOpExn__z____scalar_c_(1, scalar1, t155);
  } else {
    ;
  }
}
__host__ __device__ void nnComponent_TEMP_ApplyGradients(int64_t nnCompType_FullyConnected, float scalar2, Rec comp6) {
  int64_t ty6;
  int64_t X34 = (comp6.ty);
  (ty6 = X34);
  char t156;
  (t156 = (ty6 == nnCompType_FullyConnected));
  if ((t156 == 1)) {
    Tensor t157;
    Tensor X35 = (comp6.w_grads);
    (t157 = X35);
    Tensor t158;
    Tensor X36 = (comp6.w);
    (t158 = X36);
    tensorOpExn__Z____x___scalar_c_(0, t157, scalar2, t158);
    Tensor t159;
    Tensor X37 = (comp6.b_grads);
    (t159 = X37);
    Tensor t160;
    Tensor X38 = (comp6.b);
    (t160 = X38);
    tensorOpExn__Z____x___scalar_c_(0, t159, scalar2, t160);
  } else {
    ;
  }
}
__host__ __device__ void nnComponent_TEMP_L2Regularize(int64_t nnCompType_FullyConnected, float scalar3, Rec comp7) {
  int64_t ty7;
  int64_t X39 = (comp7.ty);
  (ty7 = X39);
  char t161;
  (t161 = (ty7 == nnCompType_FullyConnected));
  if ((t161 == 1)) {
    Tensor t162;
    Tensor X40 = (comp7.w);
    (t162 = X40);
    Tensor t163;
    Tensor X41 = (comp7.w_grads);
    (t163 = X41);
    tensorOpExn__z____X___scalar_c_(0, t162, scalar3, t163);
    Tensor t164;
    Tensor X42 = (comp7.b);
    (t164 = X42);
    Tensor t165;
    Tensor X43 = (comp7.b_grads);
    (t165 = X43);
    tensorOpExn__z____X___scalar_c_(0, t164, scalar3, t165);
  } else {
    ;
  }
}
__host__ __device__ void nnComponentZeroGrad(int64_t nnCompType_FullyConnected, Rec comp8) {
  nnComponent_TEMP_SetGradients(nnCompType_FullyConnected, 0., comp8);
}
__host__ __device__ Tensor nnLossFunctionApplyExn(int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, int64_t s_max13, Tensor inputs2, Rec1 lossfn1) {
  int64_t ty8;
  int64_t X44 = (lossfn1.ty);
  (ty8 = X44);
  char t166;
  (t166 = (ty8 == nnLossfnType_CrossEntropyLoss));
  if ((t166 == 1)) {
    {
      Tensor t167;
      (t167 = inputs2);
      return t167;
    }
  } else {
    char t168;
    (t168 = (ty8 == nnLossfnType_SoftMaxCrossEntropyLoss));
    if ((t168 == 1)) {
      Tensor t169;
      Tensor X45 = (lossfn1.softmax_bufs);
      (t169 = X45);
      Tensor t170;
      Tensor X46 = (lossfn1.in_grads);
      (t170 = X46);
      tensorOpExn__z___SoftMax_x_(s_max13, inputs2, t169, t170);
      Tensor X47 = (lossfn1.in_grads);
      {
        Tensor t171;
        (t171 = X47);
        return t171;
      }
    } else {
      {
        Tensor t172;
        (t172 = inputs2);
        return t172;
      }
    }
  }
}
__host__ __device__ Tensor nnLossFunctionBackpropExn(int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, int64_t s_max14, Tensor inputs3, Tensor1 expecteds, Rec1 lossfn2) {
  int64_t ty9;
  int64_t X48 = (lossfn2.ty);
  (ty9 = X48);
  char t173;
  (t173 = (ty9 == nnLossfnType_CrossEntropyLoss));
  if ((t173 == 1)) {
    Tensor t174;
    Tensor X49 = (lossfn2.in_grads);
    (t174 = X49);
    tensorOpExn__z___1_Hot_y____scalar__1__x_T___1_Hot_y___(s_max14, expecteds, inputs3, t174);
    Tensor X50 = (lossfn2.in_grads);
    {
      Tensor t175;
      (t175 = X50);
      return t175;
    }
  } else {
    char t176;
    (t176 = (ty9 == nnLossfnType_SoftMaxCrossEntropyLoss));
    if ((t176 == 1)) {
      float t177;
      (t177 = (-1.));
      Tensor t178;
      Tensor X51 = (lossfn2.in_grads);
      (t178 = X51);
      tensorOpExp__z____1_Hot_y____scalar_c_(s_max14, expecteds, t177, t178);
      Tensor X52 = (lossfn2.in_grads);
      {
        Tensor t179;
        (t179 = X52);
        return t179;
      }
    } else {
      Tensor X53 = (lossfn2.in_grads);
      {
        Tensor t180;
        (t180 = X53);
        return t180;
      }
    }
  }
}
__host__ __device__ int64_t t181(int64_t nnCompType_FullyConnected, int64_t x10, Rec comp9) {
  nnComponentZeroGrad(nnCompType_FullyConnected, comp9);
  {
    int64_t t182;
    (t182 = 0);
    return t182;
  }
}
__host__ __device__ int64_t foldl1(int64_t acc_init2, Seq1 s10, int64_t nnCompType_FullyConnected) {
  int64_t acc13 = acc_init2;
  int64_t i33 = 0;
  while ((i33 < (s10.len))) {
    (acc13 = t181(nnCompType_FullyConnected, acc13, ((s10.seq)[i33])));
    (i33 = (i33 + 1));
  }
  return acc13;
}
__host__ __device__ void nnZeroGrad(int64_t nnCompType_FullyConnected, Rec2 network) {
  Seq1 t183;
  Seq1 X54 = (network.components);
  (t183 = X54);
  int64_t _2;
  (_2 = foldl1(0, t183, nnCompType_FullyConnected));
  ;
}
__host__ __device__ Tensor t184(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t s_max15, Tensor prevouts, Rec comp10) {
  {
    Tensor t185;
    (t185 = nnComponentApplyExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, s_max15, prevouts, comp10));
    return t185;
  }
}
__host__ __device__ Tensor foldl2(Tensor acc_init3, Seq1 s11, int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t s_max15) {
  Tensor acc14 = acc_init3;
  int64_t i34 = 0;
  while ((i34 < (s11.len))) {
    (acc14 = t184(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, s_max15, acc14, ((s11.seq)[i34])));
    (i34 = (i34 + 1));
  }
  return acc14;
}
__host__ __device__ Tensor nnEvalExn(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, Rec2 network1, Tensor inputs4) {
  Seq t186;
  (t186 = tensor_shape((inputs4.dims), (inputs4.rank)));
  int64_t s_max15;
  (s_max15 = ((t186.seq)[0]));
  Seq1 t187;
  Seq1 X55 = (network1.components);
  (t187 = X55);
  Tensor comp_out;
  (comp_out = foldl2(inputs4, t187, nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, s_max15));
  Rec1 t188;
  Rec1 X56 = (network1.lossfn);
  (t188 = X56);
  {
    Tensor t189;
    (t189 = nnLossFunctionApplyExn(nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, s_max15, comp_out, t188));
    return t189;
  }
}
__host__ __device__ Tensor t190(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, Rec2 network2, int64_t s_max16, int64_t n_components, Tensor out_grads, int64_t i35) {
  int64_t t191;
  (t191 = (i35 + 2));
  int64_t idx19;
  (idx19 = (n_components - t191));
  int64_t previdx;
  (previdx = (idx19 - 1));
  Seq1 t192;
  Seq1 X57 = (network2.components);
  (t192 = X57);
  Rec comp11;
  (comp11 = ((t192.seq)[idx19]));
  Seq1 t193;
  Seq1 X58 = (network2.components);
  (t193 = X58);
  Rec t194;
  (t194 = ((t193.seq)[previdx]));
  Tensor in_bufs;
  (in_bufs = nnComponentOutBufs(t194));
  {
    Tensor t195;
    (t195 = nnComponentBackpropExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, s_max16, in_bufs, out_grads, comp11));
    return t195;
  }
}
__host__ __device__ void nnBackpropExn(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, Rec2 network2, Rec3 batch) {
  Tensor t196;
  Tensor X59 = (batch.inputs);
  (t196 = X59);
  Seq t197;
  (t197 = tensor_shape((t196.dims), (t196.rank)));
  int64_t s_max16;
  (s_max16 = ((t197.seq)[0]));
  Tensor t198;
  Tensor X60 = (batch.inputs);
  (t198 = X60);
  Tensor outputs;
  (outputs = nnEvalExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, network2, t198));
  Tensor1 t199;
  Tensor1 X61 = (batch.correct_linear_outidxs);
  (t199 = X61);
  Rec1 t200;
  Rec1 X62 = (network2.lossfn);
  (t200 = X62);
  Tensor lossgrads;
  (lossgrads = nnLossFunctionBackpropExn(nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, s_max16, outputs, t199, t200));
  Seq1 t201;
  Seq1 X63 = (network2.components);
  (t201 = X63);
  int64_t n_components;
  (n_components = (t201.len));
  char t202;
  (t202 = (n_components == 0));
  if ((t202 == 1)) {
    ;
  } else {
    char t203;
    (t203 = (n_components == 1));
    if ((t203 == 1)) {
      Seq1 t204;
      Seq1 X64 = (network2.components);
      (t204 = X64);
      Rec lastcomp;
      (lastcomp = ((t204.seq)[0]));
      Tensor t205;
      Tensor X65 = (batch.inputs);
      (t205 = X65);
      Tensor _3;
      (_3 = nnComponentBackpropExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, s_max16, t205, lossgrads, lastcomp));
      ;
    } else {
      Seq1 t206;
      Seq1 X66 = (network2.components);
      (t206 = X66);
      int64_t t207;
      (t207 = (n_components - 1));
      Rec lastcomp1;
      (lastcomp1 = ((t206.seq)[t207]));
      Seq1 t208;
      Seq1 X67 = (network2.components);
      (t208 = X67);
      int64_t t209;
      (t209 = (n_components - 2));
      Rec t210;
      (t210 = ((t208.seq)[t209]));
      Tensor lastcomp_in_bufs;
      (lastcomp_in_bufs = nnComponentOutBufs(t210));
      Tensor lastcomp_in_grads;
      (lastcomp_in_grads = nnComponentBackpropExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, s_max16, lastcomp_in_bufs, lossgrads, lastcomp1));
      int64_t t211;
      (t211 = (n_components - 2));
      Tensor firstcomp_out_grads;
      {
        int64_t i36 = 0;
        Tensor acc15 = lastcomp_in_grads;
        while ((i36 < t211)) {
          (acc15 = t190(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, network2, s_max16, n_components, acc15, i36));
          (i36 = (i36 + 1));
        }
        (firstcomp_out_grads = acc15);
      }
      Seq1 t212;
      Seq1 X68 = (network2.components);
      (t212 = X68);
      Rec firstcomp;
      (firstcomp = ((t212.seq)[0]));
      Tensor firstcomp_in_bufs;
      Tensor X69 = (batch.inputs);
      (firstcomp_in_bufs = X69);
      Tensor _4;
      (_4 = nnComponentBackpropExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, s_max16, firstcomp_in_bufs, firstcomp_out_grads, firstcomp));
      ;
    }
  }
}
__host__ __device__ int64_t t213(int64_t nnCompType_FullyConnected, float batchsize_regularizer, int64_t x11, Rec comp12) {
  nnComponent_TEMP_ReduceGradients(nnCompType_FullyConnected, comp12);
  nnComponent_TEMP_ScaleGradients(nnCompType_FullyConnected, batchsize_regularizer, comp12);
  {
    int64_t t214;
    (t214 = 0);
    return t214;
  }
}
__host__ __device__ int64_t t215(int64_t nnCompType_FullyConnected, float lambda, int64_t x12, Rec comp13) {
  float t216;
  (t216 = (2. * lambda));
  nnComponent_TEMP_L2Regularize(nnCompType_FullyConnected, t216, comp13);
  {
    int64_t t217;
    (t217 = 0);
    return t217;
  }
}
__host__ __device__ int64_t t218(int64_t nnCompType_FullyConnected, float alpha, int64_t x13, Rec comp14) {
  float t219;
  (t219 = (-alpha));
  nnComponent_TEMP_ApplyGradients(nnCompType_FullyConnected, t219, comp14);
  {
    int64_t t220;
    (t220 = 0);
    return t220;
  }
}
__host__ __device__ int64_t foldl3(int64_t acc_init4, Seq1 s12, int64_t nnCompType_FullyConnected, float alpha) {
  int64_t acc16 = acc_init4;
  int64_t i37 = 0;
  while ((i37 < (s12.len))) {
    (acc16 = t218(nnCompType_FullyConnected, alpha, acc16, ((s12.seq)[i37])));
    (i37 = (i37 + 1));
  }
  return acc16;
}
__host__ __device__ int64_t foldl4(int64_t acc_init5, Seq1 s13, int64_t nnCompType_FullyConnected, float lambda) {
  int64_t acc17 = acc_init5;
  int64_t i38 = 0;
  while ((i38 < (s13.len))) {
    (acc17 = t215(nnCompType_FullyConnected, lambda, acc17, ((s13.seq)[i38])));
    (i38 = (i38 + 1));
  }
  return acc17;
}
__host__ __device__ int64_t foldl5(int64_t acc_init6, Seq1 s14, int64_t nnCompType_FullyConnected, float batchsize_regularizer) {
  int64_t acc18 = acc_init6;
  int64_t i39 = 0;
  while ((i39 < (s14.len))) {
    (acc18 = t213(nnCompType_FullyConnected, batchsize_regularizer, acc18, ((s14.seq)[i39])));
    (i39 = (i39 + 1));
  }
  return acc18;
}
__host__ __device__ void nnGradientDescentExn(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, Rec2 network3, float alpha, float lambda, Rec3 batch1) {
  nnZeroGrad(nnCompType_FullyConnected, network3);
  Tensor t221;
  Tensor X70 = (batch1.inputs);
  (t221 = X70);
  Seq t222;
  (t222 = tensor_shape((t221.dims), (t221.rank)));
  int64_t batchsize1;
  (batchsize1 = ((t222.seq)[0]));
  nnBackpropExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, network3, batch1);
  float t223;
  (t223 = (( float ) batchsize1));
  float batchsize_regularizer;
  (batchsize_regularizer = (1. / t223));
  Seq1 t224;
  Seq1 X71 = (network3.components);
  (t224 = X71);
  int64_t _5;
  (_5 = foldl5(0, t224, nnCompType_FullyConnected, batchsize_regularizer));
  char t225;
  (t225 = (lambda == 0.));
  if ((t225 == 1)) {
    ;
  } else {
    Seq1 t226;
    Seq1 X72 = (network3.components);
    (t226 = X72);
    int64_t _6;
    (_6 = foldl4(0, t226, nnCompType_FullyConnected, lambda));
    ;
  }
  Seq1 t227;
  Seq1 X73 = (network3.components);
  (t227 = X73);
  int64_t _7;
  (_7 = foldl3(0, t227, nnCompType_FullyConnected, alpha));
  ;
}
__host__ __device__ int64_t t228(int64_t acc19, int64_t e1) {
  {
    int64_t t229;
    (t229 = (acc19 * e1));
    return t229;
  }
}
__host__ __device__ int64_t foldl6(int64_t acc_init7, Seq s15) {
  int64_t acc20 = acc_init7;
  int64_t i40 = 0;
  while ((i40 < (s15.len))) {
    (acc20 = t228(acc20, ((s15.seq)[i40])));
    (i40 = (i40 + 1));
  }
  return acc20;
}
__host__ __device__ int64_t tensorSize1(Tensor t230) {
  Seq t231;
  (t231 = tensor_shape((t230.dims), (t230.rank)));
  {
    int64_t t232;
    (t232 = foldl6(1, t231));
    return t232;
  }
}
__host__ __device__ int64_t t233(Tensor t234, int64_t s_offset2, int64_t cand_idx, int64_t idx20) {
  int64_t t235;
  (t235 = (idx20 + s_offset2));
  float t236;
  (t236 = ((t234.data)[(t235 + (t234.offset))]));
  int64_t t237;
  (t237 = (cand_idx + s_offset2));
  float t238;
  (t238 = ((t234.data)[(t237 + (t234.offset))]));
  char t239;
  (t239 = (t236 > t238));
  if ((t239 == 1)) {
    {
      int64_t t240;
      (t240 = idx20);
      return t240;
    }
  } else {
    {
      int64_t t241;
      (t241 = cand_idx);
      return t241;
    }
  }
}
__host__ __device__ int64_t tensorLinearMaxIdx(int64_t s_idx9, Tensor t234) {
  Seq t242;
  (t242 = tensor_shape((t234.dims), (t234.rank)));
  int64_t s16;
  (s16 = ((t242.seq)[0]));
  int64_t t243;
  (t243 = tensorSize1(t234));
  int64_t size1;
  (size1 = (t243 / s16));
  int64_t s_offset2;
  (s_offset2 = (s_idx9 * size1));
  int64_t t244;
  (t244 = (size1 - 1));
  {
    int64_t t245;
    {
      int64_t i41 = 0;
      int64_t acc21 = (size1 - 1);
      while ((i41 < t244)) {
        (acc21 = t233(t234, s_offset2, acc21, i41));
        (i41 = (i41 + 1));
      }
      (t245 = acc21);
    }
    return t245;
  }
}
__host__ __device__ int64_t t246(Rec3 batch2, Tensor outputs1, int64_t b_acc, int64_t b_idx) {
  int64_t seqAlloc[1];
  Seq t247;
  int64_t t248;
  (t248 = tensorLinearMaxIdx(b_idx, outputs1));
  Tensor1 t249;
  Tensor1 X74 = (batch2.correct_linear_outidxs);
  (t249 = X74);
  ((seqAlloc[0]) = b_idx);
  ((t247.seq) = seqAlloc);
  ((t247.len) = 1);
  int64_t t250;
  (t250 = ((t249.data)[(cartesian_to_linear_index((t249.dims), (t249.rank), t247) + (t249.offset))]));
  char t251;
  (t251 = (t248 == t250));
  if ((t251 == 1)) {
    {
      int64_t t252;
      (t252 = (b_acc + 1));
      return t252;
    }
  } else {
    {
      int64_t t253;
      (t253 = b_acc);
      return t253;
    }
  }
}
__host__ __device__ int64_t t254(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, char printStatus1, Rec2 network4, Seq2 batches, int64_t acc22, int64_t i42) {
  char (*t255) = "/";
  char (*t256) = "\r";
  if ((printStatus1 == 1)) {
    printf("%s", t256);
    int64_t t257;
    (t257 = (i42 + 1));
    float t258;
    (t258 = (( float ) t257));
    printf("%f", t258);
    printf("%s", t255);
    int64_t t259;
    (t259 = (batches.len));
    float t260;
    (t260 = (( float ) t259));
    printf("%f", t260);
  } else {
    ;
  }
  Rec3 batch2;
  (batch2 = ((batches.seq)[i42]));
  Tensor t261;
  Tensor X75 = (batch2.inputs);
  (t261 = X75);
  Seq t262;
  (t262 = tensor_shape((t261.dims), (t261.rank)));
  int64_t batchsize2;
  (batchsize2 = ((t262.seq)[0]));
  Tensor t263;
  Tensor X76 = (batch2.inputs);
  (t263 = X76);
  Tensor outputs1;
  (outputs1 = nnEvalExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, network4, t263));
  int64_t batch_accuracy;
  {
    int64_t i43 = 0;
    int64_t acc23 = 0;
    while ((i43 < batchsize2)) {
      (acc23 = t246(batch2, outputs1, acc23, i43));
      (i43 = (i43 + 1));
    }
    (batch_accuracy = acc23);
  }
  {
    int64_t t264;
    (t264 = (acc22 + batch_accuracy));
    return t264;
  }
}
__host__ __device__ int64_t nnAccuracyDiscrete(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, char printStatus1, Rec2 network4, Seq2 batches) {
  char (*t265) = "\n";
  int64_t t266;
  (t266 = (batches.len));
  int64_t correct_guesses;
  {
    int64_t i44 = 0;
    int64_t acc24 = 0;
    while ((i44 < t266)) {
      (acc24 = t254(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, printStatus1, network4, batches, acc24, i44));
      (i44 = (i44 + 1));
    }
    (correct_guesses = acc24);
  }
  if ((printStatus1 == 1)) {
    printf("%s", t265);
  } else {
    ;
  }
  {
    int64_t t267;
    (t267 = correct_guesses);
    return t267;
  }
}
__host__ __device__ int64_t t268(int64_t acc25, Rec3 batch3) {
  Tensor t269;
  Tensor X77 = (batch3.inputs);
  (t269 = X77);
  Seq t270;
  (t270 = tensor_shape((t269.dims), (t269.rank)));
  int64_t t271;
  (t271 = ((t270.seq)[0]));
  {
    int64_t t272;
    (t272 = (acc25 + t271));
    return t272;
  }
}
__host__ __device__ int64_t foldl7(int64_t acc_init8, Seq2 s17) {
  int64_t acc26 = acc_init8;
  int64_t i45 = 0;
  while ((i45 < (s17.len))) {
    (acc26 = t268(acc26, ((s17.seq)[i45])));
    (i45 = (i45 + 1));
  }
  return acc26;
}
__host__ __device__ float nnAccuracyProportion(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, char printStatus2, Rec2 network5, Seq2 batches1) {
  int64_t correct_guesses1;
  (correct_guesses1 = nnAccuracyDiscrete(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, printStatus2, network5, batches1));
  int64_t datalength;
  (datalength = foldl7(0, batches1));
  float t273;
  (t273 = (( float ) correct_guesses1));
  float t274;
  (t274 = (( float ) datalength));
  {
    float t275;
    (t275 = (t273 / t274));
    return t275;
  }
}
__host__ __device__ void wrappedPrint(char (*s18)) {
  printf("%s", s18);
}
__host__ __device__ void t276(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, Rec4 params, Rec2 network6, int64_t rounds, Seq2 training_batches, float alpha1, float lambda1, int64_t batch_idx) {
  char (*t277) = "/";
  char (*t278) = "\rround ";
  char t279;
  char X78 = (params.printStatus);
  (t279 = X78);
  if ((t279 == 1)) {
    wrappedPrint(t278);
    int64_t t280;
    (t280 = (batch_idx + 1));
    float t281;
    (t281 = (( float ) t280));
    printf("%f", t281);
    wrappedPrint(t277);
    float t282;
    (t282 = (( float ) rounds));
    printf("%f", t282);
  } else {
    ;
  }
  Rec3 t283;
  (t283 = ((training_batches.seq)[batch_idx]));
  nnGradientDescentExn(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, network6, alpha1, lambda1, t283);
}
__host__ __device__ Rec5 t284(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, Rec4 params, Rec2 network6, int64_t rounds, Seq2 training_batches, Seq2 validation_batches, Rec5 acc27, int64_t epoch_idx) {
  Rec5 alloc;
  char (*t285) = "%\n";
  char (*t286) = "Computed accuracy: ";
  char (*t287) = "evalating performance...\n";
  char (*t288) = "\n";
  char (*t289) = "]\n";
  char (*t290) = "[lambda = ";
  char (*t291) = "]\n";
  char (*t292) = "[alpha = ";
  char (*t293) = "]\n";
  char (*t294) = "/";
  char (*t295) = "[Iteration ";
  int64_t epoch;
  (epoch = (epoch_idx + 1));
  float alpha1;
  float X79 = (acc27._0);
  (alpha1 = X79);
  float lambda1;
  float X80 = (acc27._1);
  (lambda1 = X80);
  char t296;
  char X81 = (params.printStatus);
  (t296 = X81);
  if ((t296 == 1)) {
    wrappedPrint(t295);
    float t297;
    (t297 = (( float ) epoch));
    printf("%f", t297);
    wrappedPrint(t294);
    int64_t t298;
    int64_t X82 = (params.epochs);
    (t298 = X82);
    float t299;
    (t299 = (( float ) t298));
    printf("%f", t299);
    printf("%s", t293);
    wrappedPrint(t292);
    printf("%f", alpha1);
    wrappedPrint(t291);
    wrappedPrint(t290);
    printf("%f", lambda1);
    wrappedPrint(t289);
  } else {
    ;
  }
  int64_t t300;
  (t300 = (training_batches.len));
  {
    int64_t i46 = 0;
    while ((i46 < t300)) {
      t276(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, params, network6, rounds, training_batches, alpha1, lambda1, i46);
      (i46 = (i46 + 1));
    }
  }
  wrappedPrint(t288);
  char t301;
  char X83 = (params.evaluateBetweenEpochs);
  (t301 = X83);
  if ((t301 == 1)) {
    char t302;
    char X84 = (params.printStatus);
    (t302 = X84);
    if ((t302 == 1)) {
      wrappedPrint(t287);
    } else {
      ;
    }
    char t303;
    char X85 = (params.printStatus);
    (t303 = X85);
    float accuracy;
    (accuracy = nnAccuracyProportion(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, t303, network6, validation_batches));
    char t304;
    char X86 = (params.printStatus);
    (t304 = X86);
    if ((t304 == 1)) {
      wrappedPrint(t286);
      float t305;
      (t305 = (accuracy * 100.));
      printf("%f", t305);
      wrappedPrint(t285);
    } else {
      ;
    }
  } else {
    ;
  }
  float t306;
  float X87 = (params.decay_alpha);
  (t306 = X87);
  float t307;
  (t307 = (1. - t306));
  float decayed_alpha;
  (decayed_alpha = (alpha1 * t307));
  float t308;
  float X88 = (params.decay_lambda);
  (t308 = X88);
  float t309;
  (t309 = (1. - t308));
  float decayed_lambda;
  (decayed_lambda = (lambda1 * t309));
  ((alloc._0) = decayed_alpha);
  ((alloc._1) = decayed_lambda);
  {
    Rec5 t310;
    (t310 = alloc);
    return t310;
  }
}
void cuda_wrap(int64_t nnCompType_FullyConnected, int64_t nnCompType_ReLU, int64_t nnCompType_SoftMax, int64_t nnLossfnType_CrossEntropyLoss, int64_t nnLossfnType_SoftMaxCrossEntropyLoss, Rec4 params, Rec2 network6, int64_t rounds, Seq2 training_batches, Seq2 validation_batches) {
  Rec5 t311;
  char (*t312) = "%\n";
  char (*t313) = "Computed accuracy: ";
  char (*t314) = "evalating performance...\n";
  char t315;
  char X89 = (params.evaluateBeforeFirstEpoch);
  (t315 = X89);
  if ((t315 == 1)) {
    char t316;
    char X90 = (params.printStatus);
    (t316 = X90);
    if ((t316 == 1)) {
      wrappedPrint(t314);
    } else {
      ;
    }
    char t317;
    char X91 = (params.printStatus);
    (t317 = X91);
    float accuracy1;
    (accuracy1 = nnAccuracyProportion(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, t317, network6, validation_batches));
    char t318;
    char X92 = (params.printStatus);
    (t318 = X92);
    if ((t318 == 1)) {
      wrappedPrint(t313);
      float t319;
      (t319 = (accuracy1 * 100.));
      printf("%f", t319);
      wrappedPrint(t312);
    } else {
      ;
    }
  } else {
    ;
  }
  float t320;
  float X93 = (params.init_lambda);
  (t320 = X93);
  float t321;
  float X94 = (params.init_alpha);
  (t321 = X94);
  ((t311._0) = t321);
  ((t311._1) = t320);
  int64_t t322;
  int64_t X95 = (params.epochs);
  (t322 = X95);
  Rec5 _8;
  {
    int64_t i47 = 0;
    Rec5 acc28 = t311;
    while ((i47 < t322)) {
      (acc28 = t284(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss, params, network6, rounds, training_batches, validation_batches, acc28, i47));
      (i47 = (i47 + 1));
    }
    (_8 = acc28);
  }
  ;
}
extern "C" void vv4F90aVQU5(value nnCompType_FullyConnected, value nnCompType_ReLU, value nnCompType_SoftMax, value nnLossfnType_CrossEntropyLoss, value nnLossfnType_SoftMaxCrossEntropyLoss, value params, value network6, value rounds, value training_batches, value validation_batches) {
  CAMLparam5(nnCompType_FullyConnected, nnCompType_ReLU, nnCompType_SoftMax, nnLossfnType_CrossEntropyLoss, nnLossfnType_SoftMaxCrossEntropyLoss);
  CAMLxparam5(params, network6, rounds, training_batches, validation_batches);
  // Creating cuBlas context
  cublasCreate(&_cublas_handle);
  GPU_UTILS_CHECK_CUDA_ERROR();

  int64_t tensor_count = 0;
  int64_t gpu_tmp = Long_val(nnCompType_FullyConnected);
  int64_t gpu_tmp1 = Long_val(nnCompType_ReLU);
  int64_t gpu_tmp2 = Long_val(nnCompType_SoftMax);
  int64_t gpu_tmp3 = Long_val(nnLossfnType_CrossEntropyLoss);
  int64_t gpu_tmp4 = Long_val(nnLossfnType_SoftMaxCrossEntropyLoss);
  Rec4 gpu_tmp5;
  int64_t cuda_rec_field = Long_val(Field(params, 0));
  ((gpu_tmp5.epochs) = cuda_rec_field);
  int64_t cuda_rec_field1 = Long_val(Field(params, 1));
  ((gpu_tmp5.batchsize) = cuda_rec_field1);
  float cuda_rec_field2 = Double_val(Field(params, 2));
  ((gpu_tmp5.init_alpha) = cuda_rec_field2);
  float cuda_rec_field3 = Double_val(Field(params, 3));
  ((gpu_tmp5.decay_alpha) = cuda_rec_field3);
  float cuda_rec_field4 = Double_val(Field(params, 4));
  ((gpu_tmp5.init_lambda) = cuda_rec_field4);
  char cuda_rec_field5 = Int_val(Field(params, 5));
  ((gpu_tmp5.printStatus) = cuda_rec_field5);
  float cuda_rec_field6 = Double_val(Field(params, 6));
  ((gpu_tmp5.decay_lambda) = cuda_rec_field6);
  char cuda_rec_field7 = Int_val(Field(params, 7));
  ((gpu_tmp5.evaluateBetweenEpochs) = cuda_rec_field7);
  char cuda_rec_field8 = Int_val(Field(params, 8));
  ((gpu_tmp5.evaluateBeforeFirstEpoch) = cuda_rec_field8);
  Rec2 gpu_tmp6;
  Rec1 cuda_rec_field9;
  int64_t cuda_rec_field10 = Long_val(Field(Field(network6, 0), 0));
  ((cuda_rec_field9.ty) = cuda_rec_field10);
  Tensor cuda_rec_field11;
  ((cuda_rec_field11.rank) = (Caml_ba_array_val(Field(Field(network6, 0), 1))->num_dims));
  if (((cuda_rec_field11.rank) > 3)) {
    printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field11.rank));
    exit(1);
  } else {
    
  }
  ((cuda_rec_field11.offset) = 0);
  ((cuda_rec_field11.id) = tensor_count);
  (tensor_count = (tensor_count + 1));
  int64_t i48 = 0;
  int64_t n20 = (sizeof(float));
  while ((i48 < (cuda_rec_field11.rank))) {
    (((cuda_rec_field11.dims)[i48]) = ((Caml_ba_array_val(Field(Field(network6, 0), 1))->dim)[i48]));
    (n20 = (n20 * ((Caml_ba_array_val(Field(Field(network6, 0), 1))->dim)[i48])));
    (i48 = (i48 + 1));
  }
  ((cuda_rec_field11.size) = n20);
  float (*t323);
  cudaMallocManaged((&t323), n20);
  GPU_UTILS_CHECK_CUDA_ERROR();
  double (*t_ocaml) = (( double (*) ) Caml_ba_data_val(Field(Field(network6, 0), 1)));
  int64_t i49 = 0;
  int64_t elems = (n20 / (sizeof(float)));
  while ((i49 < elems)) {
    ((t323[i49]) = (( float ) (t_ocaml[i49])));
    (i49 = (i49 + 1));
  }
  ((cuda_rec_field11.data) = t323);
  ((cuda_rec_field9.in_grads) = cuda_rec_field11);
  Tensor cuda_rec_field12;
  ((cuda_rec_field12.rank) = (Caml_ba_array_val(Field(Field(network6, 0), 2))->num_dims));
  if (((cuda_rec_field12.rank) > 3)) {
    printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field12.rank));
    exit(1);
  } else {
    
  }
  ((cuda_rec_field12.offset) = 0);
  ((cuda_rec_field12.id) = tensor_count);
  (tensor_count = (tensor_count + 1));
  int64_t i50 = 0;
  int64_t n21 = (sizeof(float));
  while ((i50 < (cuda_rec_field12.rank))) {
    (((cuda_rec_field12.dims)[i50]) = ((Caml_ba_array_val(Field(Field(network6, 0), 2))->dim)[i50]));
    (n21 = (n21 * ((Caml_ba_array_val(Field(Field(network6, 0), 2))->dim)[i50])));
    (i50 = (i50 + 1));
  }
  ((cuda_rec_field12.size) = n21);
  float (*t324);
  cudaMallocManaged((&t324), n21);
  GPU_UTILS_CHECK_CUDA_ERROR();
  double (*t_ocaml1) = (( double (*) ) Caml_ba_data_val(Field(Field(network6, 0), 2)));
  int64_t i51 = 0;
  int64_t elems1 = (n21 / (sizeof(float)));
  while ((i51 < elems1)) {
    ((t324[i51]) = (( float ) (t_ocaml1[i51])));
    (i51 = (i51 + 1));
  }
  ((cuda_rec_field12.data) = t324);
  ((cuda_rec_field9.out_bufs) = cuda_rec_field12);
  Tensor cuda_rec_field13;
  ((cuda_rec_field13.rank) = (Caml_ba_array_val(Field(Field(network6, 0), 3))->num_dims));
  if (((cuda_rec_field13.rank) > 3)) {
    printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field13.rank));
    exit(1);
  } else {
    
  }
  ((cuda_rec_field13.offset) = 0);
  ((cuda_rec_field13.id) = tensor_count);
  (tensor_count = (tensor_count + 1));
  int64_t i52 = 0;
  int64_t n22 = (sizeof(float));
  while ((i52 < (cuda_rec_field13.rank))) {
    (((cuda_rec_field13.dims)[i52]) = ((Caml_ba_array_val(Field(Field(network6, 0), 3))->dim)[i52]));
    (n22 = (n22 * ((Caml_ba_array_val(Field(Field(network6, 0), 3))->dim)[i52])));
    (i52 = (i52 + 1));
  }
  ((cuda_rec_field13.size) = n22);
  float (*t325);
  cudaMallocManaged((&t325), n22);
  GPU_UTILS_CHECK_CUDA_ERROR();
  double (*t_ocaml2) = (( double (*) ) Caml_ba_data_val(Field(Field(network6, 0), 3)));
  int64_t i53 = 0;
  int64_t elems2 = (n22 / (sizeof(float)));
  while ((i53 < elems2)) {
    ((t325[i53]) = (( float ) (t_ocaml2[i53])));
    (i53 = (i53 + 1));
  }
  ((cuda_rec_field13.data) = t325);
  ((cuda_rec_field9.softmax_bufs) = cuda_rec_field13);
  ((gpu_tmp6.lossfn) = cuda_rec_field9);
  Seq1 cuda_rec_field14;
  ((cuda_rec_field14.len) = Wosize_val(Field(network6, 1)));
  cudaMallocManaged((&(cuda_rec_field14.seq)), (Wosize_val(Field(network6, 1)) * (sizeof(Rec))));
  GPU_UTILS_CHECK_CUDA_ERROR();
  int64_t i54 = 0;
  while ((i54 < (cuda_rec_field14.len))) {
    Rec cuda_seq_temp;
    Tensor cuda_rec_field15;
    ((cuda_rec_field15.rank) = (Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 0))->num_dims));
    if (((cuda_rec_field15.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field15.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field15.offset) = 0);
    ((cuda_rec_field15.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i55 = 0;
    int64_t n23 = (sizeof(float));
    while ((i55 < (cuda_rec_field15.rank))) {
      (((cuda_rec_field15.dims)[i55]) = ((Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 0))->dim)[i55]));
      (n23 = (n23 * ((Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 0))->dim)[i55])));
      (i55 = (i55 + 1));
    }
    ((cuda_rec_field15.size) = n23);
    float (*t326);
    cudaMallocManaged((&t326), n23);
    GPU_UTILS_CHECK_CUDA_ERROR();
    double (*t_ocaml3) = (( double (*) ) Caml_ba_data_val(Field(Field(Field(network6, 1), i54), 0)));
    int64_t i56 = 0;
    int64_t elems3 = (n23 / (sizeof(float)));
    while ((i56 < elems3)) {
      ((t326[i56]) = (( float ) (t_ocaml3[i56])));
      (i56 = (i56 + 1));
    }
    ((cuda_rec_field15.data) = t326);
    ((cuda_seq_temp.b) = cuda_rec_field15);
    Tensor cuda_rec_field16;
    ((cuda_rec_field16.rank) = (Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 1))->num_dims));
    if (((cuda_rec_field16.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field16.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field16.offset) = 0);
    ((cuda_rec_field16.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i57 = 0;
    int64_t n24 = (sizeof(float));
    while ((i57 < (cuda_rec_field16.rank))) {
      (((cuda_rec_field16.dims)[i57]) = ((Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 1))->dim)[i57]));
      (n24 = (n24 * ((Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 1))->dim)[i57])));
      (i57 = (i57 + 1));
    }
    ((cuda_rec_field16.size) = n24);
    float (*t327);
    cudaMallocManaged((&t327), n24);
    GPU_UTILS_CHECK_CUDA_ERROR();
    double (*t_ocaml4) = (( double (*) ) Caml_ba_data_val(Field(Field(Field(network6, 1), i54), 1)));
    int64_t i58 = 0;
    int64_t elems4 = (n24 / (sizeof(float)));
    while ((i58 < elems4)) {
      ((t327[i58]) = (( float ) (t_ocaml4[i58])));
      (i58 = (i58 + 1));
    }
    ((cuda_rec_field16.data) = t327);
    ((cuda_seq_temp.w) = cuda_rec_field16);
    int64_t cuda_rec_field17 = Long_val(Field(Field(Field(network6, 1), i54), 2));
    ((cuda_seq_temp.ty) = cuda_rec_field17);
    Tensor cuda_rec_field18;
    ((cuda_rec_field18.rank) = (Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 3))->num_dims));
    if (((cuda_rec_field18.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field18.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field18.offset) = 0);
    ((cuda_rec_field18.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i59 = 0;
    int64_t n25 = (sizeof(float));
    while ((i59 < (cuda_rec_field18.rank))) {
      (((cuda_rec_field18.dims)[i59]) = ((Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 3))->dim)[i59]));
      (n25 = (n25 * ((Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 3))->dim)[i59])));
      (i59 = (i59 + 1));
    }
    ((cuda_rec_field18.size) = n25);
    float (*t328);
    cudaMallocManaged((&t328), n25);
    GPU_UTILS_CHECK_CUDA_ERROR();
    double (*t_ocaml5) = (( double (*) ) Caml_ba_data_val(Field(Field(Field(network6, 1), i54), 3)));
    int64_t i60 = 0;
    int64_t elems5 = (n25 / (sizeof(float)));
    while ((i60 < elems5)) {
      ((t328[i60]) = (( float ) (t_ocaml5[i60])));
      (i60 = (i60 + 1));
    }
    ((cuda_rec_field18.data) = t328);
    ((cuda_seq_temp.b_grads) = cuda_rec_field18);
    Tensor cuda_rec_field19;
    ((cuda_rec_field19.rank) = (Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 4))->num_dims));
    if (((cuda_rec_field19.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field19.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field19.offset) = 0);
    ((cuda_rec_field19.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i61 = 0;
    int64_t n26 = (sizeof(float));
    while ((i61 < (cuda_rec_field19.rank))) {
      (((cuda_rec_field19.dims)[i61]) = ((Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 4))->dim)[i61]));
      (n26 = (n26 * ((Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 4))->dim)[i61])));
      (i61 = (i61 + 1));
    }
    ((cuda_rec_field19.size) = n26);
    float (*t329);
    cudaMallocManaged((&t329), n26);
    GPU_UTILS_CHECK_CUDA_ERROR();
    double (*t_ocaml6) = (( double (*) ) Caml_ba_data_val(Field(Field(Field(network6, 1), i54), 4)));
    int64_t i62 = 0;
    int64_t elems6 = (n26 / (sizeof(float)));
    while ((i62 < elems6)) {
      ((t329[i62]) = (( float ) (t_ocaml6[i62])));
      (i62 = (i62 + 1));
    }
    ((cuda_rec_field19.data) = t329);
    ((cuda_seq_temp.w_grads) = cuda_rec_field19);
    Tensor cuda_rec_field20;
    ((cuda_rec_field20.rank) = (Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 5))->num_dims));
    if (((cuda_rec_field20.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field20.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field20.offset) = 0);
    ((cuda_rec_field20.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i63 = 0;
    int64_t n27 = (sizeof(float));
    while ((i63 < (cuda_rec_field20.rank))) {
      (((cuda_rec_field20.dims)[i63]) = ((Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 5))->dim)[i63]));
      (n27 = (n27 * ((Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 5))->dim)[i63])));
      (i63 = (i63 + 1));
    }
    ((cuda_rec_field20.size) = n27);
    float (*t330);
    cudaMallocManaged((&t330), n27);
    GPU_UTILS_CHECK_CUDA_ERROR();
    double (*t_ocaml7) = (( double (*) ) Caml_ba_data_val(Field(Field(Field(network6, 1), i54), 5)));
    int64_t i64 = 0;
    int64_t elems7 = (n27 / (sizeof(float)));
    while ((i64 < elems7)) {
      ((t330[i64]) = (( float ) (t_ocaml7[i64])));
      (i64 = (i64 + 1));
    }
    ((cuda_rec_field20.data) = t330);
    ((cuda_seq_temp.in_grads) = cuda_rec_field20);
    Tensor cuda_rec_field21;
    ((cuda_rec_field21.rank) = (Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 6))->num_dims));
    if (((cuda_rec_field21.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field21.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field21.offset) = 0);
    ((cuda_rec_field21.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i65 = 0;
    int64_t n28 = (sizeof(float));
    while ((i65 < (cuda_rec_field21.rank))) {
      (((cuda_rec_field21.dims)[i65]) = ((Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 6))->dim)[i65]));
      (n28 = (n28 * ((Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 6))->dim)[i65])));
      (i65 = (i65 + 1));
    }
    ((cuda_rec_field21.size) = n28);
    float (*t331);
    cudaMallocManaged((&t331), n28);
    GPU_UTILS_CHECK_CUDA_ERROR();
    double (*t_ocaml8) = (( double (*) ) Caml_ba_data_val(Field(Field(Field(network6, 1), i54), 6)));
    int64_t i66 = 0;
    int64_t elems8 = (n28 / (sizeof(float)));
    while ((i66 < elems8)) {
      ((t331[i66]) = (( float ) (t_ocaml8[i66])));
      (i66 = (i66 + 1));
    }
    ((cuda_rec_field21.data) = t331);
    ((cuda_seq_temp.out_bufs) = cuda_rec_field21);
    Tensor cuda_rec_field22;
    ((cuda_rec_field22.rank) = (Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 7))->num_dims));
    if (((cuda_rec_field22.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field22.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field22.offset) = 0);
    ((cuda_rec_field22.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i67 = 0;
    int64_t n29 = (sizeof(float));
    while ((i67 < (cuda_rec_field22.rank))) {
      (((cuda_rec_field22.dims)[i67]) = ((Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 7))->dim)[i67]));
      (n29 = (n29 * ((Caml_ba_array_val(Field(Field(Field(network6, 1), i54), 7))->dim)[i67])));
      (i67 = (i67 + 1));
    }
    ((cuda_rec_field22.size) = n29);
    float (*t332);
    cudaMallocManaged((&t332), n29);
    GPU_UTILS_CHECK_CUDA_ERROR();
    double (*t_ocaml9) = (( double (*) ) Caml_ba_data_val(Field(Field(Field(network6, 1), i54), 7)));
    int64_t i68 = 0;
    int64_t elems9 = (n29 / (sizeof(float)));
    while ((i68 < elems9)) {
      ((t332[i68]) = (( float ) (t_ocaml9[i68])));
      (i68 = (i68 + 1));
    }
    ((cuda_rec_field22.data) = t332);
    ((cuda_seq_temp.softmax_bufs) = cuda_rec_field22);
    (((cuda_rec_field14.seq)[i54]) = cuda_seq_temp);
    (i54 = (i54 + 1));
  }
  ((gpu_tmp6.components) = cuda_rec_field14);
  int64_t gpu_tmp7 = Long_val(rounds);
  Seq2 gpu_tmp8;
  ((gpu_tmp8.len) = Wosize_val(training_batches));
  cudaMallocManaged((&(gpu_tmp8.seq)), (Wosize_val(training_batches) * (sizeof(Rec3))));
  GPU_UTILS_CHECK_CUDA_ERROR();
  int64_t i69 = 0;
  while ((i69 < (gpu_tmp8.len))) {
    Rec3 cuda_seq_temp1;
    Tensor cuda_rec_field23;
    ((cuda_rec_field23.rank) = (Caml_ba_array_val(Field(Field(training_batches, i69), 0))->num_dims));
    if (((cuda_rec_field23.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field23.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field23.offset) = 0);
    ((cuda_rec_field23.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i70 = 0;
    int64_t n30 = (sizeof(float));
    while ((i70 < (cuda_rec_field23.rank))) {
      (((cuda_rec_field23.dims)[i70]) = ((Caml_ba_array_val(Field(Field(training_batches, i69), 0))->dim)[i70]));
      (n30 = (n30 * ((Caml_ba_array_val(Field(Field(training_batches, i69), 0))->dim)[i70])));
      (i70 = (i70 + 1));
    }
    ((cuda_rec_field23.size) = n30);
    float (*t333);
    cudaMallocManaged((&t333), n30);
    GPU_UTILS_CHECK_CUDA_ERROR();
    double (*t_ocaml10) = (( double (*) ) Caml_ba_data_val(Field(Field(training_batches, i69), 0)));
    int64_t i71 = 0;
    int64_t elems10 = (n30 / (sizeof(float)));
    while ((i71 < elems10)) {
      ((t333[i71]) = (( float ) (t_ocaml10[i71])));
      (i71 = (i71 + 1));
    }
    ((cuda_rec_field23.data) = t333);
    ((cuda_seq_temp1.inputs) = cuda_rec_field23);
    Tensor1 cuda_rec_field24;
    ((cuda_rec_field24.rank) = (Caml_ba_array_val(Field(Field(training_batches, i69), 1))->num_dims));
    if (((cuda_rec_field24.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field24.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field24.offset) = 0);
    ((cuda_rec_field24.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i72 = 0;
    int64_t n31 = (sizeof(int64_t));
    while ((i72 < (cuda_rec_field24.rank))) {
      (((cuda_rec_field24.dims)[i72]) = ((Caml_ba_array_val(Field(Field(training_batches, i69), 1))->dim)[i72]));
      (n31 = (n31 * ((Caml_ba_array_val(Field(Field(training_batches, i69), 1))->dim)[i72])));
      (i72 = (i72 + 1));
    }
    ((cuda_rec_field24.size) = n31);
    int64_t (*t334);
    cudaMallocManaged((&t334), n31);
    GPU_UTILS_CHECK_CUDA_ERROR();
    int64_t (*t_ocaml11) = (( int64_t (*) ) Caml_ba_data_val(Field(Field(training_batches, i69), 1)));
    int64_t i73 = 0;
    int64_t elems11 = (n31 / (sizeof(int64_t)));
    while ((i73 < elems11)) {
      ((t334[i73]) = (( int64_t ) (t_ocaml11[i73])));
      (i73 = (i73 + 1));
    }
    ((cuda_rec_field24.data) = t334);
    ((cuda_seq_temp1.correct_linear_outidxs) = cuda_rec_field24);
    (((gpu_tmp8.seq)[i69]) = cuda_seq_temp1);
    (i69 = (i69 + 1));
  }
  Seq2 gpu_tmp9;
  ((gpu_tmp9.len) = Wosize_val(validation_batches));
  cudaMallocManaged((&(gpu_tmp9.seq)), (Wosize_val(validation_batches) * (sizeof(Rec3))));
  GPU_UTILS_CHECK_CUDA_ERROR();
  int64_t i74 = 0;
  while ((i74 < (gpu_tmp9.len))) {
    Rec3 cuda_seq_temp2;
    Tensor cuda_rec_field25;
    ((cuda_rec_field25.rank) = (Caml_ba_array_val(Field(Field(validation_batches, i74), 0))->num_dims));
    if (((cuda_rec_field25.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field25.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field25.offset) = 0);
    ((cuda_rec_field25.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i75 = 0;
    int64_t n32 = (sizeof(float));
    while ((i75 < (cuda_rec_field25.rank))) {
      (((cuda_rec_field25.dims)[i75]) = ((Caml_ba_array_val(Field(Field(validation_batches, i74), 0))->dim)[i75]));
      (n32 = (n32 * ((Caml_ba_array_val(Field(Field(validation_batches, i74), 0))->dim)[i75])));
      (i75 = (i75 + 1));
    }
    ((cuda_rec_field25.size) = n32);
    float (*t335);
    cudaMallocManaged((&t335), n32);
    GPU_UTILS_CHECK_CUDA_ERROR();
    double (*t_ocaml12) = (( double (*) ) Caml_ba_data_val(Field(Field(validation_batches, i74), 0)));
    int64_t i76 = 0;
    int64_t elems12 = (n32 / (sizeof(float)));
    while ((i76 < elems12)) {
      ((t335[i76]) = (( float ) (t_ocaml12[i76])));
      (i76 = (i76 + 1));
    }
    ((cuda_rec_field25.data) = t335);
    ((cuda_seq_temp2.inputs) = cuda_rec_field25);
    Tensor1 cuda_rec_field26;
    ((cuda_rec_field26.rank) = (Caml_ba_array_val(Field(Field(validation_batches, i74), 1))->num_dims));
    if (((cuda_rec_field26.rank) > 3)) {
      printf("Tensors with rank at most 3 are supported, found rank %ld\n", (cuda_rec_field26.rank));
      exit(1);
    } else {
      
    }
    ((cuda_rec_field26.offset) = 0);
    ((cuda_rec_field26.id) = tensor_count);
    (tensor_count = (tensor_count + 1));
    int64_t i77 = 0;
    int64_t n33 = (sizeof(int64_t));
    while ((i77 < (cuda_rec_field26.rank))) {
      (((cuda_rec_field26.dims)[i77]) = ((Caml_ba_array_val(Field(Field(validation_batches, i74), 1))->dim)[i77]));
      (n33 = (n33 * ((Caml_ba_array_val(Field(Field(validation_batches, i74), 1))->dim)[i77])));
      (i77 = (i77 + 1));
    }
    ((cuda_rec_field26.size) = n33);
    int64_t (*t336);
    cudaMallocManaged((&t336), n33);
    GPU_UTILS_CHECK_CUDA_ERROR();
    int64_t (*t_ocaml13) = (( int64_t (*) ) Caml_ba_data_val(Field(Field(validation_batches, i74), 1)));
    int64_t i78 = 0;
    int64_t elems13 = (n33 / (sizeof(int64_t)));
    while ((i78 < elems13)) {
      ((t336[i78]) = (( int64_t ) (t_ocaml13[i78])));
      (i78 = (i78 + 1));
    }
    ((cuda_rec_field26.data) = t336);
    ((cuda_seq_temp2.correct_linear_outidxs) = cuda_rec_field26);
    (((gpu_tmp9.seq)[i74]) = cuda_seq_temp2);
    (i74 = (i74 + 1));
  }
  cudaMallocManaged((&t_state), (tensor_count * (sizeof(enum tensor_state))));
  GPU_UTILS_CHECK_CUDA_ERROR();
  ((t_state[(((gpu_tmp6.lossfn).in_grads).id)]) = STATE_OK);
  ((t_state[(((gpu_tmp6.lossfn).out_bufs).id)]) = STATE_OK);
  ((t_state[(((gpu_tmp6.lossfn).softmax_bufs).id)]) = STATE_OK);
  int64_t i79 = 0;
  while ((i79 < ((gpu_tmp6.components).len))) {
    ((t_state[(((((gpu_tmp6.components).seq)[i79]).b).id)]) = STATE_OK);
    ((t_state[(((((gpu_tmp6.components).seq)[i79]).w).id)]) = STATE_OK);
    ((t_state[(((((gpu_tmp6.components).seq)[i79]).b_grads).id)]) = STATE_OK);
    ((t_state[(((((gpu_tmp6.components).seq)[i79]).w_grads).id)]) = STATE_OK);
    ((t_state[(((((gpu_tmp6.components).seq)[i79]).in_grads).id)]) = STATE_OK);
    ((t_state[(((((gpu_tmp6.components).seq)[i79]).out_bufs).id)]) = STATE_OK);
    ((t_state[(((((gpu_tmp6.components).seq)[i79]).softmax_bufs).id)]) = STATE_OK);
    (i79 = (i79 + 1));
  }
  int64_t i80 = 0;
  while ((i80 < (gpu_tmp8.len))) {
    ((t_state[((((gpu_tmp8.seq)[i80]).inputs).id)]) = STATE_OK);
    ((t_state[((((gpu_tmp8.seq)[i80]).correct_linear_outidxs).id)]) = STATE_OK);
    (i80 = (i80 + 1));
  }
  int64_t i81 = 0;
  while ((i81 < (gpu_tmp9.len))) {
    ((t_state[((((gpu_tmp9.seq)[i81]).inputs).id)]) = STATE_OK);
    ((t_state[((((gpu_tmp9.seq)[i81]).correct_linear_outidxs).id)]) = STATE_OK);
    (i81 = (i81 + 1));
  }
  cuda_wrap(gpu_tmp, gpu_tmp1, gpu_tmp2, gpu_tmp3, gpu_tmp4, gpu_tmp5, gpu_tmp6, gpu_tmp7, gpu_tmp8, gpu_tmp9);
  if (((t_state[(((gpu_tmp6.lossfn).in_grads).id)]) != STATE_OK)) {
    double (*t_ocaml14) = (( double (*) ) Caml_ba_data_val(Field(Field(network6, 0), 1)));
    int64_t i82 = 0;
    int64_t elems14 = ((((gpu_tmp6.lossfn).in_grads).size) / (sizeof(float)));
    while ((i82 < elems14)) {
      ((t_ocaml14[i82]) = (( float ) ((((gpu_tmp6.lossfn).in_grads).data)[i82])));
      (i82 = (i82 + 1));
    }
  } else {
    
  }
  if (((t_state[(((gpu_tmp6.lossfn).in_grads).id)]) != STATE_RETURNED)) {
    cudaFree((((gpu_tmp6.lossfn).in_grads).data));
    GPU_UTILS_CHECK_CUDA_ERROR();
  } else {
    
  }
  if (((t_state[(((gpu_tmp6.lossfn).out_bufs).id)]) != STATE_OK)) {
    double (*t_ocaml15) = (( double (*) ) Caml_ba_data_val(Field(Field(network6, 0), 2)));
    int64_t i83 = 0;
    int64_t elems15 = ((((gpu_tmp6.lossfn).out_bufs).size) / (sizeof(float)));
    while ((i83 < elems15)) {
      ((t_ocaml15[i83]) = (( float ) ((((gpu_tmp6.lossfn).out_bufs).data)[i83])));
      (i83 = (i83 + 1));
    }
  } else {
    
  }
  if (((t_state[(((gpu_tmp6.lossfn).out_bufs).id)]) != STATE_RETURNED)) {
    cudaFree((((gpu_tmp6.lossfn).out_bufs).data));
    GPU_UTILS_CHECK_CUDA_ERROR();
  } else {
    
  }
  if (((t_state[(((gpu_tmp6.lossfn).softmax_bufs).id)]) != STATE_OK)) {
    double (*t_ocaml16) = (( double (*) ) Caml_ba_data_val(Field(Field(network6, 0), 3)));
    int64_t i84 = 0;
    int64_t elems16 = ((((gpu_tmp6.lossfn).softmax_bufs).size) / (sizeof(float)));
    while ((i84 < elems16)) {
      ((t_ocaml16[i84]) = (( float ) ((((gpu_tmp6.lossfn).softmax_bufs).data)[i84])));
      (i84 = (i84 + 1));
    }
  } else {
    
  }
  if (((t_state[(((gpu_tmp6.lossfn).softmax_bufs).id)]) != STATE_RETURNED)) {
    cudaFree((((gpu_tmp6.lossfn).softmax_bufs).data));
    GPU_UTILS_CHECK_CUDA_ERROR();
  } else {
    
  }
  int64_t i85 = 0;
  while ((i85 < ((gpu_tmp6.components).len))) {
    if (((t_state[(((((gpu_tmp6.components).seq)[i85]).b).id)]) != STATE_OK)) {
      double (*t_ocaml17) = (( double (*) ) Caml_ba_data_val(Field(Field(Field(network6, 1), i85), 0)));
      int64_t i86 = 0;
      int64_t elems17 = ((((((gpu_tmp6.components).seq)[i85]).b).size) / (sizeof(float)));
      while ((i86 < elems17)) {
        ((t_ocaml17[i86]) = (( float ) ((((((gpu_tmp6.components).seq)[i85]).b).data)[i86])));
        (i86 = (i86 + 1));
      }
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i85]).b).id)]) != STATE_RETURNED)) {
      cudaFree((((((gpu_tmp6.components).seq)[i85]).b).data));
      GPU_UTILS_CHECK_CUDA_ERROR();
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i85]).w).id)]) != STATE_OK)) {
      double (*t_ocaml18) = (( double (*) ) Caml_ba_data_val(Field(Field(Field(network6, 1), i85), 1)));
      int64_t i87 = 0;
      int64_t elems18 = ((((((gpu_tmp6.components).seq)[i85]).w).size) / (sizeof(float)));
      while ((i87 < elems18)) {
        ((t_ocaml18[i87]) = (( float ) ((((((gpu_tmp6.components).seq)[i85]).w).data)[i87])));
        (i87 = (i87 + 1));
      }
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i85]).w).id)]) != STATE_RETURNED)) {
      cudaFree((((((gpu_tmp6.components).seq)[i85]).w).data));
      GPU_UTILS_CHECK_CUDA_ERROR();
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i85]).b_grads).id)]) != STATE_OK)) {
      double (*t_ocaml19) = (( double (*) ) Caml_ba_data_val(Field(Field(Field(network6, 1), i85), 3)));
      int64_t i88 = 0;
      int64_t elems19 = ((((((gpu_tmp6.components).seq)[i85]).b_grads).size) / (sizeof(float)));
      while ((i88 < elems19)) {
        ((t_ocaml19[i88]) = (( float ) ((((((gpu_tmp6.components).seq)[i85]).b_grads).data)[i88])));
        (i88 = (i88 + 1));
      }
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i85]).b_grads).id)]) != STATE_RETURNED)) {
      cudaFree((((((gpu_tmp6.components).seq)[i85]).b_grads).data));
      GPU_UTILS_CHECK_CUDA_ERROR();
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i85]).w_grads).id)]) != STATE_OK)) {
      double (*t_ocaml20) = (( double (*) ) Caml_ba_data_val(Field(Field(Field(network6, 1), i85), 4)));
      int64_t i89 = 0;
      int64_t elems20 = ((((((gpu_tmp6.components).seq)[i85]).w_grads).size) / (sizeof(float)));
      while ((i89 < elems20)) {
        ((t_ocaml20[i89]) = (( float ) ((((((gpu_tmp6.components).seq)[i85]).w_grads).data)[i89])));
        (i89 = (i89 + 1));
      }
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i85]).w_grads).id)]) != STATE_RETURNED)) {
      cudaFree((((((gpu_tmp6.components).seq)[i85]).w_grads).data));
      GPU_UTILS_CHECK_CUDA_ERROR();
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i85]).in_grads).id)]) != STATE_OK)) {
      double (*t_ocaml21) = (( double (*) ) Caml_ba_data_val(Field(Field(Field(network6, 1), i85), 5)));
      int64_t i90 = 0;
      int64_t elems21 = ((((((gpu_tmp6.components).seq)[i85]).in_grads).size) / (sizeof(float)));
      while ((i90 < elems21)) {
        ((t_ocaml21[i90]) = (( float ) ((((((gpu_tmp6.components).seq)[i85]).in_grads).data)[i90])));
        (i90 = (i90 + 1));
      }
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i85]).in_grads).id)]) != STATE_RETURNED)) {
      cudaFree((((((gpu_tmp6.components).seq)[i85]).in_grads).data));
      GPU_UTILS_CHECK_CUDA_ERROR();
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i85]).out_bufs).id)]) != STATE_OK)) {
      double (*t_ocaml22) = (( double (*) ) Caml_ba_data_val(Field(Field(Field(network6, 1), i85), 6)));
      int64_t i91 = 0;
      int64_t elems22 = ((((((gpu_tmp6.components).seq)[i85]).out_bufs).size) / (sizeof(float)));
      while ((i91 < elems22)) {
        ((t_ocaml22[i91]) = (( float ) ((((((gpu_tmp6.components).seq)[i85]).out_bufs).data)[i91])));
        (i91 = (i91 + 1));
      }
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i85]).out_bufs).id)]) != STATE_RETURNED)) {
      cudaFree((((((gpu_tmp6.components).seq)[i85]).out_bufs).data));
      GPU_UTILS_CHECK_CUDA_ERROR();
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i85]).softmax_bufs).id)]) != STATE_OK)) {
      double (*t_ocaml23) = (( double (*) ) Caml_ba_data_val(Field(Field(Field(network6, 1), i85), 7)));
      int64_t i92 = 0;
      int64_t elems23 = ((((((gpu_tmp6.components).seq)[i85]).softmax_bufs).size) / (sizeof(float)));
      while ((i92 < elems23)) {
        ((t_ocaml23[i92]) = (( float ) ((((((gpu_tmp6.components).seq)[i85]).softmax_bufs).data)[i92])));
        (i92 = (i92 + 1));
      }
    } else {
      
    }
    if (((t_state[(((((gpu_tmp6.components).seq)[i85]).softmax_bufs).id)]) != STATE_RETURNED)) {
      cudaFree((((((gpu_tmp6.components).seq)[i85]).softmax_bufs).data));
      GPU_UTILS_CHECK_CUDA_ERROR();
    } else {
      
    }
    (i85 = (i85 + 1));
  }
  cudaFree(((gpu_tmp6.components).seq));
  GPU_UTILS_CHECK_CUDA_ERROR();
  int64_t i93 = 0;
  while ((i93 < (gpu_tmp8.len))) {
    if (((t_state[((((gpu_tmp8.seq)[i93]).inputs).id)]) != STATE_OK)) {
      double (*t_ocaml24) = (( double (*) ) Caml_ba_data_val(Field(Field(training_batches, i93), 0)));
      int64_t i94 = 0;
      int64_t elems24 = (((((gpu_tmp8.seq)[i93]).inputs).size) / (sizeof(float)));
      while ((i94 < elems24)) {
        ((t_ocaml24[i94]) = (( float ) (((((gpu_tmp8.seq)[i93]).inputs).data)[i94])));
        (i94 = (i94 + 1));
      }
    } else {
      
    }
    if (((t_state[((((gpu_tmp8.seq)[i93]).inputs).id)]) != STATE_RETURNED)) {
      cudaFree(((((gpu_tmp8.seq)[i93]).inputs).data));
      GPU_UTILS_CHECK_CUDA_ERROR();
    } else {
      
    }
    if (((t_state[((((gpu_tmp8.seq)[i93]).correct_linear_outidxs).id)]) != STATE_OK)) {
      int64_t (*t_ocaml25) = (( int64_t (*) ) Caml_ba_data_val(Field(Field(training_batches, i93), 1)));
      int64_t i95 = 0;
      int64_t elems25 = (((((gpu_tmp8.seq)[i93]).correct_linear_outidxs).size) / (sizeof(int64_t)));
      while ((i95 < elems25)) {
        ((t_ocaml25[i95]) = (( int64_t ) (((((gpu_tmp8.seq)[i93]).correct_linear_outidxs).data)[i95])));
        (i95 = (i95 + 1));
      }
    } else {
      
    }
    if (((t_state[((((gpu_tmp8.seq)[i93]).correct_linear_outidxs).id)]) != STATE_RETURNED)) {
      cudaFree(((((gpu_tmp8.seq)[i93]).correct_linear_outidxs).data));
      GPU_UTILS_CHECK_CUDA_ERROR();
    } else {
      
    }
    (i93 = (i93 + 1));
  }
  cudaFree((gpu_tmp8.seq));
  GPU_UTILS_CHECK_CUDA_ERROR();
  int64_t i96 = 0;
  while ((i96 < (gpu_tmp9.len))) {
    if (((t_state[((((gpu_tmp9.seq)[i96]).inputs).id)]) != STATE_OK)) {
      double (*t_ocaml26) = (( double (*) ) Caml_ba_data_val(Field(Field(validation_batches, i96), 0)));
      int64_t i97 = 0;
      int64_t elems26 = (((((gpu_tmp9.seq)[i96]).inputs).size) / (sizeof(float)));
      while ((i97 < elems26)) {
        ((t_ocaml26[i97]) = (( float ) (((((gpu_tmp9.seq)[i96]).inputs).data)[i97])));
        (i97 = (i97 + 1));
      }
    } else {
      
    }
    if (((t_state[((((gpu_tmp9.seq)[i96]).inputs).id)]) != STATE_RETURNED)) {
      cudaFree(((((gpu_tmp9.seq)[i96]).inputs).data));
      GPU_UTILS_CHECK_CUDA_ERROR();
    } else {
      
    }
    if (((t_state[((((gpu_tmp9.seq)[i96]).correct_linear_outidxs).id)]) != STATE_OK)) {
      int64_t (*t_ocaml27) = (( int64_t (*) ) Caml_ba_data_val(Field(Field(validation_batches, i96), 1)));
      int64_t i98 = 0;
      int64_t elems27 = (((((gpu_tmp9.seq)[i96]).correct_linear_outidxs).size) / (sizeof(int64_t)));
      while ((i98 < elems27)) {
        ((t_ocaml27[i98]) = (( int64_t ) (((((gpu_tmp9.seq)[i96]).correct_linear_outidxs).data)[i98])));
        (i98 = (i98 + 1));
      }
    } else {
      
    }
    if (((t_state[((((gpu_tmp9.seq)[i96]).correct_linear_outidxs).id)]) != STATE_RETURNED)) {
      cudaFree(((((gpu_tmp9.seq)[i96]).correct_linear_outidxs).data));
      GPU_UTILS_CHECK_CUDA_ERROR();
    } else {
      
    }
    (i96 = (i96 + 1));
  }
  cudaFree((gpu_tmp9.seq));
  GPU_UTILS_CHECK_CUDA_ERROR();
  cudaFree(t_state);
  GPU_UTILS_CHECK_CUDA_ERROR();
  cublasDestroy(_cublas_handle);
  GPU_UTILS_CHECK_CUDA_ERROR();
  CAMLreturn0;
}
extern "C" void vAiCRgHg0yi(value (*args), int argc) {
  return vv4F90aVQU5((args[0]), (args[1]), (args[2]), (args[3]), (args[4]), (args[5]), (args[6]), (args[7]), (args[8]), (args[9]));
}