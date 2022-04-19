ScriptName "Config_Squads.sqf";

//Last modified 11/1/10
//*****************************************************************************************
//Description: Defines squads.
//Is is a helper function to Config_Teams.sqf. It builds squads from compositions of regular teams.
//These are handled like a regular team but larger. They provide good upgrade choices for AI teams
//later in the game when more funds are available or for human commanders that want to assign bigger teams.
//*****************************************************************************************
Private["_a","_ai","_count","_d","_h","_i","_l","_n","_total","_f","_nl","_cl","_s","_te"];
//ToDo: Localize _d variables only.

/*
_n - Variable name of small squad variant. Also the search name for functions.
_d - Name of team that is displayed in UIs. Making it blank will make it unavailable to commander for AI team assignment.
_t - Type of squad: None, Infantry, SpecOp, Mechanized, Armor, Air.
_ai - If true it is only available to AI squads.
_f - Name of the BLUFOR/OPFOR sub-faction this team belongs to.
_te - Templates that current squad is comprised of (refer to Config_Teams).
_s - Array of all squads.
*/

Private["_ARMOR","_INFANTRY","_MECHANIZED","_SPECOPS"];
_ARMOR = Localize "STR_WF_TEAMARM";
_INFANTRY = Localize "STR_WF_TEAMINF";
_MECHANIZED = Localize "STR_WF_TEAMMECH";
_SPECOPS = Localize "STR_WF_TEAMSPEC";

//WEST
_faction = (BIS_WF_Common GetVariable "WestFactions") Select 0;

_n		= ["RifleSquad"];
_d		= ["Rifle Squad"];
_t		= [_INFANTRY];
_ai		= [false];
_f		= [_faction];
_te		= ["MechanizedLight"];
_te=_te + ["InfantryFT"];
_s		= [_te];

_n = _n	+ ["LargeRifleSquad"];
_d = _d	+ ["Large Rifle Squad"];
_t = _t + [_INFANTRY];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["MechanizedLight"];
_te=_te + ["InfantryFT"];
_te=_te + ["MechanizedLight"];
_te=_te + ["InfantryWT"];
//_te=_te + ["InfantryFT"];
_s = _s	+ [_te];

_n = _n	+ ["WeaponsSquad"];
_d = _d	+ ["Weapons Squad"];
_t = _t + [_INFANTRY];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["MechanizedLight"];
_te=_te + ["InfantryWT"];
_s = _s	+ [_te];

_n = _n	+ ["LargeWeaponsSquad"];
_d = _d	+ ["Large Weapons Squad"];
_t = _t + [_INFANTRY];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["MechanizedLight"];
_te=_te + ["InfantryWT"];
_te=_te + ["MechanizedLight"];
_te=_te + ["InfantryWT"];
_s = _s	+ [_te];

_n = _n	+ ["ATSquad"];
_d = _d	+ ["AT Squad"];
_t = _t + [_INFANTRY];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["MechanizedLight"];
_te=_te + ["InfantryAT"];
_s = _s	+ [_te];

_n = _n	+ ["LargeATSquad"];
_d = _d	+ ["Large AT Squad"];
_t = _t + [_INFANTRY];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["MechanizedLight"];
_te=_te + ["InfantryAT"];
_te=_te + ["MechanizedLight"];
_te=_te + ["InfantryFT"];
//_te=_te + ["InfantryAT"];
_s = _s	+ [_te];

_n = _n	+ ["AASquad"];
_d = _d	+ ["AA Squad"];
_t = _t + [_INFANTRY];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["MechanizedLight"];
_te=_te + ["InfantryAA"];
_s = _s	+ [_te];

_n = _n + ["LargeAASquad"];
_d = _d	+ ["Large AA Squad"];
_t = _t + [_INFANTRY];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["MechanizedLight"];
_te=_te + ["InfantryFT"];
_te=_te + ["MechanizedLight"];
_te=_te + ["InfantryAA"];
//_te=_te + ["InfantryAA"];
_s = _s	+ [_te];

_n = _n	+ ["ATAASquad"];
_d = _d	+ ["AT/AA Squad"];
_t = _t + [_INFANTRY];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["MechanizedLight"];
_te=_te + ["InfantryATAA"];
_s = _s	+ [_te];

_n =_n	+ ["LargeATAASquad"];
_d = _d	+ ["AT/AA Squad"];
_t = _t + [_INFANTRY];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["MechanizedLight"];
_te=_te + ["InfantryFT"];
_te=_te + ["MechanizedLight"];
_te=_te + ["InfantryATAA"];
//_te=_te + ["InfantryATAA"];
_s = _s + [_te];

//Maybe a large SpecOps squad would be too much? ;)
_n = _n	+ ["SniperSquad"];
_d = _d	+ ["SniperSquad"];
_t = _t + [_SPECOPS];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["Sniper"];
_te=_te + ["Sniper"];
_s = _s	+ [_te];

