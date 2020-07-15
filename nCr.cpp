#include <bits/stdc++.h>
using namespace std;

int64_t factorial(int64_t n) {
    if(n == 0)
        return 1;
    else
        return n * factorial(n - 1);
}

int64_t nPr(int64_t n, int64_t r) {
    return factorial(n) / factorial(n - r);
}

int64_t nPr(int64_t n) {
    return factorial(n) / factorial(n - 2);
}

int64_t nCr(int64_t n, int64_t r) {
     return nPr(n, r) / factorial(r);
}

int main() {
    int64_t n, m;
    cin >> n >> m;
    cout << (nPr(n) / 2) + (nPr(m) / 2) << endl;
}
