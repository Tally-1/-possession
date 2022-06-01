[] call Tally_fnc_CBA_KeyBinds;

if!(isServer)exitWith{[] spawn Tally_Fnc_clientInit};

[] call Tally_Fnc_initSettings;

// [] call Tally_Fnc_setClonePos;
// [] call Tally_Fnc_CuratorPossessionInit;

[] spawn Tally_Fnc_initAllAlways;
["Subsume server loaded"] call Tally_Fnc_DebugMsg;
if(hasInterface)then{[] spawn Tally_Fnc_clientInit};

true; 