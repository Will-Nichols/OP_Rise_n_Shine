//Helps the AI recognize people firing from a better distance
params ["_unit","_weapon","_muzzle","_mode","_ammo","_magazine","_bullet","_gunner"];
if ((behaviour _unit) isEqualTo "COMBAT") exitWith {};

if (_weapon isEqualTo "Put" || {_weapon isEqualTo "Throw"}) exitwith {};
if ((group _unit) getVariable ["VCM_NOFLANK",false]) exitWith {};

//Check if unit has suppressor on weapon.
private _ItemList = weaponsitems _unit;
private _Return = true;

if (((_ItemList select 0) select 1) isEqualTo "") then {_Return = false;};

//systemchat format ["%1",_Sup];
if !(_Return) then 
{
			
	private _TimeShot = _unit getVariable ["VCM_FTH",-20];
	
	if ((time - _TimeShot) > 20) then 
	{
		private _Array1 = _unit call VCM_fnc_EnemyArray;
		private _SNDA = [];
		{
			if ((_x distance _unit) < VCM_HEARINGDISTANCE) then
			{
				_SNDA pushback _x;
			};
		} foreach _Array1;
		
		if (count _SNDA > 0) then
		{
			[
				[_SNDA,_Unit],
				{
					params ["_SNDA","_unit"];
					{
						if (local _x) then
						{
							private _kv = _x knowsAbout _unit;
							_x reveal [_unit,(_kv + 0.25)];
						};
					} foreach _SNDA;
				}
			] remoteExec ["bis_fnc_call",0];		
		};
	
		_Unit setVariable ["VCM_FTH",time];
	};
};




