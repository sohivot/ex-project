function CheckpointDrop(playerid, racecp, amount, type)
{
    static index;
	if((index = Iter_Free(Race)) != cellmin)
	{
        if(racecp < amount) {
            ShowTDN(playerid, NOTIFICATION_INFO, sprintf("Anda berhasil menyimpan checkpoint "YELLOW"%d/%d, {FFFFFF}Silahkan lanjutkan hingga selesai!", racecp+1, amount+1));
            GetPlayerPos(playerid, RaceCP[index][racecp][racePositionX], RaceCP[index][racecp][racePositionY], RaceCP[index][racecp][racePositionZ]);
        }   
        else {
            RaceData[index][RaceType] = type;
            AccountData[playerid][pLagiBuatRace] = 0;
            
            ShowTDN(playerid, NOTIFICATION_INFO, "Pembuatan race dinyatakan selesai, checkpoint anda sudah tersimpan!");
            Info(playerid, "Balik ke lokasi awal, gunakan "YELLOW"'/race done' {FFFFFF}untuk konfirmasi penyelesaian!");
            ShowTDN(playerid, NOTIFICATION_INFO, "Lokasi awal anda telah ditandai di peta!");

            GetPlayerPos(playerid, RaceCP[index][racecp][racePositionX], RaceCP[index][racecp][racePositionY], RaceCP[index][racecp][racePositionZ]);
            SetPlayerRaceCheckpoint(playerid, 1, AccountData[playerid][LokasiAwal][0], AccountData[playerid][LokasiAwal][1], AccountData[playerid][LokasiAwal][2], 0.0, 0.0, 0.0, 3.5);
        }
    }
    return 1;
}

#include <YSI_Coding\y_hooks>
hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(PRESSED(KEY_CROUCH) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	{
        if((Race_Nearest(playerid)) != -1)
		{
			return callcmd::race(playerid, "join");
		}
    }
	if(PRESSED(KEY_CROUCH) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
	{
        if(AccountData[playerid][pLagiBuatRace] == 1)
        {
            CheckpointDrop(playerid, AccountData[playerid][pSelesaiCP], 9, 1);
            AccountData[playerid][pSelesaiCP]++;
        }
        else if(AccountData[playerid][pLagiBuatRace] == 2)
        {
            CheckpointDrop(playerid, AccountData[playerid][pSelesaiCP], 14, 2);
            AccountData[playerid][pSelesaiCP]++;
        }
        else if(AccountData[playerid][pLagiBuatRace] == 3)
        {
            CheckpointDrop(playerid, AccountData[playerid][pSelesaiCP], 19, 3);
            AccountData[playerid][pSelesaiCP]++;
        }
	}
	return 1;
}