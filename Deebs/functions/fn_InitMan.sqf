
	params ["_man"];
	if(!alive _man 
	or isNil "_man"
	or !(_man isKindOf "man"))exitWith{};

	private _initialized = _man getVariable "Deebs_initDone";
	if(!isNil "_initialized")exitWith{};
	private _respawnType 	= getMissionConfigValue ["respawn",0];

	_man setVariable ["Deebs_initDone", true, true];
	_man setVariable ["Deebs_Side", (side _man), true];
	
	// [_man] call Sub_Fnc_deathEH;


/*
	if(_respawnType in [2,3])
	then{[_man] call Sub_Fnc_respawnEH};

	*/