if !(ExilePlayerInPVPzone) then 
{
	if ((getPosATL (vehicle player)) call isInPVPZone) then 
	{
		[] call onEnterPVPzone; 
	};
	
}
else 
{
	
    if !((vehicle player) call isInPVPZone) then 
	{
		[] call onLeavePVPzone; 
	};
		
	
};