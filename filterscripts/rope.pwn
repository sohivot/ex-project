/*
	ROPE SLIDING SYSTEM BY MAVERICK DC: maverick1945_
*/

#define ropelength 50 //length of slideable rope (ingame meters)
#include <a_samp>
#include <mapandreas>
#include <zcmd>
#define offsetz 12
#define dur 250

new r0pes[MAX_PLAYERS][ropelength],
    Float:pl_pos[MAX_PLAYERS][5];

public OnFilterScriptInit()
{
	print("\n");
	print("  |---------------------------------------------------");
	print("  |--- SA-MP Filterscripts Rope System Loaded");
    print("  |--  22 February 2025");
	print("  |---------------------------------------------------");
	return 1;
}

public OnFilterScriptExit()
{
	print("  |---------------------------------------------------");
	print("  |--  SA-MP Filterscripts Rope System Unloaded");
	print("  |---------------------------------------------------");
	return 1;
}

forward syncanim(playerid);
public syncanim(playerid)
{
	if(GetPVarInt(playerid,"roped") == 0) return 0;
	SetTimerEx("syncanim", dur, 0, "i", playerid);
	ApplyAnimation(playerid, "ped", "abseil", 4.0,0,0,0,1,0);
	return 1;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
	if(GetVehicleModel(vehicleid) == 487 && ispassenger)
	{
		SetPVarInt(playerid,"chop_id",GetPlayerVehicleID(playerid));
		SetPVarInt(playerid,"roped",0);
	}
	else SetPVarInt(playerid,"chop_id",0);
	return 1;
}
/*
public OnPlayerCommandText(playerid, cmdtext[])
{
    if (strcmp("/unrope", cmdtext, true, 5) == 0)
	{
        SetPVarInt(playerid,"roped",0);
        SetPVarInt(playerid,"chop_id",0);
        ClearAnimations(playerid);
        TogglePlayerControllable(playerid,0);
        TogglePlayerControllable(playerid,1);
        DisablePlayerCheckpoint(playerid);
        for(new destr4=0;destr4<=ropelength;destr4++)
		{
		    DestroyObject(r0pes[playerid][destr4]);
		}
    }
    return 1;
}*/

CMD:unrope(playerid, params[])
{
    SetPVarInt(playerid, "roped", 0);
    SetPVarInt(playerid, "chop_id", 0);
    ClearAnimations(playerid);
    TogglePlayerControllable(playerid, 0);
    TogglePlayerControllable(playerid, 1);
    DisablePlayerCheckpoint(playerid);

    for (new destr4 = 0; destr4 <= ropelength; destr4++)
    {
        DestroyObject(r0pes[playerid][destr4]);
    }

    SendClientMessage(playerid, -1, "You have been unroped.");
    return 1;
}


public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(GetPVarInt(playerid,"roped") == 0 && GetPlayerVehicleSeat(playerid) != 0 && IsPlayerInAnyVehicle(playerid) && (newkeys & KEY_YES || newkeys == KEY_YES))
	{
		GetPlayerPos(playerid,pl_pos[playerid][0],pl_pos[playerid][1],pl_pos[playerid][2]);
		MapAndreas_FindZ_For2DCoord(pl_pos[playerid][0],pl_pos[playerid][1],pl_pos[playerid][3]);
		pl_pos[playerid][4] = floatsub(pl_pos[playerid][2],pl_pos[playerid][3]);
		if(pl_pos[playerid][4] >= ropelength) return SendClientMessage(playerid,0xAA3333AA,"terlalu tinggi, batas 50 meter dari tanah");
		if(pl_pos[playerid][4] <= 2) return RemovePlayerFromVehicle(playerid);
		SetPVarInt(playerid,"roped",1);
		// SetPlayerCheckpoint(playerid,pl_pos[playerid][0],pl_pos[playerid][1],floatsub(pl_pos[playerid][3],offsetz),20);
		SetPlayerPos(playerid,pl_pos[playerid][0],pl_pos[playerid][1],floatsub(pl_pos[playerid][2],2));
		SetPlayerVelocity(playerid,0,0,0);
		for(new rep=0;rep!=10;rep++) ApplyAnimation(playerid,"ped","abseil",4.0,0,0,0,1,0);
		for(new cre=0;cre<=pl_pos[playerid][4];cre++)
		{
		    r0pes[playerid][cre] = CreateObject(3004,pl_pos[playerid][0],pl_pos[playerid][1],floatadd(pl_pos[playerid][3],cre),87.640026855469,342.13500976563, 350.07507324219);
		}
		SetTimerEx("syncanim",dur,0,"i",playerid);
	}
	return 1;
}