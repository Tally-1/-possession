addMissionEventHandler ["EntityRespawned", {
	params ["_newEntity", "_oldEntity"];
	
	if!(Deebs_SquadMemberOnDeath)exitWith{[] spawn Tally_Fnc_reApplyZeus};
	if!(_newEntity == player)exitWith{[] spawn Tally_Fnc_reApplyZeus};
	
	private _corpsePos = _oldEntity ModelToWorld [0, 1, 2];
	private _newUnit = [_newEntity, _corpsePos] call Tally_Fnc_getNearestSwitchable;

	if(isNull _newUnit)exitwith{[] spawn Tally_Fnc_reApplyZeus};
	
	[_newUnit, _newEntity, _corpsePos] spawn Tally_Fnc_TransferControl;
}];