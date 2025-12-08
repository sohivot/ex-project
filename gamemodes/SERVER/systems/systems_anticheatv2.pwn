#define TIME_TO_NEXT_CHECK              (30)
#define MAXIMUM_REPORTED_CHEAT          (5)
#define MAX_FLOOD_RATE	(3000)
#define FLOOD_RATE_INC	(1000)
#define FLOOD_RATE_KICK	(5000)

#define AntiFloodPlayerInit(%0) 			g_player_flood[%0] = g_flood_default_values
#define GetPlayerAntiFloodData(%0,%1) 		g_player_flood[%0][%1]
#define SetPlayerAntiFloodData(%0,%1,%2)	g_player_flood[%0][%1] = %2
#define AddPlayerAntiFloodData(%0,%1,%2,%3)	g_player_flood[%0][%1] %2= %3

#include <YSI\y_hooks>


enum E_ANTI_FLOOD_STRUCT
{
	AF_LAST_TICK,
	AF_RATE
}

new g_player_flood[MAX_PLAYERS][E_ANTI_FLOOD_STRUCT];
new const
	g_flood_default_values[E_ANTI_FLOOD_STRUCT] =
{
	0,
	0
};

new 
    airbreak_anticheat[MAX_PLAYERS],
    vehairbreak_anticheat[MAX_PLAYERS],
    teleport_anticheat[MAX_PLAYERS],
    vehteleport_anticheat[MAX_PLAYERS],
    vehhealthhack_anticheat[MAX_PLAYERS],
    healthhack_anticheat[MAX_PLAYERS],
    flyhack_anticheat[MAX_PLAYERS],
    vehflyhack_anticheat[MAX_PLAYERS],

    //
    tele_pickup_ac[MAX_PLAYERS],
    tele_pickup_ac_report_time[MAX_PLAYERS]
;

Anticheat_GetReportAmount(playerid, code)
{
    if (code == 6)
    {
        return tele_pickup_ac[playerid];
    }

    return 0;
}

bool:Anticheat_IsReportTimeExpired(playerid, code)
{
    new now = GetTickCount();

    if (code == 6)
    {
        return (tele_pickup_ac_report_time[playerid] <= now);
    }

    return true;
}

/*Anticheat_IncreaseReport(playerid, code, amount = 1)
{
    if (code == 6)
    {
        tele_pickup_ac[playerid] += amount;
    }

    return 1;
}*/

Anticheat_SetReport(playerid, code, value)
{
    if (code == 6)
    {
        tele_pickup_ac[playerid] = value;
    }

    return 1;
}

Anticheat_ReduceReport(playerid, code, amount = 1)
{
    if (code == 6)
    {
        new new_value = tele_pickup_ac[playerid] - amount;

        if (new_value < 0)
        {
            tele_pickup_ac[playerid] = 0;
        }
        else
        {
            tele_pickup_ac[playerid] = new_value;
        }
    }

    return 1;
}

Anticheat_SetReportTime(playerid, code, time)
{
    if (code == 6)
    {
        tele_pickup_ac_report_time[playerid] = time;
    }

    return 1;
}

Anticheat_IncreaseReportTime(playerid, code, time = TIME_TO_NEXT_CHECK)
{
    new now = GetTickCount();

    if (code == 6)
    {
        tele_pickup_ac_report_time[playerid] = now + (1000 * time);
    }

    return 1;
}

Anticheat_ResetReport(playerid, code)
{
    if (code == 6)
    {
        Anticheat_SetReport(playerid, code, 0);
        Anticheat_SetReportTime(playerid, code, 0);
    }
}

task Anticheat_ResetReportCount[1000]()
{
    foreach(new playerid : Player)
    {
        if ((Anticheat_GetReportAmount(playerid, 6) > 0) && Anticheat_IsReportTimeExpired(playerid, 6))
        {
            Anticheat_ReduceReport(playerid, 6);
            Anticheat_IncreaseReportTime(playerid, 6);
        }
    }

    return 1;
}

hook OnPlayerConnect(playerid)
{
    airbreak_anticheat{playerid} = 0;
    vehairbreak_anticheat{playerid} = 0;
    teleport_anticheat{playerid} = 0;
    vehteleport_anticheat{playerid} = 0;
    vehhealthhack_anticheat{playerid} = 0;
    healthhack_anticheat{playerid} = 0;
    flyhack_anticheat{playerid} = 0;
    vehflyhack_anticheat{playerid} = 0;
    Anticheat_ResetReport(playerid, 6);
}

forward RestoreHealth(playerid, Float:health);
forward RestoreArmour(playerid, Float:armour);
forward OnCheatDetected(playerid, ip_address[], type, code);

