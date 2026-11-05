/*
beker egy csomo egesz szamokat, es ha q-t kap akkor kiirja az eddigi szamok osszeget es atlagat
include <stdio.h>

int main(void)
{
    int szam;
    int osszeg = 0;
    int db = 0;
    char c;

    while (1)
    {
        scanf(" %c", &c);

        if (c == 'q' || c == 'Q')
            break;


        scanf("%d", &szam);

        osszeg += szam;
        db++;
    }

    printf("Osszeg: %d\n", osszeg);
    printf("Atlag: %.2f\n", (double)osszeg / db);

    return 0;
}
*/


#include <stdio.h>

int main(void)
{
    int szam = 0;
    int osszeg = 0;
    int db = 0;
    char q;

    while (scanf("%c", &q) != 'q')
    {
        scanf("%d", &szam);
        osszeg += szam;
        db++;
    printf("Osszeg: %d\n", osszeg);
    }

    printf("Osszeg: %d\n", osszeg);
    printf("Atlag: %.2f\n", (double)osszeg / db);

    return 0;
}