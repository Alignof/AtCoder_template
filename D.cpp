#include <bits/stdc++.h>
#define PI 3.141592653589793
#define rep(i,n) for (int i=0;i<(n);i++)
using namespace std;
using ll = long long;

int main(void){
	cin.tie(0);
	ios::sync_with_stdio(false);

	int N;
	int i,k;
	int ans=0;
	int ctr=0;

	cin >> N;

	vector<int> gv(N);
	rep(i,N) cin >> gv[i];

	//sort(gv.begin(),gv.end());
	//sort(gv.begin(),gv.end(),greater<int>());
	
	ans=0;
	cout << ans << endl;

	return 0;
}

