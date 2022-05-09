waitUntil {!isNil "BIS_MPF_initDone"};

waituntil {!isNil "gameInitialized"};
waituntil {gameInitialized};

if (!isNil {BIS_WF_gameInitializedClient}) then 
{
	waituntil{BIS_WF_gameInitializedClient};
};

//color corrections
"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.6], [0.499, 0.287, 0.014, 0.0]]; "colorCorrections" ppEffectCommit 1; "colorCorrections" ppEffectEnable TRUE;

TRUE