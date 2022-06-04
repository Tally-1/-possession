
params ["_Player"];
private _type 		= typeOf 		 _Player;
private _Pos 		= getPos	 	 _Player;
private _PosASL		= getPosASL	 	 _Player;
private _Dir		= getDir	 	 _Player;
private _loadOut 	= getUnitLoadout _Player;
private _group		= group 		 _player;
private _clone		= _group createUnit [_type, _Pos, [], 0, "CAN_COLLIDE"];
private _leader		= (leader _group == _Player);


_clone setUnitLoadOut _loadOut;
_clone setPosASL _PosASL;
_clone setDir	 _Dir;

if(_leader)then{[_group, _clone] remoteExec ["selectLeader", (groupOwner _group)]};

[_Player, _clone] call Sub_Fnc_transferCurator;

[_clone, _Player]