params["_unitArr"];
private _privates 		= [];
private _Corporals 		= [];
private _Sergeants 		= [];
private _Lieutenants 	= [];
private _Captains 		= [];
private _Majors 		= [];
private _Colonels 		= [];

private _newArr 		= [];

{
		
	switch (rankId _x) do
	{
		case 0: { _privates 	pushBack _x };
		case 1: { _Corporals 	pushBack _x };
		case 2: { _Sergeants 	pushBack _x };
		case 3: { _Lieutenants 	pushBack _x };
		case 4: { _Captains 	pushBack _x };
		case 5: { _Majors 		pushBack _x };
		case 6: { _Colonels 	pushBack _x };
	};

} forEach _unitArr;

{_newArr pushBackUnique _x}	forEach _Colonels;
{_newArr pushBackUnique _x}	forEach _Majors;
{_newArr pushBackUnique _x}	forEach _Captains;
{_newArr pushBackUnique _x}	forEach _Lieutenants;
{_newArr pushBackUnique _x}	forEach _Sergeants;
{_newArr pushBackUnique _x}	forEach _Corporals;
{_newArr pushBackUnique _x}	forEach _privates;

_newArr