// The sum program (OpenMP version).
//
//
#include <stdio.h>
#include <omp.h>

#define N 1000 	/* problem domain size */

int sum = 0;

int compute(int i) {
  return i*i;
}

int main(int argc, char **argv) {
  int i;
  int tid = -1;
#pragma omp parallel for reduction(+:sum)
  for (i = 0; i < N; i++) {
    sum += compute(i);
    tid = omp_get_thread_num();
    printf("Current thread id: %d\n", tid);
  }

  printf("The result sum is %d\n", sum);
}  
