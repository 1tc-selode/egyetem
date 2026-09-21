/*
masodfoku egyenlet
*/

#include <stdio.h>
#include <math.h>

int main() {

    double a = 1;
    double b = -5;
    double c = 6;

    double gyokalatt = b * b - (4 * a * c);

    if (gyokalatt < 0)
    {
        printf("A gyok alatt nem lehet negativ szam.\n");
    }
    else
    {
        double gyok = sqrt(gyokalatt);
        double x1 = (-b + gyok) / (2 * a);
        double x2 = (-b - gyok) / (2 * a);

        printf("X1 eredmenye: %.2f\n", x1);
        printf("X2 eredmenye: %.2f\n", x2);
    }

    return 0;
}