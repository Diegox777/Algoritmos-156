#include <bits/stdc++.h>
using namespace std;
int main(){
	int N;
	cout<<"Introducir dimension de la matriz: "; cin>>N;
	cout<<"Llenar"<<endl;
	double A[N][N], B[N];
	
	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j)
			cin>>A[i][j];
		cin>>B[i];
	}

	double M[N][N], C[N];

	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			if(i==j)
				M[i][i]=0;
			else
				M[i][j]=A[i][j]/A[i][i]*(-1);
		}
		C[i]=B[i]/A[i][i];
	}

	/*
	cout<<"Mostrar"<<endl;
	for (int i = 0; i < N; ++i){
		for (int j = 0; j < N; ++j){
			cout<<M[i][j]<<" ";
		}
		cout<<C[i]<<endl;
	}
	*/

	double X[N], newval, Prom_ea=100, tol; memset(X, 0.0, sizeof X);
	int it=0;
	cout<<"Introducir tolerancia: "; cin>>tol; cout<<endl;
	
	while(Prom_ea>tol){
		Prom_ea=0.0;
		for (int i = 0; i < N; ++i){
			newval=0.0;
			for (int j = 0; j < N; ++j)
				newval+=M[i][j]*X[j];
			newval+=C[i];
			Prom_ea+=fabs((newval-X[i])/newval)*100;
			X[i]=newval;
		}
		Prom_ea/=N;	
		it++;
	}
	cout<<"#iteraciones: "<<it<<endl;
	cout<<"Raices Encontradas:"<<endl;
	for (int i = 0; i < N; ++i){
		cout<<"x"<<i+1<<"= "<<X[i]<<endl;
	}
	
	system("PAUSE");
	return 0;
}

/*
	 10  -1   2  0   6
	 -1  11  -1  3  25
	 2   -1  10 -1 -11
	 0    3  -1  8  15

	tareas:
	- llenar matriz

*/

