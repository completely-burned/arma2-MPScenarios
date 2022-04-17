ScriptName "Config_Teams.sqf";

//Last modified 11/1/10
//*****************************************************************************************
//Description: Defines teams.
//*****************************************************************************************
Private["_a","_ai","_c","_count","_d","_h","_i","_l","_n","_total"];
//ToDo: Localize _d variables only.

Private["_TEAMTYPEAA","_TEAMTYPEAT","_TEAMTYPENORMAL","_TEAMTYPEUNARMED"];
_TEAMTYPENORMAL = BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPENORMAL";
_TEAMTYPEAA = BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPEAA";
_TEAMTYPEAT = BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPEAT";
_TEAMTYPEUNARMED = BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPEUNARMED";

Private["_ARMOR","_INFANTRY","_MECHANIZED","_SPECOPS"];
_ARMOR = Localize "STR_WF_TEAMARM";
_MECHANIZED = Localize "STR_WF_TEAMMECH";
_INFANTRY = Localize "STR_WF_TEAMINF";
_SPECOPS = Localize "STR_WF_TEAMSPEC";

//WEST
_faction = (BIS_WF_Common GetVariable "WestFactions") Select 0;

_n		= ["None"];					//Variable name of team. Also the search name for functions.
_d		= ["None"];					//Name of team that is displayed in UIs. Making it blank will make it unavaible to commander for AI team assignment.
_t		= ["None"];					//Type of team: None, Infantry, SpecOp, Mechanized, Armor, Air.
_ab		= [_TEAMTYPENORMAL];//Ability of team: _TEAMTYPENORMAL, _TEAMTYPEAA, _TEAMTYPEAT. Can be added: _TEAMTYPEAA + _TEAMTYPEAT
_ai		= [false];					//If true it is only available to AI teams.
_f		= [""];						//Name of the BLUFOR/OPFOR sub-faction this team belongs to
_i		= [false];					//Infantry team.
_l		= [false];					//Light vehicles team.
_h		= [false];					//Heavy vehicles team.
_a		= [false];					//Air team.
_u		= [];
_c		= [_u];						//Classnames of units in team.

_n = _n	+ ["Infantry"];
_d = _d	+ [""];
_t = _t + [_INFANTRY];
_ab=_ab + [_TEAMTYPENORMAL];
_ai=_ai	+ [true];
_f = _f	+ [_faction];
_i = _i	+ [true];
_l = _l	+ [false];
_h = _h	+ [false];
_a = _a	+ [false];
_u		= ["CZ_Soldier_DES_EP1"];
_u = _u + ["CZ_Soldier_DES_EP1"];
_u = _u + ["CZ_Soldier_DES_EP1"];
_u = _u + ["CZ_Soldier_DES_EP1"];
_c = _c	+ [_u];

_n = _n	+ ["InfantryFT"];
_d = _d	+ ["Fireteam"];
_t = _t + [_INFANTRY];
_ab=_ab + [_TEAMTYPENORMAL];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [true];
_l = _l	+ [false];
_h = _h	+ [false];
_a = _a	+ [false];
_u		= ["CZ_Soldier805_DES_ACR"];
_u = _u + ["CZ_Soldier_DES_EP1"];
_u = _u + ["CZ_Soldier_RPG_Dst_ACR"];
_u = _u + ["CZ_Soldier_MG2_Dst_ACR"];
_c = _c	+ [_u];

_n = _n	+ ["InfantryAT"];
_d = _d	+ ["AT Fireteam"];
_t = _t + [_INFANTRY];
_ab=_ab + [_TEAMTYPEAT];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [true];
_l = _l	+ [false];
_h = _h	+ [false];
_a = _a	+ [false];
_u		= ["CZ_Soldier805_DES_ACR"];
_u = _u + ["CZ_Soldier_RPG_Dst_ACR"];
_u = _u + ["CZ_Soldier_DES_EP1"];
_u = _u + ["CZ_Soldier_AT_DES_EP1"];
_c = _c	+ [_u];

