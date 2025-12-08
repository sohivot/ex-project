function PlayerEnterRaceCheckpoint(playerid, raceid, enter, amount)
{
    if(enter < amount) {
        DisablePlayerRaceCheckpoint(playerid);
        SetPlayerRaceCheckpoint(playerid, 2, RaceCP[raceid][enter][racePositionX], RaceCP[raceid][enter][racePositionY], RaceCP[raceid][enter][racePositionZ], 0.0, 0.0, 0.0, 3.5);
    }   
    else {
        if(RaceData[raceid][raceWinner] == 1)
        {
            DisablePlayerRaceCheckpoint(playerid);
            AccountData[playerid][pBalapan] = 0;
            PlayerInRace[raceid]--;
            
            ShowTDN(playerid, NOTIFICATION_INFO, sprintf("Pemain balapan tersisa: %d", PlayerInRace[raceid]));
            ShowPlayerFooter(playerid, "Anda dinyatakan ~r~kalah!", 3500);

            AccountData[playerid][IkutBalap] = -1;
        }
        else
        {
            foreach(new i : Player)
            {
                if(AccountData[i][IkutBalap] == RaceData[raceid][raceID])
                {
                    Info(i, "%s Dinyatakan sebagai pemenang balapan", ReturnName(playerid));
                }
            }
            DisablePlayerRaceCheckpoint(playerid);
            RaceData[raceid][raceWinner] = 1;
            AccountData[playerid][pBalapan] = 0;
            AccountData[playerid][IkutBalap] = -1;
            PlayerInRace[raceid]--;

            ShowPlayerFooter(playerid, "Anda memenangkan balapan!", 3500);
            ShowTDN(playerid, NOTIFICATION_INFO, sprintf("Pemain balapan tersisa: %d", PlayerInRace[raceid]));
        }
    }
    return 1;
}

Race_Create(playerid)
{
	static index;

	if((index = Iter_Free(Race)) != cellmin)
	{
		Iter_Add(Race, index);

        //checkpoint awal
		RaceData[index][raceAwal][0] = AccountData[playerid][LokasiAwal][0];
		RaceData[index][raceAwal][1] = AccountData[playerid][LokasiAwal][1];
		RaceData[index][raceAwal][2] = AccountData[playerid][LokasiAwal][2];

		RaceData[index][racePlayerID] = AccountData[playerid][pID];
        RaceData[index][racePrize] = 0;

		new output[2056];
        mysql_format(mdb_query, output, sizeof(output), "INSERT INTO `race` ( ");
        mysql_format(mdb_query, output, sizeof(output), "%s`raceOwner`, ", output);
        mysql_format(mdb_query, output, sizeof(output), "%s`racePrize`, ", output);
        mysql_format(mdb_query, output, sizeof(output), "%s`raceAwalx`, ", output);
        mysql_format(mdb_query, output, sizeof(output), "%s`raceAwaly`, ", output);
        mysql_format(mdb_query, output, sizeof(output), "%s`raceAwalz`, ", output);

        new tempString[64];
        forex(x, 20)
        {
            format(tempString, sizeof(tempString), "racePosx%d", x);
            mysql_format(mdb_query, output, sizeof(output), "%s`%s`, ", output, tempString, RaceCP[index][x][racePositionX]);
        }
        forex(y, 20)
        {
            format(tempString, sizeof(tempString), "racePosy%d", y);
            mysql_format(mdb_query, output, sizeof(output), "%s`%s`, ", output, tempString, RaceCP[index][y][racePositionY]);
        }
        forex(z, 20)
        {
            format(tempString, sizeof(tempString), "racePosz%d", z);
            mysql_format(mdb_query, output, sizeof(output), "%s`%s`, ", output, tempString, RaceCP[index][z][racePositionZ]);
        }
        mysql_format(mdb_query, output, sizeof(output), "%s`raceType`) VALUE ('%d', '%d', ", output, RaceData[index][racePlayerID], RaceData[index][racePrize]);
        mysql_format(mdb_query, output, sizeof(output), "%s '%.3f','%.3f','%.3f', ", output, RaceData[index][raceAwal][0], RaceData[index][raceAwal][1], RaceData[index][raceAwal][2]);

        forex(valuex, 20)
        {
            mysql_format(mdb_query, output, sizeof(output), "%s '%.3f', ", output, RaceCP[index][valuex][racePositionX]);
        }
        forex(valuey, 20)
        {
            mysql_format(mdb_query, output, sizeof(output), "%s '%.3f', ", output, RaceCP[index][valuey][racePositionY]);
        }
        forex(valuez, 20)
        {
            mysql_format(mdb_query, output, sizeof(output), "%s '%.3f', ", output, RaceCP[index][valuez][racePositionZ]);
        }
        mysql_format(mdb_query, output, sizeof(output), "%s '%d') ", output, RaceData[index][RaceType]);
		mysql_tquery(mdb_query, output, "OnRaceCreated", "d", index);

        DisablePlayerRaceCheckpoint(playerid);
		return index;
	}
	return -1;
}

