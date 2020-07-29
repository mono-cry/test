#include <bits/stdc++.h>
using namespace std;

int main(void){
    int n;
    cin >> n;
    vector<bool> v(n + 1, true);
    v.at(0) = false;
    v.at(1) = false;
    for (int i = 2; i * i <= n; i++) {
        if (v.at(i)) {
            for (int j = 2; j * i <= n; j++) {
                v.at(i * j) = false;
            }
        }
    }
    for (int k = 0; k < n; k++) {
        if (v.at(k)) {
            cout << k << " ";
        }
    }
    cout << endl;
}

