/*
Próbálj meg értékül adni az int típusú változónak egy valós számot, 
egy karaktert, egy logikai ( bool ) értéket, és egy karakter láncot (stringet).
Ha sikerül az értékadás, akkor írd ki a változó értékét.
*/

#include <stdio.h>


int main() {

    int szam = 5.8;
    bool a = true;
    bool b = false;
    char c = 'A';

    printf("%d\n", szam);
    printf("%d\n",a);
    printf("%d\n",b);
    printf("%d",c);


    char s = {'h', 'e', 'y'};
    printf("%s\n", s);


    return 0;
}
