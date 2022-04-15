ScriptName "Config_Barracks.sqf";

//Last modified 10/13/10
//*****************************************************************************************
//Description: Barracks unit configurations.
//*****************************************************************************************
Private["_c","_config","_p","_t","_total","_u"];

//WEST
_u			= ["BAF_Soldier_MTP"];
_c			= [100];
_t			= [4];
_p			= [5];

_u = _u		+ ["BAF_Soldier_AT_DDPM"];
_c = _c		+ [175];
_t = _t		+ [5];
_p = _p		+ [6];

_u = _u		+ ["BAF_Soldier_HAT_DDPM"];
_c = _c		+ [200];
_t = _t		+ [6];
_p = _p		+ [7];

_u = _u		+ ["BAF_Soldier_AA_DDPM"];
_c = _c		+ [200];
_t = _t		+ [6];
_p = _p		+ [7];

_u = _u		+ ["BAF_Soldier_AR_DDPM"];
_c = _c		+ [150];
_t = _t		+ [5];
_p = _p		+ [6];

_u = _u		+ ["BAF_Soldier_MG_DDPM"];
_c = _c		+ [150];
_t = _t		+ [5];
_p = _p		+ [6];

_u = _u		+ ["BAF_Soldier_GL_DDPM"];
_c = _c		+ [150];
_t = _t		+ [5];
_p = _p		+ [6];

_u = _u		+ ["BAF_Soldier_Marksman_DDPM"];
_c = _c		+ [175];
_t = _t		+ [6];
_p = _p		+ [7];

_u = _u		+ ["BAF_Soldier_Medic_DDPM"];
_c = _c		+ [125];
_t = _t		+ [4];
_p = _p		+ [5];

_u = _u		+ ["BAF_Soldier_EN_DDPM"];
_c = _c		+ [125];
_t = _t		+ [5];
_p = _p		+ [6];

_u = _u		+ ["BAF_crewman_DDPM"];
_c = _c		+ [75];
_t = _t		+ [4];
_p = _p		+ [5];

_u = _u		+ ["BAF_Pilot_DDPM"];
_c = _c		+ [75];
_t = _t		+ [4];
_p = _p		+ [5];

_u = _u		+ ["BAF_Soldier_TL_DDPM"];
_c = _c		+ [110];
_t = _t		+ [5];
_p = _p		+ [6];

_u = _u		+ ["BAF_Soldier_SL_DDPM"];
_c = _c		+ [125];
_t = _t		+ [5];
_p = _p		+ [7];

_u = _u		+ ["BAF_Soldier_spotter_MTP"];
_c = _c		+ [200];
_t = _t		+ [7];
_p = _p		+ [8];

_u = _u		+ ["BAF_Soldier_SniperH_MTP"];
_c = _c		+ [200];
_t = _t		+ [7];
_p = _p		+ [8];

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
WSOLDIERS = ["BAF_Soldier_MTP"];
WMEDICS = ["BAF_Soldier_Medic_DDPM"];
WCREWS = ["BAF_crewman_DDPM"];
WPILOTS = ["BAF_Pilot_DDPM"];
WSPECOPS = ["BAF_Soldier_spotter_MTP","BAF_Soldier_SniperH_MTP"];

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
