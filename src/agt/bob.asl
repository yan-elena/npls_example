extra(150).

!start.

+!start <- +vl(20). // by adding this belief, the NPL will trigger the obligation n1 for alice

+active(obligation(Ag,Norm,What,Deadline)) : .my_name(Ag)
    <-  .print("Active ", obligation(Ag,Norm,What,Deadline));
        //!What;
        .

+active(obligation(Ag, Norm, What, Deadline))
    <-  .send(Ag, tell, obligation(Ag,Norm,What,Deadline)).

+fulfilled(O) <- .print("Fulfilled ", O).

+unfulfilled(O) <- .print("Unfulfilled ", O).

+sanction(Ag,remove_from_systems)
   <- .println("**** I am implementing the sanction remove_from_systems for ",Ag," ****").

+sanction(Ag,Sanction)[norm(NormId,Event)]
   <- .print("Sanction ",Sanction," for ",Ag," created from norm ", NormId, " that is ",Event).

