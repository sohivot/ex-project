#include <YSI\y_hooks>

enum e_gangzone
{
	gzSafezone,
};

new GangZoneData[e_gangzone];

enum e_area
{
	STREAMER_TAG_AREA:areaKanpol,
	STREAMER_TAG_AREA:areaHospital,
	STREAMER_TAG_AREA:areaWalkot,
	STREAMER_TAG_AREA:areabengkel,
	STREAMER_TAG_AREA:areaBandara,
	STREAMER_TAG_AREA:areaLadang,
	STREAMER_TAG_AREA:BandaraGreenZone,

	//job disnaker
	STREAMER_TAG_AREA:JobKayu,
	STREAMER_TAG_AREA:JobPenambang[3],
	STREAMER_TAG_AREA:JobBus,
	STREAMER_TAG_AREA:JobAyam[2],
	STREAMER_TAG_AREA:JobPenjahit,
	STREAMER_TAG_AREA:JobTukangSusu,
	STREAMER_TAG_AREA:JobPetani,
	STREAMER_TAG_AREA:JobKargo,
	STREAMER_TAG_AREA:JobRecycle[2],
};
new AreaData[e_area];

new
	//rumah sakit
    bool:g_RSLeftDoorOpened,
    bool:g_RSRightDoorOpened,
    bool:g_RSBackDoorOpened,
    STREAMER_TAG_AREA:RSLeftDoorSensor,
    STREAMER_TAG_AREA:RSRightDoorSensor,
    STREAMER_TAG_AREA:RSBackDoorSensor,
    STREAMER_TAG_OBJECT:RSDoor[6];

new
	//disnaker
	bool:g_DisnakerDoorOpened,
    STREAMER_TAG_AREA:DisnakerDoorSensor,
    STREAMER_TAG_OBJECT:DisnakerDoor[2];

new
	//resto
	bool:g_PutriDeliDoorOpened,
    STREAMER_TAG_AREA:PutriDeliDoorSensor,
    STREAMER_TAG_OBJECT:PutriDeliDoor[2];	



enum E_HUNTING
{
	STREAMER_TAG_AREA:Hunting,
	STREAMER_TAG_AREA:Penjahit,
	STREAMER_TAG_3D_TEXT_LABEL:HuntingStore
};
new HuntingArea[E_HUNTING];

enum e_areawarung
{
	STREAMER_TAG_AREA:warungVinewood,
	STREAMER_TAG_AREA:warungTerminal,
	STREAMER_TAG_AREA:warungAnglePine,
	STREAMER_TAG_AREA:warungGanton,
	STREAMER_TAG_AREA:warungSanFiero,
	STREAMER_TAG_AREA:warungAdmin,
	STREAMER_TAG_AREA:warungBengkel,
	STREAMER_TAG_AREA:warungPalomino,
	STREAMER_TAG_AREA:warungSFAriv,
	STREAMER_TAG_AREA:warungLV,
};
new WarungArea[e_areawarung];

hook IsPlayerInArea(playerid, Float:max_x, Float:min_x, Float:max_y, Float:min_y)
{
	new Float:X, Float:Y, Float:Z;
	GetPlayerPos(playerid, X, Y, Z);
	if(X <= max_x && X >= min_x && Y <= max_y && Y >= min_y) return true;
	return false;
}
stock LoadHuntingZone()
{
	HuntingArea[Hunting] = CreateDynamicRectangle(-690, -2482.4002075195312, -352, -2141.4002075195312);
	HuntingArea[HuntingStore] = CreateDynamic3DTextLabel(""GREEN"[ALT] "WHITE"Menjual Hasil Hunting", -1, -1692.5179, -88.5486, 3.5670+0.3, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1);
	HuntingArea[Penjahit] = CreateDynamicRectangle(1734.80029296875, -1811.2001953125, 1813.80029296875, -1738.2001953125);
}

stock LoadGangZone()
{
	GangZoneData[gzSafezone] = GangZoneCreate(-3000, -3000, 3000, 3000);
}

