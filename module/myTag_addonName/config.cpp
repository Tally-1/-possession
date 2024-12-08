class CfgPatches
{
	class myTag_addonName
	{
		units[] = {"myTag_ModuleNuke"};
		requiredVersion = 1.0;
		requiredAddons[] = {"A3_Modules_F"};
	};
};

class CfgFactionClasses
{
	class NO_CATEGORY;
	class myTag_explosions: NO_CATEGORY
	{
		displayName = "Explosions";
	};
};

#include "cfgVehicles.cpp"
#include "cfgFunctions.hpp"