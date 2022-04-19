ScriptName "Config_Factions.sqf";

//Last modified 11/2/10
//*****************************************************************************************
//Description: Sets mission parameters.

BIS_WF_MissionDefaultSide = Civilian;
BIS_WF_Constants SetVariable["EASTSTARTINGTOWNSRATIO",0];
BIS_WF_Constants SetVariable["WESTSTARTINGTOWNSRATIO",0];
BIS_WF_Constants SetVariable["RESISTANCESTARTINGTOWNSRATIO",0.5];

//AI starting funds.
// TODO: Enemy only +.
private ["_param_starting_funds"];
if (isMultiplayer) then {
	_param_starting_funds = paramsArray Select 15;
}else{
	_param_starting_funds = 50000;
};
if (_param_starting_funds >= 0) then {
	private ["_tmp"];
	_tmp =+ _param_starting_funds;
	for [{_count = 0},{_count < 32},{_count = _count + 1}] do
	{
		// TODO: random
		Call Compile Format["EastAI%1Funds = %2",_count + 1, _tmp];
		Call Compile Format["WestAI%1Funds = %2",_count + 1, _tmp];
		Call Compile Format["ResistanceAI%1Funds = %2",_count + 1, _tmp];
	};

	_tmp = (_param_starting_funds / 2500);

	EastAICommanderFunds = round (3500 * _tmp);
	WestAICommanderFunds = round (3500 * _tmp);
	ResistanceAICommanderFunds = round (3500 * _tmp);

	EastSupplies = 2000;
	WestSupplies = 2000;
	ResistanceSupplies = 2000;
};

[] Call Compile PreprocessFile "Config_Factions.sqf";
[] Call Compile PreprocessFile "Config_Structures.sqf";
[] Call Compile PreprocessFile "Config_Barracks.sqf";
[] Call Compile PreprocessFile "Config_LightFactory.sqf";
[] Call Compile PreprocessFile "Config_HeavyFactory.sqf";
[] Call Compile PreprocessFile "Config_AircraftFactory.sqf";
[] Call Compile PreprocessFile "Config_Airport.sqf";
[] Call Compile PreprocessFile "Config_Depot.sqf";
[] Call Compile PreprocessFile "Config_Camp.sqf";
[] Call Compile PreprocessFile "Config_Loadouts.sqf";

[] Call Compile PreprocessFile ("Config_Teams.sqf");
[] Call Compile PreprocessFile ("Config_Squads.sqf");

//MODIFY SOLDIERS AND VEHICLES FOR MISSION.
//*****************************************************************************************

//Reduce transport aircraft costs in coop games.
if (BIS_WF_EnhancedCoopMode) then
{
	//Cheap air transports.
	[West,"Aircraft","BAF_Merlin_HC3_D",750,30] Call BIS_WF_ModifyUnitData;
	[West,"Aircraft","CH_47F_BAF",1250,30] Call BIS_WF_ModifyUnitData;

	[Resistance,"Aircraft","UH1H_TK_GUE_EP1",750,30] Call BIS_WF_ModifyUnitData;

	//Reduce aircraft factory costs.
	_index = westStructures Find "Aircraft";
	if (_index != -1) then {westStructureCosts Set[_index,1000]};

	_index = eastStructures Find "Aircraft";
	if (_index != -1) then {eastStructureCosts Set[_index,1500]};

	_index = resistanceStructures Find "Aircraft";
	if (_index != -1) then {resistanceStructureCosts Set[_index,1500]};
};

unitBountyNames = soldierUnits + lightUnits + heavyUnits + aircraftUnits + eastDefenseNames + westDefenseNames + resistanceDefenseNames;
unitBounties = soldierUnitCosts + lightUnitCosts + heavyUnitCosts + aircraftUnitCosts + eastDefenseCosts + westDefenseCosts + resistanceDefenseCosts;
unitBountyDescriptions = soldierUnitDescriptions + lightUnitDescriptions + heavyUnitDescriptions + aircraftUnitDescriptions + eastDefenseDescriptions + westDefenseDescriptions + resistanceDefenseDescriptions;

//*****************************************************************************************
//11/20/9 MM - Created file.
