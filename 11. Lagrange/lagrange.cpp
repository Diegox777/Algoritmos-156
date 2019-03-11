#include <bits/stdc++.h>
using namespace std;
int main(){
	int n;
	cout<<"numero de datos"<<endl;
	cin>>n;
	double a[n], xk;
	double poblacion[n];
	double L[n], num, den;

	/*llenar*/
	cout<<"llenar x  y  seguido f(x)"<<endl;
	for (int i = 0; i < n; ++i){
		//cout<<"x"<<(i+1)<<": ";
		cin>>a[i]>>poblacion[i];
		cout<<endl;
	}	

	cout<<"ingresar x"<<endl;
	cin>>xk;

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

	system("PAUSE");

	return 0;
}