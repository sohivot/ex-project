enum eStuffBox
{
	BoxMessage1[320],
	BoxMessage2[320],
	BoxModel,
	BoxSize
}
new InfoBox[MAX_PLAYERS][4][eStuffBox];
new MaxPlayerBox[MAX_PLAYERS];
new PlayerText: TextDrawBox[MAX_PLAYERS][4*5];
new IndexBox[MAX_PLAYERS];

VRRP::HiddenBox(playerid)
{
	if(!IndexBox[playerid]) return 1;
	--IndexBox[playerid];
	MaxPlayerBox[playerid]--;
	for(new i=-1; ++i<5;) PlayerTextDrawDestroy(playerid, TextDrawBox[playerid][(IndexBox[playerid]*5)+i]);

	return 1;
}

ShowItemBox(playerid, pesan1[], pesan2[], model)
{
	ShowingBox(playerid, pesan1, pesan2, model);
	return 1;
}

stock ShowingBox(playerid, string:message[], string:message2[], model)
{
	if(MaxPlayerBox[playerid] == 4) return 1;
	MaxPlayerBox[playerid]++;
	for(new x=-1;++x<IndexBox[playerid];)
	{
		for(new i=-1;++i<5;) PlayerTextDrawDestroy(playerid, TextDrawBox[playerid][(x*5) + i]);
		InfoBox[playerid][IndexBox[playerid]-x] = InfoBox[playerid][(IndexBox[playerid]-x)-1];
	}
	format(InfoBox[playerid][0][BoxMessage1], 320, "%s", message);
	format(InfoBox[playerid][0][BoxMessage2], 320, "%s", message2);
	InfoBox[playerid][0][BoxModel] = model;
	InfoBox[playerid][0][BoxSize] = 3;

	++IndexBox[playerid];
	new Float:new_x=0.0;
	for(new x=-1;++x<IndexBox[playerid];)
	{
		CreateBox(playerid, x, x * 5, new_x);
		new_x += (InfoBox[playerid][x][BoxSize]*7.25)+35.0;
	}
	SetTimerEx("HiddenBox", 7000, false, "i", playerid);
	return 1;
}

