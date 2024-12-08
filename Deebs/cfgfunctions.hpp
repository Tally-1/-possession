class CfgFunctions
{
	class Sub
	{
		class DeebsPossession 
		{

			class DebugMsg 				{file = "\Deebs\functions\fn_DebugMsg.sqf"};
			class InitMan				{file = "\Deebs\functions\fn_InitMan.sqf"};
			class getNearestSwitchable	{file = "\Deebs\functions\fn_getNearestSwitchable.sqf"};
			class InitPlayer			{file = "\Deebs\functions\fn_InitPlayer.sqf"};
			class initAllAlways			{file = "\Deebs\functions\fn_initAllAlways.sqf"};
			class selectCursorObject	{file = "\Deebs\functions\fn_selectCursorObject.sqf"};
			class getTargetUnit			{file = "\Deebs\functions\fn_getTargetUnit.sqf"};
			class getCrewMember			{file = "\Deebs\functions\fn_getCrewMember.sqf"};
			class TransferControl		{file = "\Deebs\functions\fn_TransferControl.sqf"};
			class setClonePos			{file = "\Deebs\functions\fn_setClonePos.sqf"};
			class CuratorPossessionInit	{file = "\Deebs\functions\fn_CuratorPossessionInit.sqf"};
			class ClonePlayer			{file = "\Deebs\functions\fn_ClonePlayer.sqf"};
			class initClone				{file = "\Deebs\functions\fn_initClone.sqf"};
			class AssignToCloneGroup	{file = "\Deebs\functions\fn_AssignToCloneGroup.sqf"};
			class getGroupOwnerShip		{file = "\Deebs\functions\fn_getGroupOwnerShip.sqf"};
			class MoveToClonePos		{file = "\Deebs\functions\fn_MoveToClonePos.sqf"};
			class clientInit			{file = "\Deebs\functions\fn_clientInit.sqf"};
			class serverInit			{file = "\Deebs\functions\fn_serverInit.sqf"; postInit = 1};
			class truePlayerLeader		{file = "\Deebs\functions\fn_truePlayerLeader.sqf"}; 
			class deathEH				{file = "\Deebs\functions\fn_deathEH.sqf"};
			class transferCurator		{file = "\Deebs\functions\fn_transferCurator.sqf"};
			class IsSwitchable			{file = "\Deebs\functions\fn_IsSwitchable.sqf"};
			class onPlayerDeath			{file = "\Deebs\functions\fn_onPlayerDeath.sqf"};
			class replaceSpawnedUnit	{file = "\Deebs\functions\fn_replaceSpawnedUnit.sqf"};
			class respawnEH				{file = "\Deebs\functions\fn_respawnEH.sqf"};
			class initSettings			{file = "\Deebs\functions\fn_initSettings.sqf"};
			class reApplyZeus			{file = "\Deebs\functions\fn_reApplyZeus.sqf"};
			class CBA_KeyBinds			{file = "\Deebs\functions\fn_CBA_KeyBinds.sqf"; preInit = 1};
			class deathToggle			{file = "\Deebs\functions\fn_deathToggle.sqf"};
			class orderByRank			{file = "\Deebs\functions\fn_orderByRank.sqf"};
			class 3Dtip					{file = "\Deebs\functions\fn_3Dtip.sqf"};
			
		};
	};
};

class Extended_PreInit_EventHandlers {
    class subsume_preInit_event {
        init = "call compile preprocessFileLineNumbers '\Deebs\CBA3den.sqf'";
    };
};