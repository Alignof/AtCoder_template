#include <bits/stdc++.h>
#define SIZE 10
#define PI 3.141592653589793

using namespace std;
typedef long long ll;

int main(void){
	cin.tie(0);
	ios::sync_with_stdio(false);

	int X,N;
	int i,j;
	int tmp;
	int answer=0;
	int counter=0;
	vector<int> given;

	cin >> X >> N;

	for(i=0;i<N;i++){
		cin >> tmp;
		given.push_back(tmp);
	}

	sort(given.begin(),given.end());
	//sort(given.begin(),given.end(),greater<int>());
	for(i=0;i<10000;i++){
		if(std::find(given.begin(), given.end(), X-i) == given.end()){
			cout << X-i << endl;
			return 0;
		}

		if(std::find(given.begin(), given.end(), X+i) == given.end()){
			cout << X+i << endl;
			return 0;
		}
	}
}

