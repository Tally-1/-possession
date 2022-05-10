
	params ["_man"];
	if(!alive _man 
	or isNil "_man"
	or !(_man isKindOf "man"))exitWith{};

	private _initialized = _man getVariable "Deebs_initDone";
	if(!isNil "_initialized")exitWith{};

	_man setVariable ["Deebs_initDone", true, true];
	_man setVariable ["Deebs_Side", (side _man), true];

	_man addMpEventHandler ["MPKilled", {
		params ["_unit", "_killer", "_instigator", "_useEffects"];
		
		_unit setVariable ["Deebs_initDone", nil, true];
		_unit removeAllMpEventHandlers "MPKilled";
		
		if(isPlayer _unit)then	{
									private _owner 	 = Owner _unit;
									private _local	 = local _unit;
									private _newUnit = [_unit] call Tally_Fnc_getNearestSwitchable;
									setPlayable _newUnit;
									selectPlayer _newUnit;
									if(_local)
									then{
											hint "You died";
											systemChat "You died";
											if(alive _newUnit)
											then{[_newUnit] spawn Tally_Fnc_TransferControl}
											else{
													if(isNull _newUnit) then hint "no units found";
																									
												};
										}
									else{
											/*["serverMessage: 'You died'"] remoteExecCall ["hint", _owner];*/
											[_newUnit] remoteExec ["Tally_Fnc_TransferControl", _owner];
										};
								};

				}];

	