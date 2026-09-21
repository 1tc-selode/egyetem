#include <stdio.h>

#define PI 3.1415

int main(){
    // double r;
    // scanf ("%lf", &r);
    // printf("Diameter: %.2f\n", 2 * r);
    // printf("Perimeter: %.2f\n", 2 * r * PI);
    // printf("Area: %.2f\n", r * r * PI);

    // double px, py;
    // scanf("%lf %lf", &px, &py);
    // double d = px * px + py * py;

    // if (d * d <= r * r) printf("Inside\n");
    // else printf("Outside\n");


    //elso egyenes
    double y1, b1, x1, m1;

    printf("1. egyenes (y1, x1): ");
    scanf("%lf %lf", &y1, &x1);
    b1 = y1 - (m1 * x1);
    m1 = (y1 - b1) / x1;

    //masodik egyenes
    double y2, b2, x2, m2;

    printf("2. egyenes (y2, x2): ");
    scanf("%lf %lf", &y2, &x2);
    b2 = y2 - (m2 * x2);
    m2 = (y2 - b2) / x2;

   if ((m1 * m2) == -1) {
        printf("A ket egyenes meroleges.\n");
    } else {
        printf("A ket egyenes nem meroleges.\n");
    }

    return 0;
}