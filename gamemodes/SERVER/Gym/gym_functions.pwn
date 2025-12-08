#include <YSI\y_hooks>

new GymPercent[MAX_PLAYERS],
    GymType[MAX_PLAYERS],
    GymTimer[MAX_PLAYERS];


hook OnPlayerConnect(playerid)
{
    SetPVarInt(playerid, "DurringGym", false);
    GymPercent[playerid] = 0;
    GymType[playerid] = 0;
    return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    if(GetPVarInt(playerid, "DurringGym"))
    {
        DeletePVar(playerid, "DurringGym");
        GymPercent[playerid] = 0;
        GymType[playerid] = 0;
        ShowGymTextdraw(playerid, false);
    }
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if (newkeys & KEY_WALK)
    {
        if(IsPlayerInRangeOfPoint(playerid, 2.5, 416.346069, -1861.530761, 8.269503) && !GetPVarInt(playerid, "DurringGym") && GymType[playerid] == 0) // angkat Barbel
        {
            foreach(new i : Player) if (i != playerid && IsPlayerNearPlayer(playerid, i, 2.5) && GetPVarInt(i, "DurringGym") && GymType[i] == 1)
            {
                ShowTDN(playerid, NOTIFICATION_WARNING, "Alat/Tempat tersebut sedang digunakan, harap menunggu!");
                return 1;
            }

            SetPlayerPos(playerid, 416.482696, -1861.422241, 6.801191);
            SetPlayerFacingAngle(playerid, 359.586944);
            ApplyAnimationEx(playerid, "benchpress", "gym_bp_geton", 5.1, 0, 0, 0, 1, 0, 1);
            SetPlayerAttachedObject(playerid, JOB_SLOT, 2913, 6,  0.000000, 0.000000, 0.000000,  0.000000, 0.000000, 0.000000,  1.000000, 1.000000, 1.000000);
            SetPVarInt(playerid, "DurringGym", true);
            GymPercent[playerid] = 0;
            GymType[playerid] = 1; // Angkat Barbel
            SendRPMeAboveHead(playerid, "Melakukan GYM", X11_PLUM1);

            PlayerTextDrawSetString(playerid, ATRP_Gym[playerid][0], sprintf("~r~%d%%", GymPercent[playerid]));
            ShowGymTextdraw(playerid, true);
        }
        else if(IsPlayerInRangeOfPoint(playerid, 2.5, 421.314788, -1861.468750, 7.801189) && !GetPVarInt(playerid, "DurringGym") && GymType[playerid] == 0) // Sepeda
        {
            foreach(new i : Player) if (i != playerid && IsPlayerNearPlayer(playerid, i, 2.5) && GetPVarInt(i, "DurringGym") && GymType[i] == 2)
            {
                ShowTDN(playerid, NOTIFICATION_WARNING, "Alat/Tempat tersebut sedang digunakan, harap menunggu!");
                return 1;
            }

            SetPlayerPos(playerid, 421.822601, -1861.419555, 6.801189);
            SetPlayerFacingAngle(playerid, 260.885742);
            ApplyAnimationEx(playerid, "GYMNASIUM", "gym_bike_geton", 4.1, 0, 0, 0, 1, 0, 1);
            SetPVarInt(playerid, "DurringGym", true);
            GymPercent[playerid] = 0;
            GymType[playerid] = 2; // Sepedaan
            SendRPMeAboveHead(playerid, "Melakukan GYM", X11_PLUM1);
            
            PlayerTextDrawSetString(playerid, ATRP_Gym[playerid][0], sprintf("~r~%d%%", GymPercent[playerid]));
            ShowGymTextdraw(playerid, true);
        }
        else if(IsPlayerInRangeOfPoint(playerid, 2.5, 421.718994, -1869.127075, 7.854861) && !GetPVarInt(playerid, "DurringGym") && GymType[playerid] == 0) // Tinju 1
        {
            foreach(new i : Player) if (i != playerid && IsPlayerNearPlayer(playerid, i, 2.5) && GetPVarInt(i, "DurringGym") && GymType[i] == 3)
            {
                ShowTDN(playerid, NOTIFICATION_WARNING, "Alat/Tempat tersebut sedang digunakan, harap menunggu!");
                return 1;
            }

            SetPlayerPos(playerid, 421.718994, -1869.127075, 7.854861);
            SetPlayerFacingAngle(playerid, 179.340026);
            ApplyAnimationEx(playerid, "GYMNASIUM", "GYMshadowbox", 4.1, 0, 0, 0, 1, 0, 1);
            SetPVarInt(playerid, "DurringGym", true);
            GymPercent[playerid] = 0;
            GymType[playerid] = 3; // Tinju
            SendRPMeAboveHead(playerid, "Melakukan GYM", X11_PLUM1);
            
            PlayerTextDrawSetString(playerid, ATRP_Gym[playerid][0], sprintf("~r~%d%%", GymPercent[playerid]));
            ShowGymTextdraw(playerid, true);
        }
        else if(IsPlayerInRangeOfPoint(playerid, 2.5, 416.225250, -1868.294189, 7.854861) && !GetPVarInt(playerid, "DurringGym") && GymType[playerid] == 0) // Tinju 2
        {
            foreach(new i : Player) if (i != playerid && IsPlayerNearPlayer(playerid, i, 2.5) && GetPVarInt(i, "DurringGym") && GymType[i] == 3)
            {
                ShowTDN(playerid, NOTIFICATION_WARNING, "Alat/Tempat tersebut sedang digunakan, harap menunggu!");
                return 1;
            }

            SetPlayerPos(playerid, 416.225250, -1868.294189, 7.854861);
            SetPlayerFacingAngle(playerid, 187.016662);
            ApplyAnimationEx(playerid, "GYMNASIUM", "GYMshadowbox", 4.1, 0, 0, 0, 1, 0, 1);
            SetPVarInt(playerid, "DurringGym", true);
            GymPercent[playerid] = 0;
            GymType[playerid] = 3; // Tinju
            SendRPMeAboveHead(playerid, "Melakukan GYM", X11_PLUM1);
            
            PlayerTextDrawSetString(playerid, ATRP_Gym[playerid][0], sprintf("~r~%d%%", GymPercent[playerid]));
            ShowGymTextdraw(playerid, true);
        }
        else if(IsPlayerInRangeOfPoint(playerid, 2.5, 418.388458, -1857.674926, 7.801190) && !GetPVarInt(playerid, "DurringGym") && GymType[playerid] == 0) // Barbel Kecil
        {
            foreach(new i : Player) if (i != playerid && IsPlayerNearPlayer(playerid, i, 2.5) && GetPVarInt(i, "DurringGym") && GymType[i] == 4)
            {
                ShowTDN(playerid, NOTIFICATION_WARNING, "Alat/Tempat tersebut sedang digunakan, harap menunggu!");
                return 1;
            }

            SetPlayerPos(playerid, 418.388458, -1857.674926, 7.801190);
            SetPlayerFacingAngle(playerid, 179.553253);
            ApplyAnimationEx(playerid, "Freeweights", "gym_free_B", 4.1, 0, 0, 0, 1, 0, 1);
            SetPVarInt(playerid, "DurringGym", true);
            SetPlayerAttachedObject(playerid, JOB_SLOT, 2915, 6,  0.098999, 0.000000, 0.000000,  -85.000122, -0.199999, -79.600006,  1.000000, 1.000000, 1.000000);
            GymPercent[playerid] = 0;
            GymType[playerid] = 4; // Barbel Kecil
            SendRPMeAboveHead(playerid, "Melakukan GYM", X11_PLUM1);
            
            PlayerTextDrawSetString(playerid, ATRP_Gym[playerid][0], sprintf("~r~%d%%", GymPercent[playerid]));
            ShowGymTextdraw(playerid, true);
        }
        else if(GetPVarInt(playerid, "DurringGym")) // Angkat Barbel
        {
            if(GymType[playerid] == 1)
            {
                if(!GymTimer[playerid])
                {
                    GymTimer[playerid] = SetTimerEx("AngkatBarbel", 850, false, "d", playerid);
                }
            }
            else if(GymType[playerid] == 2) // Sepeda
            {
                if(!GymTimer[playerid])
                {
                    GymTimer[playerid] = SetTimerEx("SepedaGym", 850, false, "d", playerid);
                }
            }
            else if(GymType[playerid] == 3) // Boxing
            {
                if(!GymTimer[playerid])
                {
                    GymTimer[playerid] = SetTimerEx("BoxingGym", 850, false, "d", playerid);
                }
            }
            else if(GymType[playerid] == 4) // Barbel Kecil
            {
                if(!GymTimer[playerid])
                {
                    GymTimer[playerid] = SetTimerEx("BarbelKecilGym", 850, false, "d", playerid);
                }
            }
        }
    }

    if(newkeys & KEY_CTRL_BACK && GetPVarInt(playerid, "DurringGym")) // Angkat Barbel ( Berhenti )
    {
        ClearAnimations(playerid, 1);
        KillTimer(GymTimer[playerid]);
        GymTimer[playerid] = 0;
        SetPVarInt(playerid, "DurringGym", false);
        GymPercent[playerid] = 0;
        GymType[playerid] = 0;
        RemovePlayerAttachedObject(playerid, JOB_SLOT);
        ShowGymTextdraw(playerid, false);
    }
    return 1;
}

