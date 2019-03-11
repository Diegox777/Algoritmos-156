#include <bits/stdc++.h>
using namespace std;
int main(){
	int n;
	cout<<"numero de datos"<<endl;
	cin>>n;
	float ai[n][n], xi[n], x, px, dif;	
	memset(ai, 0, sizeof ai);
	cout<<"llenar x  y  seguido f(x)"<<endl;
	for (int i = 0; i < n; ++i)
		cin>>xi[i]>>ai[0][i];

	/*	Calculando los ai	*/
	for (int i = 1; i < n; ++i){
		for (int j = 0; j < n-i; ++j){
			ai[i][j]=(ai[i-1][j+1]-ai[i-1][j])/(xi[i+j]-xi[j]);
		}
	}

	cout<<"ingresar x"<<endl;
	cin>>x;
			
	for (int j = n-1, d=1; j >= 0; --j, ++d){
		px=0;
		dif=1.0;				
		for (int i = 0; i < d; ++i){
			px+=ai[i][j]*dif;
			dif*=(x-xi[i]);
		}
		printf("P%d(x)= %.3f\n", d-1, px);
	}
	system("PAUSE");
	return 0;
}