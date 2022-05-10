
	params ["_Vehicle"];
	Private _crew = crew _Vehicle;
	if(count _crew < 1)exitWith{objNull};

	(crew _Vehicle # 0)