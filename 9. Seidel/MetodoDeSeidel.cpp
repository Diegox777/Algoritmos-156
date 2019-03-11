#include <cstdio>
#include <cmath>

using namespace std;

int A[100][100];
double x[100]={0.0}, B[100];
double M[100][100];
int diag[100];
int main() {
  int n;
  scanf("%d", &n);
  for(int i=0; i<n; i++) {
    for(int j=0; j<n; j++) {
      scanf("%d", &A[i][j]);
      if(i==j) diag[i]=A[i][j];
    }
    scanf("%lf", &B[i]);
  }
  for(int i=0; i<n; i++) {
    for(int j=0; j<n; j++) {
      if(i==j) M[i][j]==0.0;
      else M[i][j]=(double)A[i][j]/diag[i]*(-1);
    }
    B[i]=(double)(B[i]/diag[i]);
  }
  for(int k=0; k<40; k++) {
    for(int i=0; i<n; i++) {
      double s=0;
      for(int j=0; j<n; j++)
	s+=(x[j]*M[i][j]);
      s+=B[i];
      x[i]=s;
    }
  }
  for(int i=0; i<n; i++) {
    printf("x%d: %lf\n",(i+1), x[i]);
  }
  return 0;
}
