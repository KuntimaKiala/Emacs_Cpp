#include <iostream>
#include "constant.h"

void func() ;
int main(){
  func() ;
  return 0;
}

void func() {

  std::cout << constants::pi << "\n";

}
