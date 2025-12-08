//Info textdraw
new Text:StressPurple[1]; 
new Text: RobberyGlobalTD[5];
new Text: gServerTextdraws[1];
new Text: Imajinasi_WM[3];
new Text: MRP_Warning[10];
new Text: gServerMessage[7];
new Text:AsuransiTD[5];
new Text:KickZ2[13];
new Text: AnnouncementTD[7];  
new Text: exeren[7];

new PlayerText:TogAmmo[MAX_PLAYERS];
new PlayerText:WeaponNameTD[MAX_PLAYERS];
new Text:AmmoNewTD[1];

new Text:BlackJackTD[10];

new Text: RadialTD1[34];
new Text: RadialTD2[31];
//new Text: serverLogin[32];
new Text:SHOWFPS[5];
new Text:KillEffectTD;

new PlayerText:SHOWFPSDISPLAY[MAX_PLAYERS][3];
new PlayerText: InformasiPlayer[MAX_PLAYERS][6];
new PlayerText: RobberyTextTD[MAX_PLAYERS][1];
new PlayerText: ATRP_Injured[MAX_PLAYERS][24];
new PlayerText: ProgressBar[MAX_PLAYERS][4];
new PlayerText: P_MENUCLOTHES[MAX_PLAYERS][12];
new PlayerText: P_CLOTHESSELECT[MAX_PLAYERS][16];
new PlayerText: VR_BANNEDTD[MAX_PLAYERS][21];
new PlayerText: BusWait[MAX_PLAYERS][1];
new PlayerText: VR_KARUNG[MAX_PLAYERS][1];
new PlayerText: ktpTextdraws[MAX_PLAYERS][26];
new PlayerText: KTAtextdraws[MAX_PLAYERS][27];
new PlayerText: VR_ATMTD[MAX_PLAYERS][44];
new PlayerText: HbeStuffs[MAX_PLAYERS][33];
new PlayerText: VehicleTextdraws[MAX_PLAYERS][6];
new PlayerText: FPStextdraws[MAX_PLAYERS][1];
new PlayerText: PipemTD[MAX_PLAYERS][30];
new PlayerText: ATRP_Gym[MAX_PLAYERS][3];

new PlayerText: hbelogo[MAX_PLAYERS][30];
new PlayerText: angkadarah[MAX_PLAYERS];
new PlayerText: angkaarmor[MAX_PLAYERS];
new PlayerText: angkalapar[MAX_PLAYERS];
new PlayerText: angkahaus[MAX_PLAYERS];
new PlayerText: angkastress[MAX_PLAYERS];

/* San Andreas Hud */

new PlayerText:ATRP_Footer[MAX_PLAYERS];
new PlayerText: SpectatorInfoTD[MAX_PLAYERS][8];
new PlayerText: ATRP_DutyTD[MAX_PLAYERS][1];

