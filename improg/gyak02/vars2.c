#include <stdio.h>


int main() {
    // min 8 bit
    char c = 4;
    unsigned char uc;
    signed char sc;

    // min 16 bit
    short s;
    unsigned short us;

    // min 16 bit
    int i = 5;
    unsigned int ui;

    // min 32 bit
    long l; // long int
    unsigned long ul;

    // min 64 bit
    long long ll;
    unsigned long long ull;
    // sorrend compilert nem érdekli, de másokat igen
    long int long unsigned ull2;
    
    printf("sizeof c (%hhi): %zu\n", c, sizeof c); // sizeof (char)
    printf("sizeof sc (%hhi): %zu\n", sc, sizeof sc); // sizeof (signed char)
    printf("sizeof uc (%hhu): %zu\n", uc, sizeof uc); // sizeof (unsigned char)

    printf("sizeof s (%hi): %zu\n", s, sizeof s);
    printf("sizeof us (%hu): %zu\n", us, sizeof us);

    printf("sizeof i (%i): %zu\n", i, sizeof i);
    printf("sizeof ui (%u): %zu\n", ui, sizeof ui);

    printf("sizeof l (%li): %zu\n", l, sizeof l);
    printf("sizeof ul (%lu): %zu\n", ul, sizeof ul);

    printf("sizeof ll (%lli): %zu\n", ll, sizeof ll);
    printf("sizeof ull (%llu): %zu\n", ull, sizeof ull);
    printf("sizeof ull2 (%llu): %zu\n", ull2, sizeof ull2);

    float f;
    double d;
    long double ld;

    printf("sizeof f (%f): %zu\n", f, sizeof f);
    printf("sizeof d (%f): %zu\n", d, sizeof d);
    printf("sizeof ld (%Lf): %zu\n", ld, sizeof ld);

    _Bool b = true;

    int ia[5] = {0}; // típusa int[5]
    for (int i = 0; i < sizeof ia / sizeof(int); ++i)
        printf("%i\n", ia[i]);

    printf("sizeof ia: %zu\n", sizeof ia);
    
    char ca1[] = "shell";
    char ca2[] = {'s', 'h', 'e', 'l', 'l', 0};
    printf("sizeof ca1: %zu\n", sizeof ca1);
    printf("sizeof ca2: %zu\n", sizeof ca2);

    int * ip = &i; // & : int -> int *
    printf("%p -> %i\n", (void *)ip, *ip); // * : int * -> int
    *ip = 7;
    printf("%p -> %i(%i)\n", (void *)ip, *ip, i); // * : int * -> int


    return 0;

    /*
Próbálj meg értékül adni az int típusú változónak egy valós számot, 
egy karaktert, egy logikai ( bool ) értéket, és egy karakter láncot (stringet).
Ha sikerül az értékadás, akkor írd ki a változó értékét.
*/
}