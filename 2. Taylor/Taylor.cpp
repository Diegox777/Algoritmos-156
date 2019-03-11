#include <bits/stdc++.h>
using namespace std;
int main(){
	int n, xk;
	cout<<"numero de datos y xk"<<endl;
	cin>>n>>xk;
	int a[n];
	int poblacion[n];
	double L[n], num, den;

	/*llenar*/
	cout<<"llenar x  y  seguido f(x)"<<endl;
	for (int i = 0; i < n; ++i){
		cout<<"x"<<(i+1)<<": ";
		cin>>a[i]>>poblacion[i];
		cout<<endl;
	}	
/*
	n=3;
	xk=1965;
	a={1960, 1970, 1980};
	poblacion={179323, 203302, 226542};
*/

	for (int i = 0; i < n; ++i){
		num=den=1.0;
		for (int j = 0; j < n; ++j){
			if(i!=j){
				num*=(xk-a[j]);
				den*=(a[i]-a[j]);
			}
		}
		L[i]=(double)(num/den);
	}

	double px=0;
	for (int i = 0; i < n; ++i){
		px+=poblacion[i]*L[i];
	}

	cout<<setprecision(10)<<"p(x) = "<<px<<endl;

//graficar el polinomio
	return 0;
}