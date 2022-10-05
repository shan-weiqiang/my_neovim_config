#include <iostream>
#include <vector>

void f1() {}
void f2() { f1(); }
void f3() { f2(); }
void f4() { f3(); }

void myfunc() { f4(); }

int main() { myfunc(); }

class myclass{
	public:
	void public_f(){
		std::cout << "this is a public func\n";
	}

	private:

	std::vector<double> mytable = {12,34,54};
};