stock CheckPlayerFlood(playerid, bool:inc = true, max_rate = MAX_FLOOD_RATE, rate_inc = FLOOD_RATE_INC, kick_rate = FLOOD_RATE_KICK, const message[])
{
	new tick = GetTickCount();

	AddPlayerAntiFloodData(playerid, AF_RATE, +, inc ? rate_inc : 0);
	AddPlayerAntiFloodData(playerid, AF_RATE, -, (GetTickCount() - GetPlayerAntiFloodData(playerid, AF_LAST_TICK)));
	SetPlayerAntiFloodData(playerid, AF_LAST_TICK, tick);

	if(GetPlayerAntiFloodData(playerid, AF_RATE) < 0)
		SetPlayerAntiFloodData(playerid, AF_RATE, 0);

	if(GetPlayerAntiFloodData(playerid, AF_RATE) >= max_rate)
	{
		if(GetPlayerAntiFloodData(playerid, AF_RATE) >= kick_rate)
		{
			Kick(playerid);
		}
		return 1;
	}
	return 0;
}

public OnCheatDetected(playerid, ip_address[], type, code)
{
    if(!IsPlayerConnected(playerid))
        return 0;

    switch(code)
    {
        case 0: {
            SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan menggunakan foot airbreak hack.", ReturnName(playerid), playerid);
        }
        case 1: {
            SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan menggunakan vehicle airbreak hack.", ReturnName(playerid), playerid);
        }
        case 2: {
            if (!AccountData[playerid][pSpawned])
                return 0;
                
            new Float:x, Float:y, Float:z;
            new vw, int;
            AntiCheatGetPos(playerid, x, y, z);
            int = GetPlayerInterior(playerid); 
            vw = GetPlayerVirtualWorld(playerid);
            SetPlayerPos(playerid, x, y, z);
            SetPlayerVirtualWorld(playerid, vw);
            SetPlayerInterior(playerid, int);

            if(!AccountData[playerid][UsingDoor] && AccountData[playerid][pAdmin] < 1 && AccountData[playerid][pTheStars] < 1)
            {
                if(teleport_anticheat{playerid}++ > 2) 
                {
                    AccountData[playerid][pInt] = int;
                    AccountData[playerid][pWorld] = vw;
                    SendClientMessageEx(playerid, X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan teleport hacks"YELLOW" [D: %.2f m]", ReturnName(playerid), playerid, GetPlayerDistanceFromPoint(playerid, x, y, z));
                    SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan teleport hacks"YELLOW" [D: %.2f m]", ReturnName(playerid), playerid, GetPlayerDistanceFromPoint(playerid, x, y, z));
                    KickEx(playerid);
                }
                else 
                {
                    SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan menggunakan teleport hack"YELLOW" [D: %.2f m]", ReturnName(playerid), playerid, GetPlayerDistanceFromPoint(playerid, x, y, z));
                }
            }
        }
        case 3: {
            new Float:x, Float:y, Float:z;
            new vw, int;
            AntiCheatGetVehiclePos(GetPlayerVehicleID(playerid), x, y, z);
            int = GetPlayerInterior(playerid);
            vw = GetPlayerVirtualWorld(playerid);
            SetVehiclePos(GetPlayerVehicleID(playerid), x, y, z);
            SetVehicleVirtualWorld(GetPlayerVehicleID(playerid), vw);
            LinkVehicleToInterior(GetPlayerVehicleID(playerid), int);

            if(teleport_anticheat{playerid}++ > 2 && AccountData[playerid][pAdmin] < 1 && AccountData[playerid][pTheStars] < 1) 
            {
                AccountData[playerid][pInt] = int;
                AccountData[playerid][pWorld] = vw;
                SendClientMessageEx(playerid, X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan teleport hack "YELLOW"[D: %.2f m] [%s]", ReturnName(playerid), playerid, GetPlayerDistanceFromPoint(playerid, x, y, z), GetVehicleName(GetPlayerVehicleID(playerid)));
                SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan teleport hack "YELLOW"[D: %.2f m] [%s]", ReturnName(playerid), playerid, GetPlayerDistanceFromPoint(playerid, x, y, z), GetVehicleName(GetPlayerVehicleID(playerid)));
                KickEx(playerid);
            }
            else 
            {
                SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" diduga menggunakan teleport hack "YELLOW"[D: %.2f m] [%s]", ReturnName(playerid), playerid, GetPlayerDistanceFromPoint(playerid, x, y, z), GetVehicleName(GetPlayerVehicleID(playerid)));
            }
        }
        //case 4: SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan menggunakan Overlight / Sobeit. Spec Firts!", ReturnName(playerid), playerid);
        case 4:
        {
            new vehicleid = GetPlayerVehicleID(playerid),
                vehindex = RETURN_INVALID_VEHICLE_ID;
            
            if((vehindex = Vehicle_ReturnID(vehicleid)) != RETURN_INVALID_VEHICLE_ID)
            {
                if(PlayerVehicle[vehindex][pVehLocked]) return 0;
            }

            if(vehicleid == JobVehicle[AccountData[playerid][pJobVehicle]][Vehicle] || vehicleid == ShowroomVeh[playerid] || VehicleCore[vehicleid][vehAdmin])
                return 0;

            SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan diduga menggunakan Troll Car / Sobeit. [Spec First!].", ReturnName(playerid), playerid);
        }
        case 5: SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan menggunakan vehicle to player hack (sobeit)", ReturnName(playerid), playerid);
        case 7: {
            SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan menggunakan fly hack.", ReturnName(playerid), playerid);
        }    
        case 8: {
           SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan menggunakan vehicle fly hack.", ReturnName(playerid), playerid);
        }
        case 9: SendAdminMessage(X11_RED, "[AntiCheat]: "YELLOW"%s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan onfoot airbreak / teleport.", ReturnName(playerid), playerid), SendClientMessageEx(playerid, X11_RED, "[AntiCheat]: "YELLOW"%s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan onfoot airbreak / teleport.", ReturnName(playerid), playerid), KickEx(playerid);
        case 10: SendClientMessageEx(playerid, X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan vehicle speed hack.", ReturnName(playerid), playerid), SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan vehicle speed hack.", ReturnName(playerid), playerid), KickEx(playerid);
        case 11: 
        {
            new Float:health;
            new vehicleid = AntiCheatGetVehicleID(playerid);
            if(vehicleid != ShowroomVeh[playerid])
            {
                AntiCheatGetVehicleHealth(vehicleid, health);
                SetValidVehicleHealth(vehicleid, health);
                SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" kemungkinan menggunakan Vehicle Repair Hack "YELLOW"[%.1f]", ReturnName(playerid), playerid, health);
            }
        }
        case 12: 
        {
            new Float:health;
            AntiCheatGetHealth(playerid, health);
            SetTimerEx("RestoreHealth", 10, 0, "df", playerid, health);
        }
        //MarkhereAC
        case 14: return 0;
        case 19:
        {
            SendClientMessageEx(playerid, X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan Beton CS!", ReturnName(playerid), playerid);
            SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan Beton CS!", ReturnName(playerid), playerid);
            KickEx(playerid);
        }
        case 21: SendClientMessageEx(playerid, X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan Invisible Hacks!", ReturnName(playerid), playerid), SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan Invisible Hacks!", ReturnName(playerid), playerid), KickEx(playerid);
        case 26: return 0;
        /*case 26:
        {
            if(!IsPlayerInEvent(playerid))
            {
                SendClientMessageEx(playerid, X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan Rapid Fire!", ReturnName(playerid), playerid);
                SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan Rapid Fire!", ReturnName(playerid), playerid);
                KickEx(playerid);
            }
        }*/
        case 27:
        {
            if(gettime() > AccountData[playerid][pACTime])
            {
                SendClientMessageEx(playerid, X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga Fake Spawn!", ReturnName(playerid), playerid);
                SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga Fake Spawn!", ReturnName(playerid), playerid);
                KickEx(playerid);
            }
        }
        case 40: return 0;
        case 43..46: SendClientMessageEx(playerid, X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan crasher hack.", ReturnName(playerid), playerid), SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan crasher hack.", ReturnName(playerid), playerid), KickEx(playerid);
        case 47: 
        {
            if(gettime() > AccountData[playerid][pACTime] && !IsPlayerInEvent(playerid) && !DurringHunting[playerid])
            {
                SendClientMessageEx(playerid, X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan fake weapon hack", ReturnName(playerid), playerid);
                SendAdminMessage(X11_RED, "[AntiCheat]"YELLOW" %s(%d)"LIGHTGREY" telah ditendang dari server karena diduga menggunakan fake weapon hack", ReturnName(playerid), playerid);
                KickEx(playerid);
            }
        }
        case 52: return 0;

        default: 
        {
            new Float:x, Float:y, Float:z;
            new vw, int;
            //ngesave VW dan Interior
            //Masuk ke bank > set pos interior bank > anticheatgetpos(last position) > setplayerpos ke last position yang di get anti cheat, tapi tidak di set vw dan interior. 
            //bisa kena anti cheat karena jarak perpindahan dari luar ke dalam terlalu jauh
            AntiCheatGetPos(playerid, x, y, z);
            int = GetPlayerInterior(playerid);
            vw = GetPlayerVirtualWorld(playerid);
            SetPlayerVirtualWorld(playerid, vw);
            SetPlayerInterior(playerid, int);
            SetPlayerPos(playerid, x, y, z);


            AntiCheatKickWithDesync(playerid, code);
            SendAdminMessage(X11_RED, "[AntiCheat]:"YELLOW" %s(%d)"LIGHTGREY" (%s) type: %d code %d", ReturnName(playerid), playerid, ip_address, type, code);
        }
    }    
    return 1;
}

public RestoreHealth(playerid, Float:health)
{
    if(IsPlayerConnected(playerid))
        SetPlayerHealth(playerid, health);
}
