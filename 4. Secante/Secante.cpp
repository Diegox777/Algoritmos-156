#include <cstdio>
#include <cmath>
#include <iostream>
#include <vector>

using namespace std;


int grado;
vector<double> V;

double evaluar(double x) {
  double ans=0;
  for(int i=0; i<=grado; i++) {
    ans+=(V[i]*pow(x,grado-i));
  }
  return ans;
}

void llenar() {
  printf("Grado del polinomio? ");
  scanf("%d", &grado);
  printf("Introdusca los coeficientes de x:\n");
  for(int i=0; i<=grado; i++) {
    double x;
    scanf("%lf", &x);
    V.push_back(x);
  }
}

int main() {
  printf("---------------Hallar raices por el metodo de la secante---------------\n");
  llenar();
  double lower, upper,mid;
  double fl,fu,fm,eps;
  printf("Introdusca el lower y upper de la funcion:\n");
  scanf("%lf %lf",&lower, &upper );
  printf("Introducir tolerancia: ");
  scanf("%lf", &eps);
  fl=evaluar(lower); fu=evaluar(upper);
  mid= upper-((fu)*(upper-lower))/(fu-fl);
  fm=evaluar(mid);
  int it=0;
  while(abs(fm)>eps) {
	it++;
	lower=upper;
    upper=mid;
    fl=evaluar(lower);fu=evaluar(upper);
    mid=upper-((fu)*(upper-lower))/(fu-fl);
    fm=evaluar(mid);
  }
  printf("\nUna raiz es %lf con una tolerancia de %lf\n",mid, eps);
  printf("Se llego al resultado con %d iteraciones.\n",it);
  return 0;
}