stock LoadArea()
{
	AreaData[areaWalkot] = CreateDynamicRectangle(1118, -2097.39990234375, 1515, -1924.39990234375);
	AreaData[areabengkel] = CreateDynamicRectangle(2222.80029296875, -1977.2001953125, 2321.80029296875, -1883.2001953125);
	AreaData[areaKanpol] = CreateDynamicRectangle(1013.199951171875, -1757.2001953125, 1180.199951171875, -1613.2001953125);
	AreaData[areaHospital] = CreateDynamicRectangle(1985.7877807617188, -1456.550048828125, 2100.7877807617188, -1349.550048828125);
	AreaData[areaBandara] = CreateDynamicRectangle(1555.9999389648438, -2390.4999084472656, 1826.9999389648438, -2183.4999084472656);
	AreaData[JobKayu] = CreateDynamicRectangle( -501.4124755859375, -121.074951171875, -415.4124755859375, -27.074951171875);
	AreaData[JobPenambang][0] = CreateDynamicRectangle(615.75, 806.324951171875, 702.75, 867.324951171875);	
	AreaData[JobPenambang][1] = CreateDynamicRectangle(2138.7877807617188, -2285.83740234375, 2244.7877807617188, -2201.83740234375);
	AreaData[JobPenambang][2] = CreateDynamicRectangle( -441.5250244140625, 1137.4874267578125, -356.5250244140625, 1209.4874267578125);
	AreaData[JobBus] = CreateDynamicRectangle(15.112548828125, -282.112548828125, 172.112548828125, -214.112548828125);
	AreaData[JobAyam][0] = CreateDynamicRectangle(1516.275146484375, -11.949951171875, 1594.275146484375, 59.050048828125);
	AreaData[JobAyam][1] = CreateDynamicRectangle(1887.275146484375, 122.050048828125, 1961.275146484375, 184.050048828125);
	AreaData[JobPenjahit] = CreateDynamicRectangle(2467.7877807617188, -62.987548828125, 2532.7877807617188, -13.987548828125);
	AreaData[JobTukangSusu] = CreateDynamicRectangle(212.875, 1031.3624267578125, 333.875, 1173.3624267578125);
	AreaData[JobPetani] = CreateDynamicRectangle(-330.6500244140625, -1432.58740234375, -158.6500244140625, -1306.58740234375);
	AreaData[JobKargo] = CreateDynamicRectangle(-1741.6875, -11.03759765625, -1673.6875, 66.96240234375);
	AreaData[JobRecycle][0] = CreateDynamicRectangle(2257.7877807617188, 2729, 2359.7877807617188, 2786);
	AreaData[JobRecycle][1] = CreateDynamicRectangle(-46.6875, 1318.449951171875, 57.3125, 1415.449951171875);
}
stock LoadWarungArea()
{
	WarungArea[warungVinewood] = CreateDynamicRectangle(1302.833251953125, -900.333251953125, 1332.833251953125, -857.333251953125);
	WarungArea[warungTerminal] = CreateDynamicRectangle(21.80010986328125, -289.38755798339844, 49.80010986328125, -253.38755798339844);
	WarungArea[warungAnglePine] = CreateDynamicRectangle( -2206.5, -2270, -2178.5, -2239);
	WarungArea[warungGanton] = CreateDynamicRectangle(2498.72216796875, -1539.111083984375, 2537.72216796875, -1511.111083984375);
	WarungArea[warungSanFiero] = CreateDynamicRectangle(-2359.5, 994.22216796875, -2323.5, 1024.22216796875);
	WarungArea[warungAdmin] = CreateDynamicRectangle(1453.27783203125, -1725.33349609375, 1492.27783203125, -1705.33349609375);
	WarungArea[warungBengkel] = CreateDynamicRectangle(33.833251953125, 1119.4444580078125, 59.833251953125, 1151.4444580078125);
	WarungArea[warungPalomino] = CreateDynamicRectangle(2570.72216796875, 51.333251953125, 2604.72216796875, 74.333251953125);
	WarungArea[warungSFAriv] = CreateDynamicRectangle(-2648.5, 1331.4444580078125, -2616.5, 1368.4444580078125);
	WarungArea[warungLV] = CreateDynamicRectangle(2292.72216796875, 934.22216796875, 2338.72216796875, 970.22216796875);
}

