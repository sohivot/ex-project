/* Weapon Factions System */

#include <YSI\y_hooks>

/* Local Functions */
hook OnPlayerDisconnect(playerid, reason)
{
    if(AccountData[playerid][pDutyPD] && AccountData[playerid][pDutyPemerintah] && AccountData[playerid][pDutyEms]
        && AccountData[playerid][pDutyBengkel] && AccountData[playerid][pDutyGojek])
    {
        SaveFactionWeapons(playerid);
    }
    return 1;
}

hook OnPlayerDeath(playerid)
{
    if(SQL_IsCharacterLogged(playerid))
    {
        if(AccountData[playerid][pDutyPD] && AccountData[playerid][pDutyPemerintah] && AccountData[playerid][pDutyEms]
            && AccountData[playerid][pDutyBengkel] && AccountData[playerid][pDutyGojek])
        {
            SaveFactionWeapons(playerid);
        }
    }
    return 1;
}

/* Callback */
SQL_FactionWeapons(playerid)
{
    if(AccountData[playerid][pDutyPD] && AccountData[playerid][pDutyPemerintah] && AccountData[playerid][pDutyEms]
        && AccountData[playerid][pDutyBengkel] && AccountData[playerid][pDutyGojek])
    {
        mysql_tquery(mdb_query, sprintf("SELECT * FROM `weapon_factions` WHERE `Owner_ID`=%d", AccountData[playerid][pID]), "OnLoadPlayerFactWeapons", "d", playerid);
    }
    return 1;
}

GiveFactionWeapon(playerid, weaponid, ammo)
{
    if(AccountData[playerid][pDutyPD] && AccountData[playerid][pDutyPemerintah] && AccountData[playerid][pDutyEms]
        && AccountData[playerid][pDutyBengkel] && AccountData[playerid][pDutyGojek])
    {
        if(!(0 <= weaponid <= 46)) 
        {
            return printf("[Debug] invalid Weapon ID (%d)]", weaponid);
        }

        GivePlayerWeapon(playerid, weaponid, ammo);
        mysql_tquery(mdb_query, sprintf("DELETE FROM `weapon_factions` WHERE `Slot`=%d", g_aWeaponSlots[weaponid]));

        new 
            query[165]
        ;
        mysql_format(mdb_query, query, sizeof(query), "INSERT INTO `weapon_factions` VALUES ('%d', '%d', '%d', '%d', '%d') ON DUPLICATE KEY UPDATE ammo = %d, created %d", GetPlayerSQLID(playerid), weaponid, ammo, gettime(), g_aWeaponSlots[weaponid], ammo, gettime());
        return mysql_tquery(mdb_query, query);
    }
    return 1;
}

SaveFactionWeapons(playerid)
{
    static 
        weaponid,
        ammo
    ;
    for(new i = 1; i < MAX_WEAPON_SLOT; i++) {
        GetPlayerWeaponData(playerid, i, weaponid, ammo);

        if(!weaponid) continue;

        new 
            query[165]
        ;
        mysql_format(mdb_query, query, sizeof(query), "INSERT INTO `weapon_factions` VALUES ('%d', '%d', '%d', '%d', '%d') ON DUPLICATE KEY UPDATE ammo = %d, created = %d", GetPlayerSQLID(playerid), weaponid, ammo, gettime(), g_aWeaponSlots[weaponid], ammo, gettime());
        mysql_tquery(mdb_query, query);
    }
    return 1;
}


GetAmmoStatus(playerid, weaponid) {
	new typeammo[52], slot = g_aWeaponSlots[weaponid];
	if(PlayerGuns[playerid][slot][weapon_typesurplus] == 1) {
		if(PlayerGuns[playerid][slot][pGunType]) {
			format(typeammo, sizeof(typeammo), "Ammo %d - Surplus", PlayerGuns[playerid][slot][pGunType]);
			//typeammo = "%d~n~SURPLUS", PlayerGuns[playerid][slot][pGunType];
		}
		else {
			typeammo = "~r~No Ammo";
		}
	}
	else if(PlayerGuns[playerid][slot][weapon_typesurplus] == 0) {
		if(PlayerGuns[playerid][slot][pGunType]) {
			format(typeammo, sizeof(typeammo), "Ammo %d - Normal", PlayerGuns[playerid][slot][pGunType]);
			//typeammo = "%d", PlayerGuns[playerid][slot][pGunType];
		}
		else {
			typeammo = "~r~No Ammo";
		}
	}
	return typeammo;
}

ResetFactionWeapon(playerid) {
    if(AccountData[playerid][pDutyPD] && AccountData[playerid][pDutyPemerintah] && AccountData[playerid][pDutyEms]
        && AccountData[playerid][pDutyBengkel] && AccountData[playerid][pDutyGojek])
    {
        ResetPlayerWeapons(playerid);
        return mysql_tquery(mdb_query, sprintf("DELETE FROM `weapon_factions` WHERE `Owner_ID`=%d", AccountData[playerid][pID]));
    }
    return 0;
}

/* Functions */
forward OnLoadPlayerFactWeapons(playerid);
public OnLoadPlayerFactWeapons(playerid)
{
    static 
        weaponid,
        ammo
    ;

    for(new i = 0; i < cache_num_rows(); i++)
    {
        weaponid = cache_get_value_name_int(i, "Weapon");
        ammo = cache_get_value_name_int(i, "Ammo");

        if(!(0 <= weaponid <= 46))
        {
            printf("[Warning] OnLoadPlayerFactWeapons - Unknow Weaponid '%d'. Skipping", weaponid);
            continue;
        }
        GivePlayerWeapon(playerid, weaponid, ammo);
    }
    SetPlayerArmedWeapon(playerid, 0);
    return 1;
}


hook OnPlayerScriptUpdate(playerid)
{
	if(pData[playerid][IsLoggedIn])
	{
		new
			weaponid,
			weaponname[24],
			str[64];

		if((weaponid = GetWeapon(playerid)) != 0 && !eventJoin[playerid]) {
			PlayerTextDrawShow(playerid, TogAmmo[playerid]);
			PlayerTextDrawSetString(playerid, TogAmmo[playerid], sprintf("%s", GetAmmoStatus(playerid, weaponid)));
			TextDrawShowForPlayer(playerid, AmmoNewTD[0]);
			GetWeaponName(weaponid, weaponname, sizeof(weaponname));
			format(str, sizeof(str), "%s", weaponname);
			PlayerTextDrawSetString(playerid, WeaponNameTD[playerid], str);
			PlayerTextDrawShow(playerid, WeaponNameTD[playerid]);
		}
		else {
			PlayerTextDrawSetString(playerid, TogAmmo[playerid], "_");
			PlayerTextDrawHide(playerid, TogAmmo[playerid]);
			TextDrawHideForPlayer(playerid, AmmoNewTD[0]);
			PlayerTextDrawHide(playerid, WeaponNameTD[playerid]);
		}
	}

	return 1;
}
