
	params ["_target", "_objectToDelete", "_camPos"];
	if(isNil "_target"
	or isNull _target)exitWith{["Could not transfer, target is undefined"] call Tally_Fnc_DebugMsg};
	
	[
		(rank _target), 
		(name _target), 
		([(count units (group _target)), " units left in squad"] joinString "")
	] 
	spawn BIS_fnc_infoText;


	private _pos = player ModelToWorld [0, 1, 2];
	if!(isNil "_camPos")then{_pos = _camPos};

	private _cam = "camera" camCreate (_pos);
	private _delete = false;

	if!(_target == player)		then{selectPlayer _target};	
	
	if!(isNil "_objectToDelete")	then{
	if!(isPlayer _objectToDelete)	then{
											_objectToDelete disableAI "all";
											[_objectToDelete] remoteExec ["hideObjectGlobal", 0]; 
											_delete = true;
										}};
	
	_cam cameraEffect ["internal", "back"];
	_cam camPrepareTarget player;
	_cam camCommitPrepared 0.1;
	waitUntil {camCommitted _cam};

	_cam camPreparePos (_target ModelToWorld [0, 0, 1.5]);
	_cam camPrepareTarget _target;
	_cam camCommitPrepared 2;

	waitUntil {camCommitted _cam};
	_cam cameraEffect ["terminate", "back"];
	camDestroy _cam;

	[] spawn Tally_Fnc_reApplyZeus;

	if(_delete)then{deleteVehicle _objectToDelete};

	true