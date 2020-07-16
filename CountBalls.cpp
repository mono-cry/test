#incled <bits/stdc++.h>
using namespace std;

int main() {
	int64_t N, A, B;
	cin >> N >> A >> B;
	cout << N / (A + B) * A + min(N % (A + B), A) << endl;
}
