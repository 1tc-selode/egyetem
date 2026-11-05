// 4. Készíts egy alprogramot, mely feltölt egy kapott tömböt 0 és 100 közötti véletlen **valós** értékekkel (azaz törtszámok legyenek benne). Ezután a főprogram állapítsa meg a tömbről, hogy hány eleme nagyobb 50-nél.
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <math.h>

#define n 10


void fill_d_arr(double * a, size_t size) {
    for (size_t i = 0; i < size; ++i) {
        a[i] = (double)rand() / RAND_MAX / pow(2, rand() % 20 - 10);
    }
}

double sum(double * a, size_t size) {
    double acc = 0;
    for (size_t i = 0; i < size; ++i) {
        acc += a[i];
    }
    return acc;
}

double sum_rand(double * a, size_t * perm, size_t size) {
    double acc = 0;
    for (size_t i = 0; i < size; ++i) {
        acc += a[perm[i]];
    }
    return acc;
}

void fill_range(size_t * a, size_t size) {
    for(size_t i = 0; i < size; i++) {
        a[i] = i;
    }
}

void shuffle(int * a, size_t size) {
    for(size_t i = 0; i < size-1; i++) {
        int j = rand() % (size-1-i) + i;
        int tmp = a[i];
        a[i] = a[j];
        a[j] = tmp;
    }
}

int countgt50(int size, double * tomb) {
    int db = 0;
    for (int i = 0; i < size; i++) {
        if (tomb[i] > 50) {
            db++;
        }
    }
    return db;
}

void feltolt(double tomb[], int size) {
    for (int i = 0; i < size; i++) {
        tomb[i] = (double)rand() / RAND_MAX * 100;
    }
}

int main() {
    srand(21);
    double f[n];
    size_t idx[n];
    fill_d_arr(f, n);
    fill_range(idx, n);

    for (size_t i = 0; i < n; ++i) {
        printf("%g ", f[i]);
    }
    printf("\n");

    printf("%.21f ", sum(f, n));
    printf("%.21f ", sum_rand(f, idx, n));



    double tomb[n];
    
    feltolt(tomb, n);
    
    int db = countgt50(n, tomb);

    printf("\n50-nel nagyobb elemek szama: %d\n", db);

    return 0;
    
    return 0;
}