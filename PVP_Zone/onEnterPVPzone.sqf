private["_vehicle","_attachedObjects","_position"];
if (ExilePlayerInPVPzone) exitWith { false };
if !(alive player) exitWith { false };
ExilePlayerInPVPzone = true;

_vehicle = vehicle player;
if !(_vehicle isEqualTo player) then 
{
	if (local _vehicle) then 
	{
		_vehicle allowDamage true;
	};
	_attachedObjects = attachedObjects _vehicle;
	if !(_attachedObjects isEqualTo []) then 
	{
		_position = getPosATL _vehicle;
		{
			if ((typeOf _x) in ["DemoCharge_Remote_Mag", "SatchelCharge_Remote_Mag"]) then 
			{
				detach _x;
				_x setPosATL [(_position select 0) + random 2, (_position select 1) + random 2, 0.05];
				_x setDir (random 360);
			};
		}
		forEach _attachedObjects;
	};
};

["ErrorTitleAndText", ["Entering PVP AREA !<br />","First Person Only!"]] call ExileClient_gui_toaster_addTemplateToast; 


true