ScriptName "Config_AircraftFactory.sqf";

//Last modified 10/12/10
//*****************************************************************************************
//Description: Aircraft factory configurations.
//*****************************************************************************************
Private["_c","_config","_d","_data","_m","_p","_pilotCost","_t","_total","_u"];

//WEST
_u			= ["Mi171Sh_CZ_EP1"];
_c			= [3500];
_m			= [2];
_t			= [35];
_p			= [20];

_u = _u		+ ["Mi171Sh_rockets_CZ_EP1"];
_c = _c		+ [5500];
_m = _m		+ [2];
_t = _t		+ [45];
_p = _p		+ [40];

_u = _u		+ ["Mi24_D_CZ_ACR"];
_c = _c		+ [7500];
_m = _m		+ [2];
_t = _t		+ [55];
_p = _p		+ [50];

_pilotCost = 75;
_data = [West,"Barracks",WPILOT] Call BIS_WF_GetUnitData;
if (Count _data > 0) then {_pilotCost = _data Select 2};

westAircraftDescriptions = [];
westAircraftFactions = [];
westAircraftImages = [];
westAircraftMannedCosts = [];

_total = Count _u;
for [{_count = 0},{_count < _total},{_count = _count + 1}] do
{
	_config = configFile >> "CfgVehicles" >> (_u Select _count);
	westAircraftMannedCosts = westAircraftMannedCosts + [(_c Select _count) + (_m Select _count) * _pilotCost];
	westAircraftDescriptions = westAircraftDescriptions + [GetText (_config >> "displayName")];
	westAircraftFactions = westAircraftFactions + [GetText (_config >> "faction")];
	westAircraftImages = westAircraftImages + [GetText (_config >> "picture")];
};

westAircraftUnits = _u;
westAircraftCosts = _c;
westAircraftCrews = _m;
westAircraftTimes = _t;
westAircraftPoints = _p;

aircraftUnits = westAircraftUnits + eastAircraftUnits + resistanceAircraftUnits;
aircraftUnitCosts = westAircraftCosts + eastAircraftCosts + resistanceAircraftCosts;
aircraftUnitDescriptions = westAircraftDescriptions + eastAircraftDescriptions + resistanceAircraftDescriptions;

//*****************************************************************************************
//6/13/7 MM - Created file.
