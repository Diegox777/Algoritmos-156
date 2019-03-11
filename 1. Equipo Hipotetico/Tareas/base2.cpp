#include <bits/stdc++.h>
using namespace std;
int main(){
	double A, C, D=0;
	int man, B;
	cin>>A>>man;
	vector<int> V;
	/* llenado de parte entera*/
	B=A;	
	for (int i = log10(A); B>0 ; ++i){
		V.push_back(B%2);
		B/=2;
	}

	/* TFN para la parte entera*/
	for (int i = 0; i < man && i<V.size(); ++i)
		D+=V[i]*pow(2, i);

	/* calculando la parte decimal y TFN*/
	C=A-(int)A;
	for (int i = V.size(), j=-1; i<man; ++i, --j){
		C*=2;
		D+=(int)C*pow(2, j);
		C=C-(int)C;
	}
	
	/* Impresiones*/
	cout<<"Nuevo Valor : "<<D<<endl;
	double Ea = fabs(A-D);
	double Erp=Ea/fabs(A)*100;
	cout<<"Error Absoluto: "<<Ea<<endl;
	cout<<setprecision(2)<<"Error Absoluto Porcentual: "<<Erp<<"%"<<endl;

	return 0;
}