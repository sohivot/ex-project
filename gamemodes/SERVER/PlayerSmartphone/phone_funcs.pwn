#include <YSI\y_hooks>

new PlayerText: ATRP_Phone[MAX_PLAYERS][29];
new PlayerText: CloseButtonPhone[MAX_PLAYERS];
new PlayerText: ContactButtonPhone[MAX_PLAYERS];
new PlayerText: GpsButtonPhone[MAX_PLAYERS];
new PlayerText: AirdropButtonPhone[MAX_PLAYERS];
new PlayerText: BankButtonPhone[MAX_PLAYERS];
new PlayerText: SettingButtonPhone[MAX_PLAYERS];
new PlayerText: TransButtonPhone[MAX_PLAYERS];
new PlayerText: YellowButtonPhone[MAX_PLAYERS];
new PlayerText: TwitterButtonPhone[MAX_PLAYERS];
new PlayerText: SpotifyButtonPhone[MAX_PLAYERS];
new PlayerText: VehicleButtonPhone[MAX_PLAYERS];
new PlayerText: WhatsappButtonPhone[MAX_PLAYERS];
new PlayerText: CallButtonPhone[MAX_PLAYERS];

new PlayerText: ATRP_CallTD[MAX_PLAYERS][15];
new PlayerText: CloseCallButton[MAX_PLAYERS];
new PlayerText: ContactNameTD[MAX_PLAYERS];
new PlayerText: StatusDialingTD[MAX_PLAYERS];
new PlayerText: RedButtonoutComingCall[MAX_PLAYERS];
new PlayerText: RedButtonincomingCall[MAX_PLAYERS];
new PlayerText: GreenButtonincomingCall[MAX_PLAYERS];

new PlayerText: ATRP_BankTD[MAX_PLAYERS][24];
new PlayerText: CloseBankButton[MAX_PLAYERS];
new PlayerText: TransferBankButton[MAX_PLAYERS];

new PlayerText: ATRP_SpotifyTD[MAX_PLAYERS][26];
new PlayerText: CloseSpotifyButton[MAX_PLAYERS];

new PlayerText: ATRP_TwitterHomeTD[MAX_PLAYERS][20];
new PlayerText: CloseTwitterHome[MAX_PLAYERS];

new PlayerText: ATRP_TwitterHomepageTD[MAX_PLAYERS][21];
new PlayerText: CloseTwitterHomePage[MAX_PLAYERS];

