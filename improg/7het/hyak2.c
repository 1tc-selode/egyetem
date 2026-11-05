// 4. Készíts egy alprogramot, mely feltölt egy kapott tömböt 0 és 100 közötti véletlen **valós** értékekkel (azaz törtszámok legyenek benne). Ezután a főprogram állapítsa meg a tömbről, hogy hány eleme nagyobb 50-nél.
#include <stdio.h>
#include <stdlib.h>


void fill_d_arr(double * a, size_t size) {
    for (size_t i = 0; i < size; ++i) {
        a[i] = (double)rand() / rand();
    }
}

double sum(double * a, size_t size) {
    double acc = 0;
    for (size_t i = 0; i < size; ++i) {
        acc += a[i];
    }
    return acc;
}

int main() {
    srand(13);
    double f[100];
    fill_d_arr(f, 100);

    printf("%g ", sum(f, 100));
    
    return 0;
}