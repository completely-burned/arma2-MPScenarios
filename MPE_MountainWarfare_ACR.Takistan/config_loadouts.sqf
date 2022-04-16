ScriptName "Config_Loadouts.sqf";

//Last modified 11/12/10
//*****************************************************************************************
//Description: Loadout configurations.
//*****************************************************************************************

customTemplate = 0;

//Store types of weapons & amounts for a custom loadout.
customWeapons = [0,0,0,0,0];

//Store amounts of each misc type for a custom loadout.
customMisc = [0,0,0,0,0,0,0,0,0,0,0,0];

_faction = (BIS_WF_Common GetVariable "WestFactions") Select 0;

//WEST LOADOUTS
_w			= ["None"];
_c			= [0];
_a			= [""];
_ac			= [0];
_f			= ["ALL"];

//BAF
_w = _w		+ ["BAF_L85A2_RIS_Holo"];
_a = _a		+ ["30Rnd_556x45_Stanag"];
_c = _c		+ [30];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["BAF_L85A2_RIS_ACOG"];
_a = _a		+ ["30Rnd_556x45_Stanag"];
_c = _c		+ [35];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["BAF_L85A2_UGL_Holo"];
_a = _a		+ ["30Rnd_556x45_Stanag"];
_c = _c		+ [40];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["BAF_L85A2_RIS_SUSAT"];
_a = _a		+ ["30Rnd_556x45_Stanag"];
_c = _c		+ [35];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["BAF_L85A2_UGL_SUSAT"];
_a = _a		+ ["30Rnd_556x45_Stanag"];
_c = _c		+ [40];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["BAF_L85A2_RIS_CWS"];
_a = _a		+ ["30Rnd_556x45_Stanag"];
_c = _c		+ [55];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["BAF_LRR_scoped"];
_a = _a		+ ["5Rnd_86x70_L115A1"];
_c = _c		+ [50];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["BAF_AS50_scoped"];
_a = _a		+ ["5Rnd_127x99_as50"];
_c = _c		+ [125];
_ac = _ac	+ [8];
_f = _f		+ [_faction];

_w = _w		+ ["BAF_AS50_TWS"];
_a = _a		+ ["5Rnd_127x99_as50"];
_c = _c		+ [150];
_ac = _ac	+ [8];
_f = _f		+ [_faction];

_w = _w		+ ["BAF_L7A2_GPMG"];
_a = _a		+ ["100Rnd_762x51_M240"];
_c = _c		+ [55];
_ac = _ac	+ [15];
_f = _f		+ [_faction];

_w = _w		+ ["BAF_L110A1_Aim"];
_a = _a		+ ["200Rnd_556x45_L110A1"];
_c = _c		+ [65];
_ac = _ac	+ [15];
_f = _f		+ [_faction];

for [{_count = Count _w - 1},{_count >= 0},{_count = _count - 1}] do
{
	Call Compile Format["%1TYPE = %2",_w Select _count,_count];
};

westPrimaryWeapons = _w;
westPrimaryCosts = _c;
westPrimaryAmmo = _a;
westPrimaryAmmoCosts = _ac;
westPrimaryFactions = _f;

westPrimaryNames = [];
westPrimaryImages = [];
westPrimaryAmmoNames = [];
westPrimaryAmmoSpaces = [];
westPrimaryAmmoImages = [];

{
	westPrimaryNames = westPrimaryNames + [GetText (configFile >> "CfgWeapons" >> _x >> "displayName")];
	westPrimaryImages = westPrimaryImages + [GetText (configFile >> "CfgWeapons" >> _x >> "picture")];
} ForEach westPrimaryWeapons;

westPrimaryNames Set[0,Localize "STRWFNONE"];

{
	westPrimaryAmmoNames = westPrimaryAmmoNames + [GetText (configFile >> "CfgMagazines" >> _x >> "displayName")];
	westPrimaryAmmoImages = westPrimaryAmmoImages + [GetText (configFile >> "CfgMagazines" >> _x >> "picture")];
	westPrimaryAmmoSpaces = westPrimaryAmmoSpaces + [GetNumber (configFile >> "CfgMagazines" >> _x >> "type") / 256];
} ForEach westPrimaryAmmo;

