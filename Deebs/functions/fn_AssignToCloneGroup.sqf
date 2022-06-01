
params ["_Unit"];
private _group = Deebs_CloneGroup_C;

switch (side _Unit) do
	{
		case blufor: 		{ _group = Deebs_CloneGroup_B};
		case opFor: 		{ _group = Deebs_CloneGroup_O};
		case independent: 	{ _group = Deebs_CloneGroup_I};
		default 			{ _group = Deebs_CloneGroup_C};
	};

/*on a dedicated server the "join" command is rather buggy,
 hence the repetition / sleep.*/
/*
*/
private _localGroup = createGroup (side _unit);
[_Unit] join 	_localGroup;
_Unit 	joinAs  [_localGroup, 1];



[_Unit] join _group;
sleep 0.1;
if!(_unit in (units _group))then{[_Unit] remoteExecCall ["join", (groupOwner _group)]};
sleep 0.1;
if!(_unit in (units _group))then{[_Unit] remoteExecCall ["join", (Owner _Unit)]};
sleep 0.1;
if!(_unit in (units _group))then{[_Unit] remoteExecCall ["join", 2]};
sleep 0.1;
if!(_unit in (units _group))then{[_Unit] remoteExecCall ["join", 0]};
sleep 0.1;
if(_unit in (units _group))exitWith{};

["Could not assign to cloneGroup"]call Tally_fnc_debugMsg;
true