forward AngkatBarbel(playerid);
public AngkatBarbel(playerid)
{
    KillTimer(GymTimer[playerid]);
    GymTimer[playerid] = 0;

    GymPercent[playerid] ++;
    PlayerTextDrawSetString(playerid, ATRP_Gym[playerid][0], sprintf("~r~%d%%", GymPercent[playerid]));
    PlayerTextDrawShow(playerid, ATRP_Gym[playerid][0]);
    ApplyAnimationEx(playerid, "benchpress", "gym_bp_up_A", 4.1, 0, 0, 0, 1, 0, 1);

    if(GymPercent[playerid] >= 100) // Jika sudah 100%
    {
        ClearAnimations(playerid, 1);
        KillTimer(GymTimer[playerid]);
        GymTimer[playerid] = 0;
        SetPVarInt(playerid, "DurringGym", false);
        GymPercent[playerid] = 0;
        GymType[playerid] = 0;
        RemovePlayerAttachedObject(playerid, JOB_SLOT);
        ShowGymTextdraw(playerid, false);

        AccountData[playerid][pStress] -= 50;
        Info(playerid, "Anda telah selesai melakukan Gym, Stress berkurang "RED"5%%");
    }
    return 1;
}

forward BarbelKecilGym(playerid);
public BarbelKecilGym(playerid)
{
    KillTimer(GymTimer[playerid]);
    GymTimer[playerid] = 0;

    GymPercent[playerid] ++;
    PlayerTextDrawSetString(playerid, ATRP_Gym[playerid][0], sprintf("~r~%d%%", GymPercent[playerid]));
    PlayerTextDrawShow(playerid, ATRP_Gym[playerid][0]);
    ApplyAnimationEx(playerid, "Freeweights", "gym_free_B", 4.1, 0, 0, 0, 1, 0, 1);

    if(GymPercent[playerid] >= 100) // Jika sudah 100%
    {
        ClearAnimations(playerid, 1);
        KillTimer(GymTimer[playerid]);
        GymTimer[playerid] = 0;
        SetPVarInt(playerid, "DurringGym", false);
        GymPercent[playerid] = 0;
        GymType[playerid] = 0;
        RemovePlayerAttachedObject(playerid, JOB_SLOT);
        ShowGymTextdraw(playerid, false);

        AccountData[playerid][pStress] -= 50;
        Info(playerid, "Anda telah selesai melakukan Gym, Stress berkurang "RED"5%%");
    }
    return 1;
}

