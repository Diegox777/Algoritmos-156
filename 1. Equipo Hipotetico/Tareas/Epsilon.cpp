#include <iostream>
using namespace std;
int main() {
  double EPS=1;
  while(EPS+1>1)
    EPS/=2;
  EPS*=2;
  cout<<EPS<<endl;
  return 0;
}
