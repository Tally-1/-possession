params[
	["_man", nil, [objNull]]
];
_man addEventHandler ["Killed", {
params ["_unit", "_killer", "_instigator", "_useEffects"];
_unit setVariable ["Deebs_initDone", nil, true];
_unit removeAllEventHandlers "Killed";
if(player == _unit) then {[_unit] call Tally_fnc_onPlayerDeath};
}];