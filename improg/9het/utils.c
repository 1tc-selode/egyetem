#include "utils.h"

int filescoped = 1;

int s() {
    static int stat = 2;
    stat++;
    printf("stat: %i\n", stat);
    return stat;
}

void swap(int * p1, int * p2) {
    int t = *p1;
    *p1 = *p2;
    *p2 = t;
}