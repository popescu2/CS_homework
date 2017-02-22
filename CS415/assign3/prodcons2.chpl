//------------------------------------------------------------------------- 
// This is supporting software for CS415/515 Parallel Programming.
// Copyright (c) Portland State University.
//------------------------------------------------------------------------- 

// A producer-consumer program using the circQueue1 module.
//  - a single pair of producer and comsumer
//

module main {

    use circQueue2;
   
    var globalSum$: atomic int;
    var consID$: atomic int;

    config const numCons = 2;
    config const numTasks = 20;
    const endFlag = createTask();   // special "termination" task

    proc producer() { 
        var task: Task;
        var idx: int;

        for i in 1..numTasks {
            task = createTask(i,i);
            idx = queueAdd(task);
            writeln("producer added ", task, " to queue (idx=", idx, ")");
        }
        for i in 1..numCons {
            idx = queueAdd(endFlag);
        }
        writeln("producer added ", numCons, " endFlag(s) to queue (idx=", idx, ")");
    }

    proc consumer(id: int) { 

        var unlock = consID$; // unlock the sync var
        // ... implement this function ...
        var task: Task;
        var total = 0;

        do {

            task = queueRemove();

            if (task.low + task.high == 0) {
                writeln("consumer ", id," got endFlag, total tasks = <", total, ">");
                globalSum$.fetchAdd(total);
                return total;
            }

            writeln("consumer ", id, " removed <", task, "> from queue");
            total += 1;


        } while (1);

        return 0;

    } 

    proc main() {
        globalSum$.write(0);
        consID$.write(0);

        begin producer();
        coforall i in 1..numCons {
            consumer(i);
           // globalSum$.fetchAdd(psum);
        }
        writeln("Global sum: ", globalSum$.read());
    } 

}















