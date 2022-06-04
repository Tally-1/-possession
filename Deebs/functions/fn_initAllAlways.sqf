if!(isNil "ISrunning")exitWith{};

ISrunning = true;
while {sleep 1; true} 
do {
	{
		[_x] call Sub_Fnc_InitMan;
	}forEach allUnits;
	sleep 9; 
   }