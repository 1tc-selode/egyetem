#include <stdio.h>


int * half6(int * arr) {
    int res[3];
    int i = 0;
    while(i < 6) {
        if (i % 2 == 1) res[i / 2] = arr[i];
        ++i;
    }
    return res;
}

int main() {
    // 8. Írj függvényt, ami egy int[]-et kap és visszaad egy tömböt, amiben minden második elem szerepel
    int a[] = {1, 2, 3, 4, 5, 6}; 
    int * h = half6(a);
    //printf("%i\n", h[1]);
    // 9. Olvasd ki a 0 értékű memóriacímen lévő bájtokat!
    int * n = 1;
    *n; // ok (szintaktikailag, persze ettől még hibás)
    // *1; -- rossz értékkategória
    printf("%c", NULL);
    
}