ScriptName "Config_Factions.sqf";

//Last modified 10/13/10
//*****************************************************************************************
//Description: Configure the factions.
//*****************************************************************************************

_westFaction = GetText (ConfigFile >> "CfgVehicles" >> "BAF_Soldier_MTP" >> "faction");

//Factions that side controls (buildings & defenses of this faction will be available).
//Can use multiple factions. For example West could be USMC and CDF. Primary faction should be first one.
BIS_WF_Common SetVariable ["WestFactions",[_westFaction]];

//All possible factions for a mission.
//A mission may start with one faction but another is enabled later. If so, it must be included here.
BIS_WF_Common SetVariable ["AllWestFactions",[_westFaction]];

BIS_WF_Common SetVariable ["WestHQIdentity","WFHQ_BAF"];
BIS_WF_Common SetVariable ["EastHQIdentity","WFHQ_TK"];
BIS_WF_Common SetVariable ["ResistanceHQIdentity","WFHQ_TK"];

//*****************************************************************************************
//1/21/10 MM - Created file.
