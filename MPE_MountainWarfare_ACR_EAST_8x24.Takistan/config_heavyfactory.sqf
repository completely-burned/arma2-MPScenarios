ScriptName "Config_HeavyFactory.sqf";

//Last modified 10/12/10
//*****************************************************************************************
//Description: Heavy vehicle factory configurations.
//*****************************************************************************************
Private["_c","_config","_crewCost","_data","_m","_p","_soldierCost","_t","_total","_u"];

//WEST
_u			= ["BMP2_Des_ACR"];
_c			= [1800];
_m			= [3];
_t			= [30];
_p			= [25];

_u = _u		+ ["T72_ACR"];
_c = _c		+ [2400];
_m = _m		+ [3];
_t = _t		+ [40];
_p = _p		+ [35];

_crewCost = 75;
_data = [West,"Barracks",WCREW] Call BIS_WF_GetUnitData;
if (Count _data > 0) then {_crewCost = _data Select 2};

westHeavyDescriptions = [];
westHeavyFactions = [];
westHeavyImages = [];
westHeavyMannedCosts = [];

_total = Count _u;
for [{_count = 0},{_count < _total},{_count = _count + 1}] do
{
	_config = configFile >> "CfgVehicles" >> (_u Select _count);
	westHeavyMannedCosts = westHeavyMannedCosts + [(_c Select _count) + (_m Select _count) * _crewCost];
	westHeavyDescriptions = westHeavyDescriptions + [GetText (_config >> "displayName")];
	westHeavyFactions = westHeavyFactions + [GetText (_config >> "faction")];
	westHeavyImages = westHeavyImages + [GetText (_config >> "picture")];
};

westHeavyUnits = _u;
westHeavyCosts = _c;
westHeavyCrews = _m;
westHeavyTimes = _t;
westHeavyPoints = _p;

heavyUnits = westHeavyUnits + eastHeavyUnits + resistanceHeavyUnits;
heavyUnitCosts = westHeavyCosts + eastHeavyCosts + resistanceHeavyCosts;
heavyUnitDescriptions = westHeavyDescriptions + eastHeavyDescriptions + resistanceHeavyDescriptions;

//*****************************************************************************************
//3/28/7 MM - Created file.
