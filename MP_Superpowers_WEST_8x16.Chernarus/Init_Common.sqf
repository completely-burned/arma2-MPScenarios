BIS_WF_Constants SetVariable["OPPOSITIONMULTIPLIER",1];

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
