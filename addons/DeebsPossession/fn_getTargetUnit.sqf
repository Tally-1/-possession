
	params ["_target"];
	if(isNull _target) exitWith {_target};
	private _returnTarget = objNull;

	if(_target isKindOf "man")
	then{_returnTarget = _target}
	else{
			_returnTarget = [_target] call Tally_Fnc_getCrewMember;
		};
	private _selectable = (side _returnTarget == side player);

	if(!alive _returnTarget)	exitWith {objNull};
	if(Deebs_SelectAllSides)	exitWith {_returnTarget};
	if(!_selectable)			exitWith {objNull};


	_returnTarget