_w			= ["None"];
_c			= [0];
_a			= [""];
_ac			= [0];
_f			= ["ALL"];

//BAF
_w = _w		+ ["BAF_NLAW_Launcher"];
_a = _a		+ ["NLAW"];
_c = _c		+ [200];
_ac = _ac	+ [100];
_f = _f		+ [_faction];

_w = _w		+ ["Javelin"];
_a = _a		+ ["Javelin"];
_c = _c		+ [300];
_ac = _ac	+ [150];
_f = _f		+ [_faction];

_w = _w		+ ["Stinger"];
_a = _a		+ ["Stinger"];
_c = _c		+ [200];
_ac = _ac	+ [100];
_f = _f		+ [_faction];

_w = _w		+ ["Laserdesignator"];
_a = _a		+ ["Laserbatteries"];
_c = _c		+ [350];
_ac = _ac	+ [100];
_f = _f		+ [_faction];

for [{_count = Count _w - 1},{_count >= 0},{_count = _count - 1}] do
{
	Call Compile Format["%1TYPE = %2",_w Select _count,_count];
};

westSecondaryWeapons = _w;
westSecondaryCosts = _c;
westSecondaryAmmo = _a;
westSecondaryAmmoCosts = _ac;
westSecondaryFactions = _f;

westSecondaryNames = [];
westSecondaryImages = [];
westSecondaryAmmoNames = [];
westSecondaryAmmoSpaces = [];
westSecondaryAmmoImages = [];

{
	westSecondaryNames = westSecondaryNames + [GetText (configFile >> "CfgWeapons" >> _x >> "displayName")];
	westSecondaryImages = westSecondaryImages + [GetText (configFile >> "CfgWeapons" >> _x >> "picture")];
} ForEach westSecondaryWeapons;

westSecondaryNames Set[0,Localize "STRWFNONE"];

{
	westSecondaryAmmoNames = westSecondaryAmmoNames + [GetText (configFile >> "CfgMagazines" >> _x >> "displayName")];
	westSecondaryAmmoImages = westSecondaryAmmoImages + [GetText (configFile >> "CfgMagazines" >> _x >> "picture")];
	westSecondaryAmmoSpaces = westSecondaryAmmoSpaces + [GetNumber (configFile >> "CfgMagazines" >> _x >> "type") / 256];
} ForEach westSecondaryAmmo;

_w			= ["None"];
_c			= [0];
_a			= [""];
_ac			= [0];
_f			= ["ALL"];

//BAF
_w = _w		+ ["M9"];
_a = _a		+ ["15Rnd_9x19_M9"];
_c = _c		+ [15];
_ac = _ac	+ [2];
_f = _f		+ [_faction];

_w = _w		+ ["M9SD"];
_a = _a		+ ["15Rnd_9x19_M9SD"];
_c = _c		+ [20];
_ac = _ac	+ [3];
_f = _f		+ [_faction];

_w = _w		+ ["Colt1911"];
_a = _a		+ ["7Rnd_45ACP_1911"];
_c = _c		+ [20];
_ac = _ac	+ [3];
_f = _f		+ [_faction];

for [{_count = Count _w - 1},{_count >= 0},{_count = _count - 1}] do
{
	Call Compile Format["%1TYPE = %2",_w Select _count,_count];
};

westSidearms = _w;
westSidearmCosts = _c;
westSidearmAmmo = _a;
westSidearmAmmoCosts = _ac;
westSidearmFactions = _f;

westSidearmNames = [];
westSidearmImages = [];
westSidearmAmmoNames = [];
westSidearmAmmoImages = [];

{
	westSidearmNames = westSidearmNames + [GetText (configFile >> "CfgWeapons" >> _x >> "displayName")];
	westSidearmImages = westSidearmImages + [GetText (configFile >> "CfgWeapons" >> _x >> "picture")];
} ForEach westSidearms;

westSidearmNames Set[0,Localize "STRWFNONE"];

{
	westSidearmAmmoNames = westSidearmAmmoNames + [GetText (configFile >> "CfgMagazines" >> _x >> "displayName")];
	westSidearmAmmoImages = westSidearmAmmoImages + [GetText (configFile >> "CfgMagazines" >> _x >> "picture")];
} ForEach westSidearmAmmo;

