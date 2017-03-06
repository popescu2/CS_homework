#define _BSD_SOURCE
#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <mpi.h>
#define MINSIZE   10 		// threshold for switching to bubblesort
#define TAG 1001
#define mcw MPI_COMM_WORLD

// Swap two array elements 
//
void swap(int *array, int i, int j) {
    if (i == j) return;
    int tmp = array[i];
    array[i] = array[j];
    array[j] = tmp;
}


// Bubble sort for the base cases
//
void bubblesort(int *array, int low, int high) {
    if (low >= high) 
        return;
    for (int i = low; i <= high; i++)
        for (int j = i+1; j <= high; j++) 
            if (array[i] > array[j])
                swap(array, i, j);
}

// Pick an arbitrary element as pivot. Rearrange array 
// elements into [smaller one, pivot, larger ones].
// Return pivot's index.
//
int partition(int *array, int low, int high) {
    int pivot = array[high]; 	// use highest element as pivot 
    int middle = low;
    for (int i = low; i < high; i++)
        if (array[i] < pivot) {
            swap(array, i, middle);
            middle++;
        }
    swap(array, high, middle);
    return middle;
}

// QuickSort an array range
// 
void quicksort(int *array, int low, int high) {
    if (high - low < MINSIZE) {
        bubblesort(array, low, high);
        return;
    }
    int middle = partition(array, low, high);
    if (low < middle)
        quicksort(array, low, middle-1);
    if (middle < high)
        quicksort(array, middle+1, high);
}

