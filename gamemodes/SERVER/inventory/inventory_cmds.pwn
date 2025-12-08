#include <YSI\y_hooks>

new PlayerText: InventoryTD[MAX_PLAYERS][16];
new PlayerText: BoxInv[MAX_PLAYERS][20];
new PlayerText: NameInv[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText: PrevMod[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText: QuantityInv[MAX_PLAYERS][MAX_INVENTORY];
new PlayerText: ExistsInv[MAX_PLAYERS][MAX_INVENTORY];

CreateInventoryTextdraw(playerid)
{
    InventoryTD[playerid][0] = CreatePlayerTextDraw(playerid, 114.000, 103.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][0], 250.000, 277.000);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][0], 674252814);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][0], 1);

    InventoryTD[playerid][1] = CreatePlayerTextDraw(playerid, 122.000, 107.000, "Cecep_Sutejo");
    PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][1], 0.180, 1.098);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][1], 150);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][1], 1);

    InventoryTD[playerid][2] = CreatePlayerTextDraw(playerid, 122.000, 117.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][2], 233.000, 3.000);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][2], 255);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][2], 1);

    InventoryTD[playerid][3] = CreatePlayerTextDraw(playerid, 122.000, 117.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][3], 233.000, 3.000);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][3], -253326081);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][3], 1);

    InventoryTD[playerid][4] = CreatePlayerTextDraw(playerid, 328.000, 107.000, "0,160/50");
    PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][4], 0.180, 0.898);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][4], 150);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][4], 1);

    InventoryTD[playerid][5] = CreatePlayerTextDraw(playerid, 385.000, 167.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][5], 76.000, 152.000);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][5], 674252815);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][5], 1);

    InventoryTD[playerid][6] = CreatePlayerTextDraw(playerid, 391.000, 171.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][6], 63.000, 25.000);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][6], 842682623);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][6], 1);

    InventoryTD[playerid][7] = CreatePlayerTextDraw(playerid, 391.000, 200.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][7], 63.000, 25.000);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][7], 842682623);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][7], 1);

    InventoryTD[playerid][8] = CreatePlayerTextDraw(playerid, 391.000, 229.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][8], 63.000, 25.000);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][8], 842682623);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][8], 1);

    InventoryTD[playerid][9] = CreatePlayerTextDraw(playerid, 391.000, 258.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][9], 63.000, 25.000);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][9], 842682623);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][9], 1);

    InventoryTD[playerid][10] = CreatePlayerTextDraw(playerid, 391.000, 287.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][10], 63.000, 25.000);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][10], 842682623);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][10], 255);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][10], 1);

    InventoryTD[playerid][11] = CreatePlayerTextDraw(playerid, 403.000, 176.000, "Ammount");
    PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][11], 0.300, 1.500);
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][11], 497.000, 15.000);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][11], -1);
    PlayerTextDrawUseBox(playerid, InventoryTD[playerid][11], 0);
    PlayerTextDrawBoxColor(playerid, InventoryTD[playerid][11], 0);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][11], 150);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][11], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][11], 1);

    InventoryTD[playerid][12] = CreatePlayerTextDraw(playerid, 414.000, 205.000, "Use");
    PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][12], 0.300, 1.500);
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][12], 497.000, 15.000);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][12], -1);
    PlayerTextDrawUseBox(playerid, InventoryTD[playerid][12], 0);
    PlayerTextDrawBoxColor(playerid, InventoryTD[playerid][12], 0);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][12], 150);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][12], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][12], 1);

    InventoryTD[playerid][13] = CreatePlayerTextDraw(playerid, 412.000, 234.000, "Give");
    PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][13], 0.300, 1.700);
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][13], 497.000, 15.000);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][13], -1);
    PlayerTextDrawUseBox(playerid, InventoryTD[playerid][13], 0);
    PlayerTextDrawBoxColor(playerid, InventoryTD[playerid][13], 0);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][13], 150);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][13], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][13], 1);

    InventoryTD[playerid][14] = CreatePlayerTextDraw(playerid, 412.000, 261.000, "Drop");
    PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][14], 0.300, 1.700);
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][14], 497.000, 15.000);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][14], -1);
    PlayerTextDrawUseBox(playerid, InventoryTD[playerid][14], 0);
    PlayerTextDrawBoxColor(playerid, InventoryTD[playerid][14], 0);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][14], 150);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][14], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][14], 1);

    InventoryTD[playerid][15] = CreatePlayerTextDraw(playerid, 411.000, 290.000, "Close");
    PlayerTextDrawLetterSize(playerid, InventoryTD[playerid][15], 0.300, 1.700);
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][15], 497.000, 15.000);
    PlayerTextDrawAlignment(playerid, InventoryTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, InventoryTD[playerid][15], -1);
    PlayerTextDrawUseBox(playerid, InventoryTD[playerid][15], 0);
    PlayerTextDrawBoxColor(playerid, InventoryTD[playerid][15], 0);
    PlayerTextDrawSetShadow(playerid, InventoryTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, InventoryTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, InventoryTD[playerid][15], 150);
    PlayerTextDrawFont(playerid, InventoryTD[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, InventoryTD[playerid][15], 1);
    PlayerTextDrawSetSelectable(playerid, InventoryTD[playerid][15], 1);

    BoxInv[playerid][0] = CreatePlayerTextDraw(playerid, 122.000, 121.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][0], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][0], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][0], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][0], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][0], 1);

    BoxInv[playerid][1] = CreatePlayerTextDraw(playerid, 169.000, 121.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][1], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][1], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][1], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][1], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][1], 1);

    BoxInv[playerid][2] = CreatePlayerTextDraw(playerid, 216.000, 121.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][2], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][2], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][2], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][2], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][2], 1);

    BoxInv[playerid][3] = CreatePlayerTextDraw(playerid, 263.000, 121.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][3], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][3], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][3], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][3], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][3], 1);

    BoxInv[playerid][4] = CreatePlayerTextDraw(playerid, 310.000, 121.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][4], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][4], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][4], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][4], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][4], 1);

    BoxInv[playerid][5] = CreatePlayerTextDraw(playerid, 122.000, 184.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][5], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][5], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][5], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][5], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][5], 1);

    BoxInv[playerid][6] = CreatePlayerTextDraw(playerid, 169.000, 184.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][6], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][6], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][6], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][6], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][6], 1);

    BoxInv[playerid][7] = CreatePlayerTextDraw(playerid, 216.000, 184.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][7], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][7], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][7], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][7], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][7], 1);

    BoxInv[playerid][8] = CreatePlayerTextDraw(playerid, 263.000, 184.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][8], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][8], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][8], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][8], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][8], 1);

    BoxInv[playerid][9] = CreatePlayerTextDraw(playerid, 310.000, 184.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][9], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][9], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][9], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][9], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][9], 1);

    BoxInv[playerid][10] = CreatePlayerTextDraw(playerid, 122.000, 247.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][10], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][10], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][10], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][10], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][10], 1);

    BoxInv[playerid][11] = CreatePlayerTextDraw(playerid, 169.000, 247.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][11], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][11], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][11], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][11], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][11], 1);

    BoxInv[playerid][12] = CreatePlayerTextDraw(playerid, 216.000, 247.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][12], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][12], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][12], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][12], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][12], 1);

    BoxInv[playerid][13] = CreatePlayerTextDraw(playerid, 263.000, 247.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][13], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][13], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][13], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][13], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][13], 1);

    BoxInv[playerid][14] = CreatePlayerTextDraw(playerid, 310.000, 247.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][14], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][14], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][14], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][14], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][14], 1);

    BoxInv[playerid][15] = CreatePlayerTextDraw(playerid, 122.000, 310.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][15], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][15], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][15], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][15], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][15], 1);

    BoxInv[playerid][16] = CreatePlayerTextDraw(playerid, 169.000, 310.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][16], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][16], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][16], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][16], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][16], 1);

    BoxInv[playerid][17] = CreatePlayerTextDraw(playerid, 216.000, 310.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][17], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][17], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][17], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][17], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][17], 1);

    BoxInv[playerid][18] = CreatePlayerTextDraw(playerid, 263.000, 310.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][18], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][18], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][18], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][18], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][18], 1);

    BoxInv[playerid][19] = CreatePlayerTextDraw(playerid, 310.000, 310.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, BoxInv[playerid][19], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, BoxInv[playerid][19], 1);
    PlayerTextDrawColor(playerid, BoxInv[playerid][19], 842682623);
    PlayerTextDrawSetShadow(playerid, BoxInv[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, BoxInv[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, BoxInv[playerid][19], 255);
    PlayerTextDrawFont(playerid, BoxInv[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, BoxInv[playerid][19], 1);

    NameInv[playerid][0] = CreatePlayerTextDraw(playerid, 124.000, 122.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][0], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][0], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][0], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][0], 1);

    NameInv[playerid][1] = CreatePlayerTextDraw(playerid, 171.000, 122.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][1], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][1], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][1], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][1], 1);

    NameInv[playerid][2] = CreatePlayerTextDraw(playerid, 218.000, 122.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][2], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][2], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][2], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][2], 1);

    NameInv[playerid][3] = CreatePlayerTextDraw(playerid, 265.000, 122.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][3], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][3], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][3], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][3], 1);

    NameInv[playerid][4] = CreatePlayerTextDraw(playerid, 312.000, 122.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][4], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][4], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][4], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][4], 1);

    NameInv[playerid][5] = CreatePlayerTextDraw(playerid, 124.000, 185.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][5], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][5], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][5], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][5], 1);

    NameInv[playerid][6] = CreatePlayerTextDraw(playerid, 171.000, 185.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][6], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][6], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][6], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][6], 1);

    NameInv[playerid][7] = CreatePlayerTextDraw(playerid, 218.000, 185.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][7], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][7], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][7], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][7], 1);

    NameInv[playerid][8] = CreatePlayerTextDraw(playerid, 265.000, 185.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][8], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][8], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][8], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][8], 1);

    NameInv[playerid][9] = CreatePlayerTextDraw(playerid, 312.000, 185.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][9], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][9], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][9], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][9], 1);

    NameInv[playerid][10] = CreatePlayerTextDraw(playerid, 124.000, 249.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][10], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][10], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][10], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][10], 1);

    NameInv[playerid][11] = CreatePlayerTextDraw(playerid, 171.000, 249.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][11], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][11], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][11], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][11], 1);

    NameInv[playerid][12] = CreatePlayerTextDraw(playerid, 218.000, 249.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][12], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][12], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][12], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][12], 1);

    NameInv[playerid][13] = CreatePlayerTextDraw(playerid, 265.000, 249.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][13], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][13], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][13], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][13], 1);

    NameInv[playerid][14] = CreatePlayerTextDraw(playerid, 312.000, 249.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][14], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][14], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][14], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][14], 1);

    NameInv[playerid][15] = CreatePlayerTextDraw(playerid, 124.000, 312.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][15], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][15], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][15], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][15], 1);

    NameInv[playerid][16] = CreatePlayerTextDraw(playerid, 171.000, 312.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][16], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][16], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][16], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][16], 1);

    NameInv[playerid][17] = CreatePlayerTextDraw(playerid, 218.000, 312.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][17], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][17], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][17], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][17], 1);

    NameInv[playerid][18] = CreatePlayerTextDraw(playerid, 265.000, 312.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][18], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][18], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][18], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][18], 1);

    NameInv[playerid][19] = CreatePlayerTextDraw(playerid, 312.000, 312.000, "Sampah Makanan");
    PlayerTextDrawLetterSize(playerid, NameInv[playerid][19], 0.143, 0.949);
    PlayerTextDrawAlignment(playerid, NameInv[playerid][19], 1);
    PlayerTextDrawColor(playerid, NameInv[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, NameInv[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, NameInv[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, NameInv[playerid][19], 255);
    PlayerTextDrawFont(playerid, NameInv[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, NameInv[playerid][19], 1);

    PrevMod[playerid][0] = CreatePlayerTextDraw(playerid, 122.000, 121.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][0], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][0], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][0], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][0], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][0], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][0], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][0], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][0], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][0], 1);

    PrevMod[playerid][1] = CreatePlayerTextDraw(playerid, 169.000, 121.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][1], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][1], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][1], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][1], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][1], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][1], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][1], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][1], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][1], 1);

    PrevMod[playerid][2] = CreatePlayerTextDraw(playerid, 216.000, 121.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][2], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][2], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][2], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][2], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][2], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][2], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][2], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][2], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][2], 1);

    PrevMod[playerid][3] = CreatePlayerTextDraw(playerid, 263.000, 121.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][3], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][3], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][3], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][3], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][3], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][3], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][3], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][3], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][3], 1);

    PrevMod[playerid][4] = CreatePlayerTextDraw(playerid, 310.000, 121.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][4], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][4], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][4], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][4], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][4], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][4], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][4], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][4], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][4], 1);

    PrevMod[playerid][5] = CreatePlayerTextDraw(playerid, 122.000, 184.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][5], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][5], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][5], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][5], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][5], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][5], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][5], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][5], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][5], 1);

    PrevMod[playerid][6] = CreatePlayerTextDraw(playerid, 169.000, 184.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][6], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][6], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][6], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][6], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][6], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][6], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][6], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][6], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][6], 1);

    PrevMod[playerid][7] = CreatePlayerTextDraw(playerid, 216.000, 184.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][7], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][7], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][7], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][7], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][7], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][7], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][7], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][7], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][7], 1);

    PrevMod[playerid][8] = CreatePlayerTextDraw(playerid, 263.000, 184.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][8], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][8], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][8], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][8], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][8], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][8], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][8], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][8], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][8], 1);

    PrevMod[playerid][9] = CreatePlayerTextDraw(playerid, 310.000, 184.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][9], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][9], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][9], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][9], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][9], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][9], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][9], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][9], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][9], 1);

    PrevMod[playerid][10] = CreatePlayerTextDraw(playerid, 122.000, 247.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][10], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][10], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][10], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][10], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][10], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][10], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][10], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][10], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][10], 1);

    PrevMod[playerid][11] = CreatePlayerTextDraw(playerid, 169.000, 247.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][11], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][11], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][11], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][11], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][11], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][11], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][11], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][11], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][11], 1);

    PrevMod[playerid][12] = CreatePlayerTextDraw(playerid, 216.000, 247.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][12], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][12], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][12], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][12], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][12], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][12], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][12], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][12], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][12], 1);

    PrevMod[playerid][13] = CreatePlayerTextDraw(playerid, 263.000, 247.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][13], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][13], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][13], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][13], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][13], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][13], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][13], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][13], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][13], 1);

    PrevMod[playerid][14] = CreatePlayerTextDraw(playerid, 310.000, 247.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][14], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][14], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][14], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][14], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][14], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][14], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][14], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][14], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][14], 1);

    PrevMod[playerid][15] = CreatePlayerTextDraw(playerid, 122.000, 310.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][15], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][15], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][15], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][15], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][15], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][15], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][15], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][15], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][15], 1);

    PrevMod[playerid][16] = CreatePlayerTextDraw(playerid, 169.000, 310.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][16], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][16], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][16], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][16], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][16], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][16], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][16], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][16], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][16], 1);

    PrevMod[playerid][17] = CreatePlayerTextDraw(playerid, 216.000, 310.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][17], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][17], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][17], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][17], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][17], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][17], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][17], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][17], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][17], 1);

    PrevMod[playerid][18] = CreatePlayerTextDraw(playerid, 263.000, 310.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][18], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][18], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][18], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][18], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][18], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][18], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][18], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][18], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][18], 1);

    PrevMod[playerid][19] = CreatePlayerTextDraw(playerid, 310.000, 310.000, "_");
    PlayerTextDrawTextSize(playerid, PrevMod[playerid][19], 45.000, 55.000);
    PlayerTextDrawAlignment(playerid, PrevMod[playerid][19], 1);
    PlayerTextDrawColor(playerid, PrevMod[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, PrevMod[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, PrevMod[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, PrevMod[playerid][19], 0);
    PlayerTextDrawFont(playerid, PrevMod[playerid][19], 5);
    PlayerTextDrawSetProportional(playerid, PrevMod[playerid][19], 0);
    PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][19], 18873);
    PlayerTextDrawSetPreviewRot(playerid, PrevMod[playerid][19], -15.000, 0.000, -17.000, 1.200);
    PlayerTextDrawSetPreviewVehCol(playerid, PrevMod[playerid][19], 0, 0);
    PlayerTextDrawSetSelectable(playerid, PrevMod[playerid][19], 1);

    QuantityInv[playerid][0] = CreatePlayerTextDraw(playerid, 125.000, 165.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][0], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][0], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][0], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][0], 1);

    QuantityInv[playerid][1] = CreatePlayerTextDraw(playerid, 172.000, 165.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][1], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][1], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][1], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][1], 1);

    QuantityInv[playerid][2] = CreatePlayerTextDraw(playerid, 219.000, 165.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][2], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][2], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][2], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][2], 1);

    QuantityInv[playerid][3] = CreatePlayerTextDraw(playerid, 266.000, 165.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][3], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][3], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][3], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][3], 1);

    QuantityInv[playerid][4] = CreatePlayerTextDraw(playerid, 313.000, 165.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][4], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][4], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][4], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][4], 1);

    QuantityInv[playerid][5] = CreatePlayerTextDraw(playerid, 125.000, 228.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][5], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][5], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][5], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][5], 1);

    QuantityInv[playerid][6] = CreatePlayerTextDraw(playerid, 172.000, 228.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][6], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][6], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][6], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][6], 1);

    QuantityInv[playerid][7] = CreatePlayerTextDraw(playerid, 219.000, 228.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][7], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][7], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][7], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][7], 1);

    QuantityInv[playerid][8] = CreatePlayerTextDraw(playerid, 266.000, 228.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][8], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][8], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][8], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][8], 1);

    QuantityInv[playerid][9] = CreatePlayerTextDraw(playerid, 313.000, 228.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][9], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][9], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][9], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][9], 1);

    QuantityInv[playerid][10] = CreatePlayerTextDraw(playerid, 125.000, 291.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][10], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][10], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][10], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][10], 1);

    QuantityInv[playerid][11] = CreatePlayerTextDraw(playerid, 172.000, 291.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][11], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][11], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][11], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][11], 1);

    QuantityInv[playerid][12] = CreatePlayerTextDraw(playerid, 219.000, 291.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][12], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][12], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][12], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][12], 1);

    QuantityInv[playerid][13] = CreatePlayerTextDraw(playerid, 266.000, 291.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][13], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][13], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][13], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][13], 1);

    QuantityInv[playerid][14] = CreatePlayerTextDraw(playerid, 313.000, 291.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][14], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][14], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][14], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][14], 1);

    QuantityInv[playerid][15] = CreatePlayerTextDraw(playerid, 125.000, 354.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][15], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][15], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][15], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][15], 1);

    QuantityInv[playerid][16] = CreatePlayerTextDraw(playerid, 172.000, 354.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][16], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][16], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][16], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][16], 1);

    QuantityInv[playerid][17] = CreatePlayerTextDraw(playerid, 219.000, 354.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][17], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][17], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][17], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][17], 1);

    QuantityInv[playerid][18] = CreatePlayerTextDraw(playerid, 266.000, 354.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][18], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][18], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][18], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][18], 1);

    QuantityInv[playerid][19] = CreatePlayerTextDraw(playerid, 313.000, 354.000, "8x");
    PlayerTextDrawLetterSize(playerid, QuantityInv[playerid][19], 0.163, 0.949);
    PlayerTextDrawAlignment(playerid, QuantityInv[playerid][19], 1);
    PlayerTextDrawColor(playerid, QuantityInv[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, QuantityInv[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, QuantityInv[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, QuantityInv[playerid][19], 255);
    PlayerTextDrawFont(playerid, QuantityInv[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, QuantityInv[playerid][19], 1);

    ExistsInv[playerid][0] = CreatePlayerTextDraw(playerid, 122.000, 176.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][0], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][0], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][0], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][0], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][0], 1);

    ExistsInv[playerid][1] = CreatePlayerTextDraw(playerid, 169.000, 176.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][1], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][1], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][1], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][1], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][1], 1);

    ExistsInv[playerid][2] = CreatePlayerTextDraw(playerid, 216.000, 176.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][2], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][2], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][2], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][2], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][2], 1);

    ExistsInv[playerid][3] = CreatePlayerTextDraw(playerid, 263.000, 176.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][3], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][3], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][3], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][3], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][3], 1);

    ExistsInv[playerid][4] = CreatePlayerTextDraw(playerid, 310.000, 176.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][4], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][4], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][4], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][4], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][4], 1);

    ExistsInv[playerid][5] = CreatePlayerTextDraw(playerid, 122.000, 239.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][5], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][5], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][5], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][5], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][5], 1);

    ExistsInv[playerid][6] = CreatePlayerTextDraw(playerid, 169.000, 239.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][6], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][6], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][6], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][6], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][6], 1);

    ExistsInv[playerid][7] = CreatePlayerTextDraw(playerid, 216.000, 239.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][7], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][7], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][7], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][7], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][7], 1);

    ExistsInv[playerid][8] = CreatePlayerTextDraw(playerid, 263.000, 239.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][8], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][8], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][8], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][8], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][8], 1);

    ExistsInv[playerid][9] = CreatePlayerTextDraw(playerid, 310.000, 239.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][9], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][9], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][9], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][9], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][9], 1);

    ExistsInv[playerid][10] = CreatePlayerTextDraw(playerid, 122.000, 302.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][10], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][10], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][10], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][10], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][10], 1);

    ExistsInv[playerid][11] = CreatePlayerTextDraw(playerid, 169.000, 302.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][11], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][11], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][11], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][11], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][11], 1);

    ExistsInv[playerid][12] = CreatePlayerTextDraw(playerid, 216.000, 302.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][12], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][12], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][12], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][12], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][12], 1);

    ExistsInv[playerid][13] = CreatePlayerTextDraw(playerid, 263.000, 302.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][13], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][13], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][13], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][13], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][13], 1);

    ExistsInv[playerid][14] = CreatePlayerTextDraw(playerid, 310.000, 302.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][14], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][14], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][14], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][14], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][14], 1);

    ExistsInv[playerid][15] = CreatePlayerTextDraw(playerid, 122.000, 365.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][15], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][15], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][15], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][15], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][15], 1);

    ExistsInv[playerid][16] = CreatePlayerTextDraw(playerid, 169.000, 365.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][16], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][16], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][16], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][16], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][16], 1);

    ExistsInv[playerid][17] = CreatePlayerTextDraw(playerid, 216.000, 365.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][17], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][17], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][17], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][17], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][17], 1);

    ExistsInv[playerid][18] = CreatePlayerTextDraw(playerid, 263.000, 365.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][18], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][18], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][18], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][18], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][18], 1);

    ExistsInv[playerid][19] = CreatePlayerTextDraw(playerid, 310.000, 365.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ExistsInv[playerid][19], 45.000, 4.000);
    PlayerTextDrawAlignment(playerid, ExistsInv[playerid][19], 1);
    PlayerTextDrawColor(playerid, ExistsInv[playerid][19], -421070081);
    PlayerTextDrawSetShadow(playerid, ExistsInv[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, ExistsInv[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, ExistsInv[playerid][19], 255);
    PlayerTextDrawFont(playerid, ExistsInv[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, ExistsInv[playerid][19], 1);
}

hook OnPlayerConnect(playerid)
{
    CreateInventoryTextdraw(playerid);
    return 1;
}

ShowInventoryTD(playerid)
{
    for(new i; i < 16; i ++)
    {
        PlayerTextDrawShow(playerid, InventoryTD[playerid][i]);
    }
    for(new i; i < 20; i ++)
    {
        PlayerTextDrawShow(playerid, BoxInv[playerid][i]);
        PlayerTextDrawColor(playerid, BoxInv[playerid][i], 842682623);
    }
    AccountData[playerid][pAmountInv] = 0;
    PlayerTextDrawSetString(playerid, InventoryTD[playerid][11], "Ammount");
}

Inventory_Show(playerid)
{
    if(!IsPlayerConnected(playerid)) return 0;

    SendClientMessage(playerid, -1, " ");
    SendClientMessage(playerid, -1, " ");
    SendClientMessage(playerid, -1, " ");
    SendClientMessage(playerid, -1, " ");
    SendClientMessage(playerid, -1, " ");
    SendClientMessage(playerid, -1, " ");
    SendClientMessage(playerid, -1, " ");
    SendClientMessage(playerid, -1, " ");
    SendClientMessage(playerid, -1, " ");
    SendClientMessage(playerid, -1, " ");

    ShowInventoryTD(playerid);
    new str[120], Float:jumlahbar;
    for(new index; index < MAX_INVENTORY; index ++) 
    {
        if(InventoryData[playerid][index][invExists])
        {
            for (new i; i < sizeof(g_aInventoryItems); i ++) if(!strcmp(g_aInventoryItems[i][e_InventoryItem], InventoryData[playerid][index][invItem], true))
            {
                PlayerTextDrawSetPreviewModel(playerid, PrevMod[playerid][index], InventoryData[playerid][index][invModel]);
                PlayerTextDrawShow(playerid, PrevMod[playerid][index]);

                format(str, sizeof(str), "%s", g_aInventoryItems[i][e_InventoryItem], InventoryData[playerid][index][invQuantity]);
                PlayerTextDrawSetString(playerid, NameInv[playerid][index], str);
                PlayerTextDrawShow(playerid, NameInv[playerid][index]);

                format(str, sizeof(str), "%dx", InventoryData[playerid][index][invQuantity]);
                PlayerTextDrawSetString(playerid, QuantityInv[playerid][index], str);
                PlayerTextDrawShow(playerid, QuantityInv[playerid][index]);

                PlayerTextDrawShow(playerid, ExistsInv[playerid][index]);
            }
        }
    }
    jumlahbar = AccountData[playerid][pBeratItem]*233.000000/50.0;
    PlayerTextDrawTextSize(playerid, InventoryTD[playerid][3], jumlahbar, 3.000000);
    PlayerTextDrawShow(playerid, InventoryTD[playerid][3]);

    format(str, sizeof(str), "%s", AccountData[playerid][pName]);
    PlayerTextDrawSetString(playerid, InventoryTD[playerid][1], str);
    PlayerTextDrawShow(playerid, InventoryTD[playerid][1]);

    format(str, sizeof(str), "%.3f/50", AccountData[playerid][pBeratItem]);
    PlayerTextDrawSetString(playerid, InventoryTD[playerid][4], str);
    PlayerTextDrawShow(playerid, InventoryTD[playerid][4]);
    
    SelectTextDraw(playerid, 0x72D172FF);
    return 1;
}

Inventory_Close(playerid)
{
    forex(i, 16)
    {
        PlayerTextDrawHide(playerid, InventoryTD[playerid][i]);
    }
    forex(i, 20)
    {
        PlayerTextDrawHide(playerid, BoxInv[playerid][i]);
        PlayerTextDrawColor(playerid, BoxInv[playerid][i], 842682623);
    }
    forex(i, MAX_INVENTORY)
    {
        PlayerTextDrawHide(playerid, PrevMod[playerid][i]);
        PlayerTextDrawHide(playerid, NameInv[playerid][i]);
        PlayerTextDrawHide(playerid, QuantityInv[playerid][i]);
        PlayerTextDrawHide(playerid, ExistsInv[playerid][i]);
    }
    CancelSelectTextDraw(playerid);
    AccountData[playerid][pSelectItem] = -1;
    AccountData[playerid][pAmountInv] = 0;
    return 1;
}


// CMD:i(playerid, params[])
// {
//     if(AccountData[playerid][ActivityTime] != 0)
//         return ShowTDN(playerid, NOTIFICATION_ERROR, "Selama activity progress masih berjalan, anda tidak dapat menggunakan CMD!");

//     if(AccountData[playerid][pLoadingBar] > 1)
// 		return ShowTDN(playerid, NOTIFICATION_ERROR, "Selama activity progress masih berjalan, anda tidak dapat menggunakan CMD!");
    
// 	Inventory_Show(playerid);
//     PlayerPlaySound(playerid, 1039, 0.0, 0.0, 0.0);
// 	return 1;
// }