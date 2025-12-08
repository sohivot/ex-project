#include <YSI\y_hooks>
new Text: serverSpawn[18];

CreateSpawnTextdraws()
{
    serverSpawn[0] = TextDrawCreate(55.000, 105.000, "LD_SPAC:white");
    TextDrawTextSize(serverSpawn[0], 90.000, 21.000);
    TextDrawAlignment(serverSpawn[0], 1);
    TextDrawColor(serverSpawn[0], -5360897);
    TextDrawSetShadow(serverSpawn[0], 0);
    TextDrawSetOutline(serverSpawn[0], 0);
    TextDrawBackgroundColor(serverSpawn[0], 255);
    TextDrawFont(serverSpawn[0], 4);
    TextDrawSetProportional(serverSpawn[0], 1);

    serverSpawn[1] = TextDrawCreate(55.000, 128.000, "LD_SPAC:white");
    TextDrawTextSize(serverSpawn[1], 90.000, 21.000);
    TextDrawAlignment(serverSpawn[1], 1);
    TextDrawColor(serverSpawn[1], 960051711);
    TextDrawSetShadow(serverSpawn[1], 0);
    TextDrawSetOutline(serverSpawn[1], 0);
    TextDrawBackgroundColor(serverSpawn[1], 255);
    TextDrawFont(serverSpawn[1], 4);
    TextDrawSetProportional(serverSpawn[1], 1);
    TextDrawSetSelectable(serverSpawn[1], 1);

    serverSpawn[2] = TextDrawCreate(55.000, 152.000, "LD_SPAC:white");
    TextDrawTextSize(serverSpawn[2], 90.000, 21.000);
    TextDrawAlignment(serverSpawn[2], 1);
    TextDrawColor(serverSpawn[2], 960051711);
    TextDrawSetShadow(serverSpawn[2], 0);
    TextDrawSetOutline(serverSpawn[2], 0);
    TextDrawBackgroundColor(serverSpawn[2], 255);
    TextDrawFont(serverSpawn[2], 4);
    TextDrawSetProportional(serverSpawn[2], 1);
    TextDrawSetSelectable(serverSpawn[2], 1);

    serverSpawn[3] = TextDrawCreate(55.000, 152.000, "LD_SPAC:white");
    TextDrawTextSize(serverSpawn[3], 90.000, 21.000);
    TextDrawAlignment(serverSpawn[3], 1);
    TextDrawColor(serverSpawn[3], 960051711);
    TextDrawSetShadow(serverSpawn[3], 0);
    TextDrawSetOutline(serverSpawn[3], 0);
    TextDrawBackgroundColor(serverSpawn[3], 255);
    TextDrawFont(serverSpawn[3], 4);
    TextDrawSetProportional(serverSpawn[3], 1);
    TextDrawSetSelectable(serverSpawn[3], 1);

    serverSpawn[4] = TextDrawCreate(55.000, 176.000, "LD_SPAC:white");
    TextDrawTextSize(serverSpawn[4], 90.000, 21.000);
    TextDrawAlignment(serverSpawn[4], 1);
    TextDrawColor(serverSpawn[4], 960051711);
    TextDrawSetShadow(serverSpawn[4], 0);
    TextDrawSetOutline(serverSpawn[4], 0);
    TextDrawBackgroundColor(serverSpawn[4], 255);
    TextDrawFont(serverSpawn[4], 4);
    TextDrawSetProportional(serverSpawn[4], 1);
    TextDrawSetSelectable(serverSpawn[4], 1);

    serverSpawn[5] = TextDrawCreate(55.000, 200.000, "LD_SPAC:white");
    TextDrawTextSize(serverSpawn[5], 90.000, 21.000);
    TextDrawAlignment(serverSpawn[5], 1);
    TextDrawColor(serverSpawn[5], 960051711);
    TextDrawSetShadow(serverSpawn[5], 0);
    TextDrawSetOutline(serverSpawn[5], 0);
    TextDrawBackgroundColor(serverSpawn[5], 255);
    TextDrawFont(serverSpawn[5], 4);
    TextDrawSetProportional(serverSpawn[5], 1);
    TextDrawSetSelectable(serverSpawn[5], 1);

    serverSpawn[6] = TextDrawCreate(55.000, 224.000, "LD_SPAC:white");
    TextDrawTextSize(serverSpawn[6], 90.000, 21.000);
    TextDrawAlignment(serverSpawn[6], 1);
    TextDrawColor(serverSpawn[6], 960051711);
    TextDrawSetShadow(serverSpawn[6], 0);
    TextDrawSetOutline(serverSpawn[6], 0);
    TextDrawBackgroundColor(serverSpawn[6], 255);
    TextDrawFont(serverSpawn[6], 4);
    TextDrawSetProportional(serverSpawn[6], 1);
    TextDrawSetSelectable(serverSpawn[6], 1);

    serverSpawn[7] = TextDrawCreate(55.000, 247.000, "LD_SPAC:white");
    TextDrawTextSize(serverSpawn[7], 90.000, 21.000);
    TextDrawAlignment(serverSpawn[7], 1);
    TextDrawColor(serverSpawn[7], 960051711);
    TextDrawSetShadow(serverSpawn[7], 0);
    TextDrawSetOutline(serverSpawn[7], 0);
    TextDrawBackgroundColor(serverSpawn[7], 255);
    TextDrawFont(serverSpawn[7], 4);
    TextDrawSetProportional(serverSpawn[7], 1);
    TextDrawSetSelectable(serverSpawn[7], 1);

    serverSpawn[8] = TextDrawCreate(55.000, 271.000, "LD_SPAC:white");
    TextDrawTextSize(serverSpawn[8], 90.000, 21.000);
    TextDrawAlignment(serverSpawn[8], 1);
    TextDrawColor(serverSpawn[8], -5360897);
    TextDrawSetShadow(serverSpawn[8], 0);
    TextDrawSetOutline(serverSpawn[8], 0);
    TextDrawBackgroundColor(serverSpawn[8], 255);
    TextDrawFont(serverSpawn[8], 4);
    TextDrawSetProportional(serverSpawn[8], 1);
    TextDrawSetSelectable(serverSpawn[8], 1);

    serverSpawn[9] = TextDrawCreate(99.000, 108.000, "Pilih Lokasi Spawn");
    TextDrawLetterSize(serverSpawn[9], 0.200, 1.199);
    TextDrawAlignment(serverSpawn[9], 2);
    TextDrawColor(serverSpawn[9], -1);
    TextDrawSetShadow(serverSpawn[9], 0);
    TextDrawSetOutline(serverSpawn[9], 0);
    TextDrawBackgroundColor(serverSpawn[9], 150);
    TextDrawFont(serverSpawn[9], 1);
    TextDrawSetProportional(serverSpawn[9], 1);

    serverSpawn[10] = TextDrawCreate(99.000, 132.000, "Bandara Imajinasi");
    TextDrawLetterSize(serverSpawn[10], 0.200, 1.199);
    TextDrawAlignment(serverSpawn[10], 2);
    TextDrawColor(serverSpawn[10], -1);
    TextDrawSetShadow(serverSpawn[10], 0);
    TextDrawSetOutline(serverSpawn[10], 0);
    TextDrawBackgroundColor(serverSpawn[10], 150);
    TextDrawFont(serverSpawn[10], 1);
    TextDrawSetProportional(serverSpawn[10], 1);

    serverSpawn[11] = TextDrawCreate(99.000, 132.000, "Bandara Imajinasi");
    TextDrawLetterSize(serverSpawn[11], 0.200, 1.199);
    TextDrawAlignment(serverSpawn[11], 2);
    TextDrawColor(serverSpawn[11], -1);
    TextDrawSetShadow(serverSpawn[11], 0);
    TextDrawSetOutline(serverSpawn[11], 0);
    TextDrawBackgroundColor(serverSpawn[11], 150);
    TextDrawFont(serverSpawn[11], 1);
    TextDrawSetProportional(serverSpawn[11], 1);

    serverSpawn[12] = TextDrawCreate(99.000, 155.000, "Pelabuhan Imajinasi");
    TextDrawLetterSize(serverSpawn[12], 0.200, 1.199);
    TextDrawAlignment(serverSpawn[12], 2);
    TextDrawColor(serverSpawn[12], -1);
    TextDrawSetShadow(serverSpawn[12], 0);
    TextDrawSetOutline(serverSpawn[12], 0);
    TextDrawBackgroundColor(serverSpawn[12], 150);
    TextDrawFont(serverSpawn[12], 1);
    TextDrawSetProportional(serverSpawn[12], 1);

    serverSpawn[13] = TextDrawCreate(99.000, 179.000, "Carrnaval Imajinasi");
    TextDrawLetterSize(serverSpawn[13], 0.200, 1.199);
    TextDrawAlignment(serverSpawn[13], 2);
    TextDrawColor(serverSpawn[13], -1);
    TextDrawSetShadow(serverSpawn[13], 0);
    TextDrawSetOutline(serverSpawn[13], 0);
    TextDrawBackgroundColor(serverSpawn[13], 150);
    TextDrawFont(serverSpawn[13], 1);
    TextDrawSetProportional(serverSpawn[13], 1);

    serverSpawn[14] = TextDrawCreate(99.000, 204.000, "Rumah");
    TextDrawLetterSize(serverSpawn[14], 0.200, 1.199);
    TextDrawAlignment(serverSpawn[14], 2);
    TextDrawColor(serverSpawn[14], -1);
    TextDrawSetShadow(serverSpawn[14], 0);
    TextDrawSetOutline(serverSpawn[14], 0);
    TextDrawBackgroundColor(serverSpawn[14], 150);
    TextDrawFont(serverSpawn[14], 1);
    TextDrawSetProportional(serverSpawn[14], 1);

    serverSpawn[15] = TextDrawCreate(99.000, 227.000, "Rumah Rusun");
    TextDrawLetterSize(serverSpawn[15], 0.200, 1.199);
    TextDrawAlignment(serverSpawn[15], 2);
    TextDrawColor(serverSpawn[15], -1);
    TextDrawSetShadow(serverSpawn[15], 0);
    TextDrawSetOutline(serverSpawn[15], 0);
    TextDrawBackgroundColor(serverSpawn[15], 150);
    TextDrawFont(serverSpawn[15], 1);
    TextDrawSetProportional(serverSpawn[15], 1);

    serverSpawn[16] = TextDrawCreate(99.000, 250.000, "Last Spawn");
    TextDrawLetterSize(serverSpawn[16], 0.200, 1.199);
    TextDrawAlignment(serverSpawn[16], 2);
    TextDrawColor(serverSpawn[16], -1);
    TextDrawSetShadow(serverSpawn[16], 0);
    TextDrawSetOutline(serverSpawn[16], 0);
    TextDrawBackgroundColor(serverSpawn[16], 150);
    TextDrawFont(serverSpawn[16], 1);
    TextDrawSetProportional(serverSpawn[16], 1);

    serverSpawn[17] = TextDrawCreate(99.000, 275.000, ">> Spawn <<");
    TextDrawLetterSize(serverSpawn[17], 0.200, 1.199);
    TextDrawAlignment(serverSpawn[17], 2);
    TextDrawColor(serverSpawn[17], -1);
    TextDrawSetShadow(serverSpawn[17], 0);
    TextDrawSetOutline(serverSpawn[17], 0);
    TextDrawBackgroundColor(serverSpawn[17], 150);
    TextDrawFont(serverSpawn[17], 1);
    TextDrawSetProportional(serverSpawn[17], 1);
}

ShowSpawnTextdraws(playerid)
{
    for(new x = 0; x < 18; x++)
    {
        TextDrawShowForPlayer(playerid, serverSpawn[x]);
    }
    SelectTextDraw(playerid, 0xFF9999FF);
    Info(playerid, "Gunakan "VERONA"'/cursor'"WHITE" jika cursor menghilang / textdraw tidak dapat ditekan");
    return 1;
}

HideSpawnTextdraws(playerid)
{
    for(new x = 0; x < 18; x++)
    {
        TextDrawHideForPlayer(playerid, serverSpawn[x]);
    }
    CancelSelectTextDraw(playerid);
    return 1;
}