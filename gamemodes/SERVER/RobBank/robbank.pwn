 // TEXTDRAW
new PlayerText:HackTD[MAX_PLAYERS][7];
new PlayerText:HackingSelect[MAX_PLAYERS][54];
new PlayerText: Random_Hack[MAX_PLAYERS][3];
new pTimerHackingBank[MAX_PLAYERS] = {-1, ...};
new pTimerTakingBank[MAX_PLAYERS] = {-1, ...};

new biglet1ters[26][] = {
	"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
};
ptask bankTime[1000](playerid)
{
 	if(AccountData[playerid][pHacking] != 0)
    {
        if(AccountData[playerid][pHackingTime] > 0)
        {
            AccountData[playerid][pHackingTime]--;

            new 
                string[16];
            
            format(string, sizeof string, "00:%02d", AccountData[playerid][pHackingTime]);
            PlayerTextDrawSetString(playerid, HackTD[playerid][3], string);
            PlayerTextDrawShow(playerid, HackTD[playerid][3]);
        }
        else
        {
            Hack_Gagal(playerid, AccountData[playerid][pHacking]);
            Hack_Hide(playerid);
        }
    }
}
CreateBankRob(playerid)
{
    HackingSelect[playerid][0] = CreatePlayerTextDraw(playerid, 200.000, 163.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][0], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][0], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][0], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][0], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][0], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][0], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][0], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][0], 1);

	HackingSelect[playerid][1] = CreatePlayerTextDraw(playerid, 235.000, 163.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][1], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][1], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][1], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][1], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][1], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][1], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][1], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][1], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][1], 1);

	HackingSelect[playerid][2] = CreatePlayerTextDraw(playerid, 270.000, 163.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][2], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][2], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][2], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][2], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][2], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][2], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][2], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][2], 1);

	HackingSelect[playerid][3] = CreatePlayerTextDraw(playerid, 305.000, 163.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][3], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][3], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][3], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][3], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][3], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][3], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][3], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][3], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][3], 1);

	HackingSelect[playerid][4] = CreatePlayerTextDraw(playerid, 340.000, 163.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][4], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][4], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][4], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][4], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][4], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][4], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][4], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][4], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][4], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][4], 1);

	HackingSelect[playerid][5] = CreatePlayerTextDraw(playerid, 375.000, 163.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][5], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][5], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][5], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][5], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][5], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][5], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][5], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][5], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][5], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][5], 1);

	HackingSelect[playerid][6] = CreatePlayerTextDraw(playerid, 410.000, 163.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][6], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][6], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][6], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][6], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][6], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][6], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][6], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][6], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][6], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][6], 1);

	HackingSelect[playerid][7] = CreatePlayerTextDraw(playerid, 445.000, 163.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][7], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][7], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][7], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][7], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][7], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][7], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][7], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][7], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][7], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][7], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][7], 1);

	HackingSelect[playerid][8] = CreatePlayerTextDraw(playerid, 480.000, 163.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][8], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][8], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][8], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][8], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][8], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][8], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][8], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][8], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][8], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][8], 1);

	HackingSelect[playerid][9] = CreatePlayerTextDraw(playerid, 200.000, 198.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][9], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][9], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][9], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][9], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][9], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][9], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][9], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][9], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][9], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][9], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][9], 1);

	HackingSelect[playerid][10] = CreatePlayerTextDraw(playerid, 235.000, 198.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][10], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][10], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][10], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][10], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][10], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][10], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][10], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][10], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][10], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][10], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][10], 1);

	HackingSelect[playerid][11] = CreatePlayerTextDraw(playerid, 270.000, 198.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][11], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][11], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][11], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][11], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][11], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][11], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][11], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][11], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][11], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][11], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][11], 1);

	HackingSelect[playerid][12] = CreatePlayerTextDraw(playerid, 305.000, 198.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][12], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][12], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][12], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][12], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][12], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][12], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][12], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][12], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][12], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][12], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][12], 1);

	HackingSelect[playerid][13] = CreatePlayerTextDraw(playerid, 340.000, 198.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][13], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][13], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][13], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][13], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][13], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][13], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][13], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][13], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][13], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][13], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][13], 1);

	HackingSelect[playerid][14] = CreatePlayerTextDraw(playerid, 375.000, 198.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][14], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][14], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][14], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][14], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][14], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][14], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][14], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][14], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][14], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][14], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][14], 1);

	HackingSelect[playerid][15] = CreatePlayerTextDraw(playerid, 410.000, 198.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][15], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][15], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][15], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][15], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][15], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][15], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][15], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][15], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][15], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][15], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][15], 1);

	HackingSelect[playerid][16] = CreatePlayerTextDraw(playerid, 445.000, 198.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][16], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][16], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][16], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][16], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][16], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][16], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][16], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][16], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][16], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][16], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][16], 1);

	HackingSelect[playerid][17] = CreatePlayerTextDraw(playerid, 480.000, 198.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][17], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][17], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][17], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][17], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][17], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][17], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][17], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][17], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][17], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][17], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][17], 1);

	HackingSelect[playerid][18] = CreatePlayerTextDraw(playerid, 200.000, 233.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][18], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][18], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][18], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][18], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][18], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][18], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][18], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][18], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][18], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][18], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][18], 1);

	HackingSelect[playerid][19] = CreatePlayerTextDraw(playerid, 235.000, 233.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][19], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][19], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][19], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][19], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][19], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][19], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][19], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][19], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][19], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][19], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][19], 1);

	HackingSelect[playerid][20] = CreatePlayerTextDraw(playerid, 270.000, 233.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][20], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][20], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][20], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][20], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][20], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][20], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][20], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][20], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][20], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][20], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][20], 1);

	HackingSelect[playerid][21] = CreatePlayerTextDraw(playerid, 305.000, 233.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][21], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][21], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][21], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][21], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][21], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][21], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][21], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][21], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][21], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][21], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][21], 1);

	HackingSelect[playerid][22] = CreatePlayerTextDraw(playerid, 340.000, 233.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][22], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][22], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][22], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][22], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][22], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][22], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][22], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][22], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][22], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][22], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][22], 1);

	HackingSelect[playerid][23] = CreatePlayerTextDraw(playerid, 375.000, 233.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][23], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][23], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][23], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][23], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][23], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][23], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][23], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][23], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][23], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][23], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][23], 1);

	HackingSelect[playerid][24] = CreatePlayerTextDraw(playerid, 410.000, 233.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][24], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][24], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][24], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][24], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][24], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][24], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][24], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][24], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][24], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][24], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][24], 1);

	HackingSelect[playerid][25] = CreatePlayerTextDraw(playerid, 445.000, 233.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][25], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][25], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][25], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][25], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][25], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][25], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][25], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][25], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][25], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][25], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][25], 1);

	HackingSelect[playerid][26] = CreatePlayerTextDraw(playerid, 480.000, 233.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][26], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][26], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][26], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][26], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][26], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][26], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][26], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][26], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][26], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][26], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][26], 1);

	HackingSelect[playerid][27] = CreatePlayerTextDraw(playerid, 200.000, 268.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][27], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][27], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][27], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][27], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][27], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][27], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][27], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][27], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][27], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][27], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][27], 1);

	HackingSelect[playerid][28] = CreatePlayerTextDraw(playerid, 235.000, 268.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][28], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][28], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][28], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][28], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][28], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][28], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][28], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][28], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][28], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][28], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][28], 1);

	HackingSelect[playerid][29] = CreatePlayerTextDraw(playerid, 270.000, 268.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][29], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][29], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][29], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][29], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][29], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][29], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][29], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][29], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][29], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][29], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][29], 1);

	HackingSelect[playerid][30] = CreatePlayerTextDraw(playerid, 305.000, 268.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][30], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][30], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][30], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][30], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][30], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][30], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][30], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][30], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][30], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][30], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][30], 1);

	HackingSelect[playerid][31] = CreatePlayerTextDraw(playerid, 340.000, 268.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][31], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][31], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][31], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][31], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][31], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][31], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][31], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][31], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][31], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][31], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][31], 1);

	HackingSelect[playerid][32] = CreatePlayerTextDraw(playerid, 375.000, 268.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][32], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][32], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][32], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][32], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][32], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][32], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][32], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][32], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][32], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][32], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][32], 1);

	HackingSelect[playerid][33] = CreatePlayerTextDraw(playerid, 410.000, 268.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][33], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][33], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][33], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][33], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][33], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][33], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][33], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][33], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][33], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][33], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][33], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][33], 1);

	HackingSelect[playerid][34] = CreatePlayerTextDraw(playerid, 445.000, 268.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][34], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][34], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][34], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][34], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][34], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][34], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][34], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][34], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][34], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][34], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][34], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][34], 1);

	HackingSelect[playerid][35] = CreatePlayerTextDraw(playerid, 480.000, 268.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][35], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][35], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][35], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][35], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][35], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][35], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][35], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][35], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][35], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][35], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][35], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][35], 1);

	HackingSelect[playerid][36] = CreatePlayerTextDraw(playerid, 200.000, 303.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][36], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][36], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][36], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][36], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][36], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][36], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][36], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][36], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][36], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][36], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][36], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][36], 1);

	HackingSelect[playerid][37] = CreatePlayerTextDraw(playerid, 235.000, 303.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][37], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][37], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][37], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][37], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][37], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][37], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][37], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][37], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][37], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][37], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][37], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][37], 1);

	HackingSelect[playerid][38] = CreatePlayerTextDraw(playerid, 270.000, 303.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][38], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][38], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][38], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][38], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][38], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][38], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][38], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][38], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][38], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][38], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][38], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][38], 1);

	HackingSelect[playerid][39] = CreatePlayerTextDraw(playerid, 305.000, 303.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][39], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][39], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][39], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][39], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][39], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][39], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][39], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][39], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][39], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][39], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][39], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][39], 1);

	HackingSelect[playerid][40] = CreatePlayerTextDraw(playerid, 340.000, 303.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][40], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][40], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][40], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][40], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][40], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][40], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][40], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][40], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][40], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][40], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][40], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][40], 1);

	HackingSelect[playerid][41] = CreatePlayerTextDraw(playerid, 375.000, 303.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][41], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][41], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][41], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][41], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][41], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][41], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][41], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][41], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][41], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][41], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][41], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][41], 1);

	HackingSelect[playerid][42] = CreatePlayerTextDraw(playerid, 410.000, 303.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][42], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][42], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][42], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][42], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][42], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][42], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][42], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][42], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][42], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][42], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][42], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][42], 1);

	HackingSelect[playerid][43] = CreatePlayerTextDraw(playerid, 445.000, 303.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][43], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][43], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][43], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][43], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][43], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][43], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][43], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][43], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][43], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][43], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][43], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][43], 1);

	HackingSelect[playerid][44] = CreatePlayerTextDraw(playerid, 480.000, 303.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][44], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][44], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][44], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][44], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][44], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][44], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][44], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][44], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][44], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][44], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][44], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][44], 1);

	HackingSelect[playerid][45] = CreatePlayerTextDraw(playerid, 200.000, 338.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][45], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][45], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][45], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][45], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][45], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][45], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][45], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][45], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][45], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][45], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][45], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][45], 1);

	HackingSelect[playerid][46] = CreatePlayerTextDraw(playerid, 235.000, 338.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][46], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][46], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][46], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][46], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][46], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][46], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][46], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][46], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][46], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][46], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][46], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][46], 1);

	HackingSelect[playerid][47] = CreatePlayerTextDraw(playerid, 270.000, 338.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][47], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][47], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][47], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][47], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][47], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][47], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][47], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][47], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][47], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][47], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][47], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][47], 1);

	HackingSelect[playerid][48] = CreatePlayerTextDraw(playerid, 305.000, 338.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][48], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][48], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][48], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][48], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][48], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][48], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][48], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][48], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][48], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][48], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][48], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][48], 1);

	HackingSelect[playerid][49] = CreatePlayerTextDraw(playerid, 340.000, 338.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][49], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][49], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][49], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][49], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][49], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][49], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][49], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][49], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][49], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][49], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][49], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][49], 1);

	HackingSelect[playerid][50] = CreatePlayerTextDraw(playerid, 375.000, 338.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][50], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][50], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][50], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][50], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][50], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][50], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][50], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][50], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][50], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][50], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][50], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][50], 1);

	HackingSelect[playerid][51] = CreatePlayerTextDraw(playerid, 410.000, 338.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][51], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][51], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][51], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][51], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][51], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][51], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][51], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][51], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][51], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][51], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][51], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][51], 1);

	HackingSelect[playerid][52] = CreatePlayerTextDraw(playerid, 445.000, 338.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][52], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][52], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][52], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][52], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][52], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][52], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][52], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][52], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][52], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][52], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][52], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][52], 1);

	HackingSelect[playerid][53] = CreatePlayerTextDraw(playerid, 480.000, 338.000, "A");
	PlayerTextDrawLetterSize(playerid, HackingSelect[playerid][53], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackingSelect[playerid][53], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackingSelect[playerid][53], 2);
	PlayerTextDrawColor(playerid, HackingSelect[playerid][53], 16744447);
	PlayerTextDrawUseBox(playerid, HackingSelect[playerid][53], 1);
	PlayerTextDrawBoxColor(playerid, HackingSelect[playerid][53], 793726975);
	PlayerTextDrawSetShadow(playerid, HackingSelect[playerid][53], 0);
	PlayerTextDrawSetOutline(playerid, HackingSelect[playerid][53], 1);
	PlayerTextDrawBackgroundColor(playerid, HackingSelect[playerid][53], 255);
	PlayerTextDrawFont(playerid, HackingSelect[playerid][53], 2);
	PlayerTextDrawSetProportional(playerid, HackingSelect[playerid][53], 1);
	PlayerTextDrawSetSelectable(playerid, HackingSelect[playerid][53], 1);

    Random_Hack[playerid][0] = CreatePlayerTextDraw(playerid, 200.000, 121.000, "F");
	PlayerTextDrawLetterSize(playerid, Random_Hack[playerid][0], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, Random_Hack[playerid][0], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, Random_Hack[playerid][0], 2);
	PlayerTextDrawColor(playerid, Random_Hack[playerid][0], 16744447);
	PlayerTextDrawUseBox(playerid, Random_Hack[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, Random_Hack[playerid][0], -839658518);
	PlayerTextDrawSetShadow(playerid, Random_Hack[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, Random_Hack[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, Random_Hack[playerid][0], 255);
	PlayerTextDrawFont(playerid, Random_Hack[playerid][0], 2);
	PlayerTextDrawSetProportional(playerid, Random_Hack[playerid][0], 1);

	Random_Hack[playerid][1] = CreatePlayerTextDraw(playerid, 227.000, 121.000, "F");
	PlayerTextDrawLetterSize(playerid, Random_Hack[playerid][1], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, Random_Hack[playerid][1], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, Random_Hack[playerid][1], 2);
	PlayerTextDrawColor(playerid, Random_Hack[playerid][1], 16744447);
	PlayerTextDrawUseBox(playerid, Random_Hack[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, Random_Hack[playerid][1], -839658518);
	PlayerTextDrawSetShadow(playerid, Random_Hack[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, Random_Hack[playerid][1], 1);
	PlayerTextDrawBackgroundColor(playerid, Random_Hack[playerid][1], 255);
	PlayerTextDrawFont(playerid, Random_Hack[playerid][1], 2);
	PlayerTextDrawSetProportional(playerid, Random_Hack[playerid][1], 1);

	Random_Hack[playerid][2] = CreatePlayerTextDraw(playerid, 254.000, 121.000, "F");
	PlayerTextDrawLetterSize(playerid, Random_Hack[playerid][2], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, Random_Hack[playerid][2], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, Random_Hack[playerid][2], 2);
	PlayerTextDrawColor(playerid, Random_Hack[playerid][2], 16744447);
	PlayerTextDrawUseBox(playerid, Random_Hack[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, Random_Hack[playerid][2], -839658518);
	PlayerTextDrawSetShadow(playerid, Random_Hack[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, Random_Hack[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, Random_Hack[playerid][2], 255);
	PlayerTextDrawFont(playerid, Random_Hack[playerid][2], 2);
	PlayerTextDrawSetProportional(playerid, Random_Hack[playerid][2], 1);

	HackTD[playerid][0] = CreatePlayerTextDraw(playerid, 184.000, 102.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, HackTD[playerid][0], 312.000, 263.000);
	PlayerTextDrawAlignment(playerid, HackTD[playerid][0], 1);
	PlayerTextDrawColor(playerid, HackTD[playerid][0], 572732671);
	PlayerTextDrawSetShadow(playerid, HackTD[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, HackTD[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, HackTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, HackTD[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, HackTD[playerid][0], 1);

	HackTD[playerid][1] = CreatePlayerTextDraw(playerid, 273.000, 115.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, HackTD[playerid][1], 214.000, 30.000);
	PlayerTextDrawAlignment(playerid, HackTD[playerid][1], 1);
	PlayerTextDrawColor(playerid, HackTD[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, HackTD[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, HackTD[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, HackTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, HackTD[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, HackTD[playerid][1], 1);

	HackTD[playerid][2] = CreatePlayerTextDraw(playerid, 274.000, 116.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, HackTD[playerid][2], 212.000, 28.000);
	PlayerTextDrawAlignment(playerid, HackTD[playerid][2], 1);
	PlayerTextDrawColor(playerid, HackTD[playerid][2], 255);
	PlayerTextDrawSetShadow(playerid, HackTD[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, HackTD[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, HackTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, HackTD[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, HackTD[playerid][2], 1);

	HackTD[playerid][3] = CreatePlayerTextDraw(playerid, 382.000, 123.000, "01:00");
	PlayerTextDrawLetterSize(playerid, HackTD[playerid][3], 0.250, 1.500);
	PlayerTextDrawAlignment(playerid, HackTD[playerid][3], 2);
	PlayerTextDrawColor(playerid, HackTD[playerid][3], 579543807);
	PlayerTextDrawSetShadow(playerid, HackTD[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, HackTD[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, HackTD[playerid][3], 150);
	PlayerTextDrawFont(playerid, HackTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, HackTD[playerid][3], 1);

	HackTD[playerid][4] = CreatePlayerTextDraw(playerid, 184.000, 100.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, HackTD[playerid][4], 158.000, 2.000);
	PlayerTextDrawAlignment(playerid, HackTD[playerid][4], 1);
	PlayerTextDrawColor(playerid, HackTD[playerid][4], -1306385665);
	PlayerTextDrawSetShadow(playerid, HackTD[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, HackTD[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, HackTD[playerid][4], 255);
	PlayerTextDrawFont(playerid, HackTD[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, HackTD[playerid][4], 1);

	HackTD[playerid][5] = CreatePlayerTextDraw(playerid, 341.000, 100.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, HackTD[playerid][5], 155.000, 2.000);
	PlayerTextDrawAlignment(playerid, HackTD[playerid][5], 1);
	PlayerTextDrawColor(playerid, HackTD[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, HackTD[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, HackTD[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, HackTD[playerid][5], 255);
	PlayerTextDrawFont(playerid, HackTD[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, HackTD[playerid][5], 1);

	HackTD[playerid][6] = CreatePlayerTextDraw(playerid, 341.000, 79.000, "X");
	PlayerTextDrawLetterSize(playerid, HackTD[playerid][6], 0.258, 2.099);
	PlayerTextDrawTextSize(playerid, HackTD[playerid][6], 16.500, 22.500);
	PlayerTextDrawAlignment(playerid, HackTD[playerid][6], 2);
	PlayerTextDrawColor(playerid, HackTD[playerid][6], 512819199);
	PlayerTextDrawUseBox(playerid, HackTD[playerid][6], 1);
	PlayerTextDrawBoxColor(playerid, HackTD[playerid][6], 255);
	PlayerTextDrawSetShadow(playerid, HackTD[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, HackTD[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, HackTD[playerid][6], -1);
	PlayerTextDrawFont(playerid, HackTD[playerid][6], 2);
	PlayerTextDrawSetProportional(playerid, HackTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, HackTD[playerid][6], 1);
    return 1;
}

// SCRIPT ROB
new FleecaDoors,
	FleecaTimer,
	FleecaColdown,
	bool:FleecaStatus,
	bool:FleecaRob,
	ButtonsCP;

new Money[6];

enum _:E_HACKING_DATA
{
	HackLett[3],
	HackSelect[54],
	HackWave
}
new HackingData[MAX_PLAYERS][E_HACKING_DATA];

stock ConnectedToServer(playerid, type)
{
	//return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang melakukan sesuatu, harap tunggu!");
		
	PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "Connecting Server");
	ShowProgressBar(playerid);
	
	pTimerHackingBank[playerid] = SetTimerEx("ConnectedDevice", 1000, true, "dd", playerid, type);
	SendRPMeAboveHead(playerid, "Hacking Bank", X11_PLUM1);

	Inventory_Remove(playerid, "Hacking Device", 1);
	ShowItemBox(playerid, "Removed_1x", "Hacking Device", 19273);

	AccountData[playerid][ActivityTime] = 26;

	SetPlayerAttachedObject(playerid, 9, 18875, 5, 0.056, 0.039, -0.015, -18.100, -108.600, 93.000, 1,1,1);
	ApplyAnimation(playerid,"ped","Jetpack_Idle",4.0, 1, 0, 0, 0, 0, 1);
	return 1;
}

forward ConnectedDevice(playerid, type);
public ConnectedDevice(playerid, type)
{
    if(AccountData[playerid][ActivityTime] >= 3)
    {
        KillTimer(pTimerHackingBank[playerid]);
        pTimerHackingBank[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        
        Hack_Init(playerid, type);
    }
    else 
    {
        AccountData[playerid][ActivityTime] ++;

        new Float: progressvalue;
        progressvalue = AccountData[playerid][ActivityTime]*103/4;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 21.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        return 0;
    }
    return 1;
}

Hack_Gagal(playerid, type)
{
	new Float: x,Float: y,Float: z;
	GetPlayerPos(playerid, x, y, z);
	foreach(new i : Player) if(AccountData[i][pFaction] == FACTION_POLISI)
	{
		SetPlayerCheckpoint(i, x, y, z, 5.5);
		AccountData[i][pTrackStatus] = 1;
		AccountData[i][pTrackID] = playerid;

		AccountData[i][pTrackX] = x;
		AccountData[i][pTrackY] = y;
		AccountData[i][pTrackZ] = z;
	}

	if(type == 1)
	{
		SendFactionMessage(FACTION_POLISI, COLOR_YELLOW, "[Perampokan]: {FFFFFF}Alarm atm berbunyi, telah terjadi perampokan di daerah %s", GetLocation(x, y, z));
	}
	else
	{
		FleecaRob = false;
		SendFactionMessage(FACTION_POLISI, COLOR_YELLOW, "[Perampokan]: {FFFFFF}Alarm fleeca berbunyi, telah terjadi perampokan fleeca di daerah los Santos");
	}
	
	SendFactionMessage(FACTION_POLISI, COLOR_YELLOW, "[Perampokan]: {FFFFFF}Pelaku perampokan telah dilacak, gunakan "YELLOW_E"'/stoptrack' {FFFFFF}untuk berhenti melacak");
	Info(playerid, "Kamu telah gagal melakukan peretasan");
}

Hack_Hide(playerid)
{
	AccountData[playerid][pHacking] = 0;
	AccountData[playerid][pHackingTime] = 0;

	forex(i, 7)
	{
		PlayerTextDrawHide(playerid, HackTD[playerid][i]);
	}

	forex(hide, 3)
	{
		PlayerTextDrawHide(playerid, Random_Hack[playerid][hide]);
	}

	forex(i, 54) 
	{
		PlayerTextDrawHide(playerid, HackingSelect[playerid][i]);
	}
	CancelSelectTextDraw(playerid);
	return 1;
}

Hack_Init(playerid, type)
{
	HackingData[playerid][HackWave] = 0;
	AccountData[playerid][pHacking] = type;
	AccountData[playerid][pHackingTime] = 15;

	PlayerTextDrawSetString(playerid, HackTD[playerid][3], sprintf("00:%02d", AccountData[playerid][pHackingTime]));
	forex(i, 7)
	{
		PlayerTextDrawShow(playerid, HackTD[playerid][i]);
	}

	Hack_Random(playerid);
	Hack_Selector(playerid);

	forex(i, 54) 
	{
		PlayerTextDrawShow(playerid, HackingSelect[playerid][i]);
	}
	SelectTextDraw(playerid, COLOR_RED);

	SetPlayerAttachedObject(playerid, 9, 18875, 5, 0.056, 0.039, -0.015, -18.100, -108.600, 93.000, 1,1,1);
	ApplyAnimation(playerid,"ped","Jetpack_Idle",4.0, 1, 0, 0, 0, 0, 1);
	return 1;
}

Hack_Selector(playerid)
{
	new rand,randomultra;
	if(HackingData[playerid][HackWave] == 0)
	{
		//Random Selector
		randomultra = RandomEx(0, 54);

		//Random Letter
		HackingData[playerid][HackSelect][randomultra] = HackingData[playerid][HackLett][0];

		//Textdraw Set
		PlayerTextDrawSetString(playerid, HackingSelect[playerid][randomultra], biglet1ters[HackingData[playerid][HackLett][0]]);
		HackingData[playerid][HackWave] = 1;

		forex(i, 54)
		{
			if(i == randomultra) continue;
			rand = random(sizeof(biglet1ters));
			if(HackingData[playerid][HackLett][0] != rand)
			{
				HackingData[playerid][HackSelect][i] = rand;
				PlayerTextDrawSetString(playerid, HackingSelect[playerid][i], biglet1ters[HackingData[playerid][HackSelect][i]]);
			}
		}
	}
	else if(HackingData[playerid][HackWave] == 1)
	{
		//Random Selector
		randomultra = RandomEx(0, 54);

		//Random Letter
		HackingData[playerid][HackSelect][randomultra] = HackingData[playerid][HackLett][1];

		//Textdraw Set
		PlayerTextDrawSetString(playerid, HackingSelect[playerid][randomultra], biglet1ters[HackingData[playerid][HackLett][1]]);
		HackingData[playerid][HackWave] = 2;

		forex(i, 54)
		{
			if(i == randomultra) continue;
			rand = random(sizeof(biglet1ters));
			if(HackingData[playerid][HackLett][1] != rand)
			{
				HackingData[playerid][HackSelect][i] = rand;
				PlayerTextDrawSetString(playerid, HackingSelect[playerid][i], biglet1ters[HackingData[playerid][HackSelect][i]]);
			}
		}
	}
	else if(HackingData[playerid][HackWave] == 2)
	{
		//Random Selector
		randomultra = RandomEx(0, 54);

		//Random Letter
		HackingData[playerid][HackSelect][randomultra] = HackingData[playerid][HackLett][2];

		//Textdraw Set
		PlayerTextDrawSetString(playerid, HackingSelect[playerid][randomultra], biglet1ters[HackingData[playerid][HackLett][2]]);
		HackingData[playerid][HackWave] = 3;

		forex(i, 54)
		{
			if(i == randomultra) continue;
			rand = random(sizeof(biglet1ters));
			if(HackingData[playerid][HackLett][2] != rand)
			{
				HackingData[playerid][HackSelect][i] = rand;
				PlayerTextDrawSetString(playerid, HackingSelect[playerid][i], biglet1ters[HackingData[playerid][HackSelect][i]]);
			}
		}
	}
	return 1;
}
Hack_Random(playerid)
{
	new rand;
	rand = random(sizeof(biglet1ters));
	HackingData[playerid][HackLett][0] = rand;
	PlayerTextDrawSetString(playerid, Random_Hack[playerid][0], biglet1ters[HackingData[playerid][HackLett][0]]);
	PlayerTextDrawBoxColor(playerid, Random_Hack[playerid][0], -839658518);
	PlayerTextDrawShow(playerid, Random_Hack[playerid][0]);

	rand = random(sizeof(biglet1ters));
	HackingData[playerid][HackLett][1] = rand;
	PlayerTextDrawSetString(playerid, Random_Hack[playerid][1], biglet1ters[HackingData[playerid][HackLett][1]]);
	PlayerTextDrawBoxColor(playerid, Random_Hack[playerid][1], -839658518);
	PlayerTextDrawShow(playerid, Random_Hack[playerid][1]);

	rand = random(sizeof(biglet1ters));
	HackingData[playerid][HackLett][2] = rand;
	PlayerTextDrawSetString(playerid, Random_Hack[playerid][2], biglet1ters[HackingData[playerid][HackLett][2]]);
	PlayerTextDrawBoxColor(playerid, Random_Hack[playerid][2], -839658518);
	PlayerTextDrawShow(playerid, Random_Hack[playerid][2]);
	return 1;
}
task robTimer[1000]()
{
    if(FleecaStatus == true && FleecaTimer <= gettime())
	{
		MoveDynamicObject(FleecaDoors, 1479.401245, -1763.338134, 13.139058, 1.0);
		FleecaStatus = false;
		FleecaTimer = 0;
	}

	if(FleecaRob == true && FleecaColdown <= gettime())
	{
		forex(i, 6)
		{
			Money[i] = 0;
		}
		FleecaRob = false;
		FleecaColdown = 0;
	}
}
#include <YSI\y_hooks>
hook OnGameModeInit()
{ 
    ButtonsCP = CreateDynamicSphere(1480.233764,-1763.736450,14.139058, 1.0, 0, 0);
	FleecaDoors = CreateDynamicObject(1501, 1479.401245, -1763.338134, 13.139058, 0.000000, 0.000000, 720.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterial(FleecaDoors, 0, 9583, "bigshap_sfw", "bridge_walls2_sfw", 0x00000000);
	SetDynamicObjectMaterial(FleecaDoors, 1, 10765, "airportgnd_sfse", "white", 0x00000000);
    return 1;
}
hook OnPlayerConnect(playerid)
{
    CreateBankRob(playerid);
    return 1;
}
hook OnPlayerDisconnect(playerid, reason)
{
    KillTimer(pTimerHackingBank[playerid]);
    pTimerHackingBank[playerid] = -1;

    KillTimer(pTimerTakingBank[playerid]);
    pTimerTakingBank[playerid] = -1;
    return 1;
}
hook OnPlayerEnterDynArea(playerid, areaid)
{
	if(areaid == ButtonsCP)
	{
		if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
		{
			ShowKey(playerid, "[ALT]- Hack Bank");
		}
	}
	return 1;
}
hook OnPlayerLeaveDynArea(playerid, areaid)
{
	if(areaid == ButtonsCP)
	{
		HideShortKey(playerid);
	}
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys & KEY_WALK && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT && AccountData[playerid][pInjured] != 1)
	{
		if(IsPlayerInRangeOfPoint(playerid, 1.5, 1480.233764,-1763.736450,14.139058)) //HACKS FLEECA
		{
			if(FleecaRob == true)
				return ShowTDN(playerid, NOTIFICATION_ERROR, "Seseorang telah merampok bank fleeca!");

			if(AccountData[playerid][pFamily] == -1)
				return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan sebuah keluarga!");

		

			new
				countpd,
				countems;

			foreach(new i : Player) if (IsPlayerConnected(i))
			{
				if(AccountData[i][pDutyPD]) countpd++;
				if(AccountData[i][pDutyEms]) countems++;
			}

			if(countpd <= 5)
				return Error(playerid, "Anda tidak dapat merampok fleeca, dikarenakan status mendung!");

			if(countems <= 2)
				return Error(playerid, "Anda tidak dapat merampok fleeca, dikarenakan status mendung!");

			if(Inventory_Count(playerid, "Hacking Device") < 1)
				return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki hacking device!");
				
			FleecaRob = true;
			ConnectedToServer(playerid, 2);
		}
		// TAKE MONEY
		else if(IsPlayerInRangeOfPoint(playerid, 1.0, 1479.842895,-1758.327270,14.139060)) {
			if(Money[0] == 1)
				return ShowTDN(playerid, NOTIFICATION_ERROR, "Seseorang telah mengambil uang dibagian sini!");

			Money[0] = 1;
			TakeFleecaMoney(playerid);
		}
		else if(IsPlayerInRangeOfPoint(playerid, 1.0, 1481.150390,-1758.325439,14.139060)) {
			if(Money[1] == 1)
				return ShowTDN(playerid, NOTIFICATION_ERROR, "Seseorang telah mengambil uang dibagian sini!");
				
			Money[1] = 1;
			TakeFleecaMoney(playerid);
		}
		else if(IsPlayerInRangeOfPoint(playerid, 1.0, 1482.176879,-1758.325683,14.139061)) {
			if(Money[2] == 1)
				return ShowTDN(playerid, NOTIFICATION_ERROR, "Seseorang telah mengambil uang dibagian sini!");
				
			Money[2] = 1;
			TakeFleecaMoney(playerid);
		}
		else if(IsPlayerInRangeOfPoint(playerid, 1.0, 1483.201416,-1758.325317,14.139061)) {
			if(Money[3] == 1)
				return ShowTDN(playerid, NOTIFICATION_ERROR, "Seseorang telah mengambil uang dibagian sini!");
				
			Money[3] = 1;
			TakeFleecaMoney(playerid);
		}
		else if(IsPlayerInRangeOfPoint(playerid, 1.0, 1484.260620,-1758.325561,14.139062)) {
			if(Money[4] == 1)
				return ShowTDN(playerid, NOTIFICATION_ERROR, "Seseorang telah mengambil uang dibagian sini!");
				
			Money[4] = 1;
			TakeFleecaMoney(playerid);
		}
		else if(IsPlayerInRangeOfPoint(playerid, 1.0, 1483.136474,-1762.327392,14.139060)) {
			if(Money[5] == 1)
				return ShowTDN(playerid, NOTIFICATION_ERROR, "Seseorang telah mengambil uang dibagian sini!");
				
			Money[5] = 1;
			TakeFleecaMoney(playerid);
		}
	}
	return 1;
}

stock TakeFleecaMoney(playerid)
{
	if(AccountData[playerid][ActivityTime] != 0) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda sedang melakukan sesuatu, harap tunggu!");
	
	// SESUAIKAN PROGRESS BAR
	PlayerTextDrawSetString(playerid, ProgressBar[playerid][3], "Mengambil Uang");
	ShowProgressBar(playerid);
	
	pTimerTakingBank[playerid] = SetTimerEx("TimerCollect", 1000, true, "d", playerid);
	SendRPMeAboveHead(playerid, "Mengambil Uang", X11_PLUM1);
	ApplyAnimation(playerid,"INT_HOUSE","wash_up",4.0, 1, 0, 0, 0, 0,1);
	return 1;
}

forward TimerCollect(playerid, type);
public TimerCollect(playerid, type)
{
    if(AccountData[playerid][ActivityTime] >= 3)
    {
        KillTimer(pTimerTakingBank[playerid]);
        pTimerTakingBank[playerid] = -1;
        AccountData[playerid][ActivityTime] = 0;
        HideProgressBar(playerid);

        ClearAnimations(playerid, 1);
        StopLoopingAnim(playerid);
        SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
        
        new randommoney = RandomEx(4000, 6000);
		AccountData[playerid][pRedMoney] += randommoney;
		//ShowItemBox(playerid, "Uang_Merah", sprintf("Received_%s", FormatMoney(randommoney)), 3);
		SendClientMessageEx(playerid, -1, "[i] Anda mendapatkan "RED"%s"WHITE" uang merah dari hasil Rampok "YELLOW"%d", FormatMoney(randommoney));
    }
    else 
    {
        AccountData[playerid][ActivityTime] ++;

        new Float: progressvalue;
        progressvalue = AccountData[playerid][ActivityTime]*103/4;
        PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], progressvalue, 21.0);
        PlayerTextDrawShow(playerid, ProgressBar[playerid][2]);
        return 0;
    }
    return 1;
}