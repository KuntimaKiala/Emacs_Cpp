#include <iostream>
#include <stdio.h>
#include "/home/kuntima/workspace/github/Emacs_Cpp/constant.h"
#define N 3


__device__ void func(float val){
  val = val + val ;
  printf("%f\n",val) ;
}

__global__ void kernel(const float* pt, const float value){
  
  pt = &value ;
  func(*pt) ;
}

int main(void) {
  
  
  float * pi ;
  cudaMalloc((void **)&pi , sizeof(float)) ;
  
  kernel<<<1,1>>>(pi, constants::pi);
  cudaFree(pi);
  return 0 ;
}