_n = _n	+ ["ReconSquad"];
_d = _d	+ ["Recon Squad"];
_t = _t + [_MECHANIZED];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["Recon"];
_te=_te	+ ["Recon"];
_s = _s	+ [_te];

_n = _n	+ ["LargeReconSquad"];
_d = _d	+ ["Large Recon Squad"];
_t = _t + [_MECHANIZED];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["Recon"];
_te=_te + ["Recon"];
_te=_te + ["Recon"];
_s = _s	+ [_te];

_n = _n	+ ["MechanizedSquad"];
_d = _d	+ ["Mechanized Squad"];
_t = _t + [_MECHANIZED];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["MechanizedMedium"];
_te=_te + ["InfantryFT"];
_s = _s	+ [_te];

_n = _n	+ ["LargeMechanizedSquad"];
_d = _d	+ ["Large Mechanized Squad"];
_t = _t + [_MECHANIZED];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["MechanizedMedium"];
_te=_te + ["MechanizedMedium"];
_te=_te + ["InfantryFT"];
_te=_te + ["InfantryWT"];
_s = _s	+ [_te];

_n = _n	+ ["HeavyMechanizedSquad"];
_d = _d	+ ["Heavy Mechanized Squad"];
_t = _t + [_MECHANIZED];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["MechanizedHeavy"];
_te=_te + ["InfantryFT"];
_s = _s	+ [_te];

_n = _n	+ ["LargeHeavyMechanizedSquad"];
_d = _d	+ ["Large Heavy Mechanized Squad"];
_t = _t + [_MECHANIZED];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["MechanizedHeavy"];
_te=_te + ["InfantryFT"];
_te=_te + ["InfantryWT"];
//_te = _te + ["InfantryFT"];
_s = _s	+ [_te];

_n = _n	+ ["LightTankSquad"];
_d = _d	+ ["Light Tank Squad"];
_t = _t + [_ARMOR];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["TankMedium"];
_te=_te + ["TankMedium"];
_s = _s	+ [_te];

_n = _n	+ ["MediumLightTankSquad"];
_d = _d	+ ["Medium Light Tank Squad"];
_t = _t + [_ARMOR];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["TankMedium"];
_te=_te + ["TankMedium"];
_te=_te + ["TankMedium"];
_s = _s	+ [_te];

_n = _n	+ ["LargeLightTankSquad"];
_d = _d	+ ["Large Light Tank Squad"];
_t = _t + [_ARMOR];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["TankMedium"];
_te=_te + ["TankMedium"];
_te=_te + ["TankMedium"];
_te=_te + ["TankMedium"];
_s = _s	+ [_te];

_n = _n	+ ["HeavyTankSquad"];
_d = _d	+ ["Heavy Tank Squad"];
_t = _t + [_ARMOR];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["TankHeavy"];
_te=_te + ["TankHeavy"];
_s = _s	+ [_te];

_n = _n	+ ["MediumHeavyTankSquad"];
_d = _d	+ ["Medium Heavy Tank Squad"];
_t = _t + [_ARMOR];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["TankHeavy"];
_te=_te + ["TankHeavy"];
_te=_te + ["TankHeavy"];
_s = _s	+ [_te];

_n = _n	+ ["LargeHeavyTankSquad"];
_d = _d	+ ["Large Heavy Tank Squad"];
_t = _t + [_ARMOR];
_ai=_ai	+ [false];
_f = _f	+ [_faction];
_te		= ["TankHeavy"];
_te=_te + ["TankHeavy"];
_te=_te + ["TankHeavy"];
_te=_te + ["TankHeavy"];
_s = _s	+ [_te];

//Special team type that should be present since core will look for this as a default for Base Patrol teams.
//However, it will not break anything by removing it (just no default team then).
_n = _n	+ ["BasePatrol"];
_d = _d	+ [""];
_t = _t + ["Special"];
_ai=_ai	+ [true];
_f = _f	+ [_faction];
_te		= ["InfantryATAA"];
//_te=_te + ["InfantryATAA"];
//_te=_te + ["InfantryAA"];
_te=_te	+ ["MechanizedHeavy"];	//Better to put more expensive units at the bottom for this type.
_s = _s	+ [_te];

//Special team type that should be present since core will look for this as a default for Base Defense teams.
//However, it will not break anything by removing it (just no default team then). This team's main function is to man
//Stationary defenses, so plain soldiers are best.
_n = _n	+ ["BaseDefense"];
_d = _d	+ [""];
_t = _t + ["Special"];
_ai=_ai	+ [true];
_f = _f	+ [_faction];
_te		= ["Infantry"];
_te=_te + ["Infantry"];
_s = _s	+ [_te];

//Patrol squads for towns (avoid using unarmed trucks since they don't travel far).
_n = _n	+ ["InfantryPatrol"];
_d = _d	+ [""];
_t = _t + ["Special"];
_ai=_ai	+ [true];
_f = _f	+ [_faction];
_te		= ["InfantryFT"];
_te=_te + ["InfantryWT"];
_s = _s	+ [_te];

