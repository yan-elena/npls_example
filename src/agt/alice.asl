+obligation(Ag,Norm,What,Deadline)
     <- .print("Obligation received: ", obligation(Ag,Norm,What,Deadline));
        !What.

 +!b(0)
    <-  .print("doing b(0)...");
        .send(bob, tell, b(0));         //fulfill obligation
        .print("done b(0)...").