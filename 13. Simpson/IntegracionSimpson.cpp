#include <bits/stdc++.h>
using namespace std;
int main() {
  int n;
  double h, y;
  vector<double> Y;
  scanf("%d %lf", &n, &h);
  for(int i=0; i<n; i++) {
    scanf("%lf", &y);
    Y.push_back(y);
  }
  double sumim=0, sump=0;
  for(int i=1; i<n-1; i+=2) {
    sumim+=Y[i];
    sump+=Y[i+1];
  }
  printf("%lf\n", (h/3)*(Y[0]+Y[n-1]+4*sumim+2*sump));
  return 0;
}
