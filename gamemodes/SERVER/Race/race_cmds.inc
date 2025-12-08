Dialog:raceSelect(playerid, response, listitem, inputtext[])
{
    if(response)
    {
        AccountData[playerid][pLagiBuatRace] = listitem+1;
        DisplayDialogRace(playerid);
    }
    return 1;
}

CMD:race(playerid, params[])
{
    new options[24], string[64];
    if(sscanf(params, "s[24]S()[128]", options, string))
    {
        Info(playerid, "/race [option]") && Info(playerid, "create, done, start, clear, join, leave, menu");
        return 1;
    }

	if(!strcmp(options, "create", true))
	{
        if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER)
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus menjadi pengemudi!");

        if(AccountData[playerid][pLagiBuatRace] != 0)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang dalam pembuatan race!");

        if(RaceGetCount(playerid) >= 2)
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu sudah memiliki 2 balapan!");

        if(!IsPlayerInAnyVehicle(playerid))
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus berada di dalam kendaraan!");

        AccountData[playerid][pSelesaiCP] = 0;
        Dialog_Show(playerid, raceSelect, DIALOG_STYLE_LIST, "Mayoritas Roleplay {FF0000}/{FFFFFF}/ Racing Systems", "10 Checkpoints\n{BABABA}15 Checkpoints\n20 Checkpoints", "Pilih", "Tutup");
	}
    else if (!strcmp(options, "clear", true))
	{
        if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER)
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus menjadi pengemudi!");

        if(AccountData[playerid][pLagiBuatRace] == 0)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang tidak dalam pembuatan race!");

        AccountData[playerid][pLagiBuatRace] = 0;
        AccountData[playerid][pSelesaiCP] = 0;

        ShowTDN(playerid, NOTIFICATION_SUKSES, "System berhasil membersihkan checkpoint race milik anda!");
	}
	else if (!strcmp(options, "done", true))
	{
        if(!IsPlayerInRangeOfPoint(playerid, 3.0, AccountData[playerid][LokasiAwal][0], AccountData[playerid][LokasiAwal][1], AccountData[playerid][LokasiAwal][2]))
            return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada di lokasi awal pembuatan race!");
            
        if(AccountData[playerid][pLagiBuatRace] == 1) {
            if(AccountData[playerid][pSelesaiCP] != 10)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum menyelesaikan checkpoint!");
        }
        else if(AccountData[playerid][pLagiBuatRace] == 2) {
            if(AccountData[playerid][pSelesaiCP] != 15)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum menyelesaikan checkpoint!");
        }
        else if(AccountData[playerid][pLagiBuatRace] == 3) {
            if(AccountData[playerid][pSelesaiCP] != 20)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda belum menyelesaikan checkpoint!");
        }
        
        AccountData[playerid][pLagiBuatRace] = 0;

        if(Race_Create(playerid) != -1) ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil menyelesaikan pembuatan checkpoint race dan telah tersimpan.");
		else ShowTDN(playerid, NOTIFICATION_ERROR, "Race di kota sudah mencapai batas maksimal!");

        AccountData[playerid][pSelesaiCP] = 0;

        Info(playerid, "Gunakan "YELLOW"'/race start [detik join]' {ffffff}untuk memulai balapan.");
        ShowTDN(playerid, NOTIFICATION_INFO, "Pastikan anda berada di titik lokasi awal sebelum memulai balapan!");
	}
    else if(!strcmp(options, "start", true))
    {
        new index;
        if((index = Race_Nearest(playerid)) != -1)
		{
            if(RaceData[index][raceReady] == 1)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah memulai detik balapan!");

			new detik;
            if(sscanf(string, "d", detik)) return Info(playerid, "/race [start] [detik join]");

            if(detik < 1 || detik > 60)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Detik tidak dapat kurang dari 1 dan lebih dari 60!");

            if(RaceData[index][racePlayerID] != AccountData[playerid][pID])
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Ini bukan race milikmu!.");
            
            Info(playerid, "Anda berhasil start race, gunakan "YELLOW"'/race join' {FFFFFF}untuk join race!");
            
            RaceData[index][raceTimer] = detik;
            PlayerInRace[index] = 0;

            RaceData[index][raceStart] = 0;
            RaceData[index][raceReady] = 1;

            new str[128];
            format(str, sizeof(str), "{FFFFFF}Balapan untuk "GREEN"$1 {FFFFFF}mulai dalam "YELLOW"%d detik\n{FFFFFF}Tekan [H] untuk bergabung", RaceData[index][raceTimer]);
            RaceData[index][raceLabel] = CreateDynamic3DTextLabel(str, ARWIN, RaceData[index][raceAwal][0], RaceData[index][raceAwal][1], RaceData[index][raceAwal][2]+0.1, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, 0, 0, -1, 30.0);
		}
		else ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada balapan didekatmu!");
        
    }
    else if(!strcmp(options, "join", true))
    {
        new index;
        if((index = Race_Nearest(playerid)) != -1)
		{
            if(RaceData[index][raceStart] == 1)
                return 1;

            if(AccountData[playerid][IkutBalap] != -1)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah bergabung dengan balapan ini!");

            if(PlayerInRace[index] >= 10)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Pemain di dalam race penuh!");

            if(RaceData[index][raceReady] == 0)
                return 1;

            ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil bergabung kedalam balapan!");
            AccountData[playerid][IkutBalap] = RaceData[index][raceID];
            PlayerInRace[index]++;
		}
		else ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada balapan didekatmu!");
    }
    else if (!strcmp(options, "menu", true))
	{
		if(!RaceGetCount(playerid))
			return ShowTDN(playerid, NOTIFICATION_ERROR, "Kamu tidak memiliki race!");

		new output[256], typerace[64];
		strcat(output, "No.\tRace Checkpoint\tLokasi\n");
		foreach(new i : Race) if(RaceData[i][racePlayerID] == AccountData[playerid][pID])
        {
            switch(RaceData[i][RaceType])
            {
                case 1: typerace = "{3cb371}10 {FFFFFF}Checkpoint";
                case 2: typerace = "{3cb371}15 {FFFFFF}Checkpoint";
                case 3: typerace = "{3cb371}20 {FFFFFF}Checkpoint";
            }
			strcat(output, sprintf("%d.\t%s\t%s\n", i, typerace, GetLocation(RaceData[i][raceAwal][0], RaceData[i][raceAwal][1], RaceData[i][raceAwal][2])));
        }
		Dialog_Show(playerid, TrackRace, DIALOG_STYLE_TABLIST_HEADERS, "Mayoritas Roleplay {FF0000}/{FFFFFF}/ My Race", output, "Menu", "Tutup");
	}
    else if(!strcmp(options, "leave", true))
    {
        new index;
        if((index = Race_Nearest(playerid)) != -1)
		{
            if(RaceData[index][raceStart] == 1)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak dapat keluar dari balapan yang sedang berlangsung!");

            if(AccountData[playerid][IkutBalap] == -1)
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak sedang mengikuti balapan apapun!");

            if(AccountData[playerid][IkutBalap] != RaceData[index][raceID])
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak mengikuti balapan ini!");

            PlayerInRace[index]--;
            foreach(new i : Player)
            {
                if(AccountData[playerid][IkutBalap] == RaceData[index][raceID])
                {
                    Info(i, "%s Telah meninggalkan balapan!", ReturnName(playerid));
				    Info(i, "Pemain yang tersisa di balapan: "YELLOW"%d", PlayerInRace[index]);
                }
            }
            
            AccountData[playerid][IkutBalap] = -1;
		}
		else ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak ada balapan didekatmu!");
    }
	return 1;
}

CMD:gotorace(playerid, params[])
{
	if(AccountData[playerid][pAdmin] < 3)
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak bisa akses perintah ini!");

	new raceid;
	if(sscanf(params, "d", raceid))
		return ShowTDN(playerid, NOTIFICATION_INFO, "/gotorace [race id]");

	if(!Iter_Contains(Race, raceid))
		return ShowTDN(playerid, NOTIFICATION_ERROR, "Invalid race ID!");
	
	SetPlayerPos(playerid, RaceData[raceid][raceAwal][0], RaceData[raceid][raceAwal][1], RaceData[raceid][raceAwal][2] + 3.0);
	ShowTDN(playerid, NOTIFICATION_INFO, sprintf("Anda telah diteleport menuju race id %d", raceid));
	return 1;
}