stock IsSafeZone(STREAMER_TAG_AREA:areaid)
{
	if(areaid == AreaData[areaBandara] || areaid == AreaData[areaKanpol] || areaid == AreaData[areaHospital] || areaid == AreaData[areaWalkot] || areaid == AreaData[areabengkel] 
		|| areaid == AreaData[JobKargo] || areaid == AreaData[JobPenambang][0] || areaid == AreaData[JobPenambang][1] || areaid == AreaData[JobPenambang][2] || areaid == AreaData[JobBus]
		|| areaid == AreaData[JobAyam][0] || areaid == AreaData[JobAyam][1] || areaid == AreaData[JobPenjahit] || areaid == AreaData[JobTukangSusu] || areaid == AreaData[JobPetani] 
		|| areaid == AreaData[JobKargo] || areaid == AreaData[JobRecycle][0] || areaid == AreaData[JobRecycle][1])
		return 1;

	return 0;
}

hook OnGameModeInit()
{
	LoadHuntingZone();
	AreaData[areaLadang] = CreateDynamicRectangle( -331.1666259765625, -1414.444580078125, -167.1666259765625, -1314.444580078125);
	AreaData[BandaraGreenZone] = CreateDynamicRectangle(1572.60009765625, -2337.60009765625, 1744.60009765625, -2235.60009765625);
	//resto
    g_PutriDeliDoorOpened = false;
    PutriDeliDoorSensor = CreateDynamicSphere(659.8900,-1862.6075,6.5551, 4.25, 0, 0, -1);
    PutriDeliDoor[0] = CreateDynamicObject(1532, 661.260864, -1863.011108, 5.489810, 0.000000, 0.000000, 180.000000, 0, 0, -1, 200.00, 200.00); // kiri closed
    SetDynamicObjectMaterial(PutriDeliDoor[0], 0, 19297, "matlights", "invisible", 0x00000000);
    SetDynamicObjectMaterial(PutriDeliDoor[0], 1, 19325, "lsmall_shops", "lsmall_window01", 0x00000000);
    SetDynamicObjectMaterial(PutriDeliDoor[0], 2, 18996, "mattextures", "sampblack", 0x00000000);
    PutriDeliDoor[1] = CreateDynamicObject(1532, 658.260681, -1863.011108, 5.490809, 0.000000, 0.000000, 720.000000, 0, 0, -1, 200.00, 200.00); // kanana close
    SetDynamicObjectMaterial(PutriDeliDoor[1], 0, 19297, "matlights", "invisible", 0x00000000);
    SetDynamicObjectMaterial(PutriDeliDoor[1], 1, 19325, "lsmall_shops", "lsmall_window01", 0x00000000);
    SetDynamicObjectMaterial(PutriDeliDoor[1], 2, 18996, "mattextures", "sampblack", 0x00000000);
    
	//dinas pekerjaan
    g_DisnakerDoorOpened = false;
    DisnakerDoorSensor = CreateDynamicSphere(1617.2924,-1272.8641,17.5060, 4.25, 0, 0, -1);
    DisnakerDoor[0] = CreateDynamicObject(1536, 1616.865966, -1271.409057, 16.479890, -0.000007, -0.000000, -89.999977, 0, 0, -1, 200.00, 200.00);  // close kanan
    DisnakerDoor[1] = CreateDynamicObject(1536, 1616.865966, -1274.409667, 16.479890, 0.000007, 0.000000, 89.999977, 0, 0, -1, 200.00, 200.00);  // close kiri
    
	//rs
	g_RSLeftDoorOpened = false;
    g_RSRightDoorOpened = false;
    g_RSBackDoorOpened = false;
    RSLeftDoorSensor = CreateDynamicSphere(1733.2405,-1133.5540,24.1073, 4.25, 0, 0, -1);
    RSRightDoorSensor = CreateDynamicSphere(1736.6779,-1133.5703,24.1073, 4.25, 0, 0, -1);
    RSBackDoorSensor = CreateDynamicSphere(1786.2725,-1096.2190,24.0913, 4.25, 0, 0, -1);
    RSDoor[0] = CreateDynamicObject(1569, 1731.708740, -1133.150390, 23.107053, 0.000000, 0.000060, 0.000000, 0, 0, -1, 200.00, 200.00); // kiri kiri tutup
    RSDoor[1] = CreateDynamicObject(1569, 1734.708618, -1133.130371, 23.107053, 0.000000, -0.000060, 179.999633, 0, 0, -1, 200.00, 200.00); // kiri kanan tutup
    RSDoor[2] = CreateDynamicObject(1569, 1735.219970, -1133.150390, 23.107053, 0.000000, 0.000067, 0.000000, 0, 0, -1, 200.00, 200.00); // kanan kiri closed
    RSDoor[3] = CreateDynamicObject(1569, 1738.219848, -1133.130371, 23.107053, 0.000000, -0.000067, 179.999588, 0, 0, -1, 200.00, 200.00); // kanan kanan closed
    RSDoor[4] = CreateDynamicObject(1569, 1784.720703, -1096.661621, 23.107053, 0.000000, 0.000029, 0.000000, 0, 0, -1, 200.00, 200.00); // backdoor kanan closed
    SetDynamicObjectMaterial(RSDoor[4], 0, 10713, "gayclub_sfs", "CJ_PIZZA_DOOR", 0x00000000);
    SetDynamicObjectMaterial(RSDoor[4], 1, 1419, "break_fence3", "CJ_FRAME_Glass", 0x00000000);
    RSDoor[5] = CreateDynamicObject(1569, 1787.720581, -1096.641601, 23.107053, 0.000000, -0.000029, 179.999816, 0, 0, -1, 200.00, 200.00); // backdoor left closed
    SetDynamicObjectMaterial(RSDoor[5], 0, 10713, "gayclub_sfs", "CJ_PIZZA_DOOR", 0x00000000);
    SetDynamicObjectMaterial(RSDoor[5], 1, 1419, "break_fence3", "CJ_FRAME_Glass", 0x00000000);
	return 1;
}

