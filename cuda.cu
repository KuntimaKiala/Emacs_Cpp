#include <stdio.h>
#include "/home/kuntima/workspace/github/Emacs_Cpp/constant.h"
#include <string>
#define N 3


__device__ void func(float val){
  val = val/2 ;
  printf("pi/2 = %.9f\n",val) ;
}

__global__ void kernel(const float* float_ptr, const float value){
  
  float_ptr = &value ;
  func(*float_ptr) ;
}

int main(void) {
  
  float * pi ;
  cudaMalloc(&pi , sizeof(float)) ;
  kernel<<<1,1>>>(pi, constants::pi);
  cudaFree(pi);
  return 0 ;
}
