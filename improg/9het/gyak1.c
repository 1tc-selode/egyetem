#include <stdio.h>
#include "utils.h"
#include "utils.h"

int * f() {
    int a = 1;
    if (a == 1) {
        int a = 0;
        //int b = 0;
        printf("true: %i", a);
    } else {
        printf("false: %i", a);
    }
    //printf("%i", b);
    return NULL;
}

int foo(int n);

// void baz(int a, float a) { return; }

int main() {
    printf("%i\n", filescoped);
    filescoped = 3;
    printf("%i\n", filescoped);

    printf("---3---\n");
    f();

    {
        //printf("%i", kulso);
        int kulso = 3;
        printf("%i\n", kulso);
        //printf("%i", belso);
        {   
            int belso = 5;
            printf("%i\n", belso);
            printf("%i\n", kulso);
        }
        //printf("%i", belso);
        printf("%i\n", kulso);
    }
    //printf("%i", kulso);
    
    /*
    int * p;
    {
        int a = 7;
        p = &a; // ez még helyes
    }
    printf("%i\n", *p); // -O3 fordítva más eredményt kapunk, mert UB
    */

    foo(5); printf("\n");

    s();
    s();
    s();

    int var1 = 11;
    int var2 = 13;
    swap(&var1, &var2);
    // var1: 13, var2: 11
    printf("var1: %i, var2: %i", var1, var2)

    return 0;

}

int bar(int i) {
    printf("bar");
    if (i > 0) foo(i - 1);
    return i - 1;
}

int foo(int i) {
    printf("foo");
    if (i > 0) bar(i - 1);
    return i - 1;
}
