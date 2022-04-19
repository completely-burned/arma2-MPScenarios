ScriptName "Config_Depot.sqf";

//Last modified 10/12/10
//*****************************************************************************************
//Description: Aircraft factory configurations.
//*****************************************************************************************

//WEST
_u			= [corePath + "Client\Functions\Client_RepairAtDepot.sqf"]; //Repair
_d			= [Localize "Config_Depot.sqf1" + " " + Localize "Config_Depot.sqf2"]; //Repair + Team vehicle(s)
_f			= ["ALL"];
_c			= [250];
_t			= [0];
_p			= [0];
_i			= ["\ca\UI\Data\icon_wf_building_repair_ca.paa"];

_u = _u		+ [corePath + "Client\Functions\Client_RearmAtDepot.sqf"]; //Rearm
_d = _d		+ [Localize "Config_Depot.sqf5" + " " + Localize "Config_Depot.sqf2"];
_f = _f		+ ["ALL"];
_c = _c		+ [250];
_t = _t		+ [0];
_p = _p		+ [0];
_i = _i		+ ["\ca\UI\Data\gui_firemod_3bullets_CA.paa"];

_u = _u		+ [corePath + "Client\Functions\Client_RefuelAtDepot.sqf"]; //Refuel
_d = _d		+ [Localize "Config_Depot.sqf8" + " " + Localize "Config_Depot.sqf2"];
_f = _f		+ ["ALL"];
_c = _c		+ [100];
_t = _t		+ [0];
_p = _p		+ [0];
_i = _i		+ ["\ca\UI\Data\Map_Fuelstation_CA.paa"];

_u = _u		+ [corePath + "Client\Functions\Client_HealAtDepot.sqf"]; //Heal
_d = _d		+ [Localize "STR_HEAL"];
_f = _f		+ ["ALL"];
_c = _c		+ [100];
_t = _t		+ [0];
_p = _p		+ [0];
_i = _i		+ ["\ca\UI\Data\icon_wf_building_firstaid_ca.paa"];

_u = _u		+ ["LandRover_CZ_EP1"];
_d = _d		+ [GetText (configFile >> "CfgVehicles" >> (_u Select (Count _u - 1)) >> "displayName")];
_f = _f		+ [GetText (configFile >> "CfgVehicles" >> (_u Select (Count _u - 1)) >> "faction")];
_c = _c		+ [400];
_t = _t		+ [15];
_p = _p		+ [10];
_i = _i		+ [GetText (configFile >> "CfgVehicles" >> (_u Select (Count _u - 1)) >> "picture")];

westDepotCrews = [];
{westDepotCrews = westDepotCrews + [0]} ForEach _u;

westDepotUnits = _u;
westDepotDescriptions = _d;
westDepotFactions = _f;
westDepotCosts = _c;
westDepotMannedCosts = _c;
westDepotTimes = _t;
westDepotPoints = _p;
westDepotImages = _i;

depotUnits = westDepotUnits + eastDepotUnits + resistanceDepotUnits;
depotUnitCosts = westDepotCosts + eastDepotCosts + resistanceDepotCosts;
depotUnitDescriptions = westDepotDescriptions + eastDepotDescriptions + resistanceDepotDescriptions;

//*****************************************************************************************
//4/3/8 MM - Created file.