_n = _n	+ ["LargeInfantryPatrol"];
_d = _d	+ [""];
_t = _t + ["Special"];
_ai=_ai	+ [true];
_f = _f	+ [_faction];
_te		= ["InfantryFT"];
_te=_te + ["InfantryWT"];
_te=_te + ["InfantryATAA"];
_s = _s	+ [_te];

Private["_abilities","_ability","_a","_data","_h","_i","_index","_l","_list","_teams","_total","_totalTemplates"];

_total = Count _n;
_totalTemplates = Count WestTeamTemplateNames;

for [{_count = 0},{_count < _total},{_count = _count + 1}] do
{
	_teams = _s Select _count;
	_faction = _f Select _count;
	_i = false;
	_l = false;
	_h = false;
	_a = false;
	_units = [];
	_cost = 0;
	_abilities = [0,0,0,0];

	{
		_data = [West,_x,_faction] Call BIS_WF_GetTeamTemplateData;
		if (Count _data > 0) then
		{
			_index = _data Select 0;

			//Determine which types squad belongs to.
			if (_index In WestInfantryTeamTypes) then {_i = true};
			if (_index In WestLightTeamTypes) then {_l = true};
			if (_index In WestHeavyTeamTypes) then {_h = true};
			if (_index In WestAirTeamTypes) then {_a = true};

			//Get units & abilities from all teams in this squad.
			_units = _units + (WestTeamTemplates Select _index);
			_cost = _cost + (WestTeamTemplateCosts Select _index);
			_ability = WestTeamTemplateAbilities Select _index;
			if (_ability >= (BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPEAT")) then {_abilities Set[3,BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPEAT"];_ability = _ability - (BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPEAT")};
			if (_ability >= (BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPEAA")) then {_abilities Set[2,BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPEAA"];_ability = _ability - (BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPEAA")};
			if (_ability >= (BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPENORMAL")) then {_abilities Set[1,BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPENORMAL"];_ability = _ability - (BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPENORMAL")};
			if (_ability >= (BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPEUNARMED")) then {_abilities Set[0,BIS_WF_Constants GetVariable "BIS_WF_TEAMTYPEUNARMED"]};
		};
	} ForEach _teams;

	Private["_maxSize"];

	_maxSize = -1;
	if (!IsNil {BIS_WF_Constants GetVariable "MAXTEAMSIZE"}) then {_maxSize = BIS_WF_Constants GetVariable "MAXTEAMSIZE"};

	if (_maxSize > 0) then
	{
		if (([_units,West] Call BIS_WF_GetTeamTemplateSize) <= _maxSize) then {_maxSize = -1};
	};

	//Always add base defense teams.
	if ((_n Select _count) In ["BaseDefense","BasePatrol"]) then {_maxSize = -1};

	//Filter out any squads that are too large for the mission.
	if (_maxSize < 0) then
	{
		//Now append these new compositions to standard team lists.
		if (_i) then {WestInfantryTeamTypes = WestInfantryTeamTypes + [count WestTeamTemplates]};
		if (_l) then {WestLightTeamTypes = WestLightTeamTypes + [count WestTeamTemplates]};
		if (_h) then 
		{
		  //WestHeavyTeamTypes = WestHeavyTeamTypes + [_totalTemplates + _count];
		  WestHeavyTeamTypes = WestHeavyTeamTypes + [count WestTeamTemplates];
		};
		if (_a) then {WestAirTeamTypes = WestAirTeamTypes + [count WestTeamTemplates]};
		if (_ai Select _count) then {WestAIOnlyTeamTypes = WestAIOnlyTeamTypes + [count WestTeamTemplates]};
    
		WestTeamTemplates = WestTeamTemplates + [_units];
		WestTeamTemplateNames = WestTeamTemplateNames + [_n Select _count];
		WestTeamTemplateDescriptions = WestTeamTemplateDescriptions + [_d Select _count];
		WestTeamTemplateTypes = WestTeamTemplateTypes + [_t Select _count];

		_ability = 0;
		{_ability = _ability + _x} ForEach _abilities;
		WestTeamTemplateAbilities = WestTeamTemplateAbilities + [_ability];
		WestTeamTemplateCosts = WestTeamTemplateCosts + [_cost];
		WestTeamTemplateFactions = WestTeamTemplateFactions + [_faction];

		//Append squad to faction fast-lookup lists.
		for [{_count1 = Count WestTeamTemplateFactionIndex - 1},{_count1 >= 0},{_count1 = _count1 - 1}] do
		{
			_list = WestTeamTemplateNamesByFaction Select _count1;

			if ((WestTeamTemplateFactionIndex Select _count1) == _faction) then
			{
				_list = _list + [_n Select _count];
			}
			else
			{
				_list = _list + [""];
			};

			WestTeamTemplateNamesByFaction Set[_count1,_list];
		};
	};
};

//*****************************************************************************************
//9/6/8 MM - Created file.
