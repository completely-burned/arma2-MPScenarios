ScriptName "Config_Barracks.sqf";

//Last modified 10/13/10
//*****************************************************************************************
//Description: Barracks unit configurations.
//*****************************************************************************************
Private["_c","_config","_p","_t","_total","_u"];

//WEST
_u			= ["CZ_Soldier_DES_EP1"];
_c			= [100];
_t			= [4];
_p			= [5];

_u = _u		+ ["CZ_Soldier_RPG_Dst_ACR"];
_c = _c		+ [250];
_t = _t		+ [5];
_p = _p		+ [6];

_u = _u		+ ["CZ_Soldier_AT_DES_EP1"];
_c = _c		+ [250];
_t = _t		+ [5];
_p = _p		+ [6];

// TODO: AA

_u = _u		+ ["CZ_Soldier_MG2_Dst_ACR"];
_c = _c		+ [175];
_t = _t		+ [5];
_p = _p		+ [6];

_u = _u		+ ["CZ_Soldier_MG_DES_EP1"];
_c = _c		+ [175];
_t = _t		+ [5];
_p = _p		+ [6];

_u = _u		+ ["CZ_Soldier_805g_Dst_ACR"];
_c = _c		+ [175];
_t = _t		+ [5];
_p = _p		+ [6];

_u = _u		+ ["CZ_Sharpshooter_DES_ACR"];
_c = _c		+ [185];
_t = _t		+ [6];
_p = _p		+ [7];

_u = _u		+ ["CZ_Soldier_medik_DES_EP1"];
_c = _c		+ [125];
_t = _t		+ [4];
_p = _p		+ [5];

_u = _u		+ ["CZ_Soldier_Engineer_Dst_ACR"];
_c = _c		+ [125];
_t = _t		+ [5];
_p = _p		+ [6];

_u = _u		+ ["CZ_Soldier_Crew_Dst_ACR"];
_c = _c		+ [75];
_t = _t		+ [4];
_p = _p		+ [5];

_u = _u		+ ["CZ_Soldier_Pilot_EP1"];
_c = _c		+ [75];
_t = _t		+ [4];
_p = _p		+ [5];

_u = _u		+ ["CZ_Soldier805_DES_ACR"];
_c = _c		+ [150];
_t = _t		+ [5];
_p = _p		+ [6];

_u = _u		+ ["CZ_Soldier_SL_DES_EP1"];
_c = _c		+ [175];
_t = _t		+ [5];
_p = _p		+ [7];

_u = _u		+ ["CZ_Soldier_Spotter_ACR"];
_c = _c		+ [200];
_t = _t		+ [6];
_p = _p		+ [8];

_u = _u		+ ["CZ_Soldier_Sniper_ACR"];
_c = _c		+ [200];
_t = _t		+ [6];
_p = _p		+ [7];

westBarracksDescriptions = [];
westBarracksFactions = [];
westBarracksImages = [];
westBarracksCrews = [];

_total = Count _u;
for [{_count = 0},{_count < _total},{_count = _count + 1}] do
{
	_config = configFile >> "CfgVehicles" >> (_u Select _count);
	westBarracksDescriptions = westBarracksDescriptions + [GetText (_config >> "displayName")];
	westBarracksFactions = westBarracksFactions + [GetText (_config >> "faction")];
	westBarracksImages = westBarracksImages + [GetText (_config >> "portrait")];
	westBarracksCrews = westBarracksCrews + [1];
};

westBarracksUnits = _u;
westBarracksCosts = _c;
westBarracksMannedCosts = _c;
westBarracksTimes = _t;
westBarracksPoints = _p;

//SPECIAL UNITS - If these classes are changed above they must be updated here too.
WSOLDIERS = ["CZ_Soldier_DES_EP1"];
WMEDICS = ["CZ_Soldier_medik_DES_EP1"];
WCREWS = ["CZ_Soldier_Crew_Dst_ACR"];
WPILOTS = ["CZ_Soldier_Pilot_EP1"];
WSPECOPS = ["CZ_Soldier_Spotter_ACR","CZ_Soldier_Sniper_ACR"];

WSOLDIER = WSOLDIERS Select 0;
WMEDIC = WMEDICS Select 0;
WCREW = WCREWS Select 0;
WPILOT = WPILOTS Select 0;

VGWSOLDIER = WSOLDIER;

soldierUnits = westBarracksUnits + eastBarracksUnits + resistanceBarracksUnits;
soldierUnitCosts = westBarracksCosts + eastBarracksCosts + resistanceBarracksCosts;
soldierUnitDescriptions = westBarracksDescriptions + eastBarracksDescriptions + resistanceBarracksDescriptions;

//*****************************************************************************************
//3/27/7 MM - Created file.
