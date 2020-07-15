#include <bits/stdc++.h>
using namespace std;

int main() {
    int K, sum = 0;
    cin >> K;
    for (int a = 1; a <= K; a++) {
        for (int b = 1; b <= K; b++) {
            for (int c = 1; c <= K; c++) {
                sum += gcd(max(gcd(max(a, b), min(a, b)), c), 
                           min(gcd(max(a, b), min(a, b)), c));
            }
        }
    }
    cout << sum << endl;
}

int gcd(int a, int b) {
    if (a % b == 0)
        return b;
    else 
        return gcd(b, a % b);
}
