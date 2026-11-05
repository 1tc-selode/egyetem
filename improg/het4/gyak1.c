#include <stdio.h>

int main() {
    int a[100] = {};
    for (unsigned long i = sizeof(a) / sizeof a[0]; i + 1 >= 1; --i)
    {
        printf("%lu ",i);
    }
    
}