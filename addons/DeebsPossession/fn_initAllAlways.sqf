while {sleep 1; true} 
do {
	{
		[_x] call Tally_Fnc_InitMan;
	}forEach allUnits;
	{
		[] remoteExecCall ["Tally_Fnc_InitPlayer", _x];
	}forEach allPlayers;
	sleep 9; 
   }