function LoadRace()
{
    new tempString[128];
	if(cache_num_rows())
	{
		for(new i = 0; i != cache_num_rows(); i++)
		{
			cache_get_value_name_int(i, "raceId", RaceData[i][raceID]);
			cache_get_value_name_int(i, "raceOwner", RaceData[i][racePlayerID]);
            cache_get_value_name_int(i, "racePrize", RaceData[i][racePrize]);

            cache_get_value_name_float(i, "raceAwalx", RaceData[i][raceAwal][0]);
			cache_get_value_name_float(i, "raceAwaly", RaceData[i][raceAwal][1]);
			cache_get_value_name_float(i, "raceAwalz", RaceData[i][raceAwal][2]);

            forex(z, 20)
            {
                format(tempString, sizeof(tempString), "racePosx%d", z);
                cache_get_value_name_float(i, tempString, RaceCP[i][z][racePositionX]);

                format(tempString, sizeof(tempString), "racePosy%d", z);
                cache_get_value_name_float(i, tempString, RaceCP[i][z][racePositionY]);

                format(tempString, sizeof(tempString), "racePosz%d", z);
                cache_get_value_name_float(i, tempString, RaceCP[i][z][racePositionZ]);
            }
            cache_get_value_name_int(i, "raceType", RaceData[i][RaceType]);
			Iter_Add(Race, i);
		}
		printf("[Dynamic Race] Jumlah total race yang dimuat %d", cache_num_rows());
	}
	return 1;	
}

forward OnRaceCreated(index);
public OnRaceCreated(index)
{
	RaceData[index][raceID] = cache_insert_id();
	return 1;	
}

task RaceUpdates[1000]()
{
    new string[128];
	foreach(new i : Race) if(RaceData[i][raceStart] == 0)
    {
        if(RaceData[i][raceTimer])
        {
            RaceData[i][raceTimer]--;

            if(RaceData[i][raceTimer] > 60)
            {
                format(string, sizeof(string), "{FFFFFF}Balapan untuk "GREEN"$1 {FFFFFF}mulai dalam "YELLOW"%d Menit %d detik\n{FFFFFF}Tekan [H] untuk bergabung", (RaceData[i][raceTimer] / 60) % 60, RaceData[i][raceTimer] % 60);
                UpdateDynamic3DTextLabelText(RaceData[i][raceLabel], COLOR_WHITE, string);
            }
            else
            {
                format(string, sizeof(string), "{FFFFFF}Balapan untuk "GREEN"$1 {FFFFFF}mulai dalam "YELLOW"%d detik\n{FFFFFF}Tekan [H] untuk bergabung", RaceData[i][raceTimer]);
                UpdateDynamic3DTextLabelText(RaceData[i][raceLabel], COLOR_WHITE, string);
            }
        }
        if(RaceData[i][raceTimer] <= 5)
        {
            foreach(new pid : Player) if(RaceData[i][raceID] == AccountData[pid][IkutBalap])
            {
                DisablePlayerRaceCheckpoint(pid);

                new tstr[32];
                format(tstr, sizeof(tstr), "%02d", RaceData[i][raceTimer]);
                GameTextForPlayer(pid, tstr, 1000, 6);

                TogglePlayerControllable(pid, false);
            }
        }
        if(RaceData[i][raceTimer] <= 0)
        {
            if(IsValidDynamic3DTextLabel(RaceData[i][raceLabel]))
                DestroyDynamic3DTextLabel(RaceData[i][raceLabel]);
            
            if(PlayerInRace[i] == 1)
            {
                RaceData[i][raceReady] = 0;
                RaceData[i][raceStart] = 0;
                foreach(new pid : Player) if(RaceData[i][raceID] == AccountData[pid][IkutBalap])
                {
                    Info(pid, "Anda tidak dapat memulai balapan sendirian!, race dibuubarkan!");
                    DisablePlayerRaceCheckpoint(pid);
                    AccountData[pid][pBalapan] = 0;
                    AccountData[pid][IkutBalap] = -1;
                    PlayerInRace[i] = 0;
                }
            }
            else 
            {
                RaceData[i][raceStart] = 1;
                foreach(new pid : Player) if(RaceData[i][raceID] == AccountData[pid][IkutBalap])
                {
                    Info(pid, "Race telah dimulai, let's go!");
                    GameTextForPlayer(pid, "GO!!", 2000, 6);

                    AccountData[pid][pBalapan] = 0;
                    TogglePlayerControllable(pid, true);
                    
                    SetPlayerRaceCheckpoint(pid, 2, RaceCP[i][0][racePositionX], RaceCP[i][0][racePositionY], RaceCP[i][0][racePositionZ], RaceCP[i][1][racePositionX], RaceCP[i][1][racePositionY], RaceCP[i][1][racePositionZ], 3.5);
                }
            }
        }
    }
    return 1;
}

