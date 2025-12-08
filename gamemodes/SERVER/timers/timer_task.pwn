new GameHour = 12;   // mulai jam 12 siang (bebas ganti)
new GameMinute = 0;
new GameSecond = 0;

task FivemClock[1000]() // tiap 1 detik real
{
    static counter;
    counter++;

    new speed;
    if(GameHour >= 6 && GameHour < 19) speed = 3; // siang
    else speed = 2; // malam

    if(counter >= speed)
    {
        counter = 0;

        GameMinute++;
        if(GameMinute >= 60)
        {
            GameMinute = 0;
            GameHour++;
            if(GameHour >= 24) GameHour = 0;
        }

        // Atur waktu dunia
        SetWorldTime(GameHour);
    }
    return 1;
}



task Server_FeatureUpdate[1000]()
{
	// Server Restart
	if(g_RestartServer)
    {
        switch(g_RestartTime)
        {
            case 1:
            {
                g_RestartServer = 0;
                g_RestartTime = 0;
                TextDrawHideForAll(gServerTextdraws[0]);

                SendRconCommand("exit");
            }
            case 3:
            {
				SaveAll();
				
                foreach(new i : Player) if(IsPlayerConnected(i))
                    KickEx(i);

                g_RestartTime--;
            }
            default: {
                new times[3];
                GetElapsedTime(g_RestartTime--, times[0], times[1], times[2]);
                TextDrawSetString(gServerTextdraws[0], sprintf("~r~Server Restart:~w~ %02d:%02d", times[1], times[2]));
            }
        }
    }
	// House Tax
	foreach(new hid : House) if(HouseData[hid][hsTax] != 0 && HouseData[hid][hsTax] <= gettime())
    {
		HouseData[hid][hsTax] = 0;
    }

	// Voting Time
	if(OpenVote)
	{
		if(VoteTime != 0 && VoteTime <= gettime())
		{
			SendClientMessageToAllEx(-1, ""YELLOW"VOTE:"WHITE" %s", VoteText);
			SendClientMessageToAllEx(-1, ""RED"<!>"WHITE" Waktu Voting sudah berakhir // Yes: "GREEN"%d"WHITE" // No: "RED"%d", VoteYes, VoteNo);

			OpenVote = 0;
			VoteYes = 0;
			VoteNo = 0;
			VoteTime = 0;
			VoteText[0] = EOS;
			foreach(new i : Player) if (IsPlayerConnected(i) && PlayerVoting[i])
			{
				PlayerVoting[i] = false;
			}
		}
	}
	// Asuransi Keliling
	if(g_AsuransiAll)
    {
        switch(g_AsuransiTime)
        {
			case 1:
            {
				foreach(new i : PvtVehicles) if(!PlayerVehicle[i][pVehImpounded] && !PlayerVehicle[i][pVehInsuranced] && PlayerVehicle[i][pVehParked] < 0 && PlayerVehicle[i][pVehHelipadGarage] < 0 && PlayerVehicle[i][pVehHouseGarage] < 0 && PlayerVehicle[i][pVehFamiliesGarage] < 0 && PlayerVehicle[i][pVehFactStored] < 0)
                {
					if(PlayerVehicle[i][pVehRental] == -1)
					{
						if(IsVehicleEmpty(PlayerVehicle[i][pVehPhysic])) 
						{
							PlayerVehicle[i][pVehInsuranced] = true;
							
							if(IsValidVehicle(PlayerVehicle[i][pVehPhysic])) 
								DestroyVehicle(PlayerVehicle[i][pVehPhysic]);
							
							PlayerVehicle[i][pVehPhysic] = INVALID_VEHICLE_ID;
						}
					}
					else
					{
						if(IsVehicleEmpty(PlayerVehicle[i][pVehPhysic]))
						{
							PlayerVehicle[i][pVehRental] = -1;
							PlayerVehicle[i][pVehRentTime] = 0;
							PlayerVehicle[i][pVehExists] = false;

							foreach(new pid : Player) if(PlayerVehicle[i][pVehOwnerID] == AccountData[pid][pID])
							{
								Info(pid, "Kendaaraanmu rental anda telah terkena asuransi keliling. Kendaraan otomatis dihilangkan!");
							}

							if(IsValidVehicle(PlayerVehicle[i][pVehPhysic])) 
							{
								DestroyVehicle(PlayerVehicle[i][pVehPhysic]);
								PlayerVehicle[i][pVehPhysic] = INVALID_VEHICLE_ID;
							}

							new cQuery[200];
							mysql_format(mdb_query, cQuery, sizeof(cQuery), "DELETE FROM `player_vehicles` WHERE `id` = '%d'", PlayerVehicle[i][pVehID]);
							mysql_tquery(mdb_query, cQuery);
							Iter_SafeRemove(PvtVehicles, i, i);
						}
					}
				} 
                g_AsuransiTime--;

                g_AsuransiAll = 0;
                g_AsuransiTime = 0;
                TextDrawHideForAll(gServerTextdraws[0]);

                SendClientMessageToAllEx(-1, ""YELLOW"[Asuransi]"WHITE": Terimakasih Asuransi Keliling Telah Selesai");
            }
            default: {
                new times[3];
                GetElapsedTime(g_AsuransiTime--, times[0], times[1], times[2]);
                TextDrawSetString(gServerTextdraws[0], sprintf("~g~Asuransi Keliling:~w~ %02d:%02d", times[1], times[2]));
            }
        }
    }
	return 1;
}

