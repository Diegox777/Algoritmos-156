#include <bits/stdc++.h>
using namespace std;
double long a;
double long b;
int main(){
	int exponente, mantisa, c;
	cout<<"exponente y mantisa"<<endl;
	cin>>exponente>>mantisa;	
	a=b=c=0;
	for (int i = 1; i <= mantisa; ++i)
		a+=pow(2, -i);
	for (int i = 1; i <= exponente; ++i)
		c=(c<<1)+1;
		
	a=a*pow(2, c);
	b=0.5*pow(2, -c);
	cout<<setprecision(20)<<"-"<<a<<'\n';
	cout<<setprecision(20)<<"-"<<b<<'\n';
	cout<<"0"<<'\n';
	cout<<setprecision(20)<<b<<'\n';
	cout<<setprecision(20)<<a<<'\n';
	system("PAUSE");
	return 0;	
}
