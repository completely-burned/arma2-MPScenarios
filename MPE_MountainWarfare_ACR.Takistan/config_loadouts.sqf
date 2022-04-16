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

//ACR
_w = _w		+ ["Sa58P_EP1"];
_a = _a		+ ["30Rnd_762x39_SA58"];
_c = _c		+ [15];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["Sa58V_EP1"];
_a = _a		+ ["30Rnd_762x39_SA58"];
_c = _c		+ [20];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["Sa58V_CCO_EP1"];
_a = _a		+ ["30Rnd_762x39_SA58"];
_c = _c		+ [50];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["Sa58V_RCO_EP1"];
_a = _a		+ ["30Rnd_762x39_SA58"];
_c = _c		+ [60];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["CZ805_A2_ACR"];
_a = _a		+ ["30Rnd_556x45_Stanag"];
_c = _c		+ [35];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["CZ805_A2_SD_ACR"];
_a = _a		+ ["30Rnd_556x45_StanagSD"];
_c = _c		+ [70];
_ac = _ac	+ [15];
_f = _f		+ [_faction];

_w = _w		+ ["CZ805_A1_ACR"];
_a = _a		+ ["30Rnd_556x45_Stanag"];
_c = _c		+ [35];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["CZ805_A1_GL_ACR"];
_a = _a		+ ["30Rnd_556x45_Stanag"];
_c = _c		+ [45];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["CZ805_B_GL_ACR"];
_a = _a		+ ["20Rnd_762x51_B_SCAR"];
_c = _c		+ [65];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["CZ_750_S1_ACR"];
_a = _a		+ ["10Rnd_762x51_CZ750"];
_c = _c		+ [85];
_ac = _ac	+ [5];
_f = _f		+ [_faction];

_w = _w		+ ["SVD"];
_a = _a		+ ["10Rnd_762x54_SVD"];
_c = _c		+ [85];
_ac = _ac	+ [8];
_f = _f		+ [_faction];

_w = _w		+ ["SVD_des_EP1"];
_a = _a		+ ["10Rnd_762x54_SVD"];
_c = _c		+ [85];
_ac = _ac	+ [8];
_f = _f		+ [_faction];

_w = _w		+ ["SVD_NSPU_EP1"];
_a = _a		+ ["10Rnd_762x54_SVD"];
_c = _c		+ [100];
_ac = _ac	+ [8];
_f = _f		+ [_faction];

_w = _w		+ ["m107"];
_a = _a		+ ["10Rnd_127x99_m107"];
_c = _c		+ [150];
_ac = _ac	+ [15];
_f = _f		+ [_faction];

_w = _w		+ ["m107_TWS_EP1"];
_a = _a		+ ["10Rnd_127x99_m107"];
_c = _c		+ [170];
_ac = _ac	+ [15];
_f = _f		+ [_faction];

_w = _w		+ ["UK59_ACR"];
_a = _a		+ ["100Rnd_762x54_PK"];
_c = _c		+ [55];
_ac = _ac	+ [15];
_f = _f		+ [_faction];

_w = _w		+ ["M249_m145_EP1"];
_a = _a		+ ["100Rnd_556x45_M249"];
_c = _c		+ [65];
_ac = _ac	+ [15];
_f = _f		+ [_faction];

_w = _w		+ ["M60A4_EP1"];
_a = _a		+ ["100Rnd_762x51_M240"];
_c = _c		+ [65];
_ac = _ac	+ [15];
_f = _f		+ [_faction];

_w = _w		+ ["Evo_ACR"];
_a = _a		+ ["20Rnd_9x19_EVO"];
_c = _c		+ [60];
_ac = _ac	+ [8];
_f = _f		+ [_faction];

_w = _w		+ ["Evo_mrad_ACR"];
_a = _a		+ ["20Rnd_9x19_EVO"];
_c = _c		+ [65];
_ac = _ac	+ [10];
_f = _f		+ [_faction];

_w = _w		+ ["evo_sd_ACR"];
_a = _a		+ ["20Rnd_9x19_EVOSD"];
_c = _c		+ [70];
_ac = _ac	+ [10];
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

//ACR
_w = _w		+ ["RPG7V"];
_a = _a		+ ["PG7VR"];
_c = _c		+ [150];
_ac = _ac	+ [75];
_f = _f		+ [_faction];

_w = _w		+ ["MAAWS"];
_a = _a		+ ["MAAWS_HEAT"];
_c = _c		+ [250];
_ac = _ac	+ [75];
_f = _f		+ [_faction];

_w = _w		+ ["Igla"];
_a = _a		+ ["Igla"];
_c = _c		+ [250];
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

// TODO: ACR
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

westDefaultWeapons = ["Sa58P_EP1"];
westDefaultAmmo = ["30Rnd_762x39_SA58","30Rnd_762x39_SA58","30Rnd_762x39_SA58","30Rnd_762x39_SA58","HandGrenade","HandGrenade","HandGrenade","HandGrenade"];

westSpecOpDefaultWeapons = ["CZ805_A2_SD_ACR"];
westSpecOpDefaultAmmo = ["30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","30Rnd_556x45_StanagSD","HandGrenade","HandGrenade","HandGrenade","HandGrenade"];

//*****************************************************************************************
//3/21/7 MM - Created file.
