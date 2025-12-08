#define MAX_WORKSHOP 500
#define MAX_WORKSHOP_EMPLOYEE 3
#define MAX_WORKSHOP_INT 7000

enum E_WORKSHOP
{
    wID,
    wName[24],
    wOwner[MAX_PLAYER_NAME + 1],
    wOwnerID,
    wComp,
    wMat,
    wMoney,
    STREAMER_TAG_3D_TEXT_LABEL:wText,
    wPickup,
    Float:wX,
    Float:wY,
    Float:wZ,
    wStatus,
    wIcon,
    wPrice
};
new wsData[MAX_WORKSHOP][E_WORKSHOP],
    wsEmploy[MAX_WORKSHOP][3][MAX_PLAYER_NAME + 1],
    Iterator:Workshop<MAX_WORKSHOP>;

Workshop_Refresh(id)
{
    if(id != -1)
    {
        if(IsValidDynamic3DTextLabel(wsData[id][wText]))
            DestroyDynamic3DTextLabel(wsData[id][wText]);

        if(IsValidDynamicPickup(wsData[id][wPickup]))
            DestroyDynamicPickup(wsData[id][wPickup]);

		if(IsValidDynamicMapIcon(wsData[id][wIcon]))
			DestroyDynamicMapIcon(wsData[id][wIcon]);

        new str[316], stats[64];
        if(wsData[id][wStatus] == 1)
        {
            stats = "{7fff00}BUKA{ffffff}";
        }
        else
        {
            stats = "{ff0000}TUTUP{ffffff}";
        }

        format(str, sizeof str,"[Workshop ID:%d]\n{ffffff}Workshop Harga: {7fff00}%s{ffffff}\n{ffffff}DIJUAL TOP UP OPEN TIKET", id, FormatMoney(wsData[id][wPrice]));

        if(wsData[id][wOwnerID] != 0 || strcmp(wsData[id][wOwner], "-", true))
            format(str, sizeof str,"[Workshop ID:%d]\n{ffffff}Workshop Name: %s\n{ffffff}Workshop Owner: %s\n{ffffff}STATUS: %s", id, wsData[id][wName], wsData[id][wOwner], stats);

        wsData[id][wText] = CreateDynamic3DTextLabel(str, COLOR_YELLOW, wsData[id][wX], wsData[id][wY], wsData[id][wZ]+0.5, 8.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1, 8.0);
        wsData[id][wPickup] = CreateDynamicPickup(1239, 23, wsData[id][wX], wsData[id][wY], wsData[id][wZ]+0.2, 0, 0, _, 50.0);
		wsData[id][wIcon] = CreateDynamicMapIcon(wsData[id][wX], wsData[id][wY], wsData[id][wZ], 27, 1, -1, -1, -1, 100.0);

    }
}

Workshop_Save(id)
{
    new query[2248];
    format(query, sizeof query,"UPDATE workshop SET owner='%s', ownerid='%d', name='%s', component=%d, material=%d, money=%d, posx='%f', posy='%f', posz='%f', status=%d, price=%d, employe0='%s', employe1='%s', employe2='%s'",
        wsData[id][wOwner],
        wsData[id][wOwnerID],
        wsData[id][wName],
        wsData[id][wComp],
        wsData[id][wMat],
        wsData[id][wMoney],
        wsData[id][wX],
        wsData[id][wY],
        wsData[id][wZ],
        wsData[id][wStatus],
        wsData[id][wPrice],
        wsEmploy[id][0],
        wsEmploy[id][1],
        wsEmploy[id][2]);
    format(query, sizeof query,"%s WHERE id = %d", query, id);
    return mysql_tquery(mdb_query, query);
}

