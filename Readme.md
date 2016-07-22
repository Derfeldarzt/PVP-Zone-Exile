Put the PVP_Zone Folder in your Mission File
_________________________________________________
Put that in your INIT.SQF

[] execVM "PVP_Zone\viewmode.sqf";

[] execVM "PVP_Zone\PVP_Respect.sqf";

__________________________________________________
Custom CODES for your config.cpp


#include "PVP_Zone\PVP_Zone_Codes.hpp"
