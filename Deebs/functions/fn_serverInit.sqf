// [] call Sub_Fnc_CBA_KeyBinds;
[] call Sub_Fnc_3Dtip;

if!(isServer)exitWith{[] spawn Sub_Fnc_clientInit};

[] call Sub_Fnc_initSettings;

// [] call Sub_Fnc_setClonePos;
// [] call Sub_Fnc_CuratorPossessionInit;

[] spawn Sub_Fnc_initAllAlways;
["Subsume server loaded"] call Sub_Fnc_DebugMsg;
if(hasInterface)then{[] spawn Sub_Fnc_clientInit};

true; 