_workarounds = [];
_workarounds1 = [];

_w			= ["None"];
_c			= [0];
_is			= [false];
_f			= ["ALL"];

_w = _w		+ ["HandGrenade"];
_c = _c		+ [5];
_is = _is	+ [false];
_f = _f		+ ["ALL"];

_w = _w		+ ["SmokeShell"];
_c = _c		+ [5];
_is = _is	+ [false];
_f = _f		+ ["ALL"];

//USMC
_w = _w		+ ["FlareWhite_M203"];
_c = _c		+ [5];
_is = _is	+ [true];
_f = _f		+ ["ALL"];

_w = _w		+ ["FlareYellow_M203"];
_c = _c		+ [5];
_is = _is	+ [true];
_f = _f		+ ["ALL"];

_w = _w		+ ["FlareGreen_M203"];
_c = _c		+ [5];
_is = _is	+ [true];
_f = _f		+ ["ALL"];

_w = _w		+ ["FlareRed_M203"];
_c = _c		+ [5];
_is = _is	+ [true];
_f = _f		+ ["ALL"];

//WORKAROUND - Beginning a variable with a number will cause problems.
//_w = _w	+ ["1Rnd_HE_M203"];
_w = _w		+ ["Rnd_HE_M203"];
//_workaround = Count _w - 1;
_workarounds = _workarounds + ["Rnd_HE_M203"];
_workarounds1 = _workarounds1 + ["1Rnd_HE_M203"];

_c = _c		+ [5];
_is = _is	+ [true];
_f = _f		+ ["ALL"];

_w = _w		+ ["Mine"];
_c = _c		+ [15];
_is = _is	+ [false];
_f = _f		+ ["ALL"];

_w = _w		+ ["PipeBomb"];
_c = _c		+ [15];
_is = _is	+ [false];
_f = _f		+ ["ALL"];

for [{_count = Count _w - 1},{_count >= 0},{_count = _count - 1}] do
{
	Call Compile Format["%1TYPE = %2",_w Select _count,_count];
};

//WORKAROUND - Now that variable has been created change classname to proper value.
{
	_w Set [_w Find _x,_workarounds1 Select (_workarounds Find _x)];
} ForEach _workarounds;

westMiscWeapons = _w;
westMiscCosts = _c;
westMiscIsSidearmAmmo = _is;
westMiscFactions = _f;

westMiscNames = [];
westMiscImages = [];
westMiscSpaces = [];

{
	westMiscNames = westMiscNames + [GetText (configFile >> "CfgMagazines" >> _x >> "displayName")];
	westMiscImages = westMiscImages + [GetText (configFile >> "CfgMagazines" >> _x >> "picture")];
	westMiscSpaces = westMiscSpaces + [GetNumber (configFile >> "CfgMagazines" >> _x >> "type") / 256];
} ForEach westMiscWeapons;

westMiscNames Set[0,Localize "STRWFNONE"];

miscEquipment = ["Binocular","NVGoggles"];
miscEquipmentNames = [Localize "STR_DN_BINOCULAR",Localize "STR_DN_NV_GOGGLES"];
miscEquipmentImages = ["\dtaExt\equip\w\w_binocular","\dtaExt\equip\w\w_nvgoggles"];
miscEquipmentCosts = [5,15];
miscEquipmentC = [configFile >> "cfgWeapons" >> "Binocular", configFile >> "cfgWeapons" >> "NVGoggles"];
miscFactions = ["ALL","ALL"];

//Loadout templates
_n			= [Localize "STRWFCUSTOM"];
_p			= [0];
_pa			= [0];
_s			= [0];
_sa			= [0];
_si			= [0];
_m			= [0];
_ma			= [0];
_m1			= [0];
_ma1		= [0];
_f			= ["ALL"];

