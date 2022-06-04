	params ["_player", "_pos"];
	
	if!(Deebs_SwitchOnDeath)exitWith{objNull};

	if(isNil "_pos")then{_pos = (getPos _player)};

	private _AllSwitchAbles = [];
	private _allNearObjects = nearestObjects [_pos, ["Land", "Air"], Deebs_transferRange];

	{
		private _unit = (crew _x) # 0;
		private _switchAble = [_player, _unit] call Sub_Fnc_IsSwitchable; 
		
		if(_switchAble &&{!isAutonomous _x})
		then{
			_AllSwitchAbles pushBackUnique _unit
		};
	} forEach _allNearObjects;

	if(count _AllSwitchAbles < 1)exitWith{objNull};

	_AllSwitchAbles = [_AllSwitchAbles] call Sub_Fnc_orderByRank;
	
	private _target = _AllSwitchAbles # 0;
	private _leader = leader (group _target);
	
	if(_leader in _AllSwitchAbles)
	then{_target = _leader};

_target