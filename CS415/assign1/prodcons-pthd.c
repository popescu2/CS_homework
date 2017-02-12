#define _GNU_SOURCE
#include "task-queue.h"
#include <pthread.h>
#include <sched.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>


int num_threads;
int total_tasks_completed=0;
struct queue_ * tasks = NULL;
long * arrCompletedTasks;
pthread_mutex_t queueLock;
pthread_mutex_t countLock;
pthread_cond_t prodCond;
pthread_cond_t consCond;

// USAGE MESSAGE -------------------------------------------------------
void usage() {
        printf("Usage: prodcons-pthd [number of consumer threads]\n");
        printf("   ex: prodcons-pthd 4\n");
        printf("       prodcons-pthd\n");  
}
// ---------------------------------------------------------------------

void producer(long tid) {
    int task_goal = 100;
    int i;

    struct task_ * task = NULL;

    printf("Producer starting on core %d\n", sched_getcpu());

    for (i = 0; i < task_goal; i++) {
        //printf("producer running...\n");
        // Lock queue for producer --------------------
        pthread_mutex_lock(&queueLock);
        // --------------------------------------------

        if (tasks->length < tasks->limit) {

            task = create_task(i+1, i+1);
            add_task(tasks, task);

        }
        else {
            
            //printf("Created 20 tasks... \n");
            while(tasks->length >= 20) {
                pthread_cond_wait(&prodCond, &queueLock);
            }
            task = create_task(i+1,i+1);
            add_task(tasks, task);

        }

        pthread_mutex_unlock(&queueLock);
        pthread_cond_broadcast(&consCond);
        //unlock queue for consumers to MAYBE jump in.
        // -------------------------------------------


    }

    printf("Producer ending\n");


}

void * consumer(long tid) {
    printf("Consumer[%ld] starting on core %d\n", tid, sched_getcpu()); 

    long completed_tasks = 0;
    struct task_ * extracted = NULL;

    //loop until heat death of the universe... :D
    while (1) {
        
        //Lock queue -----------------------
        //----------------------------------
        
        //printf("Consumer[%ld] acquired the lock\n", tid); 

        pthread_mutex_lock(&queueLock);
        extracted = remove_task(tasks);
        pthread_mutex_unlock(&queueLock);


        while (extracted == NULL) {
             
            if (total_tasks_completed >= 100) {
                //printf("Consumer[%ld] consumed <%ld> total tasks\n", tid, completed_tasks);
                
                //pthread_mutex_unlock(&queueLock);
                printf("Consumer[%ld] ending\n", tid);
                 
                pthread_cond_broadcast(&consCond);
                return (void*) completed_tasks;
            }
            


            //printf("consumer [%ld] waiting on task %d\n", tid, total_tasks_completed);
            pthread_mutex_lock(&queueLock);
            extracted = remove_task(tasks);
            pthread_mutex_unlock(&queueLock);
        }


        pthread_mutex_lock(&countLock);
        total_tasks_completed++;
        pthread_mutex_unlock(&countLock);

        //pthread_mutex_unlock(&queueLock);

        //printf("Consumer[%ld] consumed task %d\n", tid, extracted->low);
        
        //printf("  Total tasks consumed: %d\n", total_tasks_completed);
        completed_tasks++;



        //We consumed a thing, so might as well signal the producer to TRY
        //and make more things
        pthread_cond_signal(&prodCond);

       
    }
}

int main(int argc, char * argv[]) {

    printf("Main: started ...\n");
    //Check command args. Optional amount of threads.
    num_threads = 1;
    if (argc == 2) {
        num_threads = atoi(argv[1]);
        if (num_threads == 0) {
            printf("Number of consumer threads must be greater than 0!\n");
            usage();
            exit(0);
        }
    }
    else if (argc > 2) {
        usage();
        exit(0);
    }

    printf("running program with %d consumer threads...\n", num_threads);

    

    //init the task queue
    tasks = init_queue(20);

    //The lock init and cond init
    pthread_mutex_init(&queueLock, NULL);
    pthread_mutex_init(&countLock, NULL);
    pthread_cond_init(&prodCond, NULL);
    pthread_cond_init(&consCond, NULL);



    //The thread creations---------------
    pthread_t producer_thread;
    pthread_t consumer_threads[num_threads];
    //-----------------------------------

    //The threads starting.... ----------
    long k;
    
    int nprocs = sysconf(_SC_NPROCESSORS_ONLN);
    cpu_set_t cpuset;
    int cid = 0;
    for (k = 0; k < num_threads; k++) {
        
        pthread_create(&consumer_threads[k], NULL, (void *) consumer, (void*)k);
        CPU_ZERO(&cpuset);
        CPU_SET(cid++ % nprocs, &cpuset);
        pthread_setaffinity_np(consumer_threads[k], sizeof(cpu_set_t), &cpuset);
    }

    pthread_create(&producer_thread, NULL, (void *)producer, &producer_thread);
    
    //-----------------------------------
    pthread_join(producer_thread, NULL);
    
    arrCompletedTasks = malloc(sizeof(long) * num_threads);
    void * retval;




    for (k = 0; k < num_threads; k++) {

        pthread_join(consumer_threads[k], &retval);
        arrCompletedTasks[k] = (long) retval;
    }




    int remaining = num_threads % 4;
    int mod_threads = num_threads - remaining;

    printf("Task count across threads:\n");
    for (k = 0; k < mod_threads; k+=4) {
        //printf("C[%*ld]: %ld, ", 2, k, arrCompletedTasks[k]); 
        //printf("C[%*ld]: %ld, ", 2, k+1, arrCompletedTasks[k+1]); 
        //printf("C[%*ld]: %ld, ", 2, k+2, arrCompletedTasks[k+2]); 
        //printf("C[%*ld]: %ld, ", 2, k+3, arrCompletedTasks[k+3]); 
        printf("C[%2ld]:%2ld, ", k, arrCompletedTasks[k]);
        printf("C[%2ld]:%2ld, ", k+1, arrCompletedTasks[k+1]);
        printf("C[%2ld]:%2ld, ", k+2, arrCompletedTasks[k+2]);
        printf("C[%2ld]:%2ld, ", k+3, arrCompletedTasks[k+3]);
        printf("\n");
    }

    for (k = mod_threads; k < num_threads; k++) {
        printf("C[%2ld]:%2ld, ", k, arrCompletedTasks[k]); 
        //printf("C[%*ld]: %ld, ", 2, k, arrCompletedTasks[k]); 
        
    }
    printf("\n");
    printf("Total: %d\n", total_tasks_completed);

    return 1; 
}





