ATRPhoneTwitterHomepageLoad(playerid)
{
    ATRP_TwitterHomepageTD[playerid][0] = CreatePlayerTextDraw(playerid, 480.000, 148.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][0], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][0], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][0], 1);

    ATRP_TwitterHomepageTD[playerid][1] = CreatePlayerTextDraw(playerid, 487.000, 170.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][1], 115.000, 235.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][1], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][1], 1);

    ATRP_TwitterHomepageTD[playerid][2] = CreatePlayerTextDraw(playerid, 567.000, 148.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][2], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][2], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][2], 1);

    ATRP_TwitterHomepageTD[playerid][3] = CreatePlayerTextDraw(playerid, 480.000, 385.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][3], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][3], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][3], 1);

    ATRP_TwitterHomepageTD[playerid][4] = CreatePlayerTextDraw(playerid, 567.000, 385.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][4], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][4], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][4], 1);

    ATRP_TwitterHomepageTD[playerid][5] = CreatePlayerTextDraw(playerid, 503.000, 155.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][5], 84.000, 265.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][5], 1);

    ATRP_TwitterHomepageTD[playerid][6] = CreatePlayerTextDraw(playerid, 484.000, 152.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][6], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][6], 512819199);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][6], 1);

    ATRP_TwitterHomepageTD[playerid][7] = CreatePlayerTextDraw(playerid, 491.000, 170.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][7], 107.000, 229.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][7], 512819199);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][7], 1);

    ATRP_TwitterHomepageTD[playerid][8] = CreatePlayerTextDraw(playerid, 563.000, 152.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][8], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][8], 512819199);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][8], 1);

    ATRP_TwitterHomepageTD[playerid][9] = CreatePlayerTextDraw(playerid, 563.000, 381.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][9], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][9], 512819199);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][9], 1);

    ATRP_TwitterHomepageTD[playerid][10] = CreatePlayerTextDraw(playerid, 484.000, 381.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][10], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][10], 512819199);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][10], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][10], 1);

    ATRP_TwitterHomepageTD[playerid][11] = CreatePlayerTextDraw(playerid, 504.000, 159.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][11], 79.000, 256.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][11], 512819199);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][11], 1);

    ATRP_TwitterHomepageTD[playerid][12] = CreatePlayerTextDraw(playerid, 528.000, 166.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][12], 15.000, 16.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][12], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][12], 1);

    ATRP_TwitterHomepageTD[playerid][13] = CreatePlayerTextDraw(playerid, 537.000, 169.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][13], 17.000, 10.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][13], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][13], 1);

    ATRP_TwitterHomepageTD[playerid][14] = CreatePlayerTextDraw(playerid, 547.000, 166.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][14], 15.000, 16.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][14], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][14], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][14], 1);

    ATRP_TwitterHomepageTD[playerid][15] = CreatePlayerTextDraw(playerid, 497.000, 201.000, "Hai, Meki bagaimana~n~hari harimu?");
    PlayerTextDrawLetterSize(playerid, ATRP_TwitterHomepageTD[playerid][15], 0.190, 1.299);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][15], 150);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][15], 1);

    ATRP_TwitterHomepageTD[playerid][16] = CreatePlayerTextDraw(playerid, 515.000, 237.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][16], 60.000, 25.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][16], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][16], 1);

    ATRP_TwitterHomepageTD[playerid][17] = CreatePlayerTextDraw(playerid, 545.000, 243.000, "Tweet");
    PlayerTextDrawLetterSize(playerid, ATRP_TwitterHomepageTD[playerid][17], 0.200, 1.299);
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][17], 15.000, 33.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][17], 2);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][17], 150);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][17], 1);
    PlayerTextDrawSetSelectable(playerid, ATRP_TwitterHomepageTD[playerid][17], 1);

    ATRP_TwitterHomepageTD[playerid][18] = CreatePlayerTextDraw(playerid, 515.000, 268.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][18], 60.000, 25.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][18], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][18], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][18], 1);

    ATRP_TwitterHomepageTD[playerid][19] = CreatePlayerTextDraw(playerid, 546.000, 273.000, "Logout");
    PlayerTextDrawLetterSize(playerid, ATRP_TwitterHomepageTD[playerid][19], 0.200, 1.299);
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomepageTD[playerid][19], 15.000, 33.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][19], 2);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][19], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][19], 150);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][19], 1);
    PlayerTextDrawSetSelectable(playerid, ATRP_TwitterHomepageTD[playerid][19], 1);

    ATRP_TwitterHomepageTD[playerid][20] = CreatePlayerTextDraw(playerid, 503.000, 321.000, "Ingatlah untuk selalu mematuhi~n~persyaratan pengguna kami!");
    PlayerTextDrawLetterSize(playerid, ATRP_TwitterHomepageTD[playerid][20], 0.160, 1.099);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomepageTD[playerid][20], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomepageTD[playerid][20], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomepageTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomepageTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomepageTD[playerid][20], 150);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomepageTD[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomepageTD[playerid][20], 1);

    CloseTwitterHomePage[playerid] = CreatePlayerTextDraw(playerid, 528.000, 401.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, CloseTwitterHomePage[playerid], 36.000, 8.000);
    PlayerTextDrawAlignment(playerid, CloseTwitterHomePage[playerid], 1);
    PlayerTextDrawColor(playerid, CloseTwitterHomePage[playerid], -1);
    PlayerTextDrawSetShadow(playerid, CloseTwitterHomePage[playerid], 0);
    PlayerTextDrawSetOutline(playerid, CloseTwitterHomePage[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, CloseTwitterHomePage[playerid], 255);
    PlayerTextDrawFont(playerid, CloseTwitterHomePage[playerid], 4);
    PlayerTextDrawSetProportional(playerid, CloseTwitterHomePage[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, CloseTwitterHomePage[playerid], 1);
    return 1;
}

ATRPhoneTwitterHomepageUnload(playerid)
{
    for(new i; i < 21; i++) PlayerTextDrawDestroy(playerid, ATRP_TwitterHomepageTD[playerid][i]);
    PlayerTextDrawDestroy(playerid, CloseTwitterHomePage[playerid]);
    return 1;
}

ATRPhoneTwitterHomeLoad(playerid)
{
    ATRP_TwitterHomeTD[playerid][0] = CreatePlayerTextDraw(playerid, 480.000, 148.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][0], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][0], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][0], 1);

    ATRP_TwitterHomeTD[playerid][1] = CreatePlayerTextDraw(playerid, 487.000, 170.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][1], 115.000, 235.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][1], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][1], 1);

    ATRP_TwitterHomeTD[playerid][2] = CreatePlayerTextDraw(playerid, 567.000, 148.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][2], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][2], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][2], 1);

    ATRP_TwitterHomeTD[playerid][3] = CreatePlayerTextDraw(playerid, 480.000, 385.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][3], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][3], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][3], 1);

    ATRP_TwitterHomeTD[playerid][4] = CreatePlayerTextDraw(playerid, 567.000, 385.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][4], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][4], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][4], 1);

    ATRP_TwitterHomeTD[playerid][5] = CreatePlayerTextDraw(playerid, 503.000, 155.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][5], 84.000, 265.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][5], 1);

    ATRP_TwitterHomeTD[playerid][6] = CreatePlayerTextDraw(playerid, 484.000, 152.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][6], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][6], 512819199);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][6], 1);

    ATRP_TwitterHomeTD[playerid][7] = CreatePlayerTextDraw(playerid, 491.000, 170.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][7], 107.000, 229.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][7], 512819199);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][7], 1);

    ATRP_TwitterHomeTD[playerid][8] = CreatePlayerTextDraw(playerid, 563.000, 152.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][8], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][8], 512819199);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][8], 1);

    ATRP_TwitterHomeTD[playerid][9] = CreatePlayerTextDraw(playerid, 563.000, 381.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][9], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][9], 512819199);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][9], 1);

    ATRP_TwitterHomeTD[playerid][10] = CreatePlayerTextDraw(playerid, 484.000, 381.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][10], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][10], 512819199);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][10], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][10], 1);

    ATRP_TwitterHomeTD[playerid][11] = CreatePlayerTextDraw(playerid, 504.000, 159.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][11], 79.000, 256.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][11], 512819199);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][11], 1);

    ATRP_TwitterHomeTD[playerid][12] = CreatePlayerTextDraw(playerid, 528.000, 166.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][12], 15.000, 16.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][12], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][12], 1);

    ATRP_TwitterHomeTD[playerid][13] = CreatePlayerTextDraw(playerid, 537.000, 169.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][13], 17.000, 10.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][13], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][13], 1);

    ATRP_TwitterHomeTD[playerid][14] = CreatePlayerTextDraw(playerid, 547.000, 166.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][14], 15.000, 16.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][14], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][14], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][14], 1);

    ATRP_TwitterHomeTD[playerid][15] = CreatePlayerTextDraw(playerid, 497.000, 201.000, "Hai, selamat datang di~n~Twitter, Silahkan login!");
    PlayerTextDrawLetterSize(playerid, ATRP_TwitterHomeTD[playerid][15], 0.160, 1.099);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][15], 150);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][15], 1);

    ATRP_TwitterHomeTD[playerid][16] = CreatePlayerTextDraw(playerid, 515.000, 237.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][16], 60.000, 25.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][16], 255);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][16], 1);

    ATRP_TwitterHomeTD[playerid][17] = CreatePlayerTextDraw(playerid, 545.000, 243.000, "Login");
    PlayerTextDrawLetterSize(playerid, ATRP_TwitterHomeTD[playerid][17], 0.200, 1.299);
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][17], 15.000, 33.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][17], 2);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][17], 150);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][17], 1);
    PlayerTextDrawSetSelectable(playerid, ATRP_TwitterHomeTD[playerid][17], 1);

    ATRP_TwitterHomeTD[playerid][18] = CreatePlayerTextDraw(playerid, 500.000, 281.000, "Belum memiliki akun?");
    PlayerTextDrawLetterSize(playerid, ATRP_TwitterHomeTD[playerid][18], 0.160, 1.099);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][18], 1);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][18], 150);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][18], 1);

    ATRP_TwitterHomeTD[playerid][19] = CreatePlayerTextDraw(playerid, 571.000, 281.000, "Sign in");
    PlayerTextDrawLetterSize(playerid, ATRP_TwitterHomeTD[playerid][19], 0.160, 1.099);
    PlayerTextDrawTextSize(playerid, ATRP_TwitterHomeTD[playerid][19], 10.000, 41.000);
    PlayerTextDrawAlignment(playerid, ATRP_TwitterHomeTD[playerid][19], 2);
    PlayerTextDrawColor(playerid, ATRP_TwitterHomeTD[playerid][19], 52735);
    PlayerTextDrawSetShadow(playerid, ATRP_TwitterHomeTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_TwitterHomeTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_TwitterHomeTD[playerid][19], 150);
    PlayerTextDrawFont(playerid, ATRP_TwitterHomeTD[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_TwitterHomeTD[playerid][19], 1);
    PlayerTextDrawSetSelectable(playerid, ATRP_TwitterHomeTD[playerid][19], 1);

    CloseTwitterHome[playerid] = CreatePlayerTextDraw(playerid, 528.000, 401.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, CloseTwitterHome[playerid], 36.000, 8.000);
    PlayerTextDrawAlignment(playerid, CloseTwitterHome[playerid], 1);
    PlayerTextDrawColor(playerid, CloseTwitterHome[playerid], -1);
    PlayerTextDrawSetShadow(playerid, CloseTwitterHome[playerid], 0);
    PlayerTextDrawSetOutline(playerid, CloseTwitterHome[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, CloseTwitterHome[playerid], 255);
    PlayerTextDrawFont(playerid, CloseTwitterHome[playerid], 4);
    PlayerTextDrawSetProportional(playerid, CloseTwitterHome[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, CloseTwitterHome[playerid], 1);
    return 1;
}

ATRPhoneTwitterHomeUnload(playerid)
{
    for(new i; i < 20; i++) PlayerTextDrawDestroy(playerid, ATRP_TwitterHomeTD[playerid][i]);
    PlayerTextDrawDestroy(playerid, CloseTwitterHome[playerid]);
    return 1;
}

ATRPhoneLoad(playerid)
{
    ATRP_Phone[playerid][0] = CreatePlayerTextDraw(playerid, 480.000, 148.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][0], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][0], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][0], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][0], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][0], 1);

    ATRP_Phone[playerid][1] = CreatePlayerTextDraw(playerid, 487.000, 170.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][1], 115.000, 235.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][1], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][1], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][1], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][1], 1);

    ATRP_Phone[playerid][2] = CreatePlayerTextDraw(playerid, 567.000, 148.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][2], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][2], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][2], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][2], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][2], 1);

    ATRP_Phone[playerid][3] = CreatePlayerTextDraw(playerid, 480.000, 385.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][3], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][3], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][3], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][3], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][3], 1);

    ATRP_Phone[playerid][4] = CreatePlayerTextDraw(playerid, 567.000, 385.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][4], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][4], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][4], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][4], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][4], 1);

    ATRP_Phone[playerid][5] = CreatePlayerTextDraw(playerid, 503.000, 155.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][5], 84.000, 265.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][5], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][5], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][5], 1);

    ATRP_Phone[playerid][6] = CreatePlayerTextDraw(playerid, 484.000, 152.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][6], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][6], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][6], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][6], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][6], 1);

    ATRP_Phone[playerid][7] = CreatePlayerTextDraw(playerid, 491.000, 170.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][7], 107.000, 229.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][7], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][7], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][7], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][7], 1);

    ATRP_Phone[playerid][8] = CreatePlayerTextDraw(playerid, 563.000, 152.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][8], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][8], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][8], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][8], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][8], 1);

    ATRP_Phone[playerid][9] = CreatePlayerTextDraw(playerid, 563.000, 381.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][9], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][9], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][9], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][9], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][9], 1);

    ATRP_Phone[playerid][10] = CreatePlayerTextDraw(playerid, 484.000, 381.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][10], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][10], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][10], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][10], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][10], 1);

    ATRP_Phone[playerid][11] = CreatePlayerTextDraw(playerid, 504.000, 159.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][11], 79.000, 256.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][11], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][11], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][11], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][11], 1);

    ATRP_Phone[playerid][12] = CreatePlayerTextDraw(playerid, 528.000, 166.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][12], 15.000, 16.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][12], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][12], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][12], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][12], 1);

    ATRP_Phone[playerid][13] = CreatePlayerTextDraw(playerid, 537.000, 169.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][13], 17.000, 10.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][13], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][13], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][13], 1);

    ATRP_Phone[playerid][14] = CreatePlayerTextDraw(playerid, 547.000, 166.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][14], 15.000, 16.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][14], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][14], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][14], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][14], 1);

    ATRP_Phone[playerid][15] = CreatePlayerTextDraw(playerid, 488.000, 233.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][15], 35.000, 35.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][15], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][15], -1697828097);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][15], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][15], 1);

    ATRP_Phone[playerid][16] = CreatePlayerTextDraw(playerid, 546.000, 184.000, "05:25");
    PlayerTextDrawLetterSize(playerid, ATRP_Phone[playerid][16], 0.250, 1.399);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][16], 2);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][16], 150);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][16], 1);

    ATRP_Phone[playerid][17] = CreatePlayerTextDraw(playerid, 546.000, 200.000, "25 Oktober 2023");
    PlayerTextDrawLetterSize(playerid, ATRP_Phone[playerid][17], 0.180, 1.299);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][17], 2);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][17], 150);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][17], 1);

    ATRP_Phone[playerid][18] = CreatePlayerTextDraw(playerid, 514.000, 233.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][18], 35.000, 35.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][18], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][18], -1962934017);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][18], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][18], 1);

    ATRP_Phone[playerid][19] = CreatePlayerTextDraw(playerid, 540.000, 233.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][19], 35.000, 35.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][19], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][19], -260013825);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][19], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][19], 1);

    ATRP_Phone[playerid][20] = CreatePlayerTextDraw(playerid, 566.000, 233.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][20], 35.000, 35.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][20], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][20], -1448498689);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][20], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][20], 1);

    ATRP_Phone[playerid][21] = CreatePlayerTextDraw(playerid, 488.000, 263.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][21], 35.000, 35.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][21], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][21], 1097458175);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][21], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][21], 1);

    ATRP_Phone[playerid][22] = CreatePlayerTextDraw(playerid, 514.000, 263.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][22], 35.000, 35.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][22], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][22], -626712321);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][22], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][22], 1);

    ATRP_Phone[playerid][23] = CreatePlayerTextDraw(playerid, 540.000, 263.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][23], 35.000, 35.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][23], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][23], -65281);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][23], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][23], 1);

    ATRP_Phone[playerid][24] = CreatePlayerTextDraw(playerid, 488.000, 339.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][24], 35.000, 35.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][24], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][24], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][24], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][24], 1);

    ATRP_Phone[playerid][25] = CreatePlayerTextDraw(playerid, 514.000, 339.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][25], 35.000, 35.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][25], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][25], 1768516095);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][25], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][25], 1);

    ATRP_Phone[playerid][26] = CreatePlayerTextDraw(playerid, 540.000, 339.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][26], 35.000, 35.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][26], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][26], 852308735);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][26], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][26], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][26], 1);

    ATRP_Phone[playerid][27] = CreatePlayerTextDraw(playerid, 566.000, 339.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][27], 35.000, 35.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][27], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][27], 1604231423);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][27], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][27], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][27], 1);
    
    ATRP_Phone[playerid][28] = CreatePlayerTextDraw(playerid, 566.000, 263.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Phone[playerid][28], 35.000, 35.000);
    PlayerTextDrawAlignment(playerid, ATRP_Phone[playerid][28], 1);
    PlayerTextDrawColor(playerid, ATRP_Phone[playerid][28], 852308735);
    PlayerTextDrawSetShadow(playerid, ATRP_Phone[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Phone[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Phone[playerid][28], 255);
    PlayerTextDrawFont(playerid, ATRP_Phone[playerid][28], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Phone[playerid][28], 1);

    CloseButtonPhone[playerid] = CreatePlayerTextDraw(playerid, 528.000, 401.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, CloseButtonPhone[playerid], 36.000, 8.000);
    PlayerTextDrawAlignment(playerid, CloseButtonPhone[playerid], 1);
    PlayerTextDrawColor(playerid, CloseButtonPhone[playerid], -1);
    PlayerTextDrawSetShadow(playerid, CloseButtonPhone[playerid], 0);
    PlayerTextDrawSetOutline(playerid, CloseButtonPhone[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, CloseButtonPhone[playerid], 255);
    PlayerTextDrawFont(playerid, CloseButtonPhone[playerid], 4);
    PlayerTextDrawSetProportional(playerid, CloseButtonPhone[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, CloseButtonPhone[playerid], 1);

    ContactButtonPhone[playerid] = CreatePlayerTextDraw(playerid, 499.000, 244.000, "HUD:radar_saveGame");
    PlayerTextDrawTextSize(playerid, ContactButtonPhone[playerid], 13.000, 13.000);
    PlayerTextDrawAlignment(playerid, ContactButtonPhone[playerid], 1);
    PlayerTextDrawColor(playerid, ContactButtonPhone[playerid], -1);
    PlayerTextDrawSetShadow(playerid, ContactButtonPhone[playerid], 0);
    PlayerTextDrawSetOutline(playerid, ContactButtonPhone[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, ContactButtonPhone[playerid], 255);
    PlayerTextDrawFont(playerid, ContactButtonPhone[playerid], 4);
    PlayerTextDrawSetProportional(playerid, ContactButtonPhone[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, ContactButtonPhone[playerid], 1);

    GpsButtonPhone[playerid] = CreatePlayerTextDraw(playerid, 525.000, 244.000, "HUD:radar_waypoint");
    PlayerTextDrawTextSize(playerid, GpsButtonPhone[playerid], 13.000, 13.000);
    PlayerTextDrawAlignment(playerid, GpsButtonPhone[playerid], 1);
    PlayerTextDrawColor(playerid, GpsButtonPhone[playerid], -1);
    PlayerTextDrawSetShadow(playerid, GpsButtonPhone[playerid], 0);
    PlayerTextDrawSetOutline(playerid, GpsButtonPhone[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, GpsButtonPhone[playerid], 255);
    PlayerTextDrawFont(playerid, GpsButtonPhone[playerid], 4);
    PlayerTextDrawSetProportional(playerid, GpsButtonPhone[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, GpsButtonPhone[playerid], 1);

    AirdropButtonPhone[playerid] = CreatePlayerTextDraw(playerid, 551.000, 244.000, "HUD:radar_triadsCasino");
    PlayerTextDrawTextSize(playerid, AirdropButtonPhone[playerid], 13.000, 13.000);
    PlayerTextDrawAlignment(playerid, AirdropButtonPhone[playerid], 1);
    PlayerTextDrawColor(playerid, AirdropButtonPhone[playerid], -15428609);
    PlayerTextDrawSetShadow(playerid, AirdropButtonPhone[playerid], 0);
    PlayerTextDrawSetOutline(playerid, AirdropButtonPhone[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, AirdropButtonPhone[playerid], 255);
    PlayerTextDrawFont(playerid, AirdropButtonPhone[playerid], 4);
    PlayerTextDrawSetProportional(playerid, AirdropButtonPhone[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, AirdropButtonPhone[playerid], 1);

    BankButtonPhone[playerid] = CreatePlayerTextDraw(playerid, 577.000, 244.000, "LD_CARD:cdback");
    PlayerTextDrawTextSize(playerid, BankButtonPhone[playerid], 13.000, 13.000);
    PlayerTextDrawAlignment(playerid, BankButtonPhone[playerid], 1);
    PlayerTextDrawColor(playerid, BankButtonPhone[playerid], -1);
    PlayerTextDrawSetShadow(playerid, BankButtonPhone[playerid], 0);
    PlayerTextDrawSetOutline(playerid, BankButtonPhone[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, BankButtonPhone[playerid], 255);
    PlayerTextDrawFont(playerid, BankButtonPhone[playerid], 4);
    PlayerTextDrawSetProportional(playerid, BankButtonPhone[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, BankButtonPhone[playerid], 1);

    SettingButtonPhone[playerid] = CreatePlayerTextDraw(playerid, 526.000, 350.000, "LD_BEAT:upl");
    PlayerTextDrawTextSize(playerid, SettingButtonPhone[playerid], 13.000, 13.000);
    PlayerTextDrawAlignment(playerid, SettingButtonPhone[playerid], 1);
    PlayerTextDrawColor(playerid, SettingButtonPhone[playerid], -1);
    PlayerTextDrawSetShadow(playerid, SettingButtonPhone[playerid], 0);
    PlayerTextDrawSetOutline(playerid, SettingButtonPhone[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, SettingButtonPhone[playerid], 255);
    PlayerTextDrawFont(playerid, SettingButtonPhone[playerid], 4);
    PlayerTextDrawSetProportional(playerid, SettingButtonPhone[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SettingButtonPhone[playerid], 1);

    TransButtonPhone[playerid] = CreatePlayerTextDraw(playerid, 525.000, 274.000, "HUD:radar_triadsCasino");
    PlayerTextDrawTextSize(playerid, TransButtonPhone[playerid], 13.000, 13.000);
    PlayerTextDrawAlignment(playerid, TransButtonPhone[playerid], 1);
    PlayerTextDrawColor(playerid, TransButtonPhone[playerid], -1);
    PlayerTextDrawSetShadow(playerid, TransButtonPhone[playerid], 0);
    PlayerTextDrawSetOutline(playerid, TransButtonPhone[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, TransButtonPhone[playerid], 255);
    PlayerTextDrawFont(playerid, TransButtonPhone[playerid], 4);
    PlayerTextDrawSetProportional(playerid, TransButtonPhone[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, TransButtonPhone[playerid], 1);

    YellowButtonPhone[playerid] = CreatePlayerTextDraw(playerid, 551.000, 273.000, "HUD:radar_gangY");
    PlayerTextDrawTextSize(playerid, YellowButtonPhone[playerid], 13.000, 13.000);
    PlayerTextDrawAlignment(playerid, YellowButtonPhone[playerid], 1);
    PlayerTextDrawColor(playerid, YellowButtonPhone[playerid], -1);
    PlayerTextDrawSetShadow(playerid, YellowButtonPhone[playerid], 0);
    PlayerTextDrawSetOutline(playerid, YellowButtonPhone[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, YellowButtonPhone[playerid], 255);
    PlayerTextDrawFont(playerid, YellowButtonPhone[playerid], 4);
    PlayerTextDrawSetProportional(playerid, YellowButtonPhone[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, YellowButtonPhone[playerid], 1);

    TwitterButtonPhone[playerid] = CreatePlayerTextDraw(playerid, 499.000, 273.000, "LD_GRAV:beea");
    PlayerTextDrawTextSize(playerid, TwitterButtonPhone[playerid], 13.000, 13.000);
    PlayerTextDrawAlignment(playerid, TwitterButtonPhone[playerid], 1);
    PlayerTextDrawColor(playerid, TwitterButtonPhone[playerid], -1);
    PlayerTextDrawSetShadow(playerid, TwitterButtonPhone[playerid], 0);
    PlayerTextDrawSetOutline(playerid, TwitterButtonPhone[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, TwitterButtonPhone[playerid], 255);
    PlayerTextDrawFont(playerid, TwitterButtonPhone[playerid], 4);
    PlayerTextDrawSetProportional(playerid, TwitterButtonPhone[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, TwitterButtonPhone[playerid], 1);

    SpotifyButtonPhone[playerid] = CreatePlayerTextDraw(playerid, 499.000, 350.000, "HUD:radar_dateDisco");
    PlayerTextDrawTextSize(playerid, SpotifyButtonPhone[playerid], 13.000, 13.000);
    PlayerTextDrawAlignment(playerid, SpotifyButtonPhone[playerid], 1);
    PlayerTextDrawColor(playerid, SpotifyButtonPhone[playerid], 852308735);
    PlayerTextDrawSetShadow(playerid, SpotifyButtonPhone[playerid], 0);
    PlayerTextDrawSetOutline(playerid, SpotifyButtonPhone[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, SpotifyButtonPhone[playerid], 255);
    PlayerTextDrawFont(playerid, SpotifyButtonPhone[playerid], 4);
    PlayerTextDrawSetProportional(playerid, SpotifyButtonPhone[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, SpotifyButtonPhone[playerid], 1);

    VehicleButtonPhone[playerid] = CreatePlayerTextDraw(playerid, 551.000, 350.000, "HUD:radar_impound");
    PlayerTextDrawTextSize(playerid, VehicleButtonPhone[playerid], 13.000, 13.000);
    PlayerTextDrawAlignment(playerid, VehicleButtonPhone[playerid], 1);
    PlayerTextDrawColor(playerid, VehicleButtonPhone[playerid], -1);
    PlayerTextDrawSetShadow(playerid, VehicleButtonPhone[playerid], 0);
    PlayerTextDrawSetOutline(playerid, VehicleButtonPhone[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, VehicleButtonPhone[playerid], 255);
    PlayerTextDrawFont(playerid, VehicleButtonPhone[playerid], 4);
    PlayerTextDrawSetProportional(playerid, VehicleButtonPhone[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, VehicleButtonPhone[playerid], 1);

    WhatsappButtonPhone[playerid] = CreatePlayerTextDraw(playerid, 577.000, 273.000, "LD_CHAT:goodcha");
    PlayerTextDrawTextSize(playerid, WhatsappButtonPhone[playerid], 14.000, 14.000);
    PlayerTextDrawAlignment(playerid, WhatsappButtonPhone[playerid], 1);
    PlayerTextDrawColor(playerid, WhatsappButtonPhone[playerid], -1);
    PlayerTextDrawSetShadow(playerid, WhatsappButtonPhone[playerid], 0);
    PlayerTextDrawSetOutline(playerid, WhatsappButtonPhone[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, WhatsappButtonPhone[playerid], 255);
    PlayerTextDrawFont(playerid, WhatsappButtonPhone[playerid], 4);
    PlayerTextDrawSetProportional(playerid, WhatsappButtonPhone[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, WhatsappButtonPhone[playerid], 1);

    CallButtonPhone[playerid] = CreatePlayerTextDraw(playerid, 577.000, 350.000, "LD_CHAT:badchat");
    PlayerTextDrawTextSize(playerid, CallButtonPhone[playerid], 13.000, 13.000);
    PlayerTextDrawAlignment(playerid, CallButtonPhone[playerid], 1);
    PlayerTextDrawColor(playerid, CallButtonPhone[playerid], -1);
    PlayerTextDrawSetShadow(playerid, CallButtonPhone[playerid], 0);
    PlayerTextDrawSetOutline(playerid, CallButtonPhone[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, CallButtonPhone[playerid], 255);
    PlayerTextDrawFont(playerid, CallButtonPhone[playerid], 4);
    PlayerTextDrawSetProportional(playerid, CallButtonPhone[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, CallButtonPhone[playerid], 1);
}

ATRPhoneUnload(playerid)
{
    for(new i; i < 29; i++) PlayerTextDrawDestroy(playerid, ATRP_Phone[playerid][i]);
    PlayerTextDrawDestroy(playerid, CloseButtonPhone[playerid]);
    PlayerTextDrawDestroy(playerid, ContactButtonPhone[playerid]);
    PlayerTextDrawDestroy(playerid, GpsButtonPhone[playerid]);
    PlayerTextDrawDestroy(playerid, AirdropButtonPhone[playerid]);
    PlayerTextDrawDestroy(playerid, BankButtonPhone[playerid]);
    PlayerTextDrawDestroy(playerid, SettingButtonPhone[playerid]);
    PlayerTextDrawDestroy(playerid, TransButtonPhone[playerid]);
    PlayerTextDrawDestroy(playerid, YellowButtonPhone[playerid]);
    PlayerTextDrawDestroy(playerid, TwitterButtonPhone[playerid]);
    PlayerTextDrawDestroy(playerid, SpotifyButtonPhone[playerid]);
    PlayerTextDrawDestroy(playerid, VehicleButtonPhone[playerid]);
    PlayerTextDrawDestroy(playerid, WhatsappButtonPhone[playerid]);
    PlayerTextDrawDestroy(playerid, CallButtonPhone[playerid]);
    return 1;
}

ATRPhoneCallLoad(playerid)
{
    ATRP_CallTD[playerid][0] = CreatePlayerTextDraw(playerid, 480.000, 148.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][0], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][0], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][0], 1);

    ATRP_CallTD[playerid][1] = CreatePlayerTextDraw(playerid, 487.000, 170.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][1], 115.000, 235.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][1], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][1], 1);

    ATRP_CallTD[playerid][2] = CreatePlayerTextDraw(playerid, 567.000, 148.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][2], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][2], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][2], 1);

    ATRP_CallTD[playerid][3] = CreatePlayerTextDraw(playerid, 480.000, 385.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][3], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][3], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][3], 1);

    ATRP_CallTD[playerid][4] = CreatePlayerTextDraw(playerid, 567.000, 385.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][4], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][4], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][4], 1);

    ATRP_CallTD[playerid][5] = CreatePlayerTextDraw(playerid, 503.000, 155.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][5], 84.000, 265.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][5], 1);

    ATRP_CallTD[playerid][6] = CreatePlayerTextDraw(playerid, 484.000, 152.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][6], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][6], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][6], 1);

    ATRP_CallTD[playerid][7] = CreatePlayerTextDraw(playerid, 491.000, 170.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][7], 107.000, 229.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][7], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][7], 1);

    ATRP_CallTD[playerid][8] = CreatePlayerTextDraw(playerid, 563.000, 152.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][8], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][8], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][8], 1);

    ATRP_CallTD[playerid][9] = CreatePlayerTextDraw(playerid, 563.000, 381.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][9], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][9], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][9], 1);

    ATRP_CallTD[playerid][10] = CreatePlayerTextDraw(playerid, 484.000, 381.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][10], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][10], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][10], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][10], 1);

    ATRP_CallTD[playerid][11] = CreatePlayerTextDraw(playerid, 504.000, 159.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][11], 79.000, 256.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][11], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][11], 1);

    ATRP_CallTD[playerid][12] = CreatePlayerTextDraw(playerid, 528.000, 166.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][12], 15.000, 16.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][12], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][12], 1);

    ATRP_CallTD[playerid][13] = CreatePlayerTextDraw(playerid, 537.000, 169.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][13], 17.000, 10.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][13], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][13], 1);

    ATRP_CallTD[playerid][14] = CreatePlayerTextDraw(playerid, 547.000, 166.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_CallTD[playerid][14], 15.000, 16.000);
    PlayerTextDrawAlignment(playerid, ATRP_CallTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, ATRP_CallTD[playerid][14], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_CallTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_CallTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_CallTD[playerid][14], 255);
    PlayerTextDrawFont(playerid, ATRP_CallTD[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_CallTD[playerid][14], 1);

    CloseCallButton[playerid] = CreatePlayerTextDraw(playerid, 528.000, 401.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, CloseCallButton[playerid], 36.000, 8.000);
    PlayerTextDrawAlignment(playerid, CloseCallButton[playerid], 1);
    PlayerTextDrawColor(playerid, CloseCallButton[playerid], -1);
    PlayerTextDrawSetShadow(playerid, CloseCallButton[playerid], 0);
    PlayerTextDrawSetOutline(playerid, CloseCallButton[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, CloseCallButton[playerid], 255);
    PlayerTextDrawFont(playerid, CloseCallButton[playerid], 4);
    PlayerTextDrawSetProportional(playerid, CloseCallButton[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, CloseCallButton[playerid], 1);

    ContactNameTD[playerid] = CreatePlayerTextDraw(playerid, 545.000, 203.000, "Cecep_Sugeni");
    PlayerTextDrawLetterSize(playerid, ContactNameTD[playerid], 0.250, 1.500);
    PlayerTextDrawAlignment(playerid, ContactNameTD[playerid], 2);
    PlayerTextDrawColor(playerid, ContactNameTD[playerid], -1);
    PlayerTextDrawSetShadow(playerid, ContactNameTD[playerid], 0);
    PlayerTextDrawSetOutline(playerid, ContactNameTD[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, ContactNameTD[playerid], 150);
    PlayerTextDrawFont(playerid, ContactNameTD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, ContactNameTD[playerid], 1);

    StatusDialingTD[playerid] = CreatePlayerTextDraw(playerid, 546.000, 222.000, "Panggilan masuk...");
    PlayerTextDrawLetterSize(playerid, StatusDialingTD[playerid], 0.250, 1.500);
    PlayerTextDrawAlignment(playerid, StatusDialingTD[playerid], 2);
    PlayerTextDrawColor(playerid, StatusDialingTD[playerid], -1);
    PlayerTextDrawSetShadow(playerid, StatusDialingTD[playerid], 0);
    PlayerTextDrawSetOutline(playerid, StatusDialingTD[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, StatusDialingTD[playerid], 150);
    PlayerTextDrawFont(playerid, StatusDialingTD[playerid], 1);
    PlayerTextDrawSetProportional(playerid, StatusDialingTD[playerid], 1);

    RedButtonoutComingCall[playerid] = CreatePlayerTextDraw(playerid, 527.000, 304.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, RedButtonoutComingCall[playerid], 38.000, 39.000);
    PlayerTextDrawAlignment(playerid, RedButtonoutComingCall[playerid], 1);
    PlayerTextDrawColor(playerid, RedButtonoutComingCall[playerid], -16776961);
    PlayerTextDrawSetShadow(playerid, RedButtonoutComingCall[playerid], 0);
    PlayerTextDrawSetOutline(playerid, RedButtonoutComingCall[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, RedButtonoutComingCall[playerid], 255);
    PlayerTextDrawFont(playerid, RedButtonoutComingCall[playerid], 4);
    PlayerTextDrawSetProportional(playerid, RedButtonoutComingCall[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, RedButtonoutComingCall[playerid], 1);
    
    RedButtonincomingCall[playerid] = CreatePlayerTextDraw(playerid, 501.000, 304.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, RedButtonincomingCall[playerid], 38.000, 39.000);
    PlayerTextDrawAlignment(playerid, RedButtonincomingCall[playerid], 1);
    PlayerTextDrawColor(playerid, RedButtonincomingCall[playerid], -16776961);
    PlayerTextDrawSetShadow(playerid, RedButtonincomingCall[playerid], 0);
    PlayerTextDrawSetOutline(playerid, RedButtonincomingCall[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, RedButtonincomingCall[playerid], 255);
    PlayerTextDrawFont(playerid, RedButtonincomingCall[playerid], 4);
    PlayerTextDrawSetProportional(playerid, RedButtonincomingCall[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, RedButtonincomingCall[playerid], 1);

    GreenButtonincomingCall[playerid] = CreatePlayerTextDraw(playerid, 551.000, 304.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, GreenButtonincomingCall[playerid], 38.000, 39.000);
    PlayerTextDrawAlignment(playerid, GreenButtonincomingCall[playerid], 1);
    PlayerTextDrawColor(playerid, GreenButtonincomingCall[playerid], 16744447);
    PlayerTextDrawSetShadow(playerid, GreenButtonincomingCall[playerid], 0);
    PlayerTextDrawSetOutline(playerid, GreenButtonincomingCall[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, GreenButtonincomingCall[playerid], 255);
    PlayerTextDrawFont(playerid, GreenButtonincomingCall[playerid], 4);
    PlayerTextDrawSetProportional(playerid, GreenButtonincomingCall[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, GreenButtonincomingCall[playerid], 1);
    return 1;
}

ATRPhoneCallUnload(playerid)
{
    for(new i; i < 15; i++) PlayerTextDrawDestroy(playerid, ATRP_CallTD[playerid][i]);
    PlayerTextDrawDestroy(playerid, CloseCallButton[playerid]);
    PlayerTextDrawDestroy(playerid, ContactNameTD[playerid]);
    PlayerTextDrawDestroy(playerid, StatusDialingTD[playerid]);
    PlayerTextDrawDestroy(playerid, RedButtonoutComingCall[playerid]);
    PlayerTextDrawDestroy(playerid, RedButtonincomingCall[playerid]);
    PlayerTextDrawDestroy(playerid, GreenButtonincomingCall[playerid]);
    return 1;
}

ATRPhoneBankLoad(playerid)
{
    ATRP_BankTD[playerid][0] = CreatePlayerTextDraw(playerid, 480.000, 148.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][0], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][0], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][0], 1);

    ATRP_BankTD[playerid][1] = CreatePlayerTextDraw(playerid, 487.000, 170.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][1], 115.000, 235.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][1], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][1], 1);

    ATRP_BankTD[playerid][2] = CreatePlayerTextDraw(playerid, 567.000, 148.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][2], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][2], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][2], 1);

    ATRP_BankTD[playerid][3] = CreatePlayerTextDraw(playerid, 480.000, 385.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][3], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][3], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][3], 1);

    ATRP_BankTD[playerid][4] = CreatePlayerTextDraw(playerid, 567.000, 385.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][4], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][4], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][4], 1);

    ATRP_BankTD[playerid][5] = CreatePlayerTextDraw(playerid, 503.000, 155.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][5], 84.000, 265.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][5], 1);

    ATRP_BankTD[playerid][6] = CreatePlayerTextDraw(playerid, 484.000, 152.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][6], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][6], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][6], 1);

    ATRP_BankTD[playerid][7] = CreatePlayerTextDraw(playerid, 491.000, 170.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][7], 107.000, 229.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][7], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][7], 1);

    ATRP_BankTD[playerid][8] = CreatePlayerTextDraw(playerid, 563.000, 152.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][8], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][8], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][8], 1);

    ATRP_BankTD[playerid][9] = CreatePlayerTextDraw(playerid, 563.000, 381.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][9], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][9], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][9], 1);

    ATRP_BankTD[playerid][10] = CreatePlayerTextDraw(playerid, 484.000, 381.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][10], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][10], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][10], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][10], 1);

    ATRP_BankTD[playerid][11] = CreatePlayerTextDraw(playerid, 504.000, 159.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][11], 79.000, 256.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][11], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][11], 1);

    ATRP_BankTD[playerid][12] = CreatePlayerTextDraw(playerid, 528.000, 166.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][12], 15.000, 16.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][12], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][12], 1);

    ATRP_BankTD[playerid][13] = CreatePlayerTextDraw(playerid, 537.000, 169.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][13], 17.000, 10.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][13], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][13], 1);

    ATRP_BankTD[playerid][14] = CreatePlayerTextDraw(playerid, 547.000, 166.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][14], 15.000, 16.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][14], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][14], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][14], 1);

    ATRP_BankTD[playerid][15] = CreatePlayerTextDraw(playerid, 544.000, 198.000, "Imajinasi BANK");
    PlayerTextDrawLetterSize(playerid, ATRP_BankTD[playerid][15], 0.210, 1.099);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][15], 2);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][15], 150);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][15], 1);

    ATRP_BankTD[playerid][16] = CreatePlayerTextDraw(playerid, 500.000, 211.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][16], 90.000, 4.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][16], 943210495);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][16], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][16], 1);

    ATRP_BankTD[playerid][17] = CreatePlayerTextDraw(playerid, 561.000, 228.000, "No. Rek");
    PlayerTextDrawLetterSize(playerid, ATRP_BankTD[playerid][17], 0.210, 1.099);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][17], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][17], 150);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][17], 1);

    ATRP_BankTD[playerid][18] = CreatePlayerTextDraw(playerid, 500.000, 242.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][18], 90.000, 18.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][18], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][18], 943210495);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][18], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][18], 1);

    ATRP_BankTD[playerid][19] = CreatePlayerTextDraw(playerid, 571.000, 267.000, "Saldo");
    PlayerTextDrawLetterSize(playerid, ATRP_BankTD[playerid][19], 0.210, 1.099);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][19], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][19], 150);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][19], 1);

    ATRP_BankTD[playerid][20] = CreatePlayerTextDraw(playerid, 500.000, 280.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][20], 90.000, 18.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][20], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][20], 943210495);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][20], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][20], 1);

    ATRP_BankTD[playerid][21] = CreatePlayerTextDraw(playerid, 517.000, 314.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][21], 57.000, 18.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][21], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][21], 1018393087);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][21], 255);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][21], 1);

    ATRP_BankTD[playerid][22] = CreatePlayerTextDraw(playerid, 504.000, 246.000, "377081");
    PlayerTextDrawLetterSize(playerid, ATRP_BankTD[playerid][22], 0.210, 1.099);
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][22], 16.000, 46.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][22], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][22], 150);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][22], 1);

    ATRP_BankTD[playerid][23] = CreatePlayerTextDraw(playerid, 504.000, 284.000, "$212,252");
    PlayerTextDrawLetterSize(playerid, ATRP_BankTD[playerid][23], 0.210, 1.099);
    PlayerTextDrawTextSize(playerid, ATRP_BankTD[playerid][23], 16.000, 46.000);
    PlayerTextDrawAlignment(playerid, ATRP_BankTD[playerid][23], 1);
    PlayerTextDrawColor(playerid, ATRP_BankTD[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_BankTD[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_BankTD[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_BankTD[playerid][23], 150);
    PlayerTextDrawFont(playerid, ATRP_BankTD[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_BankTD[playerid][23], 1);

    CloseBankButton[playerid] = CreatePlayerTextDraw(playerid, 528.000, 401.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, CloseBankButton[playerid], 36.000, 8.000);
    PlayerTextDrawAlignment(playerid, CloseBankButton[playerid], 1);
    PlayerTextDrawColor(playerid, CloseBankButton[playerid], -1);
    PlayerTextDrawSetShadow(playerid, CloseBankButton[playerid], 0);
    PlayerTextDrawSetOutline(playerid, CloseBankButton[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, CloseBankButton[playerid], 255);
    PlayerTextDrawFont(playerid, CloseBankButton[playerid], 4);
    PlayerTextDrawSetProportional(playerid, CloseBankButton[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, CloseBankButton[playerid], 1);

    TransferBankButton[playerid] = CreatePlayerTextDraw(playerid, 546.000, 318.000, "TRANSFER");
    PlayerTextDrawLetterSize(playerid, TransferBankButton[playerid], 0.210, 1.099);
    PlayerTextDrawTextSize(playerid, TransferBankButton[playerid], 16.000, 46.000);
    PlayerTextDrawAlignment(playerid, TransferBankButton[playerid], 2);
    PlayerTextDrawColor(playerid, TransferBankButton[playerid], -1);
    PlayerTextDrawSetShadow(playerid, TransferBankButton[playerid], 0);
    PlayerTextDrawSetOutline(playerid, TransferBankButton[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, TransferBankButton[playerid], 150);
    PlayerTextDrawFont(playerid, TransferBankButton[playerid], 1);
    PlayerTextDrawSetProportional(playerid, TransferBankButton[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, TransferBankButton[playerid], 1);
    return 1;
}

ATRPhoneBankUnload(playerid)
{
    for(new i; i < 24; i++) PlayerTextDrawDestroy(playerid, ATRP_BankTD[playerid][i]);
    PlayerTextDrawDestroy(playerid, CloseBankButton[playerid]);
    PlayerTextDrawDestroy(playerid, TransferBankButton[playerid]);
    return 1;
}

ATRPhoneSpotifyLoad(playerid)
{
    ATRP_SpotifyTD[playerid][0] = CreatePlayerTextDraw(playerid, 480.000, 148.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][0], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][0], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][0], 1);

    ATRP_SpotifyTD[playerid][1] = CreatePlayerTextDraw(playerid, 487.000, 170.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][1], 115.000, 235.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][1], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][1], 1);

    ATRP_SpotifyTD[playerid][2] = CreatePlayerTextDraw(playerid, 567.000, 148.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][2], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][2], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][2], 1);

    ATRP_SpotifyTD[playerid][3] = CreatePlayerTextDraw(playerid, 480.000, 385.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][3], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][3], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][3], 1);

    ATRP_SpotifyTD[playerid][4] = CreatePlayerTextDraw(playerid, 567.000, 385.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][4], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][4], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][4], 1);

    ATRP_SpotifyTD[playerid][5] = CreatePlayerTextDraw(playerid, 503.000, 155.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][5], 84.000, 265.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][5], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][5], 1);

    ATRP_SpotifyTD[playerid][6] = CreatePlayerTextDraw(playerid, 484.000, 152.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][6], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][6], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][6], 1);

    ATRP_SpotifyTD[playerid][7] = CreatePlayerTextDraw(playerid, 491.000, 170.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][7], 107.000, 229.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][7], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][7], 1);

    ATRP_SpotifyTD[playerid][8] = CreatePlayerTextDraw(playerid, 563.000, 152.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][8], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][8], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][8], 1);

    ATRP_SpotifyTD[playerid][9] = CreatePlayerTextDraw(playerid, 563.000, 381.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][9], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][9], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][9], 1);

    ATRP_SpotifyTD[playerid][10] = CreatePlayerTextDraw(playerid, 484.000, 381.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][10], 42.000, 42.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][10], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][10], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][10], 1);

    ATRP_SpotifyTD[playerid][11] = CreatePlayerTextDraw(playerid, 504.000, 159.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][11], 79.000, 256.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][11], 505753343);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][11], 1);

    ATRP_SpotifyTD[playerid][12] = CreatePlayerTextDraw(playerid, 528.000, 166.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][12], 15.000, 16.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][12], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][12], 1);

    ATRP_SpotifyTD[playerid][13] = CreatePlayerTextDraw(playerid, 537.000, 169.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][13], 17.000, 10.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][13], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][13], 1);

    ATRP_SpotifyTD[playerid][14] = CreatePlayerTextDraw(playerid, 547.000, 166.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][14], 15.000, 16.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][14], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][14], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][14], 1);

    ATRP_SpotifyTD[playerid][15] = CreatePlayerTextDraw(playerid, 491.000, 203.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][15], 107.000, 20.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][15], 943210495);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][15], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][15], 1);

    ATRP_SpotifyTD[playerid][16] = CreatePlayerTextDraw(playerid, 491.000, 227.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][16], 107.000, 20.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][16], 943210495);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][16], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][16], 1);

    ATRP_SpotifyTD[playerid][17] = CreatePlayerTextDraw(playerid, 545.000, 207.000, "Putar Di Earphone");
    PlayerTextDrawLetterSize(playerid, ATRP_SpotifyTD[playerid][17], 0.210, 1.299);
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][17], 12.000, 79.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][17], 2);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][17], 150);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][17], 1);
    PlayerTextDrawSetSelectable(playerid, ATRP_SpotifyTD[playerid][17], 1);

    ATRP_SpotifyTD[playerid][18] = CreatePlayerTextDraw(playerid, 545.000, 230.000, "Putar Di Boombox");
    PlayerTextDrawLetterSize(playerid, ATRP_SpotifyTD[playerid][18], 0.210, 1.299);
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][18], 12.000, 79.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][18], 2);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][18], 150);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][18], 1);
    PlayerTextDrawSetSelectable(playerid, ATRP_SpotifyTD[playerid][18], 1);

    ATRP_SpotifyTD[playerid][19] = CreatePlayerTextDraw(playerid, 532.000, 255.000, "Hai, bagaimana kabarmu?");
    PlayerTextDrawLetterSize(playerid, ATRP_SpotifyTD[playerid][19], 0.150, 1.099);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][19], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][19], 150);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][19], 1);

    ATRP_SpotifyTD[playerid][20] = CreatePlayerTextDraw(playerid, 498.000, 290.000, "Lagu Favoritmu                      :");
    PlayerTextDrawLetterSize(playerid, ATRP_SpotifyTD[playerid][20], 0.150, 1.099);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][20], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][20], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][20], 150);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][20], 1);

    ATRP_SpotifyTD[playerid][21] = CreatePlayerTextDraw(playerid, 494.000, 304.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][21], 101.000, 37.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][21], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][21], 943210495);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][21], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][21], 1);

    ATRP_SpotifyTD[playerid][22] = CreatePlayerTextDraw(playerid, 496.000, 307.000, "LD_BUM:bum2");
    PlayerTextDrawTextSize(playerid, ATRP_SpotifyTD[playerid][22], 31.000, 32.000);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][22], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][22], 255);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][22], 1);

    ATRP_SpotifyTD[playerid][23] = CreatePlayerTextDraw(playerid, 529.000, 305.000, "Album");
    PlayerTextDrawLetterSize(playerid, ATRP_SpotifyTD[playerid][23], 0.150, 1.099);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][23], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][23], 150);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][23], 1);

    ATRP_SpotifyTD[playerid][24] = CreatePlayerTextDraw(playerid, 529.000, 316.000, "Seventeen - Yang telah merelakanmu");
    PlayerTextDrawLetterSize(playerid, ATRP_SpotifyTD[playerid][24], 0.100, 0.899);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][24], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][24], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][24], 150);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][24], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][24], 1);

    ATRP_SpotifyTD[playerid][25] = CreatePlayerTextDraw(playerid, 529.000, 325.000, "Dengarkan album~n~Seventeen");
    PlayerTextDrawLetterSize(playerid, ATRP_SpotifyTD[playerid][25], 0.119, 0.799);
    PlayerTextDrawAlignment(playerid, ATRP_SpotifyTD[playerid][25], 1);
    PlayerTextDrawColor(playerid, ATRP_SpotifyTD[playerid][25], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_SpotifyTD[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_SpotifyTD[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_SpotifyTD[playerid][25], 150);
    PlayerTextDrawFont(playerid, ATRP_SpotifyTD[playerid][25], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_SpotifyTD[playerid][25], 1);

    CloseSpotifyButton[playerid] = CreatePlayerTextDraw(playerid, 528.000, 401.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, CloseSpotifyButton[playerid], 36.000, 8.000);
    PlayerTextDrawAlignment(playerid, CloseSpotifyButton[playerid], 1);
    PlayerTextDrawColor(playerid, CloseSpotifyButton[playerid], -1);
    PlayerTextDrawSetShadow(playerid, CloseSpotifyButton[playerid], 0);
    PlayerTextDrawSetOutline(playerid, CloseSpotifyButton[playerid], 0);
    PlayerTextDrawBackgroundColor(playerid, CloseSpotifyButton[playerid], 255);
    PlayerTextDrawFont(playerid, CloseSpotifyButton[playerid], 4);
    PlayerTextDrawSetProportional(playerid, CloseSpotifyButton[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, CloseSpotifyButton[playerid], 1);
    return 1;
}

ATRPhoneSpotifyUnload(playerid)
{
    for(new i; i < 26; i++) PlayerTextDrawDestroy(playerid, ATRP_SpotifyTD[playerid][i]);
    PlayerTextDrawDestroy(playerid, CloseSpotifyButton[playerid]);
    return 1;
}

hook OnPlayerConnect(playerid)
{
    if (IsValidDynamicMapIcon(SharelocSender[playerid]))
    {
        DestroyDynamicMapIcon(SharelocSender[playerid]);
        SharelocSender[playerid] = INVALID_STREAMER_ID;
    }

    ATRPhoneLoad(playerid);
    ATRPhoneCallLoad(playerid);
    ATRPhoneBankLoad(playerid);
    ATRPhoneSpotifyLoad(playerid);
    ATRPhoneTwitterHomepageLoad(playerid);
    ATRPhoneTwitterHomeLoad(playerid);
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    if (IsValidDynamicMapIcon(SharelocSender[playerid]))
    {
        DestroyDynamicMapIcon(SharelocSender[playerid]);
        SharelocSender[playerid] = INVALID_STREAMER_ID;
        SharelocTimer[playerid] = 0;
    }

    ATRPhoneUnload(playerid);
    ATRPhoneCallUnload(playerid);
    ATRPhoneBankUnload(playerid);
    ATRPhoneSpotifyUnload(playerid);
    ATRPhoneTwitterHomepageUnload(playerid);
    ATRPhoneTwitterHomeUnload(playerid);
    return 1;
}

Toggle_PhoneTD(playerid, bool:toggle)
{
    if(!toggle)
    {
        for(new i; i < 29; i++) PlayerTextDrawHide(playerid, ATRP_Phone[playerid][i]);
        PlayerTextDrawHide(playerid, CloseButtonPhone[playerid]);
        PlayerTextDrawHide(playerid, ContactButtonPhone[playerid]);
        PlayerTextDrawHide(playerid, GpsButtonPhone[playerid]);
        PlayerTextDrawHide(playerid, AirdropButtonPhone[playerid]);
        PlayerTextDrawHide(playerid, BankButtonPhone[playerid]);
        PlayerTextDrawHide(playerid, SettingButtonPhone[playerid]);
        PlayerTextDrawHide(playerid, TransButtonPhone[playerid]);
        PlayerTextDrawHide(playerid, YellowButtonPhone[playerid]);
        PlayerTextDrawHide(playerid, TwitterButtonPhone[playerid]);
        PlayerTextDrawHide(playerid, SpotifyButtonPhone[playerid]);
        PlayerTextDrawHide(playerid, VehicleButtonPhone[playerid]);
        PlayerTextDrawHide(playerid, WhatsappButtonPhone[playerid]);
        PlayerTextDrawHide(playerid, CallButtonPhone[playerid]);
    }
    else
    {
        for(new i; i < 29; i++) PlayerTextDrawShow(playerid, ATRP_Phone[playerid][i]);
        PlayerTextDrawShow(playerid, CloseButtonPhone[playerid]);
        PlayerTextDrawShow(playerid, ContactButtonPhone[playerid]);
        PlayerTextDrawShow(playerid, GpsButtonPhone[playerid]);
        PlayerTextDrawShow(playerid, AirdropButtonPhone[playerid]);
        PlayerTextDrawShow(playerid, BankButtonPhone[playerid]);
        PlayerTextDrawShow(playerid, SettingButtonPhone[playerid]);
        PlayerTextDrawShow(playerid, TransButtonPhone[playerid]);
        PlayerTextDrawShow(playerid, YellowButtonPhone[playerid]);
        PlayerTextDrawShow(playerid, TwitterButtonPhone[playerid]);
        PlayerTextDrawShow(playerid, SpotifyButtonPhone[playerid]);
        PlayerTextDrawShow(playerid, VehicleButtonPhone[playerid]);
        PlayerTextDrawShow(playerid, WhatsappButtonPhone[playerid]);
        PlayerTextDrawShow(playerid, CallButtonPhone[playerid]);
    }
    return 1;
}

Toggle_CallTD(playerid, bool:toggle)
{
    if(!toggle)
    {
        for(new i; i < 15; i++) PlayerTextDrawHide(playerid, ATRP_CallTD[playerid][i]);
        PlayerTextDrawHide(playerid, CloseCallButton[playerid]);
        PlayerTextDrawHide(playerid, ContactNameTD[playerid]);
        PlayerTextDrawHide(playerid, StatusDialingTD[playerid]);
    }
    else
    {
        for(new i; i < 15; i++) PlayerTextDrawShow(playerid, ATRP_CallTD[playerid][i]);
        PlayerTextDrawShow(playerid, CloseCallButton[playerid]);
        PlayerTextDrawShow(playerid, ContactNameTD[playerid]);
        PlayerTextDrawShow(playerid, StatusDialingTD[playerid]);
    }
    return 1;
}

Toggle_BankTD(playerid, bool:toggle)
{
    if(!toggle)
    {
        for(new i; i < 24; i++) PlayerTextDrawHide(playerid, ATRP_BankTD[playerid][i]);
        PlayerTextDrawHide(playerid, CloseBankButton[playerid]);
        PlayerTextDrawHide(playerid, TransferBankButton[playerid]);
    }
    else
    {
        PlayerTextDrawSetString(playerid, ATRP_BankTD[playerid][22], sprintf("%d", AccountData[playerid][pBankRek]));
        PlayerTextDrawSetString(playerid, ATRP_BankTD[playerid][23], sprintf("%s", FormatMoney(AccountData[playerid][pBankMoney])));
        for(new i; i < 24; i++) PlayerTextDrawShow(playerid, ATRP_BankTD[playerid][i]);
        PlayerTextDrawShow(playerid, CloseBankButton[playerid]);
        PlayerTextDrawShow(playerid, TransferBankButton[playerid]);
    }
    return 1;
}

Toggle_SpotifyTD(playerid, bool:toggle)
{
    if(!toggle)
    {
        for(new i; i < 26; i++) PlayerTextDrawHide(playerid, ATRP_SpotifyTD[playerid][i]);
        PlayerTextDrawHide(playerid, CloseSpotifyButton[playerid]);
    }
    else
    {
        for(new i; i < 26; i++) PlayerTextDrawShow(playerid, ATRP_SpotifyTD[playerid][i]);
        PlayerTextDrawShow(playerid, CloseSpotifyButton[playerid]);
    }
    return 1;
}

Toggle_TwitterHome(playerid, bool:toggle)
{
    if(!toggle)
    {
        for(new i; i < 20; i++) PlayerTextDrawHide(playerid, ATRP_TwitterHomeTD[playerid][i]);
        PlayerTextDrawHide(playerid, CloseTwitterHome[playerid]);
    }
    else
    {
        for(new i; i < 20; i++) PlayerTextDrawShow(playerid, ATRP_TwitterHomeTD[playerid][i]);
        PlayerTextDrawShow(playerid, CloseTwitterHome[playerid]);
    }
    return 1;
}

Toggle_TwitterHomepage(playerid, bool:toggle)
{
    if(!toggle)
    {
        for(new i; i < 20; i++) PlayerTextDrawHide(playerid, ATRP_TwitterHomepageTD[playerid][i]);
        PlayerTextDrawHide(playerid, CloseTwitterHomePage[playerid]);
    }
    else
    {
        PlayerTextDrawSetString(playerid, ATRP_TwitterHomepageTD[playerid][15], sprintf("Hai, %s bagaimana~n~hari harimu?", AccountData[playerid][TwitterName]));
        for(new i; i < 20; i++) PlayerTextDrawShow(playerid, ATRP_TwitterHomepageTD[playerid][i]);
        PlayerTextDrawShow(playerid, CloseTwitterHomePage[playerid]);
    }
    return 1;
}

HideAllSmartphone(playerid)
{
    Toggle_PhoneTD(playerid, false);
    Toggle_BankTD(playerid, false);
    Toggle_SpotifyTD(playerid, false);
    Toggle_TwitterHome(playerid, false);
    Toggle_TwitterHomepage(playerid, false);
    return 1;
}

ShowingSmartphone(playerid)
{
    if (IsPlayerInWater(playerid))
    {
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak dapat membuka Smartphone di dalam air!");
    }

    if(!PlayerHasItem(playerid, "Smartphone"))
    {
        CancelSelectTextDraw(playerid);
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki Smartphone!");
    }
    
    if(AccountData[playerid][pInjured])   
    {
        CancelSelectTextDraw(playerid);
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak bisa melakukannya saat ini!");
    }

    if(!AccountData[playerid][phoneShown])
    {
        SendRPMeAboveHead(playerid, "Membuka HP Miliknya", X11_PLUM1);
        if(AccountData[playerid][phoneDurringConversation] && AccountData[playerid][phoneCallingWithPlayerID] != INVALID_PLAYER_ID)
        {
            new otherid = AccountData[playerid][phoneCallingWithPlayerID];
            PlayerTextDrawSetString(playerid, ContactNameTD[playerid], sprintf("%s", GetMySavedContactName(playerid, AccountData[otherid][pPhone])));
            Toggle_CallTD(playerid, true);
            PlayerTextDrawShow(playerid, RedButtonoutComingCall[playerid]);
            AccountData[playerid][phoneShown] = true;
            return 1;
        }

        if(!IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
        {
            ApplyAnimation(playerid, "ped", "Jetpack_Idle", 4.1, 0, 0, 0, 1, 0, 1);
            SetPlayerAttachedObject(playerid, 9, 18870, 5, 0.043000, 0.022999, -0.006000, -112.000022, -34.900020, -8.500002, 1.000000, 1.000000, 1.000000);    
        }
        Toggle_PhoneTD(playerid, true);
        AccountData[playerid][phoneShown] = true;
        SelectTextDraw(playerid, X11_PINK);
    }
    else 
    {
        AccountData[playerid][phoneShown] = false;
        Inventory_Close(playerid);
        CancelSelectTextDraw(playerid);
    }

    return 1;
}

CutCallingLine(playerid)
{
    new inlinewithplayerID = AccountData[playerid][phoneCallingWithPlayerID];
    AccountData[playerid][phoneIncomingCall] = false;
    AccountData[playerid][phoneDurringConversation] = false;
    AccountData[playerid][phoneCallingTime] = 0;
    
    if(IsPlayerConnected(inlinewithplayerID))
    {
        AccountData[inlinewithplayerID][phoneCallingWithPlayerID] = INVALID_PLAYER_ID;
        AccountData[inlinewithplayerID][phoneIncomingCall] = false;
        AccountData[inlinewithplayerID][phoneDurringConversation] = false;
        AccountData[inlinewithplayerID][phoneCallingTime] = 0;

        SendRPMeAboveHead(inlinewithplayerID, "Menutup HP miliknya.", X11_PLUM);

        if(!IsPlayerInAnyVehicle(inlinewithplayerID) && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
        {
            ClearAnimations(inlinewithplayerID, 1);
            StopLoopingAnim(inlinewithplayerID);
            ApplyAnimation(inlinewithplayerID, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
        }
        RemovePlayerAttachedObject(inlinewithplayerID, 9);
        HideAllSmartphone(inlinewithplayerID);
        Toggle_CallTD(inlinewithplayerID, false);
        PlayerTextDrawHide(inlinewithplayerID, GreenButtonincomingCall[inlinewithplayerID]);
        PlayerTextDrawHide(inlinewithplayerID, RedButtonincomingCall[inlinewithplayerID]);
        PlayerTextDrawHide(inlinewithplayerID, RedButtonoutComingCall[inlinewithplayerID]);
        if(AccountData[inlinewithplayerID][phoneShown]) 
        {
            AccountData[inlinewithplayerID][phoneShown] = false;
        }
        CallRemoteFunction("DisconnectPlayerCalling", "dd", playerid, inlinewithplayerID);
        Info(inlinewithplayerID, "Telepon terputus...");
    }
    return 1;
}

forward OnOutcomingCall(playerid, const targetnumber[]);
public OnOutcomingCall(playerid, const targetnumber[])
{
    HideAllSmartphone(playerid);

    new contnstr[25];
    format(contnstr, sizeof(contnstr), "%s", targetnumber);
    for(new cid; cid < MAX_CONTACTS; ++cid)
    {
        if(ContactData[playerid][cid][contactExists])
        {
            if(!strcmp(ContactData[playerid][cid][contactNumber], targetnumber, false))
            {
                format(contnstr, sizeof(contnstr), "%s", ContactData[playerid][cid][contactName]);
            }
        }
    }
    PlayerTextDrawSetString(playerid, ContactNameTD[playerid], contnstr);
    PlayerTextDrawSetString(playerid, StatusDialingTD[playerid], "Berdering...");

    new targetnumberownerid = GetNumberOwner(targetnumber);
    if(IsPlayerConnected(targetnumberownerid) && targetnumberownerid != INVALID_PLAYER_ID)
    {
        if(AccountData[targetnumberownerid][phoneAirplaneMode])
        {
            PlayerTextDrawSetString(playerid, StatusDialingTD[playerid], "Nomor tidak aktif...");
            AccountData[playerid][phoneIncomingCall] = true;
        }
        else if(AccountData[targetnumberownerid][phoneIncomingCall] || AccountData[targetnumberownerid][phoneDurringConversation])
        {
            PlayerTextDrawSetString(playerid, StatusDialingTD[playerid], "Panggilan sedang sibuk...");
            AccountData[playerid][phoneIncomingCall] = true;
        }
        else
        {
            AccountData[playerid][phoneCallingWithPlayerID] = targetnumberownerid;
            AccountData[playerid][phoneIncomingCall] = false;
            OnIncomingCall(targetnumberownerid, AccountData[playerid][pPhone]);
        }
    }
    ApplyAnimation(playerid, "ped", "phone_talk", 3.1, 0, 1, 0, 1, 1, 1);
    RemovePlayerAttachedObject(playerid, 9);
    SetPlayerAttachedObject(playerid, 9, 18870, 6,  0.099000, 0.009999, 0.000000,  78.200027, 179.000061, -1.500000,  1.000000, 1.000000, 1.000000); // 276
    Toggle_CallTD(playerid, true);
    PlayerTextDrawShow(playerid, RedButtonoutComingCall[playerid]);
    return 1;
}

forward OnIncomingCall(playerid, const fromnumber[]);
public OnIncomingCall(playerid, const fromnumber[])
{
    HideAllSmartphone(playerid);

    new contnstr[25];
    format(contnstr, sizeof(contnstr), "%s", fromnumber);
    for(new cid; cid < MAX_CONTACTS; ++cid)
    {
        if(ContactData[playerid][cid][contactExists])
        {
            if(!strcmp(ContactData[playerid][cid][contactNumber], fromnumber, false))
            {
                format(contnstr, sizeof(contnstr), "%s", ContactData[playerid][cid][contactName]);
            }
        }
    }
    if(!AccountData[playerid][phoneShown]) 
        AccountData[playerid][phoneShown] = true;

    PlayerTextDrawSetString(playerid, ContactNameTD[playerid], contnstr);
    PlayerTextDrawSetString(playerid, StatusDialingTD[playerid], "Panggilan masuk...");
    PlayAudioStreamForPlayer(playerid, AccountData[playerid][phoneCallRingtone], 0.0, 0.0, 0.0, 30.0, 0); // Memulai Nada Dering Sendiri

    for(new i; i < 15; i++) PlayerTextDrawShow(playerid, ATRP_CallTD[playerid][i]);
    PlayerTextDrawShow(playerid, CloseCallButton[playerid]);
    PlayerTextDrawShow(playerid, ContactNameTD[playerid]);
    PlayerTextDrawShow(playerid, StatusDialingTD[playerid]);
    PlayerTextDrawShow(playerid, RedButtonincomingCall[playerid]);
    PlayerTextDrawShow(playerid, GreenButtonincomingCall[playerid]);
    SelectTextDraw(playerid, 0xFF9999FF);
    return 1;
}

hook ClickDynPlayerTextdraw(playerid, PlayerText: playertextid)
{
    if(playertextid == CloseButtonPhone[playerid])
    {
        Toggle_PhoneTD(playerid, false);
        CancelSelectTextDraw(playerid);
        ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
        RemovePlayerAttachedObject(playerid, 9);
        AccountData[playerid][phoneShown] = false;
        SendRPMeAboveHead(playerid, "Menutup HP Miliknya.", X11_PLUM1);
    }

    if(playertextid == ContactButtonPhone[playerid])
    {
        ShowPlayerDialog(playerid, DialogOpenContact, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Kontak", "Tambahkan Kontak Baru\nLihat Daftar Kontak", "Pilih", "Batal");
    }

    if(playertextid == GpsButtonPhone[playerid])
    {
        //if(BusIndex[playerid] != 0) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang bekerja sebagai supir bus!");
        //if(DurringSweeping[playerid]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang bekerja sebagai pembersih jalan!");
        //if(PlayerKargoVars[playerid][KargoStarted]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang bekerja sebagai Supir Kargo!");

        if(AccountData[playerid][pFaction] == FACTION_EMS && AccountData[playerid][pDutyEms]) {
            Dialog_Show(playerid, GpsMenu, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Menu Gps",
            "Lokasi GPS\n"GRAY"Signal Emergency (EMS)", "Pilih", "Batal");
        } else {
            ShowPlayerDialog(playerid, LokasiGps, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Lokasi",
            "Lokasi Umum\
            \n"GRAY"Lokasi Pekerjaan\
            \nLokasi Hobi\
            \n"GRAY"Lokasi Pertokoan\
            \nATM Terdekat\
            \n"GRAY"Garasi Umum Terdekat\
            \nTong Sampah Terdekat\
            \n"GRAY"Warung Terdekat\
            \nPom Bensin Terdekat\
            \n"GRAY"Bengkel Modshop\
            \nRumah Saya\
            \n"GRAY"Workshop\
            \nGudang Kota\
            \n"RED"(Disable Checkpoint)\
            \n"RED"(Disable Shareloc)", "Pilih", "Batal");
        }
    }

    if(playertextid == AirdropButtonPhone[playerid])
    {
        new strings[255];
        format(strings, sizeof(strings), "Status: %s\
        \nShare Contacts", AccountData[playerid][AirdropPermission] ? ""LIGHTGREEN"Share Contact diizinkan" : ""RED"Share Contact tidak diizinkan");
        
        ShowPlayerDialog(playerid, DIALOG_AIRDROPDISPLAY, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Airdrop", strings, "Pilih", "Batal");
    }

    if(playertextid == SettingButtonPhone[playerid])
    {
        Dialog_Show(playerid, SettingPhone, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Pengaturan",
        "Tentang Ponsel\
        \n"GRAY"Ubah Nada Dering Telepon\
        \nHapus Nada Dering\
        \n"GRAY"%s Mode Pesawat", "Pilih", "Batal", AccountData[playerid][phoneAirplaneMode] ? "Matikan" : "Nyalakan");
    }

    if(playertextid == VehicleButtonPhone[playerid])
    {
        // ShowContactList(playerid);
        callcmd::myv(playerid, "");
    }

    if(playertextid == WhatsappButtonPhone[playerid])
    {
        ShowContactList(playerid);
    }

    if(playertextid == SpotifyButtonPhone[playerid])
    {
        Toggle_PhoneTD(playerid, false);
        Toggle_SpotifyTD(playerid, true);
    }

    if(playertextid == CloseSpotifyButton[playerid])
    {
        Toggle_SpotifyTD(playerid, false);
        Toggle_PhoneTD(playerid, true);
    }

    if(playertextid == YellowButtonPhone[playerid])
    {
        if(AccountData[playerid][phoneAirplaneMode]) 
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Smartphone sedang dalam Mode Pesawat!");

        ShowPlayerDialog(playerid, DIALOG_YELLOW_PAGE_MENU, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Yellow Pages",
        "Melihat antrian iklan\nKirim iklan baru", "Pilih", "Batal");
    }

    if(playertextid == CallButtonPhone[playerid])
    {
        ShowPlayerDialog(playerid, DialogTelepon, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Telepon", "Mohon masukan nomor telepon yang ingin anda hubungi:", "Telfon", "Batal");
    }

    if(playertextid == BankButtonPhone[playerid])
    {
        Toggle_PhoneTD(playerid, false);
        Toggle_BankTD(playerid, true);
    }

    if(playertextid == CloseCallButton[playerid])
    {
        Toggle_CallTD(playerid, false);
        PlayerTextDrawHide(playerid, RedButtonincomingCall[playerid]);
        PlayerTextDrawHide(playerid, GreenButtonincomingCall[playerid]);
        PlayerTextDrawHide(playerid, RedButtonoutComingCall[playerid]);
        CancelSelectTextDraw(playerid);
        AccountData[playerid][phoneShown] = false;
    }

    if(playertextid == TransButtonPhone[playerid])
    {
        if(AccountData[playerid][phoneAirplaneMode]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Smartphone anda sedang Mode Pesawat!");
        if(AccountData[playerid][pTaxiPlayer] != INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang menjadi penumpang di Trans!");
        
        ShowPlayerDialog(playerid, DIALOG_TRANSORDER, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Pesan Transportasi",
        "Hai, kamu ingin memesan Trans, mau kemana hari ini?", "Input", "Batal");
    }

    if(playertextid == CloseBankButton[playerid])
    {
        Toggle_BankTD(playerid, false);
        Toggle_PhoneTD(playerid, true);
    }

    if(playertextid == CloseTwitterHome[playerid])
    {
        Toggle_TwitterHome(playerid, false);
        Toggle_PhoneTD(playerid, true);
    }
    
    if(playertextid == CloseTwitterHomePage[playerid])
    {
        Toggle_TwitterHomepage(playerid, false);
        Toggle_PhoneTD(playerid, true);
    }

    if(playertextid == TwitterButtonPhone[playerid])
    {
        Toggle_PhoneTD(playerid, false);
        if(!AccountData[playerid][Twitter])
        {
            Toggle_TwitterHome(playerid, true);
        }
        else
        {
            Toggle_TwitterHomepage(playerid, true);
        }
    }

    if(playertextid == TransferBankButton[playerid])
    {
        ShowPlayerDialog(playerid, DialogTransfer, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Transfer", 
        "Mohon masukkan nomor rekening yang ingin anda transfer:", "Submit", "Batal");
    }

    if(playertextid == ATRP_SpotifyTD[playerid][17]) // Earphone
    {
        if(AccountData[playerid][pEarphone] != 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki Earphone!");
        
        ShowPlayerDialog(playerid, DialogSpotify, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Spotify", "Matikan Musik\nPutar Musik", "Select", "Cancel");
    }

    if(playertextid == ATRP_SpotifyTD[playerid][18]) // boomboox
    {
        if(!AccountData[playerid][pVip]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan pengguna VIP!");

        if(GetPVarType(playerid, "PlacedBB"))
		{
			if(IsPlayerInRangeOfPoint(playerid, 3.0, GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ")))
			{
				ShowPlayerDialog(playerid, DANN_BOOMBOX, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Boombox", "Matikan Boombox\nPutar Musik", "Select", "Cancel");
			}
			else
			{
	   			return ShowTDN(playerid, NOTIFICATION_ERROR, "~g~[!]~w~: Kamu tidak berada didekat boombox mu!");
			}
	    }
	    else
	    {
	    	ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu tidak menaruh boombox sebelumnya!");
		}  
    }

    if(playertextid == ATRP_TwitterHomeTD[playerid][19]) // Daftar
    {
        if(AccountData[playerid][phoneAirplaneMode]) 
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Smartphone sedang dalam Mode Pesawat!");

        ShowPlayerDialog(playerid, DIALOG_TWITTER_SIGN, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Daftar Twitter",
        "Hai, selamat datang di Twitter!\
        \nSilahkan masukkan username Twitter kamu, ini akan ditampilkan pada setiap post tweet yang kamu buat:\
        \nIngat: Username hanya dapat berupa huruf dan angka, tidak menggunakan simbol!\
        \nPanjang username 7 - 24 karakter!", "Set", "Batal");
    }

    if(playertextid == ATRP_TwitterHomeTD[playerid][17]) // Login Jika sudah punya akun twitter
    {
        if(AccountData[playerid][phoneAirplaneMode]) 
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Smartphone sedang dalam Mode Pesawat!");

        ShowPlayerDialog(playerid, DIALOG_TWITTER_LOGIN, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Login Twitter", 
        "Hai, selamat datang di Twitter!\
        \nSilahkan masukkan username Twitter kamu yang telah terdaftar:", "Input", "Batal");
    }

    if(playertextid == ATRP_TwitterHomepageTD[playerid][17]) // Tweet
    {
        if(AccountData[playerid][phoneAirplaneMode]) 
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Smartphone sedang dalam Mode Pesawat!");

        ShowPlayerTwitterPage(playerid);
        AccountData[playerid][CurrentlyReadTwitter] = true;
    }

    if(playertextid == ATRP_TwitterHomepageTD[playerid][19]) // Logout Twitter
    {
        Toggle_TwitterHomepage(playerid, false);
        Toggle_TwitterHome(playerid, true);
        AccountData[playerid][Twitter] = false;
    }

    if(playertextid == RedButtonincomingCall[playerid])
    {
        foreach(new i : Player) if(IsPlayerConnected(i) && AccountData[i][phoneCallingWithPlayerID] == playerid)
        {
            new phoneCallFromID = i;
            ApplyAnimation(phoneCallFromID, "ped", "phone_out", 4.0, 0, 0, 0, 0, 0, 1);
            RemovePlayerAttachedObject(phoneCallFromID, 9);
            
            ApplyAnimation(playerid, "ped", "phone_out", 4.0, 0, 0, 0, 0, 0, 1);
            RemovePlayerAttachedObject(playerid, 9);

            if(AccountData[playerid][phoneShown]) {
                AccountData[playerid][phoneShown] = false;
            }
            
            if(AccountData[phoneCallFromID][phoneShown]) {
                AccountData[phoneCallFromID][phoneShown] = false;
            }

            HideAllSmartphone(playerid), HideAllSmartphone(phoneCallFromID);
            Toggle_CallTD(playerid, false), Toggle_CallTD(phoneCallFromID, false);
            CancelSelectTextDraw(playerid), CancelSelectTextDraw(phoneCallFromID);
            PlayerTextDrawHide(playerid, RedButtonincomingCall[playerid]);
            PlayerTextDrawHide(playerid, GreenButtonincomingCall[playerid]);
            PlayerTextDrawHide(phoneCallFromID, RedButtonoutComingCall[playerid]);
            StopAudioStreamForPlayer(playerid);
            
            AccountData[playerid][phoneCallingTime] = 0;
            AccountData[playerid][phoneCallingWithPlayerID] = INVALID_PLAYER_ID;
            AccountData[playerid][phoneIncomingCall] = false;
            AccountData[playerid][phoneIncomingCall] = false;
            
            AccountData[phoneCallFromID][phoneCallingTime] = 0;
            AccountData[phoneCallFromID][phoneCallingWithPlayerID] = INVALID_PLAYER_ID;
            AccountData[phoneCallFromID][phoneIncomingCall] = false;
            AccountData[phoneCallFromID][phoneIncomingCall] = false;
        }
    }

    if(playertextid == GreenButtonincomingCall[playerid])
    {
        if(AccountData[playerid][phoneDurringConversation]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang dalam percakapan!");
        if(AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan tidak dapat mengangkat panggilan!");
        foreach(new i : Player) if (IsPlayerConnected(i) && AccountData[i][phoneCallingWithPlayerID] == playerid)
        {
            new callingWithPlayerID = i;
            AccountData[playerid][phoneDurringConversation] = true;
            AccountData[playerid][phoneIncomingCall] = false;
            AccountData[playerid][phoneCallingTime] = 0;
            AccountData[playerid][phoneCallingWithPlayerID] = callingWithPlayerID;

            AccountData[callingWithPlayerID][phoneDurringConversation] = true;
            AccountData[callingWithPlayerID][phoneIncomingCall] = false;
            AccountData[callingWithPlayerID][phoneCallingTime] = 0;
            AccountData[callingWithPlayerID][phoneCallingWithPlayerID] = playerid;

            ApplyAnimationEx(playerid, "ped", "phone_talk", 3.1, 0, 1, 0, 1, 1, 1);
            SetPlayerAttachedObject(playerid, 9, 18870, 6,  0.099000, 0.009999, 0.000000,  78.200027, 179.000061, -1.500000,  1.000000, 1.000000, 1.000000); // 276
            
            ApplyAnimationEx(callingWithPlayerID, "ped", "phone_talk", 3.1, 0, 1, 0, 1, 1, 1);
            SetPlayerAttachedObject(callingWithPlayerID, 9, 18870, 6,  0.099000, 0.009999, 0.000000,  78.200027, 179.000061, -1.500000,  1.000000, 1.000000, 1.000000); // 276
            
            static contnstr[25];
            format(contnstr, sizeof(contnstr), "%s", AccountData[callingWithPlayerID][pPhone]);
            for(new cid; cid < MAX_CONTACTS; ++cid)
            {
                if(ContactData[playerid][cid][contactExists])
                {
                    if(!strcmp(ContactData[playerid][cid][contactNumber], AccountData[callingWithPlayerID][pPhone], false))
                    {
                        format(contnstr, sizeof(contnstr), "%s", ContactData[playerid][cid][contactName]);
                    }
                }
            }
            PlayerTextDrawSetString(playerid, ContactNameTD[playerid], contnstr);
            StopAudioStreamForPlayer(playerid);

            HideAllSmartphone(playerid), HideAllSmartphone(callingWithPlayerID);
            PlayerTextDrawHide(playerid, GreenButtonincomingCall[playerid]);
            PlayerTextDrawHide(playerid, RedButtonincomingCall[playerid]);
            PlayerTextDrawShow(playerid, RedButtonoutComingCall[playerid]);
            Toggle_CallTD(playerid, true), Toggle_CallTD(callingWithPlayerID, true);
            CancelSelectTextDraw(playerid), CancelSelectTextDraw(callingWithPlayerID);
            CallRemoteFunction("ConnectPlayerCalling", "dd", playerid, callingWithPlayerID);
        }
    }

    if(playertextid == RedButtonoutComingCall[playerid])
    {
        new callDurringWithPlayerID = AccountData[playerid][phoneCallingWithPlayerID];
        if(!AccountData[playerid][phoneIncomingCall] && callDurringWithPlayerID != INVALID_PLAYER_ID)
        {
            if(!IsPlayerInAnyVehicle(playerid) && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
            {
                ClearAnimations(playerid, 1);
                ApplyAnimation(playerid, "ped", "phone_out", 4.0, 0, 0, 0, 0, 0, 1);
            }
            
            if(!IsPlayerInAnyVehicle(callDurringWithPlayerID) && GetPlayerState(callDurringWithPlayerID) == PLAYER_STATE_ONFOOT)
            {
                ClearAnimations(callDurringWithPlayerID, 1);
                ApplyAnimation(callDurringWithPlayerID, "ped", "phone_out", 4.0, 0, 0, 0, 0, 0, 1);
            }
            RemovePlayerAttachedObject(playerid, 9);
            RemovePlayerAttachedObject(callDurringWithPlayerID, 9);
            CallRemoteFunction("DisconnectPlayerCalling", "dd", playerid, callDurringWithPlayerID);

            if(AccountData[playerid][phoneShown]) {
                AccountData[playerid][phoneShown] = false;
            }
            
            if(AccountData[callDurringWithPlayerID][phoneShown]) {
                AccountData[callDurringWithPlayerID][phoneShown] = false;
            }

            HideAllSmartphone(playerid), HideAllSmartphone(callDurringWithPlayerID);
            Toggle_CallTD(playerid, false), Toggle_CallTD(callDurringWithPlayerID, false);
            PlayerTextDrawHide(playerid, RedButtonoutComingCall[playerid]), PlayerTextDrawHide(callDurringWithPlayerID, RedButtonoutComingCall[callDurringWithPlayerID]);
            PlayerTextDrawHide(callDurringWithPlayerID, RedButtonincomingCall[callDurringWithPlayerID]), PlayerTextDrawHide(callDurringWithPlayerID, GreenButtonincomingCall[callDurringWithPlayerID]);
            CancelSelectTextDraw(playerid), CancelSelectTextDraw(callDurringWithPlayerID);
            StopAudioStreamForPlayer(callDurringWithPlayerID);
            AccountData[playerid][phoneCallingWithPlayerID] = INVALID_PLAYER_ID;
            AccountData[playerid][phoneDurringConversation] = false;
            AccountData[playerid][phoneIncomingCall] = false;
            AccountData[playerid][phoneCallingTime] = 0;
            
            AccountData[callDurringWithPlayerID][phoneCallingWithPlayerID] = INVALID_PLAYER_ID;
            AccountData[callDurringWithPlayerID][phoneDurringConversation] = false;
            AccountData[callDurringWithPlayerID][phoneIncomingCall] = false;
            AccountData[callDurringWithPlayerID][phoneCallingTime] = 0;
            Info(playerid, "Telepon terputus...");
            Info(callDurringWithPlayerID, "Telepon terputus...");
        }
        else
        {
            ApplyAnimation(playerid, "CARRY", "crry_prtial", 4.0, 0, 0, 0, 0, 0, 1);
            RemovePlayerAttachedObject(playerid, 9);

            if(AccountData[playerid][phoneShown]) {
                AccountData[playerid][phoneShown] = false;
            }
            PlayerTextDrawHide(playerid, RedButtonoutComingCall[playerid]);
            HideAllSmartphone(playerid);
            Toggle_CallTD(playerid, false);
            CancelSelectTextDraw(playerid);
            AccountData[playerid][phoneCallingWithPlayerID] = INVALID_PLAYER_ID;
            AccountData[playerid][phoneDurringConversation] = false;
            AccountData[playerid][phoneIncomingCall] = false;
            AccountData[playerid][phoneCallingTime] = 0;
            Info(playerid, "Nomor tersebut berada di panggilan lain/tidak aktif...");
        }
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_TWITTER_LOGIN:
        {
            if(!response) return 1;
            if(isnull(inputtext)) return ShowPlayerDialog(playerid, DIALOG_TWITTER_LOGIN, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Login Twitter", 
            "Error: Tidak dapat diisi kosong!\nHai, selamat datang di Twitter!\nSilahkan masukkan username Twitter kamu yang telah terdaftar:", "Input", "Batal");

            if(strcmp(inputtext, AccountData[playerid][TwitterName])) return ShowTDN(playerid, NOTIFICATION_WARNING, sprintf("Akum Twitter %s tidak ditemukan!", inputtext));

            ShowPlayerDialog(playerid, DIALOG_TWITTER_LOGINPASSWORD, DIALOG_STYLE_PASSWORD, ""Imajinasi"Imajinasi Roleplay "WHITE"- Login Twitter", 
            sprintf("Hai, %s!\nSilahkan masukkan kata sandi akun Twitter kamu untuk masuk:", inputtext), "Input", "Batal");
        }
        case DIALOG_TWITTER_LOGINPASSWORD:
        {
            if(!response) return 1;
            if(isnull(inputtext)) return ShowPlayerDialog(playerid, DIALOG_TWITTER_LOGINPASSWORD, DIALOG_STYLE_PASSWORD, ""Imajinasi"Imajinasi Roleplay "WHITE"- Login Twitter", 
            sprintf("Error: Anda harus memasukkan kata sandi!\nHai, %s!\nSilahkan masukkan kata sandi akun Twitter kamu untuk masuk:", AccountData[playerid][TwitterName]), "Input", "Batal");

            if(strcmp(inputtext, AccountData[playerid][TwitterPassword])) return ShowPlayerDialog(playerid, DIALOG_TWITTER_LOGINPASSWORD, DIALOG_STYLE_PASSWORD, ""Imajinasi"Imajinasi Roleplay "WHITE"- Login Twitter", 
            sprintf("Error: Kata sandi yang anda masukkan salah!\nHai, %s!\nSilahkan masukkan kata sandi akun Twitter kamu untuk masuk:", AccountData[playerid][TwitterName]), "Input", "Batal");

            AccountData[playerid][Twitter] = true;
            Toggle_TwitterHome(playerid, false);
            Toggle_TwitterHomepage(playerid, true);
        }
        case DIALOG_TWITTER_SIGN:
        {
            if(!response) return 1;
            if(isnull(inputtext)) return ShowPlayerDialog(playerid, DIALOG_TWITTER_SIGN, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Daftar Twitter", "Error: Tidak dapat diisi kosong!\nHai, selamat datang di Twitter!\
            \nSilahkan masukkan username Twitter kamu, ini akan ditampilkan pada setiap post tweet yang kamu buat:\
            \nIngat: Username hanya dapat berupa huruf dan angka, tidak menggunakan simbol!\
            \nPanjang username 7 - 24 karakter!", "Set", "Batal");

            if(strlen(inputtext) < 7 || strlen(inputtext) > 24) return ShowPlayerDialog(playerid, DIALOG_TWITTER_SIGN, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Daftar Twitter", "Error: Nama tidak dapat kurang dari 7 huruf atau lebih dari 24!\nHai, selamat datang di Twitter!\
            \nSilahkan masukkan username Twitter kamu, ini akan ditampilkan pada setiap post tweet yang kamu buat:\
            \nIngat: Username hanya dapat berupa huruf dan angka, tidak menggunakan simbol!\
            \nPanjang username 7 - 24 karakter!", "Set", "Batal");

            format(AccountData[playerid][pTempText], 24, inputtext);
            ShowPlayerDialog(playerid, DIALOG_TWITTER_SIGNPASSWORD, DIALOG_STYLE_PASSWORD, ""Imajinasi"Imajinasi Roleplay "WHITE"- Daftar Twitter", 
            sprintf("Hai %s!\nSilahkan massukan kata sandi untuk akun Twitter kamu:\nIngat: Panjang kata sandi 7 - 32 Karakter!\nTahap ini tidak dapat dibatalkan!", inputtext), "Set", "");
        }
        case DIALOG_TWITTER_SIGNPASSWORD:
        {
            if(!response) return 1;
            if(isnull(inputtext)) return ShowPlayerDialog(playerid, DIALOG_TWITTER_SIGNPASSWORD, DIALOG_STYLE_PASSWORD, ""Imajinasi"Imajinasi Roleplay "WHITE"- Daftar Twitter", 
            sprintf("Error: Tidak dapat diisi kosong!\nHai, %s!\nSilahkan masukkan kata sandi untuk akun Twitter kamu:\nIngat: Panjang kata sandi 7 - 32 Karakter!\nTahap ini tidak dapat dibatalkan!", AccountData[playerid][pTempText]), "Set", "");

            if(strlen(inputtext) < 7 || strlen(inputtext) > 32) return ShowPlayerDialog(playerid, DIALOG_TWITTER_SIGNPASSWORD, DIALOG_STYLE_PASSWORD, ""Imajinasi"Imajinasi Roleplay "WHITE"- Daftar Twitter", 
            sprintf("Error: Password tidak dapat kurang dari 7 atau 32 huruf!\nHai, %s!\nSilahkan masukkan kata sandi untuk akun Twitter kamu:\nIngat: Panjang kata sandi 7 - 32 Karakter!\nTahap ini tidak dapat dibatalkan!", AccountData[playerid][pTempText]), "Set", "");

            format(AccountData[playerid][TwitterName], 128, AccountData[playerid][pTempText]);
            format(AccountData[playerid][TwitterPassword], 64, inputtext);
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membuat akun twitter, silahkan login!");
        }
        case DialogOpenContact:
        {
            if(!response) return 1;
            switch(listitem)
            {
                case 0: // 
                {
                    ShowPlayerDialog(playerid, DIALOG_ADD_CONTACT, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Tambah Kontak", 
                    "Mohon masukkan nama kontak yang akan disimpan dibawah ini:", "Set", "Batal");
                }
                case 1: //
                {
                    ShowContactList(playerid);
                }
            }
        }
        case DIALOG_AIRDROPDISPLAY:
        {
            if(!response) return 1;
            switch(listitem)
            {
                case 0: // izin airdrop
                {
                    switch(AccountData[playerid][AirdropPermission])
                    {
                        case false: AccountData[playerid][AirdropPermission] = true;
                        case true: AccountData[playerid][AirdropPermission] = false;
                    }

                    new strings[255];
                    format(strings, sizeof(strings), "Status: %s\
                    \nShare Contacts", AccountData[playerid][AirdropPermission] ? ""LIGHTGREEN"Share Contact diizinkan" : ""RED"Share Contact tidak diizinkan");
                    
                    ShowPlayerDialog(playerid, DIALOG_AIRDROPDISPLAY, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Airdrop", strings, "Pilih", "Batal");
                }
                case 1: // share
                {
                    if(!AccountData[playerid][AirdropPermission]) 
                        return ShowTDN(playerid, NOTIFICATION_WARNING, "Izinkan terlebih dahulu Permission Share Contact!");

                    new frmxt[255], count = 0;

                    foreach(new i : Player) if (i != playerid) if (IsPlayerNearPlayer(playerid, i, 2.0) && AccountData[i][AirdropPermission])
                    {
                        format(frmxt, sizeof(frmxt), "%sPlayer ID: %d\n", frmxt, i);
                        NearestPlayer[playerid][count++] = i;
                    }

                    if(count == 0)
                    {
                        PlayerPlaySound(playerid, 5206, 0.0, 0.0, 0.0);
                        return ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_MSGBOX, ""Imajinasi"Imajinasi Roleplay "WHITE"- Airdrop",
                        "Tidak ada player yang dekat dengan anda!", "Tutup", "");
                    }

                    ShowPlayerDialog(playerid, DIALOG_AIRDROP, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Airdrop", frmxt, "Pilih", "Batal");
                }
            }
        }
        case DIALOG_AIRDROP:
        {
            if(!response) return 1;
            new targetid = NearestPlayer[playerid][listitem];
            if(!IsPlayerConnected(targetid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");
            if(!IsPlayerNearPlayer(playerid, targetid, 2.5)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak dekat dengan anda!");
            if(listitem == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum memilih orang yang ingin anda bagikan kontak!");

            SetPVarString(targetid, "NumberPhone", AccountData[playerid][pPhone]);
            strpack(AccountData[targetid][pNamaAirdrop], ReturnName(playerid), MAX_PLAYER_NAME);

            new shstr[522];
            format(shstr, sizeof(shstr), "Anda menerima permintaan penyimpanan kotak dari:\nNama: %s\nNomor HP: %s\nApakah anda yakin ingin menyimpan kontak tersebut?", AccountData[playerid][pName], AccountData[playerid][pPhone]);
            ShowPlayerDialog(targetid, DIALOG_AIRDROP_CONF, DIALOG_STYLE_MSGBOX, ""Imajinasi"Imajinasi Roleplay "WHITE"- Airdrop", shstr, "Iya", "Tidak");
        }
        case DIALOG_AIRDROP_CONF:
        {
            if(!response) return 1;

            new frmtname[64], frmtnumber[64], tss[255];            

            GetPVarString(playerid, "NumberPhone", frmtnumber, sizeof(frmtnumber));
            strunpack(frmtname, AccountData[playerid][pNamaAirdrop]);

            if(IsNumberAlreadySaved(playerid, frmtnumber)) return ShowTDN(playerid, NOTIFICATION_ERROR, sprintf("Nomor tersebut sudah terdaftar di kontak atas nama %s", GetMySavedContactName(playerid, frmtnumber)));
            if(CountPlayerContact(playerid) >= MAX_CONTACTS) return ShowTDN(playerid, NOTIFICATION_ERROR, "Penyimpanan kontak anda penuh!");

            for(new cid = 0; cid < MAX_CONTACTS; cid ++)
            {
                if(!ContactData[playerid][cid][contactExists])
                {
                    ContactData[playerid][cid][contactExists] = true;
                    ContactData[playerid][cid][contactOwnerID] = GetUCPSQLID(playerid);
                    format(ContactData[playerid][cid][contactNumber], sizeof(frmtnumber), "%s", frmtnumber);
                    format(ContactData[playerid][cid][contactName], sizeof(frmtname), "%s", frmtname);

                    mysql_format(mdb_query, tss, sizeof(tss), "INSERT INTO `contacts` SET `ID`=%d, `contactName`='%s', `contactNumber`='%s', `contactOwner`=%d, `contactUnread`=0", GetUCPSQLID(playerid), ContactData[playerid][cid][contactName], ContactData[playerid][cid][contactNumber], ContactData[playerid][cid][contactOwnerID]);
                    mysql_tquery(mdb_query, tss, "OnContactAdded", "dd", playerid, cid);
                    return 1;
                }
            }
        }
        case DANN_BOOMBOX:
        {
            if(!response)
            {
                SendClientMessageEx(playerid, COLOR_WHITE, ""VERONADOT"Kamu Membatalkan Music");
                return 1;
            }
            switch(listitem)
            {
                case 0:
                {
                    if(GetPVarType(playerid, "BBArea"))
                    {
                        SendRPMeAboveHead(playerid, "Mematikan musik", X11_PLUM1);
                        foreach(new i : Player)
                        {
                            if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
                            {
                                StopStream(i);
                            }
                        }
                        DeletePVar(playerid, "BBStation");
                    }
                    SendClientMessageEx(playerid, COLOR_WHITE, "{00ff00}[!]{ffffff}: Kamu Telah Mematikan Boomboxnya");
                }
                case 1:
                {
                    static jskc[512];
                    format(jskc, sizeof(jskc), ""VERONA_ARWIN"Boombox Music - Cerahi Hidupmu Secerah Matahari Di Pagi Hari\n\n"VERONA_ARWIN"Kami sarankan anda untuk upload file mp3 ke discord terlebih dahulu.\n"RED_E"Note: Fitur ini tidak support link Youtube secara langsung!\n\n"YELLOW"(Apabila file mp3 telah di upload ke discord, silahkan copy linknya dan paste dibawah ini):");
                    ShowPlayerDialog(playerid,DANN_BOOMBOX1,DIALOG_STYLE_INPUT, "Boombox Play Music", jskc, "Play", "Cancel");
                }
            }
        }
        case DANN_BOOMBOX1:
        {
            if(response == 1)
            {
                if(isnull(inputtext))
                {
                    ShowTDN(playerid, NOTIFICATION_WARNING, "Kamu belum memasukan URL!");
                    // SendClientMessageEx(playerid, COLOR_WHITE, "{00ff00}[!]{ffffff}: Kamu Tidak Menulis Apapun");
                    return 1;
                }
                if(strlen(inputtext))
                {
                    if(GetPVarType(playerid, "PlacedBB"))
                    {
                        foreach(new i : Player)
                        {
                            if(IsPlayerInDynamicArea(i, GetPVarInt(playerid, "BBArea")))
                            {
                                PlayStream(i, inputtext, GetPVarFloat(playerid, "BBX"), GetPVarFloat(playerid, "BBY"), GetPVarFloat(playerid, "BBZ"), 30.0, 1);
                            }
                        }
                        SetPVarString(playerid, "BBStation", inputtext);
                    }
                }
            }
        }
        case DIALOG_ADD_CONTACT:
        {
            if(!response) return 1;

            if(isnull(inputtext))
            {
                ShowPlayerDialog(playerid, DIALOG_ADD_CONTACT, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Tambah Kontak", 
                "Error: Tidak dapat diisi kosong!\nMohon masukkan nama kontak yang akan disimpan dibawah ini:", "Set", "Batal");
                return 1;
            }

            if(strlen(inputtext) < 1 || strlen(inputtext) > 64)
            {
                ShowPlayerDialog(playerid, DIALOG_ADD_CONTACT, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Tambah Kontak", 
                "Error: Tidak dapat kurang dari 1 huruf atau lebih dari 64!\nMohon masukkan nama kontak yang akan disimpan dibawah ini:", "Set", "Batal");
                return 1;
            }
            
            strpack(AccountData[playerid][pTempText], inputtext, 64);
            ShowPlayerDialog(playerid, DIALOG_ADD_CONTACTNUMB, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Tambah Kontak",
            sprintf("Mohon masukkan nomor HP dari %s:", inputtext), "Input", "Kembali");
        }
        case DIALOG_ADD_CONTACTNUMB:
        {
            if(!response)
            {
                ShowPlayerDialog(playerid, DIALOG_ADD_CONTACT, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Tambah Kontak", 
                "Mohon masukkan nama kontak yang akan disimpan dibawah ini:", "Set", "Batal");
                return 1;
            }

            if(isnull(inputtext))
            {
                ShowPlayerDialog(playerid, DIALOG_ADD_CONTACTNUMB, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Tambah Kontak",
                "Error: Tidak dapat diisi kosong!\nMohon masukkan nomor HP kontak yang akan disimpan dibawah ini:", "Input", "Kembali");
                return 1;
            }

            if(!IsNumeric(inputtext))
            {
                ShowPlayerDialog(playerid, DIALOG_ADD_CONTACTNUMB, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Tambah Kontak",
                "Error: Masukkan nomor HP kontak hanya berisi angka!\nMohon masukkan nomor HP kontak yang akan disimpan dibawah ini:", "Input", "Kembali");
                return 1;
            }

            if(IsNumberAlreadySaved(playerid, inputtext)) return ShowTDN(playerid, NOTIFICATION_ERROR, sprintf("Nomor tersebut sudah terdaftar di kontak atas nama %s", GetMySavedContactName(playerid, inputtext)));
            if(CountPlayerContact(playerid) >= MAX_CONTACTS) return ShowTDN(playerid, NOTIFICATION_ERROR, "Penyimpanan kontak anda telah penuh!");

            new tss[255], frmtname[64];

            strunpack(frmtname, AccountData[playerid][pTempText]);
            for(new cid = 0; cid < MAX_CONTACTS; cid++)
            {
                if(!ContactData[playerid][cid][contactExists])
                {
                    ContactData[playerid][cid][contactExists] = true;
                    ContactData[playerid][cid][contactOwnerID] = GetUCPSQLID(playerid);
                    format(ContactData[playerid][cid][contactNumber], 64, inputtext);
                    format(ContactData[playerid][cid][contactName], 64, frmtname);
                
                    mysql_format(mdb_query, tss, sizeof(tss), "INSERT INTO `contacts` SET `ID`=%d, `contactName`='%s', `contactNumber`='%s', `contactOwner`=%d, `contactUnread`=0", GetUCPSQLID(playerid), ContactData[playerid][cid][contactName], ContactData[playerid][cid][contactNumber], ContactData[playerid][cid][contactOwnerID]);
                    mysql_tquery(mdb_query, tss, "OnContactAdded", "dd", playerid, cid);    
                    return 1;
                }
            }
        }
        case DialogTelepon:
        {
            if(!response) return 1;

            if(AccountData[playerid][phoneAirplaneMode])
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Smartphone sedang dalam Mode Pesawat!");

            if(isnull(inputtext)) return ShowPlayerDialog(playerid, DialogTelepon, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Telepon", 
            "Error: Tidak dapat diisi kosong!\nMohon masukan nomor telepon yang ingin anda hubungi:", "Input", "Batal");
               
            if(!IsNumeric(inputtext)) return ShowPlayerDialog(playerid, DialogTelepon, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Telepon", 
            "Error: Hanya dapat diisi angka!\nMohon masukan nomor telepon yang ingin anda hubungi:", "Input", "Batal");

            if(!strcmp(inputtext, "110", true)) // Polisi
            {
                Dialog_Show(playerid, CALLCENTER_POLISI, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Panggilan Darurat Polisi",
                "Masukkan kendala anda yang ingin dilaporkan kepada pihak kepolisian dibawah ini\
                \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke kepolisian:", "Kirim", "Batal");
            }
            else if(!strcmp(inputtext, "118", true)) // Ems
            {
                Dialog_Show(playerid, CALLCENTER_EMS, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Panggilan Darurat Rumah Sakit",
                "Masukkan kendala anda yang ingin dilaporkan kepada pihak Rumah Sakit dibawah ini\
                \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Rumah Sakit:", "Kirim", "Batal");
            }
            else if(!strcmp(inputtext, "117", true)) // Pemerintah
            {
                Dialog_Show(playerid, CALLCENTER_PEMDA, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Call Center Pemerintah",
                "Masukkan kendala anda yang ingin dilaporkan kepada pihak Pemerintah dibawah ini\
                \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Pemerintah:", "Kirim", "Batal");
            }
            else
            {
                new targetnumberownerid = GetNumberOwner(inputtext);
                if(!IsPlayerConnected(targetnumberownerid) || targetnumberownerid == INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Mohon maaf nomor tersebut sedang tidak aktif!");
                if(!strcmp(AccountData[playerid][pPhone], inputtext, false)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat menghubungi diri sendiri!");
                OnOutcomingCall(playerid, inputtext);
            }

    
        }
        case DialogContact:
        {
            new index = ListedContacts[playerid][listitem];

            if(!response)
            {
                ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan");

                PlayerContactPage[playerid] = 0;
                return true;
            }

            if(strfind(inputtext, "<< Halaman Sebelumnya") != -1)
            {
                PlayerContactPage[playerid] --;
                ShowContactList(playerid);
                return true;
            }

            if(strfind(inputtext, ">> Halaman Selanjutnya") != -1)
            {
                new next_page = PlayerContactPage[playerid] + 1;
                new start_index = next_page * 15;
                if(ContactData[playerid][start_index][contactExists])
                {
                    PlayerContactPage[playerid] ++;
                    ShowContactList(playerid);
                }
                else
                {
                    PlayerContactPage[playerid] = PlayerContactPage[playerid];
                    ShowContactList(playerid);
                    Error(playerid, "Anda tidak memiliki kontak lagi di halaman selanjutnya!");
                }
                return true;
            }

            /*if(!strcmp(inputtext, ">> Halaman Selanjutnya", true))
            {
                mysql_format(mdb_query, query, sizeof(query), "SELECT * FROM `contacts` WHERE `ID` = %d ORDER BY ID ASC LIMIT %d, 15", AccountData[playerid][pID], (PlayerContactPage[playerid] + 1) * 15);
                result = mysql_query(mdb_query, query, true);
                if(cache_num_rows())
                {
                    cache_delete(result);
                    PlayerContactPage[playerid] ++;
                    ShowContactList(playerid);
                }
                else
                {
                    cache_delete(result);
                    PlayerContactPage[playerid] = PlayerContactPage[playerid];
                    ShowContactList(playerid);
                }
                return true;
            }*/

            if(ContactData[playerid][index][contactExists])
            {
                AccountData[playerid][pContact] = index;
                
                ShowPlayerDialog(playerid, DialogContactMenu, DIALOG_STYLE_LIST, sprintf(""Imajinasi"Imajinasi Roleplay"WHITE" - %s", ContactData[playerid][AccountData[playerid][pContact]][contactName]), 
                "Panggil\
                \n"GRAY"Whatsapp\
                \nShareloc\
                \n"GRAY"Edit Nama Kontak\
                \nEdit Nomor Kontak\
                \n"GRAY"Blokir/Buka Blokir Kontak\
                \nHapus Kontak", "Pilih", "Batal");
            }
            
            for(new i = 0; i < MAX_CONTACTS; i++) {
                ListedContacts[playerid][i] = -1;
            }
        }
        case DIALOG_YELLOW_PAGE_EMPTY:
        {
            if(!response)
            {
                return AccountData[playerid][CurrentlyReadYellow] = false;
            }

            ShowPlayerDialog(playerid, DIALOG_YELLOW_PAGE_SEND, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "GRAY"- Buat Iklan", "Masukkan iklan yang ingin anda buat dibawah sini:", "Kirim", "Kembali");
        }
        case DIALOG_YELLOW_PAGE:
        {
            if(!response)
            {
                return AccountData[playerid][CurrentlyReadYellow] = false;
            }
            
            new cQuery[333];
            mysql_format(mdb_query, cQuery, sizeof(cQuery), "SELECT * FROM `yellowpages` WHERE ID=1");
            mysql_query(mdb_query, cQuery);
            if(cache_num_rows())
            {
                new YellowSender[64], YellowNumber[64], YellowMessage[128], frmxt[598];
                if(listitem >= 0 && listitem < cache_num_rows())
                {
                    cache_get_value_name(listitem, "YellowFrom", YellowSender);
                    cache_get_value_name(listitem, "YellowPhone", YellowNumber);
                    cache_get_value_name(listitem, "YellowText", YellowMessage);
                
                    SetPVarString(playerid, "YellowNumber", YellowNumber);
                    format(frmxt, sizeof(frmxt), ""WHITE"Pengirim: "YELLOW"%s\n"BLUEJEGE"%s", YellowSender, YellowMessage);
                    ShowPlayerDialog(playerid, DIALOG_YELLOW_CALL, DIALOG_STYLE_MSGBOX, ""Imajinasi"Imajinasi Roleplay "WHITE"- Iklan",
                    frmxt, "Hubungi", "Batal");
                }
            }
        }
        case DIALOG_YELLOW_PAGE_MENU:
        {
            if(!response)
            {
                AccountData[playerid][CurrentlyReadYellow] = false;
                return 1;
            }
            
            switch(listitem)
            {
                case 0: // Lihat Iklan
                {
                    ShowPlayerYellowsPage(playerid);
                }
                case 1: //Buat Iklan
                {
                    ShowPlayerDialog(playerid, DIALOG_YELLOW_PAGE_SEND, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "GRAY"- Buat Iklan", 
                    "Masukkan iklan yang ingin anda buat dibawah sini:", "Kirim", "Kembali");
                }
            }
        }
        case DIALOG_YELLOW_CALL:
        {
            if(!response)
            {
                SetPVarString(playerid, "YellowNumber", "");
                ShowPlayerYellowsPage(playerid);
                return 1;
            }

            new YellowPhoneNumber[64];
            GetPVarString(playerid, "YellowNumber", YellowPhoneNumber, sizeof(YellowPhoneNumber));
            
            new ownernumberID = GetNumberOwner(YellowPhoneNumber);
            if(!strcmp(YellowPhoneNumber, AccountData[playerid][pPhone], false)) 
            {
                AccountData[playerid][CurrentlyReadYellow] = false;
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Nomor tersebut sedang sibuk!");
            }

            if(!IsPlayerConnected(ownernumberID)) 
            {
                AccountData[playerid][CurrentlyReadYellow] = false;
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");
            }

            OnOutcomingCall(playerid, sprintf("%s", YellowPhoneNumber));
            AccountData[playerid][CurrentlyReadYellow] = false;
        }
        case DIALOG_YELLOW_PAGE_SEND:
        {
            if(!response) 
            {
                AccountData[playerid][CurrentlyReadYellow] = false;
                return 1;
            }

            if(isnull(inputtext)) return ShowPlayerDialog(playerid, DIALOG_YELLOW_PAGE_SEND, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "GRAY"- Buat Iklan",
                "Error: Iklan tidak dapat kosong!\nMasukkan iklan yang ingin anda buat dibawah sini:", "Kirim", "Kembali");
            
            if(strlen(inputtext) < 1 || strlen(inputtext) > 128) return ShowPlayerDialog(playerid, DIALOG_YELLOW_PAGE_SEND, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "GRAY"- Buat Iklan",
                "Error: Iklan tidak boleh kurang dari 1 atau lebih dari 128 huruf!\nMasukkan iklan yang ingin anda buat dibawah sini:", "Kirim", "Kembali");
            
            if(!IsValidFormatText(inputtext)) return ShowPlayerDialog(playerid, DIALOG_TWITTER_POST_SEND, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "GRAY"- Kirim Tweet",
                "Error: Dilarang menggunakan tanda '\'' atau apapun itu!\nMasukkan Tweet yang ingin anda buat dibawah sini:", "Kirim", "Kembali");

            new frmttime[255], query[600];
            new hours, minutes, seconds, years, months, days;
            gettime(hours, minutes, seconds);
            getdate(years, months, days);
            format(frmttime, sizeof(frmttime), "%02d/%02d/%02d %02d:%02d:%02d", years, months, days, hours, minutes, seconds);

            mysql_format(mdb_query, query, sizeof(query), "INSERT INTO `yellowpages` (`ID`, `YellowFrom`, `YellowPhone`, `YellowDate`, `YellowText`) VALUES ('1', '%s', '%s', '%s', '%s')", ReturnName(playerid), AccountData[playerid][pPhone], frmttime, inputtext);
            mysql_tquery(mdb_query, query, "OnPlayerAdvert", "d", playerid);
            foreach(new i : Player) if (IsPlayerConnected(i) && AccountData[i][IsLoggedIn]) if (i != playerid)
            {
                if(AccountData[i][CurrentlyReadYellow]) return ShowPlayerYellowsPage(i);
            }
        }
        case DIALOG_WHATSAPP_CHAT:
        {
            new cidt = AccountData[playerid][pContact];
            if(!response) 
            {
                ShowContactList(playerid);
                AccountData[playerid][CurrentlyReadWA] = false;
            }
            else
            {
                new title[100];
                format(title, sizeof(title), "WhatsApp Chat - %s", ContactData[playerid][cidt][contactName]);
                ShowPlayerDialog(playerid, DIALOG_WHATSAPP_SEND, DIALOG_STYLE_INPUT, title, "Masukkan pesan WhatsApp yang ingin anda kirim dibawah ini:", "Kirim", "Kembali");
            }
            return 1;
        }
        case DIALOG_WHATSAPP_CHAT_EMPTY:
        {
            new cidt = AccountData[playerid][pContact];
            if(!response) 
            {
                ShowContactList(playerid);
                AccountData[playerid][CurrentlyReadWA] = false;
            }
            else
            {
                new title[100];
                format(title, sizeof(title), "WhatsApp Chat - %s", ContactData[playerid][cidt][contactName]);
                ShowPlayerDialog(playerid, DIALOG_WHATSAPP_SEND, DIALOG_STYLE_INPUT, title, "Masukkan pesan WhatsApp yang ingin anda kirim dibawah ini:", "Kirim", "Kembali");
            }
            return 1;
        }
        case DIALOG_WHATSAPP_SEND:
        {
            if(!response) 
            {
                AccountData[playerid][CurrentlyReadWA] = false;
                return 1;
            }
            
            new cidt = AccountData[playerid][pContact];
            new targetid = GetNumberOwner(ContactData[playerid][cidt][contactNumber]);
            if(targetid == INVALID_PLAYER_ID) return ShowTDN(playerid, NOTIFICATION_ERROR, "Mohon maaf nomor telepon itu sedang tidak aktif!");
            new ChatID = (AccountData[playerid][pMaskID]+AccountData[targetid][pMaskID]);

            new title[100];
            format(title, sizeof(title), "WhatsApp Chat - %s", ContactData[playerid][cidt][contactName]);

            if(isnull(inputtext)) return ShowPlayerDialog(playerid, DIALOG_WHATSAPP_SEND, DIALOG_STYLE_INPUT, title, 
            "Error: Pesan tidak boleh kosong!\nMasukkan pesan WhatsApp yang ingin anda kirim dibawah ini:", "Kirim", "Kembali");

            if(strlen(inputtext) < 1 || strlen(inputtext) > 128) return ShowPlayerDialog(playerid, DIALOG_WHATSAPP_SEND, DIALOG_STYLE_INPUT, title, 
            "Error: Pesan tidak dapat kurang dari 1 atau lebih dari 128 huruf!\nMasukkan pesan WhatsApp yang ingin anda kirim dibawah ini:", "Kirim", "Kembali");

            if(!IsValidFormatText(inputtext)) return ShowPlayerDialog(playerid, DIALOG_TWITTER_POST_SEND, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "GRAY"- Kirim Tweet",
            "Error: Dilarang menggunakan tanda '\'' atau apapun itu!\nMasukkan Tweet yang ingin anda buat dibawah sini:", "Kirim", "Kembali");

            if(CheckNumberBlocked(targetid, AccountData[playerid][pPhone])) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda tidak dapat mengirim pesan, nomor anda di Blokir!");

            for(new i; i < MAX_CONTACTS; i ++) {
                if(ContactData[targetid][i][contactExists]) {
                    if(!strcmp(ContactData[targetid][i][contactNumber], AccountData[playerid][pPhone], false)) {
                        ContactData[targetid][i][contactUnread] += 1;
                    }
                }
                new dbstr[151];
                mysql_format(mdb_query, dbstr, sizeof(dbstr), "UPDATE `contacts` SET `contactUnread` = %d WHERE `contactID` = %d", ContactData[targetid][i][contactUnread], ContactData[targetid][i][contactID]);
                mysql_tquery(mdb_query, dbstr);
            }
            new frmttime[255];
            new hours, minutes, seconds, years, months, days;
            gettime(hours, minutes, seconds);
            getdate(years, months, days);
            format(frmttime, sizeof(frmttime), "%02d-%02d-%02d %02d:%02d:%02d", years, months, days, hours, minutes, seconds);

            new query[1048];
            mysql_format(mdb_query, query, sizeof(query), "INSERT INTO `whatsapp_chats` (`ID`, `chatTimestamp`, `chatSender`, `chatMessage`) VALUES ('%d', '%s', '%s', '%s')", ChatID, frmttime, GetMySavedContactName(targetid, AccountData[playerid][pPhone]), inputtext);
            mysql_tquery(mdb_query, query, "OnWhatsappSent", "iiii", playerid, targetid, cidt, (AccountData[playerid][pMaskID]+AccountData[targetid][pMaskID]));
        }
        case DIALOG_TWITTER_POST_EMPTY:
        {
            if(!response)
            {
                AccountData[playerid][CurrentlyReadTwitter] = false;
                return 1;
            }

            ShowPlayerDialog(playerid, DIALOG_TWITTER_POST_SEND, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "GRAY"- Kirim Tweet", "Masukkan Tweet yang ingin anda buat dibawah sini:", "Kirim", "Kembali");
        }
        case DIALOG_TWITTER_POST:
        {
            if(!response)
            {
                AccountData[playerid][CurrentlyReadTwitter] = false;
                return 1;
            }

            ShowPlayerDialog(playerid, DIALOG_TWITTER_POST_SEND, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "GRAY"- Kirim Tweet", "Masukkan Tweet yang ingin anda buat dibawah sini:", "Kirim", "Kembali");
        }
        case DIALOG_TWITTER_POST_SEND:
        {
            if(!response) 
            {
                AccountData[playerid][CurrentlyReadTwitter] = false;
                return 1;
            }

            if(isnull(inputtext)) return ShowPlayerDialog(playerid, DIALOG_TWITTER_POST_SEND, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "GRAY"- Kirim Tweet",
                "Error: Tweet tidak dapat kosong!\nMasukkan Tweet yang ingin anda buat dibawah sini:", "Kirim", "Kembali");
            
            if(strlen(inputtext) < 1 || strlen(inputtext) > 128) return ShowPlayerDialog(playerid, DIALOG_TWITTER_POST_SEND, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "GRAY"- Kirim Tweet",
                "Error: Tweet tidak boleh kurang dari 1 atau lebih dari 128 huruf!\nMasukkan Tweet yang ingin anda buat dibawah sini:", "Kirim", "Kembali");

            if(!IsValidFormatText(inputtext)) return ShowPlayerDialog(playerid, DIALOG_TWITTER_POST_SEND, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "GRAY"- Kirim Tweet",
            "Error: Dilarang menggunakan tanda '\'' atau apapun itu!\nMasukkan Tweet yang ingin anda buat dibawah sini:", "Kirim", "Kembali");

            new frmttime[255], query[522];
            new hours, minutes, seconds, years, months, days;
            gettime(hours, minutes, seconds);
            getdate(years, months, days);
            format(frmttime, sizeof(frmttime), "%02d/%02d/%02d %02d:%02d:%02d", years, months, days, hours, minutes, seconds);

            mysql_format(mdb_query, query, sizeof(query), "INSERT INTO `tweets` (`ID`, `TwitterFrom`, `TwitterDate`, `TwitterText`) VALUES ('1', '%s', '%s', '%s')", AccountData[playerid][TwitterName], frmttime, inputtext);
            mysql_tquery(mdb_query, query, "OnPlayerTweet", "d", playerid);
            AddTweetLog(AccountData[playerid][pName], AccountData[playerid][pUCP], inputtext);

            foreach(new i : Player) if (AccountData[i][pSpawned] && AccountData[i][CurrentlyReadTwitter]) {
                ShowPlayerTwitterPage(i);
            }
        }
        case DialogContactMenu:
        {
            if(!response)
            {
                ShowContactList(playerid);
                return 1;
            }

            new cidt = AccountData[playerid][pContact];
            new ownernumber = GetNumberOwner(ContactData[playerid][cidt][contactNumber]);
            switch(listitem)
            {
                case 0:// Panggil
                {
                    if(AccountData[playerid][phoneAirplaneMode]) 
                        return ShowTDN(playerid, NOTIFICATION_ERROR, "Smartphone sedang dalam Mode Pesawat!");
                        
                    new targetnumber[25];
                    format(targetnumber, sizeof(targetnumber), "%s", ContactData[playerid][cidt][contactNumber]);
                    if(!strcmp(AccountData[playerid][pPhone], targetnumber, false)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat menghubungi diri sendiri!");
                    if(!IsPlayerConnected(ownernumber)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Mohon maaf nomor tersebut sedang tidak aktif!");
                    if(CheckNumberBlocked(playerid, AccountData[ownernumber][pPhone])) return ShowTDN(playerid, NOTIFICATION_ERROR, "Nomor tersebut anda blokir, buka terlebih dahulu!");
                    if(CheckNumberBlocked(ownernumber, AccountData[playerid][pPhone])) return ShowTDN(playerid, NOTIFICATION_WARNING, "Tidak dapat melakukan panggilan ini, nomor anda diblokir!");
                    OnOutcomingCall(playerid, targetnumber);
                }
                case 1:// Whatsapp
                {
                    if(AccountData[playerid][phoneAirplaneMode]) 
                        return ShowTDN(playerid, NOTIFICATION_ERROR, "Smartphone sedang dalam Mode Pesawat!");

                    //if(!IsPlayerConnected(ownernumber)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Mohon maaf nomor tersebut tidak aktif di kota!");
                    if(CheckNumberBlocked(playerid, AccountData[ownernumber][pPhone])) return ShowTDN(playerid, NOTIFICATION_ERROR, "Nomor tersebut anda blokir, buka terlebih dahulu!");

                    new query[525], harlem[128];
                    mysql_format(mdb_query, query, sizeof(query), "SELECT * FROM `whatsapp_chats` WHERE `ID`=%d ORDER BY `chatTimestamp` ASC LIMIT 30", AccountData[playerid][pMaskID]+AccountData[ownernumber][pMaskID]);
                    mysql_query(mdb_query, query);
                    if(cache_num_rows())
                    {
                        if(cache_num_rows() >= 30)
                        {
                            mysql_format(mdb_query, harlem, sizeof(harlem), "DELETE FROM `whatsapp_chats` WHERE `ID`=%d", AccountData[playerid][pMaskID]+AccountData[ownernumber][pMaskID]);
                            mysql_tquery(mdb_query, harlem);
                        }

                        new list[2500], date[64], issuer[24], watext[128];

                        ContactData[playerid][cidt][contactUnread] = 0;
                        mysql_format(mdb_query, query, sizeof(query), "UPDATE `contacts` SET `contactUnread`= 0 WHERE `contactID`=%d", ContactData[playerid][cidt][contactID]);
                        mysql_tquery(mdb_query, query);

                        format(list, sizeof(list), "Tanggal\tPengirim\tPesan\n");
                        for(new i; i < cache_num_rows(); ++i)
                        {
                            cache_get_value_name(i, "chatTimestamp", date);
                            cache_get_value_name(i, "chatSender", issuer);
                            cache_get_value_name(i, "chatMessage", watext);
                        
                            format(list, sizeof(list), "%s%s\t%s\t%s\n", list, date, issuer, watext);
                        }
                        new title[100];
                        format(title, sizeof(title), "WhatsApp Chat - %s", ContactData[playerid][cidt][contactName]);
                        ShowPlayerDialog(playerid, DIALOG_WHATSAPP_CHAT, DIALOG_STYLE_TABLIST_HEADERS, title, list, "Kirim", "Kembali");
                    }
                    else 
                    {
                        new list[208], title[102];
                        format(list, sizeof(list), "Tanggal\tPengirim\tPesan\n");
                        format(list, sizeof(list), "%sPesan dan panggilan terenkripsi secara end-to-end.", list);
                        format(title, sizeof(title), "WhatsApp Chat - %s", ContactData[playerid][cidt][contactName]);
                        ShowPlayerDialog(playerid, DIALOG_WHATSAPP_CHAT_EMPTY, DIALOG_STYLE_TABLIST_HEADERS, title, list, "Kirim", "Kembali");
                    }
                    AccountData[playerid][CurrentlyReadWA] = true;
                }
                case 2:// Shareloc
                {
                    if(AccountData[playerid][phoneAirplaneMode]) 
                        return ShowTDN(playerid, NOTIFICATION_ERROR, "Smartphone sedang dalam Mode Pesawat!");

                    if(!IsPlayerConnected(ownernumber)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Mohon maaf nomor tersebut tidak aktif di kota!");
                    if(CheckNumberBlocked(playerid, AccountData[ownernumber][pPhone])) return ShowTDN(playerid, NOTIFICATION_ERROR, "Nomor tersebut anda blokir, buka terlebih dahulu!");
                    if(CheckNumberBlocked(ownernumber, AccountData[playerid][pPhone])) return ShowTDN(playerid, NOTIFICATION_WARNING, "Anda tidak dapat mengirim shareloc, nomor anda di Blokir!");

                    static Float:x, Float:y, Float:z;
                    GetPlayerPos(playerid, x, y, z);

                    if (SharelocSender[ownernumber] != INVALID_STREAMER_ID) 
                        DestroyDynamicMapIcon(SharelocSender[ownernumber]);

                    SharelocSender[ownernumber] = CreateDynamicMapIcon(x, y, z, 0, COLOR_CLIENT, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid), ownernumber, 5000.0, MAPICON_GLOBAL, -1, 0);
                    SharelocTimer[ownernumber] = 120;
                    ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Berhasil mengirim lokasi kepada %s", ReturnName(ownernumber)));
                    Syntax(ownernumber, "%s mengirimkan shareloc kepada anda", GetMySavedContactName(ownernumber, AccountData[playerid][pPhone]));
                }
                case 3: // Edit Nama Kontak
                {
                    ShowPlayerDialog(playerid, DIALOG_EDIT_CONTACTNAME, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Edit Nama Kontak", 
                    sprintf("Mohon masukkan nama baru untuk diterapkan pada kontak %s", ContactData[playerid][cidt][contactName]), "Save", "Batal");
                }
                case 4: // Edit Number
                {
                    ShowPlayerDialog(playerid, DIALOG_EDIT_CONTACTNUMBER, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Edit Nomor Kontak",
                    sprintf("Mohon masukkan nomor baru untuk diterapkan pada kontak %s", ContactData[playerid][cidt][contactName]), "Save", "Batal");
                }
                case 5: // Blokir Kontak
                {
                    switch(ContactData[playerid][cidt][contactBlocked])
                    {
                        case 0:
                        {
                            ContactData[playerid][cidt][contactBlocked] = 1;
                            mysql_query(mdb_query, sprintf("UPDATE `contacts` SET `contactBlocked` = %d WHERE `ID` = '%d' AND `contactID` = '%d'", ContactData[playerid][cidt][contactBlocked], AccountData[playerid][pID], ContactData[playerid][cidt][contactID]), false);
                            ShowContactList(playerid);
                            
                            Info(playerid, "Anda memblokir kontak %s (%s)", ContactData[playerid][cidt][contactName], ContactData[playerid][cidt][contactNumber]);
                        }
                        case 1:
                        {
                            ContactData[playerid][cidt][contactBlocked] = 0;
                            mysql_query(mdb_query, sprintf("UPDATE `contacts` SET `contactBlocked` = %d WHERE `ID` = '%d' AND `contactID` = '%d'", ContactData[playerid][cidt][contactBlocked], AccountData[playerid][pID], ContactData[playerid][cidt][contactID]), false);
                            ShowContactList(playerid);
                            
                            Info(playerid, "Anda membuka memblokir kontak %s (%s)", ContactData[playerid][cidt][contactName], ContactData[playerid][cidt][contactNumber]);
                        }
                    }
                }
                case 6:// Hapus Kontak
                {
                    ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Anda telah menghapus %s dari daftar kontak!", ContactData[playerid][cidt][contactName]));
                    
                    static frmtx[188];
                    mysql_format(mdb_query, frmtx, sizeof(frmtx), "DELETE FROM `contacts` WHERE `ID` = '%d' AND `contactID` = '%d'", AccountData[playerid][pID], ContactData[playerid][cidt][contactID]);
                    mysql_query(mdb_query, frmtx);
                    
                    ContactData[playerid][cidt][contactExists] = false;
                    ContactData[playerid][cidt][contactNumber] = 0;
                    ContactData[playerid][cidt][contactID] = 0;
                    PlayerContactPage[playerid] = 0;
                    
                    for (new i = 0; i < MAX_CONTACTS; i ++) {
                        ContactData[playerid][i][contactExists] = false;
                    }
                    
                    static cQuery[200];
                    mysql_format(mdb_query, cQuery, sizeof(cQuery), "SELECT * FROM `contacts` WHERE `ID`=%d AND `contactOwner`=%d", AccountData[playerid][pID], AccountData[playerid][pID]);
	                mysql_tquery(mdb_query, cQuery, "LoadPlayerContact", "d", playerid);
                    // ShowContactList(playerid);
                }
            }
        }
        case DIALOG_EDIT_CONTACTNUMBER:
        {
            if(response)
            {
                if(isnull(inputtext)) return ShowPlayerDialog(playerid, DIALOG_EDIT_CONTACTNUMBER, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Edit Nomor Kontak", 
                sprintf("Error: Tidak dapat diisi kosong!\nMohon masukkan nomor baru untuk diterapkan pada kontak %s", ContactData[playerid][AccountData[playerid][pContact]][contactName]), "Save", "Batal");

                if(!IsNumeric(inputtext)) return ShowPlayerDialog(playerid, DIALOG_EDIT_CONTACTNUMBER, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Edit Nomor Kontak", 
                sprintf("Error: Hanya dapat diisi angka!\nMohon masukkan nomor baru untuk diterapkan pada kontak %s", ContactData[playerid][AccountData[playerid][pContact]][contactName]), "Save", "Batal");

                CallLocalFunction("OnContactEditNumber", "dds", playerid, AccountData[playerid][pContact], inputtext);
            }
            else ShowContactList(playerid);
        }
        case DIALOG_EDIT_CONTACTNAME:
        {
            if(response)
            {
                if(isnull(inputtext)) return ShowPlayerDialog(playerid, DIALOG_EDIT_CONTACTNAME, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Edit Nama Kontak", 
                sprintf("Error: Tidak dapat diisi kosong!\nMohon masukkan nama baru untuk diterapkan pada kontak %s", ContactData[playerid][AccountData[playerid][pContact]][contactName]), "Save", "Batal");

                if(IsNumeric(inputtext)) return ShowPlayerDialog(playerid, DIALOG_EDIT_CONTACTNAME, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Edit Nama Kontak", 
                sprintf("Error: Tidak dapat memasukkan angka semua!\nMohon masukkan nama baru untuk diterapkan pada kontak %s", ContactData[playerid][AccountData[playerid][pContact]][contactName]), "Save", "Batal");

                if(strlen(inputtext) < 1 || strlen(inputtext) > 32) return ShowPlayerDialog(playerid, DIALOG_EDIT_CONTACTNAME, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Edit Nama Kontak", 
                sprintf("Error: Nama tidak dapat kurang dari 1 huruf atau lebih dari 32!\nMohon masukkan nama baru untuk diterapkan pada kontak %s", ContactData[playerid][AccountData[playerid][pContact]][contactName]), "Save", "Batal");

                CallLocalFunction("OnContactEditName", "dds", playerid, AccountData[playerid][pContact], inputtext);
            }
            else ShowContactList(playerid);
        }
        case DialogTransfer:
        {
            if(!response) return false;
            
            if(isnull(inputtext)) return ShowPlayerDialog(playerid, DialogTransfer, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Transfer", 
            "Error: Harus diisi tidak dapat kosong!\nMohon masukkan nomor rekening yang ingin anda transfer:", "Submit", "Batal");

            if(!IsNumeric(inputtext)) return ShowPlayerDialog(playerid, DialogTransfer, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Transfer", 
            "Error: Hanya dapat diisi angka!\nMohon masukkan nomor rekening yang ingin anda transfer:", "Submit", "Batal");

            if(strval(inputtext) == AccountData[playerid][pBankRek]) return ShowPlayerDialog(playerid, DialogTransfer, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Transfer", 
            "Error: Tidak dapat mengirim ke rekening diri sendiri!\nMohon masukkan nomor rekening yang ingin anda transfer:", "Submit", "Batal");

            new query[128];
            mysql_format(mdb_query, query, sizeof(query), "SELECT * FROM `player_characters` WHERE `Char_BankRek`=%d", strval(inputtext));
            mysql_tquery(mdb_query, query, "SearchBankRek", "dd", playerid, strval(inputtext));
        }
        case DialogTransfer1:
        {
            if(!response) return 1;

            new targetid = GetRekeningOwner(AccountData[playerid][pTransferRek]);

            if(isnull(inputtext)) return ShowPlayerDialog(playerid, DialogTransfer1, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Transfer",
            "Error: Harus diisi tidak dapat kosong!\nMohon masukkan jumlah nominal yang ingin anda kirim ke rekening tersebut:", "Kirim", "Batal"); 
        
            if(!IsNumeric(inputtext)) return ShowPlayerDialog(playerid, DialogTransfer1, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Transfer",
            "Error: Hanya dapat diisi angka!\nMohon masukkan jumlah nominal yang ingin anda kirim ke rekening tersebut:", "Kirim", "Batal");
        
            if(strval(inputtext) < 1 || strval(inputtext) > AccountData[playerid][pBankMoney]) return ShowPlayerDialog(playerid, DialogTransfer1, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Transfer",
            "Error: Jumlah tidak vaid!\nMohon masukkan jumlah nominal yang ingin anda kirim ke rekening tersebut:", "Kirim", "Batal");
        
            if(!IsPlayerConnected(targetid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemilik rekening tersebut tidak terkoneksi ke server!");
            AccountData[targetid][pBankMoney] += strval(inputtext);
            AccountData[playerid][pBankMoney] -= strval(inputtext);
            SendClientMessageEx(targetid, -1, "[i] Anda mendapatkan transfer dari // Nama Rek: %s // Jumlah Transfer: "GREEN"%s", AccountData[playerid][pName], FormatMoney(strval(inputtext)));
            ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Berhasil mengirim %s ke rekening %d", FormatMoney(strval(inputtext)), AccountData[playerid][pTransferRek]));
            
            foreach(new i : Player) if (AccountData[i][pAdmin] >= 1 && IsPlayerConnected(i))
			{
				SendClientMessageEx(i, -1, ""YELLOW"[Transfer Logs]: %s(%d) Mentransfer uang sebesar %s kepada %s(%d)", AccountData[playerid][pName], playerid, FormatMoney(strval(inputtext)), AccountData[targetid][pName], targetid);
			}
            new frmxt[255];
			format(frmxt, sizeof(frmxt), "Menstransfer uang kepada rekening %d sebesar $%d", AccountData[playerid][pTransferRek], strval(inputtext));
			AddPMoneyLog(AccountData[playerid][pName], AccountData[playerid][pUCP], frmxt, strval(inputtext));
            AccountData[playerid][pTransferRek] = 0;
        }
        case DialogSpotify:
        {
            if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda membatalkan musik");
            if(response)
            {
                switch(listitem)
                {
                    case 0:
                    {
                        SendRPMeAboveHead(playerid, "Mematikan musik di Spotifynya", X11_PLUM1);
                        StopStream(playerid);
                    }
                    case 1:
                    {
                        static jskc[512];
                        format(jskc, sizeof(jskc), ""VERONA_ARWIN"Spotify Music - Cerahi Hidupmu Secerah Matahari Di Pagi Hari\n\n"VERONA_ARWIN"Kami sarankan anda untuk upload file mp3 ke discord terlebih dahulu.\n"RED_E"Note: Fitur ini tidak support link Youtube secara langsung!\n\n"YELLOW"(Apabila file mp3 telah di upload ke discord, silahkan copy linknya dan paste dibawah ini):");
                        ShowPlayerDialog(playerid, DialogSpotify1, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Spotify", jskc, "Input", "Cancel");
                    }
                }
            }
        }
        case DialogSpotify1:
        {
            if(response == 1)
            {
                if(isnull(inputtext))
                {
                    ShowTDN(playerid, NOTIFICATION_WARNING, "Anda belum memasukan URL musik!");
                    return 1;
                }
                if(strlen(inputtext))
                {
                    PlayStream(playerid, inputtext, 0.0, 0.0, 0.0, 1, 0);
                }
            }
        }
        case LokasiGps:
        {
            if(!response) return 1;
            if(!PlayerHasItem(playerid, "Smartphone")) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki smartphone!");

            switch(listitem)
            {
                case 0:
                {
                    new minsty[4096];
                    format(minsty, sizeof(minsty), "Nama\tLokasi\tJarak\
                    \n"GRAY"Balai Kota\t%s\t"YELLOW"%.2f m\
                    \nDinas Pekerjaan\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Kantor Kepolisian Imajinasi\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nRumah Sakit Pillbox\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Bengkel Kota Imajinasi\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nAsuransi\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Asuransi LV\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nRestaurant Imajinasi\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Pelabuhan\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nBahamas\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Rusun Abah burhan\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nTerminal Desa\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"IKEA Imajinasi\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nShowroom Imajinasi\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Gudang Warbun\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nGudang Fort Carson\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"OYO Hotels #1\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nRusun Suroh\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Rusun Jamal\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nToko Olahraga\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Motel Romo\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nVenue Imajinasi\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Bahamas LV\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nBahamas SF\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Rusun BlueDoorz\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nUniversitas Imajinasi\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Panggung San Fiero\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nDrag Race Las Venturas\t%s\t"YELLOW"%.2f m\
                    ",
                    GetLocation(1133.9788, -2036.3195, 69.0078), GetPlayerDistanceFromPoint(playerid, 1133.9788,-2036.3195,69.0078),//balkot
                    GetLocation(1621.322753, -1274.616088, 17.495567), GetPlayerDistanceFromPoint(playerid, 1621.322753, -1274.616088, 17.495567),//dinas
                    GetLocation(964.388366, 2412.517089, 10.854866), GetPlayerDistanceFromPoint(playerid, 964.388366, 2412.517089, 10.854866),//kanpol
                    GetLocation(1377.666, 719.911, 10.820), GetPlayerDistanceFromPoint(playerid, 1377.666, 719.911, 10.820),//rs
                    GetLocation(-60.624, -1580.780, 2.617), GetPlayerDistanceFromPoint(playerid, -60.624, -1580.780, 2.617),//bengkel
                    GetLocation(1425.252563,1058.143066,10.517755), GetPlayerDistanceFromPoint(playerid, 1425.252563,1058.143066,10.517755),//asuransi ls
                    GetLocation(51.3536, 1222.1011, 18.9170), GetPlayerDistanceFromPoint(playerid, 51.3536, 1222.1011, 18.9170),//asuransi lv
                    GetLocation(654.846496, -1850.818237, 6.115149), GetPlayerDistanceFromPoint(playerid, 654.846496, -1850.818237, 6.115149),//resto
                    GetLocation(2767.8762, -2435.3850, 13.6850), GetPlayerDistanceFromPoint(playerid, 2767.8762, -2435.3850, 13.6850),//pelabuhan
                    GetLocation(2422.3745,-1234.7301,24.5338), GetPlayerDistanceFromPoint(playerid, 2422.3745,-1234.7301,24.5338),//bahamas
                    GetLocation(2224.1106,-1152.6976,25.7977), GetPlayerDistanceFromPoint(playerid, 2224.1106,-1152.6976,25.7977),//rusun burhan
                    GetLocation(88.39, -280.85, 1.57), GetPlayerDistanceFromPoint(playerid, 88.39, -280.85, 1.57),//terminal
                    GetLocation(1134.388549,-961.028686,42.707996), GetPlayerDistanceFromPoint(playerid, 1134.388549,-961.028686,42.707996),//ikea
                    GetLocation(394.581726, -1341.149047, 14.761465), GetPlayerDistanceFromPoint(playerid, 394.581726, -1341.149047, 14.761465),
                    GetLocation(2076.8, -2033.33, 13.5469), GetPlayerDistanceFromPoint(playerid, 2076.8, -2033.33, 13.5469),
                    GetLocation(-136.0707, 1116.6332, 20.1966), GetPlayerDistanceFromPoint(playerid, -136.0707, 1116.6332, 20.1966),
                    GetLocation(2223.5115, -1143.1807, 25.7969), GetPlayerDistanceFromPoint(playerid, 2223.5115, -1143.1807, 25.7969),
                    GetLocation(221.2156, -117.9283, 1.5781), GetPlayerDistanceFromPoint(playerid, 221.2156, -117.9283, 1.5781),
                    GetLocation(2183.3953, -1794.7335, 13.3606), GetPlayerDistanceFromPoint(playerid, 2183.3953, -1794.7335, 13.3606),
                    GetLocation(1386.4347, 293.3129, 19.5469), GetPlayerDistanceFromPoint(playerid, 1386.4347, 293.3129, 19.5469),
                    GetLocation(-3.3894, 1212.4326, 19.3527), GetPlayerDistanceFromPoint(playerid, -3.3894, 1212.4326, 19.3527),
                    GetLocation(836.0340, -2008.6443, 12.8672), GetPlayerDistanceFromPoint(playerid, 836.0340, -2008.6443, 12.8672),
                    GetLocation(2222.4739, 1837.4940, 10.8203), GetPlayerDistanceFromPoint(playerid, 2222.4739, 1837.4940, 10.8203),
                    GetLocation(-2442.7500, 755.2680, 35.2719), GetPlayerDistanceFromPoint(playerid, -2442.7500, 755.2680, 35.2719),
                    GetLocation(2613.9070, 732.6111, 10.8203), GetPlayerDistanceFromPoint(playerid, 2613.9070, 732.6111, 10.8203),
                    GetLocation(2819.3628, -1086.1926, 30.7333), GetPlayerDistanceFromPoint(playerid, 2819.3628, -1086.1926, 30.7333),
                    GetLocation(-2882.8586, 464.0963, 4.9141), GetPlayerDistanceFromPoint(playerid, -2882.8586, 464.0963, 4.9141),
                    GetLocation(2832.8967, 1903.7570, 10.8203), GetPlayerDistanceFromPoint(playerid, 2832.8967, 1903.7570, 10.8203));
                    ShowPlayerDialog(playerid, LokasiUmum, DIALOG_STYLE_TABLIST_HEADERS, ""Imajinasi"Imajinasi Roleplay "WHITE"- GPS", minsty, "Pilih", "Batal");
                }
                case 1:
                {
                    new minsty[4012];
                    format(minsty, sizeof(minsty), "Pekerjaan\tNama\tLokasi\tJarak\
                    \n"GRAY"Electrican Job\t"GRAY"( Multiplayer Job )\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nSupir Bus\tTerminal Imajinasi\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Tukang Ayam #1\t"GRAY"Kandang Ayam Imajinasi\t%s\t"YELLOW"%.2f m\
                    \nTukang Ayam #2\tKantor Ayam Imajinasi\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Petani #1\t"GRAY"Pembelian Bibit\t%s\t"YELLOW"%.2f m\
                    \nPetani #2\tLadang Tanaman\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Petani #3\t"GRAY"Olah Tanaman\t%s\t"YELLOW"%.2f m\
                    \nTukang Kayu\tHutan Kayu\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Kargo\t"GRAY"Pengambilan Truck Kargo\t%s\t"YELLOW"%.2f m\
                    \nPemerah Sapi\tLokasi Pemerahan\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Penambang #1\t"GRAY"Pertambangan Imajinasi\t%s\t"YELLOW"%.2f m\
                    \nPenambang #2\tPencucian Batu\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Penambang #3\t"GRAY"Peleburan Batu\t%s\t"YELLOW"%.2f m\
                    \nPenjahit #1\tKantor Penjahit\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Penjahit #2\t"GRAY"Penjualan Pakaian\t%s\t"YELLOW"%.2f m\
                    \nRecycler #1\tTempat Penyortiran\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Recycler #2\t"GRAY"Tempat Daur Ulang\t%s\t"YELLOW"%.2f m\
                    \nTukang Minyak #1\tAmbil Minyak\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Tukang Minyak #2\t"GRAY"Refined Minyak\t%s\t"YELLOW"%.2f m\
                    \nTukang Minyak #3\tMixxing Minyak\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Tukang Minyak #4\t"GRAY"Penjualan Gas\t%s\t"YELLOW"%.2f m\
                    \nNelayan #1\tRental Perahu\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Nelayan #2\t"GRAY"Penangkapan Ikan\t"GRAY"%s\t"YELLOW"%.2f m\
                    \nTrashmaster\tSidejob\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Mower\t"GRAY"Sidejob\t%s\t"YELLOW"%.2f m\
                    \nSweeper\tSidejob\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Delivery\t"GRAY"Sidejob\t%s\t"YELLOW"%.2f m\
                    \nForklift\tSidejob\t%s\t"YELLOW"%.2f m\
                    ",
                    GetLocation(-2521.1821, -621.8853, 132.7418), GetPlayerDistanceFromPoint(playerid, -2521.1821, -621.8853, 132.7418),
                    GetLocation(96.0680,-272.6256,1.5781), GetPlayerDistanceFromPoint(playerid, 96.0680,-272.6256,1.5781),
                    GetLocation(1546.5872,28.7098,24.1406), GetPlayerDistanceFromPoint(playerid, 1546.5872,28.7098,24.1406),
                    GetLocation(1911.8618,164.4111,37.1539), GetPlayerDistanceFromPoint(playerid, 1911.8618,164.4111,37.1539),
                    GetLocation(-547.7806, -185.1288, 78.4063), GetPlayerDistanceFromPoint(playerid, -547.7806, -185.1288, 78.4063),
                    GetLocation(-376.1269, -1439.9231, 25.7266), GetPlayerDistanceFromPoint(playerid, -376.1269, -1439.9231, 25.7266),
                    GetLocation(3.9224, 66.8390, 3.1172), GetPlayerDistanceFromPoint(playerid, 3.9224, 66.8390, 3.1172),
                    GetLocation(-439.7503, -62.3335, 58.9720), GetPlayerDistanceFromPoint(playerid, -439.7503, -62.3335, 58.9720),
                    GetLocation(-1704.2260, 49.6503, 3.5495), GetPlayerDistanceFromPoint(playerid, -1704.2260, 49.6503, 3.5495),
                    GetLocation(306.8608,1141.2626,8.5859), GetPlayerDistanceFromPoint(playerid, 306.8608,1141.2626,8.5859),
                    GetLocation(686.9853,895.7302,-39.5328), GetPlayerDistanceFromPoint(playerid, 686.9853,895.7302,-39.5328),
                    GetLocation(-412.7031, 1197.8976, 2.2932), GetPlayerDistanceFromPoint(playerid, -412.7031, 1197.8976, 2.2932),
                    GetLocation(2182.6780,-2259.5010,13.3878), GetPlayerDistanceFromPoint(playerid, 2182.6780,-2259.5010,13.3878),
                    GetLocation(2348.7112, -82.1600, 26.3359), GetPlayerDistanceFromPoint(playerid, 2348.7112, -82.1600, 26.3359),
                    GetLocation(676.1796,-619.9467,16.3359), GetPlayerDistanceFromPoint(playerid, 676.1796,-619.9467,16.3359),
                    GetLocation(2297.9268, 2764.1992, 10.8203), GetPlayerDistanceFromPoint(playerid, 2297.9268, 2764.1992, 10.8203),
                    GetLocation(-31.6359, 1386.9554, 9.1719), GetPlayerDistanceFromPoint(playerid, -31.6359, 1386.9554, 9.1719),
                    GetLocation(471.9127, 1299.1512, 9.7176), GetPlayerDistanceFromPoint(playerid, 471.9127, 1299.1512, 9.7176),
                    GetLocation(497.5595, 1518.7350, 1.0000), GetPlayerDistanceFromPoint(playerid, 497.5595, 1518.7350, 1.0000),
                    GetLocation(279.6849, 1348.9515, 10.5859), GetPlayerDistanceFromPoint(playerid, 279.6849, 1348.9515, 10.5859),
                    GetLocation(1929.94, -1776.33, 13.5469), GetPlayerDistanceFromPoint(playerid, 1929.94, -1776.33, 13.5469),
                    GetLocation(111.3999, -1895.6553, 2.9408), GetPlayerDistanceFromPoint(playerid, 111.3999, -1895.6553, 2.9408),
                    GetLocation(352.4596, -2669.7722, -0.0401), GetPlayerDistanceFromPoint(playerid, 352.4596, -2669.7722, -0.0401),
                    GetLocation(1037.3827, -305.1682, 74.0922), GetPlayerDistanceFromPoint(playerid, 1037.3827, -305.1682, 74.0922),
                    GetLocation(2118.1814, -1188.9286, 23.9358), GetPlayerDistanceFromPoint(playerid, 2118.1814, -1188.9286, 23.9358),
                    GetLocation(604.9979, -1508.6365, 14.9549), GetPlayerDistanceFromPoint(playerid, 604.9979, -1508.6365, 14.9549),
                    GetLocation(1001.3441, -1445.8391, 13.5469), GetPlayerDistanceFromPoint(playerid, 1001.3441, -1445.8391, 13.5469),
                    GetLocation(-1723.7289, -63.5671, 3.5547), GetPlayerDistanceFromPoint(playerid, -1723.7289, -63.5671, 3.5547));
                    ShowPlayerDialog(playerid, LokasiPekerjaan, DIALOG_STYLE_TABLIST_HEADERS, ""Imajinasi"Imajinasi Roleplay "WHITE"- GPS", minsty, "Pilih", "Batal");
                }
                case 2:
                {
                    new minsty[1218];
                    format(minsty, sizeof(minsty), "Hobi\tNama\tLokasi\tJarak\
                    \nMemancing #1\tSpot Pemancingan\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Memancing #2\t"GRAY"Penjualan Ikan\t%s\t"YELLOW"%.2f m\
                    \nBerburu #1\tSpot Perburuan\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Berburu #2\t"GRAY"Penjualan Hasil Buruan\t%s\t"YELLOW"%.2f m\
                    ",
                    GetLocation(383.1566,-2075.2007,7.8359), GetPlayerDistanceFromPoint(playerid, 383.1566,-2075.2007,7.8359),
                    GetLocation(1052.0156,-345.4073,73.9922), GetPlayerDistanceFromPoint(playerid, 1052.0156,-345.4073,73.9922),
                    GetLocation(-387.3126,-2259.8279,45.5646), GetPlayerDistanceFromPoint(playerid, -387.3126,-2259.8279,45.5646),
                    GetLocation(-1693.3431,-88.9088,3.5654), GetPlayerDistanceFromPoint(playerid, -1693.3431,-88.9088,3.5654));
                    ShowPlayerDialog(playerid, LokasiHobi, DIALOG_STYLE_TABLIST_HEADERS, ""Imajinasi"Imajinasi Roleplay "WHITE"- GPS", minsty, "Pilih", "Batal");
                }
                case 3:
                {
                    ShowPlayerDialog(playerid, LokasiPertokoan, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- GPS", 
                    "Toko Pakaian Terdekat\
                    \n"GRAY"Toko Elektronik Terdekat", "Pilih", "Batal");
                }
                case 4:
                {
                    new id = NearestAtm(playerid);
                    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada ATM terdekat dari posisi anda!");
                    
                    SetPlayerRaceCheckpoint(playerid, 1, AtmData[id][atmX], AtmData[id][atmY], AtmData[id][atmZ], AtmData[id][atmX], AtmData[id][atmY], AtmData[id][atmZ], 5.0);
                    pMapCP[playerid] = true;
                    Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                }
                case 5:
                {
                    new id = GarkotNearby(playerid);
                    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada Garasi Umum terdekat dari posisi anda!");

                    SetPlayerRaceCheckpoint(playerid, 1, PublicGarage[id][pgPOS][0], PublicGarage[id][pgPOS][1], PublicGarage[id][pgPOS][2], PublicGarage[id][pgPOS][0], PublicGarage[id][pgPOS][1], PublicGarage[id][pgPOS][2], 5.0);
                    pMapCP[playerid] = true;
                    Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                }
                case 6:
                {
                    new id = NearbyTrash(playerid);
                    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada Tong Sampah terdekat dari posisi anda!");
                    
                    SetPlayerRaceCheckpoint(playerid, 1, TrashData[id][trashPos][0], TrashData[id][trashPos][1], TrashData[id][trashPos][2], 0.0, 0.0, 0.0 ,5.0);
                    pMapCP[playerid] = true;
                    Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                }
                case 7:
                {
                    new id = WarungNearby(playerid);
                    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada Warung terdekat dari posisi anda!");

                    SetPlayerRaceCheckpoint(playerid, 1, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], 5.0);
                    pMapCP[playerid] = true;
                    Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                }
                case 8: // Pom bensin
                {
                    new id = GasFuelNearby(playerid);
                    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada Pom Bensin terdekat dari posisi anda!");
                    
                    SetPlayerRaceCheckpoint(playerid, 1, PomNearest[id][0], PomNearest[id][1], PomNearest[id][2], PomNearest[id][0], PomNearest[id][1], PomNearest[id][2], 5.0);
                    pMapCP[playerid] = true;
                    Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                }
                case 9: // Bengkel Modshop
                {
                    SetPlayerRaceCheckpoint(playerid, 1, 1101.4049, -1233.4498, 15.8203, 1101.4049, -1233.4498, 15.8203, 5.0);
                    pMapCP[playerid] = true;
                    Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                }
                case 10:// Rumah saya
                {
                    new bool: found = false;
                    foreach(new id : House)
                    {
                        if(House_HaveAccess(playerid, id))
                        {
                            AccountData[playerid][pTrackHoused] = true;
                            SetPlayerRaceCheckpoint(playerid, 1, HouseData[id][hsExtPos][0], HouseData[id][hsExtPos][1], HouseData[id][hsExtPos][2], HouseData[id][hsExtPos][0], HouseData[id][hsExtPos][1], HouseData[id][hsExtPos][2], 4.0);
                            ShowTDN(playerid, NOTIFICATION_INFO, "Lokasi telah ditandai di map!");
                            found = true;
                        }
                    }
                    if(!found) ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki/memegang kunci Rumah!");
                }
                case 11:
				{
					if(GetAnyWorkshop() <= 0) return Error(playerid, "Tidak ada Workshop.");
					new id, count = GetAnyWorkshop(), location[4096], lstr[596], lock[64];
					strcat(location,"No\tName(Status)\tDistance\n",sizeof(location));
					Loop(itt, (count + 1), 1)
					{
						id = ReturnWorkshopID(itt);
						if(wsData[id][wStatus] == 1)
						{
							lock = "{00FF00}Open{ffffff}";
						}
						else
						{
							lock = "{FF0000}Closed{ffffff}";
						}
						if(itt == count)
						{
							format(lstr,sizeof(lstr), "%d\t%s{ffffff}(%s)\t%0.2fm\n", itt, wsData[id][wName], lock, GetPlayerDistanceFromPoint(playerid, wsData[id][wX], wsData[id][wY], wsData[id][wZ]));
						}
						else format(lstr,sizeof(lstr), "%d\t%s{ffffff}(%s)\t%0.2fm\n", itt, wsData[id][wName], lock, GetPlayerDistanceFromPoint(playerid, wsData[id][wX], wsData[id][wY], wsData[id][wZ]));
						strcat(location,lstr,sizeof(location));
					}
					ShowPlayerDialog(playerid, DIALOG_TRACKWS, DIALOG_STYLE_TABLIST_HEADERS,"{ffff00}Imajinasi Roleplay /{ffffff}/ Track Workshop",location,"Track","Cancel");
				}
                case 12:
                {
                    new minsty[1218];
                    format(minsty, sizeof(minsty), "Hobi\tNama\tLokasi\tJarak\
                    \nGudang #1\tCarnaval\t%s\t"YELLOW"%.2f m\
                    \n"GRAY"Gudang #2\t"GRAY"BELUM ADA\t%s\t"YELLOW"%.2f m\
                    ",
                    GetLocation(394.534484,-1910.525146,7.835937), GetPlayerDistanceFromPoint(playerid, 394.534484,-1910.525146,7.835937),
                    GetLocation(394.534484,-1910.525146,7.835937), GetPlayerDistanceFromPoint(playerid, 394.534484,-1910.525146,7.835937));
                    ShowPlayerDialog(playerid, LokasiGudang, DIALOG_STYLE_TABLIST_HEADERS, ""Imajinasi"Imajinasi Roleplay "WHITE"- GPS", minsty, "Pilih", "Batal");
                }                
                case 13:
                {
                    DisablePlayerRaceCheckpoint(playerid);
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil menghapus Checkpoint");
                    pMapCP[playerid] = false;
                }
                case 14:
                {
                    if(!IsValidDynamicMapIcon(SharelocSender[playerid]))
                    {
                        return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada yang mengirimkan anda share lokasi!");
                    }
                    else
                    {
                        ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil menghapus Shareloc!");

                        DestroyDynamicMapIcon(SharelocSender[playerid]);
                        SharelocSender[playerid] = INVALID_STREAMER_ID;
                        SharelocTimer[playerid] = 0;
                    }
                }
            }
        }
        case LokasiPertokoan:
        {
            if(!response)
            {
                return ShowPlayerDialog(playerid, LokasiGps, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Lokasi",
                "Lokasi Umum\
                \n"GRAY"Lokasi Pekerjaan\
                \nLokasi Hobi\
                \n"GRAY"Lokasi Pertokoan\
                \nATM Terdekat\
                \n"GRAY"Garasi Umum Terdekat\
                \nTong Sampah Terdekat\
                \n"GRAY"Warung Terdekat\
                \nPom Bensin Terdekat\
                \n"GRAY"Bengkel Modshop\
                \nRumah Saya\
                \n"GRAY"Workshop\
                \nGudang Kota\
                \n"RED"(Disable Checkpoint)\
                \n"RED"(Disable Shareloc)", "Pilih", "Batal");
            }
            if(response)
            {
                switch(listitem)
                {
                    case 0: // pakaian
                    {
                        new id = ClothesStoreNearby(playerid);
                        if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada Toko Pakaian terdekat dari posisi anda!");

                        SetPlayerRaceCheckpoint(playerid, 1, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], 5.0);
                        pMapCP[playerid] = true;
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                    }
                    case 1: // elektronik
                    {
                        new id = ElectronicStoreNearby(playerid);
                        if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada Toko Elektronik terdekat dari posisi anda!");

                        SetPlayerRaceCheckpoint(playerid, 1, WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], WarungData[id][warungPOS][0], WarungData[id][warungPOS][1], WarungData[id][warungPOS][2], 5.0);
                        pMapCP[playerid] = true;
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                    }
                }
            }
        }
        case LokasiPekerjaan:
        {
            if(!response) 
            {
                return ShowPlayerDialog(playerid, LokasiGps, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Lokasi",
                "Lokasi Umum\
                \n"GRAY"Lokasi Pekerjaan\
                \nLokasi Hobi\
                \n"GRAY"Lokasi Pertokoan\
                \nATM Terdekat\
                \n"GRAY"Garasi Umum Terdekat\
                \nTong Sampah Terdekat\
                \n"GRAY"Warung Terdekat\
                \nPom Bensin Terdekat\
                \n"GRAY"Bengkel Modshop\
                \nRumah Saya\
                \n"GRAY"Workshop\
                \nGudang Kota\
                \n"RED"(Disable Checkpoint)\
                \n"RED"(Disable Shareloc)", "Pilih", "Batal");
            }
            if(response)
            {
                switch(listitem)
                {
                    case 0:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -2521.1821, -621.8853, 132.7418, -2521.1821, -621.8853, 132.7418, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 1:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 96.0680,-272.6256,1.5781, 96.0680,-272.6256,1.5781, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 2:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1546.5872,28.7098,24.1406, 1546.5872,28.7098,24.1406, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 3:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1911.8618,164.4111,37.1539, 1911.8618,164.4111,37.1539, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 4:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -547.7806, -185.1288, 78.4063, -547.7806, -185.1288, 78.4063, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 5:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -376.1269, -1439.9231, 25.7266, -376.1269, -1439.9231, 25.7266, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 6:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 3.9224, 66.8390, 3.1172, 3.9224, 66.8390, 3.1172, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 7:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -439.7503, -62.3335, 58.9720, -439.7503, -62.3335, 58.9720, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 8:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -1704.2260, 49.6503, 3.5495, -1704.2260, 49.6503, 3.5495, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 9:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 306.8608,1141.2626,8.5859, 306.8608,1141.2626,8.5859, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 10:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 686.9853,895.7302,-39.5328, 686.9853,895.7302,-39.5328, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 11:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -412.7031, 1197.8976, 2.2932, -412.7031, 1197.8976, 2.2932, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 12:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2182.6780,-2259.5010,13.3878, 2182.6780,-2259.5010,13.3878, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 13:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2348.7112, -82.1600, 26.3359, 2348.7112, -82.1600, 26.3359, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 14:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 676.1796,-619.9467,16.3359, 676.1796,-619.9467,16.3359, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 15:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2297.9268, 2764.1992, 10.8203, 2297.9268, 2764.1992, 10.8203, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 16:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -31.6359, 1386.9554, 9.1719, -31.6359, 1386.9554, 9.1719, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 17:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 471.9127, 1299.1512, 9.7176, 471.9127, 1299.1512, 9.7176, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 18:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 497.5595, 1518.7350, 1.0000, 497.5595, 1518.7350, 1.0000, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 19:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 279.6849, 1348.9515, 10.5859, 279.6849, 1348.9515, 10.5859, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 20:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1929.94, -1776.33, 13.5469, 1929.94, -1776.33, 13.5469, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 21:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 111.3999, -1895.6553, 2.9408, 111.3999, -1895.6553, 2.9408, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 22:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 352.4596, -2669.7722, -0.0401, 352.4596, -2669.7722, -0.0401, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 23:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1037.3827, -305.1682, 74.0922, 1037.3827, -305.1682, 74.0922, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 24:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2118.1814, -1188.9286, 23.9358, 2118.1814, -1188.9286, 23.9358, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 25:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 604.9979, -1508.6365, 14.9549, 604.9979, -1508.6365, 14.9549, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 26:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1001.3441, -1445.8391, 13.5469, 1001.3441, -1445.8391,13.5469, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 27:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -1723.7289, -63.5671, 3.5547, -1723.7289, -63.5671,3.5547, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                }
            }
        }
        case LokasiUmum:
        {
            if(!response)
            {
                return ShowPlayerDialog(playerid, LokasiGps, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Lokasi",
                "Lokasi Umum\
                \n"GRAY"Lokasi Pekerjaan\
                \nLokasi Hobi\
                \n"GRAY"Lokasi Pertokoan\
                \nATM Terdekat\
                \n"GRAY"Garasi Umum Terdekat\
                \nTong Sampah Terdekat\
                \n"GRAY"Warung Terdekat\
                \nPom Bensin Terdekat\
                \n"GRAY"Bengkel Modshop\
                \nRumah Saya\
                \n"GRAY"Workshop\
                \nGudang Kota\
                \n"RED"(Disable Checkpoint)\
                \n"RED"(Disable Shareloc)", "Pilih", "Batal");
            }
            if(response)
            {
                switch(listitem)
                {
                    case 0:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1133.9788, -2036.3195, 69.0078, 1133.9788, -2036.3195, 69.0078, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 1:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1621.322753, -1274.616088, 17.495567, 1621.322753, -1274.616088, 17.495567, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }                    
                    case 2:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 964.388366, 2412.517089, 10.854866, 964.388366, 2412.517089, 10.854866, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 3:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1,1377.666, 719.911, 10.820, 1377.666, 719.911, 10.820, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 4:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -60.624, -1580.780, 2.617, -60.624, -1580.780, 2.617, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 5:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1425.252563, 1058.143066, 10.517755, 1425.252563, 1058.143066, 10.517755, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 6:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 51.3536, 1222.1011, 18.9170, 51.3536, 1222.1011, 18.9170, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 7:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 654.846496, -1850.818237, 6.115149, 654.846496, -1850.818237, 6.115149, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 8:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2767.8762, -2435.3850, 13.6850, 2767.8762, -2435.3850, 13.6850, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 9:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2422.3745,-1234.7301,24.5338, 2422.3745,-1234.7301,24.5338, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 10:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2224.1106,-1152.6976,25.7977, 2224.1106,-1152.6976,25.7977, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 11:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 88.39, -280.85, 1.57, 88.39, -280.85, 1.57, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 12:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1134.388549, -961.028686, 42.707996, 1134.388549, -961.028686, 42.707996, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 13:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 394.581726, -1341.149047, 14.761465, 394.581726, -1341.149047, 14.761465, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 14:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2076.8, -2033.33, 13.5469, 2076.8, -2033.33, 13.5469, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 15:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -136.0707, 1116.6332, 20.1966, -136.0707, 1116.6332, 20.1966, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 16:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2223.5115, -1143.1807, 25.7969, 2223.5115, -1143.1807, 25.7969, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 17:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 221.2156, -117.9283, 1.5781, 221.2156, -117.9283, 1.5781, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 18:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2183.3953, -1794.7335, 13.3606, 2183.3953, -1794.7335, 13.3606, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 19:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 1386.4347, 293.3129, 19.5469, 1386.4347, 293.3129, 19.5469, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 20:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -3.3894, 1212.4326, 19.3527, -3.3894, 1212.4326, 19.3527, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 21:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 836.0340, -2008.6443, 12.8672, 836.0340, -2008.6443, 12.8672, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 22:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2222.4739, 1837.4940, 10.8203, 2222.4739, 1837.4940, 10.8203, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 23:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -2442.7500, 755.2680, 35.2719, -2442.7500, 755.2680, 35.2719, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 24:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2613.9070, 732.6111, 10.8203, 2613.9070, 732.6111, 10.8203, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 25:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2819.3628, -1086.1926, 30.7333, 2819.3628, -1086.1926, 30.7333, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 26:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -2882.8586, 464.0963, 4.9141, -2882.8586, 464.0963, 4.9141, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 27:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 2832.8967, 1903.7570, 10.8203, 2832.8967, 1903.7570, 10.8203, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                }
            }
        }
        case LokasiHobi:
        {
            if(!response) 
            {
                return ShowPlayerDialog(playerid, LokasiGps, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Lokasi",
                "Lokasi Umum\
                \n"GRAY"Lokasi Pekerjaan\
                \nLokasi Hobi\
                \n"GRAY"Lokasi Pertokoan\
                \nATM Terdekat\
                \n"GRAY"Garasi Umum Terdekat\
                \nTong Sampah Terdekat\
                \n"GRAY"Warung Terdekat\
                \nPom Bensin Terdekat\
                \n"GRAY"Bengkel Modshop\
                \nRumah Saya\
                \n"GRAY"Workshop\
                \nGudang Kota\
                \n"RED"(Disable Checkpoint)\
                \n"RED"(Disable Shareloc)", "Pilih", "Batal");
            }
            if(response)
            {
                switch(listitem)
                {
                    case 0:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 383.1566,-2075.2007,7.8359, 383.1566,-2075.2007,7.8359, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 1:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -2057.3674, -2464.5283, 31.1797, -2057.3674, -2464.5283, 31.1797, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 2:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, -387.3126,-2259.8279,45.5646, -387.3126,-2259.8279,45.5646, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }
                    case 3:
                    {   
                        SetPlayerRaceCheckpoint(playerid, 1, -1693.3431,-88.9088,3.5654, -1693.3431,-88.9088,3.5654, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }                    
                }
            }
        }
        case LokasiGudang:
        {
            if(!response) 
            {
                return ShowPlayerDialog(playerid, LokasiGps, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Lokasi",
                "Lokasi Umum\
                \n"GRAY"Lokasi Pekerjaan\
                \nLokasi Hobi\
                \n"GRAY"Lokasi Pertokoan\
                \nATM Terdekat\
                \n"GRAY"Garasi Umum Terdekat\
                \nTong Sampah Terdekat\
                \n"GRAY"Warung Terdekat\
                \nPom Bensin Terdekat\
                \n"GRAY"Bengkel Modshop\
                \nRumah Saya\
                \n"GRAY"Workshop\
                \nGudang Kota\
                \n"RED"(Disable Checkpoint)\
                \n"RED"(Disable Shareloc)", "Pilih", "Batal");
            }
            if(response)
            {
                switch(listitem)
                {
                    case 0:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 394.534484,-1910.525146,7.835937, 394.534484,-1910.525146,7.835937, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }  
                    case 1:
                    {
                        SetPlayerRaceCheckpoint(playerid, 1, 394.534484,-1910.525146,7.835937, 394.534484,-1910.525146,7.835937, 5.0);
                        Info(playerid, "Silahkan ikuti tanda blip yang sudah ditandai pada map anda");
                        pMapCP[playerid] = true;
                    }                      
                }
            }    
        }                          
    }
    return 1;
}


ShowPlayerTwitterPage(playerid)
{
    mysql_query(mdb_query, "SELECT * FROM `tweets` WHERE `ID`=1 ORDER BY `TwitterDate` ASC LIMIT 30");
    new rows = cache_num_rows(), list[4500], tempTweetFrom[24], tempTweetDate[64], tempTweetText[128];
    if(rows)
    {
        if(rows >= 30)
        {
            mysql_tquery(mdb_query, "DELETE FROM `tweets` WHERE `ID`=1");
        }

        format(list, sizeof(list), "Username\tTanggal\tPostingan\n");
        for(new i; i < rows; ++i)
        {
            cache_get_value_name(i, "TwitterFrom", tempTweetFrom);
            cache_get_value_name(i, "TwitterDate", tempTweetDate);
            cache_get_value_name(i, "TwitterText", tempTweetText);

            format(list, sizeof(list), "%s"VTWITTER"@%s\t"GRAY"%s\t"WHITE"%s\n", list, tempTweetFrom, tempTweetDate, tempTweetText);
        }
        ShowPlayerDialog(playerid, DIALOG_TWITTER_POST, DIALOG_STYLE_TABLIST_HEADERS, ""Imajinasi"Imajinasi Roleplay "WHITE"- Tweets", list, "Tweet", "Kembali");
    }
    else 
    {
        format(list, sizeof(list), "Username\tTanggal\tPostingan\n");
        format(list, sizeof(list), "%sJadilah orang pertama yang membagikan Tweet", list);
        ShowPlayerDialog(playerid, DIALOG_TWITTER_POST_EMPTY, DIALOG_STYLE_TABLIST_HEADERS, ""Imajinasi"Imajinasi Roleplay "WHITE"- Tweets", list, "Tweet", "Kembali");
    }
	return 1;
}

ShowPlayerYellowsPage(playerid)
{
    AccountData[playerid][CurrentlyReadYellow] = true;
    mysql_query(mdb_query, "SELECT * FROM `yellowpages` WHERE `ID`=1 ORDER BY `YellowDate` ASC LIMIT 30");
    new rowcount = cache_num_rows(), list[4500], tempYellowFrom[24], tempYellowDate[64], tempYellowText[128], tempYellowPhone[24];
    if(rowcount)
    {
        if(rowcount >= 30)
        {
            mysql_tquery(mdb_query, "DELETE FROM `yellowpages` WHERE `ID`=1");
        }

        format(list, sizeof(list), "Nama\tTanggal\tIklan\n");
        for(new i; i < rowcount; ++i)
        {
            cache_get_value_name(i, "YellowFrom", tempYellowFrom);
            cache_get_value_name(i, "YellowPhone", tempYellowPhone);
            cache_get_value_name(i, "YellowDate", tempYellowDate);
            cache_get_value_name(i, "YellowText", tempYellowText);
            
            if(strlen(tempYellowText) > 24) {
                format(list, sizeof(list), "%s"YELLOW"%s - %s\t"GRAY"%s\t"WHITE"%.24s...\n", list, tempYellowFrom, tempYellowPhone, tempYellowDate, tempYellowText);
            } else format(list, sizeof(list), "%s"YELLOW"%s - %s\t"GRAY"%s\t"WHITE"%s\n", list, tempYellowFrom, tempYellowPhone, tempYellowDate, tempYellowText);
        }
        ShowPlayerDialog(playerid, DIALOG_YELLOW_PAGE, DIALOG_STYLE_TABLIST_HEADERS, ""Imajinasi"Imajinasi Roleplay "WHITE"- Yellow Pages", list, "Iklan", "Kembali");
    }
    else
    {
        format(list, sizeof(list), "Nama\tTanggal\tIklan\n");
        format(list, sizeof(list), "%sJadilah orang pertama yang membuat iklan!", list);
        ShowPlayerDialog(playerid, DIALOG_YELLOW_PAGE_EMPTY, DIALOG_STYLE_TABLIST_HEADERS, ""Imajinasi"Imajinasi Roleplay "WHITE"- Yellow Pages", list, "Iklan", "Kembali");
    }
    return 1;
}

forward SearchBankRek(playerid, norekening);
public SearchBankRek(playerid, norekening)
{
    if(!cache_num_rows())
    {
        ShowTDN(playerid, NOTIFICATION_ERROR, "Nomor rekening tidak terdaftar!");
        return 1;
    }
    else 
    {
        new ownerRek = GetRekeningOwner(norekening);
        if(!IsPlayerConnected(ownerRek)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");
        AccountData[playerid][pTransferRek] = norekening;
        ShowPlayerDialog(playerid, DialogTransfer1, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Transfer",
        "Mohon masukkan jumlah nominal yang ingin anda kirim ke rekening tersebut:", "Kirim", "Batal");
    }
    return 1;
}

Dialog:SettingPhone(playerid, response, listitem, inputtext[])
{
    if(response)
    {
        switch(listitem)
        {
            case 0: //ttg ponsel
            {
                static minsty[200];
                format(minsty, sizeof(minsty), "Dphone X25 Milik: %s\
                \nNomor Telepon: %s\
                \nNama Series Model: X25\
                \nNomor Serial: VR81AXS23S33\nIMEI (slot 1): 7182991211\nIMEI (slot 2): 9928192882", ReturnName(playerid), AccountData[playerid][pPhone]);
                ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_MSGBOX, ""Imajinasi"Imajinasi Roleplay "WHITE"- Tentang Ponsel", minsty, "Tutup", "");
            }
            case 1: // Ubah Nada Dering
            {
                Dialog_Show(playerid, PhoneRingtone, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Ubah Nada Dering",
                "Mohon masukkan link mp3 yang sudah anda upload dimanapun itu untuk dijadikan sebagai nada dering saat ada panggilan masuk\
                \nNOTE: Tidak dapat memasukkan link langsung dari YouTube!", "Submit", "Batal");
            }
            case 2: // Hapus Nada Dering
            {
                AccountData[playerid][phoneCallRingtone][0] = EOS;
                ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil menghapus nada dering!");
            }
            case 3: // Mode Pesawat
            {
                switch(AccountData[playerid][phoneAirplaneMode])
                {
                    case false:
                    {
                        AccountData[playerid][phoneAirplaneMode] = true;
                        ShowTDN(playerid, NOTIFICATION_INFO, "Anda mengaktifkan Mode Pesawat");
                    }
                    case true:
                    {
                        AccountData[playerid][phoneAirplaneMode] = false;
                        ShowTDN(playerid, NOTIFICATION_INFO, "Anda menonaktifkan Mode Pesawat");
                    }
                }
            }
        }
    }
    else ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan!");
    return 1;
}

Dialog:PhoneRingtone(playerid, response, listitem, inputtext[])
{
    if(!response) 
    {
        return Dialog_Show(playerid, SettingPhone, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Pengaturan",
        "Tentang Ponsel\
        \nUbah Nada Dering Telepon", "Pilih", "Batal");
    }

    if(isnull(inputtext)) return Dialog_Show(playerid, PhoneRingtone, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Ubah Nada Dering",
    "Error: Tidak dapat diisi kosong!\nMohon masukkan link mp3 yang sudah anda upload dimanapun itu untuk dijadikan sebagai nada dering saat ada panggilan masuk\
    \nNOTE: Tidak dapat memasukkan link langsung dari YouTube!", "Submit", "Batal");
    
    if(IsNumeric(inputtext)) return Dialog_Show(playerid, PhoneRingtone, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Ubah Nada Dering",
    "Error: Tidak dapat diisi angka!\nMohon masukkan link mp3 yang sudah anda upload dimanapun itu untuk dijadikan sebagai nada dering saat ada panggilan masuk\
    \nNOTE: Tidak dapat memasukkan link langsung dari YouTube!", "Submit", "Batal");

    format(AccountData[playerid][phoneCallRingtone], 128, inputtext);
    ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil mengubah nada dering panggilan!");
    return 1;
}

Dialog:GpsMenu(playerid, response, listitem, inputtext[])
{
    if(response)
    {
        switch(listitem)
        {
            case 0: //Lokasi GPS
            {
                ShowPlayerDialog(playerid, LokasiGps, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Lokasi",
                "Lokasi Umum\
                \n"GRAY"Lokasi Pekerjaan\
                \nLokasi Hobi\
                \n"GRAY"Lokasi Pertokoan\
                \nATM Terdekat\
                \n"GRAY"Garasi Umum Terdekat\
                \nTong Sampah Terdekat\
                \n"GRAY"Warung Terdekat\
                \nPom Bensin Terdekat\
                \n"GRAY"Bengkel Modshop\
                \nRumah Saya\
                \n"GRAY"Workshop\
                \nGudang Kota\
                \n"RED"(Disable Checkpoint)\
                \n"RED"(Disable Shareloc)", "Pilih", "Batal");
            }
            case 1: // Emergency Signal
            {
                if(AccountData[playerid][pFaction] != FACTION_EMS) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan anggota Mitra EMS Imajinasi!");
                if(!AccountData[playerid][pDutyEms]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak sedang duty EMS!");

                new list[525], count = 0;
                format(list, sizeof(list), "#No\tKorban\tLokasi\n");
                foreach(new i : Player) if (AccountData[i][pSpawned] && SignalExists[i])
                {
                    format(list, sizeof(list), "%s%d\t%s(%d)\t%s\n", list, count, ReturnName(i), i, GetLocation(SignalPos[i][0], SignalPos[i][1], SignalPos[i][2]));
                    ListSignal[playerid][count ++] = i;
                }

                if(count == 0)
                {
                    return Dialog_Show(playerid, ShowOnly, DIALOG_STYLE_MSGBOX, ""Imajinasi"Imajinasi Roleplay "WHITE"- Emergency Signal",
                    "Tidak ada seseorang manapun yang mengirim Emergency Signal!", "Tutup", "");
                }

                Dialog_Show(playerid, EmergencySignal, DIALOG_STYLE_TABLIST_HEADERS, ""Imajinasi"Imajinasi Roleplay "WHITE"- Emergency Signal", list, "Pilih", "Batal");
            }
        }
    }
    return 1;
}

Dialog:EmergencySignal(playerid, response, listitem, inputtext[])
{
    if(response)
    {   
        if(AccountData[playerid][pFaction] != FACTION_EMS) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan anggota Mitra EMS Imajinasi!");
        if(!AccountData[playerid][pDutyEms]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak sedang duty EMS!");

        new id = ListSignal[playerid][listitem];
        if(!IsPlayerConnected(id)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain tersebut tidak terkoneksi ke server!");
        if(!SignalExists[id]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Emergency signal sudah tidak ada/dihandle anggota lain!"); 
        // if(!AccountData[id][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Orang yang mengirim signal sudah terbangun dari pingsannya!");
        
        new emsName[MAX_PLAYER_NAME];
        new injuredName[MAX_PLAYER_NAME];
        GetPlayerName(playerid, emsName, sizeof(emsName));
        GetPlayerName(id, injuredName, sizeof(injuredName));
        
        SetPlayerRaceCheckpoint(playerid, 1, SignalPos[id][0], SignalPos[id][1], SignalPos[id][2], 0.0, 0.0, 0.0, 4.0);
        Info(playerid, "Anda telah menerima signal emergency di daerah "YELLOW"%s", GetLocation(SignalPos[id][0], SignalPos[id][1], SignalPos[id][2]));
        Info(id, "Anggota Mitra EMS telah merespon signal emergency yang anda kirim. Harap tunggu di lokasi hingga petugas datang!");
        
        new broadcastMsg[128];
        format(broadcastMsg, sizeof(broadcastMsg), "[EMS] Petugas %s telah menerima panggilan darurat dari %s!", emsName, injuredName);
        SendClientMessageToAll(0xFF69B4AA, broadcastMsg); // Kode warna PINK 
        
        SignalExists[id] = false;
        SignalPos[id][0] = SignalPos[id][1] = SignalPos[id][2] = 0.0;
        pMapCP[playerid] = true;
    }
    else ShowTDN(playerid, NOTIFICATION_ERROR, "Anda telah membatalkan pilihan!");
    return 1;
}

Dialog:CALLCENTER_POLISI(playerid, response, listitem, inputtext[])
{
    if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan!");
    new Float:X, Float:Y, Float:Z;
    GetPlayerPos(playerid, X, Y, Z);

    if(isnull(inputtext)) return Dialog_Show(playerid, CALLCENTER_POLISI, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Panggilan Darurat Polisi",
    "Error: Tidak dapat diisi kosong!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak kepolisian dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke kepolisian:", "Kirim", "Batal");

    if(IsNumeric(inputtext)) return Dialog_Show(playerid, CALLCENTER_POLISI, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Panggilan Darurat Polisi",
    "Error: Tidak dapat diisi angka!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak kepolisian dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke kepolisian:", "Kirim", "Batal");
    
    if(strlen(inputtext) > 128) return Dialog_Show(playerid, CALLCENTER_POLISI, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Panggilan Darurat Polisi",
    "Error: Tidak dapat lebih dari 128 characters!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak kepolisian dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke kepolisian:", "Kirim", "Batal");
    
    if(AccountData[playerid][pHotlineTime] >= gettime()){
		ShowTDN(playerid, NOTIFICATION_WARNING, sprintf("Mohon menunggu %d detik untuk mengirim hotline ke factions kembali", AccountData[playerid][pHotlineTime] - gettime()));
		return 1;
	}
	foreach(new i : Player) {
		if(AccountData[i][pFaction] == 1 && AccountData[i][pDutyPD]) {
			SendClientMessageEx(i, -1, ""GRAY"[Pesan Darurat] "WHITE"Laporan Dari %s (%d) // Lokasi: %s // No Telpon: %s", GetRPName(playerid), playerid, GetLocation(X, Y, Z), AccountData[playerid][pPhone]);
			SendClientMessageEx(i, -1, ""WHITE"-> %s", inputtext);
		}
	}
	AccountData[playerid][pHotlineTime] = gettime() + 180;
	SendClientMessageEx(playerid, -1, ""GRAY"[Pesan Darurat] "WHITE"Laporan Dari %s (%d) // Lokasi: %s // No Telpon: %s", GetRPName(playerid), playerid, GetLocation(X, Y, Z), AccountData[playerid][pPhone]);
	SendClientMessageEx(playerid, -1, ""WHITE"-> %s", inputtext);
	ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil mengirim pesan darurat kepolisian!");
    return 1;
}

Dialog:CALLCENTER_EMS(playerid, response, listitem, inputtext[])
{
    if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan!");
    new Float:X, Float:Y, Float:Z;
    GetPlayerPos(playerid, X, Y, Z);

    if(isnull(inputtext)) return Dialog_Show(playerid, CALLCENTER_EMS, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Panggilan Darurat Rumah Sakit",
    "Error: Tidak dapat diisi kosong!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Rumah Sakit dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Rumah Sakit:", "Kirim", "Batal");

    if(IsNumeric(inputtext)) return Dialog_Show(playerid, CALLCENTER_EMS, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Panggilan Darurat Rumah Sakit",
    "Error: Tidak dapat diisi angka!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Rumah Sakit dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Rumah Sakit:", "Kirim", "Batal");
    
    if(strlen(inputtext) > 128) return Dialog_Show(playerid, CALLCENTER_EMS, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Panggilan Darurat Rumah Sakit",
    "Error: Tidak dapat lebih dari 128 characters!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Rumah Sakit dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Rumah Sakit:", "Kirim", "Batal");
    
    if(AccountData[playerid][pHotlineTime] >= gettime())
	{
		ShowTDN(playerid, NOTIFICATION_WARNING, sprintf("Mohon menunggu %d detik untuk mengirim hotline factions kembali!", AccountData[playerid][pHotlineTime] - gettime()));
		return 1;
	}

	foreach(new i : Player) {
		if(AccountData[i][pFaction] == 3 && AccountData[i][pDutyEms]) {
			SendClientMessageEx(i, -1, ""C_DOKTER"[EMS CALL CENTER]"WHITE" Laporan Dari %s (%d) // Lokasi: %s // No Telpon: %s", GetRPName(playerid), playerid, GetLocation(X, Y, Z), AccountData[playerid][pPhone]);
			SendClientMessageEx(i, -1, ""WHITE"-> %s", inputtext);
		}
	}
	AccountData[playerid][pHotlineTime] = gettime() + 180;
	SendClientMessageEx(playerid, -1, ""C_DOKTER"[EMS CALL CENTER]"WHITE" Laporan Dari %s (%d) // Lokasi: %s // No Telpon: %s", GetRPName(playerid), playerid, GetLocation(X, Y, Z), AccountData[playerid][pPhone]);
	SendClientMessageEx(playerid, -1, ""WHITE"-> %s", inputtext);
	ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil mengirim pesan darurat Rumah Sakit!");
    return 1;
}

Dialog:CALLCENTER_PEMDA(playerid, response, listitem, inputtext[])
{
    if(!response) return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan!");
    new Float:X, Float:Y, Float:Z;
    GetPlayerPos(playerid, X, Y, Z);

    if(isnull(inputtext)) return Dialog_Show(playerid, CALLCENTER_PEMDA, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Call Center Pemerintah",
    "Error: Tidak dapat diisi kosong!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Pemerintah dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Pemerintah:", "Kirim", "Batal");

    if(IsNumeric(inputtext)) return Dialog_Show(playerid, CALLCENTER_PEMDA, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Call Center Pemerintah",
    "Error: Tidak dapat diisi angka!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Pemerintah dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Pemerintah:", "Kirim", "Batal");
    
    if(strlen(inputtext) > 128) return Dialog_Show(playerid, CALLCENTER_PEMDA, DIALOG_STYLE_INPUT, ""Imajinasi"Imajinasi Roleplay "WHITE"- Call Center Pemerintah",
    "Error: Tidak dapat lebih dari 128 characters!\nMasukkan kendala anda yang ingin dilaporkan kepada pihak Pemerintah dibawah ini\
    \nJelaskan detail dan kendala yang sedang kamu alami dan ingin lapor ke Pemerintah:", "Kirim", "Batal");
    
    if(AccountData[playerid][pHotlineTime] >= gettime())
	{
		ShowTDN(playerid, NOTIFICATION_WARNING, sprintf("Mohon menunggu %d detik untuk mengirim hotline factions kembali!", AccountData[playerid][pHotlineTime] - gettime()));
		return 1;
	}

	foreach(new i : Player) {
		if(AccountData[i][pFaction] == FACTION_PEMERINTAH && AccountData[i][pDutyPemerintah]) {
			SendClientMessageEx(i, -1, ""SKYBLUE"[PEMDA CALL CENTER]"WHITE" Laporan Dari %s (%d) // Lokasi: %s // No Telpon: %s", GetRPName(playerid), playerid, GetLocation(X, Y, Z), AccountData[playerid][pPhone]);
			SendClientMessageEx(i, -1, ""WHITE"-> %s", inputtext);
		}
	}
	AccountData[playerid][pHotlineTime] = gettime() + 180;
	SendClientMessageEx(playerid, -1, ""SKYBLUE"[PEMDA CALL CENTER]"WHITE" Laporan Dari %s (%d) // Lokasi: %s // No Telpon: %s", GetRPName(playerid), playerid, GetLocation(X, Y, Z), AccountData[playerid][pPhone]);
	SendClientMessageEx(playerid, -1, ""WHITE"-> %s", inputtext);
	ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil mengirim pesan ke Call Center Pemerintah!");
    return 1;
}

// ------------------------------------------------------------------------------- //
ptask CallTimer_Update[1000](playerid)
{
    if(AccountData[playerid][phoneDurringConversation] && AccountData[playerid][phoneCallingWithPlayerID] != INVALID_PLAYER_ID)
    {
        new times[3];
        GetElapsedTime(AccountData[playerid][phoneCallingTime]++, times[0], times[1], times[2]);
        PlayerTextDrawSetString(playerid, StatusDialingTD[playerid], sprintf("%02d:%02d:%02d", times[0], times[1], times[2]));
        PlayerTextDrawShow(playerid, StatusDialingTD[playerid]);
        if(!AccountData[playerid][phoneShown]){
            PlayerTextDrawHide(playerid, StatusDialingTD[playerid]);
        }
    }
    return 1;
}

ptask SharelocRemove[1000](playerid)
{
    if(SharelocTimer[playerid] > 0)
    {
        SharelocTimer[playerid] --;
        if(!SharelocTimer[playerid])
        {
            if(SharelocSender[playerid] != INVALID_STREAMER_ID)
                DestroyDynamicMapIcon(SharelocSender[playerid]), SharelocSender[playerid] = INVALID_STREAMER_ID;
            
            SharelocTimer[playerid] = 0;
        }
    }
    return 1;
}

ptask PhoneClockTD[1000](playerid)
{
    new datestring[64];
    new hours,
    minutes,
    seconds,
    days,
    months,
    years;
    new MonthName[12][] =
    {
        "January", "February", "March", "April", "May", "June",
        "July",	"August", "September", "October", "November", "December"
    };
    getdate(years, months, days);
    gettime(hours, minutes, seconds);
    format(datestring, sizeof datestring, "%s%d_%s_%s%d", ((days < 10) ? ("0") : ("")), days, MonthName[months-1], (years < 10) ? ("0") : (""), years);
    PlayerTextDrawSetString(playerid, ATRP_Phone[playerid][17], datestring);
    PlayerTextDrawSetString(playerid, ATRP_Phone[playerid][16], sprintf("%02d:%02d", up_minutes, up_seconds));
    return 1;
}

// DialogPages:ContactListDialog(playerid, response, listitem, inputtext[])
// {
//     if(response)
//     {
//         if(listitem == INVALID_LISTITEM) return 0;

//         new index =  ListedContacts[playerid][listitem];

//         AccountData[playerid][pContact] = index;

//         ShowPlayerDialog(playerid, DialogContactMenu, DIALOG_STYLE_LIST, sprintf(""Imajinasi"Imajinasi Roleplay"WHITE" - %s", ContactData[playerid][AccountData[playerid][pContact]][contactName]), 
//         "Panggil\
//         \n"GRAY"Whatsapp\
//         \nShareloc\
//         \n"GRAY"Edit Nama Kontak\
//         \nEdit Nomor Kontak\
//         \n"GRAY"Blokir/Buka Blokir Kontak\
//         \nHapus Kontak", "Pilih", "Batal");
//     }
//     else
//     {
//         ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah membatalkan pilihan");
//     }

//     for(new i = 0; i < MAX_CONTACTS; i++) {
//         ListedContacts[playerid][i] = -1;
//     }
//     return 1;
// }