Race_Delete(index)
{
    mysql_tquery(mdb_query, sprintf("DELETE FROM `race` WHERE `raceId`='%d';", RaceData[index][raceID]));

    //race varb
    RaceData[index][racePrize] = 0;
    RaceData[index][raceWinner] = 0;
    RaceData[index][raceReady] = 0;
    RaceData[index][raceTimer] = 0;

    //race
    RaceData[index][raceAwal][0] = 0;
    RaceData[index][raceAwal][1] = 0;
    RaceData[index][raceAwal][2] = 0;

    forex(z, 19)
    {
        RaceCP[index][z][racePositionX] = 0;
        RaceCP[index][z][racePositionY] = 0;
        RaceCP[index][z][racePositionZ] = 0;
    }
    RaceData[index][RaceType] = 1;
    RaceData[index][racePlayerID] = 0;
	Iter_Remove(Race, index);
    return 1;
}

Race_Nearest(playerid, Float:range = 10.0)
{
	new id = -1, Float: playerdist, Float: tempdist = 9999.0;
	
	foreach(new i : Race) 
	{
        playerdist = GetPlayerDistanceFromPoint(playerid, RaceData[i][raceAwal][0], RaceData[i][raceAwal][1], RaceData[i][raceAwal][2]);
        
        if(playerdist > range) continue;

	    if(playerdist <= tempdist) {
	        tempdist = playerdist;
	        id = i;
	    }
	}
	return id;
}

DisplayDialogRace(playerid)
{
    new str[512];
    format(str, sizeof(str), "{FFFFFF}Selamat datang di mode pembuatan race!\n");
    format(str, sizeof(str), "%s{FFFFFF}Silahkan tentukan checkpoint balapan yang anda inginkan!\n\n", str);
    format(str, sizeof(str), "%s{FFFFFF}Commands:\n", str);
    format(str, sizeof(str), "%s{FFFFFF}Tombol "YELLOW"'Klakson' {ffffff}Saat anda berada di dalam kendaraan untuk membuat checkpoint!\n", str);
    format(str, sizeof(str), "%s{FFFFFF}Gunakan "YELLOW"'/race clear' {ffffff}Untuk mereset semua checkpoint yang telah dibuat\n", str);
    format(str, sizeof(str), "%s{FFFFFF}Gunakan "YELLOW"'/race start' {ffffff}Untuk menyelesaikan pembuatan checkpoint dan membuka race untuk dapat dimasuki oleh player lain!", str);
    ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_MSGBOX, "Imajinasi Roleplay {FF0000}/{FFFFFF}/ Racing Systems", str, "Okay", "");

    GetPlayerPos(playerid, AccountData[playerid][LokasiAwal][0], AccountData[playerid][LokasiAwal][1], AccountData[playerid][LokasiAwal][2]);
    return 1;
}

RaceGetCount(playerid)
{
	new count;
	foreach(new i : Race)
	{
		if(RaceData[i][racePlayerID] != AccountData[playerid][pID])
			continue;

		count++;
	}
	return count;
}

Race_IsExists(index)
{
	if(!Iter_Contains(Race, index))
		return 0;

	return 1;
}

Dialog:TrackRace(playerid, response, listitem, inputtext[])
{
	if(response)
	{
		new index = strval(inputtext);

		if(Race_IsExists(index) && RaceData[index][racePlayerID] == AccountData[playerid][pID])
		{
            AccountData[playerid][IndexRace] = index;
			Dialog_Show(playerid, RaceMenu, DIALOG_STYLE_TABLIST_HEADERS, "Imajinasi Roleplay {FF0000}/{FFFFFF}/ Race Menu", "Menu\nMulai Balapan\nLacak Lokasi Awal\nHapus Balapan", "Pilih", "Tutup");
		}
	}
	return 1;
}

Dialog:RaceMenu(playerid, response, listitem, inputtext[])
{
    if(response)
	{
        new index = AccountData[playerid][IndexRace];
        switch(listitem)
        {
            case 0:
            {
                RaceData[index][raceReady] = 0;
                RaceData[index][raceWinner] = 0;
                ShowTDN(playerid, NOTIFICATION_INFO, "Anda dapat menggunakan kembali "YELLOW"'/race start' {FFFFFF}di lokasi awal balapan!");
            }
            case 1:
            {
                ShowTDN(playerid, NOTIFICATION_INFO, "Lokasi awal anda telah ditandai di peta!");
                SetPlayerRaceCheckpoint(playerid, 2, RaceData[index][raceAwal][0], RaceData[index][raceAwal][1], RaceData[index][raceAwal][2], 0.0, 0.0, 0.0, 3.5);
            }
            case 2:
            {
                if(RaceData[index][raceStart] == 1)
                    return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak dapat menghapus balapan yang sedang berlangsung!");

                ShowTDN(playerid, NOTIFICATION_INFO, sprintf("Race lokasi %s milik anda telah dihapus", GetLocation(RaceData[index][raceAwal][0], RaceData[index][raceAwal][1], RaceData[index][raceAwal][2])));
                Race_Delete(index);
            }
        }
    }
    return 1;
}