// TODO: AA
/*
_n = _n	+ ["InfantryAA"];
_d = _d	+ ["AA Fireteam"];
_t = _t + [_INFANTRY];
_ab=_ab + [_TEAMTYPEAA];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [true];
_l = _l	+ [false];
_h = _h	+ [false];
_a = _a	+ [false];
_u		= ["CZ_Soldier805_DES_ACR"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
_u = _u + ["CZ_Soldier_DES_EP1"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
_c = _c	+ [_u];

//Team type with this name must always be present.
_n = _n	+ ["InfantryATAA"];
_d = _d	+ ["AT/AA Fireteam"];
_t = _t + [_INFANTRY];
_ab=_ab + [_TEAMTYPEAA+_TEAMTYPEAT];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [true];
_l = _l	+ [false];
_h = _h	+ [false];
_a = _a	+ [false];
_u		= ["CZ_Soldier805_DES_ACR"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
_u = _u + ["CZ_Soldier_DES_EP1"];
_u = _u + ["CZ_Soldier_RPG_Dst_ACR"];
_c = _c	+ [_u];
*/

_n = _n	+ ["InfantrySupport"];
_d = _d	+ ["Support Team"];
_t = _t + [_INFANTRY];
_ab=_ab + [_TEAMTYPENORMAL];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [true];
_l = _l	+ [false];
_h = _h	+ [false];
_a = _a	+ [false];
_u		= ["CZ_Soldier_Engineer_Dst_ACR"];
_u = _u + ["CZ_Soldier_Engineer_Dst_ACR"];
_u = _u + ["CZ_Soldier_medik_DES_EP1"];
_u = _u + ["CZ_Soldier_medik_DES_EP1"];
_c = _c	+ [_u];

_n = _n	+ ["InfantryWT"];
_d = _d	+ ["Weapons Team"];
_t = _t + [_INFANTRY];
_ab=_ab + [_TEAMTYPENORMAL];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [true];
_l = _l	+ [false];
_h = _h	+ [false];
_a = _a	+ [false];
_u		= ["CZ_Soldier805_DES_ACR"];
_u = _u + ["CZ_Soldier_MG_DES_EP1"];
_u = _u + ["CZ_Soldier_medik_DES_EP1"];
_u = _u + ["CZ_Soldier_MG_DES_EP1"];
_c = _c	+ [_u];

_n = _n	+ ["Sniper"];
_d = _d	+ ["Sniper Team"];
_t = _t + [_SPECOPS];
_ab=_ab + [_TEAMTYPENORMAL];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [true];
_l = _l	+ [false];
_h = _h	+ [false];
_a = _a	+ [false];
_u		= ["CZ_Soldier_Spotter_ACR"];
_u = _u + ["CZ_Soldier_Sniper_ACR"];
_u = _u + ["CZ_Soldier_Spotter_ACR"];
_u = _u + ["CZ_Soldier_Sniper_ACR"];
_c = _c	+ [_u];

_n = _n	+ ["ReconLight"];
_d = _d	+ [GetText (configFile >> "CfgVehicles" >> "M1114_DSK_ACR" >> "displayName")];
_t = _t + [_MECHANIZED];
_ab=_ab + [_TEAMTYPENORMAL];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [false];
_l = _l	+ [true];
_h = _h	+ [false];
_a = _a	+ [false];
_u		= ["M1114_DSK_ACR"];
_u = _u + ["M1114_AGS_ACR"];
_c = _c	+ [_u];

_n = _n	+ ["ReconHeavy"];
_d = _d	+ [GetText (configFile >> "CfgVehicles" >> "Dingo_DST_ACR" >> "displayName")];
_t = _t + [_MECHANIZED];
_ab=_ab + [_TEAMTYPENORMAL];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [false];
_l = _l	+ [true];
_h = _h	+ [false];
_a = _a	+ [false];
_u		= ["Dingo_DST_ACR"];
_u = _u + ["Dingo_GL_DST_ACR"];
_c = _c	+ [_u];

