// Lokasi Smuggler Job
#define SMUGGLERJOIN_X   -347.850
#define SMUGGLERJOIN_Y  -1045.662
#define SMUGGLERJOIN_Z    59.812
// Lokasi anternya job
#define SMUGGLERCP_X   -362.913
#define SMUGGLERCP_Y  -1040.345
#define SMUGGLERCP_Z    59.414
// SMUGGLER PACKET
new packetObj;
new Text3D:packetLabel;
new Float:paY;
new Float:paX;
new Float:paZ;


CreateJoinSmugglerPoint()
{
    //JOBS
    new strings[128];
       // Buat pickup job
    CreateDynamicPickup(1239, 23, SMUGGLERJOIN_X, SMUGGLERJOIN_Y, SMUGGLERJOIN_Z, 0, 0, -1, 200.0);
    // Buat 3DText label
    new str[128];
    format(str, sizeof(str), "[SMUGGLER JOBS]\n{FFFFFF}Jadilah Smuggler disini\n{7FFFD4}/getjob /accept job");
    CreateDynamic3DTextLabel(str, COLOR_YELLOW, SMUGGLER_X, SMUGGLER_Y, SMUGGLER_Z + 0.5, 20.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0);

    CreateDynamicPickup(1239, 23, SMUGGLERCP_X, SMUGGLERCP_Y, SMUGGLERCP_Z,+0.2, -1, -1, -1, 50);
    format(strings, 128, "{ffffff}Weapon/Packet Delivery Point");
    CreateDynamic3DTextLabel(strings, COLOR_YELLOW, SMUGGLERCP_X, SMUGGLERCP_Y, SMUGGLERCP_Z, 5.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID);
}
CMD:joinjob(playerid, params[])
{
    if(!IsPlayerInRangeOfPoint(playerid, 3.5, SMUGGLERJOIN_X, SMUGGLERJOIN_Y, SMUGGLERJOIN_Z)) 
        return Error(playerid, "Kamu harus ditempatnya!");

    if(AccountData[playerid][pFaction] != FACTION_NONE) 
        return Error(playerid, "Kamu tidak bisa bergabung ke job karena sudah masuk faction!");

    if(AccountData[playerid][pJob] == JOB_PACKET)
        return Error(playerid, "Kamu sudah terdaftar di Job Packet.");

    if(AccountData[playerid][pJob] == JOB_NONE)
    {
        AccountData[playerid][pJob] = JOB_PACKET;
        Info(playerid, "Kamu berhasil bergabung ke Job Packet.");
        return 1;
    }

    return Error(playerid, "Kamu sudah punya pekerjaan lain");
}

alias:deliverypacket("depac", "anterp")
CMD:deliverypacket(playerid, params[])
{
	if(AccountData[playerid][pJob] != JOB_PACKET) return Error(playerid, "You're not Smuggler");

	if(!IsPlayerInRangeOfPoint(playerid, 3.5, SMUGGLERCP_X, SMUGGLERCP_Y, SMUGGLERCP_Z)) return Error(playerid, "Kamu harus dipoint delivery!");

	if(AccountData[playerid][pTakePacket] == false) return Error(playerid, "Please Carry the Packet before Delivery the Packet");
	
	Info(playerid, "Delivering Packet..");
	ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0 ,0,0,0,0,1);
	new rands = RandomEx(2500, 8000);
	new Price = rands+4;
	GivePlayerMoneyEx(playerid, rands);
	RemovePlayerAttachedObject(playerid, 3);
    DisablePlayerCheckpoint(playerid);
	Info(playerid, "Successfully Delivery Packet and you get %s", FormatMoney(rands));

    AccountData[playerid][pRedMoney] += rands;
    ShowItemBox(playerid, sprintf("Received %s", FormatMoney(rands)), "Uang Merah", 1212);

	AccountData[playerid][pTakePacket] = false;
	return 1;
}

new Float: RandomPacketPos[12][3] =
{
    {-788.65, 1565.19, 26.32},
    {-166.42, 1177.99, 22.15},
    {2428.71, 86.60, 27.05},
    {1270.54, 307.02, 18.73},
    {774.23, -484.35, 16.54},
    {206.32, -102.91, 4.10},
    {-1663.82, 1080.81, 7.13},
    {-2147.69, 1229.76, 33.13},
    {-673.34, 2706.38, 69.97},
    {2354.80, -680.41, 132.14},
    {-1635.92, -2246.49, 30.68},
    {858.25, -18.09, 62.40}
};

IsPacketTaken()
{
    new found = 0;
    foreach(new i : Player)
    {
        if(AccountData[i][pTakePacket] == true)
        {
            found++;
        }
    }
    if(found) return 1;
    else return 0;
}

