ScriptName "Config_AircraftFactory.sqf";

//Last modified 10/12/10
//*****************************************************************************************
//Description: Aircraft factory configurations.
//*****************************************************************************************
Private["_c","_config","_d","_data","_m","_p","_pilotCost","_t","_total","_u"];

//WEST
_u			= ["BAF_Merlin_HC3_D"];
_c			= [3000];
_m			= [1];
_t			= [35];
_p			= [20];

_u = _u		+ ["CH_47F_BAF"];
_c = _c		+ [4000];
_m = _m		+ [2];
_t = _t		+ [40];
_p = _p		+ [30];

_u = _u		+ ["AW159_Lynx_BAF"];
_c = _c		+ [5000];
_m = _m		+ [2];
_t = _t		+ [40];
_p = _p		+ [30];

_u = _u		+ ["BAF_Apache_AH1_D"];
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
