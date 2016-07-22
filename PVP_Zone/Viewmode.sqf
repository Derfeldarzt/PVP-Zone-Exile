if (!isDedicated) then {

    waitUntil {!isNull (findDisplay 46)};

    if ((difficultyOption "thirdPersonView")==1) then
    {
        while {true} do {

            waitUntil {cameraView == "EXTERNAL" || cameraView == "GROUP"};

            if (ExilePlayerInPVPzone) then {
                player switchCamera "INTERNAL";
            };
            sleep 0.1;

         };
    };

};