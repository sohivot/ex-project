#include <YSI_Coding\y_hooks>
#include <sscanf2>


stock fpsdisplay(playerid)
{
    TextDrawShowForPlayer(playerid, FPSDISPLAY[0]);
	TextDrawShowForPlayer(playerid, FPSDISPLAY[1]);
	TextDrawShowForPlayer(playerid, FPSDISPLAY[2]);
	TextDrawShowForPlayer(playerid, FPSDISPLAY[3]);
	PlayerTextDrawShow(playerid, FPSDISPLAYTD[playerid][0]);
	PlayerTextDrawShow(playerid, FPSDISPLAYTD[playerid][1]);
	PlayerTextDrawShow(playerid, FPSDISPLAYTD[playerid][2]);
	FpsDisplayUpdate[playerid] = SetTimerEx("FpsDisplayGame", 1000, true, "d", playerid);
    return 1;
}

stock fpsoff(playerid)
{
    TextDrawHideForPlayer(playerid, FPSDISPLAY[0]);
	TextDrawHideForPlayer(playerid, FPSDISPLAY[1]);
	TextDrawHideForPlayer(playerid, FPSDISPLAY[2]);
	TextDrawHideForPlayer(playerid, FPSDISPLAY[3]);
	PlayerTextDrawHide(playerid, FPSDISPLAYTD[playerid][0]);
	PlayerTextDrawHide(playerid, FPSDISPLAYTD[playerid][1]);
	PlayerTextDrawHide(playerid, FPSDISPLAYTD[playerid][2]);
    return 1;
}

forward FpsDisplayGame(playerid);
public FpsDisplayGame(playerid)
{
	new AgusSamp[256];
    format(AgusSamp, sizeof(AgusSamp), "FPS_:_%d", GetPlayerFPS(playerid));
    PlayerTextDrawSetString(playerid, FPSDISPLAYTD[playerid][0], AgusSamp);

    format(AgusSamp, sizeof(AgusSamp), "PING_:_%dMS", GetPlayerPing(playerid));
    PlayerTextDrawSetString(playerid, FPSDISPLAYTD[playerid][1], AgusSamp);

    format(AgusSamp, sizeof(AgusSamp), "PL_:_%.2f%", NetStats_PacketLossPercent(playerid));
    PlayerTextDrawSetString(playerid, FPSDISPLAYTD[playerid][2], AgusSamp);


    return 1;
}