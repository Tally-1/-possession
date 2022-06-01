params["_source", "_target"];
private _curator = getAssignedCuratorLogic _source;
private _counter = 0;
private _sucsess = true;

if(!isNil "_curator")
	then{
	while{!((getAssignedCuratorUnit _curator) == _target)}
	do{
		unassignCurator 		_curator;
		_target assignCurator 	_curator;
		_counter = _counter +1;
		if(_counter > 99)exitWith{};
	}};

if(_counter > 99)then{
	["could not complete curator transfer"] call Tally_Fnc_DebugMsg;
	_sucsess = false;
	};

_sucsess;