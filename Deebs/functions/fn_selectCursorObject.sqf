
	private _cursorTarget 	= cursorObject;
	private _target 			= objNull;
			
	if(!IsNil "_cursorTarget"
	&&{_cursorTarget isKindOf "land"
	or _cursorTarget isKindOf "air"
	&&{!(isAutonomous _cursorTarget)}})
	then{
			_target = _cursorTarget;
		}
	else{
			if(!IsNil "_cursorTarget"
			&&{	 (objectParent _cursorTarget) isKindOf "land"
			or  	 (objectParent _cursorTarget) isKindOf "air"
			&&{!(isAutonomous (objectParent _cursorTarget))}})
			then{
					_target = (objectParent _cursorTarget);
				};
		};

	_target = [_target] call Sub_Fnc_getTargetUnit;
	if(isNull _target)exitWith{hint "Cannot transfer conciousness"};

	[_target] spawn Sub_Fnc_TransferControl; 
	