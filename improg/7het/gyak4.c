#include <stdio.h>

void transzponal(int a[32][32], int n) {
    for (int j = 0; j < n; j++) {
        for (int i = 0; i < n; i++) {
            printf("%d ", a[i][j]);
        }
        printf("\n");
    }
}

int main() {
    int a[32][32];
    int n;

    scanf("%d", &n);
    
    printf("---\n");

    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            scanf("%d", &a[i][j]);
        }
    }

    printf("---\n");

    transzponal(a, n);

    return 0;
}