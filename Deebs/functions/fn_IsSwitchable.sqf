	params [
	["_player", nil, [objNull]],
    ["_unit", nil, [objNull]]
	];

private _playerSide = 	_player getVariable "Deebs_Side";
private _unitSide 	= 	_unit getVariable "Deebs_Side";

private _sameSide 	= (!isNil "_playerSide"
					&&{!isNil "_unitSide"
					&&{_playerSide == _unitSide}})
					or (side _unit == side _player)
					or (Deebs_DeathSpawn == "all");

private _sameGroup = ((Deebs_DeathSpawn == "all")
				   or(Deebs_DeathSpawn 	== "side" && {_sameSide})
				   or(Deebs_DeathSpawn 	== "group"&& {_unit in (units (group _player))}));

private _switchable = 	((!isNil "_unit")
						&&{alive _unit
						&&{_unit isKindOf "man"
						&&{(!(_player == _unit))
						&&{(_sameSide or Deebs_SelectAllSides)
						&&{_sameGroup
						&&{!isHidden _unit
						&&{!isPlayer _unit
							}}}}}}});

_switchable;