forward SepedaGym(playerid);
public SepedaGym(playerid)
{
    KillTimer(GymTimer[playerid]);
    GymTimer[playerid] = 0;

    GymPercent[playerid] ++;
    PlayerTextDrawSetString(playerid, ATRP_Gym[playerid][0], sprintf("~r~%d%%", GymPercent[playerid]));
    PlayerTextDrawShow(playerid, ATRP_Gym[playerid][0]);
    ApplyAnimationEx(playerid, "GYMNASIUM", "gym_bike_slow", 4.1, 0, 0, 0, 1, 0, 1);

    if(GymPercent[playerid] >= 100) // Jika sudah 100%
    {
        ClearAnimations(playerid, 1);
        KillTimer(GymTimer[playerid]);
        GymTimer[playerid] = 0;
        SetPVarInt(playerid, "DurringGym", false);
        GymPercent[playerid] = 0;
        GymType[playerid] = 0;
        RemovePlayerAttachedObject(playerid, JOB_SLOT);
        ShowGymTextdraw(playerid, false);

        AccountData[playerid][pStress] -= 50;
        Info(playerid, "Anda telah selesai melakukan Gym, Stress berkurang "RED"5%%");
    }
    return 1;
}

forward BoxingGym(playerid);
public BoxingGym(playerid)
{
    KillTimer(GymTimer[playerid]);
    GymTimer[playerid] = 0;

    GymPercent[playerid] ++;
    PlayerTextDrawSetString(playerid, ATRP_Gym[playerid][0], sprintf("~r~%d%%", GymPercent[playerid]));
    PlayerTextDrawShow(playerid, ATRP_Gym[playerid][0]);
    ApplyAnimationEx(playerid, "GYMNASIUM", "GYMshadowbox", 4.1, 0, 0, 0, 1, 0, 1);

    if(GymPercent[playerid] >= 100) // Jika sudah 100%
    {
        ClearAnimations(playerid, 1);
        KillTimer(GymTimer[playerid]);
        GymTimer[playerid] = 0;
        SetPVarInt(playerid, "DurringGym", false);
        GymPercent[playerid] = 0;
        GymType[playerid] = 0;
        RemovePlayerAttachedObject(playerid, JOB_SLOT);
        ShowGymTextdraw(playerid, false);

        AccountData[playerid][pStress] -= 50;
        Info(playerid, "Anda telah selesai melakukan Gym, Stress berkurang "RED"5%%");
    }
    return 1;
}