int main(int argc, char * argv[]) {
    int P, rank;
    int N = 0;
    MPI_File inFile;
    MPI_File outFile;
    MPI_Status st;
    MPI_Offset offset = 0;
    char host[25];
    int * data_buffer;

    gethostname(host, 25);


    MPI_Init(&argc, &argv);
    MPI_Comm_rank(mcw, &rank);
    MPI_Comm_size(mcw, &P);

    if (argc != 3) {
        if (rank == 0)
            printf("\n\tUSAGE: mpirun -n 4 -N 1 extsort in32 out32\n\n");
        MPI_Finalize();
        exit(0);
    }

    printf("process %d/%d of running on host <%s>\n", rank, P-1, host);

    MPI_File_open(mcw, argv[1], MPI_MODE_RDONLY, MPI_INFO_NULL, &inFile);

    MPI_File_open(  MPI_COMM_SELF,
            argv[2],
            MPI_MODE_CREATE|MPI_MODE_RDWR,
            MPI_INFO_NULL,
            &outFile); 

    if (rank == 0) {
        MPI_File_get_size(inFile, &offset);
        N = (int) offset/4;
    }
    // broadcast the size of the file 
    MPI_Bcast ((void*) &N, 1, MPI_INT, 0, mcw); 

    if (N % P != 0) {
        printf("Array size %d is not evenly divisible by %d processes!\n", N, P);
        printf("Exiting...\n");

        MPI_File_close(&inFile);
        MPI_File_close(&outFile);

        MPI_Finalize();
        exit(0);
    }

    // File size is now validated, proceed to allocate proper buffer size reads and file IO
    int partition_size = (N/P);
    data_buffer = malloc(sizeof(int) * partition_size);
    MPI_File_set_view(inFile, rank * partition_size*4, MPI_INT, MPI_INT, "native", MPI_INFO_NULL); 
    MPI_File_read(inFile, data_buffer, partition_size, MPI_INT, &st); 

    quicksort(data_buffer, 0, (partition_size)-1);

    for (int i = 0; i < partition_size; ++i) {
        printf("p_%d -> data buffer[%d] = %d\n", rank, i, data_buffer[i]);
    }

    //printf("-------------------\n\n");

    if (P == 1) {
        MPI_File_set_view(outFile, 0, MPI_INT, MPI_INT, "native", MPI_INFO_NULL); 
        MPI_File_write(outFile, data_buffer, N, MPI_INT, &st);
        MPI_File_close(&inFile);
        MPI_File_close(&outFile);

        MPI_Finalize();
        exit(0);

    }

    int * pivot_list = calloc(P-1, sizeof(int));
    int step = 0;
    if (rank == 0) {
        if (partition_size > P) step = partition_size / P;
        else step = 1;

        int k = step -1;
        for (int j = 0; k < partition_size; ++j, k+=step) {
            pivot_list[j] = data_buffer[k];
        }


    }

    MPI_Bcast((void*) pivot_list, P-1, MPI_INT, 0, mcw);

    for (int i = 0; i < P-1; ++i) { 
        printf("p_%d pivot[%d] = %d\n",rank, i, pivot_list[i]);
    }
    printf("-------------------\n\n");
    

    int * part_bucket = calloc((6*N)/P, sizeof(int));
    int bucket_index = 0;

    int junk = -1;
    MPI_Request req; 
    

    // send the elements to the appropriate bucket.
    
    
    int i, k;
    int low, high = -1;
    for (i, k = 0; k < P-1; ) {
        if (data_buffer[i] <= pivot_list[k] && i < partition_size) {
            if (low == -1)
                {low = i; high = i;}
            else
                high = i;
            ++i;
        }
        else {
            printf("p_%d sending buffer range [%d --> %d] to bucket %d\n", rank, low, high, k);
            low = -1;
            ++k;
        }

    }
    low = i;
    if (low <= partition_size) {
        high = partition_size-1;
        printf("p_%d sending buffer range [%d --> %d] to bucket %d\n", rank, low, high, k);
         
    }
    

    /*
    for (i, k = 0; k < P-1; ) { 
        if (data_buffer[i] <= pivot_list[k] && i < partition_size) {
            printf("p_%d sending1 %2d to bucket %*s[%d] from %d\n", 
                    rank, 
                    data_buffer[i],
                    k*2,
                    "",
                    k,
                    i);
            
            MPI_Isend((void*) &data_buffer[i], 1, MPI_INT, k, TAG, mcw, &req);
            ++i; 
        
        } else {
            printf("p_%d sending2 %2d to bucket %*s[%d]\n", rank, -1, k*2,"", k);
            MPI_Isend((void*) &junk, 1, MPI_INT, k, TAG, mcw, &req);
            ++k;

        }
    }

    // send the elements that go in the last bucket
    //=============================================
    for ( ; i < partition_size; ++i) {
            printf("p_%d sending3 %2d to bucket %*s[%d]\n", rank, data_buffer[i], k*2,"", k);
            
            MPI_Isend((void*) &data_buffer[i], 1, MPI_INT, k, TAG, mcw, &req);
        
    }

    printf("p_%d sending %2d to bucket %*s[%d]\n", rank, junk, k*2,"", k);
    MPI_Isend((void*) &junk, 1, MPI_INT, k, TAG, mcw, &req);

    */

    /*
    printf("-------------------\n\n");

    int endcount = 0;
    while(endcount < P) {
        int recval = 0;
        MPI_Irecv((void*) &recval, 1, MPI_INT, MPI_ANY_SOURCE, TAG, mcw, &req); 
        MPI_Wait(&req, &st);
        if (recval == -1) {
            ++endcount;
        }
        else {
            part_bucket[bucket_index] = recval;
            ++bucket_index;
        }
        printf("p_%d receiving %*s [%2d]\n", rank, rank*4, " ", recval);
        
    }

    
    quicksort(part_bucket, 0, bucket_index-1);
    for (int l = 0; l < bucket_index; ++l) {
        printf("p_%d bucket[%2d] = %d\n", rank, l, part_bucket[l]);
    }
    
    MPI_Barrier(mcw);

    
    int so_far = 0;
    if (rank == 0) {
        printf("p_%d about to start writing to the file-----------------------\n", rank);
        MPI_File_set_view(outFile, 0, MPI_INT, MPI_INT, "native", MPI_INFO_NULL); 
        printf("view set\n");
        MPI_File_write(outFile, part_bucket, bucket_index, MPI_INT, &st);
        printf("p_%d writing %d ints to the file\n", rank, bucket_index);
        so_far = bucket_index*4;
        MPI_Send(&so_far, 1, MPI_INT, 1, TAG, mcw);
    }
    else if (rank == P-1) {
        printf("p_%d waiting to recv\n", rank);
        MPI_Recv(&so_far, 1, MPI_INT, rank-1, TAG, mcw, &st); 
        printf("p_%d received %d\n", rank, so_far);
        MPI_File_set_view(outFile, so_far, MPI_INT, MPI_INT, "native", MPI_INFO_NULL); 
        printf("p_%d writing %d ints to the file\n", rank, bucket_index);
        MPI_File_write(outFile, part_bucket, bucket_index, MPI_INT, &st);

    }
    else {
        printf("p_%d waiting to recv\n", rank);
        MPI_Recv(&so_far, 1, MPI_INT, rank-1, TAG, mcw, &st); 
        printf("p_%d received %d\n", rank, so_far);
        MPI_File_set_view(outFile, so_far, MPI_INT, MPI_INT, "native", MPI_INFO_NULL); 
        printf("p_%d writing %d ints to the file\n", rank, bucket_index);
        MPI_File_write(outFile, part_bucket, bucket_index, MPI_INT, &st);
        so_far += bucket_index*4;

        MPI_Send(&so_far, 1, MPI_INT, rank+1, TAG, mcw);
    }
    */

    MPI_File_close(&inFile);
    MPI_File_close(&outFile);

    MPI_Finalize();





    return 0;
}