ScriptName "Config_Airport.sqf";

//Last modified 10/12/10
//*****************************************************************************************
//Description: Aircraft factory configurations.
//*****************************************************************************************
Private["_c","_config","_data","_m","_p","_pilotCost","_t","_total","_u"];

//WEST
_u			= ["AV8B"];
_c			= [7500];
_m			= [1];
_t			= [45];
_p			= [45];

_u = _u		+ ["AV8B2"];
_c = _c		+ [7500];
_m = _m		+ [1];
_t = _t		+ [45];
_p = _p		+ [45];

_u = _u		+ ["A10"];
_c = _c		+ [8000];
_m = _m		+ [1];
_t = _t		+ [50];
_p = _p		+ [50];

_u = _u		+ ["C130J"];
_c = _c		+ [4500];
_m = _m		+ [1];
_t = _t		+ [50];
_p = _p		+ [50];

_pilotCost = 75;
_data = [West,"Barracks",WPILOT] Call BIS_WF_GetUnitData;
if (Count _data > 0) then {_pilotCost = _data Select 2};

westWingedAircraftDescriptions = [];
westWingedAircraftFactions = [];
westWingedAircraftImages = [];
westWingedAircraftMannedCosts = [];

_total = Count _u;
for [{_count = 0},{_count < _total},{_count = _count + 1}] do
{
	_config = configFile >> "CfgVehicles" >> (_u Select _count);
	westWingedAircraftMannedCosts = westWingedAircraftMannedCosts + [(_c Select _count) + (_m Select _count) * _pilotCost];
	westWingedAircraftDescriptions = westWingedAircraftDescriptions + [GetText (_config >> "displayName")];
	westWingedAircraftFactions = westWingedAircraftFactions + [GetText (_config >> "faction")];
	westWingedAircraftImages = westWingedAircraftImages + [GetText (_config >> "picture")];
};

westWingedAircraftUnits = _u;
westWingedAircraftCosts = _c;
westWingedAircraftCrews = _m;
westWingedAircraftTimes = _t;
westWingedAircraftPoints = _p;

wingedAircraftUnits = westWingedAircraftUnits + eastWingedAircraftUnits + resistanceWingedAircraftUnits;
wingedAircraftUnitCosts = westWingedAircraftCosts + eastWingedAircraftCosts + resistanceWingedAircraftCosts;
wingedAircraftUnitDescriptions = westWingedAircraftDescriptions + eastWingedAircraftDescriptions + resistanceWingedAircraftDescriptions;

//*****************************************************************************************
//2/2/8 MM - Created file.
