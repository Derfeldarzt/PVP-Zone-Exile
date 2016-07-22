private["_position","_radius","_isInRange"];
_position = _this select 0;
_radius = _this select 1;
_isInRange = false;
{
	if ((_x distance2D _position) < _radius) exitWith
	{
		_isInRange = true;
	};
}
forEach ExilePVPZones;
_isInRange
