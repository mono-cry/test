#include <bits/stdc++.h>
using namespace std;

// const int MOD = 1000000007;

void comb(vector<vector<int64_t>> &v) {
    for (int i = 0; i < v.size(); i++) {
        v[i][0] = 1;
        v[i][i] = 1;
    }
    for (int k = 1; k < v.size(); k++) {
        for (int j = 1; j < k; j++) {
            v[k][j] = (v[k - 1][j - 1] + v[k - 1][j]);
        }
    }
}

int main() {
    int64_t n, k;
    cin >> n >> k;
    vector<vector<int64_t>> v(n + 1, vector<int64_t>(n + 1, 0));
    comb(v);
    cout << v[n][k] << endl;
}