Workshop_Reset(id)
{
    format(wsData[id][wOwner], MAX_PLAYER_NAME, "-");
    format(wsEmploy[id][0], MAX_PLAYER_NAME, "-");
    format(wsEmploy[id][1], MAX_PLAYER_NAME, "-");
    format(wsEmploy[id][2], MAX_PLAYER_NAME, "-");
    wsData[id][wOwnerID] = 0;
    wsData[id][wComp] = 0;
    wsData[id][wMat] = 0;
    wsData[id][wMoney] = 0;
    for(new z = 0; z < MAX_WORKSHOP_EMPLOYEE; z++)
    {
        format(wsEmploy[id][z], MAX_PLAYER_NAME, "-");
    }
    Workshop_Refresh(id);
}

IsWorkshopEmploye(playerid, id)
{
    if(!strcmp(wsEmploy[id][0], AccountData[playerid][pName], true)) return 1;
    if(!strcmp(wsEmploy[id][1], AccountData[playerid][pName], true)) return 1;
    if(!strcmp(wsEmploy[id][2], AccountData[playerid][pName], true)) return 1;
    return 0;
}

IsWorkshopOwner(playerid, id)
{
    return (wsData[id][wOwnerID] == AccountData[playerid][pID]) || (!strcmp(wsData[id][wOwner], AccountData[playerid][pName], true));
}

function LoadWorkshop()
{
    new wid = -1;
	new rows = cache_num_rows(), owner[128], name[128];
    new str[64];
 	if(rows)
  	{
		for(new i; i < rows; i++)
		{
			cache_get_value_name_int(i, "id", wid);
			cache_get_value_name(i, "owner", owner);
			format(wsData[wid][wOwner], 128, owner);            
			cache_get_value_name_int(i, "ownerid", wsData[wid][wOwnerID]);
			cache_get_value_name(i, "name", name);
			format(wsData[wid][wName], 128, name);
			cache_get_value_name_int(i, "price", wsData[wid][wPrice]);
			cache_get_value_name_float(i, "posx", wsData[wid][wX]);
			cache_get_value_name_float(i, "posy", wsData[wid][wY]);
			cache_get_value_name_float(i, "posz", wsData[wid][wZ]);
			cache_get_value_name_int(i, "component", wsData[wid][wComp]);
			cache_get_value_name_int(i, "material", wsData[wid][wMat]);
            cache_get_value_name_int(i, "money", wsData[wid][wMoney]);
            for(new z = 0; z < MAX_WORKSHOP_EMPLOYEE; z++)
            {
                format(str, sizeof str,"employe%d", z);
                cache_get_value_name(i, str, wsEmploy[wid][z]);
            }
			Workshop_Refresh(wid);
			Iter_Add(Workshop, wid);
		}
		printf("[Workshops] %d Loaded.", rows);
	}
}

GetOwnedWorkshop(playerid)
{
	new tmpcount;
	foreach(new wid : Workshop)
	{
	    if(!strcmp(wsData[wid][wOwner], AccountData[playerid][pName], true) || (wsData[wid][wOwnerID] == AccountData[playerid][pID]))
	    {
     		tmpcount++;
		}
	}
	return tmpcount;
}

ReturnPlayerWorkshopID(playerid, hslot)
{
	new tmpcount;
	foreach(new wid : Workshop)
	{
	    if(!strcmp(AccountData[playerid][pName], wsData[wid][wOwner], true) || (wsData[wid][wOwnerID] == AccountData[playerid][pID]))
	    {
     		tmpcount++;
       		if(tmpcount == hslot)
       		{
        		return wid;
  			}
	    }
	}
	return -1;
}

///coming soon//
GetAnyWorkshop()
{
	new tmpcount;
	foreach(new id : Workshop)
	{
     	tmpcount++;
	}
	return tmpcount;
}


ReturnWorkshopID(slot)
{
	new tmpcount;
	if(slot < 1 && slot > MAX_WORKSHOP) return -1;
	foreach(new id : Workshop)
	{
        tmpcount++;
        if(tmpcount == slot)
        {
            return id;
        }
	}
	return -1;
}
///coming soon//
/*
Player_WorkshopCount(playerid)
{
	#if LIMIT_PER_PLAYER != 0
    new count;
	foreach(new i : Workshop)
	{
		if(IsWorkshopOwner(playerid, i)) count++;
	}

	return count;
	#else
	return 0;
	#endif
} */

