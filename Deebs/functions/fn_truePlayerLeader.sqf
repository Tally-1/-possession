/*Due to the speed of the cloning some sleep is necesary 
in order to allow the JoinAs command to execute properly. 
The selectLeader can only be executed after the joinAs command */
sleep 5;
private _grp = group player;
player joinAs  [_grp, 0];
_grp selectLeader player;

true