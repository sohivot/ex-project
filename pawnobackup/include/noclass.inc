// Called when a player is fully connected to the server.
// OnPlayerFullyConnected(playerid)
#define ALS_DO_PlayerFullyConnected<%0> %0<PlayerFullyConnected,i>(end:playerid)

SetCameraData(playerid)
{
	switch(random(2))
	{
		case 0: //customer parking ganton
		{
			SetPlayerCameraPos(playerid, 2476.733, -1432.774, 51.964);
			SetPlayerCameraLookAt(playerid, 2473.117, -1435.877, 50.447);
			InterpolateCameraPos(playerid, 2476.733, -1432.774, 51.964, 2476.733 + 50.0, -1432.774, 51.964, 30000, CAMERA_MOVE);
		}
		case 1: // vinewood
		{
			SetPlayerCameraPos(playerid, 1282.955, -939.061, 54.310);
			SetPlayerCameraLookAt(playerid, 1286.786, -935.926, 53.614);
			InterpolateCameraPos(playerid, 1282.955, -939.061, 54.310, 1342.661, -892.656, 53.273, 30000, CAMERA_MOVE);
		}
	}
	return 1;
}

public OnPlayerRequestClass(playerid, classid)
{
	if(IsPlayerNPC(playerid)) {
		return 1;
	}
	
	// Enables spectator mode. This will hide the class selection buttons.
	TogglePlayerSpectating(playerid, true);
	
	SetPVarInt(playerid, "noclass", 1);
	SetCameraData(playerid);

	#if defined CS_OnPlayerRequestClass
	    return CS_OnPlayerRequestClass(playerid, classid);
	#else
	    return 1;
	#endif
}

hook OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(GetPVarType(playerid, "noclass")) {
		DeletePVar(playerid, "noclass");

		// -- Hook --
		call OnPlayerFullyConnected(playerid);

	}
	return 1;
}

stock CS_SpawnPlayer(playerid)
{
	if (GetPlayerState(playerid) == PLAYER_STATE_SPECTATING)
	{
	    TogglePlayerSpectating(playerid, false);
	}
	return SpawnPlayer(playerid);
}

#if defined _ALS_OnPlayerRequestClass
	#undef OnPlayerRequestClass
#else
	#define _ALS_OnPlayerRequestClass
#endif

#define OnPlayerRequestClass CS_OnPlayerRequestClass

#if defined _ALS_SpawnPlayer
	#undef SpawnPlayer
#else
	#define _ALS_SpawnPlayer
#endif

#define SpawnPlayer CS_SpawnPlayer

#if defined CS_OnPlayerRequestClass
	forward CS_OnPlayerRequestClass(playerid, classid);
#endif
