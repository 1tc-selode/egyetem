#include <stdio.h>

int is_even(int n);


int main() {
    int n;
    printf("%d", n);
    scanf("%d", &n);
    if (is_even(n))
    {
        printf("Even\n");
    }
    else{
        printf("Odd\n");
    }
    
    // printf("Hello");
    return 0;
}