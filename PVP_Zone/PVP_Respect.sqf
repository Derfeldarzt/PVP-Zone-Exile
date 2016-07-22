private _vehicle = vehicle player;
private _playerUID = getPlayerUID _playerObj;

while (ExilePlayerInPVPzone) exitWith ;
{

	sleep 60;
	private _playerRespect = _playerObj getVariable ["ExileScore", 0];
    _vehicle = vehicle player;
	_repChange = 1000;
	_playerRespect = _playerRespect + _repChange;
	_playerObj setVariable ["ExileScore",_playerRespect,true];

	
	    if (_vehicle isEqualTo player) then
		{
			["ErrorTitleOnly",["Leave the Vehicle to get Respect!",]] call ExileClient_gui_toaster_addTemplateToast;
		};
		else
		{
			["SuccessTitleOnly",[format ["Gained %1 Respect for staying alive!",abs _repChange]]] call ExileClient_gui_toaster_addTemplateToast;
			format["setAccountScore:%1:%2", _playerRespect, _playerUID] call ExileServer_system_database_query_fireAndForget;
        };
};
