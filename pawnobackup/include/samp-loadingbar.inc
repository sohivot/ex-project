#if defined _loadingbar_included
  #endinput
#endif
#define _loadingbar_included

#define			 MAX_CALLBACK_STR			34

static  PlayerText: LoadingBar[MAX_PLAYERS][4],
        LoadingTimer[MAX_PLAYERS],
        LoadingValue[MAX_PLAYERS],
        LoadingMaxValue[MAX_PLAYERS],
        bool:IsLoading[MAX_PLAYERS],
		LoadingCallback[MAX_PLAYERS][MAX_CALLBACK_STR];

forward OnLoadingBarFinished(playerid);
forward OnLoadingBarProgress(playerid, value);

static Loading_Remove(playerid)
{
	for(new i = 0; i < 4; i++)
	{
		PlayerTextDrawDestroy(playerid, LoadingBar[playerid][i]);
	}
	LoadingValue[playerid] = 0;
	LoadingMaxValue[playerid] = 0;
	IsLoading[playerid] = false;
	LoadingCallback[playerid][0] = EOS;
	return 1;
}

static Loading_BarUpdate(playerid)
{
	PlayerTextDrawTextSize(playerid, LoadingBar[playerid][2], LoadingValue[playerid] * 99 / LoadingMaxValue[playerid], 19.000000);
	PlayerTextDrawShow(playerid, LoadingBar[playerid][2]);
}

forward Loading_TimerUpdate(playerid);
public Loading_TimerUpdate(playerid)
{
	if(!IsValidLoadingBar(playerid))
		return 0;

	if(LoadingValue[playerid] < LoadingMaxValue[playerid])
	{
		LoadingValue[playerid]++;
		Loading_BarUpdate(playerid);
        CallLocalFunction(#OnLoadingBarProgress, "dd", playerid, LoadingValue[playerid]);
	}
	else
	{
		if(LoadingCallback[playerid][0] != EOS)
		{
			CallLocalFunction(LoadingCallback[playerid], "d", playerid);
		}
        CallLocalFunction(#OnLoadingBarFinished, "d", playerid);
		StopPlayerLoadingBar(playerid);	
	}
	return 1;
}

/* Used Functions */

stock IsValidLoadingBar(playerid)
	return IsLoading[playerid];

stock StartPlayerLoadingBar(playerid, value = 3, const text[] = "_", interval = 1000, const callback[] = EOS, color = 1687547311)
{
	if(IsValidLoadingBar(playerid))
		StopPlayerLoadingBar(playerid);

	LoadingBar[playerid][0] = CreatePlayerTextDraw(playerid, 210.000, 359.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LoadingBar[playerid][0], 107.000, 26.000);
	PlayerTextDrawAlignment(playerid, LoadingBar[playerid][0], 1);
	PlayerTextDrawColor(playerid, LoadingBar[playerid][0], 943210495);
	PlayerTextDrawSetShadow(playerid, LoadingBar[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, LoadingBar[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, LoadingBar[playerid][0], 255);
	PlayerTextDrawFont(playerid, LoadingBar[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, LoadingBar[playerid][0], 1);

	LoadingBar[playerid][1] = CreatePlayerTextDraw(playerid, 214.000, 363.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LoadingBar[playerid][1], 99.000, 19.000);
	PlayerTextDrawAlignment(playerid, LoadingBar[playerid][1], 1);
	PlayerTextDrawColor(playerid, LoadingBar[playerid][1], -221);
	PlayerTextDrawSetShadow(playerid, LoadingBar[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, LoadingBar[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, LoadingBar[playerid][1], 255);
	PlayerTextDrawFont(playerid, LoadingBar[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, LoadingBar[playerid][1], 1);

	LoadingBar[playerid][2] = CreatePlayerTextDraw(playerid, 214.000, 363.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, LoadingBar[playerid][2], 99.000, 19.000);
	PlayerTextDrawAlignment(playerid, LoadingBar[playerid][2], 1);
	PlayerTextDrawColor(playerid, LoadingBar[playerid][2], 1926329087);
	PlayerTextDrawSetShadow(playerid, LoadingBar[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, LoadingBar[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, LoadingBar[playerid][2], 255);
	PlayerTextDrawFont(playerid, LoadingBar[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, LoadingBar[playerid][2], 1);

	LoadingBar[playerid][3] = CreatePlayerTextDraw(playerid, 265.000, 365.000, "MAKAN");
	PlayerTextDrawLetterSize(playerid, LoadingBar[playerid][3], 0.219, 1.500);
	PlayerTextDrawAlignment(playerid, LoadingBar[playerid][3], 2);
	PlayerTextDrawColor(playerid, LoadingBar[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, LoadingBar[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, LoadingBar[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, LoadingBar[playerid][3], 150);
	PlayerTextDrawFont(playerid, LoadingBar[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, LoadingBar[playerid][3], 1);

	PlayerTextDrawSetString(playerid, LoadingBar[playerid][3], text);
	PlayerTextDrawColor(playerid, LoadingBar[playerid][2], color);

	for(new i = 0; i < 4; i++)
	{
		PlayerTextDrawShow(playerid, LoadingBar[playerid][i]);
	}
	if(callback[0] != EOS)
	{
		format(LoadingCallback[playerid], MAX_CALLBACK_STR, "%s", callback);
	}
	LoadingValue[playerid] = 0;
	IsLoading[playerid] = true;
	LoadingMaxValue[playerid] = value;
	LoadingTimer[playerid] = SetTimerEx(#Loading_TimerUpdate, interval, true, "d", playerid);
	return 1;
}

stock StopPlayerLoadingBar(playerid)
{
    KillTimer(LoadingTimer[playerid]);
    Loading_Remove(playerid);	
}