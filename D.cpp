#include <bits/stdc++.h>
#define SIZE 10
#define PI 3.141592653589793

using namespace std;
typedef long long ll;

int main(void){
	cin.tie(0);
	ios::sync_with_stdio(false);

	int i,j;
	int counter=0;
	ll N;
	ll answer=0;

	cin >> N;
	vector<ll> given(N);

	for(i=0;i<N;i++)
		cin >> given[i];
	
	sort(given.begin(),given.end());
	ll max=given[N-1];
	vector<bool> flags(max+5,true);

	for(i=0;i<N;i++){
		if(i!=0 && given[i-1] == given[i]) flags[given[i]]=false;
		for(ll j=given[i]*2;j<=max;j+=given[i])
			flags[j]=false;
	}


	for(i=0;i<N;i++)
		if(flags[given[i]]) counter++;

	cout << counter << endl;
	return 0;
}

