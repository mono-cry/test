#include <bits/stdc++.h>
using namespace std;

int main() {
    int64_t n;
    cin >> n;
    
    auto f = [](int64_t num) -> bool {
        if (num < 2) 
            return false;
        else if (num == 2)
            return true;
        else if (num % 2 == 0)
            return false;
            
        for (int i = 3; i <= sqrt(num); i += 2) {
            if (num % i == 0) {
                return false;
            }
        }
        return true;
    };
    
    cout << n << " is " << (f(n) ? "PrimeNumber." : "Not primeNumber.") << endl;
}

