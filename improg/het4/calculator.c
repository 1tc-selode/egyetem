#include <stdio.h>
#include <stdlib.h>


int main(int argc, char * argv[]) {
    if (argc != 4) {
        printf("Not enough arguments!\n");
        return -1;
    }

    int a = atoi(argv[1]);
    int b = atoi(argv[3]);
    char o = argv[2][0];

    switch (o) {
        case '+': printf("%i\n", a + b); break;
        case '-': printf("%d\n", a - b); break;
        case '*': printf("%i\n", a * b); break;
        case '/':
            if (b == 0) return -2;
            printf("%d\n", a / b);
            break;
        case '%': printf("%i\n", a % b); break;
    }

    return 0;
}