//BAF
_n	= _n	+ [westPrimaryNames Select BAF_L85A2_RIS_HoloTYPE];
_p	= _p	+ [BAF_L85A2_RIS_HoloTYPE];
_pa	= _pa	+ [9];
_s	= _s	+ [0];
_sa	= _sa	+ [0];
_si	= _si	+ [M9TYPE];
_m	= _m	+ [HANDGRENADETYPE];
_ma	= _ma	+ [4];
_m1	= _m1	+ [0];
_ma1= _ma1	+ [0];
_f = _f		+ [_faction];

_n	= _n	+ [westPrimaryNames Select BAF_L85A2_RIS_ACOGTYPE];
_p	= _p	+ [BAF_L85A2_RIS_ACOGTYPE];
_pa	= _pa	+ [9];
_s	= _s	+ [0];
_sa	= _sa	+ [0];
_si	= _si	+ [M9TYPE];
_m	= _m	+ [HANDGRENADETYPE];
_ma	= _ma	+ [4];
_m1	= _m1	+ [0];
_ma1= _ma1	+ [0];
_f = _f		+ [_faction];

_n	= _n	+ [Format["%1/%2",westPrimaryNames Select BAF_L85A2_RIS_HoloTYPE,westSecondaryNames Select BAF_NLAW_LauncherTYPE]];
_p	= _p	+ [BAF_L85A2_RIS_HoloTYPE];
_pa	= _pa	+ [9];
_s	= _s	+ [BAF_NLAW_LauncherTYPE];
_sa	= _sa	+ [1];
_si	= _si	+ [M9TYPE];
_m	= _m	+ [HANDGRENADETYPE];
_ma	= _ma	+ [4];
_m1	= _m1	+ [0];
_ma1= _ma1	+ [0];
_f = _f		+ [_faction];

_n	= _n	+ [Format["%1/%2",westPrimaryNames Select BAF_L85A2_UGL_HoloTYPE,westSecondaryNames Select BAF_NLAW_LauncherTYPE]];
_p	= _p	+ [BAF_L85A2_UGL_HoloTYPE];
_pa	= _pa	+ [9];
_s	= _s	+ [BAF_NLAW_LauncherTYPE];
_sa	= _sa	+ [1];
_si	= _si	+ [0];
_m	= _m	+ [HANDGRENADETYPE];
_ma	= _ma	+ [4];
_m1	= _m1	+ [Rnd_HE_M203TYPE];
_ma1= _ma1	+ [8];
_f = _f		+ [_faction];

_n	= _n	+ [Format["%1/%2",westPrimaryNames Select BAF_L85A2_RIS_SUSATTYPE,westSecondaryNames Select BAF_NLAW_LauncherTYPE]];
_p	= _p	+ [BAF_L85A2_RIS_SUSATTYPE];
_pa	= _pa	+ [9];
_s	= _s	+ [BAF_NLAW_LauncherTYPE];
_sa	= _sa	+ [1];
_si	= _si	+ [M9TYPE];
_m	= _m	+ [HANDGRENADETYPE];
_ma	= _ma	+ [4];
_m1	= _m1	+ [0];
_ma1= _ma1	+ [0];
_f = _f		+ [_faction];

_n	= _n	+ [Format["%1/%2",westPrimaryNames Select BAF_L85A2_UGL_SUSATTYPE,westSecondaryNames Select BAF_NLAW_LauncherTYPE]];
_p	= _p	+ [BAF_L85A2_UGL_SUSATTYPE];
_pa	= _pa	+ [9];
_s	= _s	+ [BAF_NLAW_LauncherTYPE];
_sa	= _sa	+ [1];
_si	= _si	+ [0];
_m	= _m	+ [HANDGRENADETYPE];
_ma	= _ma	+ [4];
_m1	= _m1	+ [Rnd_HE_M203TYPE];
_ma1= _ma1	+ [8];
_f = _f		+ [_faction];

_n	= _n	+ [Format["%1/%2",westPrimaryNames Select BAF_L85A2_RIS_CWSTYPE,westSecondaryNames Select BAF_NLAW_LauncherTYPE]];
_p	= _p	+ [BAF_L85A2_RIS_CWSTYPE];
_pa	= _pa	+ [9];
_s	= _s	+ [BAF_NLAW_LauncherTYPE];
_sa	= _sa	+ [1];
_si	= _si	+ [M9TYPE];
_m	= _m	+ [HANDGRENADETYPE];
_ma	= _ma	+ [4];
_m1	= _m1	+ [0];
_ma1= _ma1	+ [0];
_f = _f		+ [_faction];

