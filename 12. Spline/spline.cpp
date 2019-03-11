#include <bits/stdc++.h>
using namespace std;
int main(){
	int n;
	cout<<"numero de datos"<<endl;
	cin>>n;
	float xi[n], fxi[n];
	cout<<"llenar x  y  seguido f(x)"<<endl;
	for (int i = 0; i < n; ++i)
		cin>>xi[i]>>fxi[i];

	/*	Calculando hi */
	float hi[n-1];
	for (int i = 0; i < n-1; ++i)
		hi[i]=xi[i+1]-xi[i];

	/*	Clalculando A */
	float A[n][n];
	memset(A, 0, sizeof A);
	A[0][0]=A[n-1][n-1]=1; 
	for (int i = 1; i < n-1; ++i){
		A[i][i]=2*(hi[i]+hi[i-1]);
	}

	for (int i = 1; i < n-1; ++i){
		A[i][i-1]=hi[i-1];
		A[i][i+1]=hi[i];
	}

	/* 	Calculando b*/
	float b[n];
	b[0]=b[n-1]=0;
	for (int i = 1; i < n-1; ++i)
		b[i]=(3/hi[i])*(fxi[i+1]-fxi[i])-(3/hi[i-1])*(fxi[i]-fxi[i-1]);

	/* 	Calculando C con jacobi */

	double M[n][n], C[n];

	for (int i = 0; i < n; ++i){
		for (int j = 0; j < n; ++j){
			if(i==j)
				M[i][i]=0;
			else
				M[i][j]=A[i][j]/A[i][i]*(-1);
		}
		C[i]=b[i]/A[i][i];
	}

	double Ci[n], newval, tol=0.0005;
	memset(Ci, 0.0, sizeof Ci);
	
	// Para 10 iteraciones
	for (int c = 0; c < 10; ++c){
		for (int i = 0; i < n; ++i){
			newval=0.0;
			for (int j = 0; j < n; ++j)
				newval+=M[i][j]*Ci[j];
			newval+=C[i];
			Ci[i]=newval;
		}
	}

	/*	Calculando di y bi*/
	float di[n-1], bi[n-1];
	for (int i = 0; i < n-1; ++i){
		di[i]=(Ci[i+1]-Ci[i])/(3*hi[i]);
		bi[i]=(1/hi[i])*(fxi[i+1]-fxi[i])-(hi[i]/3)*(2*Ci[i]+Ci[i+1]);
	}

	/* evaluando polinomios */
	float dif, y1, XX;
	cout<<"apreciacion y dato buscado: "; cin>>dif>>XX; cout<<endl;
	for (int i = 0; i < n-1; ++i){
		cout<<"P_"<<i<<"(x) de ("<<xi[i]<<","<<xi[i+1]<<")"<<endl;
		for (float x1 = xi[i]; x1 <= xi[i+1]; x1+=dif){
			y1=fxi[i]+bi[i]*(x1-xi[i])+Ci[i]*pow(x1-xi[i],2)+di[i]*pow(x1-xi[i],3);
			printf("%.2f  %.3f\n", x1, y1);
			if(x1==XX)
				XX=y1;
		}
	}

	cout<<"Solucion: "<<XX<<endl;
	system("PAUSE");
	return 0;
}