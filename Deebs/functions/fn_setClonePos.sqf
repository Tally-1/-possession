
Deebs_CloneBuilding = createVehicle ["Land_Cargo_Tower_V2_F", [0,0,0]/*[0,0,3000]*/, [], 0, "CAN_COLLIDE"];
Deebs_CloneBuilding setPosASLW [0,0,3000];
Deebs_CloneBuilding allowDammage false;
Deebs_ClonePositions = [];
private _xx = -5;
private _yy = -5;
private _zz =  0;

for "_I"from 1 to 200 do {
							if(_xx == 6)
							then{
									_xx = -5;
									_yy = _yy + 1;
								};

							if(_yy == 6)
							then{
									_xx = -5;
									_yy = -5;
									_zz = 2.5;
								};
							Deebs_ClonePositions pushbackUnique (Deebs_CloneBuilding modelToWorldWorld[_xx,_yy,_zz]);
							_xx = _xx + 1;
						 };

MissionNameSpace setVariable["Deebs_ClonePositions", Deebs_ClonePositions, true];

Deebs_CloneGroup_B 	= createGroup blufor;
Deebs_CloneGroup_O 	= createGroup opFor;
Deebs_CloneGroup_I 	= createGroup independent;
Deebs_CloneGroup_C 	= createGroup civilian;

MissionNameSpace setVariable["Deebs_CloneGroup_B", 		Deebs_CloneGroup_B, true];
MissionNameSpace setVariable["Deebs_CloneGroup_O",		Deebs_CloneGroup_O, true];
MissionNameSpace setVariable["Deebs_CloneGroup_I", 		Deebs_CloneGroup_I, true];
MissionNameSpace setVariable["Deebs_CloneGroup_C", 		Deebs_CloneGroup_C, true];

Deebs_CloneGroups = [Deebs_CloneGroup_B, Deebs_CloneGroup_O, Deebs_CloneGroup_I, Deebs_CloneGroup_C];
{
	private _unit = _x createUnit ["B_officer_F", [0,0,0], [], 0, "Can_Collide"];
	[_unit] call Sub_Fnc_MoveToClonePos;
	hideObjectGlobal _unit;
}forEach Deebs_CloneGroups;