CMD:wsmenu(playerid, params[])
{
    foreach(new id : Workshop)
	{
        if(IsPlayerInRangeOfPoint(playerid, 4.0, wsData[id][wX], wsData[id][wY], wsData[id][wZ]))
        {
            if(!IsWorkshopOwner(playerid, id) && !IsWorkshopEmploye(playerid, id))
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan Pemilik atau Karyawan Workshop ini");
            
            ShowWorkshopMenu(playerid, id);
        }
    }
    return 1;
}

ShowWorkshopMenu(playerid, id)
{
    AccountData[playerid][pMenuType] = 0;
    AccountData[playerid][pInWs] = id;

    new str[256], vstr[64], StatusLocked[30];
    if(wsData[id][wStatus] == 1)
    {
        StatusLocked = "{FFFF00}BUKA{FFFFFF}";
    }
    else
    {
        StatusLocked = "{FF0000}TUTUP{FFFFFF}";
    }
    format(vstr, sizeof vstr,"Workshop (%s) Menu", wsData[id][wName]);
    format(str, sizeof str,"Set Workshop Name\nStatus: %s\nEmploye Menu)",
        StatusLocked,
        wsData[id][wComp],
        MAX_WORKSHOP_INT,
        wsData[id][wMat],
        MAX_WORKSHOP_INT,
        FormatMoney(wsData[id][wMoney]));
    ShowPlayerDialog(playerid, WS_MENU, DIALOG_STYLE_LIST, vstr, str, "Select", "Cancel");
    return 1;
}
CMD:createws(playerid, params[])
{
    if(AccountData[playerid][pAdmin] < 7) return PermissionError(playerid);
	
	new query[512];
	new wid = Iter_Free(Workshop);
	if(wid == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak dapat membuat lebih banyak Workshop!");
	new price;
	if(sscanf(params, "d", price)) return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/createws [price]");
	new totalcash[25];
	format(totalcash, sizeof totalcash,"%d00",price);
	price = strval(totalcash);

	format(wsData[wid][wOwner], MAX_PLAYER_NAME, "-");
    format(wsEmploy[wid][0], MAX_PLAYER_NAME, "-");
    format(wsEmploy[wid][1], MAX_PLAYER_NAME, "-");
    format(wsEmploy[wid][2], MAX_PLAYER_NAME, "-");
    format(wsData[wid][wName], 24, "-");
	GetPlayerPos(playerid, wsData[wid][wX], wsData[wid][wY], wsData[wid][wZ]);
	wsData[wid][wPrice] = price;
	wsData[wid][wStatus] = 0;
    wsData[wid][wOwnerID] = 0;

    Workshop_Refresh(wid);
	Iter_Add(Workshop, wid);

	mysql_format(mdb_query, query, sizeof(query), "INSERT INTO workshop SET id=%d, owner='%s', ownerid='%d', price=%d, posx='%f', posy='%f', posz='%f', name='%s'", wid, wsData[wid][wOwner], wsData[wid][wOwnerID], wsData[wid][wPrice], wsData[wid][wX], wsData[wid][wY], wsData[wid][wZ], wsData[wid][wName]);
	mysql_tquery(mdb_query, query, "OnWorkshopCreated", "i", wid);
    Info(playerid, "Created Workshop ID:%d", wid);
	return 1;
}

function OnWorkshopCreated(wid)
{
	Workshop_Save(wid);
    Workshop_Refresh(wid);
	return 1;
}
CMD:gotows(playerid, params[])
{
	new wid;
    if(AccountData[playerid][pAdmin] < 7) return PermissionError(playerid);
		
	if(sscanf(params, "d", wid))
		return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/gotows [id]");
	if(!Iter_Contains(Workshop, wid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Workshop yang Anda tentukan ID-nya tidak ada.");
	SetPlayerPos(playerid, wsData[wid][wX], wsData[wid][wY], wsData[wid][wZ]);
    SetPlayerInterior(playerid, 0);
    SetPlayerVirtualWorld(playerid, 0);
	AccountData[playerid][pInDoor] = -1;
	AccountData[playerid][pInHouse] = -1;
	AccountData[playerid][pInBiz] = -1;
	AccountData[playerid][pInFamily] = -1;	
	Info(playerid, "Anda telah teleport ke id Workshop %d", wid);
	return 1;
}
CMD:editws(playerid, params[])
{
    static
        wid,
        type[24],
        string[128];

    if(AccountData[playerid][pAdmin] < 7)
		return PermissionError(playerid);

    if(sscanf(params, "ds[24]S()[128]", wid, type, string))
    {
        return Syntax(playerid, "/editworkshop [id] [name]");
        SendClientMessage(playerid, COLOR_YELLOW, "[NAMES]:{FFFFFF} location, status, owner, price, money, comp, mat");
        return 1;
    }
    if((wid < 0 || wid >= MAX_WORKSHOP))
        return ShowTDN(playerid, NOTIFICATION_ERROR, "You have specified an invalid ID.");
	if(!Iter_Contains(Workshop, wid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "The Workshop you specified ID of doesn't exist.");

    if(!strcmp(type, "location", true))
    {
		GetPlayerPos(playerid, wsData[wid][wX], wsData[wid][wY], wsData[wid][wZ]);
        Workshop_Save(wid);
		Workshop_Refresh(wid);

        SendAdminMessage(COLOR_RED, "%s has adjusted the location of Workshop ID: %d.", AccountData[playerid][pAdminname], wid);
    }
    else if(!strcmp(type, "status", true))
    {
        new locked;

        if(sscanf(string, "d", locked))
            return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editws [id] [locked] [0/1]");

        if(locked < 0 || locked > 1)
            return ShowTDN(playerid, NOTIFICATION_ERROR, "You must specify at least 0 or 1.");

        wsData[wid][wStatus] = locked;
        Workshop_Save(wid);
		Workshop_Refresh(wid);

        if(locked) {
            SendAdminMessage(COLOR_RED, "%s has Opened Workshop ID: %d.", AccountData[playerid][pAdminname], wid);
        }
        else {
            SendAdminMessage(COLOR_RED, "%s has Closed Workshop ID: %d.", AccountData[playerid][pAdminname], wid);
        }
    }
    else if(!strcmp(type, "price", true))
    {
        new price;

        if(sscanf(string, "d", price))
            return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editws [id] [Price] [Amount]");

        wsData[wid][wPrice] = price;

        Workshop_Save(wid);
		Workshop_Refresh(wid);
        SendAdminMessage(COLOR_RED, "%s has adjusted the price of Workshop ID: %d to %d.", AccountData[playerid][pAdminname], wid, price);
    }
	else if(!strcmp(type, "money", true))
    {
        new money;

        if(sscanf(string, "d", money))
            return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editws [id] [money] [Ammount]");

        wsData[wid][wMoney] = money;
        Workshop_Save(wid);
		Workshop_Refresh(wid);
        SendAdminMessage(COLOR_RED, "%s has adjusted the money of Workshop ID: %d to %s.", AccountData[playerid][pAdminname], wid, FormatMoney(money));
    }
	else if(!strcmp(type, "comp", true))
    {
        new amount;

        if(sscanf(string, "d", amount))
            return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editws [id] [Comp] [Ammount]");

        wsData[wid][wComp] = amount;
        Workshop_Save(wid);
		Workshop_Refresh(wid);
        SendAdminMessage(COLOR_RED, "%s has adjusted the component of Workshop ID: %d to %d.", AccountData[playerid][pAdminname], wid, amount);
    }
    else if(!strcmp(type, "mat", true))
    {
        new amount;

        if(sscanf(string, "d", amount))
            return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editws [id] [mat] [Ammount]");

        wsData[wid][wMat] = amount;
        Workshop_Save(wid);
		Workshop_Refresh(wid);
        SendAdminMessage(COLOR_RED, "%s has adjusted the material of Workshop ID: %d to %d.", AccountData[playerid][pAdminname], wid, amount);
    }
    else if(!strcmp(type, "owner", true))
    {
		new otherid;
        if(sscanf(string, "d", otherid))
            return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/editws [id] [owner] [playerid] (use '-1' to no owner/ reset)");
		if(otherid == -1)
			return format(wsData[wid][wOwner], MAX_PLAYER_NAME, "-");

        format(wsData[wid][wOwner], MAX_PLAYER_NAME, AccountData[otherid][pName]);
        wsData[wid][wOwnerID] = AccountData[otherid][pID];
  
        Workshop_Save(wid);
		Workshop_Refresh(wid);
        SendAdminMessage(COLOR_RED, "%s has adjusted the owner of Workshop ID: %d to %s", AccountData[playerid][pAdminname], wid, AccountData[otherid][pName]);
    }
    else if(!strcmp(type, "reset", true))
    {
        Workshop_Reset(wid);
		Workshop_Save(wid);
		Workshop_Refresh(wid);
        SendAdminMessage(COLOR_RED, "%s has reset Workshop ID: %d.", AccountData[playerid][pAdminname], wid);
    }
	else if(!strcmp(type, "delete", true))
    {
		Workshop_Reset(wid);
		
		DestroyDynamic3DTextLabel(wsData[wid][wText]);
        DestroyDynamicPickup(wsData[wid][wPickup]);
		if(IsValidDynamicMapIcon(wsData[wid][wIcon]))
			DestroyDynamicMapIcon(wsData[wid][wIcon]);
		
		wsData[wid][wX] = 0;
		wsData[wid][wY] = 0;
		wsData[wid][wZ] = 0;
		wsData[wid][wPrice] = 0;
		wsData[wid][wText] = Text3D: INVALID_3DTEXT_ID;
		wsData[wid][wPickup] = -1;
		
		Iter_Remove(Workshop, wid);
		new query[128];
		mysql_format(mdb_query, query, sizeof(query), "DELETE FROM workshop WHERE id=%d", wid);
		mysql_tquery(mdb_query, query);
        SendAdminMessage(COLOR_RED, "%s has delete Workshop ID: %d.", AccountData[playerid][pAdminname], wid);
	}
    return 1;
}

//alias:myworkshop("myws")
CMD:wsduty(playerid, params[])
{
    foreach(new id : Workshop)
	{
        if(IsPlayerInRangeOfPoint(playerid, 50.0, wsData[id][wX], wsData[id][wY], wsData[id][wZ]))
        {
            if(!IsWorkshopOwner(playerid, id) && !IsWorkshopEmploye(playerid, id))
                return ShowTDN(playerid, NOTIFICATION_ERROR, "kamu bukan pekerja Workshop");
	
			if(AccountData[playerid][pMechDuty] == 0)
			{
				AccountData[playerid][pMechDuty] = 1;
				SetPlayerColor(playerid, COLOR_PURPLE);
				return ShowTDN(playerid, NOTIFICATION_INFO, "Anda Sedang Duty Pekerja Workshop");
				if(AccountData[playerid][pGender] == 1)
				{
					SetPlayerSkin(playerid, 268);
					//AccountData[playerid][pFacSkin] = 300;
				}
				else
				{
					SetPlayerSkin(playerid, 192);
					//AccountData[playerid][pFacSkin] = 306;
				}
				SendNearbyMessage(playerid, 10.0, COLOR_PURPLE, "* %s sedang duty Pekerja Workshop.", AccountData[playerid][pName]);
				foreach (new i : Player) if(AccountData[i][IsLoggedIn] == true && AccountData[i][pSpawned] == 1)
				{
					SendClientMessageEx(i, COLOR_PURPLE, "[WORKSHOP]{ffffff} %s Sedang duty pekerja workshop!", AccountData[playerid][pName]);
				}
			}
			else
			{
				AccountData[playerid][pMechDuty] = 0;
				SetPlayerColor(playerid, COLOR_WHITE);
				SetPlayerSkin(playerid, AccountData[playerid][pSkin]);
				return ShowTDN(playerid, NOTIFICATION_INFO, "Anda telah off dari Pekerja Workshop!");
			}
		}
	}
	return 1;
}

CMD:wsmodif(playerid, params[])
{
    foreach(new id : Workshop)
    {
        if(IsPlayerInRangeOfPoint(playerid, 50.0, wsData[id][wX], wsData[id][wY], wsData[id][wZ]))
        {
            if(!IsWorkshopOwner(playerid, id) && !IsWorkshopEmploye(playerid, id))
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan Pemilik atau Karyawan Workshop ini");

            new vehicleid = GetPlayerVehicleID(playerid);
            if(!AccountData[playerid][pMechDuty]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus On Duty Workshop!");
            if(!IsEngineVehicle(vehicleid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak di dalam kendaraan!");
            if(IsPlayerInjured(playerid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang pingsan!");

            static minsty[512];
            format(minsty, sizeof(minsty), ""WHITE"Ganti Warna Kendaraan\n");
            format(minsty, sizeof(minsty), "%s"GRAY"Velg Kendaraan\n", minsty);
            format(minsty, sizeof(minsty), "%s"WHITE"Spoiler Kendaraan\n", minsty);
            format(minsty, sizeof(minsty), "%s"GRAY"Hood Kendaraan\n", minsty);
            format(minsty, sizeof(minsty), "%s"WHITE"Vents Kendaraan\n", minsty);
            format(minsty, sizeof(minsty), "%s"GRAY"Lights Kendaraan\n", minsty);
            format(minsty, sizeof(minsty), "%s"WHITE"Exhaust Kendaraan\n", minsty);
            format(minsty, sizeof(minsty), "%s"GRAY"Front Bumper\n", minsty);
            format(minsty, sizeof(minsty), "%s"WHITE"Rear Bumper\n", minsty);
            format(minsty, sizeof(minsty), "%s"GRAY"Roofs Kendaraan\n", minsty);
            format(minsty, sizeof(minsty), "%s"WHITE"Side Kirts\n", minsty);
            format(minsty, sizeof(minsty), "%s"GRAY"Bullbars Kendaraan\n", minsty);
            format(minsty, sizeof(minsty), "%s"WHITE"Hydraulic Kendaraan\n", minsty);
            format(minsty, sizeof(minsty), "%s"GRAY"Nitro X3\n", minsty);
            format(minsty, sizeof(minsty), "%s"WHITE"Nitro X5\n", minsty);
            format(minsty, sizeof(minsty), "%s"GRAY"Nitro X10\n", minsty);
            format(minsty, sizeof(minsty), "%s"WHITE"Neon Kendaraan\n", minsty);
            format(minsty, sizeof(minsty), "%s"WHITE"Upgrade Kendaraan\n", minsty);
            format(minsty, sizeof(minsty), "\n%s"RED"> Remove Hydraulic\n", minsty);
            format(minsty, sizeof(minsty), "%s"RED"> Remove Nitro\n", minsty);
            ShowPlayerDialog(playerid, DIALOG_MODIF, DIALOG_STYLE_LIST, ""Imajinasi"Imajinasi Roleplay "WHITE"- Modifikasi", minsty, "Pilih", "Batal");
        }
    }
    return 1;
}
CMD:fws(playerid, params[])
{
        foreach(new id : Workshop)
        {
            if(IsPlayerInRangeOfPoint(playerid, 50.0, wsData[id][wX], wsData[id][wY], wsData[id][wZ]))
            {
            if(!IsWorkshopOwner(playerid, id) && !IsWorkshopEmploye(playerid, id))
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan Pemilik atau Karyawan Workshop ini");

            if(!AccountData[playerid][IsLoggedIn])
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus terkoneksi kedalam server!");

            if(!IsWorkshopOwner(playerid, id) && !IsWorkshopEmploye(playerid, id))
                return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda bukan Pemilik atau Karyawan Workshop ini");
                    
            if(isnull(params))
            return ShowTDN(playerid, NOTIFICATION_SYNTAX, "/fws [pesan]");
            {
                static lstr[1024];
                format(lstr, sizeof(lstr), "{f20f7e}WORKSHOP | %s: "WHITE"%s", ReturnName(playerid), params);
                SendClientMessageToAllEx(-1, lstr);
            }

            }    

        }
        return 1;   
}	
CMD:myws(playerid)
{
	if(!GetOwnedWorkshop(playerid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda Tidak Memiliki Workshop.");
	new wid, _tmpstring[128], count = GetOwnedWorkshop(playerid), CMDSString[512];
	CMDSString = "";
	new lock[128];
	strcat(CMDSString,"No\tName(Status)\tLocation\n",sizeof(CMDSString));
	Looping(itt, (count +1))
	{
	    wid = ReturnPlayerWorkshopID(playerid, itt);
		if(wsData[wid][wStatus] == 1)
		{
			lock = "{7FFF00}Buka{ffffff}";
		}
		else
		{
			lock = "{FF0000}Tutup{ffffff}";
		}
		if(itt == count)
		{
		    format(_tmpstring, sizeof(_tmpstring), "%d\t%s{ffffff}(%s)\t%s{ffffff}\n", itt, wsData[wid][wName], lock, GetLocation(wsData[wid][wX], wsData[wid][wY], wsData[wid][wZ]));
		}
		else format(_tmpstring, sizeof(_tmpstring), "%d\t%s{ffffff}(%s)\t%s{ffffff}\n", itt, wsData[wid][wName], lock, GetLocation(wsData[wid][wX], wsData[wid][wY], wsData[wid][wZ]));
		strcat(CMDSString, _tmpstring);
	}
	ShowPlayerDialog(playerid, DIALOG_MY_WS, DIALOG_STYLE_TABLIST_HEADERS, "My Workshop", CMDSString, "Pilih", "Batal");
	return 1;
}

DisplayMyWorkshop(playerid, bid)
{
	new lock[32];
	if(wsData[bid][wStatus] == 1)
	{
		lock = "{7FFF00}Buka{ffffff}";
	}
	else
	{
		lock = "{FF0000}Tutup{ffffff}";
	}
    new title[64];
    format(title, sizeof(title), "%s Workshop Detail's", ReturnName(playerid));

    new str[512];
    format(str, sizeof(str), "{a52a2a}Utama:\n");
    format(str, sizeof(str), "%s{FFFFFF}WSID (Database): "YELLOW_E"%d\n", str, bid);
    format(str, sizeof(str), "%s{FFFFFF}Nama Workshop: {1e90ff}%s\n", str, wsData[bid][wName]);
    format(str, sizeof(str), "%s{FFFFFF}Owner Workshop: {3cb371}%s\n\n", str, wsData[bid][wOwner]);

    format(str, sizeof(str), "%s{a52a2a}Lainnya:\n", str);
    format(str, sizeof(str), "%s{FFFFFF}Harga Workshop: "YELLOW_E"%s\n", str, FormatMoney(wsData[bid][wPrice]));
    format(str, sizeof(str), "%s{FFFFFF}Status Workshop: "YELLOW_E"%s\n", str, lock);
    format(str, sizeof(str), "%s{87cefa}Masukkan Player ID Player untuk memperlihatkan infomasi ini kepadanya "GREEN"(input)", str);
    ShowPlayerDialog(playerid, DIALOG_UNUSED, DIALOG_STYLE_INPUT, title, str, "Submit","Batal");
    return 1;
}