ptask PlayerDelay[1000](playerid)
{
	if(!AccountData[playerid][pSpawned] && !AccountData[playerid][IsLoggedIn])
		return 0;
	
	if(AccountData[playerid][pHasGudangID] > -1)
	{
		if(AccountData[playerid][pGudangRentTime] != 0 && AccountData[playerid][pGudangRentTime] <= gettime())
		{
			AccountData[playerid][pHasGudangID] = -1;
			AccountData[playerid][pGudangRentTime] = 0;
			Info(playerid, "Waktu sewa gudang anda telah habis 30 hari. NOTE: Barang anda tetap tersimpan dengan aman");
		}
	}
	if(AccountData[playerid][pSKWB] > 0)
	{
		if(AccountData[playerid][pSKWBTime] != 0 && AccountData[playerid][pSKWBTime] <= gettime())
		{
			AccountData[playerid][pSKWB] = 0;
			AccountData[playerid][pSKWBTime] = 0;
			Info(playerid, "Surat Keterangan Warga Baru/SKWB anda sudah habis. Anda sudah bukan berstatus Warga Baru.");
		}
	}
	if(AccountData[playerid][Ktp] > 0)
	{
		if(AccountData[playerid][KtpTime] != 0 && AccountData[playerid][KtpTime] <= gettime())
		{
			AccountData[playerid][Ktp] = 0;
			AccountData[playerid][KtpTime] = 0;
			Info(playerid, "Surat Keterangan Pengenal anda sudah habis. Silahkan Perpanjang Lagi Di Balai Kota.");
		}
	}
	if(AccountData[playerid][pVip] > 0)
	{
		if(AccountData[playerid][pVipTime] != 0 && AccountData[playerid][pVipTime] <= gettime())
		{
			AccountData[playerid][pVip] = 0;
			AccountData[playerid][pVipTime] = 0;
			Info(playerid, "Waktu durasi VIP anda telah habis 30 hari!");
		}
	}
	if(AccountData[playerid][pTheStars] > 0)
	{
		if(AccountData[playerid][pTheStarsTime] != 0 && AccountData[playerid][pTheStarsTime] <= gettime())
		{
			AccountData[playerid][pTheStars] = 0;
			AccountData[playerid][pTheStarsTime] = 0;
			Info(playerid, "Waktu durasi The Stars anda telah habis 30 hari.");
		}
	}
	if(AccountData[playerid][pXmasTime] != 0 && AccountData[playerid][pXmasTime] <= gettime())
	{
		AccountData[playerid][pXmasTime] = 0;
		Info(playerid, "Anda sudah dapat mengambil hadiah di pohon natal kembali!");
	}
	if(AccountData[playerid][pGunLic] > 0)
	{
		if(AccountData[playerid][pGunLicTime] != 0 && AccountData[playerid][pGunLicTime] <= gettime())
		{
			AccountData[playerid][pGunLic] = 0;
			AccountData[playerid][pGunLicTime] = 0;
			Info(playerid, "Masa berlaku Lisensi Senjata anda sudah habis, silakan perpanjang ke Kepolisian Imajinasi!");
		}
	}
	if(AccountData[playerid][pHuntingLic] > 0)
	{
		if(AccountData[playerid][pHuntingLicTime] != 0 && AccountData[playerid][pHuntingLicTime] <= gettime())
		{
			AccountData[playerid][pHuntingLic] = 0;
			AccountData[playerid][pHuntingLicTime] = 0;
			Info(playerid, "Masa berlaku Lisensi Hunting anda sudah habis, silakan perpanjang ke Pemerintahan Imajinasi!");
		}
	}
	// Sim Expired
	if(AccountData[playerid][pSimA] > 0)
	{
		if(AccountData[playerid][pSimATime] != 0 && AccountData[playerid][pSimATime] <= gettime())
		{
			AccountData[playerid][pSimA] = 0;
			AccountData[playerid][pSimATime] = 0;
			SendClientMessageEx(playerid, -1, ""YELLOW"INFORMATION:"WHITE" Masa Waktu Sim A Anda sudah tidak berlaku, anda bisa memperpanjangnya di Kepolisian Imajinasi");
		}
	}
	if(AccountData[playerid][pSimB] > 0)
	{
		if(AccountData[playerid][pSimBTime] != 0 && AccountData[playerid][pSimBTime] <= gettime())
		{
			AccountData[playerid][pSimB] = 0;
			AccountData[playerid][pSimBTime] = 0;
			SendClientMessageEx(playerid, -1, ""YELLOW"INFORMATION:"WHITE" Masa Waktu Sim B Anda sudah tidak berlaku, anda bisa memperpanjangnya di Kepolisian Imajinasi");
		}
	}
	if(AccountData[playerid][pSimC] > 0)
	{
		if(AccountData[playerid][pSimCTime] != 0 && AccountData[playerid][pSimCTime] <= gettime())
		{
			AccountData[playerid][pSimC] = 0;
			AccountData[playerid][pSimCTime] = 0;
			SendClientMessageEx(playerid, -1, ""YELLOW"INFORMATION:"WHITE" Masa Waktu Sim C Anda sudah tidak berlaku, anda bisa memperpanjangnya di Kepolisian Imajinasi");
		}
	}
	// SKS Expired Checking
	if(AccountData[playerid][pSKS] > 0)
	{
		if(AccountData[playerid][pSKSTime] != 0 && AccountData[playerid][pSKSTime] <= gettime())
		{
			Dialog_Show(playerid, ShowOnly, DIALOG_STYLE_MSGBOX, ""Imajinasi"Imajinasi Roleplay "WHITE"- Surat Keterangan Sehat", "Masa aktif Surat Keterangan Sehat Anda Sudah Habis\
			\nAnda diharuskan untuk memperpanjang ke Mitra EMS Imajinasi Jika berkenan", "Tutup", "");
			AccountData[playerid][pSKS] = 0;
			AccountData[playerid][pSKSTime] = 0;
			format(AccountData[playerid][pSKSNameDoc], 32, "None");
			format(AccountData[playerid][pSKSRankDoc], 32, "None");
			format(AccountData[playerid][pSKSReason], 32, "None");
		}
	}
	// SKCK Expired Checking
	if(AccountData[playerid][pSKCK] > 0)
	{
		if(AccountData[playerid][pSKCKTime] != 0 && AccountData[playerid][pSKCKTime] <= gettime())
		{
			Dialog_Show(playerid, ShowOnly, DIALOG_STYLE_MSGBOX, ""Imajinasi"Imajinasi Roleplay "WHITE"- Surat Keterangan Cacatan Kepolisian", "Masa aktif Surat Keterangan Cacatan Kepolisian/SKCK Anda Sudah Habis\
			\nAnda diharuskan untuk memperpanjang ke Kepolisian Imajinasi Jika berkenan", "Tutup", "");
			AccountData[playerid][pSKCK] = 0;
			AccountData[playerid][pSKCKTime] = 0;
			format(AccountData[playerid][pSKCKNamePol], 32, "None");
			format(AccountData[playerid][pSKCKRankPol], 32, "None");
			format(AccountData[playerid][pSKCKReason], 32, "None");
		}
	}
	// Bpjs Expired Checking
	if(AccountData[playerid][pBPJS] > 0)
	{
		if(AccountData[playerid][pBPJSTime] != 0 && AccountData[playerid][pBPJSTime] <= gettime())
		{
			Dialog_Show(playerid, ShowOnly, DIALOG_STYLE_MSGBOX, ""Imajinasi"Imajinasi Roleplay "WHITE"- Kartu Imajinasi Sehat", "Masa aktif Kartu Imajinasi Sehat/BPJS Anda Sudah Habis\
			\nAnda diharuskan untuk memperpanjang ke Mitra EMS Imajinasi Jika berkenan", "Tutup", "");
			AccountData[playerid][pBPJS] = 0;
			AccountData[playerid][pBPJSTime] = 0;
			format(AccountData[playerid][pBPJSLevel], 32, "None");
		}
	}
	if(AccountData[playerid][pSideJobTime] > 0)
	{
		AccountData[playerid][pSideJobTime]--;
	}
	if(AccountData[playerid][pForkliftTime] > 0)
	{
		AccountData[playerid][pForkliftTime]--;
		if(AccountData[playerid][pForkliftTime] == 0)
		{
			AccountData[playerid][pForkliftTime] = 0;
			SendClientMessageEx(playerid, -1, ""PINK"<!>"WHITE" Anda sudah bisa melakukan pekerjaan Forklift kembali!");
		}
	}
	if(AccountData[playerid][pSweeperTime] > 0)
	{
		AccountData[playerid][pSweeperTime]--;
		if(AccountData[playerid][pSweeperTime] == 0)
		{
			AccountData[playerid][pSweeperTime] = 0;
			SendClientMessageEx(playerid, -1, ""PINK"<!>"WHITE" Anda sudah bisa melakukan pekerjaan Sweeper kembali!");
		}
	}
	if(AccountData[playerid][pDeliveryTime] > 0)
	{
		AccountData[playerid][pDeliveryTime]--;
		if(AccountData[playerid][pDeliveryTime] == 0)
		{
			AccountData[playerid][pDeliveryTime] = 0;
			SendClientMessageEx(playerid, -1, ""PINK"<!>"WHITE" Anda sudah bisa melakukan pekerjaan Delivery kembali!");
		}
	}
	if(AccountData[playerid][pTrashmasterDelay] > 0)
	{
		AccountData[playerid][pTrashmasterDelay]--;
		if(AccountData[playerid][pTrashmasterDelay] == 0)
		{
			AccountData[playerid][pTrashmasterDelay] = 0;
			SendClientMessageEx(playerid, -1, ""PINK"<!>"WHITE" Anda sudah bisa melakukan pekerjaan Trashmaster kembali!");
		}
	}
	if(AccountData[playerid][pBusTime] > 0)
	{
		AccountData[playerid][pBusTime]--;
	}
	if(AccountData[playerid][pMowerTime] > 0)
	{
		AccountData[playerid][pMowerTime]--;
		if(AccountData[playerid][pMowerTime] == 0)
		{
			AccountData[playerid][pMowerTime] = 0;
			SendClientMessageEx(playerid, -1, ""LIGHTGREEN"[i]"WHITE" Anda sudah bisa melakukan pekerjaan mowing kembali!");
		}
	}
	if(AccountData[playerid][pWarn] >= 20)
	{
		new query[525], PlayerIP[16], playerName[24];
		GetPlayerIp(playerid, PlayerIP, sizeof(PlayerIP));
		GetPlayerName(playerid, playerName, MAX_PLAYER_NAME);
		AccountData[playerid][pWarn] = 0;
		SendClientMessageToAllEx(X11_ARWIN, "[AdmCmd] "YELLOW"%s(%d)"ARWIN1" telah dibanned permanent otomatis dari server. "DARKORANGE"Reason: 20 Total Warning", playerName, playerid);

		mysql_format(mdb_query, query, sizeof(query), "INSERT INTO player_bans(name, ip, admin, reason, ban_date, ban_expire) VALUES ('%s', '%s', 'Server Ban', '20 Total Warning', %i, '0')", playerName, PlayerIP, gettime());
		mysql_tquery(mdb_query, query);
		KickEx(playerid);
	}
	return 1;
}

