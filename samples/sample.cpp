#include <iostream>

using namespace std;

int nth_fibonacci(int n) {
    if (n <= 1)
        return n;
    return nth_fibonacci(n - 1) + nth_fibonacci(n - 2);
}

int main() {
    int n = 40;
    int result = nth_fibonacci(n);
    
    cout << "testing from C++" << endl;
    
    return 0;
}
