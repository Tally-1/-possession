private _textStart	= "Death switching: ";
private _textEnd	= "OFF";
private _color 		= "#d52e18";

if(Deebs_SwitchOnDeath)
then{Deebs_SwitchOnDeath = false}
else{
	Deebs_SwitchOnDeath = true;
	_textEnd	= "ON";
	_color 		= "#99e975";
};

private _text 	= [_textStart, _textEnd] joinString "";
private _format	= ["<t shadow = '2' color='",_color,"' >%1</t>"] joinString "";

[
	[
		[_text, _format, 0]
	],
	0, safeZoneY + safeZoneH / 2
] spawn BIS_fnc_typeText;