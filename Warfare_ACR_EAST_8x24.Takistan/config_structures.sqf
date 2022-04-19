ScriptName "Config_Structures.sqf";

//Last modified 10/13/10
//*****************************************************************************************
//Description: Base structure configurations.
//*****************************************************************************************

//_v - variable name
//_n - building classname
//_d - description (translated).
//_f - Faction that structure belongs to and/or faction units structure can build.
//_c - cost (in supplies), for stationary defenses cost is in money.
//_t - time to build
//_i - Image on construction menu.
//_p - Probability of AI commander creating structure (per minute).
//_pt - Probability of AI creating structure (per minute) in a town.
//_s - script executed to build
//_a - action added to player when in range
//_dir - direction from structure to place a unit created by it.
//_dis - distance from structure to place a unit created by it.

//WEST STRUCTURES
_v			= ["Headquarters"];
_n			= ["M1130_HQ_unfolded_EP1"];
_d			= [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f			= [BIS_WF_Common GetVariable "WestFactions"];
_c			= [100];
_t			= [30];
_i			= ["\CA\Warfare2\Images\con_hq.paa"];
_p			= [100];
_s			= ["HQSite"];
_a			= [corePath + "Client\Action\Action_Headquarters.sqs"];
_dis		= [15];
_dir		= [0];
_h			= [3];

_v = _v		+ ["Barracks"];
_n = _n		+ ["US_WarfareBBarracks_EP1"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [100];
_t = _t		+ [20];
_i = _i		+ ["\CA\Warfare2\Images\con_barracks.paa"];
_p = _p		+ [400];
_s = _s		+ ["SmallSite"];
_a = _a		+ [corePath + "Client\Action\Action_Barracks.sqs"];
_dis = _dis	+ [18];
_dir = _dir	+ [90];
_h = _h		+ [3];

_v = _v		+ ["Light"];
_n = _n		+ ["US_WarfareBLightFactory_EP1"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [400];
_t = _t		+ [30];
_i = _i		+ ["\CA\Warfare2\Images\con_light.paa"];
_p = _p		+ [100];
_s = _s		+ ["MediumSite"];
_a = _a		+ [corePath + "Client\Action\Action_LightFactory.sqs"];
_dis = _dis	+ [20];
_dir = _dir	+ [90];
_h = _h		+ [4.5];

_v = _v		+ ["Heavy"];
_n = _n		+ ["US_WarfareBHeavyFactory_EP1"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [1000];
_t = _t		+ [40];
_i = _i		+ ["\CA\Warfare2\Images\con_heavy.paa"];
_p = _p		+ [30];
_s = _s		+ ["MediumSite"];
_a = _a		+ [corePath + "Client\Action\Action_HeavyFactory.sqs"];
_dis = _dis	+ [20];
_dir = _dir	+ [90];
_h = _h		+ [4];

_v = _v		+ ["Aircraft"];
_n = _n		+ ["US_WarfareBAircraftFactory_EP1"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [2000];
_t = _t		+ [50];
_i = _i		+ ["\CA\Warfare2\Images\con_aircraft.paa"];
_p = _p		+ [15];
_s = _s		+ ["SmallSite"];
_a = _a		+ [corePath + "Client\Action\Action_AircraftFactory.sqs"];
_dis = _dis	+ [21];
_dir = _dir	+ [90];
_h = _h		+ [5.5];

_v = _v		+ ["ServicePoint"];
_n = _n		+ ["US_WarfareBVehicleServicePoint_EP1"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [200];
_t = _t		+ [30];
_i = _i		+ ["\CA\Warfare2\Images\con_light.paa"];
_p = _p		+ [35];
_s = _s		+ ["VehicleServicePointSite"];
_a = _a		+ [""];
_dis = _dis	+ [21];
_dir = _dir	+ [90];
_h = _h		+ [5.5];

for [{_count = Count _v - 1},{_count >= 0},{_count = _count - 1}] do
{
	Call Compile Format["WEST%1TYPE = %2",_v Select _count,_count];
};

WESTAIRPORTTYPE = Count _v;
WESTDEPOTTYPE = Count _v + 1;
WESTMHQNAME = "M1130_CV_EP1";
WESTFLAGPOLE = "\ca\data_baf\flag_unionjack_co.paa";
WESTCONSTRUCTIONSITE1 = "Land_Misc_Cargo1E_EP1";
WESTCONSTRUCTIONSITE2 = "Land_Misc_Cargo1E_EP1";

westStructures = _v;
westStructureNames = _n;
westStructureDescriptions = _d;
westStructureFactions = _f;
westStructureCosts = _c;
westStructureTimes = _t;
westStructureImages = _i;
westStructureChances = _p;
westStructureDistances = _dis;
westStructureDirections = _dir;
westStructureScripts = _s;
westStructureActions = _a;
westStructureHeights = _h;

//Note that cost of defenses is in money instead of supplies.
//WEST STATIONARY DEFENSES
_v			= ["DSHKM"];
_n			= ["DSHKM_CZ_EP1"];
_d			= [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f			= [BIS_WF_Common GetVariable "WestFactions"];
_c			= [100];
_t			= [0];
_i			= ["\CA\Warfare2\Images\con_mg_nest.paa"];
_p			= [25];
_pt			= [5];
_s			= ["StationaryDefense"];
_a			= [""];
_dis		= [0];
_dir		= [0];
_h			= [0];

_v = _v		+ ["AGS"];
_n = _n		+ ["AGS_CZ_EP1"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [300];
_t = _t		+ [0];
_i = _i		+ ["\CA\Warfare2\Images\con_gl.paa"];
_p = _p		+ [25];
_pt = _pt	+ [4];
_s = _s		+ ["StationaryDefense"];
_a = _a		+ [""];
_dis = _dis	+ [0];
_dir = _dir	+ [0];
_h = _h		+ [0];

_v = _v		+ ["Rbs70"];
_n = _n		+ ["Rbs70_ACR"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [500];
_t = _t		+ [0];
_i = _i		+ ["\CA\Warfare2\Images\con_aa_pod.paa"];
_p = _p		+ [40];
_pt = _pt	+ [1];
_s = _s		+ ["StationaryDefense"];
_a = _a		+ [""];
_dis = _dis	+ [0];
_dir = _dir	+ [0];
_h = _h		+ [0];

_v = _v		+ ["Mortar"];
_n = _n		+ ["2b14_82mm_CZ_EP1"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [750];
_t = _t		+ [0];
_i = _i		+ ["\CA\Warfare2\Images\con_gun.paa"];
_p = _p		+ [25];
_pt = _pt	+ [0];
_s = _s		+ ["Mortar"];
_a = _a		+ [""];
_dis = _dis	+ [0];
_dir = _dir	+ [0];
_h = _h		+ [0];

_v = _v		+ ["M119"];
_n = _n		+ ["M119_US_EP1"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [2500];
_t = _t		+ [0];
_i = _i		+ ["\CA\Warfare2\Images\con_gun.paa"];
_p = _p		+ [70];
_pt = _pt	+ [0];
_s = _s		+ ["StationaryDefense"];
_a = _a		+ [""];
_dis = _dis	+ [0];
_dir = _dir	+ [0];
_h = _h		+ [0];

_v = _v		+ ["SmallBagWall"];
_n = _n		+ ["Land_BagFenceShort"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [5];
_t = _t		+ [0];
_i = _i		+ ["\CA\Warfare2\Images\con_wall1.paa"];
_p = _p		+ [0];
_pt = _pt	+ [0];
_s = _s		+ ["StationaryDefense"];
_a = _a		+ [""];
_dis = _dis	+ [0];
_dir = _dir	+ [0];
_h = _h		+ [0];

_v = _v		+ ["BagWall"];
_n = _n		+ ["Land_BagFenceLong"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [10];
_t = _t		+ [0];
_i = _i		+ ["\CA\Warfare2\Images\con_wall2.paa"];
_p = _p		+ [0];
_pt = _pt	+ [0];
_s = _s		+ ["StationaryDefense"];
_a = _a		+ [""];
_dis = _dis	+ [0];
_dir = _dir	+ [0];
_h = _h		+ [0];

_v = _v		+ ["RoundBagWall"];
_n = _n		+ ["Land_BagFenceRound"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [15];
_t = _t		+ [0];
_i = _i		+ ["\CA\Warfare2\Images\con_wall2.paa"];
_p = _p		+ [0];
_pt = _pt	+ [0];
_s = _s		+ ["StationaryDefense"];
_a = _a		+ [""];
_dis = _dis	+ [0];
_dir = _dir	+ [0];
_h = _h		+ [0];

_v = _v		+ ["BagWallCorner"];
_n = _n		+ ["Land_BagFenceCorner"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [15];
_t = _t		+ [0];
_i = _i		+ ["\CA\Warfare2\Images\con_wall2.paa"];
_p = _p		+ [0];
_pt = _pt	+ [0];
_s = _s		+ ["StationaryDefense"];
_a = _a		+ [""];
_dis = _dis	+ [0];
_dir = _dir	+ [0];
_h = _h		+ [0];

_v = _v		+ ["SmallWall"];
_n = _n		+ ["Land_HBarrier3"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [25];
_t = _t		+ [0];
_i = _i		+ ["\CA\Warfare2\Images\con_wall1.paa"];
_p = _p		+ [0];
_pt = _pt	+ [0];
_s = _s		+ ["StationaryDefense"];
_a = _a		+ [""];
_dis = _dis	+ [0];
_dir = _dir	+ [0];
_h = _h		+ [0];

_v = _v		+ ["MediumWall"];
_n = _n		+ ["Land_HBarrier5"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [50];
_t = _t		+ [0];
_i = _i		+ ["\CA\Warfare2\Images\con_wall2.paa"];
_p = _p		+ [0];
_pt = _pt	+ [0];
_s = _s		+ ["StationaryDefense"];
_a = _a		+ [""];
_dis = _dis	+ [0];
_dir = _dir	+ [0];
_h = _h		+ [0];

_v = _v		+ ["LargeWall"];
_n = _n		+ ["Land_HBarrier_large"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_n Select (Count _n - 1)) >> "displayName")];
_f = _f		+ [BIS_WF_Common GetVariable "WestFactions"];
_c = _c		+ [75];
_t = _t		+ [0];
_i = _i		+ ["\CA\Warfare2\Images\con_wall3.paa"];
_p = _p		+ [0];
_pt = _pt	+ [0];
_s = _s		+ ["StationaryDefense"];
_a = _a		+ [""];
_dis = _dis	+ [0];
_dir = _dir	+ [0];
_h = _h		+ [0];

for [{_count = Count _v - 1},{_count >= 0},{_count = _count - 1}] do
{
	Call Compile Format["WEST%1TYPE = %2",_v Select _count,_count];
};

westDefenses = _v;
westDefenseNames = _n;
westDefenseDescriptions = _d;
westDefenseFactions = _f;
westDefenseCosts = _c;
westDefenseTimes = _t;
westDefenseImages = _i;
westDefenseChances = _p;
westDefenseTownChances = _pt;
westDefenseDistances = _dis;
westDefenseDirections = _dir;
westDefenseScripts = _s;
westDefenseActions = _a;
westDefenseHeights = _h;

//*****************************************************************************************
//3/26/7 MM - Created file.
