#include <stdio.h>

#define PI 3.1415

int main(){
    double r;
    scanf ("%lf", &r);
    printf("Diameter: %.2f\n", 2 * r);
    printf("Perimeter: %.2f\n", 2 * r * PI);
    printf("Area: %.2f\n", r * r * PI);

    double px, py;
    scanf("%lf %lf", &px, &py);
    double d = px * px + py * py;

    if (d * d <= r * r) printf("Inside\n");
    else printf("Outside\n");

   return 0;
}