
#define _GNU_SOURCE
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <stdlib.h>
#include <sched.h>

#define N 16

pthread_mutex_t sumLock;   
int a[N][N], b[N][N], c[N][N];

void init_array()  {
    int i, j;
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            a[i][j] = i + j;
            b[i][j] = N - j;
        }
    }
}

void print_arrayA()  {
    int i, j;
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++)
            printf("%4d ", a[i][j]);
        printf("\n");
    }
}

void print_arrayB()  {
    int i, j;
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++)
            printf("%4d ", b[i][j]);
        printf("\n");
    }
}

void print_array()  {
    int i, j;
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++)
            printf("%4d ", c[i][j]);
        printf("\n");
    }
}

/*
    for (i = 0; i < N; i++) {
        for (j = 0; j < N; j++) {
            c[i][j] = 0;
            for (k = 0; k < N; k++) {
                c[i][j] += a[i][k] * b[k][j];
            }
        }
    }

*/

void slave(long tid) {
    printf("thread %ld running on cpu %d...\n", tid, sched_getcpu());
    
    int j, k;
    for (j = 0; j < N; j++) {
        c[tid][j] = 0;
        for (k = 0; k < N; k++) {
            c[tid][j] += a[tid][k] * b[k][j];
        }
    }
}

int main(int argc, char * argv[]) {
    int  j, k;
    long i;

    init_array();

    pthread_t thread[N];
    pthread_mutex_init(&sumLock, NULL);   // initialize mutex 


    int nprocs = sysconf(_SC_NPROCESSORS_ONLN);
    cpu_set_t cpuset;
    int cid = 0;
    for (long k = 0; k < N; k++) {        // create threads 
        pthread_create(&thread[k], NULL, (void*)slave, (void*)k);
        CPU_ZERO(&cpuset);
        CPU_SET(cid++ % nprocs, &cpuset);
        pthread_setaffinity_np(thread[k], sizeof(cpu_set_t), &cpuset);
    }

    for (i = 0; i < N; i++) {
        pthread_join(thread[i], NULL);
    }
    printf("Threads joined...\n");

    print_array();
}
