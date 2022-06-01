
	params ["_target"];
	if(isNull _target) exitWith {_target};
	private _returnTarget = objNull;

	if(_target isKindOf "man")
	then{_returnTarget = _target}
	else{
			_returnTarget = [_target] call Tally_Fnc_getCrewMember;
		};
	private _selectable = [player, _returnTarget] call Tally_Fnc_IsSwitchable;

	if(!alive _returnTarget)		exitWith {objNull};
	if(!_selectable)				exitWith {objNull};


	_returnTarget