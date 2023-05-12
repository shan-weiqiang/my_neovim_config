#include "math/math.h"
#include <iostream>
#include <vector>
namespace mynamespace {
void f1() {
  double b = 8;
  double c = calculate_root(b);
  c = caculate_abs(c);
  std::cout << b + c << std::endl;
  std::cout << "test\n" << std::endl;
}
void f2() { f1(); }
void f3() { f2(); }
void f4() { f3(); }

void myfunc() { f4(); }
} // namespace mynamespace

int main() { mynamespace::myfunc(); }
