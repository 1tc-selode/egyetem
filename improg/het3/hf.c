/*
olvass be egy datumot pozitib egesz szamkent egybeiirva majd ird ki valamilyen
datum formatumban (ev. honap. nap / dd-mm-yyyy / .....)
*/

#include <stdio.h>

int main() {
    int a;

    scanf("%i", &a);

    //printf("%i", a / 1000);
    printf("%i-%i-%i\n", a / 10000, (a / 100) % 100, a % 100);

    return 0;
}