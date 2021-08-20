Vcm_Settings = 
{
	/*
		ADDITIONAL COMMANDS
		(group this) setVariable ["VCM_NOFLANK",true]; //This command will stop the AI squad from executing advanced movement maneuvers.
		(group this) setVariable ["VCM_NORESCUE",true]; //This command will stop the AI squad from responding to calls for backup.
		(group this) setVariable ["VCM_TOUGHSQUAD",true]; //This command will stop the AI squad from calling for backup.
		
	*/	
	Vcm_ActivateAI = true; //Set this to false to disable VcomAI. It can be set to true at any time to re-enable Vcom AI
	VcmAI_ActiveList = []; //Leave this alone.
	Vcm_ArtilleryArray = [];
	VCM_ARTYENABLE = true; //Enable improved artillery handling.
	VCM_AIMagLimit = 5; //Number of mags remaining before AI looks for ammo.
	VCM_Debug = true; //Enable debug mode.
	VCM_MINECHANCE = 75; //Chance to lay a mine
	VCM_ARTYLST = []; //List of all AI inside of artillery pieces
	VCM_ARTYDELAY = 300; //Delay between squads requesting artillery
	VCM_ARTYWT = -(VCM_ARTYDELAY);
	VCM_ARTYET = -(VCM_ARTYDELAY);
	VCM_ARTYRT = -(VCM_ARTYDELAY);
	VCM_ARTYSPREAD = 400; //Spread of artillery rounds;	
	VCM_SIDEENABLED = [west,east,resistance]; //Sides that will activate Vcom AI
	VCM_RAGDOLL = true; //Should AI ragdoll when hit
	VCM_RAGDOLLCHC = 50; //CHANCE AI RAGDOLL	
	VCM_HEARINGDISTANCE = 800; //Distance AI hear unsuppressed gunshots.
	VCM_WARNDIST = 800; //How far AI can request help from other groups.
	VCM_STATICARMT = 300; //How long AI stay on static weapons when initially arming them. This is just for AI WITHOUT static bags. They will stay for this duration when NO ENEMIES ARE SEEN, or their group gets FAR away.	
	VCM_StealVeh = true; //Will the AI steal vehicles.
	VCM_AIDISTANCEVEHPATH = 100; //Distance AI check from the squad leader to steal vehicles	
	//AI DIFFICULTY OPTIONS
	//SELECT FROM THE FOLLOWING PRESETS BY REMOVING THE "//"	AND ADDING "//" TO ALL OTHERS. THERE CAN ONLY BE ONE!
	//						AIMINGACCURACY,AIMINGSHAKE,AIMINGSPEED,COMMANDING,COURAGE,ENDURANCE,GENERAL,RELOADSPEED,SPOTDISTANCE,SPOTTIME,FLEEING
	
	//LOW DIFFICULTY
	//VCM_AIDIFA = [['aimingAccuracy',0.35],['aimingShake',0.1],['aimingSpeed',0.25],['commanding',1],['courage',1],['endurance',1],['general',0.5],['reloadSpeed',1],['spotDistance',0.8],['spotTime',0.8]];
	
	//MEDIUM DIFFICULTY
	VCM_AIDIFA = [['aimingAccuracy',0.45],['aimingShake',0.2],['aimingSpeed',0.35],['commanding',1],['courage',1],['endurance',1],['general',1],['reloadSpeed',1],['spotDistance',0.85],['spotTime',0.85]];
	
	//HIGH DIFFICULTY
	//VCM_AIDIFA = [['aimingAccuracy',0.55],['aimingShake',0.4],['aimingSpeed',0.45],['commanding',1],['courage',1],['endurance',1],['general',0.5],['reloadSpeed',1],['spotDistance',0.8],['spotTime',0.8]];
	
		
	VCM_AIDIFSET =
	{
		{		
			private _unit = _x;		
			_unit setSkill 0.9;
			_unit allowFleeing 0;
			{
				_unit setSkill _x;
			} forEach VCM_AIDIFA;
		} forEach (units _this);
	};	
	
};