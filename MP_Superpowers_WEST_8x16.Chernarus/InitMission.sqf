scriptName "InitMission.sqf";
//Last modified 2/25/9
//*****************************************************************************************
//Description: This is called before the WF core initialization starts.
//Note that you cannot set values like VOTETIME because core init will overwrite them.
//Set those values in a custom Init_Common.sqf.
//*****************************************************************************************
//Script for setting WF init values before init begins (this script). Put in init field of Warfare logic in editor.
//BIS_WF_Common SetVariable ["customInitMissionScript","InitMission.sqf"];

BIS_WF_Common SetVariable ["sidePlacement",[true,-1,-1]];	//Side placement, use all possible locations for all sides.
BIS_WF_Common SetVariable ["customInitClientScript",""];	//Use default core client initialization.
BIS_WF_Common SetVariable ["customInitCommonScript","Init_Common.sqf"];	//Run custom common init after core's. You can replace core's common scripts here, or just change values like vote time, etc. Refer to Init_Constants.sqf.
BIS_WF_Common SetVariable ["customInitServerScript",""];	//Use default core server initialization.

BIS_WF_Common SetVariable ["customInitBasesScript",""];		//Create custom base vehicles & patrols.
BIS_WF_Common SetVariable ["customBaseLayoutsScript",""];	//Custom base layouts.
BIS_WF_Common SetVariable ["customTownsScript",""];			//Custom town configurations.

//*****************************************************************************************
//1/17/7 MM - Created file.