_n	= _n	+ [westPrimaryNames Select BAF_L7A2_GPMGTYPE];
_p	= _p	+ [BAF_L7A2_GPMGTYPE];
_pa	= _pa	+ [4];
_s	= _s	+ [0];
_sa	= _sa	+ [0];
_si	= _si	+ [M9TYPE];
_m	= _m	+ [HANDGRENADETYPE];
_ma	= _ma	+ [6];
_m1	= _m1	+ [0];
_ma1= _ma1	+ [0];
_f = _f		+ [_faction];

_n	= _n	+ [westPrimaryNames Select BAF_LRR_scopedTYPE];
_p	= _p	+ [BAF_LRR_scopedTYPE];
_pa	= _pa	+ [9];
_s	= _s	+ [0];
_sa	= _sa	+ [0];
_si	= _si	+ [M9SDTYPE];
_m	= _m	+ [HANDGRENADETYPE];
_ma	= _ma	+ [4];
_m1	= _m1	+ [SmokeShellTYPE];
_ma1= _ma1	+ [2];
_f = _f		+ [_faction];

_n	= _n	+ [westPrimaryNames Select BAF_AS50_scopedTYPE];
_p	= _p	+ [BAF_AS50_scopedTYPE];
_pa	= _pa	+ [9];
_s	= _s	+ [0];
_sa	= _sa	+ [0];
_si	= _si	+ [M9SDTYPE];
_m	= _m	+ [HANDGRENADETYPE];
_ma	= _ma	+ [4];
_m1	= _m1	+ [SmokeShellTYPE];
_ma1= _ma1	+ [2];
_f = _f		+ [_faction];

_n	= _n	+ [westPrimaryNames Select BAF_AS50_TWSTYPE];
_p	= _p	+ [BAF_AS50_TWSTYPE];
_pa	= _pa	+ [9];
_s	= _s	+ [0];
_sa	= _sa	+ [0];
_si	= _si	+ [M9SDTYPE];
_m	= _m	+ [HANDGRENADETYPE];
_ma	= _ma	+ [4];
_m1	= _m1	+ [SmokeShellTYPE];
_ma1= _ma1	+ [2];
_f = _f		+ [_faction];

//Calculate template costs.
_c = [];
_totalTemplates = Count _n;

for [{_count = 0},{_count < _totalTemplates},{_count = _count + 1}] do
{
	_cost = (westPrimaryCosts Select (_p Select _count)) + (westSecondaryCosts Select (_s Select _count)) + (westSidearmCosts Select (_si Select _count));
	_cost = _cost + ((westPrimaryAmmoCosts Select (_p Select _count)) * (_pa Select _count));
	_cost = _cost + ((westSecondaryAmmoCosts Select (_s Select _count)) * (_sa Select _count));
	_cost = _cost + (((westMiscCosts Select (_m  Select _count)) * (_ma Select _count)) + ((westMiscCosts Select (_m1 Select _count)) * (_ma1 Select _count)));

	_c = _c + [_cost];
};

westTemplateNames = _n;
westTemplatePrimary = _p;
westTemplatePrimaryAmmo = _pa;
westTemplateSecondary = _s;
westTemplateSecondaryAmmo = _sa;
westTemplateSidearms = _si;
westTemplateMisc = _m;
westTemplateAmount = _ma;
westTemplateMisc1 = _m1;
westTemplateAmount1 = _ma1;
westTemplateCosts = _c;
westTemplateFactions = _f;

westDefaultWeapons = ["BAF_L85A2_RIS_Holo"];
westDefaultAmmo = ["30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag","HandGrenade","HandGrenade","HandGrenade","HandGrenade"];

westSpecOpDefaultWeapons = ["BAF_L85A2_RIS_Holo"];
westSpecOpDefaultAmmo = ["30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","HandGrenade","HandGrenade","HandGrenade","HandGrenade"];

//*****************************************************************************************
//3/21/7 MM - Created file.
