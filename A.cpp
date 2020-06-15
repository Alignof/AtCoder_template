#include <bits/stdc++.h>
#define SIZE 10
#define PI 3.141592653589793

using namespace std;
typedef long long ll;

int main(void){
	cin.tie(0);
	ios::sync_with_stdio(false);

	int answer=0;
	int i,j;
	int tmp;
	int counter=0;
	vector<int> given;

	for(i=0;i<5;i++){
		cin >> tmp;
		given.push_back(tmp);
	}
	
	for(i=0;i<5;i++){
		if(given[i]==0){
			cout << i+1 << endl;
			return 0;
		}
	}
}

