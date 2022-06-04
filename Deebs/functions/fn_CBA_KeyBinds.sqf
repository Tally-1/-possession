// Sub_Fnc_CBA_KeyBinds
// DOCUMENTATION:
// https://github-wiki-see.page/m/CBATeam/CBA_A3/wiki/Keybinding
// https://community.bistudio.com/wiki/DIK_KeyCodes

private _modName 		= "Subsume";
private _actionId 		= "SwitchKey";
private _displayName 	= ["Switch Key", "Key to press when aiming at the unit you wish to switch to"];
private _downCode 		= {[] call Sub_Fnc_selectCursorObject};
private _upCode 		= "";
private _defaultKeybind = [35, [false, false, false]];

[
	_modName,		//Name of the registering mod [String]
	_actionId,	  	//Id of the key action. [String]
	_displayName, 	//Pretty name, or an array of strings for the pretty name and a tool tip [String]
	_downCode,		//Code for down event, empty string for no code. [Code]
	_upCode,		//Code for up event, empty string for no code. [Code]
	_defaultKeybind //The keybinding data in the format [DIK(number), [shift, ctrl, alt]] [Array]
]
call CBA_fnc_addKeybind;

_actionId 		= "deathSwitchToggle";
_displayName 	= ["Death Toggle", "Toggle switching on death"];
_downCode 		= {[] call Sub_Fnc_deathToggle};
_defaultKeybind = [35, [true, false, false]];


[
	_modName,		
	_actionId,	  	
	_displayName, 	
	_downCode,		
	_upCode,		
	_defaultKeybind 
]
call CBA_fnc_addKeybind;

// ["KeyBind function executed..."] call Sub_Fnc_DebugMSG;