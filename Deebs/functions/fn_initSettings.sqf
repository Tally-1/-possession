if(isNil "Deebs_transferRange")		then{Deebs_transferRange		= 1000};
if(isNil "Deebs_SquadMemberOnDeath")then{Deebs_SquadMemberOnDeath	= true};
if(isNil "Deebs_SelectAllSides")	then{Deebs_SelectAllSides		= false};
if(isNil "Deebs_DeathSpawn")		then{Deebs_DeathSpawn			= "side"};//can be: "none", "group", "side", "All"

MissionNameSpace setVariable["Deebs_transferRange", 		Deebs_transferRange, 		true];
MissionNameSpace setVariable["Deebs_SquadMemberOnDeath",	Deebs_SquadMemberOnDeath, 	true];
MissionNameSpace setVariable["Deebs_SelectAllSides", 		Deebs_SelectAllSides, 		true];
MissionNameSpace setVariable["Deebs_DeathSpawn", 			Deebs_DeathSpawn, 			true];