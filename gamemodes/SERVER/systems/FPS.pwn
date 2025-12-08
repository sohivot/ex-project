#include <YSI_Coding\y_hooks>
#include <sscanf2>

//command in server
CMD:checkfps(playerid, params[], help)
{
	new target;
	if(sscanf(params,"u",target)) return Usage2(playerid, "Correct usage: /fps [ID]");
 	if(!IsPlayerConnected(target)) return Usage2(playerid, "There is no player with this id.");
 	new name[24];
 	GetPlayerName(target, name, 24);
 	new szString[128];
 	format(szString, sizeof(szString), "%s >> FPS: %d >> Packetloss: %.2f", name, GetPlayerFPS(target), NetStats_PacketLossPercent(target));
    va_SendClientMessage(playerid, 0x28DEF7AA, szString);
	return 1;
}

CMD:fps(playerid, params[], help)
{
    if(!PlayerData[playerid][pLogged]) return Error2(playerid, "Kamu belum login.");
    fpsdisplay(playerid);
    va_SendClientMessage(playerid, X11_TOMATO, "[Server] : Untuk Menghilangkan Fps /fpshide");
    return 1;
}

CMD:fpshide(playerid, params[], help)
{
    if(!PlayerData[playerid][pLogged]) return Error2(playerid, "Kamu belum login.");
    fpsoff(playerid);
    return 1;
}

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