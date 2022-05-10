//Adds a Key-bind for Unit-transfer

if(isNil "MyDSPeventHandler")
then{MyDSPeventHandler = -1};
if(MyDSPeventHandler > -1)then{findDisplay 46 displayRemoveEventHandler ["keyDown",MyDSPeventHandler]};
MyDSPeventHandler = (findDisplay 46) displayAddEventHandler 
["KeyDown", "
			private _Pressed = false;
			if ((_this # 1) == 35) then {[] call Tally_Fnc_selectCursorObject; _Pressed = true};
_Pressed"];

	