//------------------------------------------------------------------------- 
// This is supporting software for CS415/515 Parallel Programming.
// Copyright (c) Portland State University.
//------------------------------------------------------------------------- 

// A producer-consumer program using the circQueue1 module.
//  - a single pair of producer and comsumer
//

module main {

  use circQueue1;

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
    idx = queueAdd(endFlag);
    writeln("producer added endFlag to queue (idx=", idx, ")");
  }

  proc consumer() { 

    // ... implement this function ...
    var task: Task;
    var total = 0;

    do {

        task = queueRemove();

        if (task.low + task.high == 0) {
            writeln("consumer got endFlag, total tasks = <", total, ">");
            return;
        }

        writeln("consumer removed <", task, "> from queue");
        total += 1;
    

    } while (1);
 
  } 

  proc main() {
    begin producer();
    consumer();
  } 

}