stock CreateBox(const playerid, index, i, const Float:new_x)
{
	new lines = InfoBox[playerid][index][BoxSize];
	new Float:x = (lines * 5) + new_x;
	new Float:posisibaru = x-30.0;

	PlayerPlaySound(playerid, 1150, 0, 0, 0);
    TextDrawBox[playerid][i] = CreatePlayerTextDraw(playerid, 367.000+posisibaru, 329.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, TextDrawBox[playerid][i], 55.000, 70.000);
    PlayerTextDrawAlignment(playerid, TextDrawBox[playerid][i], 1);
    PlayerTextDrawColor(playerid, TextDrawBox[playerid][i], 842682623);
    PlayerTextDrawSetShadow(playerid, TextDrawBox[playerid][i], 0);
    PlayerTextDrawSetOutline(playerid, TextDrawBox[playerid][i], 0);
    PlayerTextDrawBackgroundColor(playerid, TextDrawBox[playerid][i], 255);
    PlayerTextDrawFont(playerid, TextDrawBox[playerid][i], 4);
    PlayerTextDrawSetProportional(playerid, TextDrawBox[playerid][i], 1);
	PlayerTextDrawShow(playerid, TextDrawBox[playerid][i]);

    TextDrawBox[playerid][++i] = CreatePlayerTextDraw(playerid, 367.000+posisibaru, 396.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, TextDrawBox[playerid][i], 55.000, 3.000);
    PlayerTextDrawAlignment(playerid, TextDrawBox[playerid][i], 1);
    PlayerTextDrawColor(playerid, TextDrawBox[playerid][i], -421070081);
    PlayerTextDrawSetShadow(playerid, TextDrawBox[playerid][i], 0);
    PlayerTextDrawSetOutline(playerid, TextDrawBox[playerid][i], 0);
    PlayerTextDrawBackgroundColor(playerid, TextDrawBox[playerid][i], 255);
    PlayerTextDrawFont(playerid, TextDrawBox[playerid][i], 4);
    PlayerTextDrawSetProportional(playerid, TextDrawBox[playerid][i], 1);
	PlayerTextDrawShow(playerid, TextDrawBox[playerid][i]);

    TextDrawBox[playerid][++i] = CreatePlayerTextDraw(playerid, 367.000+posisibaru, 329.000, "_");
    PlayerTextDrawTextSize(playerid, TextDrawBox[playerid][i], 55.000, 66.000);
    PlayerTextDrawAlignment(playerid, TextDrawBox[playerid][i], 1);
    PlayerTextDrawColor(playerid, TextDrawBox[playerid][i], -1);
    PlayerTextDrawSetShadow(playerid, TextDrawBox[playerid][i], 0);
    PlayerTextDrawSetOutline(playerid, TextDrawBox[playerid][i], 0);
    PlayerTextDrawBackgroundColor(playerid, TextDrawBox[playerid][i], 0);
    PlayerTextDrawFont(playerid, TextDrawBox[playerid][i], 5);
    PlayerTextDrawSetProportional(playerid, TextDrawBox[playerid][i], 0);
    PlayerTextDrawSetPreviewModel(playerid, TextDrawBox[playerid][i], InfoBox[playerid][index][BoxModel]);
    PlayerTextDrawSetPreviewRot(playerid, TextDrawBox[playerid][i], 0.000, 0.000, 0.000, 1.500);
    PlayerTextDrawSetPreviewVehCol(playerid, TextDrawBox[playerid][i], 0, 0);
	PlayerTextDrawShow(playerid, TextDrawBox[playerid][i]);

    TextDrawBox[playerid][++i] = CreatePlayerTextDraw(playerid, 369.000+posisibaru, 330.000, InfoBox[playerid][index][BoxMessage1]);
    PlayerTextDrawLetterSize(playerid, TextDrawBox[playerid][i], 0.119, 0.999);
    PlayerTextDrawAlignment(playerid, TextDrawBox[playerid][i], 1);
    PlayerTextDrawColor(playerid, TextDrawBox[playerid][i], -1);
    PlayerTextDrawSetShadow(playerid, TextDrawBox[playerid][i], 0);
    PlayerTextDrawSetOutline(playerid, TextDrawBox[playerid][i], 0);
    PlayerTextDrawBackgroundColor(playerid, TextDrawBox[playerid][i], 150);
    PlayerTextDrawFont(playerid, TextDrawBox[playerid][i], 1);
    PlayerTextDrawSetProportional(playerid, TextDrawBox[playerid][i], 1);
	PlayerTextDrawShow(playerid, TextDrawBox[playerid][i]);

    TextDrawBox[playerid][++i] = CreatePlayerTextDraw(playerid, 394.000+posisibaru, 381.000, InfoBox[playerid][index][BoxMessage2]);
    PlayerTextDrawLetterSize(playerid, TextDrawBox[playerid][i], 0.119, 0.999);
    PlayerTextDrawAlignment(playerid, TextDrawBox[playerid][i], 2);
    PlayerTextDrawColor(playerid, TextDrawBox[playerid][i], -1);
    PlayerTextDrawSetShadow(playerid, TextDrawBox[playerid][i], 0);
    PlayerTextDrawSetOutline(playerid, TextDrawBox[playerid][i], 0);
    PlayerTextDrawBackgroundColor(playerid, TextDrawBox[playerid][i], 150);
    PlayerTextDrawFont(playerid, TextDrawBox[playerid][i], 1);
    PlayerTextDrawSetProportional(playerid, TextDrawBox[playerid][i], 1);
	PlayerTextDrawShow(playerid, TextDrawBox[playerid][i]);
	return 1;
}