private["_vehicle"];
if !(ExilePlayerInPVPzone) exitWith { false };
ExilePlayerInPVPzone = false;
player allowDamage true;

_vehicle = vehicle player; 
if !(_vehicle isEqualTo player) then 
{
	if (local _vehicle) then 
	{
		_vehicle allowDamage true;
	};
};

if (alive player) then 
{
	["You has left PVP Area !","Feeling safe now ?"]] call ExileClient_gui_toaster_addTemplateToast; 
};
true