#include "math/math.h"
#include <iostream>
#include <vector>
#define SOME_CONSTN 1;
using namespace std;
namespace mynamespace {
void f1() {
  double b = 8;
  double c = calculate_root(b);
  c = caculate_abs(c);
  std::cout << b + c << std::endl;
  cout << "test\n" << std::endl;
}
void f2() { f1(); }
void f3() { f2(); }
void f4() { f3(); }

void myfunc() { f4(); }
} // namespace mynamespace

class Myclass {
  const std::string name = "Tome";
  static double d;
};

int main() {
  mynamespace::myfunc();
  if (true) {

    return 0;
  } else {
    return 1;
  }
}