_n = _n	+ ["MechanizedLight"];
_d = _d	+ [GetText (configFile >> "CfgVehicles" >> "T810_Des_ACR" >> "displayName")];
_t = _t + [_MECHANIZED];
_ab=_ab + [_TEAMTYPEUNARMED];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [false];
_l = _l	+ [true];
_h = _h	+ [false];
_a = _a	+ [false];
_u		= ["T810_Des_ACR"];
_c = _c	+ [_u];

_n = _n	+ ["MechanizedMedium"];
_d = _d	+ [GetText (configFile >> "CfgVehicles" >> "T810A_Des_MG_ACR" >> "displayName")];
_t = _t + [_MECHANIZED];
_ab=_ab + [_TEAMTYPENORMAL];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [false];
_l = _l	+ [true];
_h = _h	+ [false];
_a = _a	+ [false];
_u		= ["T810A_Des_MG_ACR"];

_n = _n	+ ["MechanizedHeavy"];
_d = _d	+ [GetText (configFile >> "CfgVehicles" >> "BMP2_Des_ACR" >> "displayName")];
_t = _t + [_MECHANIZED];
_ab=_ab + [_TEAMTYPEAT];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [false];
_l = _l	+ [false];
_h = _h	+ [true];
_a = _a	+ [false];
_u		= ["BMP2_Des_ACR"];
_c = _c	+ [_u];

//Not really a tank team. Just gives an easy "downgrade" option for an armor team until heavy factory is available.
_n = _n	+ ["TankLight"];
_d = _d	+ [GetText (configFile >> "CfgVehicles" >> "BRDM2_Desert_ACR" >> "displayName")];
_t = _t + [_ARMOR];
_ab=_ab + [_TEAMTYPENORMAL];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [false];
_l = _l	+ [true];
_h = _h	+ [false];
_a = _a	+ [false];
_u		= ["BRDM2_Desert_ACR"];
_c = _c	+ [_u];

_n = _n	+ ["TankMedium"];
_d = _d	+ [GetText (configFile >> "CfgVehicles" >> "BMP2_Des_ACR" >> "displayName")];
_t = _t + [_ARMOR];
_ab=_ab + [_TEAMTYPEAT];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [false];
_l = _l	+ [false];
_h = _h	+ [true];
_a = _a	+ [false];
_u		= ["BMP2_Des_ACR"];
_c = _c	+ [_u];

_n = _n	+ ["TankHeavy"];
_d = _d	+ [GetText (configFile >> "CfgVehicles" >> "T72_ACR" >> "displayName")];
_t = _t + [_ARMOR];
_ab=_ab + [_TEAMTYPEAT];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_i = _i	+ [false];
_l = _l	+ [false];
_h = _h	+ [true];
_a = _a	+ [false];
_u		= ["T72_ACR"];
_c = _c	+ [_u];

//Patrol teams for towns.
_n = _n	+ ["LightPatrol"];
_d = _d	+ [""];
_t = _t + [_MECHANIZED];
_ab=_ab + [_TEAMTYPENORMAL];
_ai=_ai	+ [true];
_f = _f	+ [_faction];
_i = _i	+ [false];
_l = _l	+ [true];
_h = _h	+ [false];
_a = _a	+ [false];
_u		= ["M1114_DSK_ACR"];
_u = _u + ["M1114_AGS_ACR"];
_u = _u + ["M1114_DSK_ACR"];
_c = _c	+ [_u];

_n = _n	+ ["MediumPatrol"];
_d = _d	+ [""];
_t = _t + [_MECHANIZED];
_ab=_ab + [_TEAMTYPEAT];
_ai=_ai	+ [true];
_f = _f	+ [_faction];
_i = _i	+ [false];
_l = _l	+ [true];
_h = _h	+ [true];
_a = _a	+ [false];
_u		= ["BRDM2_Desert_ACR"];
_u = _u + ["BMP2_Des_ACR"];
_u = _u + ["BMP2_Des_ACR"];
_c = _c	+ [_u];

