// https://community.bistudio.com/wiki/Arma_3:_Respawn#Respawn_Types
params [
	["_unit", nil, [objNull]]
];
private _newUnit 	 	= [_unit] call Tally_Fnc_getNearestSwitchable;
private _respawnType 	= getMissionConfigValue ["respawn",0];
private _script 	 	= "";
private _noRespawnTypes	= [	0,   //disabeled
							1,  //bird
							4, //group
							5 //side
						  ];
private _spawnTypes = [2,3];

// If respawn is disabeled, or is set to existing units
if(_respawnType in _noRespawnTypes)
then{
	selectPlayer _newUnit;
	_script = [_newUnit] spawn Tally_Fnc_TransferControl;
};

if(_respawnType in _spawnTypes)
then{
		_unit setVariable ["nextUnit", _newUnit];
};



//Wait until controll of new unit is achieved before transferring Zeus to new unit.
[_script] 
spawn {
params["_script"];
if!(typeName _script == "Script")exitWith{};
if(isNil "Deebs_myCurator")		 exitWith{};
waitUntil{scriptDone _script};
[Deebs_myCurator] 			remoteExeccall ["unassignCurator", 	[2, player]];
[player, Deebs_myCurator] 	remoteExeccall ["assignCurator", 	[2, player]];
};
