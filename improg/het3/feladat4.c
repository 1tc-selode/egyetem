#include <stdio.h>

int main(){
    /*
    int a, b;

    scanf("%i %i", &a, &b);
    printf("%i\n", a + b);
    printf("%i\n", a - b);
    printf("%i\n", a * b);
    printf("%i\n", a / b);
    printf("%i\n", a % b);
    printf("%i\n", -a);
    printf("%i\n", +a);
    */

    /*
        AND
    1 1 1
    1 0 0 
    0 1 0
    0 0 0
    */
    char a = 5, b = 100;
    // a: 00000101
    // b: 11000100
    //a&b:00000100 == 4
    printf("%x\n", a & b);
    printf("%08x\n", b);
    printf("%x\n", a | b);
    printf("    %08x\n", a);
    printf("    %08x\n", b);
    printf("%08x\n", ~a);
    printf("a<<b:%08x\n", a << 2);
    printf("a^b:%08x\n", a >> 2);
    
    


    return 0;
}