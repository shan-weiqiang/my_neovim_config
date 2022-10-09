#include <iostream>
#include <vector>

void f1() {
  int b = 8;
  double c = 9.4;
  std::cout << b + c << std::endl;
  std::cout << "test\n" << std::endl;
}
void f2() { f1(); }
void f3() { f2(); }
void f4() { f3(); }

void myfunc() { f4(); }

int main() { myfunc(); }
