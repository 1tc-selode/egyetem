#include <stdio.h>
#include <math.h>

struct Vektor{
    double x;
    double y;
};

struct Point {
    int x;
    int y;
};

double dist(struct Point * p1, struct Point * p2) {
    int x2 = ((*p1).x - (*p2).x) * (p1->x - p2->x);
    int y2 = (p1->y - p2->y) * (p1->y - p2->y);
    return sqrt(x2 + y2);
}

struct Vektor kbVektor(struct Vektor * a, struct Vektor * b)
{
    int c1 = ((*a).x - (*b).x);
    int c2 = ((*a).y - (*b).y);
    return (struct Vektor) {c1, c2};
}

int main() {
    struct Point p1 = {2, 3};
    struct Point p2 = {2, 5};
    printf("(%i, %i)\n", p1.x, p1.y);
    printf("sizeof Point: %zu\n", sizeof(struct Point));
    printf("dist: %f\n", dist(&p1, &p2));

    /*
    Definiáld a Vector structot!
    a) Írj függvényt, ami két Point * kap és visszaadja a különbségvektorukat
    b) Írd meg az a) fv. változatát, ami kap egy Vector * is, és ebbe teszi a különbségvektort
    */

    struct Vektor a = {4, 5};
    struct Vektor b = {5, 1};
    printf("a ket pont kulonbsegvektora c = (%.0f;%.0f)", kbVektor(&a, &b).x, kbVektor(&a, &b).y);

    return 0;
}