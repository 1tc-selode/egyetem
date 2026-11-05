#include <stdio.h>
#include <stdlib.h>

#define N 10

// 1. Készíts egy alprogramot, amely egy paraméterben kapott nxn-es mátrixot feltölt az n-es szorzótábla értékeivel. Majd írasd ki a főprogramban az egészet a standard kimenetre a következő formátumban: *a x b = c*, ahol *a* és *b* a szorzandó elemek, *c* pedig a mátrixban tárolt érték.

//3. Írj programot, amely tárolja, majd kiírja egy számnak az első n darab hatványát (szám a 0.-ontól egészen a szám az n.-enig)! A számot olvasd be parancssori argumentumként. A program készüljön fel arra az esete is, ha nem érkezik külső argumentum.

typedef struct {
  int x, y;
} Pair;

void multi_t(int rows, int cols, int A[rows][cols]) {
  for (int i = 0; i < rows; ++i)
    for(int j = 0; j < cols; ++j)
      A[i][j] = (i+1) * (j+1);
}

void multi_t2(int rows, int cols, int * A) {
  for (int i = 0; i < rows; ++i)
    for(int j = 0; j < cols; ++j)
      A[i * cols + j] = (i+1) * (j+1);
}

int xy_to_i(size_t x, size_t y, size_t cols) {
  return y * cols + x;
}

Pair i_to_xy(size_t i, size_t cols) {
  return (Pair) {i % cols, i / cols};
}

void print_powers(int base, int n) {
  long long b = base;
  printf("1 ");
  for (int i = 1; i <= n; ++i)
    printf(" %lld", b *= b);
}

int main(int argc, char *argv[]) {
  int x;
  if (argc > 1)
    x = atoi(argv[1]);
  else {
    //fprintf(stderr, "Not enough arguments\n");
    //return -1;
    x = 5;
  }

  print_powers(x, N);

  int a[N][N];
  int b[N * N];
  multi_t(N, N, a);
  multi_t2(N, N, b);

  /*
  for (int i = 0; i < N; ++i) {
    for (int j = 0; j < N; ++j)
      printf("%d * %d = %d\t", i+1, j+1, b[i * N + j]);
    printf("\n");
  }
  */

  return 0;

}