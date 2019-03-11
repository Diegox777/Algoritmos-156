#include <iostream>
#include <cmath>

using namespace std;

int main () {

    float a, b, c, d, x1 , x2, x1r;
    double aa, bb, cc, dd, x11, x22;
    a = 1.0;
    b = 3000.001;
    c = 3.0;
    d = sqrt(b * b - 4.0 * a * c);
    x1 = (-b + d) / (2.0 * a);
    x2 = (-b - d) / (2.0 * a);
    printf("Resultados con precision simple\n");
    printf("x1 = %20.14f\n", x1);
    printf("x2 = %10.4f\n", x2);

    aa = 1.0;
    bb = 3000.001;
    cc = 3.0;
    dd = sqrt(bb * bb - 4.0 * aa * cc);
    x11 = (-bb + dd) / (2.0 * aa);
    x22 = (-bb - dd) / (2.0 * aa);
    printf("Resultados con precision simple\n");
    printf("x1 = %20.14llf\n", x11);
    printf("x2 = %10.4llf\n", x22);

    printf("Formula modificada para la primera raiz\n");
    x1r = -2.0 * c / (b + d);
    printf("x1 = %20.14f\n", x1r);

    return 0;
}