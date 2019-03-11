#include <iostream>
#include <iomanip>

using namespace std;

int main () {

    int i;
    float sum1, sum2, x1, x2;
    double sum3, x3;
    sum1 = 0.0;
    sum2 = 0.0;
    sum3 = 0.0;
    x1 = 1.0;
    x2 = 1e-5;
    x3 = 1e-5;
    for (i = 1;i <= 100000; i++) {
        sum1 = sum1 + x1;
        sum2 = sum2 + x2;
        sum3 = sum3 + x3;
    }
    cout<<setprecision(15)<<fixed<<sum1<<endl;
    cout<<setprecision(15)<<fixed<<sum2<<endl;
    cout<<setprecision(15)<<fixed<<sum3<<endl;
    return 0;
}