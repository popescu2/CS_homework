//------------------------------------------------------------------------- 
// This is supporting software for CS415P/515 Parallel Programming.
// Copyright (c) Portland State University.
//------------------------------------------------------------------------- 

// Matrix multiplication algorithm.  
//
#include <stdio.h>
#include <omp.h>

#define N 8

int main() {
  int a[N][N], b[N][N], c[N][N];
  int i, j, k, z;
  int num_threads = omp_get_max_threads();
  int stat_arr[num_threads];
  printf("RUNNING PROGRAM WITH [%d] THREADS\n", num_threads); 

  // initialization
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      a[i][j] = i + j;
      b[i][j] = 1;
    }
  }

  //Init stat array
  for (i = 0; i< num_threads; i++) {
    stat_arr[i] = 0;
  }

  // multiplication
  #pragma omp parallel for private(j,k)
  for (i = 0; i < N; i++) {

    for (j = 0; j < N; j++) {
    stat_arr[omp_get_thread_num()]++;
  	c[i][j] = 0.;
  	for (k = 0; k < N; k++) {
      //printf("index: c[%d][%d], thread: <%d>\n", i, j, omp_get_thread_num());
  	  c[i][j] += a[i][k] * b[k][j];
  	}
    }
  }

  // validation
  int total = 0;
  for (i = 0; i < N; i++) {
    for (j = 0; j < N; j++) {
      total += c[i][j];
    }
  }
  printf("total = %d (should be 3584)\n", total);

  printf("\n\nStats ==================\n");
  for(z = 0; z < num_threads; z++) {
    printf("[%2d]:%2d, ", z, stat_arr[z]);
  }
  printf("\n");
  printf("Total: %d threads, %d elements\n", num_threads, N*N); 

}
