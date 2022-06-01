
{
	_x addEventHandler ["CuratorObjectPlaced", {
	params ["_curator", "_entity"];
	if (_entity isKindOf "man")
	then{
			[_entity] call Tally_Fnc_InitMan;
		};
	}];
}forEach allCurators