#include <YSI\y_hooks>
hook OnPlayerEnterDynArea(playerid, STREAMER_TAG_AREA:areaid)
{
	if(IsSafeZone(areaid))
	{
		GangZoneShowForPlayer(playerid, GangZoneData[gzSafezone],0x007FFF99);
	}
	return 1;
}

hook OnPlayerLeaveDynArea(playerid, STREAMER_TAG_AREA:areaid)
{
	if(IsSafeZone(areaid))
	{
		GangZoneHideForPlayer(playerid, GangZoneData[gzSafezone]);
	}
	if(areaid == WarungArea[warungVinewood] || areaid == WarungArea[warungTerminal] || areaid == WarungArea[warungAnglePine]
		|| areaid == WarungArea[warungGanton] || areaid == WarungArea[warungSanFiero] || areaid == WarungArea[warungAdmin]
		|| areaid == WarungArea[warungBengkel] || areaid == WarungArea[warungPalomino] || areaid == WarungArea[warungSFAriv]
		|| areaid == WarungArea[warungLV]) 
	{
		if (DurringRobbery[playerid])
		{
			DurringRobbery[playerid] = false;
			AccountData[playerid][pRobMin] = 0;
			g_RobberyTime = 0;
			RobberyShowTD(playerid, "Perampokan warung gagal, anda terlalu~n~jauh dari warung!");
			PlayerTextDrawHide(playerid, RobberyTextTD[playerid][0]);
			SendClientMessageToAllEx(-1, "{201ee5}POLDA"WHITE": Perampokan dinyatakan clear karena tersangka meninggalkan tempat perampokan!");
		}
	}
	return 1;
}