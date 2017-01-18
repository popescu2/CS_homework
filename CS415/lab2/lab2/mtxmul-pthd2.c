#define _GNU_SOURCE
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>
#include <stdlib.h>
#include <sched.h>

#define N 16
int numThreads = 16;
int idx = 0;
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
    int i = 0;

    do {
        pthread_mutex_lock(&sumLock);
        i = idx++;
        pthread_mutex_unlock(&sumLock);

        if (i < N) {
            for (j = 0; j < N; j++) {
                c[i][j] = 0;
                for (k = 0; k < N; k++) {
                    c[i][j] += a[i][k] * b[k][j];
                }
            }
        }
    } while(i < N);
}

int main(int argc, char * argv[]) {
    int  j;
    long i;

    if (argc < 1 && argc > 2) {
        printf ("Usage: ./pmtxmul [<numThreads>]\n");
        exit(0);
    } else if (argc == 2) {
        if ((numThreads=atoi(argv[1])) < 1) {
            printf ("<numThreads> must be greater than 0\n");
            exit(0);
        }
    }

    init_array();

    pthread_t thread[numThreads];
    pthread_mutex_init(&sumLock, NULL);   // initialize mutex 


    int nprocs = sysconf(_SC_NPROCESSORS_ONLN);
    cpu_set_t cpuset;
    int cid = 0;
    for (long k = 0; k < numThreads; k++) {        // create threads 
        pthread_create(&thread[k], NULL, (void*)slave, (void*)k);
        CPU_ZERO(&cpuset);
        CPU_SET(cid++ % nprocs, &cpuset);
        pthread_setaffinity_np(thread[k], sizeof(cpu_set_t), &cpuset);
    }

    for (i = 0; i < numThreads; i++) {
        pthread_join(thread[i], NULL);
    }
    printf("Threads joined...\n");

    print_array();
}
