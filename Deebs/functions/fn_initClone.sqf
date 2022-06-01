params [
    ["_clone", nil, [objNull]],
    ["_original", nil, [objNull]]
];
private _grp = (group _original);
private _leader	= (leader _grp == _original);

sleep 2;
selectPlayer _clone;
[_original] call Tally_Fnc_MoveToClonePos;
[_original] spawn Tally_Fnc_AssignToCloneGroup;

_original setVariable ["Deebs_MyClone", _clone, true];

if(_leader)then{
					sleep 0.1;/*sleep to allow the selectPlayer command to execute properly*/
					_clone joinAs  [_grp, 1];
					_grp selectLeader _clone;
					if(leader _grp == _clone)exitWith{["Clone is leader"] call Tally_Fnc_DebugMsg;};
					/*If selectLeader command failed, bomb the command until it works! */
					sleep 0.1;
					_grp selectLeader _clone;
					[_grp, _clone] remoteExecCall ["selectLeader", (groupOwner _grp)];
					[_grp, _clone] remoteExecCall ["selectLeader", 0];
					sleep 0.1;					
				};

["Player cloned"] call Tally_Fnc_DebugMsg;
true