ptask playerLevel_Update[999](playerid)
{
	if(!AccountData[playerid][pSpawned])
		return 0;

	new scoremath;
	if(AccountData[playerid][pLevel] <= 10)
	{
		scoremath = ((AccountData[playerid][pLevel] * 550) + 1);
	}
	else if(AccountData[playerid][pLevel] <= 30)
	{
		scoremath = ((AccountData[playerid][pLevel] * 700) + 1);
	}
	else if(AccountData[playerid][pLevel] <= 50)
	{
		scoremath = ((AccountData[playerid][pLevel] * 1200) + 1);
	}
	else
	{
		scoremath = ((AccountData[playerid][pLevel] * 1550) + 1);
	}

	if(AccountData[playerid][pLevelUp] >= scoremath)
	{
		if(AccountData[playerid][pLevel] > 0 && AccountData[playerid][pLevel] < 100) // Change the condition here
		{
			AccountData[playerid][pLevel]++;
			SetPlayerScore(playerid, AccountData[playerid][pLevel]);
		}
	} 

	if(AccountData[playerid][pLevel] >= 100)
	{
		AccountData[playerid][pLevel] = 100;
		SetPlayerScore(playerid, AccountData[playerid][pLevel]);
	}
	return 1;
}

ptask PlayerExpUp[1800000](playerid)
{
	if(!AccountData[playerid][pSpawned])	
		return 0;
	
	AccountData[playerid][pLevelUp] += 10;
	return 1;
}

