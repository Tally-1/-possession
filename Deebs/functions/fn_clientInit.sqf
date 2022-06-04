// https://community.bistudio.com/wiki/Arma_3:_Respawn#Respawn_Types
waituntil {isTouchingGround player};
Deebs_myGear 		= getUnitLoadOut player;
Deebs_myCurator		= getAssignedCuratorLogic player;
Deebs_SwitchOnDeath	= true;

[] spawn Sub_Fnc_InitPlayer;
[] spawn Sub_Fnc_initAllAlways; 
[] call  Sub_Fnc_respawnEH; 

private _respawnType	= getMissionConfigValue ["respawn",0];
if!(_respawnType in [2,3])
then{
			private _Red		= "<t color='#ff0000'>";
			private _aqua		= "<t color='#7fffd4'>";
			private _bWhite		= "<t color='#d0f0f5'>";
			private _large      = '<t size="2.0">';
			private _medium     = '<t size="1.5">';
			private _closePtxt	= "</t>";
			private _txtString	= [
									_large, _aqua, "SUBSUME: <br/>",_closePtxt,_closePtxt, "<br/>",
									_medium, _Red, "!Cannot spawn as a group / side-member! <br/><br/>", _closePtxt,_closePtxt,
									_bWhite, "In order to take over units on death using ",_aqua, "Subsume", _closePtxt, "<br/>",
									"set respawn to custom position or position of death", _closePtxt
								] joinString "";



			Hint parseText(_txtString);
	};