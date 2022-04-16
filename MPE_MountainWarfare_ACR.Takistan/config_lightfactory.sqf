ScriptName "Config_LightFactory.sqf";

//Last modified 11/2/10
//*****************************************************************************************
//Description: Light vehicle factory configurations.
//*****************************************************************************************
Private["_c","_config","_data","_m","_p","_soldierCost","_t","_total","_u"];

//WEST
_u			= ["BAF_ATV_D"];
_c			= [100];
_m			= [1];
_t			= [10];
_p			= [10];

_u = _u		+ ["BAF_Offroad_D"];
_c = _c		+ [150];
_m = _m		+ [1];
_t = _t		+ [15];
_p = _p		+ [10];

_u = _u		+ ["BAF_Jackal2_L2A1_D"];
_c = _c		+ [200];
_m = _m		+ [2];
_t = _t		+ [17];
_p = _p		+ [13];

_u = _u		+ ["BAF_Jackal2_GMG_D"];
_c = _c		+ [250];
_m = _m		+ [2];
_t = _t		+ [18];
_p = _p		+ [14];

_u = _u		+ ["MtvrSalvage_DES_EP1"];
_c = _c		+ [250];
_m = _m		+ [1];
_t = _t		+ [20];
_p = _p		+ [15];

_u = _u		+ ["MtvrRepair_DES_EP1"];
_c = _c		+ [350];
_m = _m		+ [1];
_t = _t		+ [22];
_p = _p		+ [15];

_u = _u		+ ["MtvrReammo_DES_EP1"];
_c = _c		+ [350];
_m = _m		+ [1];
_t = _t		+ [22];
_p = _p		+ [15];

_u = _u		+ ["MtvrRefuel_DES_EP1"];
_c = _c		+ [250];
_m = _m		+ [1];
_t = _t		+ [22];
_p = _p		+ [15];

if (!BIS_WF_LimitedWarfare) then
{
	_u = _u		+ ["MtvrSupply_DES_EP1"];
	_c = _c		+ [300];
	_m = _m		+ [1];
	_t = _t		+ [22];
	_p = _p		+ [15];
};

_soldierCost = 100;
_data = [West,"Barracks",WSOLDIER] Call BIS_WF_GetUnitData;
if (Count _data > 0) then {_soldierCost = _data Select 2};

westLightDescriptions = [];
westLightFactions = [];
westLightImages = [];
westLightMannedCosts = [];
_faction = GetText(configFile >> "CfgVehicles" >> "BAF_ATV_D" >> "faction");

_total = Count _u;
for [{_count = 0},{_count < _total},{_count = _count + 1}] do
{
	_config = configFile >> "CfgVehicles" >> (_u Select _count);
	westLightMannedCosts = westLightMannedCosts + [(_c Select _count) + (_m Select _count) * _soldierCost];
	westLightDescriptions = westLightDescriptions + [GetText (_config >> "displayName")];
	westLightFactions = westLightFactions + [_faction];
	westLightImages = westLightImages + [GetText (_config >> "picture")];
};

westLightUnits = _u;
westLightCosts = _c;
westLightCrews = _m;
westLightTimes = _t;
westLightPoints = _p;

//SPECIAL VEHICLES - If these classes are changed above they must be updated here too.
WREPAIRTRUCK = "MtvrRepair_DES_EP1";
WSALVAGETRUCK = "MtvrSalvage_DES_EP1";
WSUPPLYTRUCK = "MtvrSupply_DES_EP1";
WAMMOTRUCK = "MtvrReammo_DES_EP1";
WFUELTRUCK = "MtvrRefuel_DES_EP1";

lightUnits = westLightUnits + eastLightUnits + resistanceLightUnits;
lightUnitCosts = westLightCosts + eastLightCosts + resistanceLightCosts;
lightUnitDescriptions = westLightDescriptions + eastLightDescriptions + resistanceLightDescriptions;

//*****************************************************************************************
//3/28/7 MM - Created file.