_n = _n	+ ["HeavyPatrol"];
_d = _d	+ [""];
_t = _t + [_MECHANIZED];
_ab=_ab + [_TEAMTYPEAT];
_ai=_ai	+ [true];
_f = _f	+ [_faction];
_i = _i	+ [false];
_l = _l	+ [false];
_h = _h	+ [true];
_a = _a	+ [false];
_u		= ["BMP2_Des_ACR"];
_u = _u + ["T72_ACR"];
_u = _u + ["T72_ACR"];
_c = _c	+ [_u];

_total = Count _n;

WestInfantryTeamTypes = [];
WestLightTeamTypes = [];
WestHeavyTeamTypes = [];
WestAirTeamTypes = [];
WestAIOnlyTeamTypes = [];

for [{_count = 0},{_count < _total},{_count = _count + 1}] do
{
	if (_i Select _count) then {WestInfantryTeamTypes = WestInfantryTeamTypes + [_count]};
	if (_l Select _count) then {WestLightTeamTypes = WestLightTeamTypes + [_count]};
	if (_h Select _count) then {WestHeavyTeamTypes = WestHeavyTeamTypes + [_count]};
	if (_a Select _count) then {WestAirTeamTypes = WestAirTeamTypes + [_count]};
	if (_ai Select _count) then {WestAIOnlyTeamTypes = WestAIOnlyTeamTypes + [_count]};
};

WestTeamTemplates = _c;
WestTeamTemplateNames = _n;
WestTeamTemplateDescriptions = _d;
WestTeamTemplateTypes = _t;
WestTeamTemplateAbilities = _ab;
WestTeamTemplateFactions = _f;

//Generate costs for each template.
WestTeamTemplateCosts = [];

{
	_cost = 0;

	{
		_data = [West,"",_x] Call BIS_WF_GetUnitData;
		if (Count _data > 0) then {_cost = _cost + (_data Select 3)};
	} ForEach _x;

	WestTeamTemplateCosts = WestTeamTemplateCosts + [_cost];
} ForEach WestTeamTemplates;

//Generate fast lookup lists for factions.
WestTeamTemplateFactionIndex = [];

//List of factions that exist for this side's team templates.
{
	if (_x != "" && !(_x In WestTeamTemplateFactionIndex)) then {WestTeamTemplateFactionIndex = WestTeamTemplateFactionIndex + [_x]};
} ForEach WestTeamTemplateFactions;

//Construct lists for each faction. This allows fast faction lookups of team names with Find command.
//(Master list may contain multiple teams with same name but different factions.)
WestTeamTemplateNamesByFaction = [];

{
	//Create list of template names for only this faction.
	_list = +WestTeamTemplateNames;
	_total = Count _list;

	for [{_count = 0},{_count < _total},{_count = _count + 1}] do
	{
		//If template belongs to different faction, clear the name. Index will be compatible with master list.
		if ((WestTeamTemplateFactions Select _count) != _x) then
		{
			_list Set [_count,""];
		};
	};

	WestTeamTemplateNamesByFaction = WestTeamTemplateNamesByFaction + [_list];
} ForEach WestTeamTemplateFactionIndex;

//AI commander preferences for AI teams.
_t		= ["InfantryFT"];
_t = _t	+ ["InfantryAT"];
_t = _t	+ ["ReconLight"];
_t = _t	+ ["TankLight"];
_t = _t	+ ["MechanizedLight"];
_t = _t	+ ["ReconLight"];
_t = _t	+ ["TankLight"];
_t = _t	+ ["MechanizedLight"];
_t = _t	+ ["InfantryFT"];
_t = _t	+ ["Sniper"];
_t = _t	+ ["InfantryAT"];
_t = _t	+ ["ReconLight"];
_t = _t	+ ["TankLight"];
_t = _t	+ ["MechanizedLight"];
_t = _t	+ ["InfantryFT"];
_t = _t	+ ["InfantryAT"];
_t = _t	+ ["Sniper"];
WestAITeamTemplates = _t;

//*****************************************************************************************
//9/6/8 MM - Created file.
