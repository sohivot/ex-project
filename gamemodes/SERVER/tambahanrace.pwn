// OnPlayerEnterRaceCheckpoint
if(AccountData[playerid][IkutBalap] != -1)
{
    foreach(new i : Race) if(RaceData[i][raceID] == AccountData[playerid][IkutBalap])
    {
        AccountData[playerid][pBalapan]++;
        if(RaceData[i][RaceType] == 1)
        {
            PlayerEnterRaceCheckpoint(playerid, i, AccountData[playerid][pBalapan], 9);
        }
        else if(RaceData[i][RaceType] == 2)
        {
            PlayerEnterRaceCheckpoint(playerid, i, AccountData[playerid][pBalapan], 14);
        }
        else
        {
            PlayerEnterRaceCheckpoint(playerid, i, AccountData[playerid][pBalapan], 19);
        }
    }
}

// OnPlayerConnect
AccountData[playerid][IkutBalap] = -1;

// ENUM PData
pBalapan,
IkutBalap,
Float:LokasiAwal[3],
IndexRace,
pLagiBuatRace,
pSelesaiCP,