/*ptask playerTimer[1000](playerid)
{
	if(SQL_IsCharacterLogged(playerid))
	{
		AccountData[playerid][pSeconds] ++, AccountData[playerid][pCurrSeconds] ++;
		if(AccountData[playerid][pSeconds] == 60)
		{
			AccountData[playerid][pMinutes] ++, AccountData[playerid][pCurrMinutes] ++;
			AccountData[playerid][pSeconds] = 0, AccountData[playerid][pCurrSeconds] = 0;

			switch(AccountData[playerid][pMinutes])
			{
				case 60:
				{
					AccountData[playerid][pHours] ++;
					AccountData[playerid][pLevelUp] += 5;
					AccountData[playerid][pMinutes] = 0;
					UpdatePlayerData(playerid);

					// if(++ AccountData[playerid][pLevelUp] >= scoremath)
					// {
					// 	if(AccountData[playerid][pLevel] <= 100)
					// 	{
					// 		AccountData[playerid][pLevel] ++;
					// 		AccountData[playerid][pHours] ++;
					// 		SetPlayerScore(playerid, AccountData[playerid][pLevel]);
					// 	}
					// }
				}
			}
			if(AccountData[playerid][pCurrMinutes] == 60)
			{
				AccountData[playerid][pCurrMinutes] = 0;
				AccountData[playerid][pCurrHours] ++;
			}
		}
	}
	return 1;
}*/