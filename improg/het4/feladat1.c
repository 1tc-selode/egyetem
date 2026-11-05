/*
Készíts egy 6 oldalú dobókocka szimuláló alprogramot! A főprogramban dobj egymás után 10-szer a kockával és írasd ki az eredményeket.
https://en.cppreference.com/c/numeric/random/rand
a) Az alprogramot fejleszd függvénnyé, ami n oldalú kocákval dob. Ha argumentummal került meghívásra a program, legyen ez n.
Kiegészítések:
b) Dobj 11-edszer is, és addig kérj tippeket a felhasználótól, amíg ki nem találja a dobott számot. Minden tipp után közöld, hogy a célszám kisebb vagy nagyobb.
c) Dícsérd meg a felhasználót, ha minden tipp legalább felezte a céltól való távolságot az előző tipphez képest!
*/


#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int rollDice(int n)
{
    return rand() % n + 1;
}

int main(int argc, char *argv[])
{
    srand(time(NULL));

    int n;

    if (argc == 1)
    {
        n = 6;
    }
    else
    {
        n = atoi(argv[1]);
    }

    // Első 10 dobás
    for (int i = 0; i < 10; i++)
    {
        printf("%d ", rollDice(n));
    }

    printf("\n");

    // 11. dobás
    int target = rollDice(n);
    int guess;

    do
    {
        printf("Tippelj: ");
        scanf("%d", &guess);

        if (guess < target)
        {
            printf("A cel nagyobb.\n");
        }
        else if (guess > target)
        {
            printf("A cel kisebb.\n");
        }
        else
        {
            printf("Eltalaltad!\n");
        }

    } while (guess != target);

    return 0;
}