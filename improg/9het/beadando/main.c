#include <stdio.h>
#include "sajat_string.h"

int main() {
    char a[] = "alma";
    char b[20];

    strcpy(b, a);

    printf("Hossz: %d\n", strlen(a));
    printf("Masolat: %s\n", b);
    printf("Osszehasonlitas: %d\n", strcmp(a, b));

    return 0;
}