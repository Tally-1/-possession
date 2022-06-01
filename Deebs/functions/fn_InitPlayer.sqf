private _myClone 		= player getVariable 'Deebs_MyClone';
private _leader 		= (leader(group player) == player);

waituntil {isTouchingGround player};
initialized = true;

true