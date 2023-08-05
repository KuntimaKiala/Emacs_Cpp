#include <iostream>
#include "constant.h"

void func() ;
int main(){
  func() ;
  return 0;
}

void func() {

  [[maybe_unused]] const float* g  = &(constants::g) ;
  std::cout << constants::pi << "\n";
  std::cout << *g << "\n";

}
