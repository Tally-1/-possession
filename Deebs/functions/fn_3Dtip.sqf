addMissionEventHandler ["Draw3D", {

	if!(Deebs_3d_tip)									exitWith{};
	private _target = (crew cursorObject # 0);
	if(isNil "_target") 								exitWith{};
	if!(_target isKindOf "man")							exitWith{};
	if((player distance _target) > 200)					exitWith{};
	if!([player, _target] call Sub_Fnc_IsSwitchable)	exitWith{};

	private _targetPos = ASLToAGL eyePos _target;
	_targetPos = [(_targetPos # 0), (_targetPos # 1), (_targetPos # 2) + 0.7];

	private _name = name _target;


	drawIcon3D 	[
					"",					//texture (icon type)
					[0.4,0.85,0.1,1],	//color
					_targetPos,			//position
					0.2, 				//size X
					0.2, 				//size Y
					0, 	 				//angle
					'AVAILABLE',		//text
					2, 					//shadow
					0.035				//textSize
				];

	}];