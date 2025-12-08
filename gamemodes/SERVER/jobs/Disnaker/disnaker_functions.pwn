#include <YSI\y_hooks>

hook OnGameModeInit()
{
    CreateDynamic3DTextLabel(""GREEN"[ALT]"WHITE" Membuat KTP", -1, 1376.320556, 1573.715454, 17.000314, 15.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1);
    CreateDynamic3DTextLabel(""GREEN"[ALT]"WHITE" Akses Disnaker", -1, 1611.540283, -1280.542114, 17.457134, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1);
    return 1;
}

Dialog:KTP_MENU(playerid, response, listitem, inputtext[])
{
    if(response)
    {
        if(!IsPlayerInRangeOfPoint(playerid, 2.0, 1376.320556, 1573.715454, 17.000314)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada di area Membuat KTP!");
        {
            if(AccountData[playerid][Ktp]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah memiliki KTP!");
            if(AccountData[playerid][pMoney] < 1500) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda membutuhkan $1500 untuk membuat KTP!");
                
            new count = 0;
            foreach(new i : Player) if(IsPlayerConnected(i))
            {
                if(AccountData[i][pDutyPemerintah]) count++;
            }
            if(count >= 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuat KTP otomatis jika ada Pemerintah di kota!"); 
                
            AccountData[playerid][Ktp] = 1;
            AccountData[playerid][KtpTime] = gettime() + (7 * 86400);
            TakePlayerMoneyEx(playerid, 1500);
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membuat KTP!");
        }       
    } 
    return 1;
}    
Dialog:DISNAKER_MENU(playerid, response, listitem, inputtext[])   
{    
    if(response)
    {       
        if(!IsPlayerInRangeOfPoint(playerid, 2.0, 1611.540283, -1280.542114, 17.457134)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada di area Disnaker!");                          
        {  
            new string[666], countpenambang, countpenebang, countbus, countayam, countpenjahit, countminyak, countnelayan, countpemerah, countpetani, countkargo, countrecycler, countbeban;
            foreach(new i : Player) 
            {
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_MINER) {
                    countpenambang++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_LUMBERJACK) {
                    countpenebang++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_BUS) {
                    countbus++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_BUTCHER) {
                    countayam++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_TAILOR) {
                    countpenjahit++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_OILMAN) {
                    countminyak++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_FISHERMAN) {
                    countnelayan++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_MILKER) {
                    countpemerah++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_FARMER) {
                    countpetani++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_KARGO) {
                    countkargo++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_RECYCLER) {
                    countrecycler++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_NONE) {
                    countbeban++;
                }
            }
            format(string, sizeof(string), "Job\tPekerja\
            \nPenambang\t"YELLOW"%d Orang\
            \n"GRAY"Tukang Kayu\t"YELLOW"%d Orang\
            \nSupir Bus\t"YELLOW"%d Orang\
            \n"GRAY"Tukang Ayam\t"YELLOW"%d Orang\
            \nTukang Jahit\t"YELLOW"%d Orang\
            \n"GRAY"Tukang Minyak\t"YELLOW"%d Orang\
            \nNelayan\t"YELLOW"%d Orang\
            \n"GRAY"Pemerah Susu\t"YELLOW"%d Orang\
            \nPetani\t"YELLOW"%d Orang\
            \n"GRAY"Kargo\t"YELLOW"%d Orang\
            \n"GRAY"Recycler/Pendaur Ulang\t"YELLOW"%d Orang\
            \nInfluencer/Orang Biasa\t"YELLOW"%d Orang",
            countpenambang, 
            countpenebang, 
            countbus, 
            countayam, 
            countpenjahit, 
            countminyak, 
            countnelayan, 
            countpemerah, 
            countpetani, 
            countkargo, 
            countrecycler,
            countbeban);
            ShowPlayerDialog(playerid, DIALOG_DISNAKER, DIALOG_STYLE_TABLIST_HEADERS, ""Imajinasi"Imajinasi Roleplay "WHITE"- Disnaker", string, "Pilih", "Batal");
        }
    }    
    else Info(playerid, "Anda telah membatalkan pilihan");
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(newkeys & KEY_WALK && GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
    {
        
        if(IsPlayerInRangeOfPoint(playerid, 2.0, 1376.320556, 1573.715454, 17.000314))
        {
            Dialog_Show(playerid, KTP_MENU, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Pemerintah Menu",
            "Membuat KTP", "Pilih", "Batal");
        }
        if(IsPlayerInRangeOfPoint(playerid, 2.0, 1611.540283,-1280.542114,17.457134))
        {
            Dialog_Show(playerid, DISNAKER_MENU, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Disneker Menu",
            "Dinas Tenaga Kerja", "Pilih", "Batal");
        }        
        
        /*if(IsPlayerInRangeOfPoint(playerid, 2.0, 1376.7292, 1573.6344, 17.0003))
        {
            if(AccountData[playerid][Ktp]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sudah memiliki KTP!");
            if(AccountData[playerid][pMoney] < 1000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda membutuhkan $1000 untuk membuat KTP!");
            
            new count = 0;
            foreach(new i : Player) if(IsPlayerConnected(i))
            {
                if(AccountData[i][pDutyPemerintah]) count++;
            }
            if(count >= 1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Tidak dapat membuat KTP otomatis jika ada Pemerintah di kota!"); 
            
            AccountData[playerid][Ktp] = 1;
            TakePlayerMoneyEx(playerid, 1000);
            ShowTDN(playerid, NOTIFICATION_SUKSES, "Berhasil membuat KTP!");
        }

		if(IsPlayerInRangeOfPoint(playerid, 2.0, 1376.6630, 1576.5830, 17.0003))
		{	
			new string[666], countpenambang, countpenebang, countbus, countayam, countpenjahit, countminyak, countnelayan, countpemerah, countpetani, countkargo, countrecycler;
            foreach(new i : Player) {
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_MINER) {
                    countpenambang++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_LUMBERJACK) {
                    countpenebang++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_BUS) {
                    countbus++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_BUTCHER) {
                    countayam++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_TAILOR) {
                    countpenjahit++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_OILMAN) {
                    countminyak++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_FISHERMAN) {
                    countnelayan++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_MILKER) {
                    countpemerah++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_FARMER) {
                    countpetani++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_KARGO) {
                    countkargo++;
                }
                if(IsPlayerConnected(i) && GetPlayerJob(i) == JOB_RECYCLER) {
                    countrecycler++;
                }
            }
            format(string, sizeof(string), "Job\tPekerja\
            \nPenambang\t"YELLOW"%d Orang\
            \n"GRAY"Tukang Kayu\t"YELLOW"%d Orang\
            \nSupir Bus\t"YELLOW"%d Orang\
            \n"GRAY"Tukang Ayam\t"YELLOW"%d Orang\
            \nTukang Jahit\t"YELLOW"%d Orang\
            \n"GRAY"Tukang Minyak\t"YELLOW"%d Orang\
            \nNelayan\t"YELLOW"%d Orang\
            \n"GRAY"Pemerah Susu\t"YELLOW"%d Orang\
            \nPetani\t"YELLOW"%d Orang\
            \n"GRAY"Kargo\t"YELLOW"%d Orang\
            \nRecycler/Pendaur Ulang\t"YELLOW"%d Orang", 
            countpenambang, 
            countpenebang, 
            countbus, 
            countayam, 
            countpenjahit, 
            countminyak, 
            countnelayan, 
            countpemerah, 
            countpetani, 
            countkargo, 
            countrecycler);
            ShowPlayerDialog(playerid, DIALOG_DISNAKER, DIALOG_STYLE_TABLIST_HEADERS, ""Imajinasi"Imajinasi Roleplay "WHITE"- Disnaker", string, "Pilih", "Batal");
		}*/
    }
    return 1;
}
hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    switch(dialogid)
    {
        case DIALOG_DISNAKER:
        {
            if(!response) return 1;
            switch(listitem)
            {
                case 0:// 
                {
                    UnloadVarsPlayerJob(playerid);
                    AccountData[playerid][pJob] = JOB_MINER;
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil mengambil pekerjaan menjadi seorang Penambang!");
                    MinerJobStuffs(playerid);
                }
                case 1:// 
                {
                    UnloadVarsPlayerJob(playerid);
                    AccountData[playerid][pJob] = JOB_LUMBERJACK;
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil mengambil pekerjaan menjadi seorang Tukang Kayu!");
                    LoadVarsLumber(playerid);
                    
                }
                case 2:// 
                {
                    UnloadVarsPlayerJob(playerid);
                    AccountData[playerid][pJob] = JOB_BUS;
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil mengambil pekerjaan menjadi seorang Supir Bus!");
                    LoadVarsBus(playerid);
                }
                case 3:// 
                {
                    UnloadVarsPlayerJob(playerid);
                    AccountData[playerid][pJob] = JOB_BUTCHER;
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil mengambil pekerjaan menjadi seorang Tukang Ayam!");
                    LoadVarsButcher(playerid);
                }
                case 4://
                {
                    UnloadVarsPlayerJob(playerid);
                    AccountData[playerid][pJob] = JOB_TAILOR;
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil mengambil pekerjaan menjadi seorang Tukang Jahit!");
                    LoadVarsTailor(playerid);
                }
                case 5:// 
                {
                    UnloadVarsPlayerJob(playerid);
                    AccountData[playerid][pJob] = JOB_OILMAN;
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil mengambil pekerjaan menjadi seorang Tukang Minyak!");
                    LoadVarsOilman(playerid);
                }
                case 6:// 
                {
                    UnloadVarsPlayerJob(playerid);
                    AccountData[playerid][pJob] = JOB_FISHERMAN;
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil mengambil pekerjaan menjadi seorang Nelayan!");
                    LoadVarsFisherman(playerid);
                }
                case 7://
                {
                    UnloadVarsPlayerJob(playerid);
                    AccountData[playerid][pJob] = JOB_MILKER;
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil mengambil pekerjaan menjadi seorang Pemerah Susu!");
                    LoadVarsMilker(playerid);
                }
                case 8:// 
                {
                    UnloadVarsPlayerJob(playerid);
                    AccountData[playerid][pJob] = JOB_FARMER;
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil mengambil pekerjaan menjadi seorang Petani!");
                    LoadVarsFarmer(playerid);
                }
                case 9://
                {
                    UnloadVarsPlayerJob(playerid);
                    AccountData[playerid][pJob] = JOB_KARGO;
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil mengambil pekerjaan Kargo!");
                    LoadVarsKargo(playerid);
                }
                case 10://
                {
                    UnloadVarsPlayerJob(playerid);
                    AccountData[playerid][pJob] = JOB_RECYCLER;
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil mengambil pekerjaan menjadi seorang Recycler!");
                    LoadVarsDaur(playerid);
                }
                case 11:// 
                {
                    UnloadVarsPlayerJob(playerid);
                    AccountData[playerid][pJob] = JOB_NONE;
                    ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil menjadi seorang Pengangguran!");
                }
                case 12://
                {
                    ShowTDN(playerid, NOTIFICATION_WARNING, "Sedang dalam perbaikan!");
                    // UnloadVarsPlayerJob(playerid);
                    // AccountData[playerid][pJob] = JOB_TRASHMASTER;
                    // ShowTDN(playerid, NOTIFICATION_SUKSES, "Anda berhasil mengambil pekerjaan menjadi seorang Tukang Sampah!");
                    // LoadVarsTrashmaster(playerid); 
                }
            }
        }
    }
    return 1;
}
