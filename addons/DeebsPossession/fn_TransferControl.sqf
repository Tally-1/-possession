
	params ["_target"];
	private _cam = 	"camera" camCreate (player ModelToWorld [0, 1, 2]);

	if!(_target == player)then{selectPlayer _target};
	_cam cameraEffect ["internal", "back"];
	_cam camPrepareTarget player;
	_cam camCommitPrepared 0.1;
	waitUntil {camCommitted _cam};

	_cam camPreparePos (_target ModelToWorld [0, 0, 1.5]);
	_cam camPrepareTarget _target;
	_cam camCommitPrepared 1.5;
	waitUntil {camCommitted _cam};
	_cam cameraEffect ["terminate", "back"];
	camDestroy _cam;