CreatePlayerTextDraws(playerid)
{    

    //kill
	KillEffectTD = TextDrawCreate(-111.000000, -147.000000, "ld_dual:light");
	TextDrawFont(KillEffectTD, 4);
	TextDrawLetterSize(KillEffectTD, 0.600000, 2.000000);
	TextDrawTextSize(KillEffectTD, 855.000000, 775.500000);
	TextDrawSetOutline(KillEffectTD, 1);
	TextDrawSetShadow(KillEffectTD, 0);
	TextDrawAlignment(KillEffectTD, 1);
	TextDrawColor(KillEffectTD, -1105687914);
	TextDrawBackgroundColor(KillEffectTD, 255);
	TextDrawBoxColor(KillEffectTD, 50);
	TextDrawUseBox(KillEffectTD, 1);
	TextDrawSetProportional(KillEffectTD, 1);
	TextDrawSetSelectable(KillEffectTD, 0);

    //FPS
    SHOWFPSDISPLAY[playerid][0] = CreatePlayerTextDraw(playerid, 22.000000, 3.000000, "FPS_:_75");
    PlayerTextDrawFont(playerid, SHOWFPSDISPLAY[playerid][0], 1);
    PlayerTextDrawLetterSize(playerid, SHOWFPSDISPLAY[playerid][0], 0.141665, 0.850000);
    PlayerTextDrawTextSize(playerid, SHOWFPSDISPLAY[playerid][0], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, SHOWFPSDISPLAY[playerid][0], 0);
    PlayerTextDrawSetShadow(playerid, SHOWFPSDISPLAY[playerid][0], 0);
    PlayerTextDrawAlignment(playerid, SHOWFPSDISPLAY[playerid][0], 2);
    PlayerTextDrawColor(playerid, SHOWFPSDISPLAY[playerid][0], -1);
    PlayerTextDrawBackgroundColor(playerid, SHOWFPSDISPLAY[playerid][0], 255);
    PlayerTextDrawBoxColor(playerid, SHOWFPSDISPLAY[playerid][0], 50);
    PlayerTextDrawUseBox(playerid, SHOWFPSDISPLAY[playerid][0], 0);
    PlayerTextDrawSetProportional(playerid, SHOWFPSDISPLAY[playerid][0], 1);
    PlayerTextDrawSetSelectable(playerid, SHOWFPSDISPLAY[playerid][0], 0);

    SHOWFPSDISPLAY[playerid][1] = CreatePlayerTextDraw(playerid, 69.000000, 3.000000, "PING_:_16MS");
    PlayerTextDrawFont(playerid, SHOWFPSDISPLAY[playerid][1], 1);
    PlayerTextDrawLetterSize(playerid, SHOWFPSDISPLAY[playerid][1], 0.141665, 0.850000);
    PlayerTextDrawTextSize(playerid, SHOWFPSDISPLAY[playerid][1], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, SHOWFPSDISPLAY[playerid][1], 0);
    PlayerTextDrawSetShadow(playerid, SHOWFPSDISPLAY[playerid][1], 0);
    PlayerTextDrawAlignment(playerid, SHOWFPSDISPLAY[playerid][1], 2);
    PlayerTextDrawColor(playerid, SHOWFPSDISPLAY[playerid][1], -1);
    PlayerTextDrawBackgroundColor(playerid, SHOWFPSDISPLAY[playerid][1], 255);
    PlayerTextDrawBoxColor(playerid, SHOWFPSDISPLAY[playerid][1], 50);
    PlayerTextDrawUseBox(playerid, SHOWFPSDISPLAY[playerid][1], 0);
    PlayerTextDrawSetProportional(playerid, SHOWFPSDISPLAY[playerid][1], 1);
    PlayerTextDrawSetSelectable(playerid, SHOWFPSDISPLAY[playerid][1], 0);

    SHOWFPSDISPLAY[playerid][2] = CreatePlayerTextDraw(playerid, 116.000000, 3.000000, "PL_:_31%");
    PlayerTextDrawFont(playerid, SHOWFPSDISPLAY[playerid][2], 1);
    PlayerTextDrawLetterSize(playerid, SHOWFPSDISPLAY[playerid][2], 0.141665, 0.850000);
    PlayerTextDrawTextSize(playerid, SHOWFPSDISPLAY[playerid][2], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, SHOWFPSDISPLAY[playerid][2], 0);
    PlayerTextDrawSetShadow(playerid, SHOWFPSDISPLAY[playerid][2], 0);
    PlayerTextDrawAlignment(playerid, SHOWFPSDISPLAY[playerid][2], 2);
    PlayerTextDrawColor(playerid, SHOWFPSDISPLAY[playerid][2], -1);
    PlayerTextDrawBackgroundColor(playerid, SHOWFPSDISPLAY[playerid][2], 255);
    PlayerTextDrawBoxColor(playerid, SHOWFPSDISPLAY[playerid][2], 50);
    PlayerTextDrawUseBox(playerid, SHOWFPSDISPLAY[playerid][2], 0);
    PlayerTextDrawSetProportional(playerid, SHOWFPSDISPLAY[playerid][2], 1);
    PlayerTextDrawSetSelectable(playerid, SHOWFPSDISPLAY[playerid][2], 0);

    //informasi player 
    InformasiPlayer[playerid][0] = CreatePlayerTextDraw(playerid, 515.000, 423.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InformasiPlayer[playerid][0], 101.000, 15.000);
    PlayerTextDrawAlignment(playerid, InformasiPlayer[playerid][0], 1);
    PlayerTextDrawColor(playerid, InformasiPlayer[playerid][0], 505428735);
    PlayerTextDrawSetShadow(playerid, InformasiPlayer[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, InformasiPlayer[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, InformasiPlayer[playerid][0], 255);
    PlayerTextDrawFont(playerid, InformasiPlayer[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, InformasiPlayer[playerid][0], 1);

    InformasiPlayer[playerid][1] = CreatePlayerTextDraw(playerid, 508.000, 419.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, InformasiPlayer[playerid][1], 16.000, 23.000);
    PlayerTextDrawAlignment(playerid, InformasiPlayer[playerid][1], 1);
    PlayerTextDrawColor(playerid, InformasiPlayer[playerid][1], 505428735);
    PlayerTextDrawSetShadow(playerid, InformasiPlayer[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, InformasiPlayer[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, InformasiPlayer[playerid][1], 255);
    PlayerTextDrawFont(playerid, InformasiPlayer[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, InformasiPlayer[playerid][1], 1);

    InformasiPlayer[playerid][2] = CreatePlayerTextDraw(playerid, 606.000, 419.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, InformasiPlayer[playerid][2], 16.000, 23.000);
    PlayerTextDrawAlignment(playerid, InformasiPlayer[playerid][2], 1);
    PlayerTextDrawColor(playerid, InformasiPlayer[playerid][2], 505428735);
    PlayerTextDrawSetShadow(playerid, InformasiPlayer[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, InformasiPlayer[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, InformasiPlayer[playerid][2], 255);
    PlayerTextDrawFont(playerid, InformasiPlayer[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, InformasiPlayer[playerid][2], 1);

    InformasiPlayer[playerid][3] = CreatePlayerTextDraw(playerid, 516.000, 430.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, InformasiPlayer[playerid][3], 10.000, 5.000);
    PlayerTextDrawAlignment(playerid, InformasiPlayer[playerid][3], 1);
    PlayerTextDrawColor(playerid, InformasiPlayer[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, InformasiPlayer[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, InformasiPlayer[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, InformasiPlayer[playerid][3], 255);
    PlayerTextDrawFont(playerid, InformasiPlayer[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, InformasiPlayer[playerid][3], 1);

    InformasiPlayer[playerid][4] = CreatePlayerTextDraw(playerid, 517.000, 422.000, "O");
    PlayerTextDrawLetterSize(playerid, InformasiPlayer[playerid][4], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, InformasiPlayer[playerid][4], 1);
    PlayerTextDrawColor(playerid, InformasiPlayer[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, InformasiPlayer[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, InformasiPlayer[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, InformasiPlayer[playerid][4], 150);
    PlayerTextDrawFont(playerid, InformasiPlayer[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, InformasiPlayer[playerid][4], 1);

    InformasiPlayer[playerid][5] = CreatePlayerTextDraw(playerid, 531.000, 427.000, "ID : 100 Citizen - FreeLane");
    PlayerTextDrawLetterSize(playerid, InformasiPlayer[playerid][5], 0.140, 0.799);
    PlayerTextDrawAlignment(playerid, InformasiPlayer[playerid][5], 1);
    PlayerTextDrawColor(playerid, InformasiPlayer[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, InformasiPlayer[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, InformasiPlayer[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, InformasiPlayer[playerid][5], 150);
    PlayerTextDrawFont(playerid, InformasiPlayer[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, InformasiPlayer[playerid][5], 1);

    //koma
    ATRP_Injured[playerid][0] = CreatePlayerTextDraw(playerid, 192.000, 142.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Injured[playerid][0], 26.000, 38.000);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][0], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][0], 255);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][0], 1);

    ATRP_Injured[playerid][1] = CreatePlayerTextDraw(playerid, 192.000, 142.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, ATRP_Injured[playerid][1], 26.000, 38.000);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][1], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][1], 225);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][1], 255);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][1], 1);

    ATRP_Injured[playerid][2] = CreatePlayerTextDraw(playerid, 203.500, 153.500, "i");
    PlayerTextDrawLetterSize(playerid, ATRP_Injured[playerid][2], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][2], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][2], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][2], 150);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][2], 1);

    ATRP_Injured[playerid][3] = CreatePlayerTextDraw(playerid, 333.500, 153.500, "jika anda pingsan karena satu alasan, jangan /Q , untuk menyelesaikan nya hingga selesai");
    PlayerTextDrawLetterSize(playerid, ATRP_Injured[playerid][3], 0.170, 1.598);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][3], 2);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][3], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][3], 150);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][3], 1);

    ATRP_Injured[playerid][4] = CreatePlayerTextDraw(playerid, 321.500, 226.500, "You Are Incapacipated");
    PlayerTextDrawLetterSize(playerid, ATRP_Injured[playerid][4], 0.270, 2.598);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][4], 2);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][4], 512819199);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][4], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][4], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][4], 150);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][4], 1);

    ATRP_Injured[playerid][5] = CreatePlayerTextDraw(playerid, 322.500, 262.500, "TEKAN     JIKA INGIN KOMA / TEKAN      UNTUK MENGIRIIM SINYAL");
    PlayerTextDrawLetterSize(playerid, ATRP_Injured[playerid][5], 0.180, 1.399);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][5], 2);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][5], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][5], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][5], 150);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][5], 1);

    ATRP_Injured[playerid][6] = CreatePlayerTextDraw(playerid, 319.500, 284.500, "SAAT INI ADA          EMS DI KOTA. ATAU KAMU BISA GUNAKAN");
    PlayerTextDrawLetterSize(playerid, ATRP_Injured[playerid][6], 0.180, 1.399);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][6], 2);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][6], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][6], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][6], 150);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][6], 1);

    ATRP_Injured[playerid][7] = CreatePlayerTextDraw(playerid, 253.500, 256.500, "Y");
    PlayerTextDrawLetterSize(playerid, ATRP_Injured[playerid][7], 0.270, 2.598);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][7], 2);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][7], -16776961);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][7], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][7], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][7], 150);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][7], 1);

    ATRP_Injured[playerid][8] = CreatePlayerTextDraw(playerid, 279.500, 278.500, "2");
    PlayerTextDrawLetterSize(playerid, ATRP_Injured[playerid][8], 0.270, 2.598);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][8], 2);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][8], -16776961);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][8], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][8], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][8], 150);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][8], 1);

    ATRP_Injured[playerid][9] = CreatePlayerTextDraw(playerid, 322.500, 303.500, "/DOKTERLOKAL");
    PlayerTextDrawLetterSize(playerid, ATRP_Injured[playerid][9], 0.230, 1.998);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][9], 2);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][9], -16776961);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][9], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][9], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][9], 150);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][9], 1);

    ATRP_Injured[playerid][10] = CreatePlayerTextDraw(playerid, 337.500, 256.500, "H");
    PlayerTextDrawLetterSize(playerid, ATRP_Injured[playerid][10], 0.270, 2.598);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][10], 2);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][10], -16776961);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][10], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][10], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][10], 150);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][10], 1);

    ATRP_Injured[playerid][11] = CreatePlayerTextDraw(playerid, 273.000, 341.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_Injured[playerid][11], 22.000, 32.000);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][11], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][11], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][11], 255);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][11], 1);

    ATRP_Injured[playerid][12] = CreatePlayerTextDraw(playerid, 274.000, 342.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_Injured[playerid][12], 20.000, 30.000);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][12], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][12], 255);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][12], 1);

    ATRP_Injured[playerid][13] = CreatePlayerTextDraw(playerid, 281.000, 341.000, "0");
    PlayerTextDrawLetterSize(playerid, ATRP_Injured[playerid][13], 0.270, 3.398);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][13], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][13], 150);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][13], 1);

    ATRP_Injured[playerid][14] = CreatePlayerTextDraw(playerid, 296.000, 341.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_Injured[playerid][14], 22.000, 32.000);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][14], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][14], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][14], 255);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][14], 1);

    ATRP_Injured[playerid][15] = CreatePlayerTextDraw(playerid, 297.000, 342.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_Injured[playerid][15], 20.000, 30.000);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][15], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][15], 255);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][15], 1);

    ATRP_Injured[playerid][16] = CreatePlayerTextDraw(playerid, 304.000, 341.000, "0");
    PlayerTextDrawLetterSize(playerid, ATRP_Injured[playerid][16], 0.270, 3.398);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][16], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][16], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][16], 150);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][16], 1);

    ATRP_Injured[playerid][17] = CreatePlayerTextDraw(playerid, 325.000, 341.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_Injured[playerid][17], 22.000, 32.000);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][17], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][17], 255);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][17], 1);

    ATRP_Injured[playerid][18] = CreatePlayerTextDraw(playerid, 326.000, 342.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_Injured[playerid][18], 20.000, 30.000);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][18], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][18], 255);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][18], 1);

    ATRP_Injured[playerid][19] = CreatePlayerTextDraw(playerid, 333.000, 341.000, "0");
    PlayerTextDrawLetterSize(playerid, ATRP_Injured[playerid][19], 0.270, 3.398);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][19], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][19], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][19], 150);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][19], 1);

    ATRP_Injured[playerid][20] = CreatePlayerTextDraw(playerid, 348.000, 341.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_Injured[playerid][20], 22.000, 32.000);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][20], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][20], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][20], 255);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][20], 1);

    ATRP_Injured[playerid][21] = CreatePlayerTextDraw(playerid, 349.000, 342.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, ATRP_Injured[playerid][21], 20.000, 30.000);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][21], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][21], 255);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][21], 1);

    ATRP_Injured[playerid][22] = CreatePlayerTextDraw(playerid, 356.000, 341.000, "0");
    PlayerTextDrawLetterSize(playerid, ATRP_Injured[playerid][22], 0.270, 3.398);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][22], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][22], 255);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][22], 150);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][22], 1);

    ATRP_Injured[playerid][23] = CreatePlayerTextDraw(playerid, 320.000, 338.000, ":");
    PlayerTextDrawLetterSize(playerid, ATRP_Injured[playerid][23], 0.270, 3.398);
    PlayerTextDrawAlignment(playerid, ATRP_Injured[playerid][23], 1);
    PlayerTextDrawColor(playerid, ATRP_Injured[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Injured[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Injured[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Injured[playerid][23], 150);
    PlayerTextDrawFont(playerid, ATRP_Injured[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Injured[playerid][23], 1);




    ATRP_Gym[playerid][0] = CreatePlayerTextDraw(playerid, 16.000, 208.000, "~r~55");
    PlayerTextDrawLetterSize(playerid, ATRP_Gym[playerid][0], 0.189, 1.198);
    PlayerTextDrawAlignment(playerid, ATRP_Gym[playerid][0], 1);
    PlayerTextDrawColor(playerid, ATRP_Gym[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Gym[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Gym[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Gym[playerid][0], 150);
    PlayerTextDrawFont(playerid, ATRP_Gym[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Gym[playerid][0], 1);

    ATRP_Gym[playerid][1] = CreatePlayerTextDraw(playerid, 16.000, 221.000, "~g~[ALT]~w~ Untuk Latihan");
    PlayerTextDrawLetterSize(playerid, ATRP_Gym[playerid][1], 0.189, 1.198);
    PlayerTextDrawAlignment(playerid, ATRP_Gym[playerid][1], 1);
    PlayerTextDrawColor(playerid, ATRP_Gym[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Gym[playerid][1], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Gym[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Gym[playerid][1], 150);
    PlayerTextDrawFont(playerid, ATRP_Gym[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Gym[playerid][1], 1);

    ATRP_Gym[playerid][2] = CreatePlayerTextDraw(playerid, 16.000, 235.000, "~r~[H]~w~ Untuk Berhenti");
    PlayerTextDrawLetterSize(playerid, ATRP_Gym[playerid][2], 0.189, 1.198);
    PlayerTextDrawAlignment(playerid, ATRP_Gym[playerid][2], 1);
    PlayerTextDrawColor(playerid, ATRP_Gym[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Gym[playerid][2], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_Gym[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Gym[playerid][2], 150);
    PlayerTextDrawFont(playerid, ATRP_Gym[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Gym[playerid][2], 1);

    //
    hbelogo[playerid][0] = CreatePlayerTextDraw(playerid, 39.000, 418.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][0], 27.000, 32.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][0], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][0], -16776961);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][0], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][0], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][0], 1);
	
	hbelogo[playerid][1] = CreatePlayerTextDraw(playerid, 43.000, 422.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][1], 19.000, 24.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][1], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][1], 255);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][1], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][1], 1);
	
	hbelogo[playerid][2] = CreatePlayerTextDraw(playerid, 60.000, 418.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][2], 27.000, 32.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][2], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][2], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][2], 1);
	
	hbelogo[playerid][3] = CreatePlayerTextDraw(playerid, 64.000, 422.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][3], 19.000, 24.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][3], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][3], 255);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][3], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][3], 1);
	
	hbelogo[playerid][4] = CreatePlayerTextDraw(playerid, 81.000, 418.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][4], 27.000, 32.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][4], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][4], -7601921);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][4], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][4], 1);
	
	hbelogo[playerid][5] = CreatePlayerTextDraw(playerid, 85.000, 422.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][5], 19.000, 24.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][5], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][5], 255);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][5], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][5], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][5], 1);
	
	hbelogo[playerid][6] = CreatePlayerTextDraw(playerid, 102.000, 418.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][6], 27.000, 32.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][6], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][6], 65535);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][6], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][6], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][6], 1);
	
	hbelogo[playerid][7] = CreatePlayerTextDraw(playerid, 106.000, 422.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][7], 19.000, 24.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][7], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][7], 255);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][7], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][7], 1);
	
	hbelogo[playerid][8] = CreatePlayerTextDraw(playerid, 123.000, 418.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][8], 27.000, 32.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][8], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][8], 852308735);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][8], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][8], 1);
	
	hbelogo[playerid][9] = CreatePlayerTextDraw(playerid, 127.000, 422.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][9], 19.000, 24.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][9], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][9], 255);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][9], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][9], 1);
	
	hbelogo[playerid][10] = CreatePlayerTextDraw(playerid, 49.000, 430.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][10], 4.000, 5.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][10], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][10], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][10], 1);
	
	hbelogo[playerid][11] = CreatePlayerTextDraw(playerid, 52.500, 430.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][11], 4.000, 5.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][11], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][11], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][11], 1);
	
	hbelogo[playerid][12] = CreatePlayerTextDraw(playerid, 50.500, 432.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][12], 4.000, 5.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][12], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][12], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][12], 1);
	
	hbelogo[playerid][13] = CreatePlayerTextDraw(playerid, 51.500, 432.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][13], 4.000, 5.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][13], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][13], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][13], 1);
	
	hbelogo[playerid][14] = CreatePlayerTextDraw(playerid, 50.000, 431.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][14], 4.000, 5.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][14], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][14], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][14], 1);
	
	hbelogo[playerid][15] = CreatePlayerTextDraw(playerid, 72.500, 430.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][15], 2.500, 7.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][15], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][15], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][15], 1);
	
	hbelogo[playerid][16] = CreatePlayerTextDraw(playerid, 70.500, 430.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][16], 6.000, 2.500);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][16], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][16], -1);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][16], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][16], 1);
	
	hbelogo[playerid][17] = CreatePlayerTextDraw(playerid, 72.000, 425.000, "v");
	PlayerTextDrawLetterSize(playerid, hbelogo[playerid][17], 0.190, 0.999);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][17], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][17], 255);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][17], 150);
	PlayerTextDrawFont(playerid, hbelogo[playerid][17], 1);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][17], 1);
	
	hbelogo[playerid][18] = CreatePlayerTextDraw(playerid, 90.500, 428.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][18], 8.000, 7.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][18], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][18], -1);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][18], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][18], 1);
	
	hbelogo[playerid][19] = CreatePlayerTextDraw(playerid, 90.000, 432.500, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][19], 8.000, 6.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][19], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][19], 255);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][19], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][19], 1);
	
	hbelogo[playerid][20] = CreatePlayerTextDraw(playerid, 92.000, 433.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][20], 5.000, 1.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][20], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][20], 2147418367);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][20], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][20], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][20], 1);
	
	hbelogo[playerid][21] = CreatePlayerTextDraw(playerid, 92.000, 435.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][21], 5.000, 2.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][21], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][21], -1);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][21], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][21], 1);
	
	hbelogo[playerid][22] = CreatePlayerTextDraw(playerid, 115.000, 429.500, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][22], 5.000, 7.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][22], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][22], -1);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][22], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][22], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][22], 1);
	
	hbelogo[playerid][23] = CreatePlayerTextDraw(playerid, 115.000, 430.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][23], 4.000, 6.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][23], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][23], 255);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][23], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][23], 1);
	
	hbelogo[playerid][24] = CreatePlayerTextDraw(playerid, 114.000, 430.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][24], 4.000, 6.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][24], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][24], -1);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][24], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][24], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][24], 1);
	
	hbelogo[playerid][25] = CreatePlayerTextDraw(playerid, 114.500, 431.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][25], 2.500, 4.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][25], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][25], 12582911);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][25], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][25], 1);
	
	hbelogo[playerid][26] = CreatePlayerTextDraw(playerid, 133.000, 428.000, "LD_BEAT:chit");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][26], 8.000, 10.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][26], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][26], -1);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][26], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][26], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][26], 1);
	
	hbelogo[playerid][27] = CreatePlayerTextDraw(playerid, 136.500, 430.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][27], 1.000, 7.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][27], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][27], 255);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][27], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][27], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][27], 1);
	
	hbelogo[playerid][28] = CreatePlayerTextDraw(playerid, 136.000, 433.000, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][28], 2.000, -1.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][28], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][28], 255);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][28], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][28], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][28], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][28], 1);
	
	hbelogo[playerid][29] = CreatePlayerTextDraw(playerid, 136.000, 434.500, "LD_BUM:blkdot");
	PlayerTextDrawTextSize(playerid, hbelogo[playerid][29], 2.000, -1.000);
	PlayerTextDrawAlignment(playerid, hbelogo[playerid][29], 1);
	PlayerTextDrawColor(playerid, hbelogo[playerid][29], 255);
	PlayerTextDrawSetShadow(playerid, hbelogo[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, hbelogo[playerid][29], 0);
	PlayerTextDrawBackgroundColor(playerid, hbelogo[playerid][29], 255);
	PlayerTextDrawFont(playerid, hbelogo[playerid][29], 4);
	PlayerTextDrawSetProportional(playerid, hbelogo[playerid][29], 1);

	angkadarah[playerid] = CreatePlayerTextDraw(playerid, 48.000, 416.000, "100");
	PlayerTextDrawLetterSize(playerid, angkadarah[playerid], 0.170, 0.699);
	PlayerTextDrawAlignment(playerid, angkadarah[playerid], 1);
	PlayerTextDrawColor(playerid, angkadarah[playerid], -1);
	PlayerTextDrawSetShadow(playerid, angkadarah[playerid], 0);
	PlayerTextDrawSetOutline(playerid, angkadarah[playerid], 0);
	PlayerTextDrawBackgroundColor(playerid, angkadarah[playerid], 150);
	PlayerTextDrawFont(playerid, angkadarah[playerid], 2);
	PlayerTextDrawSetProportional(playerid, angkadarah[playerid], 1);
	
	angkaarmor[playerid] = CreatePlayerTextDraw(playerid, 69.000, 416.000, "100");
	PlayerTextDrawLetterSize(playerid, angkaarmor[playerid], 0.170, 0.699);
	PlayerTextDrawAlignment(playerid, angkaarmor[playerid], 1);
	PlayerTextDrawColor(playerid, angkaarmor[playerid], -1);
	PlayerTextDrawSetShadow(playerid, angkaarmor[playerid], 0);
	PlayerTextDrawSetOutline(playerid, angkaarmor[playerid], 0);
	PlayerTextDrawBackgroundColor(playerid, angkaarmor[playerid], 150);
	PlayerTextDrawFont(playerid, angkaarmor[playerid], 2);
	PlayerTextDrawSetProportional(playerid, angkaarmor[playerid], 1);
	
	angkalapar[playerid] = CreatePlayerTextDraw(playerid, 90.000, 416.000, "100");
	PlayerTextDrawLetterSize(playerid, angkalapar[playerid], 0.170, 0.699);
	PlayerTextDrawAlignment(playerid, angkalapar[playerid], 1);
	PlayerTextDrawColor(playerid, angkalapar[playerid], -1);
	PlayerTextDrawSetShadow(playerid, angkalapar[playerid], 0);
	PlayerTextDrawSetOutline(playerid, angkalapar[playerid], 0);
	PlayerTextDrawBackgroundColor(playerid, angkalapar[playerid], 150);
	PlayerTextDrawFont(playerid, angkalapar[playerid], 1);
	PlayerTextDrawSetProportional(playerid, angkalapar[playerid], 1);
	
	angkahaus[playerid] = CreatePlayerTextDraw(playerid, 111.000, 416.000, "100");
	PlayerTextDrawLetterSize(playerid, angkahaus[playerid], 0.170, 0.699);
	PlayerTextDrawAlignment(playerid, angkahaus[playerid], 1);
	PlayerTextDrawColor(playerid, angkahaus[playerid], -1);
	PlayerTextDrawSetShadow(playerid, angkahaus[playerid], 0);
	PlayerTextDrawSetOutline(playerid, angkahaus[playerid], 0);
	PlayerTextDrawBackgroundColor(playerid, angkahaus[playerid], 150);
	PlayerTextDrawFont(playerid, angkahaus[playerid], 1);
	PlayerTextDrawSetProportional(playerid, angkahaus[playerid], 1);
	
	angkastress[playerid] = CreatePlayerTextDraw(playerid, 132.000, 416.000, "100");
	PlayerTextDrawLetterSize(playerid, angkastress[playerid], 0.170, 0.699);
	PlayerTextDrawAlignment(playerid, angkastress[playerid], 1);
	PlayerTextDrawColor(playerid, angkastress[playerid], -1);
	PlayerTextDrawSetShadow(playerid, angkastress[playerid], 0);
	PlayerTextDrawSetOutline(playerid, angkastress[playerid], 0);
	PlayerTextDrawBackgroundColor(playerid, angkastress[playerid], 150);
	PlayerTextDrawFont(playerid, angkastress[playerid], 1);
	PlayerTextDrawSetProportional(playerid, angkastress[playerid], 1);
    //

    PipemTD[playerid][0] = CreatePlayerTextDraw(playerid, 5.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][0], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][0], 1);

    PipemTD[playerid][1] = CreatePlayerTextDraw(playerid, 5.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][1], 35.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][1], 1);

    PipemTD[playerid][2] = CreatePlayerTextDraw(playerid, 5.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][2], 35.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][2], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][2], 1);

    PipemTD[playerid][3] = CreatePlayerTextDraw(playerid, 39.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][3], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][3], 1);

    PipemTD[playerid][4] = CreatePlayerTextDraw(playerid, 41.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][4], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][4], 1);

    PipemTD[playerid][5] = CreatePlayerTextDraw(playerid, 41.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][5], 35.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][5], 1);

    PipemTD[playerid][6] = CreatePlayerTextDraw(playerid, 41.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][6], 35.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][6], 1);

    PipemTD[playerid][7] = CreatePlayerTextDraw(playerid, 75.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][7], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][7], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][7], 1);

    PipemTD[playerid][8] = CreatePlayerTextDraw(playerid, 77.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][8], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][8], 1);

    PipemTD[playerid][9] = CreatePlayerTextDraw(playerid, 77.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][9], 15.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][9], 1);

    PipemTD[playerid][10] = CreatePlayerTextDraw(playerid, 77.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][10], 15.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][10], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][10], 1);

    PipemTD[playerid][11] = CreatePlayerTextDraw(playerid, 91.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][11], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][11], 1);

    PipemTD[playerid][12] = CreatePlayerTextDraw(playerid, 93.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][12], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][12], 1);

    PipemTD[playerid][13] = CreatePlayerTextDraw(playerid, 93.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][13], 15.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][13], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][13], 1);

    PipemTD[playerid][14] = CreatePlayerTextDraw(playerid, 93.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][14], 15.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][14], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][14], 1);

    PipemTD[playerid][15] = CreatePlayerTextDraw(playerid, 107.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][15], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][15], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][15], 1);

    PipemTD[playerid][16] = CreatePlayerTextDraw(playerid, 109.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][16], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][16], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][16], 1);

    PipemTD[playerid][17] = CreatePlayerTextDraw(playerid, 109.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][17], 15.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][17], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][17], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][17], 1);

    PipemTD[playerid][18] = CreatePlayerTextDraw(playerid, 109.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][18], 15.000, 1.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][18], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][18], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][18], 1);

    PipemTD[playerid][19] = CreatePlayerTextDraw(playerid, 123.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][19], 1.000, 14.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][19], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][19], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][19], 1);

    PipemTD[playerid][20] = CreatePlayerTextDraw(playerid, 6.000, 432.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][20], 33.000, 13.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][20], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][20], 852308735);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][20], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][20], 1);

    PipemTD[playerid][21] = CreatePlayerTextDraw(playerid, 42.000, 432.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][21], 33.000, 13.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][21], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][21], 16777215);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][21], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][21], 1);

    PipemTD[playerid][22] = CreatePlayerTextDraw(playerid, 78.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][22], 13.000, -13.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][22], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][22], -626712321);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][22], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][22], 1);

    PipemTD[playerid][23] = CreatePlayerTextDraw(playerid, 94.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][23], 13.000, -13.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][23], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][23], 1097458175);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][23], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][23], 1);

    PipemTD[playerid][24] = CreatePlayerTextDraw(playerid, 110.000, 445.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][24], 13.000, -13.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][24], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][24], -1962934017);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][24], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][24], 1);

    PipemTD[playerid][25] = CreatePlayerTextDraw(playerid, 10.000, 435.000, "HUD:radar_girlfriend");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][25], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][25], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][25], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][25], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][25], 1);

    PipemTD[playerid][26] = CreatePlayerTextDraw(playerid, 45.000, 435.000, "HUD:radar_tshirt");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][26], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][26], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][26], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][26], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][26], 1);

    PipemTD[playerid][27] = CreatePlayerTextDraw(playerid, 81.000, 435.000, "HUD:radar_burgerShot");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][27], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][27], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][27], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][27], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][27], 1);

    PipemTD[playerid][28] = CreatePlayerTextDraw(playerid, 97.000, 435.000, "HUD:radar_diner");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][28], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][28], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][28], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][28], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][28], 1);

    PipemTD[playerid][29] = CreatePlayerTextDraw(playerid, 113.000, 435.000, "HUD:radar_waypoint");
    PlayerTextDrawTextSize(playerid, PipemTD[playerid][29], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, PipemTD[playerid][29], 1);
    PlayerTextDrawColor(playerid, PipemTD[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, PipemTD[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, PipemTD[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, PipemTD[playerid][29], 255);
    PlayerTextDrawFont(playerid, PipemTD[playerid][29], 4);
    PlayerTextDrawSetProportional(playerid, PipemTD[playerid][29], 1);
    
    ATRP_DutyTD[playerid][0] = CreatePlayerTextDraw(playerid, 425.000, 428.000, "ADMINISTRATOR: ~g~ON DUTY");
    PlayerTextDrawLetterSize(playerid, ATRP_DutyTD[playerid][0], 0.230, 1.199);
    PlayerTextDrawAlignment(playerid, ATRP_DutyTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, ATRP_DutyTD[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_DutyTD[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, ATRP_DutyTD[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_DutyTD[playerid][0], 150);
    PlayerTextDrawFont(playerid, ATRP_DutyTD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_DutyTD[playerid][0], 1);

    // Spectator Info
    SpectatorInfoTD[playerid][0] = CreatePlayerTextDraw(playerid, 214.000, 306.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, SpectatorInfoTD[playerid][0], 209.000, 129.000);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][0], 150);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][0], 1);

    SpectatorInfoTD[playerid][1] = CreatePlayerTextDraw(playerid, 320.000, 310.000, "~g~Cecep_Sugeni_(100)");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][1], 0.379, 1.399);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][1], 2);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][1], 1);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][1], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][1], 1);

    SpectatorInfoTD[playerid][2] = CreatePlayerTextDraw(playerid, 320.000, 333.000, "Cash:~y~_$5,000");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][2], 0.328, 1.500);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][2], 2);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][2], 1);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][2], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][2], 1);

    SpectatorInfoTD[playerid][3] = CreatePlayerTextDraw(playerid, 320.000, 349.000, "HP:~y~_100.0");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][3], 0.328, 1.500);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][3], 2);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][3], 1);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][3], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][3], 1);

    SpectatorInfoTD[playerid][4] = CreatePlayerTextDraw(playerid, 320.000, 364.000, "AM:~y~_95.0");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][4], 0.328, 1.500);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][4], 2);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][4], 1);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][4], 1);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][4], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][4], 1);

    SpectatorInfoTD[playerid][5] = CreatePlayerTextDraw(playerid, 320.000, 379.000, "Int:~y~7_~w~WID:~y~15");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][5], 0.328, 1.500);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][5], 2);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][5], 1);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][5], 1);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][5], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][5], 1);

    SpectatorInfoTD[playerid][6] = CreatePlayerTextDraw(playerid, 320.000, 394.000, "Keys:~y~_0");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][6], 0.328, 1.500);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][6], 2);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][6], 1);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][6], 1);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][6], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][6], 1);

    SpectatorInfoTD[playerid][7] = CreatePlayerTextDraw(playerid, 320.000, 412.000, "FPS:~y~_52_~w~Ping:~y~_102ms");
    PlayerTextDrawLetterSize(playerid, SpectatorInfoTD[playerid][7], 0.328, 1.500);
    PlayerTextDrawAlignment(playerid, SpectatorInfoTD[playerid][7], 2);
    PlayerTextDrawColor(playerid, SpectatorInfoTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, SpectatorInfoTD[playerid][7], 1);
    PlayerTextDrawSetOutline(playerid, SpectatorInfoTD[playerid][7], 1);
    PlayerTextDrawBackgroundColor(playerid, SpectatorInfoTD[playerid][7], 150);
    PlayerTextDrawFont(playerid, SpectatorInfoTD[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, SpectatorInfoTD[playerid][7], 1);
    
    // Footer
    ATRP_Footer[playerid] = CreatePlayerTextDraw(playerid, 321.000, 361.385, "_");
    PlayerTextDrawLetterSize(playerid, ATRP_Footer[playerid], 0.236, 1.453);
    PlayerTextDrawAlignment(playerid, ATRP_Footer[playerid], 2);
    PlayerTextDrawColor(playerid, ATRP_Footer[playerid], -1);
    PlayerTextDrawSetShadow(playerid, ATRP_Footer[playerid], 0);
    PlayerTextDrawSetOutline(playerid, ATRP_Footer[playerid], 1);
    PlayerTextDrawBackgroundColor(playerid, ATRP_Footer[playerid], 255);
    PlayerTextDrawFont(playerid, ATRP_Footer[playerid], 1);
    PlayerTextDrawSetProportional(playerid, ATRP_Footer[playerid], 1);

    // FPS
    FPStextdraws[playerid][0] = CreatePlayerTextDraw(playerid, 8.000, 213.000, "~r~FPS:_~w~52~n~~r~PL:_~w~0.15");
    PlayerTextDrawLetterSize(playerid, FPStextdraws[playerid][0], 0.270, 1.399);
    PlayerTextDrawAlignment(playerid, FPStextdraws[playerid][0], 1);
    PlayerTextDrawColor(playerid, FPStextdraws[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, FPStextdraws[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, FPStextdraws[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, FPStextdraws[playerid][0], 150);
    PlayerTextDrawFont(playerid, FPStextdraws[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, FPStextdraws[playerid][0], 1);
    
    // Kartu Tanda Anggota
    KTAtextdraws[playerid][0] = CreatePlayerTextDraw(playerid, 361.000, 210.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][0], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][0], 16.500, 20.500);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][0], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][0], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][0], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][0], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][0], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][0], 1);

    KTAtextdraws[playerid][1] = CreatePlayerTextDraw(playerid, 361.000, 322.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][1], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][1], 18.000, 17.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][1], 2);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][1], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][1], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][1], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][1], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][1], 1);

    KTAtextdraws[playerid][2] = CreatePlayerTextDraw(playerid, 511.000, 322.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][2], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][2], 17.000, 17.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][2], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][2], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][2], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][2], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][2], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][2], 1);

    KTAtextdraws[playerid][3] = CreatePlayerTextDraw(playerid, 511.000, 211.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][3], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][3], 17.000, 17.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][3], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][3], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][3], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][3], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][3], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][3], 1);

    KTAtextdraws[playerid][4] = CreatePlayerTextDraw(playerid, 369.000, 293.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][4], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][4], 148.500, 43.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][4], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][4], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][4], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][4], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][4], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][4], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][4], 1);

    KTAtextdraws[playerid][5] = CreatePlayerTextDraw(playerid, 367.000, 293.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][5], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][5], 151.500, -79.500);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][5], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][5], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][5], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][5], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][5], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][5], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][5], 1);

    KTAtextdraws[playerid][6] = CreatePlayerTextDraw(playerid, 364.000, 220.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][6], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][6], 161.000, 109.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][6], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][6], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][6], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][6], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][6], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][6], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][6], 1);

    KTAtextdraws[playerid][7] = CreatePlayerTextDraw(playerid, 371.000, 227.000, "M");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][7], 0.579, 2.899);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][7], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][7], -65281);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][7], 1);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][7], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][7], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][7], 1);

    KTAtextdraws[playerid][8] = CreatePlayerTextDraw(playerid, 361.000, 322.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][8], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][8], 18.000, 17.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][8], 2);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][8], -16776961);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][8], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][8], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][8], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][8], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][8], 1);

    KTAtextdraws[playerid][9] = CreatePlayerTextDraw(playerid, 364.000, 318.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][9], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][9], 161.000, 14.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][9], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][9], -16776961);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][9], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][9], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][9], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][9], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][9], 1);

    KTAtextdraws[playerid][10] = CreatePlayerTextDraw(playerid, 370.000, 322.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][10], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][10], 148.000, 14.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][10], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][10], -16776961);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][10], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][10], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][10], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][10], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][10], 1);

    KTAtextdraws[playerid][11] = CreatePlayerTextDraw(playerid, 511.000, 322.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][11], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][11], 17.000, 17.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][11], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][11], -16776961);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][11], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][11], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][11], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][11], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][11], 1);

    KTAtextdraws[playerid][12] = CreatePlayerTextDraw(playerid, 378.000, 232.000, "R");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][12], 0.579, 2.899);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][12], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][12], -65281);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][12], 1);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][12], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][12], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][12], 1);

    KTAtextdraws[playerid][13] = CreatePlayerTextDraw(playerid, 443.000, 217.000, "Kepolisian Kota Imajinasi");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][13], 0.188, 1.098);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][13], 2);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][13], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][13], 1);

    KTAtextdraws[playerid][14] = CreatePlayerTextDraw(playerid, 443.000, 227.000, "KARTU TANDA ANGGOTA");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][14], 0.209, 1.399);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][14], 2);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][14], 255);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][14], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][14], 1);

    KTAtextdraws[playerid][15] = CreatePlayerTextDraw(playerid, 372.000, 264.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][15], 20.000, 6.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][15], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][15], -626712321);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][15], 255);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][15], 1);

    KTAtextdraws[playerid][16] = CreatePlayerTextDraw(playerid, 372.000, 271.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][16], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][16], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][16], -626712321);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][16], 255);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][16], 1);

    KTAtextdraws[playerid][17] = CreatePlayerTextDraw(playerid, 379.000, 271.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][17], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][17], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][17], -626712321);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][17], 255);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][17], 1);

    KTAtextdraws[playerid][18] = CreatePlayerTextDraw(playerid, 386.000, 271.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][18], 6.000, 6.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][18], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][18], -626712321);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][18], 255);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][18], 1);

    KTAtextdraws[playerid][19] = CreatePlayerTextDraw(playerid, 372.000, 278.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][19], 20.000, 6.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][19], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][19], -626712321);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][19], 255);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][19], 1);

    KTAtextdraws[playerid][20] = CreatePlayerTextDraw(playerid, 396.000, 261.000, "Sohivot_Lenort");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][20], 0.188, 1.299);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][20], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][20], 255);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][20], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][20], 1);

    KTAtextdraws[playerid][21] = CreatePlayerTextDraw(playerid, 396.000, 274.000, "Wadir Umum");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][21], 0.200, 1.299);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][21], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][21], 255);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][21], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][21], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][21], 1);

    KTAtextdraws[playerid][22] = CreatePlayerTextDraw(playerid, 443.000, 238.000, "_");
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][22], 94.000, 94.000);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][22], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][22], 0);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][22], 5);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][22], 0);
    PlayerTextDrawSetPreviewModel(playerid, KTAtextdraws[playerid][22], 281);
    PlayerTextDrawSetPreviewRot(playerid, KTAtextdraws[playerid][22], -7.000, 0.000, 0.000, 1.000);
    PlayerTextDrawSetPreviewVehCol(playerid, KTAtextdraws[playerid][22], 0, 0);

    KTAtextdraws[playerid][23] = CreatePlayerTextDraw(playerid, 470.000, 294.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][23], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][23], 39.500, 24.500);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][23], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][23], -1061109505);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][23], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][23], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][23], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][23], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][23], 1);

    KTAtextdraws[playerid][24] = CreatePlayerTextDraw(playerid, 475.000, 318.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][24], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, KTAtextdraws[playerid][24], 39.500, 14.500);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][24], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][24], -16776961);
    PlayerTextDrawUseBox(playerid, KTAtextdraws[playerid][24], 1);
    PlayerTextDrawBoxColor(playerid, KTAtextdraws[playerid][24], 50);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][24], 1);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][24], -789973249);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][24], 1);

    KTAtextdraws[playerid][25] = CreatePlayerTextDraw(playerid, 369.000, 307.000, "7263 1231 0082 2321");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][25], 0.128, 0.898);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][25], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][25], 255);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][25], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][25], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][25], 1);

    KTAtextdraws[playerid][26] = CreatePlayerTextDraw(playerid, 369.000, 322.000, "INI ADALAH KARTU TANDA ANGGOTA, KEASLIAN KEANGGOTAAN SESEORANG");
    PlayerTextDrawLetterSize(playerid, KTAtextdraws[playerid][26], 0.119, 0.898);
    PlayerTextDrawAlignment(playerid, KTAtextdraws[playerid][26], 1);
    PlayerTextDrawColor(playerid, KTAtextdraws[playerid][26], 255);
    PlayerTextDrawSetShadow(playerid, KTAtextdraws[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, KTAtextdraws[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, KTAtextdraws[playerid][26], 150);
    PlayerTextDrawFont(playerid, KTAtextdraws[playerid][26], 1);
    PlayerTextDrawSetProportional(playerid, KTAtextdraws[playerid][26], 1);

    TogAmmo[playerid] = CreatePlayerTextDraw(playerid, 507.000000, 66.000000, "100");
    PlayerTextDrawFont(playerid, TogAmmo[playerid], 2);
    PlayerTextDrawLetterSize(playerid, TogAmmo[playerid], 0.354166, 1.100000);
    PlayerTextDrawTextSize(playerid, TogAmmo[playerid], 400.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, TogAmmo[playerid], 1);
    PlayerTextDrawSetShadow(playerid, TogAmmo[playerid], 0);
    PlayerTextDrawAlignment(playerid, TogAmmo[playerid], 1);
    PlayerTextDrawColor(playerid, TogAmmo[playerid], 16777215);
    PlayerTextDrawBackgroundColor(playerid, TogAmmo[playerid], 255);
    PlayerTextDrawBoxColor(playerid, TogAmmo[playerid], 50);
    PlayerTextDrawUseBox(playerid, TogAmmo[playerid], 0);
    PlayerTextDrawSetProportional(playerid, TogAmmo[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, TogAmmo[playerid], 0);

    WeaponNameTD[playerid] = CreatePlayerTextDraw(playerid, 542.000000, 116.000000, "Desert Eagle");
    PlayerTextDrawFont(playerid, WeaponNameTD[playerid], 1);
    PlayerTextDrawLetterSize(playerid, WeaponNameTD[playerid], 0.216666, 1.299999);
    PlayerTextDrawTextSize(playerid, WeaponNameTD[playerid], 631.000000, 17.000000);
    PlayerTextDrawSetOutline(playerid, WeaponNameTD[playerid], 1);
    PlayerTextDrawSetShadow(playerid, WeaponNameTD[playerid], 0);
    PlayerTextDrawAlignment(playerid, WeaponNameTD[playerid], 1);
    PlayerTextDrawColor(playerid, WeaponNameTD[playerid], -1);
    PlayerTextDrawBackgroundColor(playerid, WeaponNameTD[playerid], 255);
    PlayerTextDrawBoxColor(playerid, WeaponNameTD[playerid], 50);
    PlayerTextDrawUseBox(playerid, WeaponNameTD[playerid], 0);
    PlayerTextDrawSetProportional(playerid, WeaponNameTD[playerid], 1);
    PlayerTextDrawSetSelectable(playerid, WeaponNameTD[playerid], 0);


    /* Watermark
    Watermarktextdraws[playerid][0] = CreatePlayerTextDraw(playerid, 324.000, 19.000, "V");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][0], 0.449, -1.799);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][0], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][0], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][0], 1);

    Watermarktextdraws[playerid][1] = CreatePlayerTextDraw(playerid, 324.000, 19.000, "V");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][1], 0.439, -1.799);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][1], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][1], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][1], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][1], 1);

    Watermarktextdraws[playerid][2] = CreatePlayerTextDraw(playerid, 320.000, 17.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][2], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][2], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][2], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][2], 1);

    Watermarktextdraws[playerid][3] = CreatePlayerTextDraw(playerid, 320.200, 17.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][3], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][3], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][3], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][3], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][3], 1);

    Watermarktextdraws[playerid][4] = CreatePlayerTextDraw(playerid, 321.000, 18.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Watermarktextdraws[playerid][4], 8.000, -2.000);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][4], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][4], 255);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][4], 1);

    Watermarktextdraws[playerid][5] = CreatePlayerTextDraw(playerid, 321.299, 18.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Watermarktextdraws[playerid][5], 8.199, -1.700);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][5], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][5], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][5], 255);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][5], 1);

    Watermarktextdraws[playerid][6] = CreatePlayerTextDraw(playerid, 324.000, 17.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][6], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][6], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][6], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][6], 1);

    Watermarktextdraws[playerid][7] = CreatePlayerTextDraw(playerid, 324.200, 17.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][7], 0.330, 0.999);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][7], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][7], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][7], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][7], 1);

    Watermarktextdraws[playerid][8] = CreatePlayerTextDraw(playerid, 329.000, 23.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Watermarktextdraws[playerid][8], 2.000, -2.000);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][8], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][8], 255);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][8], 1);

    Watermarktextdraws[playerid][9] = CreatePlayerTextDraw(playerid, 329.299, 23.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, Watermarktextdraws[playerid][9], 3.198, -1.700);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][9], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][9], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][9], 255);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][9], 1);

    Watermarktextdraws[playerid][10] = CreatePlayerTextDraw(playerid, 331.000, 16.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][10], 0.270, 0.698);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][10], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][10], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][10], 1);

    Watermarktextdraws[playerid][11] = CreatePlayerTextDraw(playerid, 331.000, 16.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][11], 0.270, 0.698);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][11], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][11], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][11], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][11], 1);

    Watermarktextdraws[playerid][12] = CreatePlayerTextDraw(playerid, 338.000, 16.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][12], -0.349, 0.797);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][12], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][12], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][12], 1);

    Watermarktextdraws[playerid][13] = CreatePlayerTextDraw(playerid, 338.000, 16.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][13], -0.349, 0.797);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][13], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][13], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][13], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][13], 1);

    Watermarktextdraws[playerid][14] = CreatePlayerTextDraw(playerid, 328.799, 25.798, "Imajinasi");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][14], 0.270, 1.098);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][14], 2);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][14], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][14], -92245249);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][14], 1);

    Watermarktextdraws[playerid][15] = CreatePlayerTextDraw(playerid, 334.000, 13.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][15], -0.349, 0.797);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][15], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][15], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][15], 1);

    Watermarktextdraws[playerid][16] = CreatePlayerTextDraw(playerid, 334.000, 13.000, "/");
    PlayerTextDrawLetterSize(playerid, Watermarktextdraws[playerid][16], -0.349, 0.797);
    PlayerTextDrawAlignment(playerid, Watermarktextdraws[playerid][16], 1);
    PlayerTextDrawColor(playerid, Watermarktextdraws[playerid][16], -260013825);
    PlayerTextDrawSetShadow(playerid, Watermarktextdraws[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, Watermarktextdraws[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, Watermarktextdraws[playerid][16], 150);
    PlayerTextDrawFont(playerid, Watermarktextdraws[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, Watermarktextdraws[playerid][16], 1);*/

    // Taxi Argo
    PlayerTextdraws[playerid][textdraw_taxi][0] = CreatePlayerTextDraw(playerid, 67.000, 176.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 81.000, 38.000);
    PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 1);
    PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 150);
    PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 0);
    PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 0);
    PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 255);
    PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 4);
    PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_taxi][0], 1);

    PlayerTextdraws[playerid][textdraw_taxi][1] = CreatePlayerTextDraw(playerid, 86.000, 179.000, "Taxi Argo");
    PlayerTextDrawLetterSize(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 0.240, 0.999);
    PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 1);
    PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], -1);
    PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 1);
    PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 255);
    PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 3);
    PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_taxi][1], 1);

    PlayerTextdraws[playerid][textdraw_taxi][2] = CreatePlayerTextDraw(playerid, 73.000, 194.000, "$55");
    PlayerTextDrawLetterSize(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 0.240, 0.999);
    PlayerTextDrawAlignment(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    PlayerTextDrawColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], -1);
    PlayerTextDrawSetShadow(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    PlayerTextDrawSetOutline(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    PlayerTextDrawBackgroundColor(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 255);
    PlayerTextDrawFont(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    PlayerTextDrawSetProportional(playerid, PlayerTextdraws[playerid][textdraw_taxi][2], 1);
    
    // Vehicle
    VehicleTextdraws[playerid][0] = CreatePlayerTextDraw(playerid, 141.000, 431.000, "Utara l Verdant Bluffs");
    PlayerTextDrawLetterSize(playerid, VehicleTextdraws[playerid][0], 0.190, 1.199);
    PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][0], 1);
    PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][0], 150);
    PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][0], 1);

    VehicleTextdraws[playerid][1] = CreatePlayerTextDraw(playerid, 148.000, 408.000, "100");
    PlayerTextDrawLetterSize(playerid, VehicleTextdraws[playerid][1], 0.290, 1.699);
    PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][1], 2);
    PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][1], 150);
    PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][1], 1);

    VehicleTextdraws[playerid][2] = CreatePlayerTextDraw(playerid, 190.000, 408.000, "100");
    PlayerTextDrawLetterSize(playerid, VehicleTextdraws[playerid][2], 0.290, 1.699);
    PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][2], 2);
    PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][2], 150);
    PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][2], 1);

    VehicleTextdraws[playerid][3] = CreatePlayerTextDraw(playerid, 164.000, 408.000, "Fuel");
    PlayerTextDrawLetterSize(playerid, VehicleTextdraws[playerid][3], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][3], 1);
    PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][3], 150);
    PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][3], 1);

    VehicleTextdraws[playerid][4] = CreatePlayerTextDraw(playerid, 207.000, 408.000, "KMH");
    PlayerTextDrawLetterSize(playerid, VehicleTextdraws[playerid][4], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][4], 1);
    PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][4], 150);
    PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][4], 1);

    VehicleTextdraws[playerid][5] = CreatePlayerTextDraw(playerid, 140.000, 391.000, "16:05");
    PlayerTextDrawLetterSize(playerid, VehicleTextdraws[playerid][5], 0.170, 0.999);
    PlayerTextDrawAlignment(playerid, VehicleTextdraws[playerid][5], 1);
    PlayerTextDrawColor(playerid, VehicleTextdraws[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, VehicleTextdraws[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, VehicleTextdraws[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, VehicleTextdraws[playerid][5], 150);
    PlayerTextDrawFont(playerid, VehicleTextdraws[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, VehicleTextdraws[playerid][5], 1);

    /* HBE 
    HbeStuffs[playerid][0] = CreatePlayerTextDraw(playerid, 5.000, 431.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][0], 34.000, 15.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][0], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][0], 150);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][0], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][0], 1);

    HbeStuffs[playerid][1] = CreatePlayerTextDraw(playerid, 41.000, 431.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][1], 34.000, 15.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][1], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][1], 150);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][1], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][1], 1);

    HbeStuffs[playerid][2] = CreatePlayerTextDraw(playerid, 77.000, 431.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][2], 14.000, 15.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][2], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][2], 150);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][2], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][2], 1);

    HbeStuffs[playerid][3] = CreatePlayerTextDraw(playerid, 93.000, 431.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][3], 14.000, 15.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][3], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][3], 150);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][3], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][3], 1);

    HbeStuffs[playerid][4] = CreatePlayerTextDraw(playerid, 109.000, 431.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][4], 14.000, 15.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][4], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][4], 150);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][4], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][4], 1);

    HbeStuffs[playerid][5] = CreatePlayerTextDraw(playerid, 5.000, 431.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][5], 34.000, 15.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][5], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][5], 1018393087);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][5], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][5], 1);

    HbeStuffs[playerid][6] = CreatePlayerTextDraw(playerid, 41.000, 431.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][6], 34.000, 15.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][6], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][6], 1221709055);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][6], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][6], 1);

    HbeStuffs[playerid][7] = CreatePlayerTextDraw(playerid, 77.000, 446.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][7], 14.000, -15.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][7], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][7], -626712321);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][7], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][7], 1);

    HbeStuffs[playerid][8] = CreatePlayerTextDraw(playerid, 93.000, 446.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][8], 14.000, -15.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][8], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][8], 1097458175);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][8], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][8], 1);

    HbeStuffs[playerid][9] = CreatePlayerTextDraw(playerid, 109.000, 446.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][9], 14.000, -15.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][9], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][9], -1962934017);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][9], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][9], 1);

    HbeStuffs[playerid][10] = CreatePlayerTextDraw(playerid, 19.000, 435.000, "HUD:radar_girlfriend");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][10], 8.000, 8.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][10], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][10], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][10], 1);

    HbeStuffs[playerid][11] = CreatePlayerTextDraw(playerid, 54.000, 435.000, "HUD:radar_tshirt");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][11], 8.000, 8.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][11], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][11], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][11], 1);

    HbeStuffs[playerid][12] = CreatePlayerTextDraw(playerid, 80.000, 435.000, "HUD:radar_burgerShot");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][12], 8.000, 8.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][12], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][12], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][12], 1);

    HbeStuffs[playerid][13] = CreatePlayerTextDraw(playerid, 96.000, 435.000, "HUD:radar_centre");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][13], 8.000, 8.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][13], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][13], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][13], 1);

    HbeStuffs[playerid][14] = CreatePlayerTextDraw(playerid, 112.000, 435.000, "HUD:radar_waypoint");
    PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][14], 8.000, 8.000);
    PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][14], 1);
    PlayerTextDrawColor(playerid, HbeStuffs[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][14], 255);
    PlayerTextDrawFont(playerid, HbeStuffs[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][14], 1); */

    // HBE Stuffs 
	HbeStuffs[playerid][0] = CreatePlayerTextDraw(playerid, 260.000, 415.500, "Preview_Model");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][0], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][0], 27.000, 34.000);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][0], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][0], 796413234);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][0], 0);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][0], 5);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][0], 1);
	PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][0], 2751);
	PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][0], -100.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][0], 1, 1);

	HbeStuffs[playerid][1] = CreatePlayerTextDraw(playerid, 281.000, 415.500, "Preview_Model");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][1], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][1], 27.000, 34.000);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][1], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][1], 712029746);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][1], 0);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][1], 5);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][1], 1);
	PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][1], 2751);
	PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][1], -100.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][1], 1, 1);

	HbeStuffs[playerid][2] = CreatePlayerTextDraw(playerid, 302.000, 415.500, "Preview_Model");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][2], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][2], 27.000, 34.000);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][2], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][2], -1620558798);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][2], 0);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][2], 5);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][2], 1);
	PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][2], 2751);
	PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][2], -100.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][2], 1, 1);

	HbeStuffs[playerid][3] = CreatePlayerTextDraw(playerid, 323.000, 415.500, "Preview_Model");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][3], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][3], 27.000, 34.000);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][3], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][3], 514038578);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][3], 0);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][3], 5);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][3], 1);
	PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][3], 2751);
	PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][3], -100.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][3], 1, 1);

	HbeStuffs[playerid][4] = CreatePlayerTextDraw(playerid, 344.000, 415.500, "Preview_Model");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][4], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][4], 27.000, 34.000);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][4], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][4], -2060041404);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][4], 0);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][4], 5);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][4], 1);
	PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][4], 2751);
	PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][4], -100.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][4], 1, 1);

	HbeStuffs[playerid][5] = CreatePlayerTextDraw(playerid, 263.000, 418.500, "Preview_Model");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][5], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][5], 21.000, 28.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][5], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][5], 712527359);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][5], 0);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][5], 5);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][5], 1);
	PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][5], 2751);
	PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][5], -100.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][5], 1, 1);

	HbeStuffs[playerid][6] = CreatePlayerTextDraw(playerid, 284.000, 418.500, "Preview_Model");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][6], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][6], 21.000, 28.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][6], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][6], 712029951);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][6], 0);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][6], 5);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][6], 1);
	PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][6], 2751);
	PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][6], -100.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][6], 1, 1);

	HbeStuffs[playerid][7] = CreatePlayerTextDraw(playerid, 305.000, 418.500, "Preview_Model");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][7], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][7], 21.000, 28.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][7], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][7], -1620558593);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][7], 0);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][7], 5);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][7], 1);
	PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][7], 2751);
	PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][7], -100.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][7], 1, 1);

	HbeStuffs[playerid][8] = CreatePlayerTextDraw(playerid, 326.000, 418.500, "Preview_Model");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][8], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][8], 21.000, 28.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][8], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][8], 514038783);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][8], 0);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][8], 5);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][8], 1);
	PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][8], 2751);
	PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][8], -100.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][8], 1, 1);

	HbeStuffs[playerid][9] = CreatePlayerTextDraw(playerid, 347.000, 418.500, "Preview_Model");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][9], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][9], 21.000, 28.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][9], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][9], -2060041217);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][9], 0);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][9], 5);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][9], 1);
	PlayerTextDrawSetPreviewModel(playerid, HbeStuffs[playerid][9], 2751);
	PlayerTextDrawSetPreviewRot(playerid, HbeStuffs[playerid][9], -100.000, 0.000, 0.000, 1.000);
	PlayerTextDrawSetPreviewVehCol(playerid, HbeStuffs[playerid][9], 1, 1);

	HbeStuffs[playerid][10] = CreatePlayerTextDraw(playerid, 270.000, 430.000, "ld_beat:chit");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][10], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][10], 4.500, 6.000);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][10], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][10], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][10], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][10], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][10], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][10], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][10], 1);

	HbeStuffs[playerid][11] = CreatePlayerTextDraw(playerid, 272.500, 430.000, "ld_beat:chit");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][11], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][11], 4.500, 6.000);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][11], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][11], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][11], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][11], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][11], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][11], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][11], 1);

	HbeStuffs[playerid][12] = CreatePlayerTextDraw(playerid, 270.500, 431.000, "ld_beat:chit");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][12], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][12], 6.000, 7.000);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][12], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][12], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][12], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][12], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][12], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][12], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][12], 1);

	HbeStuffs[playerid][13] = CreatePlayerTextDraw(playerid, 271.500, 431.000, "ld_beat:chit");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][13], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][13], 4.000, 8.000);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][13], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][13], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][13], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][13], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][13], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][13], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][13], 1);

	HbeStuffs[playerid][14] = CreatePlayerTextDraw(playerid, 292.000, 431.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][14], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][14], 0.500, 6.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][14], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][14], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][14], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][14], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][14], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][14], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][14], 1);

	HbeStuffs[playerid][15] = CreatePlayerTextDraw(playerid, 297.000, 431.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][15], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][15], 0.500, 6.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][15], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][15], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][15], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][15], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][15], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][15], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][15], 1);

	HbeStuffs[playerid][16] = CreatePlayerTextDraw(playerid, 294.000, 430.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][16], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][16], 0.500, 8.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][16], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][16], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][16], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][16], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][16], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][16], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][16], 1);

	HbeStuffs[playerid][17] = CreatePlayerTextDraw(playerid, 295.000, 430.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][17], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][17], 0.500, 8.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][17], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][17], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][17], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][17], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][17], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][17], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][17], 1);

	HbeStuffs[playerid][18] = CreatePlayerTextDraw(playerid, 313.000, 436.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][18], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][18], 5.000, 2.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][18], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][18], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][18], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][18], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][18], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][18], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][18], 1);

	HbeStuffs[playerid][19] = CreatePlayerTextDraw(playerid, 312.000, 430.000, "ld_beat:chit");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][19], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][19], 7.500, 6.000);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][19], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][19], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][19], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][19], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][19], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][19], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][19], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][19], 1);

	HbeStuffs[playerid][20] = CreatePlayerTextDraw(playerid, 313.000, 433.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][20], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][20], 5.000, 2.000);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][20], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][20], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][20], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][20], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][20], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][20], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][20], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][20], 1);

	HbeStuffs[playerid][21] = CreatePlayerTextDraw(playerid, 333.000, 432.000, "ld_beat:chit");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][21], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][21], 7.500, 8.000);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][21], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][21], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][21], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][21], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][21], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][21], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][21], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][21], 1);

	HbeStuffs[playerid][22] = CreatePlayerTextDraw(playerid, 334.000, 439.000, "ld_beat:chit");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][22], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][22], 3.500, -9.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][22], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][22], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][22], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][22], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][22], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][22], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][22], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][22], 1);

	HbeStuffs[playerid][23] = CreatePlayerTextDraw(playerid, 335.000, 439.000, "ld_beat:chit");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][23], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][23], 2.500, -10.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][23], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][23], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][23], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][23], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][23], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][23], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][23], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][23], 1);

	HbeStuffs[playerid][24] = CreatePlayerTextDraw(playerid, 354.500, 428.000, "ld_beat:chit");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][24], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][24], 6.000, 13.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][24], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][24], -1);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][24], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][24], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][24], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][24], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][24], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][24], 1);

	HbeStuffs[playerid][25] = CreatePlayerTextDraw(playerid, 357.000, 431.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][25], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][25], 1.000, 9.000);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][25], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][25], -2060238849);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][25], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][25], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][25], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][25], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][25], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][25], 1);

	HbeStuffs[playerid][26] = CreatePlayerTextDraw(playerid, 356.000, 433.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][26], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][26], 3.000, 1.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][26], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][26], -2060238849);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][26], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][26], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][26], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][26], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][26], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][26], 1);

	HbeStuffs[playerid][27] = CreatePlayerTextDraw(playerid, 356.000, 435.000, "ld_dual:white");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][27], 0.600, 2.000);
	PlayerTextDrawTextSize(playerid, HbeStuffs[playerid][27], 3.000, 1.500);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][27], 1);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][27], -2060238849);
	PlayerTextDrawUseBox(playerid, HbeStuffs[playerid][27], 1);
	PlayerTextDrawBoxColor(playerid, HbeStuffs[playerid][27], 50);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][27], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][27], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][27], 255);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][27], 4);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][27], 1);

	HbeStuffs[playerid][28] = CreatePlayerTextDraw(playerid, 273.000, 415.000, "100");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][28], 0.160, 0.999);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][28], 2);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][28], -1);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][28], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][28], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][28], 796413234);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][28], 1);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][28], 1);

	HbeStuffs[playerid][29] = CreatePlayerTextDraw(playerid, 294.000, 415.000, "100");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][29], 0.160, 0.999);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][29], 2);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][29], -1);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][29], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][29], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][29], 712029746);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][29], 1);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][29], 1);

	HbeStuffs[playerid][30] = CreatePlayerTextDraw(playerid, 315.000, 415.000, "100");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][30], 0.160, 0.999);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][30], 2);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][30], -1);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][30], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][30], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][30], -1620558798);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][30], 1);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][30], 1);

	HbeStuffs[playerid][31] = CreatePlayerTextDraw(playerid, 336.000, 415.000, "100");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][31], 0.160, 0.999);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][31], 2);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][31], -1);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][31], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][31], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][31], 514038578);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][31], 1);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][31], 1);

	HbeStuffs[playerid][32] = CreatePlayerTextDraw(playerid, 357.000, 415.000, "100");
	PlayerTextDrawLetterSize(playerid, HbeStuffs[playerid][32], 0.160, 0.999);
	PlayerTextDrawAlignment(playerid, HbeStuffs[playerid][32], 2);
	PlayerTextDrawColor(playerid, HbeStuffs[playerid][32], -1);
	PlayerTextDrawSetShadow(playerid, HbeStuffs[playerid][32], 0);
	PlayerTextDrawSetOutline(playerid, HbeStuffs[playerid][32], 1);
	PlayerTextDrawBackgroundColor(playerid, HbeStuffs[playerid][32], -2060041404);
	PlayerTextDrawFont(playerid, HbeStuffs[playerid][32], 1);
	PlayerTextDrawSetProportional(playerid, HbeStuffs[playerid][32], 1);

    // Katepeh
    ktpTextdraws[playerid][0] = CreatePlayerTextDraw(playerid, 352.000, 223.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][0], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][0], 16.500, 20.500);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][0], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][0], 1671806975);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][0], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][0], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][0], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][0], 1);

    ktpTextdraws[playerid][1] = CreatePlayerTextDraw(playerid, 352.000, 335.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][1], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][1], 18.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][1], 2);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][1], 1671806975);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][1], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][1], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][1], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][1], 1);

    ktpTextdraws[playerid][2] = CreatePlayerTextDraw(playerid, 502.000, 335.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][2], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][2], 17.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][2], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][2], 1671806975);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][2], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][2], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][2], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][2], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][2], 1);

    ktpTextdraws[playerid][3] = CreatePlayerTextDraw(playerid, 502.000, 224.000, "ld_beat:chit");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][3], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][3], 17.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][3], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][3], 1671806975);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][3], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][3], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][3], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][3], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][3], 1);

    ktpTextdraws[playerid][4] = CreatePlayerTextDraw(playerid, 360.000, 306.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][4], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][4], 148.500, 43.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][4], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][4], 1671806975);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][4], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][4], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][4], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][4], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][4], 1);

    ktpTextdraws[playerid][5] = CreatePlayerTextDraw(playerid, 358.000, 306.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][5], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][5], 151.500, -79.500);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][5], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][5], 1671806975);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][5], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][5], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][5], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][5], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][5], 1);

    ktpTextdraws[playerid][6] = CreatePlayerTextDraw(playerid, 355.000, 233.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][6], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][6], 161.000, 109.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][6], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][6], 1671806975);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][6], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][6], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][6], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][6], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][6], 1);

    ktpTextdraws[playerid][7] = CreatePlayerTextDraw(playerid, 400.000, 276.000, "TANGGAL_LAHIR");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][7], 0.136, 1.049);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][7], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][7], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][7], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][7], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][7], 1);

    ktpTextdraws[playerid][8] = CreatePlayerTextDraw(playerid, 367.000, 246.000, "T");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][8], 0.399, 3.399);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][8], -6.000, 5.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][8], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][8], -65281);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][8], 1);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][8], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][8], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][8], 2);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][8], 1);

    ktpTextdraws[playerid][9] = CreatePlayerTextDraw(playerid, 374.000, 255.000, "R");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][9], 0.409, 2.799);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][9], -10.000, 9.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][9], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][9], -65281);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][9], 1);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][9], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][9], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][9], 2);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][9], 1);

    ktpTextdraws[playerid][10] = CreatePlayerTextDraw(playerid, 398.000, 250.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][10], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][10], 118.000, 14.500);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][10], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][10], -16776961);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][10], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][10], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][10], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][10], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][10], 1);

    ktpTextdraws[playerid][11] = CreatePlayerTextDraw(playerid, 398.000, 264.000, "ld_bum:blkdot");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][11], 0.600, 2.000);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][11], 118.000, 13.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][11], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][11], -1);
    PlayerTextDrawUseBox(playerid, ktpTextdraws[playerid][11], 1);
    PlayerTextDrawBoxColor(playerid, ktpTextdraws[playerid][11], 50);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][11], 1);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][11], -789973249);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][11], 1);

    ktpTextdraws[playerid][12] = CreatePlayerTextDraw(playerid, 407.000, 226.000, "KARTU_TANDA_PENDUDUK");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][12], 0.143, 1.149);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][12], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][12], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][12], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][12], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][12], 1);

    ktpTextdraws[playerid][13] = CreatePlayerTextDraw(playerid, 404.000, 234.000, "PEMERINTAH_KOTA_Imajinasi");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][13], 0.150, 1.299);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][13], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][13], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][13], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][13], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][13], 1);

    ktpTextdraws[playerid][14] = CreatePlayerTextDraw(playerid, 402.000, 255.000, "Sohivot_Lenort");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][14], 0.143, 1.649);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][14], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][14], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][14], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][14], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][14], 2);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][14], 1);

    ktpTextdraws[playerid][15] = CreatePlayerTextDraw(playerid, 453.000, 276.000, "KELAMIN");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][15], 0.133, 0.999);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][15], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][15], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][15], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][15], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][15], 1);

    ktpTextdraws[playerid][16] = CreatePlayerTextDraw(playerid, 490.000, 276.000, "TINGGI");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][16], 0.143, 1.049);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][16], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][16], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][16], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][16], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][16], 1);

    ktpTextdraws[playerid][17] = CreatePlayerTextDraw(playerid, 400.000, 294.000, "TANDA_TANGAN");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][17], 0.115, 1.049);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][17], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][17], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][17], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][17], 1);

    ktpTextdraws[playerid][18] = CreatePlayerTextDraw(playerid, 405.000, 283.000, "19-10-2001");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][18], 0.123, 0.898);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][18], 465.500, 10.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][18], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][18], -667137);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][18], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][18], 1);

    ktpTextdraws[playerid][19] = CreatePlayerTextDraw(playerid, 456.000, 283.000, "MALE");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][19], 0.143, 0.949);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][19], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][19], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][19], -667137);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][19], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][19], 1);

    ktpTextdraws[playerid][20] = CreatePlayerTextDraw(playerid, 494.000, 283.000, "165");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][20], 0.143, 0.949);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][20], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][20], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][20], -667137);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][20], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][20], 1);

    ktpTextdraws[playerid][21] = CreatePlayerTextDraw(playerid, 405.000, 303.000, "CHRIS");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][21], 0.188, 1.149);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][21], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][21], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][21], -667137);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][21], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][21], 0);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][21], 1);

    ktpTextdraws[playerid][22] = CreatePlayerTextDraw(playerid, 365.000, 314.000, "WARGA_NEGARA_Imajinasi");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][22], 0.158, 1.098);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][22], 400.000, 17.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][22], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][22], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][22], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][22], 1);

    ktpTextdraws[playerid][23] = CreatePlayerTextDraw(playerid, 365.000, 322.000, "KARTU_TANDA_PENDUDUK_INI_RESMI_DIKELUARKAN_PEMERINTAH_Imajinasi");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][23], 0.112, 0.898);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][23], 620.000, 20.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][23], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][23], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][23], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][23], 1);

    ktpTextdraws[playerid][24] = CreatePlayerTextDraw(playerid, 365.000, 329.000, "MENJADI_BUKTI_BAHWA_YANG_BERSANGKUTAN_MEMILIKI_HAK_DAN_KEWAJIBAN");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][24], 0.112, 0.898);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][24], 620.000, 20.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][24], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][24], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][24], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][24], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][24], 1);

    ktpTextdraws[playerid][25] = CreatePlayerTextDraw(playerid, 365.000, 336.000, "SEBAGAI_WARGA_Imajinasi");
    PlayerTextDrawLetterSize(playerid, ktpTextdraws[playerid][25], 0.112, 0.898);
    PlayerTextDrawTextSize(playerid, ktpTextdraws[playerid][25], 620.000, 20.000);
    PlayerTextDrawAlignment(playerid, ktpTextdraws[playerid][25], 1);
    PlayerTextDrawColor(playerid, ktpTextdraws[playerid][25], 255);
    PlayerTextDrawSetShadow(playerid, ktpTextdraws[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, ktpTextdraws[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, ktpTextdraws[playerid][25], 255);
    PlayerTextDrawFont(playerid, ktpTextdraws[playerid][25], 1);
    PlayerTextDrawSetProportional(playerid, ktpTextdraws[playerid][25], 1);

    // ATM Textdraw
    VR_ATMTD[playerid][0] = CreatePlayerTextDraw(playerid, 173.000, 102.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][0], 285.000, 243.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][0], 656943615);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][0], 1);

    VR_ATMTD[playerid][1] = CreatePlayerTextDraw(playerid, 186.000, 111.000, "Imajinasi");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][1], 0.250, 1.399);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][1], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][1], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][1], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][1], 1);

    VR_ATMTD[playerid][2] = CreatePlayerTextDraw(playerid, 185.000, 122.000, "BANKING");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][2], 0.259, 1.399);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][2], -261923073);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][2], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][2], 1);

    VR_ATMTD[playerid][3] = CreatePlayerTextDraw(playerid, 177.000, 141.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][3], 56.000, 1.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][3], -2139062017);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][3], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][3], 1);

    VR_ATMTD[playerid][4] = CreatePlayerTextDraw(playerid, 182.000, 143.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][4], 45.000, 45.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][4], -261923073);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][4], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][4], 1);

    VR_ATMTD[playerid][5] = CreatePlayerTextDraw(playerid, 196.000, 152.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][5], 16.000, 16.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][5], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][5], 1);

    VR_ATMTD[playerid][6] = CreatePlayerTextDraw(playerid, 191.000, 162.000, "LD_BEAT:chit");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][6], 27.000, 16.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][6], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][6], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][6], 1);

    VR_ATMTD[playerid][7] = CreatePlayerTextDraw(playerid, 181.000, 189.000, "Gilberd_Notowijoyo");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][7], 0.158, 1.399);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][7], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][7], 1);

    VR_ATMTD[playerid][8] = CreatePlayerTextDraw(playerid, 177.000, 212.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][8], 57.000, 1.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][8], -2139062017);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][8], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][8], 1);

    VR_ATMTD[playerid][9] = CreatePlayerTextDraw(playerid, 237.000, 109.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][9], 1.000, 198.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][9], -1448498689);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][9], 1);

    VR_ATMTD[playerid][10] = CreatePlayerTextDraw(playerid, 245.000, 117.000, "Main Account");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][10], 0.300, 1.699);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][10], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][10], 1);

    VR_ATMTD[playerid][11] = CreatePlayerTextDraw(playerid, 243.000, 138.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][11], 91.000, 54.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][11], -261923073);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][11], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][11], 1);

    VR_ATMTD[playerid][12] = CreatePlayerTextDraw(playerid, 243.000, 160.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][12], 91.000, 1.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][12], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][12], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][12], 1);

    VR_ATMTD[playerid][13] = CreatePlayerTextDraw(playerid, 243.000, 176.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][13], 91.000, 1.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][13], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][13], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][13], 1);

    VR_ATMTD[playerid][14] = CreatePlayerTextDraw(playerid, 246.000, 141.000, "Classic Card");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][14], 0.170, 1.098);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][14], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][14], 1);

    VR_ATMTD[playerid][15] = CreatePlayerTextDraw(playerid, 252.000, 162.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][15], 4.000, 8.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][15], -626712321);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][15], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][15], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][15], 1);

    VR_ATMTD[playerid][16] = CreatePlayerTextDraw(playerid, 252.000, 160.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][16], 19.000, 4.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][16], -626712321);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][16], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][16], 1);

    VR_ATMTD[playerid][17] = CreatePlayerTextDraw(playerid, 267.000, 162.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][17], 4.000, 8.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][17], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][17], -626712321);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][17], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][17], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][17], 1);

    VR_ATMTD[playerid][18] = CreatePlayerTextDraw(playerid, 257.000, 166.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][18], 8.000, 4.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][18], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][18], -626712321);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][18], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][18], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][18], 1);

    VR_ATMTD[playerid][19] = CreatePlayerTextDraw(playerid, 252.000, 171.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][19], 4.000, 5.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][19], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][19], -626712321);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][19], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][19], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][19], 1);

    VR_ATMTD[playerid][20] = CreatePlayerTextDraw(playerid, 252.000, 172.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][20], 16.000, 5.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][20], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][20], -626712321);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][20], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][20], 1);

    VR_ATMTD[playerid][21] = CreatePlayerTextDraw(playerid, 267.000, 172.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][21], 4.000, 5.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][21], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][21], -626712321);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][21], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][21], 1);

    VR_ATMTD[playerid][22] = CreatePlayerTextDraw(playerid, 298.000, 178.000, "MANDIRI");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][22], 0.250, 1.398);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][22], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][22], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][22], 1);

    VR_ATMTD[playerid][23] = CreatePlayerTextDraw(playerid, 345.000, 132.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][23], 88.000, 189.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][23], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][23], 842216703);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][23], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][23], 1);

    VR_ATMTD[playerid][24] = CreatePlayerTextDraw(playerid, 365.000, 160.000, "ATM MENU");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][24], 0.239, 1.398);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][24], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][24], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][24], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][24], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][24], 1);

    VR_ATMTD[playerid][25] = CreatePlayerTextDraw(playerid, 241.000, 211.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][25], 94.000, -1.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][25], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][25], -1448498689);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][25], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][25], 1);

    VR_ATMTD[playerid][26] = CreatePlayerTextDraw(playerid, 243.000, 214.000, "Informations");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][26], 0.259, 1.398);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][26], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][26], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][26], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][26], 1);

    VR_ATMTD[playerid][27] = CreatePlayerTextDraw(playerid, 243.000, 236.000, "Balance");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][27], 0.239, 1.297);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][27], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][27], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][27], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][27], 1);

    VR_ATMTD[playerid][28] = CreatePlayerTextDraw(playerid, 243.000, 257.000, "No. Rek");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][28], 0.239, 1.297);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][28], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][28], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][28], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][28], 1);

    VR_ATMTD[playerid][29] = CreatePlayerTextDraw(playerid, 243.000, 278.000, "Type");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][29], 0.239, 1.297);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][29], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][29], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][29], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][29], 1);

    VR_ATMTD[playerid][30] = CreatePlayerTextDraw(playerid, 297.000, 237.000, "$45,664");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][30], 0.239, 1.297);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][30], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][30], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][30], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][30], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][30], 1);

    VR_ATMTD[playerid][31] = CreatePlayerTextDraw(playerid, 297.000, 257.000, "992312");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][31], 0.239, 1.297);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][31], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][31], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][31], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][31], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][31], 1);

    VR_ATMTD[playerid][32] = CreatePlayerTextDraw(playerid, 297.000, 279.000, "Mandiri");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][32], 0.239, 1.297);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][32], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][32], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][32], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][32], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][32], 1);

    VR_ATMTD[playerid][33] = CreatePlayerTextDraw(playerid, 349.000, 177.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][33], 80.000, 28.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][33], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][33], -261923073);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][33], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][33], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][33], 1);

    VR_ATMTD[playerid][34] = CreatePlayerTextDraw(playerid, 349.000, 216.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][34], 80.000, 28.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][34], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][34], -261923073);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][34], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][34], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][34], 1);

    VR_ATMTD[playerid][35] = CreatePlayerTextDraw(playerid, 349.000, 254.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][35], 80.000, 28.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][35], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][35], -261923073);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][35], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][35], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][35], 1);

    VR_ATMTD[playerid][36] = CreatePlayerTextDraw(playerid, 365.000, 183.000, "WITHDRAW");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][36], 0.259, 1.598);
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][36], 466.000, 12.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][36], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][36], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][36], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][36], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][36], 1);
    PlayerTextDrawSetSelectable(playerid, VR_ATMTD[playerid][36], 1);

    VR_ATMTD[playerid][37] = CreatePlayerTextDraw(playerid, 370.000, 222.000, "DEPOSIT");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][37], 0.259, 1.598);
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][37], 466.000, 12.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][37], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][37], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][37], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][37], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][37], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][37], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][37], 1);
    PlayerTextDrawSetSelectable(playerid, VR_ATMTD[playerid][37], 1);

    VR_ATMTD[playerid][38] = CreatePlayerTextDraw(playerid, 367.000, 260.000, "TRANSFER");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][38], 0.259, 1.598);
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][38], 466.000, 12.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][38], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][38], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][38], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][38], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][38], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][38], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][38], 1);
    PlayerTextDrawSetSelectable(playerid, VR_ATMTD[playerid][38], 1);

    VR_ATMTD[playerid][39] = CreatePlayerTextDraw(playerid, 186.000, 290.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][39], 7.000, -2.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][39], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][39], 1819964927);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][39], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][39], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][39], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][39], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][39], 1);

    VR_ATMTD[playerid][40] = CreatePlayerTextDraw(playerid, 186.000, 289.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][40], 1.000, 15.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][40], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][40], 1819964927);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][40], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][40], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][40], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][40], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][40], 1);

    VR_ATMTD[playerid][41] = CreatePlayerTextDraw(playerid, 186.000, 306.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][41], 7.000, -2.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][41], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][41], 1819964927);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][41], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][41], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][41], 255);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][41], 4);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][41], 1);

    VR_ATMTD[playerid][42] = CreatePlayerTextDraw(playerid, 190.000, 287.000, ">");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][42], 0.300, 1.899);
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][42], 466.000, 12.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][42], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][42], 1819964927);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][42], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][42], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][42], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][42], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][42], 1);

    VR_ATMTD[playerid][43] = CreatePlayerTextDraw(playerid, 199.000, 290.000, "Log Out");
    PlayerTextDrawLetterSize(playerid, VR_ATMTD[playerid][43], 0.219, 1.297);
    PlayerTextDrawTextSize(playerid, VR_ATMTD[playerid][43], 466.000, 12.000);
    PlayerTextDrawAlignment(playerid, VR_ATMTD[playerid][43], 1);
    PlayerTextDrawColor(playerid, VR_ATMTD[playerid][43], -1);
    PlayerTextDrawSetShadow(playerid, VR_ATMTD[playerid][43], 0);
    PlayerTextDrawSetOutline(playerid, VR_ATMTD[playerid][43], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_ATMTD[playerid][43], 150);
    PlayerTextDrawFont(playerid, VR_ATMTD[playerid][43], 1);
    PlayerTextDrawSetProportional(playerid, VR_ATMTD[playerid][43], 1);
    PlayerTextDrawSetSelectable(playerid, VR_ATMTD[playerid][43], 1);

    // Karung
    VR_KARUNG[playerid][0] = CreatePlayerTextDraw(playerid, -29.000, -13.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, VR_KARUNG[playerid][0], 781.000, 582.000);
    PlayerTextDrawAlignment(playerid, VR_KARUNG[playerid][0], 1);
    PlayerTextDrawColor(playerid, VR_KARUNG[playerid][0], 255);
    PlayerTextDrawSetShadow(playerid, VR_KARUNG[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, VR_KARUNG[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_KARUNG[playerid][0], 255);
    PlayerTextDrawFont(playerid, VR_KARUNG[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, VR_KARUNG[playerid][0], 1);

    // Banned TD
    VR_BANNEDTD[playerid][0] = CreatePlayerTextDraw(playerid, 0.000, -6.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_BANNEDTD[playerid][0], 651.000, 470.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][0], 943210495);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][0], 1);

    VR_BANNEDTD[playerid][1] = CreatePlayerTextDraw(playerid, 89.000, 88.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_BANNEDTD[playerid][1], 458.000, 284.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][1], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][1], -2139062017);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][1], 255);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][1], 1);

    VR_BANNEDTD[playerid][2] = CreatePlayerTextDraw(playerid, 116.000, 104.000, "Imajinasi Roleplay");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][2], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][2], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][2], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][2], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][2], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][2], 1);

    VR_BANNEDTD[playerid][3] = CreatePlayerTextDraw(playerid, 102.000, 94.000, "/");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][3], 0.539, 3.700);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][3], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][3], -65281);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][3], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][3], 1);

    VR_BANNEDTD[playerid][4] = CreatePlayerTextDraw(playerid, 106.000, 96.000, "/");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][4], 0.539, 3.700);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][4], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][4], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][4], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][4], 1);

    VR_BANNEDTD[playerid][5] = CreatePlayerTextDraw(playerid, 117.000, 116.000, "Indonesia");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][5], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][5], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][5], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][5], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][5], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][5], 1);

    VR_BANNEDTD[playerid][6] = CreatePlayerTextDraw(playerid, 310.000, 144.000, "You Have Been Banned By Adm Mings");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][6], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][6], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][6], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][6], 1);

    VR_BANNEDTD[playerid][7] = CreatePlayerTextDraw(playerid, 209.000, 174.000, "UCP:_Kims");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][7], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][7], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][7], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][7], 1);

    VR_BANNEDTD[playerid][8] = CreatePlayerTextDraw(playerid, 209.000, 191.000, "Name: Kim_Jong");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][8], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][8], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][8], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][8], 1);

    VR_BANNEDTD[playerid][9] = CreatePlayerTextDraw(playerid, 201.000, 167.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, VR_BANNEDTD[playerid][9], 233.000, 104.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][9], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][9], 943210495);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][9], 255);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][9], 1);

    VR_BANNEDTD[playerid][10] = CreatePlayerTextDraw(playerid, 209.000, 207.000, "Level: 51");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][10], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][10], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][10], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][10], 1);

    VR_BANNEDTD[playerid][11] = CreatePlayerTextDraw(playerid, 209.000, 223.000, "Reason:");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][11], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][11], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][11], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][11], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][11], 1);

    VR_BANNEDTD[playerid][12] = CreatePlayerTextDraw(playerid, 318.000, 245.000, "Anda Mencoba Menggunakan Teleportasi");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][12], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][12], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][12], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][12], 1);

    VR_BANNEDTD[playerid][13] = CreatePlayerTextDraw(playerid, 376.000, 167.000, "/");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][13], 0.439, 2.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][13], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][13], -65281);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][13], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][13], 1);

    VR_BANNEDTD[playerid][14] = CreatePlayerTextDraw(playerid, 379.000, 168.000, "/");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][14], 0.439, 2.000);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][14], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][14], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][14], 1);

    VR_BANNEDTD[playerid][15] = CreatePlayerTextDraw(playerid, 387.000, 172.000, "Imajinasi Roleplay");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][15], 0.150, 1.100);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][15], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][15], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][15], 1);

    VR_BANNEDTD[playerid][16] = CreatePlayerTextDraw(playerid, 388.000, 181.000, "Indonesia");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][16], 0.150, 1.100);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][16], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][16], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][16], 1);

    VR_BANNEDTD[playerid][17] = CreatePlayerTextDraw(playerid, 321.000, 282.000, "TIDAK MERASA BERSALAH ATAUPUN TIDAK MERASA APA YANG DIBILANG OLEH ADMIN?");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][17], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][17], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][17], 255);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][17], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][17], 1);

    VR_BANNEDTD[playerid][18] = CreatePlayerTextDraw(playerid, 319.000, 297.000, "Report Misunderstandings On Discord: ~y~http://discord.gg/VeronaRoleplay");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][18], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][18], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][18], 255);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][18], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][18], 1);

    VR_BANNEDTD[playerid][19] = CreatePlayerTextDraw(playerid, 324.000, 314.000, "In Channel: #create-ticket");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][19], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][19], 2);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][19], 255);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][19], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][19], 1);

    VR_BANNEDTD[playerid][20] = CreatePlayerTextDraw(playerid, 94.000, 352.000, "Tanggal Terbanned: 25-02-2003");
    PlayerTextDrawLetterSize(playerid, VR_BANNEDTD[playerid][20], 0.220, 1.500);
    PlayerTextDrawAlignment(playerid, VR_BANNEDTD[playerid][20], 1);
    PlayerTextDrawColor(playerid, VR_BANNEDTD[playerid][20], 255);
    PlayerTextDrawSetShadow(playerid, VR_BANNEDTD[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, VR_BANNEDTD[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, VR_BANNEDTD[playerid][20], 150);
    PlayerTextDrawFont(playerid, VR_BANNEDTD[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, VR_BANNEDTD[playerid][20], 1);

    // LoadBarTD
    ProgressBar[playerid][0] = CreatePlayerTextDraw(playerid, 210.000, 359.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ProgressBar[playerid][0], 107.000, 26.000);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][0], 1);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][0], 842682623);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][0], 255);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][0], 1);

    ProgressBar[playerid][1] = CreatePlayerTextDraw(playerid, 212.000, 362.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ProgressBar[playerid][1], 103.000, 21.000);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][1], 1);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][1], -185);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][1], 255);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][1], 1);

    ProgressBar[playerid][2] = CreatePlayerTextDraw(playerid, 212.000, 362.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, ProgressBar[playerid][2], 103.000, 21.000);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][2], 1);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][2], -2686721);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][2], 255);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][2], 1);

    ProgressBar[playerid][3] = CreatePlayerTextDraw(playerid, 265.000, 365.000, "MAKAN");
    PlayerTextDrawLetterSize(playerid, ProgressBar[playerid][3], 0.216, 1.500);
    PlayerTextDrawAlignment(playerid, ProgressBar[playerid][3], 2);
    PlayerTextDrawColor(playerid, ProgressBar[playerid][3], -1);
    PlayerTextDrawSetShadow(playerid, ProgressBar[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, ProgressBar[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, ProgressBar[playerid][3], 150);
    PlayerTextDrawFont(playerid, ProgressBar[playerid][3], 1);
    PlayerTextDrawSetProportional(playerid, ProgressBar[playerid][3], 1);


    
    // Robbery
    RobberyTextTD[playerid][0] = CreatePlayerTextDraw(playerid, 18.000, 195.000, "  Mohon tetap diwarung~n~selama 14 menit 59 detik");
    PlayerTextDrawLetterSize(playerid, RobberyTextTD[playerid][0], 0.249, 1.399);
    PlayerTextDrawAlignment(playerid, RobberyTextTD[playerid][0], 1);
    PlayerTextDrawColor(playerid, RobberyTextTD[playerid][0], 1926329087);
    PlayerTextDrawSetShadow(playerid, RobberyTextTD[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, RobberyTextTD[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, RobberyTextTD[playerid][0], 255);
    PlayerTextDrawFont(playerid, RobberyTextTD[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, RobberyTextTD[playerid][0], 1);
    // Fivem HBE

    // Clothes New
    P_MENUCLOTHES[playerid][0] = CreatePlayerTextDraw(playerid, 130.000, 158.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][0], 64.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][0], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][0], -6710855);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][0], 255);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][0], 1);

    P_MENUCLOTHES[playerid][1] = CreatePlayerTextDraw(playerid, 130.000, 182.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][1], 64.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][1], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][1], -6710855);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][1], 255);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][1], 1);

    P_MENUCLOTHES[playerid][2] = CreatePlayerTextDraw(playerid, 130.000, 206.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][2], 64.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][2], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][2], -6710855);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][2], 255);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][2], 1);

    P_MENUCLOTHES[playerid][3] = CreatePlayerTextDraw(playerid, 130.000, 230.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][3], 64.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][3], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][3], -6710855);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][3], 255);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][3], 1);

    P_MENUCLOTHES[playerid][4] = CreatePlayerTextDraw(playerid, 130.000, 255.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][4], 64.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][4], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][4], -6710855);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][4], 255);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][4], 1);

    P_MENUCLOTHES[playerid][5] = CreatePlayerTextDraw(playerid, 130.000, 331.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][5], 64.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][5], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][5], -6710855);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][5], 255);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][5], 1);

    P_MENUCLOTHES[playerid][6] = CreatePlayerTextDraw(playerid, 146.000, 161.000, "PAKAIAN");
    PlayerTextDrawLetterSize(playerid, P_MENUCLOTHES[playerid][6], 0.218, 1.500);
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][6], 226.000, 6.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][6], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][6], -1);
    PlayerTextDrawUseBox(playerid, P_MENUCLOTHES[playerid][6], 0);
    PlayerTextDrawBoxColor(playerid, P_MENUCLOTHES[playerid][6], 0);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][6], 150);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][6], 1);
    PlayerTextDrawSetSelectable(playerid, P_MENUCLOTHES[playerid][6], 1);

    P_MENUCLOTHES[playerid][7] = CreatePlayerTextDraw(playerid, 141.000, 184.000, "TOPI/HELMET");
    PlayerTextDrawLetterSize(playerid, P_MENUCLOTHES[playerid][7], 0.218, 1.500);
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][7], 226.000, 6.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][7], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][7], -1);
    PlayerTextDrawUseBox(playerid, P_MENUCLOTHES[playerid][7], 0);
    PlayerTextDrawBoxColor(playerid, P_MENUCLOTHES[playerid][7], 0);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][7], 150);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][7], 1);
    PlayerTextDrawSetSelectable(playerid, P_MENUCLOTHES[playerid][7], 1);

    P_MENUCLOTHES[playerid][8] = CreatePlayerTextDraw(playerid, 143.000, 208.000, "KACAMATA");
    PlayerTextDrawLetterSize(playerid, P_MENUCLOTHES[playerid][8], 0.218, 1.500);
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][8], 226.000, 6.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][8], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][8], -1);
    PlayerTextDrawUseBox(playerid, P_MENUCLOTHES[playerid][8], 0);
    PlayerTextDrawBoxColor(playerid, P_MENUCLOTHES[playerid][8], 0);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][8], 150);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][8], 1);
    PlayerTextDrawSetSelectable(playerid, P_MENUCLOTHES[playerid][8], 1);

    P_MENUCLOTHES[playerid][9] = CreatePlayerTextDraw(playerid, 143.000, 233.000, "AKSESORIS");
    PlayerTextDrawLetterSize(playerid, P_MENUCLOTHES[playerid][9], 0.218, 1.500);
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][9], 226.000, 6.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][9], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][9], -1);
    PlayerTextDrawUseBox(playerid, P_MENUCLOTHES[playerid][9], 0);
    PlayerTextDrawBoxColor(playerid, P_MENUCLOTHES[playerid][9], 0);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][9], 150);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][9], 1);
    PlayerTextDrawSetSelectable(playerid, P_MENUCLOTHES[playerid][9], 1);

    P_MENUCLOTHES[playerid][10] = CreatePlayerTextDraw(playerid, 143.000, 257.000, "TAS/KOPER");
    PlayerTextDrawLetterSize(playerid, P_MENUCLOTHES[playerid][10], 0.218, 1.500);
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][10], 226.000, 6.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][10], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][10], -1);
    PlayerTextDrawUseBox(playerid, P_MENUCLOTHES[playerid][10], 0);
    PlayerTextDrawBoxColor(playerid, P_MENUCLOTHES[playerid][10], 0);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][10], 150);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][10], 1);
    PlayerTextDrawSetSelectable(playerid, P_MENUCLOTHES[playerid][10], 1);

    P_MENUCLOTHES[playerid][11] = CreatePlayerTextDraw(playerid, 151.000, 334.000, "BATAL");
    PlayerTextDrawLetterSize(playerid, P_MENUCLOTHES[playerid][11], 0.218, 1.500);
    PlayerTextDrawTextSize(playerid, P_MENUCLOTHES[playerid][11], 226.000, 6.000);
    PlayerTextDrawAlignment(playerid, P_MENUCLOTHES[playerid][11], 1);
    PlayerTextDrawColor(playerid, P_MENUCLOTHES[playerid][11], -1);
    PlayerTextDrawUseBox(playerid, P_MENUCLOTHES[playerid][11], 0);
    PlayerTextDrawBoxColor(playerid, P_MENUCLOTHES[playerid][11], 0);
    PlayerTextDrawSetShadow(playerid, P_MENUCLOTHES[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, P_MENUCLOTHES[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, P_MENUCLOTHES[playerid][11], 150);
    PlayerTextDrawFont(playerid, P_MENUCLOTHES[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, P_MENUCLOTHES[playerid][11], 1);
    PlayerTextDrawSetSelectable(playerid, P_MENUCLOTHES[playerid][11], 1);

    P_CLOTHESSELECT[playerid][0] = CreatePlayerTextDraw(playerid, 127.000, 159.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][0], 64.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][0], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][0], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][0], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][0], 1);

    P_CLOTHESSELECT[playerid][1] = CreatePlayerTextDraw(playerid, 69.000, 264.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][1], 36.000, 18.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][1], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][1], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][1], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][1], 1);

    P_CLOTHESSELECT[playerid][2] = CreatePlayerTextDraw(playerid, 209.000, 264.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][2], 36.000, 18.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][2], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][2], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][2], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][2], 1);

    P_CLOTHESSELECT[playerid][3] = CreatePlayerTextDraw(playerid, 69.000, 287.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][3], 36.000, 18.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][3], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][3], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][3], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][3], 1);

    P_CLOTHESSELECT[playerid][4] = CreatePlayerTextDraw(playerid, 209.000, 287.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][4], 36.000, 18.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][4], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][4], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][4], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][4], 1);

    P_CLOTHESSELECT[playerid][5] = CreatePlayerTextDraw(playerid, 125.000, 286.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][5], 67.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][5], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][5], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][5], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][5], 1);

    P_CLOTHESSELECT[playerid][6] = CreatePlayerTextDraw(playerid, 226.000, 375.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][6], 67.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][6], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][6], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][6], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][6], 1);

    P_CLOTHESSELECT[playerid][7] = CreatePlayerTextDraw(playerid, 310.000, 375.000, "LD_BUM:blkdot");
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][7], 46.000, 20.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][7], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][7], -6710855);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][7], 255);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][7], 1);

    P_CLOTHESSELECT[playerid][8] = CreatePlayerTextDraw(playerid, 140.000, 160.000, "TOPI/HELM");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][8], 0.219, 1.700);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][8], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][8], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][8], 1);

    P_CLOTHESSELECT[playerid][9] = CreatePlayerTextDraw(playerid, 73.000, 265.000, "< ROT");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][9], 0.219, 1.600);
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][9], 118.000, 10.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][9], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][9], -1);
    PlayerTextDrawUseBox(playerid, P_CLOTHESSELECT[playerid][9], 0);
    PlayerTextDrawBoxColor(playerid, P_CLOTHESSELECT[playerid][9], 0);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][9], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][9], 1);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][9], 1);
    PlayerTextDrawSetSelectable(playerid, P_CLOTHESSELECT[playerid][9], 1);

    P_CLOTHESSELECT[playerid][10] = CreatePlayerTextDraw(playerid, 221.000, 265.000, "ROT >");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][10], 0.219, 1.600);
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][10], 264.000, 10.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][10], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][10], -1);
    PlayerTextDrawUseBox(playerid, P_CLOTHESSELECT[playerid][10], 0);
    PlayerTextDrawBoxColor(playerid, P_CLOTHESSELECT[playerid][10], 0);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][10], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][10], 1);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][10], 1);
    PlayerTextDrawSetSelectable(playerid, P_CLOTHESSELECT[playerid][10], 1);

    P_CLOTHESSELECT[playerid][11] = CreatePlayerTextDraw(playerid, 80.000, 288.000, "<<");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][11], 0.219, 1.600);
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][11], 118.000, 10.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][11], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][11], -1);
    PlayerTextDrawUseBox(playerid, P_CLOTHESSELECT[playerid][11], 0);
    PlayerTextDrawBoxColor(playerid, P_CLOTHESSELECT[playerid][11], 0);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][11], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][11], 1);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][11], 1);
    PlayerTextDrawSetSelectable(playerid, P_CLOTHESSELECT[playerid][11], 1);

    P_CLOTHESSELECT[playerid][12] = CreatePlayerTextDraw(playerid, 222.000, 288.000, ">>");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][12], 0.219, 1.600);
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][12], 264.000, 10.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][12], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][12], -1);
    PlayerTextDrawUseBox(playerid, P_CLOTHESSELECT[playerid][12], 0);
    PlayerTextDrawBoxColor(playerid, P_CLOTHESSELECT[playerid][12], 0);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][12], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][12], 1);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][12], 1);
    PlayerTextDrawSetSelectable(playerid, P_CLOTHESSELECT[playerid][12], 1);

    P_CLOTHESSELECT[playerid][13] = CreatePlayerTextDraw(playerid, 151.000, 288.000, "BELI");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][13], 0.250, 1.600);
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][13], 201.000, 10.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][13], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][13], -1);
    PlayerTextDrawUseBox(playerid, P_CLOTHESSELECT[playerid][13], 0);
    PlayerTextDrawBoxColor(playerid, P_CLOTHESSELECT[playerid][13], 0);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][13], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][13], 1);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][13], 1);
    PlayerTextDrawSetSelectable(playerid, P_CLOTHESSELECT[playerid][13], 1);

    P_CLOTHESSELECT[playerid][14] = CreatePlayerTextDraw(playerid, 246.000, 377.000, "KEMBALI");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][14], 0.219, 1.600);
    PlayerTextDrawTextSize(playerid, P_CLOTHESSELECT[playerid][14], 315.000, 12.000);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][14], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][14], -1);
    PlayerTextDrawUseBox(playerid, P_CLOTHESSELECT[playerid][14], 0);
    PlayerTextDrawBoxColor(playerid, P_CLOTHESSELECT[playerid][14], 0);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][14], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][14], 1);
    PlayerTextDrawSetSelectable(playerid, P_CLOTHESSELECT[playerid][14], 1);

    P_CLOTHESSELECT[playerid][15] = CreatePlayerTextDraw(playerid, 323.000, 377.000, "0/96");
    PlayerTextDrawLetterSize(playerid, P_CLOTHESSELECT[playerid][15], 0.270, 1.600);
    PlayerTextDrawAlignment(playerid, P_CLOTHESSELECT[playerid][15], 1);
    PlayerTextDrawColor(playerid, P_CLOTHESSELECT[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, P_CLOTHESSELECT[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, P_CLOTHESSELECT[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, P_CLOTHESSELECT[playerid][15], 150);
    PlayerTextDrawFont(playerid, P_CLOTHESSELECT[playerid][15], 3);
    PlayerTextDrawSetProportional(playerid, P_CLOTHESSELECT[playerid][15], 1);

    // Bus Waiting
    BusWait[playerid][0] = CreatePlayerTextDraw(playerid, 320.000, 351.000, "~w~Waiting_Time:_10~n~~r~NOTE~w~: Tunggu untuk lanjut ke rute berikutnya");
    PlayerTextDrawLetterSize(playerid, BusWait[playerid][0], 0.300, 1.500);
    PlayerTextDrawAlignment(playerid, BusWait[playerid][0], 2);
    PlayerTextDrawColor(playerid, BusWait[playerid][0], -1);
    PlayerTextDrawSetShadow(playerid, BusWait[playerid][0], 1);
    PlayerTextDrawSetOutline(playerid, BusWait[playerid][0], 1);
    PlayerTextDrawBackgroundColor(playerid, BusWait[playerid][0], 150);
    PlayerTextDrawFont(playerid, BusWait[playerid][0], 1);
    PlayerTextDrawSetProportional(playerid, BusWait[playerid][0], 1);
}

CreateTextDraw()
{ 

//ann
    AnnouncementTD[0] = TextDrawCreate(231.000, 59.000, "LD_BUM:blkdot");
    TextDrawTextSize(AnnouncementTD[0], 180.000, 48.000);
    TextDrawAlignment(AnnouncementTD[0], 1);
    TextDrawColor(AnnouncementTD[0], -191362561);
    TextDrawSetShadow(AnnouncementTD[0], 0);
    TextDrawSetOutline(AnnouncementTD[0], 0);
    TextDrawBackgroundColor(AnnouncementTD[0], 255);
    TextDrawFont(AnnouncementTD[0], 4);
    TextDrawSetProportional(AnnouncementTD[0], 1);

    AnnouncementTD[1] = TextDrawCreate(258.000, 67.000, "Server AnnouncementTD by Admin:");
    TextDrawLetterSize(AnnouncementTD[1], 0.230, 1.098);
    TextDrawAlignment(AnnouncementTD[1], 1);
    TextDrawColor(AnnouncementTD[1], -1);
    TextDrawSetShadow(AnnouncementTD[1], 0);
    TextDrawSetOutline(AnnouncementTD[1], 0);
    TextDrawBackgroundColor(AnnouncementTD[1], 150);
    TextDrawFont(AnnouncementTD[1], 1);
    TextDrawSetProportional(AnnouncementTD[1], 1);

    AnnouncementTD[2] = TextDrawCreate(258.000, 79.000, "KONTLTOLDO AJIM DWAKDAW WDWAD DAWDAWDAAS W");
    TextDrawLetterSize(AnnouncementTD[2], 0.179, 1.098);
    TextDrawTextSize(AnnouncementTD[2], 392.000, 15.000);
    TextDrawAlignment(AnnouncementTD[2], 1);
    TextDrawColor(AnnouncementTD[2], -1);
    TextDrawSetShadow(AnnouncementTD[2], 0);
    TextDrawSetOutline(AnnouncementTD[2], 0);
    TextDrawBackgroundColor(AnnouncementTD[2], 150);
    TextDrawFont(AnnouncementTD[2], 1);
    TextDrawSetProportional(AnnouncementTD[2], 1);

    AnnouncementTD[3] = TextDrawCreate(236.000, 67.000, "/");
    TextDrawLetterSize(AnnouncementTD[3], 0.658, 3.098);
    TextDrawAlignment(AnnouncementTD[3], 1);
    TextDrawColor(AnnouncementTD[3], -1);
    TextDrawSetShadow(AnnouncementTD[3], 0);
    TextDrawSetOutline(AnnouncementTD[3], 0);
    TextDrawBackgroundColor(AnnouncementTD[3], 150);
    TextDrawFont(AnnouncementTD[3], 2);
    TextDrawSetProportional(AnnouncementTD[3], 1);

    AnnouncementTD[4] = TextDrawCreate(243.000, 67.000, "\\");
    TextDrawLetterSize(AnnouncementTD[4], 0.658, 3.098);
    TextDrawAlignment(AnnouncementTD[4], 1);
    TextDrawColor(AnnouncementTD[4], -1);
    TextDrawSetShadow(AnnouncementTD[4], 0);
    TextDrawSetOutline(AnnouncementTD[4], 0);
    TextDrawBackgroundColor(AnnouncementTD[4], 150);
    TextDrawFont(AnnouncementTD[4], 2);
    TextDrawSetProportional(AnnouncementTD[4], 1);

    AnnouncementTD[5] = TextDrawCreate(236.000, 83.000, "-");
    TextDrawLetterSize(AnnouncementTD[5], 1.610, 1.598);
    TextDrawTextSize(AnnouncementTD[5], 0.000, -62.000);
    TextDrawAlignment(AnnouncementTD[5], 1);
    TextDrawColor(AnnouncementTD[5], -1);
    TextDrawSetShadow(AnnouncementTD[5], 0);
    TextDrawSetOutline(AnnouncementTD[5], 0);
    TextDrawBackgroundColor(AnnouncementTD[5], 150);
    TextDrawFont(AnnouncementTD[5], 2);
    TextDrawSetProportional(AnnouncementTD[5], 1);

    AnnouncementTD[6] = TextDrawCreate(244.000, 78.000, "!");
    TextDrawLetterSize(AnnouncementTD[6], 0.230, 1.399);
    TextDrawTextSize(AnnouncementTD[6], 0.000, -62.000);
    TextDrawAlignment(AnnouncementTD[6], 1);
    TextDrawColor(AnnouncementTD[6], -1);
    TextDrawSetShadow(AnnouncementTD[6], 0);
    TextDrawSetOutline(AnnouncementTD[6], 0);
    TextDrawBackgroundColor(AnnouncementTD[6], 150);
    TextDrawFont(AnnouncementTD[6], 2);
    TextDrawSetProportional(AnnouncementTD[6], 1);

   //TD Ammo / weapon NEW
    AmmoNewTD[0] = TextDrawCreate(539.000000, 114.000000, "ld_drv:blkdot");
    TextDrawFont(AmmoNewTD[0], 4);
    TextDrawLetterSize(AmmoNewTD[0], 0.600000, 2.000000);
    TextDrawTextSize(AmmoNewTD[0], 95.000000, 29.000000);
    TextDrawSetOutline(AmmoNewTD[0], 1);
    TextDrawSetShadow(AmmoNewTD[0], 0);
    TextDrawAlignment(AmmoNewTD[0], 1);
    TextDrawColor(AmmoNewTD[0], 217);
    TextDrawBackgroundColor(AmmoNewTD[0], 255);
    TextDrawBoxColor(AmmoNewTD[0], 50);
    TextDrawUseBox(AmmoNewTD[0], 1);
    TextDrawSetProportional(AmmoNewTD[0], 1);
    TextDrawSetSelectable(AmmoNewTD[0], 0);


    RadialTD1[0] = TextDrawCreate(284.000, 231.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[0], 66.000, 4.000);
    TextDrawAlignment(RadialTD1[0], 1);
    TextDrawColor(RadialTD1[0], 1887473919);
    TextDrawSetShadow(RadialTD1[0], 0);
    TextDrawSetOutline(RadialTD1[0], 0);
    TextDrawBackgroundColor(RadialTD1[0], 255);
    TextDrawFont(RadialTD1[0], 4);
    TextDrawSetProportional(RadialTD1[0], 1);

    RadialTD1[1] = TextDrawCreate(306.000, 221.000, "LD_POOL:ball");
    TextDrawTextSize(RadialTD1[1], 26.000, 26.000);
    TextDrawAlignment(RadialTD1[1], 1);
    TextDrawColor(RadialTD1[1], 2005441023);
    TextDrawSetShadow(RadialTD1[1], 0);
    TextDrawSetOutline(RadialTD1[1], 0);
    TextDrawBackgroundColor(RadialTD1[1], 255);
    TextDrawFont(RadialTD1[1], 4);
    TextDrawSetProportional(RadialTD1[1], 1);
    TextDrawSetSelectable(RadialTD1[1], 1);

    RadialTD1[2] = TextDrawCreate(280.000, 259.000, "_");
    TextDrawTextSize(RadialTD1[2], 78.000, 90.000);
    TextDrawAlignment(RadialTD1[2], 1);
    TextDrawColor(RadialTD1[2], 132);
    TextDrawSetShadow(RadialTD1[2], 0);
    TextDrawSetOutline(RadialTD1[2], 0);
    TextDrawBackgroundColor(RadialTD1[2], 0);
    TextDrawFont(RadialTD1[2], 5);
    TextDrawSetProportional(RadialTD1[2], 0);
    TextDrawSetPreviewModel(RadialTD1[2], 3046);
    TextDrawSetPreviewRot(RadialTD1[2], 0.000, -30.000, 0.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD1[2], 0, 0);
    TextDrawSetSelectable(RadialTD1[2], 1);

    RadialTD1[3] = TextDrawCreate(334.000, 193.000, "_");
    TextDrawTextSize(RadialTD1[3], 78.000, 90.000);
    TextDrawAlignment(RadialTD1[3], 1);
    TextDrawColor(RadialTD1[3], 132);
    TextDrawSetShadow(RadialTD1[3], 0);
    TextDrawSetOutline(RadialTD1[3], 0);
    TextDrawBackgroundColor(RadialTD1[3], 0);
    TextDrawFont(RadialTD1[3], 5);
    TextDrawSetProportional(RadialTD1[3], 0);
    TextDrawSetPreviewModel(RadialTD1[3], 3046);
    TextDrawSetPreviewRot(RadialTD1[3], 0.000, -30.000, 0.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD1[3], 0, 0);
    TextDrawSetSelectable(RadialTD1[3], 1);

    RadialTD1[4] = TextDrawCreate(222.000, 191.000, "_");
    TextDrawTextSize(RadialTD1[4], 78.000, 90.000);
    TextDrawAlignment(RadialTD1[4], 1);
    TextDrawColor(RadialTD1[4], 132);
    TextDrawSetShadow(RadialTD1[4], 0);
    TextDrawSetOutline(RadialTD1[4], 0);
    TextDrawBackgroundColor(RadialTD1[4], 0);
    TextDrawFont(RadialTD1[4], 5);
    TextDrawSetProportional(RadialTD1[4], 0);
    TextDrawSetPreviewModel(RadialTD1[4], 3046);
    TextDrawSetPreviewRot(RadialTD1[4], 0.000, -30.000, 0.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD1[4], 0, 0);
    TextDrawSetSelectable(RadialTD1[4], 1);

    RadialTD1[5] = TextDrawCreate(280.000, 118.000, "_");
    TextDrawTextSize(RadialTD1[5], 78.000, 90.000);
    TextDrawAlignment(RadialTD1[5], 1);
    TextDrawColor(RadialTD1[5], 132);
    TextDrawSetShadow(RadialTD1[5], 0);
    TextDrawSetOutline(RadialTD1[5], 0);
    TextDrawBackgroundColor(RadialTD1[5], 0);
    TextDrawFont(RadialTD1[5], 5);
    TextDrawSetProportional(RadialTD1[5], 0);
    TextDrawSetPreviewModel(RadialTD1[5], 3046);
    TextDrawSetPreviewRot(RadialTD1[5], 0.000, -30.000, 0.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD1[5], 0, 0);
    TextDrawSetSelectable(RadialTD1[5], 1);

    RadialTD1[6] = TextDrawCreate(313.000, 222.000, "X");
    TextDrawLetterSize(RadialTD1[6], 0.549, 2.499);
    TextDrawAlignment(RadialTD1[6], 1);
    TextDrawColor(RadialTD1[6], 1768516095);
    TextDrawSetShadow(RadialTD1[6], 0);
    TextDrawSetOutline(RadialTD1[6], 0);
    TextDrawBackgroundColor(RadialTD1[6], 150);
    TextDrawFont(RadialTD1[6], 1);
    TextDrawSetProportional(RadialTD1[6], 1);

    RadialTD1[7] = TextDrawCreate(308.000, 175.000, "Kendaraan");
    TextDrawLetterSize(RadialTD1[7], 0.149, 1.299);
    TextDrawAlignment(RadialTD1[7], 1);
    TextDrawColor(RadialTD1[7], -1);
    TextDrawSetShadow(RadialTD1[7], 0);
    TextDrawSetOutline(RadialTD1[7], 0);
    TextDrawBackgroundColor(RadialTD1[7], 150);
    TextDrawFont(RadialTD1[7], 1);
    TextDrawSetProportional(RadialTD1[7], 1);

    RadialTD1[8] = TextDrawCreate(366.000, 249.000, "General");
    TextDrawLetterSize(RadialTD1[8], 0.149, 1.299);
    TextDrawAlignment(RadialTD1[8], 1);
    TextDrawColor(RadialTD1[8], -1);
    TextDrawSetShadow(RadialTD1[8], 0);
    TextDrawSetOutline(RadialTD1[8], 0);
    TextDrawBackgroundColor(RadialTD1[8], 150);
    TextDrawFont(RadialTD1[8], 1);
    TextDrawSetProportional(RadialTD1[8], 1);

    RadialTD1[9] = TextDrawCreate(252.000, 250.000, "Dokumen");
    TextDrawLetterSize(RadialTD1[9], 0.149, 1.299);
    TextDrawAlignment(RadialTD1[9], 1);
    TextDrawColor(RadialTD1[9], -1);
    TextDrawSetShadow(RadialTD1[9], 0);
    TextDrawSetOutline(RadialTD1[9], 0);
    TextDrawBackgroundColor(RadialTD1[9], 150);
    TextDrawFont(RadialTD1[9], 1);
    TextDrawSetProportional(RadialTD1[9], 1);

    RadialTD1[10] = TextDrawCreate(314.000, 318.000, "Aksi");
    TextDrawLetterSize(RadialTD1[10], 0.149, 1.299);
    TextDrawAlignment(RadialTD1[10], 1);
    TextDrawColor(RadialTD1[10], -1);
    TextDrawSetShadow(RadialTD1[10], 0);
    TextDrawSetOutline(RadialTD1[10], 0);
    TextDrawBackgroundColor(RadialTD1[10], 150);
    TextDrawFont(RadialTD1[10], 1);
    TextDrawSetProportional(RadialTD1[10], 1);

    RadialTD1[11] = TextDrawCreate(307.000, 158.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD1[11], 22.000, 11.000);
    TextDrawAlignment(RadialTD1[11], 1);
    TextDrawColor(RadialTD1[11], -1);
    TextDrawSetShadow(RadialTD1[11], 0);
    TextDrawSetOutline(RadialTD1[11], 0);
    TextDrawBackgroundColor(RadialTD1[11], 255);
    TextDrawFont(RadialTD1[11], 4);
    TextDrawSetProportional(RadialTD1[11], 1);

    RadialTD1[12] = TextDrawCreate(308.000, 168.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD1[12], 4.000, 5.000);
    TextDrawAlignment(RadialTD1[12], 1);
    TextDrawColor(RadialTD1[12], -1);
    TextDrawSetShadow(RadialTD1[12], 0);
    TextDrawSetOutline(RadialTD1[12], 0);
    TextDrawBackgroundColor(RadialTD1[12], 255);
    TextDrawFont(RadialTD1[12], 4);
    TextDrawSetProportional(RadialTD1[12], 1);

    RadialTD1[13] = TextDrawCreate(324.000, 168.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD1[13], 4.000, 5.000);
    TextDrawAlignment(RadialTD1[13], 1);
    TextDrawColor(RadialTD1[13], -1);
    TextDrawSetShadow(RadialTD1[13], 0);
    TextDrawSetOutline(RadialTD1[13], 0);
    TextDrawBackgroundColor(RadialTD1[13], 255);
    TextDrawFont(RadialTD1[13], 4);
    TextDrawSetProportional(RadialTD1[13], 1);

    RadialTD1[14] = TextDrawCreate(307.000, 147.000, "/");
    TextDrawLetterSize(RadialTD1[14], 0.300, 1.199);
    TextDrawAlignment(RadialTD1[14], 1);
    TextDrawColor(RadialTD1[14], -1);
    TextDrawSetShadow(RadialTD1[14], 0);
    TextDrawSetOutline(RadialTD1[14], 0);
    TextDrawBackgroundColor(RadialTD1[14], 150);
    TextDrawFont(RadialTD1[14], 1);
    TextDrawSetProportional(RadialTD1[14], 1);

    RadialTD1[15] = TextDrawCreate(324.000, 147.000, "\\");
    TextDrawLetterSize(RadialTD1[15], 0.300, 1.199);
    TextDrawAlignment(RadialTD1[15], 1);
    TextDrawColor(RadialTD1[15], -1);
    TextDrawSetShadow(RadialTD1[15], 0);
    TextDrawSetOutline(RadialTD1[15], 0);
    TextDrawBackgroundColor(RadialTD1[15], 150);
    TextDrawFont(RadialTD1[15], 1);
    TextDrawSetProportional(RadialTD1[15], 1);

    RadialTD1[16] = TextDrawCreate(310.000, 149.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD1[16], 15.000, 3.000);
    TextDrawAlignment(RadialTD1[16], 1);
    TextDrawColor(RadialTD1[16], -1);
    TextDrawSetShadow(RadialTD1[16], 0);
    TextDrawSetOutline(RadialTD1[16], 0);
    TextDrawBackgroundColor(RadialTD1[16], 255);
    TextDrawFont(RadialTD1[16], 4);
    TextDrawSetProportional(RadialTD1[16], 1);

    RadialTD1[17] = TextDrawCreate(305.000, 155.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD1[17], 4.000, 5.000);
    TextDrawAlignment(RadialTD1[17], 1);
    TextDrawColor(RadialTD1[17], -1);
    TextDrawSetShadow(RadialTD1[17], 0);
    TextDrawSetOutline(RadialTD1[17], 0);
    TextDrawBackgroundColor(RadialTD1[17], 255);
    TextDrawFont(RadialTD1[17], 4);
    TextDrawSetProportional(RadialTD1[17], 1);

    RadialTD1[18] = TextDrawCreate(327.000, 155.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD1[18], 4.000, 5.000);
    TextDrawAlignment(RadialTD1[18], 1);
    TextDrawColor(RadialTD1[18], -1);
    TextDrawSetShadow(RadialTD1[18], 0);
    TextDrawSetOutline(RadialTD1[18], 0);
    TextDrawBackgroundColor(RadialTD1[18], 255);
    TextDrawFont(RadialTD1[18], 4);
    TextDrawSetProportional(RadialTD1[18], 1);

    RadialTD1[19] = TextDrawCreate(307.000, 162.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD1[19], 4.000, 3.000);
    TextDrawAlignment(RadialTD1[19], 1);
    TextDrawColor(RadialTD1[19], 1768516095);
    TextDrawSetShadow(RadialTD1[19], 0);
    TextDrawSetOutline(RadialTD1[19], 0);
    TextDrawBackgroundColor(RadialTD1[19], 255);
    TextDrawFont(RadialTD1[19], 4);
    TextDrawSetProportional(RadialTD1[19], 1);

    RadialTD1[20] = TextDrawCreate(325.000, 162.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD1[20], 4.000, 3.000);
    TextDrawAlignment(RadialTD1[20], 1);
    TextDrawColor(RadialTD1[20], 1768516095);
    TextDrawSetShadow(RadialTD1[20], 0);
    TextDrawSetOutline(RadialTD1[20], 0);
    TextDrawBackgroundColor(RadialTD1[20], 255);
    TextDrawFont(RadialTD1[20], 4);
    TextDrawSetProportional(RadialTD1[20], 1);

    RadialTD1[21] = TextDrawCreate(362.000, 215.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD1[21], 21.000, 21.000);
    TextDrawAlignment(RadialTD1[21], 1);
    TextDrawColor(RadialTD1[21], -1);
    TextDrawSetShadow(RadialTD1[21], 0);
    TextDrawSetOutline(RadialTD1[21], 0);
    TextDrawBackgroundColor(RadialTD1[21], 255);
    TextDrawFont(RadialTD1[21], 4);
    TextDrawSetProportional(RadialTD1[21], 1);

    RadialTD1[22] = TextDrawCreate(358.000, 231.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD1[22], 30.000, 20.000);
    TextDrawAlignment(RadialTD1[22], 1);
    TextDrawColor(RadialTD1[22], -1);
    TextDrawSetShadow(RadialTD1[22], 0);
    TextDrawSetOutline(RadialTD1[22], 0);
    TextDrawBackgroundColor(RadialTD1[22], 255);
    TextDrawFont(RadialTD1[22], 4);
    TextDrawSetProportional(RadialTD1[22], 1);

    RadialTD1[23] = TextDrawCreate(311.000, 282.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD1[23], 21.000, 21.000);
    TextDrawAlignment(RadialTD1[23], 1);
    TextDrawColor(RadialTD1[23], -1448498689);
    TextDrawSetShadow(RadialTD1[23], 0);
    TextDrawSetOutline(RadialTD1[23], 0);
    TextDrawBackgroundColor(RadialTD1[23], 255);
    TextDrawFont(RadialTD1[23], 4);
    TextDrawSetProportional(RadialTD1[23], 1);

    RadialTD1[24] = TextDrawCreate(307.000, 298.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD1[24], 30.000, 20.000);
    TextDrawAlignment(RadialTD1[24], 1);
    TextDrawColor(RadialTD1[24], -1448498689);
    TextDrawSetShadow(RadialTD1[24], 0);
    TextDrawSetOutline(RadialTD1[24], 0);
    TextDrawBackgroundColor(RadialTD1[24], 255);
    TextDrawFont(RadialTD1[24], 4);
    TextDrawSetProportional(RadialTD1[24], 1);

    RadialTD1[25] = TextDrawCreate(303.000, 284.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD1[25], 21.000, 21.000);
    TextDrawAlignment(RadialTD1[25], 1);
    TextDrawColor(RadialTD1[25], -1);
    TextDrawSetShadow(RadialTD1[25], 0);
    TextDrawSetOutline(RadialTD1[25], 0);
    TextDrawBackgroundColor(RadialTD1[25], 255);
    TextDrawFont(RadialTD1[25], 4);
    TextDrawSetProportional(RadialTD1[25], 1);

    RadialTD1[26] = TextDrawCreate(299.000, 300.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD1[26], 30.000, 20.000);
    TextDrawAlignment(RadialTD1[26], 1);
    TextDrawColor(RadialTD1[26], -1);
    TextDrawSetShadow(RadialTD1[26], 0);
    TextDrawSetOutline(RadialTD1[26], 0);
    TextDrawBackgroundColor(RadialTD1[26], 255);
    TextDrawFont(RadialTD1[26], 4);
    TextDrawSetProportional(RadialTD1[26], 1);

    RadialTD1[27] = TextDrawCreate(248.000, 218.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD1[27], 22.000, 29.000);
    TextDrawAlignment(RadialTD1[27], 1);
    TextDrawColor(RadialTD1[27], -2139062017);
    TextDrawSetShadow(RadialTD1[27], 0);
    TextDrawSetOutline(RadialTD1[27], 0);
    TextDrawBackgroundColor(RadialTD1[27], 255);
    TextDrawFont(RadialTD1[27], 4);
    TextDrawSetProportional(RadialTD1[27], 1);

    RadialTD1[28] = TextDrawCreate(251.000, 221.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD1[28], 22.000, 29.000);
    TextDrawAlignment(RadialTD1[28], 1);
    TextDrawColor(RadialTD1[28], -1);
    TextDrawSetShadow(RadialTD1[28], 0);
    TextDrawSetOutline(RadialTD1[28], 0);
    TextDrawBackgroundColor(RadialTD1[28], 255);
    TextDrawFont(RadialTD1[28], 4);
    TextDrawSetProportional(RadialTD1[28], 1);

    RadialTD1[29] = TextDrawCreate(254.000, 230.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD1[29], 16.000, 1.000);
    TextDrawAlignment(RadialTD1[29], 1);
    TextDrawColor(RadialTD1[29], -2139062017);
    TextDrawSetShadow(RadialTD1[29], 0);
    TextDrawSetOutline(RadialTD1[29], 0);
    TextDrawBackgroundColor(RadialTD1[29], 255);
    TextDrawFont(RadialTD1[29], 4);
    TextDrawSetProportional(RadialTD1[29], 1);

    RadialTD1[30] = TextDrawCreate(254.000, 233.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD1[30], 16.000, 1.000);
    TextDrawAlignment(RadialTD1[30], 1);
    TextDrawColor(RadialTD1[30], -2139062017);
    TextDrawSetShadow(RadialTD1[30], 0);
    TextDrawSetOutline(RadialTD1[30], 0);
    TextDrawBackgroundColor(RadialTD1[30], 255);
    TextDrawFont(RadialTD1[30], 4);
    TextDrawSetProportional(RadialTD1[30], 1);

    RadialTD1[31] = TextDrawCreate(254.000, 236.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD1[31], 16.000, 1.000);
    TextDrawAlignment(RadialTD1[31], 1);
    TextDrawColor(RadialTD1[31], -2139062017);
    TextDrawSetShadow(RadialTD1[31], 0);
    TextDrawSetOutline(RadialTD1[31], 0);
    TextDrawBackgroundColor(RadialTD1[31], 255);
    TextDrawFont(RadialTD1[31], 4);
    TextDrawSetProportional(RadialTD1[31], 1);

    RadialTD1[32] = TextDrawCreate(317.000, 192.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[32], 4.000, 31.000);
    TextDrawAlignment(RadialTD1[32], 1);
    TextDrawColor(RadialTD1[32], 1887473919);
    TextDrawSetShadow(RadialTD1[32], 0);
    TextDrawSetOutline(RadialTD1[32], 0);
    TextDrawBackgroundColor(RadialTD1[32], 255);
    TextDrawFont(RadialTD1[32], 4);
    TextDrawSetProportional(RadialTD1[32], 1);

    RadialTD1[33] = TextDrawCreate(317.000, 245.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD1[33], 4.000, 29.000);
    TextDrawAlignment(RadialTD1[33], 1);
    TextDrawColor(RadialTD1[33], 1887473919);
    TextDrawSetShadow(RadialTD1[33], 0);
    TextDrawSetOutline(RadialTD1[33], 0);
    TextDrawBackgroundColor(RadialTD1[33], 255);
    TextDrawFont(RadialTD1[33], 4);
    TextDrawSetProportional(RadialTD1[33], 1);



    RadialTD2[0] = TextDrawCreate(284.000, 231.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD2[0], 66.000, 4.000);
    TextDrawAlignment(RadialTD2[0], 1);
    TextDrawColor(RadialTD2[0], 1887473919);
    TextDrawSetShadow(RadialTD2[0], 0);
    TextDrawSetOutline(RadialTD2[0], 0);
    TextDrawBackgroundColor(RadialTD2[0], 255);
    TextDrawFont(RadialTD2[0], 4);
    TextDrawSetProportional(RadialTD2[0], 1);

    RadialTD2[1] = TextDrawCreate(306.000, 221.000, "LD_POOL:ball");
    TextDrawTextSize(RadialTD2[1], 26.000, 26.000);
    TextDrawAlignment(RadialTD2[1], 1);
    TextDrawColor(RadialTD2[1], 2005441023);
    TextDrawSetShadow(RadialTD2[1], 0);
    TextDrawSetOutline(RadialTD2[1], 0);
    TextDrawBackgroundColor(RadialTD2[1], 255);
    TextDrawFont(RadialTD2[1], 4);
    TextDrawSetProportional(RadialTD2[1], 1);
    TextDrawSetSelectable(RadialTD2[1], 1);

    RadialTD2[2] = TextDrawCreate(280.000, 259.000, "_");
    TextDrawTextSize(RadialTD2[2], 78.000, 90.000);
    TextDrawAlignment(RadialTD2[2], 1);
    TextDrawColor(RadialTD2[2], 132);
    TextDrawSetShadow(RadialTD2[2], 0);
    TextDrawSetOutline(RadialTD2[2], 0);
    TextDrawBackgroundColor(RadialTD2[2], 0);
    TextDrawFont(RadialTD2[2], 5);
    TextDrawSetProportional(RadialTD2[2], 0);
    TextDrawSetPreviewModel(RadialTD2[2], 3046);
    TextDrawSetPreviewRot(RadialTD2[2], 0.000, -30.000, 0.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD2[2], 0, 0);
    TextDrawSetSelectable(RadialTD2[2], 1);

    RadialTD2[3] = TextDrawCreate(334.000, 193.000, "_");
    TextDrawTextSize(RadialTD2[3], 78.000, 90.000);
    TextDrawAlignment(RadialTD2[3], 1);
    TextDrawColor(RadialTD2[3], 132);
    TextDrawSetShadow(RadialTD2[3], 0);
    TextDrawSetOutline(RadialTD2[3], 0);
    TextDrawBackgroundColor(RadialTD2[3], 0);
    TextDrawFont(RadialTD2[3], 5);
    TextDrawSetProportional(RadialTD2[3], 0);
    TextDrawSetPreviewModel(RadialTD2[3], 3046);
    TextDrawSetPreviewRot(RadialTD2[3], 0.000, -30.000, 0.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD2[3], 0, 0);
    TextDrawSetSelectable(RadialTD2[3], 1);

    RadialTD2[4] = TextDrawCreate(222.000, 191.000, "_");
    TextDrawTextSize(RadialTD2[4], 78.000, 90.000);
    TextDrawAlignment(RadialTD2[4], 1);
    TextDrawColor(RadialTD2[4], 132);
    TextDrawSetShadow(RadialTD2[4], 0);
    TextDrawSetOutline(RadialTD2[4], 0);
    TextDrawBackgroundColor(RadialTD2[4], 0);
    TextDrawFont(RadialTD2[4], 5);
    TextDrawSetProportional(RadialTD2[4], 0);
    TextDrawSetPreviewModel(RadialTD2[4], 3046);
    TextDrawSetPreviewRot(RadialTD2[4], 0.000, -30.000, 0.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD2[4], 0, 0);
    TextDrawSetSelectable(RadialTD2[4], 1);

    RadialTD2[5] = TextDrawCreate(279.000, 122.000, "_");
    TextDrawTextSize(RadialTD2[5], 78.000, 90.000);
    TextDrawAlignment(RadialTD2[5], 1);
    TextDrawColor(RadialTD2[5], 132);
    TextDrawSetShadow(RadialTD2[5], 0);
    TextDrawSetOutline(RadialTD2[5], 0);
    TextDrawBackgroundColor(RadialTD2[5], 0);
    TextDrawFont(RadialTD2[5], 5);
    TextDrawSetProportional(RadialTD2[5], 0);
    TextDrawSetPreviewModel(RadialTD2[5], 3046);
    TextDrawSetPreviewRot(RadialTD2[5], 0.000, -30.000, 0.000, 0.799);
    TextDrawSetPreviewVehCol(RadialTD2[5], 0, 0);
    TextDrawSetSelectable(RadialTD2[5], 1);

    RadialTD2[6] = TextDrawCreate(313.000, 222.000, "X");
    TextDrawLetterSize(RadialTD2[6], 0.549, 2.499);
    TextDrawAlignment(RadialTD2[6], 1);
    TextDrawColor(RadialTD2[6], 1768516095);
    TextDrawSetShadow(RadialTD2[6], 0);
    TextDrawSetOutline(RadialTD2[6], 0);
    TextDrawBackgroundColor(RadialTD2[6], 150);
    TextDrawFont(RadialTD2[6], 1);
    TextDrawSetProportional(RadialTD2[6], 1);

    RadialTD2[7] = TextDrawCreate(310.000, 180.000, "Inventory");
    TextDrawLetterSize(RadialTD2[7], 0.149, 1.299);
    TextDrawAlignment(RadialTD2[7], 1);
    TextDrawColor(RadialTD2[7], -1);
    TextDrawSetShadow(RadialTD2[7], 0);
    TextDrawSetOutline(RadialTD2[7], 0);
    TextDrawBackgroundColor(RadialTD2[7], 150);
    TextDrawFont(RadialTD2[7], 1);
    TextDrawSetProportional(RadialTD2[7], 1);

    RadialTD2[8] = TextDrawCreate(362.000, 249.000, "Smartphone");
    TextDrawLetterSize(RadialTD2[8], 0.149, 1.299);
    TextDrawAlignment(RadialTD2[8], 1);
    TextDrawColor(RadialTD2[8], -1);
    TextDrawSetShadow(RadialTD2[8], 0);
    TextDrawSetOutline(RadialTD2[8], 0);
    TextDrawBackgroundColor(RadialTD2[8], 150);
    TextDrawFont(RadialTD2[8], 1);
    TextDrawSetProportional(RadialTD2[8], 1);

    RadialTD2[9] = TextDrawCreate(253.000, 248.000, "Aksesoris");
    TextDrawLetterSize(RadialTD2[9], 0.149, 1.299);
    TextDrawAlignment(RadialTD2[9], 1);
    TextDrawColor(RadialTD2[9], -1);
    TextDrawSetShadow(RadialTD2[9], 0);
    TextDrawSetOutline(RadialTD2[9], 0);
    TextDrawBackgroundColor(RadialTD2[9], 150);
    TextDrawFont(RadialTD2[9], 1);
    TextDrawSetProportional(RadialTD2[9], 1);

    RadialTD2[10] = TextDrawCreate(312.000, 316.000, "Invoice");
    TextDrawLetterSize(RadialTD2[10], 0.149, 1.299);
    TextDrawAlignment(RadialTD2[10], 1);
    TextDrawColor(RadialTD2[10], -1);
    TextDrawSetShadow(RadialTD2[10], 0);
    TextDrawSetOutline(RadialTD2[10], 0);
    TextDrawBackgroundColor(RadialTD2[10], 150);
    TextDrawFont(RadialTD2[10], 1);
    TextDrawSetProportional(RadialTD2[10], 1);

    RadialTD2[11] = TextDrawCreate(307.000, 138.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD2[11], 22.000, 29.000);
    TextDrawAlignment(RadialTD2[11], 1);
    TextDrawColor(RadialTD2[11], 1768516095);
    TextDrawSetShadow(RadialTD2[11], 0);
    TextDrawSetOutline(RadialTD2[11], 0);
    TextDrawBackgroundColor(RadialTD2[11], 255);
    TextDrawFont(RadialTD2[11], 4);
    TextDrawSetProportional(RadialTD2[11], 1);

    RadialTD2[12] = TextDrawCreate(302.000, 159.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD2[12], 33.000, 29.000);
    TextDrawAlignment(RadialTD2[12], 1);
    TextDrawColor(RadialTD2[12], -1);
    TextDrawSetShadow(RadialTD2[12], 0);
    TextDrawSetOutline(RadialTD2[12], 0);
    TextDrawBackgroundColor(RadialTD2[12], 255);
    TextDrawFont(RadialTD2[12], 4);
    TextDrawSetProportional(RadialTD2[12], 1);

    RadialTD2[13] = TextDrawCreate(310.000, 142.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD2[13], 16.000, 22.000);
    TextDrawAlignment(RadialTD2[13], 1);
    TextDrawColor(RadialTD2[13], -1);
    TextDrawSetShadow(RadialTD2[13], 0);
    TextDrawSetOutline(RadialTD2[13], 0);
    TextDrawBackgroundColor(RadialTD2[13], 255);
    TextDrawFont(RadialTD2[13], 4);
    TextDrawSetProportional(RadialTD2[13], 1);

    RadialTD2[14] = TextDrawCreate(364.000, 219.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD2[14], 17.000, 30.000);
    TextDrawAlignment(RadialTD2[14], 1);
    TextDrawColor(RadialTD2[14], -1);
    TextDrawSetShadow(RadialTD2[14], 0);
    TextDrawSetOutline(RadialTD2[14], 0);
    TextDrawBackgroundColor(RadialTD2[14], 255);
    TextDrawFont(RadialTD2[14], 4);
    TextDrawSetProportional(RadialTD2[14], 1);

    RadialTD2[15] = TextDrawCreate(306.000, 152.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD2[15], 25.000, 21.000);
    TextDrawAlignment(RadialTD2[15], 1);
    TextDrawColor(RadialTD2[15], -30);
    TextDrawSetShadow(RadialTD2[15], 0);
    TextDrawSetOutline(RadialTD2[15], 0);
    TextDrawBackgroundColor(RadialTD2[15], 255);
    TextDrawFont(RadialTD2[15], 4);
    TextDrawSetProportional(RadialTD2[15], 1);

    RadialTD2[16] = TextDrawCreate(309.000, 152.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD2[16], 2.000, 12.000);
    TextDrawAlignment(RadialTD2[16], 1);
    TextDrawColor(RadialTD2[16], 1768516095);
    TextDrawSetShadow(RadialTD2[16], 0);
    TextDrawSetOutline(RadialTD2[16], 0);
    TextDrawBackgroundColor(RadialTD2[16], 255);
    TextDrawFont(RadialTD2[16], 4);
    TextDrawSetProportional(RadialTD2[16], 1);

    RadialTD2[17] = TextDrawCreate(326.000, 152.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD2[17], 2.000, 12.000);
    TextDrawAlignment(RadialTD2[17], 1);
    TextDrawColor(RadialTD2[17], 1768516095);
    TextDrawSetShadow(RadialTD2[17], 0);
    TextDrawSetOutline(RadialTD2[17], 0);
    TextDrawBackgroundColor(RadialTD2[17], 255);
    TextDrawFont(RadialTD2[17], 4);
    TextDrawSetProportional(RadialTD2[17], 1);

    RadialTD2[18] = TextDrawCreate(304.000, 164.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD2[18], 3.000, 7.000);
    TextDrawAlignment(RadialTD2[18], 1);
    TextDrawColor(RadialTD2[18], -1);
    TextDrawSetShadow(RadialTD2[18], 0);
    TextDrawSetOutline(RadialTD2[18], 0);
    TextDrawBackgroundColor(RadialTD2[18], 255);
    TextDrawFont(RadialTD2[18], 4);
    TextDrawSetProportional(RadialTD2[18], 1);

    RadialTD2[19] = TextDrawCreate(330.000, 164.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD2[19], 3.000, 7.000);
    TextDrawAlignment(RadialTD2[19], 1);
    TextDrawColor(RadialTD2[19], -1);
    TextDrawSetShadow(RadialTD2[19], 0);
    TextDrawSetOutline(RadialTD2[19], 0);
    TextDrawBackgroundColor(RadialTD2[19], 255);
    TextDrawFont(RadialTD2[19], 4);
    TextDrawSetProportional(RadialTD2[19], 1);

    RadialTD2[20] = TextDrawCreate(365.000, 220.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD2[20], 15.000, 28.000);
    TextDrawAlignment(RadialTD2[20], 1);
    TextDrawColor(RadialTD2[20], 1768516095);
    TextDrawSetShadow(RadialTD2[20], 0);
    TextDrawSetOutline(RadialTD2[20], 0);
    TextDrawBackgroundColor(RadialTD2[20], 255);
    TextDrawFont(RadialTD2[20], 4);
    TextDrawSetProportional(RadialTD2[20], 1);

    RadialTD2[21] = TextDrawCreate(369.000, 240.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD2[21], 7.000, 7.000);
    TextDrawAlignment(RadialTD2[21], 1);
    TextDrawColor(RadialTD2[21], -1);
    TextDrawSetShadow(RadialTD2[21], 0);
    TextDrawSetOutline(RadialTD2[21], 0);
    TextDrawBackgroundColor(RadialTD2[21], 255);
    TextDrawFont(RadialTD2[21], 4);
    TextDrawSetProportional(RadialTD2[21], 1);

    RadialTD2[22] = TextDrawCreate(250.000, 212.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD2[22], 22.000, 23.000);
    TextDrawAlignment(RadialTD2[22], 1);
    TextDrawColor(RadialTD2[22], -1);
    TextDrawSetShadow(RadialTD2[22], 0);
    TextDrawSetOutline(RadialTD2[22], 0);
    TextDrawBackgroundColor(RadialTD2[22], 255);
    TextDrawFont(RadialTD2[22], 4);
    TextDrawSetProportional(RadialTD2[22], 1);

    RadialTD2[23] = TextDrawCreate(246.000, 229.000, "LD_BEAT:chit");
    TextDrawTextSize(RadialTD2[23], 31.000, 23.000);
    TextDrawAlignment(RadialTD2[23], 1);
    TextDrawColor(RadialTD2[23], -1);
    TextDrawSetShadow(RadialTD2[23], 0);
    TextDrawSetOutline(RadialTD2[23], 0);
    TextDrawBackgroundColor(RadialTD2[23], 255);
    TextDrawFont(RadialTD2[23], 4);
    TextDrawSetProportional(RadialTD2[23], 1);

    RadialTD2[24] = TextDrawCreate(307.000, 282.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD2[24], 23.000, 32.000);
    TextDrawAlignment(RadialTD2[24], 1);
    TextDrawColor(RadialTD2[24], -1);
    TextDrawSetShadow(RadialTD2[24], 0);
    TextDrawSetOutline(RadialTD2[24], 0);
    TextDrawBackgroundColor(RadialTD2[24], 255);
    TextDrawFont(RadialTD2[24], 4);
    TextDrawSetProportional(RadialTD2[24], 1);

    RadialTD2[25] = TextDrawCreate(316.000, 285.000, "$");
    TextDrawLetterSize(RadialTD2[25], 0.209, 0.999);
    TextDrawAlignment(RadialTD2[25], 1);
    TextDrawColor(RadialTD2[25], 1768516095);
    TextDrawSetShadow(RadialTD2[25], 0);
    TextDrawSetOutline(RadialTD2[25], 0);
    TextDrawBackgroundColor(RadialTD2[25], 150);
    TextDrawFont(RadialTD2[25], 1);
    TextDrawSetProportional(RadialTD2[25], 1);

    RadialTD2[26] = TextDrawCreate(309.000, 298.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD2[26], 19.000, 1.000);
    TextDrawAlignment(RadialTD2[26], 1);
    TextDrawColor(RadialTD2[26], 1768516095);
    TextDrawSetShadow(RadialTD2[26], 0);
    TextDrawSetOutline(RadialTD2[26], 0);
    TextDrawBackgroundColor(RadialTD2[26], 255);
    TextDrawFont(RadialTD2[26], 4);
    TextDrawSetProportional(RadialTD2[26], 1);

    RadialTD2[27] = TextDrawCreate(309.000, 301.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD2[27], 19.000, 1.000);
    TextDrawAlignment(RadialTD2[27], 1);
    TextDrawColor(RadialTD2[27], 1768516095);
    TextDrawSetShadow(RadialTD2[27], 0);
    TextDrawSetOutline(RadialTD2[27], 0);
    TextDrawBackgroundColor(RadialTD2[27], 255);
    TextDrawFont(RadialTD2[27], 4);
    TextDrawSetProportional(RadialTD2[27], 1);

    RadialTD2[28] = TextDrawCreate(309.000, 304.000, "LD_BUM:blkdot");
    TextDrawTextSize(RadialTD2[28], 19.000, 1.000);
    TextDrawAlignment(RadialTD2[28], 1);
    TextDrawColor(RadialTD2[28], 1768516095);
    TextDrawSetShadow(RadialTD2[28], 0);
    TextDrawSetOutline(RadialTD2[28], 0);
    TextDrawBackgroundColor(RadialTD2[28], 255);
    TextDrawFont(RadialTD2[28], 4);
    TextDrawSetProportional(RadialTD2[28], 1);

    RadialTD2[29] = TextDrawCreate(317.000, 196.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD2[29], 4.000, 26.000);
    TextDrawAlignment(RadialTD2[29], 1);
    TextDrawColor(RadialTD2[29], 1887473919);
    TextDrawSetShadow(RadialTD2[29], 0);
    TextDrawSetOutline(RadialTD2[29], 0);
    TextDrawBackgroundColor(RadialTD2[29], 255);
    TextDrawFont(RadialTD2[29], 4);
    TextDrawSetProportional(RadialTD2[29], 1);

    RadialTD2[30] = TextDrawCreate(317.000, 245.000, "LD_SPAC:white");
    TextDrawTextSize(RadialTD2[30], 4.000, 29.000);
    TextDrawAlignment(RadialTD2[30], 1);
    TextDrawColor(RadialTD2[30], 1887473919);
    TextDrawSetShadow(RadialTD2[30], 0);
    TextDrawSetOutline(RadialTD2[30], 0);
    TextDrawBackgroundColor(RadialTD2[30], 255);
    TextDrawFont(RadialTD2[30], 4);
    TextDrawSetProportional(RadialTD2[30], 1);

    gServerMessage[0] = TextDrawCreate(211.000, 41.000, "LD_SPAC:white");
    TextDrawTextSize(gServerMessage[0], 218.000, 62.000);
    TextDrawAlignment(gServerMessage[0], 1);
    TextDrawColor(gServerMessage[0], -65281);
    TextDrawSetShadow(gServerMessage[0], 0);
    TextDrawSetOutline(gServerMessage[0], 0);
    TextDrawBackgroundColor(gServerMessage[0], 255);
    TextDrawFont(gServerMessage[0], 4);
    TextDrawSetProportional(gServerMessage[0], 1);

    gServerMessage[1] = TextDrawCreate(213.000, 44.000, "LD_SPAC:white");
    TextDrawTextSize(gServerMessage[1], 214.000, 57.000);
    TextDrawAlignment(gServerMessage[1], 1);
    TextDrawColor(gServerMessage[1], 1415937280);
    TextDrawSetShadow(gServerMessage[1], 0);
    TextDrawSetOutline(gServerMessage[1], 0);
    TextDrawBackgroundColor(gServerMessage[1], 255);
    TextDrawFont(gServerMessage[1], 4);
    TextDrawSetProportional(gServerMessage[1], 1);

    gServerMessage[2] = TextDrawCreate(220.000, 50.000, "LD_CHAT:badchat");
    TextDrawTextSize(gServerMessage[2], 10.000, 10.000);
    TextDrawAlignment(gServerMessage[2], 1);
    TextDrawColor(gServerMessage[2], -1);
    TextDrawSetShadow(gServerMessage[2], 0);
    TextDrawSetOutline(gServerMessage[2], 0);
    TextDrawBackgroundColor(gServerMessage[2], 255);
    TextDrawFont(gServerMessage[2], 4);
    TextDrawSetProportional(gServerMessage[2], 1);

    gServerMessage[3] = TextDrawCreate(232.000, 50.000, "INFORMASI");
    TextDrawLetterSize(gServerMessage[3], 0.200, 0.999);
    TextDrawAlignment(gServerMessage[3], 1);
    TextDrawColor(gServerMessage[3], -1);
    TextDrawSetShadow(gServerMessage[3], 1);
    TextDrawSetOutline(gServerMessage[3], 1);
    TextDrawBackgroundColor(gServerMessage[3], 150);
    TextDrawFont(gServerMessage[3], 1);
    TextDrawSetProportional(gServerMessage[3], 1);

    gServerMessage[4] = TextDrawCreate(219.000, 71.000, "SERVER AKAN MAINTANCE PADA PUKUL 12.00 WIB, DIHARAPKAN UNTUK KALIAN MEMASUKKAN KENDARAAN KE GARASI TERDEKAT");
    TextDrawLetterSize(gServerMessage[4], 0.209, 0.898);
    TextDrawTextSize(gServerMessage[4], 416.000, 61.000);
    TextDrawAlignment(gServerMessage[4], 1);
    TextDrawColor(gServerMessage[4], -1);
    TextDrawSetShadow(gServerMessage[4], 1);
    TextDrawSetOutline(gServerMessage[4], 1);
    TextDrawBackgroundColor(gServerMessage[4], 150);
    TextDrawFont(gServerMessage[4], 1);
    TextDrawSetProportional(gServerMessage[4], 1);

    gServerMessage[5] = TextDrawCreate(379.000, 104.000, "Admin By: Imajinasi - Exeren");
    TextDrawLetterSize(gServerMessage[5], 0.189, 1.298);
    TextDrawAlignment(gServerMessage[5], 2);
    TextDrawColor(gServerMessage[5], -1);
    TextDrawSetShadow(gServerMessage[5], 1);
    TextDrawSetOutline(gServerMessage[5], 1);
    TextDrawBackgroundColor(gServerMessage[5], 150);
    TextDrawFont(gServerMessage[5], 1);
    TextDrawSetProportional(gServerMessage[5], 1);

    gServerMessage[6] = TextDrawCreate(328.000, 104.000, "LD_SPAC:white");
    TextDrawTextSize(gServerMessage[6], 101.000, 14.000);
    TextDrawAlignment(gServerMessage[6], 1);
    TextDrawColor(gServerMessage[6], -16776961);
    TextDrawSetShadow(gServerMessage[6], 0);
    TextDrawSetOutline(gServerMessage[6], 0);
    TextDrawBackgroundColor(gServerMessage[6], 255);
    TextDrawFont(gServerMessage[6], 4);
    TextDrawSetProportional(gServerMessage[6], 1);


    
    MRP_Warning[0] = TextDrawCreate(-2.000, -2.000, "LD_BUM:blkdot");
    TextDrawTextSize(MRP_Warning[0], 657.000, 460.000);
    TextDrawAlignment(MRP_Warning[0], 1);
    TextDrawColor(MRP_Warning[0], -16777126);
    TextDrawSetShadow(MRP_Warning[0], 0);
    TextDrawSetOutline(MRP_Warning[0], 0);
    TextDrawBackgroundColor(MRP_Warning[0], 255);
    TextDrawFont(MRP_Warning[0], 4);
    TextDrawSetProportional(MRP_Warning[0], 1);

    MRP_Warning[1] = TextDrawCreate(238.000, 153.000, "LD_BUM:blkdot");
    TextDrawTextSize(MRP_Warning[1], 165.000, 2.000);
    TextDrawAlignment(MRP_Warning[1], 1);
    TextDrawColor(MRP_Warning[1], -1);
    TextDrawSetShadow(MRP_Warning[1], 0);
    TextDrawSetOutline(MRP_Warning[1], 0);
    TextDrawBackgroundColor(MRP_Warning[1], 255);
    TextDrawFont(MRP_Warning[1], 4);
    TextDrawSetProportional(MRP_Warning[1], 1);

    MRP_Warning[2] = TextDrawCreate(238.000, 260.000, "LD_BUM:blkdot");
    TextDrawTextSize(MRP_Warning[2], 165.000, 2.000);
    TextDrawAlignment(MRP_Warning[2], 1);
    TextDrawColor(MRP_Warning[2], -1);
    TextDrawSetShadow(MRP_Warning[2], 0);
    TextDrawSetOutline(MRP_Warning[2], 0);
    TextDrawBackgroundColor(MRP_Warning[2], 255);
    TextDrawFont(MRP_Warning[2], 4);
    TextDrawSetProportional(MRP_Warning[2], 1);

    MRP_Warning[3] = TextDrawCreate(238.000, 154.000, "LD_BUM:blkdot");
    TextDrawTextSize(MRP_Warning[3], 2.000, 107.000);
    TextDrawAlignment(MRP_Warning[3], 1);
    TextDrawColor(MRP_Warning[3], -1);
    TextDrawSetShadow(MRP_Warning[3], 0);
    TextDrawSetOutline(MRP_Warning[3], 0);
    TextDrawBackgroundColor(MRP_Warning[3], 255);
    TextDrawFont(MRP_Warning[3], 4);
    TextDrawSetProportional(MRP_Warning[3], 1);

    MRP_Warning[4] = TextDrawCreate(401.000, 154.000, "LD_BUM:blkdot");
    TextDrawTextSize(MRP_Warning[4], 2.000, 107.000);
    TextDrawAlignment(MRP_Warning[4], 1);
    TextDrawColor(MRP_Warning[4], -1);
    TextDrawSetShadow(MRP_Warning[4], 0);
    TextDrawSetOutline(MRP_Warning[4], 0);
    TextDrawBackgroundColor(MRP_Warning[4], 255);
    TextDrawFont(MRP_Warning[4], 4);
    TextDrawSetProportional(MRP_Warning[4], 1);

    MRP_Warning[5] = TextDrawCreate(243.000, 181.000, "LD_BUM:blkdot");
    TextDrawTextSize(MRP_Warning[5], 156.000, -1.000);
    TextDrawAlignment(MRP_Warning[5], 1);
    TextDrawColor(MRP_Warning[5], -1);
    TextDrawSetShadow(MRP_Warning[5], 0);
    TextDrawSetOutline(MRP_Warning[5], 0);
    TextDrawBackgroundColor(MRP_Warning[5], 255);
    TextDrawFont(MRP_Warning[5], 4);
    TextDrawSetProportional(MRP_Warning[5], 1);

    MRP_Warning[6] = TextDrawCreate(268.000, 157.000, "WARNING!");
    TextDrawLetterSize(MRP_Warning[6], 0.458, 2.198);
    TextDrawAlignment(MRP_Warning[6], 1);
    TextDrawColor(MRP_Warning[6], -1);
    TextDrawSetShadow(MRP_Warning[6], 0);
    TextDrawSetOutline(MRP_Warning[6], 0);
    TextDrawBackgroundColor(MRP_Warning[6], 150);
    TextDrawFont(MRP_Warning[6], 1);
    TextDrawSetProportional(MRP_Warning[6], 1);

    MRP_Warning[7] = TextDrawCreate(347.000, 158.000, "LD_CHAT:badchat");
    TextDrawTextSize(MRP_Warning[7], 17.000, 17.000);
    TextDrawAlignment(MRP_Warning[7], 1);
    TextDrawColor(MRP_Warning[7], -1);
    TextDrawSetShadow(MRP_Warning[7], 0);
    TextDrawSetOutline(MRP_Warning[7], 0);
    TextDrawBackgroundColor(MRP_Warning[7], 255);
    TextDrawFont(MRP_Warning[7], 4);
    TextDrawSetProportional(MRP_Warning[7], 1);

    MRP_Warning[8] = TextDrawCreate(256.000, 193.000, "ANAK BUAH WAHYU DILARANG MAIN DI ImajinasiTOD");
    TextDrawLetterSize(MRP_Warning[8], 0.250, 1.299);
    TextDrawTextSize(MRP_Warning[8], 381.000, 7.000);
    TextDrawAlignment(MRP_Warning[8], 1);
    TextDrawColor(MRP_Warning[8], -1);
    TextDrawSetShadow(MRP_Warning[8], 0);
    TextDrawSetOutline(MRP_Warning[8], 0);
    TextDrawBackgroundColor(MRP_Warning[8], 150);
    TextDrawFont(MRP_Warning[8], 1);
    TextDrawSetProportional(MRP_Warning[8], 1);

    MRP_Warning[9] = TextDrawCreate(397.000, 242.000, "Warned by: Imajinasi - exeren.");
    TextDrawLetterSize(MRP_Warning[9], 0.159, 1.098);
    TextDrawTextSize(MRP_Warning[9], 462.000, -5.000);
    TextDrawAlignment(MRP_Warning[9], 3);
    TextDrawColor(MRP_Warning[9], -1);
    TextDrawSetShadow(MRP_Warning[9], 0);
    TextDrawSetOutline(MRP_Warning[9], 0);
    TextDrawBackgroundColor(MRP_Warning[9], 150);
    TextDrawFont(MRP_Warning[9], 1);
    TextDrawSetProportional(MRP_Warning[9], 1);
 /*   
    //nama server
    Imajinasi_WM[0] = TextDrawCreate(285.000, 6.000, "");
    TextDrawLetterSize(Imajinasi_WM[0], 0.469, 2.199);
    TextDrawAlignment(Imajinasi_WM[0], 1);
    TextDrawColor(Imajinasi_WM[0], -65281);
    TextDrawSetShadow(Imajinasi_WM[0], 1);
    TextDrawSetOutline(Imajinasi_WM[0], 1);
    TextDrawBackgroundColor(Imajinasi_WM[0], 255);
    TextDrawFont(Imajinasi_WM[0], 0);
    TextDrawSetProportional(Imajinasi_WM[0], 1);

    Imajinasi_WM[1] = TextDrawCreate(298.000, 11.000, "Imajinasi");
    TextDrawLetterSize(Imajinasi_WM[1], 0.199, 1.098);
    TextDrawTextSize(Imajinasi_WM[1], -3.000, 0.000);
    TextDrawAlignment(Imajinasi_WM[1], 1);
    TextDrawColor(Imajinasi_WM[1], -65281);
    TextDrawSetShadow(Imajinasi_WM[1], 1);
    TextDrawSetOutline(Imajinasi_WM[1], 0);
    TextDrawBackgroundColor(Imajinasi_WM[1], 150);
    TextDrawFont(Imajinasi_WM[1], 1);
    TextDrawSetProportional(Imajinasi_WM[1], 1);

    Imajinasi_WM[2] = TextDrawCreate(303.000, 18.000, "ROLEPLAY");
    TextDrawLetterSize(Imajinasi_WM[2], 0.178, 1.098);
    TextDrawTextSize(Imajinasi_WM[2], -3.000, 0.000);
    TextDrawAlignment(Imajinasi_WM[2], 1);
    TextDrawColor(Imajinasi_WM[2], -1);
    TextDrawSetShadow(Imajinasi_WM[2], 1);
    TextDrawSetOutline(Imajinasi_WM[2], 0);
    TextDrawBackgroundColor(Imajinasi_WM[2], 255);
    TextDrawFont(Imajinasi_WM[2], 1);
    TextDrawSetProportional(Imajinasi_WM[2], 1);
*/
//td nama

    exeren[0] = TextDrawCreate(293.000, 15.000, "LD_BUM:blkdot");
    TextDrawTextSize(exeren[0], -1.000, 11.000);
    TextDrawAlignment(exeren[0], 1);
    TextDrawColor(exeren[0], 512819199);
    TextDrawSetShadow(exeren[0], 0);
    TextDrawSetOutline(exeren[0], 0);
    TextDrawBackgroundColor(exeren[0], 255);
    TextDrawFont(exeren[0], 4);
    TextDrawSetProportional(exeren[0], 1);

    exeren[1] = TextDrawCreate(295.000, 16.000, "LD_BUM:blkdot");
    TextDrawTextSize(exeren[1], -3.000, -1.000);
    TextDrawAlignment(exeren[1], 1);
    TextDrawColor(exeren[1], 512819199);
    TextDrawSetShadow(exeren[1], 0);
    TextDrawSetOutline(exeren[1], 0);
    TextDrawBackgroundColor(exeren[1], 255);
    TextDrawFont(exeren[1], 4);
    TextDrawSetProportional(exeren[1], 1);

    exeren[2] = TextDrawCreate(302.000, 13.000, "R");
    TextDrawLetterSize(exeren[2], 0.349, 1.496);
    TextDrawTextSize(exeren[2], -3.000, -130.000);
    TextDrawAlignment(exeren[2], 1);
    TextDrawColor(exeren[2], -1);
    TextDrawSetShadow(exeren[2], 0);
    TextDrawSetOutline(exeren[2], 0);
    TextDrawBackgroundColor(exeren[2], 150);
    TextDrawFont(exeren[2], 2);
    TextDrawSetProportional(exeren[2], 1);

    exeren[3] = TextDrawCreate(304.000, 7.000, "AYORITAS");
    TextDrawLetterSize(exeren[3], 0.177, 0.998);
    TextDrawTextSize(exeren[3], -3.000, -130.000);
    TextDrawAlignment(exeren[3], 1);
    TextDrawColor(exeren[3], 512819199);
    TextDrawSetShadow(exeren[3], 0);
    TextDrawSetOutline(exeren[3], 0);
    TextDrawBackgroundColor(exeren[3], 150);
    TextDrawFont(exeren[3], 2);
    TextDrawSetProportional(exeren[3], 1);

    exeren[4] = TextDrawCreate(311.000, 15.000, "OLEPLAY");
    TextDrawLetterSize(exeren[4], 0.177, 0.998);
    TextDrawTextSize(exeren[4], -3.000, -130.000);
    TextDrawAlignment(exeren[4], 1);
    TextDrawColor(exeren[4], -1);
    TextDrawSetShadow(exeren[4], 0);
    TextDrawSetOutline(exeren[4], 0);
    TextDrawBackgroundColor(exeren[4], 150);
    TextDrawFont(exeren[4], 2);
    TextDrawSetProportional(exeren[4], 1);

    exeren[5] = TextDrawCreate(293.000, 5.000, "m");
    TextDrawLetterSize(exeren[5], 0.349, 1.496);
    TextDrawTextSize(exeren[5], -3.000, -130.000);
    TextDrawAlignment(exeren[5], 1);
    TextDrawColor(exeren[5], 512819199);
    TextDrawSetShadow(exeren[5], 0);
    TextDrawSetOutline(exeren[5], 0);
    TextDrawBackgroundColor(exeren[5], 150);
    TextDrawFont(exeren[5], 2);
    TextDrawSetProportional(exeren[5], 1);

    exeren[6] = TextDrawCreate(292.000, 27.000, "LD_BUM:blkdot");
    TextDrawTextSize(exeren[6], 53.000, -1.000);
    TextDrawAlignment(exeren[6], 1);
    TextDrawColor(exeren[6], 512819199);
    TextDrawSetShadow(exeren[6], 0);
    TextDrawSetOutline(exeren[6], 0);
    TextDrawBackgroundColor(exeren[6], 255);
    TextDrawFont(exeren[6], 4);
    TextDrawSetProportional(exeren[6], 1);


    // Asuransi keliling
    AsuransiTD[0] = TextDrawCreate(32.000000, 211.000000, "ld_bum:blkdot");
    TextDrawFont(AsuransiTD[0], 4);
    TextDrawLetterSize(AsuransiTD[0], 0.600000, 2.000000);
    TextDrawTextSize(AsuransiTD[0], 112.000000, 82.000000);
    TextDrawSetOutline(AsuransiTD[0], 1);
    TextDrawSetShadow(AsuransiTD[0], 0);
    TextDrawAlignment(AsuransiTD[0], 1);
    TextDrawColor(AsuransiTD[0], 690964479);
    TextDrawBackgroundColor(AsuransiTD[0], 255);
    TextDrawBoxColor(AsuransiTD[0], 50);
    TextDrawUseBox(AsuransiTD[0], 1);
    TextDrawSetProportional(AsuransiTD[0], 1);
    TextDrawSetSelectable(AsuransiTD[0], 0);

    AsuransiTD[1] = TextDrawCreate(63.000000, 213.000000, "Asuransi Keliling");
    TextDrawFont(AsuransiTD[1], 1);
    TextDrawLetterSize(AsuransiTD[1], 0.200000, 1.400001);
    TextDrawTextSize(AsuransiTD[1], 135.000000, 17.000000);
    TextDrawSetOutline(AsuransiTD[1], 0);
    TextDrawSetShadow(AsuransiTD[1], 0);
    TextDrawAlignment(AsuransiTD[1], 1);
    TextDrawColor(AsuransiTD[1], -1);
    TextDrawBackgroundColor(AsuransiTD[1], 255);
    TextDrawBoxColor(AsuransiTD[1], 50);
    TextDrawUseBox(AsuransiTD[1], 0);
    TextDrawSetProportional(AsuransiTD[1], 1);
    TextDrawSetSelectable(AsuransiTD[1], 0);

    AsuransiTD[2] = TextDrawCreate(89.000000, 234.000000, "Sistem akan mengirim semua kendaraan pribadi yang tidak dinaiki oleh pemain dalam");
    TextDrawFont(AsuransiTD[2], 1);
    TextDrawLetterSize(AsuransiTD[2], 0.200000, 1.400001);
    TextDrawTextSize(AsuransiTD[2], 175.000000, 97.000000);
    TextDrawSetOutline(AsuransiTD[2], 0);
    TextDrawSetShadow(AsuransiTD[2], 0);
    TextDrawAlignment(AsuransiTD[2], 2);
    TextDrawColor(AsuransiTD[2], -1);
    TextDrawBackgroundColor(AsuransiTD[2], 255);
    TextDrawBoxColor(AsuransiTD[2], 50);
    TextDrawUseBox(AsuransiTD[2], 0);
    TextDrawSetProportional(AsuransiTD[2], 1);
    TextDrawSetSelectable(AsuransiTD[2], 0);

    AsuransiTD[3] = TextDrawCreate(89.000000, 274.000000, "0 Menit 10 Detik");
    TextDrawFont(AsuransiTD[3], 1);
    TextDrawLetterSize(AsuransiTD[3], 0.200000, 1.400001);
    TextDrawTextSize(AsuransiTD[3], 175.000000, 97.000000);
    TextDrawSetOutline(AsuransiTD[3], 0);
    TextDrawSetShadow(AsuransiTD[3], 0);
    TextDrawAlignment(AsuransiTD[3], 2);
    TextDrawColor(AsuransiTD[3], -764862721);
    TextDrawBackgroundColor(AsuransiTD[3], 255);
    TextDrawBoxColor(AsuransiTD[3], 50);
    TextDrawUseBox(AsuransiTD[3], 0);
    TextDrawSetProportional(AsuransiTD[3], 1);
    TextDrawSetSelectable(AsuransiTD[3], 0);

    AsuransiTD[4] = TextDrawCreate(82.000000, 196.000000, "HUD:radar_impound");
    TextDrawFont(AsuransiTD[4], 4);
    TextDrawLetterSize(AsuransiTD[4], 0.600000, 2.000000);
    TextDrawTextSize(AsuransiTD[4], 17.000000, 17.000000);
    TextDrawSetOutline(AsuransiTD[4], 1);
    TextDrawSetShadow(AsuransiTD[4], 0);
    TextDrawAlignment(AsuransiTD[4], 1);
    TextDrawColor(AsuransiTD[4], -1);
    TextDrawBackgroundColor(AsuransiTD[4], 255);
    TextDrawBoxColor(AsuransiTD[4], 50);
    TextDrawUseBox(AsuransiTD[4], 1);
    TextDrawSetProportional(AsuransiTD[4], 1);
    TextDrawSetSelectable(AsuransiTD[4], 0);

    // Restart Server
    gServerTextdraws[0] = TextDrawCreate(22.005966, 209.766693, "_");
    TextDrawLetterSize(gServerTextdraws[0], 0.263191, 1.156665);
    TextDrawAlignment(gServerTextdraws[0], 1);
    TextDrawColor(gServerTextdraws[0], -1);
    TextDrawSetShadow(gServerTextdraws[0], 0);
    TextDrawSetOutline(gServerTextdraws[0], 1);
    TextDrawBackgroundColor(gServerTextdraws[0], 255);
    TextDrawFont(gServerTextdraws[0], 3);
    TextDrawSetProportional(gServerTextdraws[0], 1);
    TextDrawSetShadow(gServerTextdraws[0], 0);

    // Robbery
    RobberyGlobalTD[0] = TextDrawCreate(18.000, 294.000, "LD_DUAL:white");
    TextDrawTextSize(RobberyGlobalTD[0], 104.000, 38.000);
    TextDrawAlignment(RobberyGlobalTD[0], 1);
    TextDrawColor(RobberyGlobalTD[0], 1926328957);
    TextDrawSetShadow(RobberyGlobalTD[0], 0);
    TextDrawSetOutline(RobberyGlobalTD[0], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[0], 255);
    TextDrawFont(RobberyGlobalTD[0], 4);
    TextDrawSetProportional(RobberyGlobalTD[0], 1);

    RobberyGlobalTD[1] = TextDrawCreate(18.000, 294.000, "LD_DUAL:white");
    TextDrawTextSize(RobberyGlobalTD[1], 24.000, 19.000);
    TextDrawAlignment(RobberyGlobalTD[1], 1);
    TextDrawColor(RobberyGlobalTD[1], 1926329087);
    TextDrawSetShadow(RobberyGlobalTD[1], 0);
    TextDrawSetOutline(RobberyGlobalTD[1], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[1], 255);
    TextDrawFont(RobberyGlobalTD[1], 4);
    TextDrawSetProportional(RobberyGlobalTD[1], 1);

    RobberyGlobalTD[2] = TextDrawCreate(25.000, 297.000, "HUD:radar_ammugun");
    TextDrawTextSize(RobberyGlobalTD[2], 12.000, 12.000);
    TextDrawAlignment(RobberyGlobalTD[2], 1);
    TextDrawColor(RobberyGlobalTD[2], -1);
    TextDrawSetShadow(RobberyGlobalTD[2], 0);
    TextDrawSetOutline(RobberyGlobalTD[2], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[2], 255);
    TextDrawFont(RobberyGlobalTD[2], 4);
    TextDrawSetProportional(RobberyGlobalTD[2], 1);

    RobberyGlobalTD[3] = TextDrawCreate(44.000, 293.000, "Imajinasi Roleplay~n~Perampokan Warung");
    TextDrawLetterSize(RobberyGlobalTD[3], 0.129, 0.999);
    TextDrawAlignment(RobberyGlobalTD[3], 1);
    TextDrawColor(RobberyGlobalTD[3], -1);
    TextDrawSetShadow(RobberyGlobalTD[3], 0);
    TextDrawSetOutline(RobberyGlobalTD[3], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[3], 150);
    TextDrawFont(RobberyGlobalTD[3], 2);
    TextDrawSetProportional(RobberyGlobalTD[3], 1);

    RobberyGlobalTD[4] = TextDrawCreate(20.000, 312.000, "Perampokan Warung gagal, anda terlalu~n~jauh dari Warung!");
    TextDrawLetterSize(RobberyGlobalTD[4], 0.129, 0.999);
    TextDrawAlignment(RobberyGlobalTD[4], 1);
    TextDrawColor(RobberyGlobalTD[4], -1);
    TextDrawSetShadow(RobberyGlobalTD[4], 0);
    TextDrawSetOutline(RobberyGlobalTD[4], 0);
    TextDrawBackgroundColor(RobberyGlobalTD[4], 150);
    TextDrawFont(RobberyGlobalTD[4], 1);
    TextDrawSetProportional(RobberyGlobalTD[4], 1);

    //fps
    SHOWFPS[0] = TextDrawCreate(0.000000, -1.000000, "ld_dual:white");
    TextDrawFont(SHOWFPS[0], 4);
    TextDrawLetterSize(SHOWFPS[0], 0.600000, 2.000000);
    TextDrawTextSize(SHOWFPS[0], 141.500000, 16.500000);
    TextDrawSetOutline(SHOWFPS[0], 1);
    TextDrawSetShadow(SHOWFPS[0], 0);
    TextDrawAlignment(SHOWFPS[0], 1);
    TextDrawColor(SHOWFPS[0], 1351860735);
    TextDrawBackgroundColor(SHOWFPS[0], 255);
    TextDrawBoxColor(SHOWFPS[0], 50);
    TextDrawUseBox(SHOWFPS[0], 1);
    TextDrawSetProportional(SHOWFPS[0], 1);
    TextDrawSetSelectable(SHOWFPS[0], 0);

    SHOWFPS[1] = TextDrawCreate(1.000000, 1.000000, "ld_dual:white");
    TextDrawFont(SHOWFPS[1], 4);
    TextDrawLetterSize(SHOWFPS[1], 0.600000, 2.000000);
    TextDrawTextSize(SHOWFPS[1], 106.500000, 13.500000);
    TextDrawSetOutline(SHOWFPS[1], 1);
    TextDrawSetShadow(SHOWFPS[1], 0);
    TextDrawAlignment(SHOWFPS[1], 1);
    TextDrawColor(SHOWFPS[1], 573060351);
    TextDrawBackgroundColor(SHOWFPS[1], 255);
    TextDrawBoxColor(SHOWFPS[1], 50);
    TextDrawUseBox(SHOWFPS[1], 1);
    TextDrawSetProportional(SHOWFPS[1], 1);
    TextDrawSetSelectable(SHOWFPS[1], 0);

    SHOWFPS[2] = TextDrawCreate(45.000000, -1.000000, "ld_dual:white");
    TextDrawFont(SHOWFPS[2], 4);
    TextDrawLetterSize(SHOWFPS[2], 0.600000, 2.000000);
    TextDrawTextSize(SHOWFPS[2], 62.000000, 16.500000);
    TextDrawSetOutline(SHOWFPS[2], 1);
    TextDrawSetShadow(SHOWFPS[2], 0);
    TextDrawAlignment(SHOWFPS[2], 1);
    TextDrawColor(SHOWFPS[2], 1351926015);
    TextDrawBackgroundColor(SHOWFPS[2], 255);
    TextDrawBoxColor(SHOWFPS[2], 50);
    TextDrawUseBox(SHOWFPS[2], 1);
    TextDrawSetProportional(SHOWFPS[2], 1);
    TextDrawSetSelectable(SHOWFPS[2], 0);

    SHOWFPS[3] = TextDrawCreate(46.000000, 1.000000, "ld_dual:white");
    TextDrawFont(SHOWFPS[3], 4);
    TextDrawLetterSize(SHOWFPS[3], 0.600000, 2.000000);
    TextDrawTextSize(SHOWFPS[3], 46.500000, 13.500000);
    TextDrawSetOutline(SHOWFPS[3], 1);
    TextDrawSetShadow(SHOWFPS[3], 0);
    TextDrawAlignment(SHOWFPS[3], 1);
    TextDrawColor(SHOWFPS[3], 573060351);
    TextDrawBackgroundColor(SHOWFPS[3], 255);
    TextDrawBoxColor(SHOWFPS[3], 50);
    TextDrawUseBox(SHOWFPS[3], 1);
    TextDrawSetProportional(SHOWFPS[3], 1);
    TextDrawSetSelectable(SHOWFPS[3], 0);

    SHOWFPS[4] = TextDrawCreate(94.000000, 1.000000, "ld_dual:white");
    TextDrawFont(SHOWFPS[4], 4);
    TextDrawLetterSize(SHOWFPS[4], 0.600000, 2.000000);
    TextDrawTextSize(SHOWFPS[4], 46.500000, 13.500000);
    TextDrawSetOutline(SHOWFPS[4], 1);
    TextDrawSetShadow(SHOWFPS[4], 0);
    TextDrawAlignment(SHOWFPS[4], 1);
    TextDrawColor(SHOWFPS[4], 573060351);
    TextDrawBackgroundColor(SHOWFPS[4], 255);
    TextDrawBoxColor(SHOWFPS[4], 50);
    TextDrawUseBox(SHOWFPS[4], 1);
    TextDrawSetProportional(SHOWFPS[4], 1);
    TextDrawSetSelectable(SHOWFPS[4], 0);

        
    //Stress Purple
    StressPurple[0] = TextDrawCreate(314.000000, 1.000000, "_");
	TextDrawFont(StressPurple[0], 1);
	TextDrawLetterSize(StressPurple[0], 0.600000, 51.049999);
	TextDrawTextSize(StressPurple[0], 298.500000, 676.500000);
	TextDrawSetOutline(StressPurple[0], 1);
	TextDrawSetShadow(StressPurple[0], 0);
	TextDrawAlignment(StressPurple[0], 2);
	TextDrawColor(StressPurple[0], -1);
	TextDrawBackgroundColor(StressPurple[0], 255);
	TextDrawBoxColor(StressPurple[0], -2147450812);
	TextDrawUseBox(StressPurple[0], 1);
	TextDrawSetProportional(StressPurple[0], 1);
	TextDrawSetSelectable(StressPurple[0], 0);


    KickZ2[0] = TextDrawCreate(-50.000, 0.000, "_");
    TextDrawLetterSize(KickZ2[0], 0.300, 62.500);
    TextDrawAlignment(KickZ2[0], 1);
    TextDrawColor(KickZ2[0], -1);
    TextDrawUseBox(KickZ2[0], 1);
    TextDrawBoxColor(KickZ2[0], 200);
    TextDrawSetShadow(KickZ2[0], 1);
    TextDrawSetOutline(KickZ2[0], 1);
    TextDrawBackgroundColor(KickZ2[0], 150);
    TextDrawFont(KickZ2[0], 1);
    TextDrawSetProportional(KickZ2[0], 1);

    KickZ2[1] = TextDrawCreate(192.000, 149.000, "LD_SPAC:white");
    TextDrawTextSize(KickZ2[1], 258.000, 108.000);
    TextDrawAlignment(KickZ2[1], 1);
    TextDrawColor(KickZ2[1], -1970630657);
    TextDrawSetShadow(KickZ2[1], 0);
    TextDrawSetOutline(KickZ2[1], 0);
    TextDrawBackgroundColor(KickZ2[1], 255);
    TextDrawFont(KickZ2[1], 4);
    TextDrawSetProportional(KickZ2[1], 1);

    KickZ2[2] = TextDrawCreate(193.000, 150.000, "LD_SPAC:white");
    TextDrawTextSize(KickZ2[2], 256.000, 106.000);
    TextDrawAlignment(KickZ2[2], 1);
    TextDrawColor(KickZ2[2], 370681087);
    TextDrawSetShadow(KickZ2[2], 0);
    TextDrawSetOutline(KickZ2[2], 0);
    TextDrawBackgroundColor(KickZ2[2], 255);
    TextDrawFont(KickZ2[2], 4);
    TextDrawSetProportional(KickZ2[2], 1);

    KickZ2[3] = TextDrawCreate(200.000, 154.000, "Error Occured");
    TextDrawLetterSize(KickZ2[3], 0.328, 1.700);
    TextDrawAlignment(KickZ2[3], 1);
    TextDrawColor(KickZ2[3], -1);
    TextDrawSetShadow(KickZ2[3], 0);
    TextDrawSetOutline(KickZ2[3], 0);
    TextDrawBackgroundColor(KickZ2[3], 150);
    TextDrawFont(KickZ2[3], 1);
    TextDrawSetProportional(KickZ2[3], 1);

    KickZ2[4] = TextDrawCreate(200.000, 172.000, "Disconnected By Server: You were kicked By : exeren");
    TextDrawLetterSize(KickZ2[4], 0.170, 0.999);
    TextDrawAlignment(KickZ2[4], 1);
    TextDrawColor(KickZ2[4], -1);
    TextDrawSetShadow(KickZ2[4], 0);
    TextDrawSetOutline(KickZ2[4], 0);
    TextDrawBackgroundColor(KickZ2[4], 150);
    TextDrawFont(KickZ2[4], 1);
    TextDrawSetProportional(KickZ2[4], 1);

    KickZ2[5] = TextDrawCreate(200.000, 180.000, "Reason: Reason of Kicked");
    TextDrawLetterSize(KickZ2[5], 0.170, 0.999);
    TextDrawAlignment(KickZ2[5], 1);
    TextDrawColor(KickZ2[5], -1);
    TextDrawSetShadow(KickZ2[5], 0);
    TextDrawSetOutline(KickZ2[5], 0);
    TextDrawBackgroundColor(KickZ2[5], 150);
    TextDrawFont(KickZ2[5], 1);
    TextDrawSetProportional(KickZ2[5], 1);

    KickZ2[6] = TextDrawCreate(200.000, 196.000, "If You Feel Unjust, Please Make A Ticket In Our Discord");
    TextDrawLetterSize(KickZ2[6], 0.170, 0.999);
    TextDrawAlignment(KickZ2[6], 1);
    TextDrawColor(KickZ2[6], -1);
    TextDrawSetShadow(KickZ2[6], 0);
    TextDrawSetOutline(KickZ2[6], 0);
    TextDrawBackgroundColor(KickZ2[6], 150);
    TextDrawFont(KickZ2[6], 1);
    TextDrawSetProportional(KickZ2[6], 1);

    KickZ2[7] = TextDrawCreate(200.000, 205.000, "[ImajinasiRoleplay]");
    TextDrawLetterSize(KickZ2[7], 0.170, 0.999);
    TextDrawAlignment(KickZ2[7], 1);
    TextDrawColor(KickZ2[7], -1);
    TextDrawSetShadow(KickZ2[7], 0);
    TextDrawSetOutline(KickZ2[7], 0);
    TextDrawBackgroundColor(KickZ2[7], 150);
    TextDrawFont(KickZ2[7], 1);
    TextDrawSetProportional(KickZ2[7], 1);

    KickZ2[8] = TextDrawCreate(200.800, 226.000, "LD_SPAC:white");
    TextDrawTextSize(KickZ2[8], 2.000, 21.000);
    TextDrawAlignment(KickZ2[8], 1);
    TextDrawColor(KickZ2[8], -2079572737);
    TextDrawSetShadow(KickZ2[8], 0);
    TextDrawSetOutline(KickZ2[8], 0);
    TextDrawBackgroundColor(KickZ2[8], 255);
    TextDrawFont(KickZ2[8], 4);
    TextDrawSetProportional(KickZ2[8], 1);

    KickZ2[9] = TextDrawCreate(252.798, 226.000, "LD_SPAC:white");
    TextDrawTextSize(KickZ2[9], 2.000, 21.000);
    TextDrawAlignment(KickZ2[9], 1);
    TextDrawColor(KickZ2[9], -2079572737);
    TextDrawSetShadow(KickZ2[9], 0);
    TextDrawSetOutline(KickZ2[9], 0);
    TextDrawBackgroundColor(KickZ2[9], 255);
    TextDrawFont(KickZ2[9], 4);
    TextDrawSetProportional(KickZ2[9], 1);

    KickZ2[10] = TextDrawCreate(200.798, 226.000, "LD_SPAC:white");
    TextDrawTextSize(KickZ2[10], 54.000, 2.000);
    TextDrawAlignment(KickZ2[10], 1);
    TextDrawColor(KickZ2[10], -2079572737);
    TextDrawSetShadow(KickZ2[10], 0);
    TextDrawSetOutline(KickZ2[10], 0);
    TextDrawBackgroundColor(KickZ2[10], 255);
    TextDrawFont(KickZ2[10], 4);
    TextDrawSetProportional(KickZ2[10], 1);

    KickZ2[11] = TextDrawCreate(200.798, 246.000, "LD_SPAC:white");
    TextDrawTextSize(KickZ2[11], 54.000, 1.500);
    TextDrawAlignment(KickZ2[11], 1);
    TextDrawColor(KickZ2[11], -2079572737);
    TextDrawSetShadow(KickZ2[11], 0);
    TextDrawSetOutline(KickZ2[11], 0);
    TextDrawBackgroundColor(KickZ2[11], 255);
    TextDrawFont(KickZ2[11], 4);
    TextDrawSetProportional(KickZ2[11], 1);

    KickZ2[12] = TextDrawCreate(213.000, 229.500, "CLOSE");
    TextDrawLetterSize(KickZ2[12], 0.280, 1.500);
    TextDrawTextSize(KickZ2[12], 246.000, 9.000);
    TextDrawAlignment(KickZ2[12], 1);
    TextDrawColor(KickZ2[12], -1);
    TextDrawSetShadow(KickZ2[12], 0);
    TextDrawSetOutline(KickZ2[12], 0);
    TextDrawBackgroundColor(KickZ2[12], 0);
    TextDrawFont(KickZ2[12], 1);
    TextDrawSetProportional(KickZ2[12], 1);
    TextDrawSetSelectable(KickZ2[12], 1);
/*
    serverLogin[0] = TextDrawCreate(0.000, -2.000, "_");
    TextDrawTextSize(serverLogin[0], 696.000, 487.000);
    TextDrawAlignment(serverLogin[0], 1);
    TextDrawColor(serverLogin[0], 255);
    TextDrawSetShadow(serverLogin[0], 0);
    TextDrawSetOutline(serverLogin[0], 0);
    TextDrawBackgroundColor(serverLogin[0], 85);
    TextDrawFont(serverLogin[0], 5);
    TextDrawSetProportional(serverLogin[0], 0);
    TextDrawSetPreviewModel(serverLogin[0], 868);
    TextDrawSetPreviewRot(serverLogin[0], 0.000, 0.000, 0.000, 0.097);
    TextDrawSetPreviewVehCol(serverLogin[0], 0, 0);

    serverLogin[1] = TextDrawCreate(179.000, -32.000, "LD_PLAN:blkdot");
    TextDrawTextSize(serverLogin[1], 2.000, 302.000);
    TextDrawAlignment(serverLogin[1], 1);
    TextDrawColor(serverLogin[1], -626712321);
    TextDrawSetShadow(serverLogin[1], 0);
    TextDrawSetOutline(serverLogin[1], 0);
    TextDrawBackgroundColor(serverLogin[1], 255);
    TextDrawFont(serverLogin[1], 4);
    TextDrawSetProportional(serverLogin[1], 1);

    serverLogin[2] = TextDrawCreate(22.000, -32.000, "LD_PLAN:blkdot");
    TextDrawTextSize(serverLogin[2], 2.000, 302.000);
    TextDrawAlignment(serverLogin[2], 1);
    TextDrawColor(serverLogin[2], -626712321);
    TextDrawSetShadow(serverLogin[2], 0);
    TextDrawSetOutline(serverLogin[2], 0);
    TextDrawBackgroundColor(serverLogin[2], 255);
    TextDrawFont(serverLogin[2], 4);
    TextDrawSetProportional(serverLogin[2], 1);

    serverLogin[3] = TextDrawCreate(142.000, -113.000, "LD_PLAN:blkdot");
    TextDrawTextSize(serverLogin[3], 2.000, 302.000);
    TextDrawAlignment(serverLogin[3], 1);
    TextDrawColor(serverLogin[3], -626712321);
    TextDrawSetShadow(serverLogin[3], 0);
    TextDrawSetOutline(serverLogin[3], 0);
    TextDrawBackgroundColor(serverLogin[3], 255);
    TextDrawFont(serverLogin[3], 4);
    TextDrawSetProportional(serverLogin[3], 1);

    serverLogin[4] = TextDrawCreate(60.000, -115.000, "LD_PLAN:blkdot");
    TextDrawTextSize(serverLogin[4], 2.000, 302.000);
    TextDrawAlignment(serverLogin[4], 1);
    TextDrawColor(serverLogin[4], -626712321);
    TextDrawSetShadow(serverLogin[4], 0);
    TextDrawSetOutline(serverLogin[4], 0);
    TextDrawBackgroundColor(serverLogin[4], 255);
    TextDrawFont(serverLogin[4], 4);
    TextDrawSetProportional(serverLogin[4], 1);

    serverLogin[5] = TextDrawCreate(60.000, 187.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[5], 82.000, 2.000);
    TextDrawAlignment(serverLogin[5], 1);
    TextDrawColor(serverLogin[5], -626712321);
    TextDrawSetShadow(serverLogin[5], 0);
    TextDrawSetOutline(serverLogin[5], 0);
    TextDrawBackgroundColor(serverLogin[5], 255);
    TextDrawFont(serverLogin[5], 4);
    TextDrawSetProportional(serverLogin[5], 1);

    serverLogin[6] = TextDrawCreate(60.000, 227.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[6], 82.000, 2.000);
    TextDrawAlignment(serverLogin[6], 1);
    TextDrawColor(serverLogin[6], -626712321);
    TextDrawSetShadow(serverLogin[6], 0);
    TextDrawSetOutline(serverLogin[6], 0);
    TextDrawBackgroundColor(serverLogin[6], 255);
    TextDrawFont(serverLogin[6], 4);
    TextDrawSetProportional(serverLogin[6], 1);

    serverLogin[7] = TextDrawCreate(142.000, 227.000, "LD_PLAN:blkdot");
    TextDrawTextSize(serverLogin[7], 2.000, 114.000);
    TextDrawAlignment(serverLogin[7], 1);
    TextDrawColor(serverLogin[7], -626712321);
    TextDrawSetShadow(serverLogin[7], 0);
    TextDrawSetOutline(serverLogin[7], 0);
    TextDrawBackgroundColor(serverLogin[7], 255);
    TextDrawFont(serverLogin[7], 4);
    TextDrawSetProportional(serverLogin[7], 1);

    serverLogin[8] = TextDrawCreate(298.000, 93.000, "MRP");
    TextDrawLetterSize(serverLogin[8], 0.409, 2.398);
    TextDrawAlignment(serverLogin[8], 1);
    TextDrawColor(serverLogin[8], -2686721);
    TextDrawSetShadow(serverLogin[8], 1);
    TextDrawSetOutline(serverLogin[8], 1);
    TextDrawBackgroundColor(serverLogin[8], 255);
    TextDrawFont(serverLogin[8], 1);
    TextDrawSetProportional(serverLogin[8], 1);

    serverLogin[9] = TextDrawCreate(58.000, 227.000, "LD_PLAN:blkdot");
    TextDrawTextSize(serverLogin[9], 2.000, 165.000);
    TextDrawAlignment(serverLogin[9], 1);
    TextDrawColor(serverLogin[9], -626712321);
    TextDrawSetShadow(serverLogin[9], 0);
    TextDrawSetOutline(serverLogin[9], 0);
    TextDrawBackgroundColor(serverLogin[9], 255);
    TextDrawFont(serverLogin[9], 4);
    TextDrawSetProportional(serverLogin[9], 1);

    serverLogin[10] = TextDrawCreate(213.000, 230.000, "LD_PLAN:blkdot");
    TextDrawTextSize(serverLogin[10], 2.000, 165.000);
    TextDrawAlignment(serverLogin[10], 1);
    TextDrawColor(serverLogin[10], -626712321);
    TextDrawSetShadow(serverLogin[10], 0);
    TextDrawSetOutline(serverLogin[10], 0);
    TextDrawBackgroundColor(serverLogin[10], 255);
    TextDrawFont(serverLogin[10], 4);
    TextDrawSetProportional(serverLogin[10], 1);

    serverLogin[11] = TextDrawCreate(421.000, 230.000, "LD_PLAN:blkdot");
    TextDrawTextSize(serverLogin[11], 2.000, 165.000);
    TextDrawAlignment(serverLogin[11], 1);
    TextDrawColor(serverLogin[11], -626712321);
    TextDrawSetShadow(serverLogin[11], 0);
    TextDrawSetOutline(serverLogin[11], 0);
    TextDrawBackgroundColor(serverLogin[11], 255);
    TextDrawFont(serverLogin[11], 4);
    TextDrawSetProportional(serverLogin[11], 1);

    serverLogin[12] = TextDrawCreate(422.000, -106.000, "LD_PLAN:blkdot");
    TextDrawTextSize(serverLogin[12], 2.000, 165.000);
    TextDrawAlignment(serverLogin[12], 1);
    TextDrawColor(serverLogin[12], -626712321);
    TextDrawSetShadow(serverLogin[12], 0);
    TextDrawSetOutline(serverLogin[12], 0);
    TextDrawBackgroundColor(serverLogin[12], 255);
    TextDrawFont(serverLogin[12], 4);
    TextDrawSetProportional(serverLogin[12], 1);

    serverLogin[13] = TextDrawCreate(422.000, 59.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[13], 274.000, 2.000);
    TextDrawAlignment(serverLogin[13], 1);
    TextDrawColor(serverLogin[13], -626712321);
    TextDrawSetShadow(serverLogin[13], 0);
    TextDrawSetOutline(serverLogin[13], 0);
    TextDrawBackgroundColor(serverLogin[13], 255);
    TextDrawFont(serverLogin[13], 4);
    TextDrawSetProportional(serverLogin[13], 1);

    serverLogin[14] = TextDrawCreate(496.000, -106.000, "LD_PLAN:blkdot");
    TextDrawTextSize(serverLogin[14], 2.000, 241.000);
    TextDrawAlignment(serverLogin[14], 1);
    TextDrawColor(serverLogin[14], -626712321);
    TextDrawSetShadow(serverLogin[14], 0);
    TextDrawSetOutline(serverLogin[14], 0);
    TextDrawBackgroundColor(serverLogin[14], 255);
    TextDrawFont(serverLogin[14], 4);
    TextDrawSetProportional(serverLogin[14], 1);

    serverLogin[15] = TextDrawCreate(497.000, 133.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[15], 154.000, 2.000);
    TextDrawAlignment(serverLogin[15], 1);
    TextDrawColor(serverLogin[15], -626712321);
    TextDrawSetShadow(serverLogin[15], 0);
    TextDrawSetOutline(serverLogin[15], 0);
    TextDrawBackgroundColor(serverLogin[15], 255);
    TextDrawFont(serverLogin[15], 4);
    TextDrawSetProportional(serverLogin[15], 1);

    serverLogin[16] = TextDrawCreate(555.000, 213.000, "LD_PLAN:blkdot");
    TextDrawTextSize(serverLogin[16], 2.000, 136.000);
    TextDrawAlignment(serverLogin[16], 1);
    TextDrawColor(serverLogin[16], -626712321);
    TextDrawSetShadow(serverLogin[16], 0);
    TextDrawSetOutline(serverLogin[16], 0);
    TextDrawBackgroundColor(serverLogin[16], 255);
    TextDrawFont(serverLogin[16], 4);
    TextDrawSetProportional(serverLogin[16], 1);

    serverLogin[17] = TextDrawCreate(556.000, 347.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[17], 96.000, 2.000);
    TextDrawAlignment(serverLogin[17], 1);
    TextDrawColor(serverLogin[17], -626712321);
    TextDrawSetShadow(serverLogin[17], 0);
    TextDrawSetOutline(serverLogin[17], 0);
    TextDrawBackgroundColor(serverLogin[17], 255);
    TextDrawFont(serverLogin[17], 4);
    TextDrawSetProportional(serverLogin[17], 1);

    serverLogin[18] = TextDrawCreate(555.000, 212.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[18], 96.000, 2.000);
    TextDrawAlignment(serverLogin[18], 1);
    TextDrawColor(serverLogin[18], -626712321);
    TextDrawSetShadow(serverLogin[18], 0);
    TextDrawSetOutline(serverLogin[18], 0);
    TextDrawBackgroundColor(serverLogin[18], 255);
    TextDrawFont(serverLogin[18], 4);
    TextDrawSetProportional(serverLogin[18], 1);

    serverLogin[19] = TextDrawCreate(315.000, 116.000, "Roleplay");
    TextDrawLetterSize(serverLogin[19], 0.409, 2.398);
    TextDrawAlignment(serverLogin[19], 1);
    TextDrawColor(serverLogin[19], -1);
    TextDrawSetShadow(serverLogin[19], 1);
    TextDrawSetOutline(serverLogin[19], 1);
    TextDrawBackgroundColor(serverLogin[19], 150);
    TextDrawFont(serverLogin[19], 1);
    TextDrawSetProportional(serverLogin[19], 1);

    serverLogin[20] = TextDrawCreate(256.000, 78.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[20], 3.000, 72.000);
    TextDrawAlignment(serverLogin[20], 1);
    TextDrawColor(serverLogin[20], -626712321);
    TextDrawSetShadow(serverLogin[20], 0);
    TextDrawSetOutline(serverLogin[20], 0);
    TextDrawBackgroundColor(serverLogin[20], 255);
    TextDrawFont(serverLogin[20], 4);
    TextDrawSetProportional(serverLogin[20], 1);

    serverLogin[21] = TextDrawCreate(267.000, 78.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[21], 3.000, 72.000);
    TextDrawAlignment(serverLogin[21], 1);
    TextDrawColor(serverLogin[21], -626712321);
    TextDrawSetShadow(serverLogin[21], 0);
    TextDrawSetOutline(serverLogin[21], 0);
    TextDrawBackgroundColor(serverLogin[21], 255);
    TextDrawFont(serverLogin[21], 4);
    TextDrawSetProportional(serverLogin[21], 1);

    serverLogin[22] = TextDrawCreate(234.000, 77.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[22], 3.000, 12.000);
    TextDrawAlignment(serverLogin[22], 1);
    TextDrawColor(serverLogin[22], -626712321);
    TextDrawSetShadow(serverLogin[22], 0);
    TextDrawSetOutline(serverLogin[22], 0);
    TextDrawBackgroundColor(serverLogin[22], 255);
    TextDrawFont(serverLogin[22], 4);
    TextDrawSetProportional(serverLogin[22], 1);

    serverLogin[23] = TextDrawCreate(226.000, 86.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[23], 8.000, 3.000);
    TextDrawAlignment(serverLogin[23], 1);
    TextDrawColor(serverLogin[23], -626712321);
    TextDrawSetShadow(serverLogin[23], 0);
    TextDrawSetOutline(serverLogin[23], 0);
    TextDrawBackgroundColor(serverLogin[23], 255);
    TextDrawFont(serverLogin[23], 4);
    TextDrawSetProportional(serverLogin[23], 1);

    serverLogin[24] = TextDrawCreate(225.000, 65.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[24], 3.000, 24.000);
    TextDrawAlignment(serverLogin[24], 1);
    TextDrawColor(serverLogin[24], -626712321);
    TextDrawSetShadow(serverLogin[24], 0);
    TextDrawSetOutline(serverLogin[24], 0);
    TextDrawBackgroundColor(serverLogin[24], 255);
    TextDrawFont(serverLogin[24], 4);
    TextDrawSetProportional(serverLogin[24], 1);

    serverLogin[25] = TextDrawCreate(225.000, 64.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[25], 78.000, 3.000);
    TextDrawAlignment(serverLogin[25], 1);
    TextDrawColor(serverLogin[25], -626712321);
    TextDrawSetShadow(serverLogin[25], 0);
    TextDrawSetOutline(serverLogin[25], 0);
    TextDrawBackgroundColor(serverLogin[25], 255);
    TextDrawFont(serverLogin[25], 4);
    TextDrawSetProportional(serverLogin[25], 1);

    serverLogin[26] = TextDrawCreate(267.000, 77.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[26], 25.000, 3.000);
    TextDrawAlignment(serverLogin[26], 1);
    TextDrawColor(serverLogin[26], -626712321);
    TextDrawSetShadow(serverLogin[26], 0);
    TextDrawSetOutline(serverLogin[26], 0);
    TextDrawBackgroundColor(serverLogin[26], 255);
    TextDrawFont(serverLogin[26], 4);
    TextDrawSetProportional(serverLogin[26], 1);

    serverLogin[27] = TextDrawCreate(234.000, 77.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[27], 25.000, 3.000);
    TextDrawAlignment(serverLogin[27], 1);
    TextDrawColor(serverLogin[27], -626712321);
    TextDrawSetShadow(serverLogin[27], 0);
    TextDrawSetOutline(serverLogin[27], 0);
    TextDrawBackgroundColor(serverLogin[27], 255);
    TextDrawFont(serverLogin[27], 4);
    TextDrawSetProportional(serverLogin[27], 1);

    serverLogin[28] = TextDrawCreate(290.000, 77.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[28], 3.000, 12.000);
    TextDrawAlignment(serverLogin[28], 1);
    TextDrawColor(serverLogin[28], -626712321);
    TextDrawSetShadow(serverLogin[28], 0);
    TextDrawSetOutline(serverLogin[28], 0);
    TextDrawBackgroundColor(serverLogin[28], 255);
    TextDrawFont(serverLogin[28], 4);
    TextDrawSetProportional(serverLogin[28], 1);

    serverLogin[29] = TextDrawCreate(292.000, 86.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[29], 8.000, 3.000);
    TextDrawAlignment(serverLogin[29], 1);
    TextDrawColor(serverLogin[29], -626712321);
    TextDrawSetShadow(serverLogin[29], 0);
    TextDrawSetOutline(serverLogin[29], 0);
    TextDrawBackgroundColor(serverLogin[29], 255);
    TextDrawFont(serverLogin[29], 4);
    TextDrawSetProportional(serverLogin[29], 1);

    serverLogin[30] = TextDrawCreate(300.000, 65.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[30], 3.000, 24.000);
    TextDrawAlignment(serverLogin[30], 1);
    TextDrawColor(serverLogin[30], -626712321);
    TextDrawSetShadow(serverLogin[30], 0);
    TextDrawSetOutline(serverLogin[30], 0);
    TextDrawBackgroundColor(serverLogin[30], 255);
    TextDrawFont(serverLogin[30], 4);
    TextDrawSetProportional(serverLogin[30], 1);

    serverLogin[31] = TextDrawCreate(258.000, 147.000, "LD_DRV:blkdot");
    TextDrawTextSize(serverLogin[31], 10.000, 3.000);
    TextDrawAlignment(serverLogin[31], 1);
    TextDrawColor(serverLogin[31], -626712321);
    TextDrawSetShadow(serverLogin[31], 0);
    TextDrawSetOutline(serverLogin[31], 0);
    TextDrawBackgroundColor(serverLogin[31], 255);
    TextDrawFont(serverLogin[31], 4);
    TextDrawSetProportional(serverLogin[31], 1);*/
}
