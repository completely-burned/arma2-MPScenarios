ScriptName "Config_Camp.sqf";

//Last modified 10/22/10
//*****************************************************************************************
//Description: Constructed camp configurations.
//*****************************************************************************************

//WEST
_u			= [corePath + "Client\Functions\Client_UpgradeCampToFSB.sqf"];
_d			= [Format[Localize "STR_WFUPGRADETO",Localize "STR_WFFSB"]];
_f			= ["ALL"];
_c			= [250];
_t			= [0];
_p			= [0];
_i			= ["\ca\UI\Data\gui_firemod_3bullets_CA.paa"];

_u = _u		+ [corePath + "Client\Functions\Client_UpgradeCampToFOB.sqf"];
_d = _d		+ [Format[Localize "STR_WFUPGRADETO",Localize "STR_WFFOB"]];
_f = _f		+ ["ALL"];
_c = _c		+ [350];
_t = _t		+ [0];
_p = _p		+ [0];
_i = _i		+ ["\ca\UI\Data\icon_wf_building_repair_ca.paa"];

_u = _u		+ ["ATV_CZ_EP1"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_u Select (Count _u - 1)) >> "displayName")];
_f = _f		+ [GetText (configFile >> "CfgVehicles" >> (_u Select (Count _u - 1)) >> "faction")];
_c = _c		+ [125];
_t = _t		+ [10];
_p = _p		+ [10];
_i = _i		+ [GetText (configFile >> "CfgVehicles" >> (_u Select (Count _u - 1)) >> "picture")];

_u = _u		+ ["LandRover_CZ_EP1"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_u Select (Count _u - 1)) >> "displayName")];
_f = _f		+ [GetText (configFile >> "CfgVehicles" >> (_u Select (Count _u - 1)) >> "faction")];
_c = _c		+ [200];
_t = _t		+ [15];
_p = _p		+ [10];
_i = _i		+ [GetText (configFile >> "CfgVehicles" >> (_u Select (Count _u - 1)) >> "picture")];

westCampCrews = [];
{westCampCrews = westCampCrews + [0]} ForEach _u;

westCampUnits = _u;
westCampDescriptions = _d;
westCampFactions = _f;
westCampCosts = _c;
westCampMannedCosts = _c;
westCampTimes = _t;
westCampPoints = _p;
westCampImages = _i;

campUnits = westCampUnits + eastCampUnits + resistanceCampUnits;
campUnitCosts = westCampCosts + eastCampCosts + resistanceCampCosts;
campUnitDescriptions = westCampDescriptions + eastCampDescriptions + resistanceCampDescriptions;

//*****************************************************************************************
//10/2/10 MM - Created file.
