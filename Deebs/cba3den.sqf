
[
	"Deebs_transferRange",
	"SLIDER",
	["Switch distance", "Distance you can switch between units"],
	"Subsume",
	[
		150,   //minimum 
		1500,  //max
		450,   //default
		0,
		false
	],
	1
] call cba_settings_fnc_init;

[
	"Deebs_3d_tip",
	"CHECKBOX",
	["3D tooltip", "3D tooltip on switchable units. The text will read 'AVAILABLE'"],
	"Subsume",
	true
] call cba_settings_fnc_init;

[
	"Deebs_SquadMemberOnDeath",
	"CHECKBOX",
	["Switch On Death", "Switch to a new unit upon death"],
	"Subsume",
	true
] call cba_settings_fnc_init;

[
	"Deebs_DeathSpawn",
	"LIST",
	["Choose unit pool", "Choose who a player can switch to."],
	"Subsume",
	[
		["Group", "Side", "All"],
		["Group", "Side", "All"], 
		0
	]
] call cba_settings_fnc_init;