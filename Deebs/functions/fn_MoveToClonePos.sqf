
params ["_unit"];
private _clonePos = (selectRandom (missionNamespace getVariable "Deebs_ClonePositions"));
_unit setPosASL 	_clonePos;
_unit allowDammage 	false;
_unit disableAI 	"all";

{_x removeCuratorEditableObjects [[_unit], false]}forEach allCurators;

_clonePos