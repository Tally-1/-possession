
	params ["_man"];
	private _AllSwitchAbles = [];
	private _allNearObjects = nearestObjects [_man, ["Land", "Air"], Deebs_transferRange];

	{
		
		private _unit = (crew _x) # 0;
		private _manSide 	= 	_man getVariable "Deebs_Side";
		private _unitSide 	= 	_unit getVariable "Deebs_Side";
		private _sameSide 	= (!isNil "_manSide"
							&&{!isNil "_unitSide"
							&&{_manSide == _unitSide}});
		
		private _switchAble = ((!isNil "_unit")
							 &&{alive _unit
							 &&{_unit isKindOf "man"
							 &&{(!isAutonomous _x)
							 &&{(!(_man == _unit))
							 &&{Deebs_SelectAllSides
							 or (side _unit == side _man
							 or _sameSide)}}}}});
		
		if(_switchAble)then{_AllSwitchAbles pushBackUnique _unit};
		
	} forEach _allNearObjects;

	if(count _AllSwitchAbles < 1)exitWith{objNull};

	_AllSwitchAbles # 0