function Readd_Packet(Float:x, Float:y, Float:z)
{

    if(IsValidDynamic3DTextLabel(packetLabel))
        DestroyDynamic3DTextLabel(packetLabel);

    if(IsValidDynamicObject(packetObj))
        DestroyDynamicObject(packetObj), packetObj = INVALID_OBJECT_ID;

    paX = x;
    paY = y;
    paZ = z;
    packetObj = CreateDynamicObject(11745, x, y, z, 0, 0, 0, -1, -1, -1);
    packetLabel = CreateDynamic3DTextLabel("{7fffd4}SMUGGLER PACKET\n{ffffff}Use '{ffff00}/pickuppacket{ffffff}' to pickup", -1, x, y, z+0.3, 10.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
    return 1;
}

task SmugglerRand[3000000]()
{
    if(!IsPacketTaken())
    {
        new rand = random(sizeof(RandomPacketPos));
        Readd_Packet(RandomPacketPos[rand][0], RandomPacketPos[rand][1], RandomPacketPos[rand][2]);
        foreach(new p : Player) if(AccountData[p][pJob] == JOB_PACKET)
        {
            SendClientMessage(p, -1, "{ffff00}[SMUGGLER INFO]{ffffff} Packet has been re added! {ffff00}/trackpacket {ffffff}to track");
        }
    }
}
alias:trackpacket("trackp", "tracket", "tpacket")
CMD:trackpacket(playerid)
{
    if(AccountData[playerid][pJob] != JOB_PACKET) return Error(playerid, "You're not Smuggler");
    if(AccountData[playerid][pTrackPacket] >= gettime()) return Error(playerid, "You've must wait %d seconds to track this", AccountData[playerid][pTrackPacket] - gettime());

    new Float:x, Float:y, Float:z, found;
    foreach(new i : Player)
    {
        if(AccountData[i][pTakePacket] == true)
        {
            GetPlayerPos(i, x, y, z);
            found++;
        }
    }
    AccountData[playerid][pCP] = 9;
    if(found)
    {
        SetPlayerCheckpoint(playerid, x, y, z, 3.0);
        Info(playerid, "Packet tracked! Location: {7fff00}%s {ffffff}(STATUS: {ff0000}MOVED{ffffff})", GetLocation(x, y, z));
    }
    else if(paX != 0.0 && paY != 0.0)
    {
        SetPlayerCheckpoint(playerid, paX, paY, paZ, 3.0);
        Info(playerid, "Packet tracked! Location: {7fff00}%s {ffffff}(STATUS: {00ff00}IDLE{ffffff})", GetLocation(paX, paY, paZ));
    }
    else if(paX == 0.0 && paY == 0.0) return Error(playerid, "There's no Packet on City");
    AccountData[playerid][pTrackPacket] = gettime() + 20;
    return 1;
}

CMD:atrackpacket(playerid)
{
    if(AccountData[playerid][pAdmin] < 6) return PermissionError(playerid);
    new Float:x, Float:y, Float:z, found;
    foreach(new i : Player)
    {
        if(AccountData[i][pTakePacket] == true)
        {
            GetPlayerPos(i, x, y, z);
            found++;
        }
    }
    AccountData[playerid][pCP] = 9;
    if(found)
    {
        SetPlayerCheckpoint(playerid, x, y, z, 3.0);
        Info(playerid, "Packet tracked! Location: {7fff00}%s {ffffff}(STATUS: {ff0000}MOVED{ffffff})", GetLocation(x, y, z));
    }
    else if(paX != 0.0 && paY != 0.0)
    {
        SetPlayerCheckpoint(playerid, paX, paY, paZ, 3.0);
        Info(playerid, "Packet tracked! Location: {7fff00}%s {ffffff}(STATUS: {00ff00}IDLE{ffffff})", GetLocation(paX, paY, paZ));
    }
    else if(paX == 0.0 && paY == 0.0) Error(playerid, "There's no Packet on City");
    return 1;
}
alias:pickuppacket("ambilpaket")
CMD:pickuppacket(playerid)
{
    if(AccountData[playerid][pJob] != JOB_PACKET) return Error(playerid, "You're not Smuggler");
    {
        if(!IsPlayerInRangeOfPoint(playerid, 2.0, paX, paY, paZ))
            return Error(playerid, "You're not near Smuggler Packet Position");
            
        if(IsValidDynamic3DTextLabel(packetLabel))
            DestroyDynamic3DTextLabel(packetLabel), packetLabel = Text3D: -1;

        if(IsValidDynamicObject(packetObj))
            DestroyDynamicObject(packetObj), packetObj = INVALID_OBJECT_ID;
        AccountData[playerid][pTakePacket] = true;
        SetPlayerAttachedObject(playerid, 3, 11745, 6, 0.129999, 0.051000, 0.000000, 103.700004, -64.600059, 0.000000, 0.501999, 1.0, 1.0);
        SendNearbyMessage(playerid, 30.0, COLOR_PURPLE, "* %s has picked up a Packet.", ReturnName(playerid));
        Warning(playerid, "You've picked up packet, {ffff00}/deliverypacket {ffffff}on Delivery Point");
        ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 4.1, 0, 0, 0, 0, 0, 1);
        Info(playerid,"Packet ~g~Picked Up");
        SetPlayerCheckpoint(playerid, SMUGGLERCP_X, SMUGGLERCP_Y, SMUGGLERCP_Z, 3.0);
        paX = 0.0;
        paY = 0.0;
        paZ = -10.0;
    }
    return 1;
}

CMD:respawnpacket(playerid)
{
    if(AccountData[playerid][pAdmin] < 5)
		return PermissionError(playerid);

    new rand = random(sizeof(RandomPacketPos));
    Readd_Packet(RandomPacketPos[rand][0], RandomPacketPos[rand][1], RandomPacketPos[rand][2]);
    foreach(new p : Player) if(AccountData[p][pJob] == JOB_PACKET)
    {   
        SendClientMessage(p, -1, "{ffff00}[SMUGGLER INFO]{ffffff} Packet has been re added! {ffff00}/trackpacket {ffffff}to track");
    }
    Info(playerid, "Packet Re ADDED!");
    return 1;
}
