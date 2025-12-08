CMD:addbj(playerid, params[])
{
    new minbet, maxbet, id = Iter_Free(BJTables), query[512];

    if (AccountData[playerid][pAdmin] < 5) return PermissionError(playerid);

	if (sscanf(params, "dd", minbet, maxbet))
	{
	    Syntax(playerid, "/addbj [Min Bet] [Max Bet]");
		return 1;
	}
	if (minbet < 100)
	    return ShowTDN(playerid, NOTIFICATION_ERROR, "Min bet $100!");

    if (maxbet < 100 || maxbet > 50000)
	    return ShowTDN(playerid, NOTIFICATION_ERROR, "Max bet $100 - $5.000.000!");
    
    if (id == -1)
	    return ShowTDN(playerid, NOTIFICATION_ERROR, "Jumlah dynamic blackjack sudah mencapai batas maksimal!");

    GetPlayerPos(playerid, BlackJackTable[id][Pos][0], BlackJackTable[id][Pos][1], BlackJackTable[id][Pos][2]);
    BlackJackTable[id][Pos][3] = BlackJackTable[id][Pos][4] = BlackJackTable[id][Pos][5] = 0.0;

    BlackJackTable[id][World] = GetPlayerVirtualWorld(playerid);
    BlackJackTable[id][Interior] = GetPlayerInterior(playerid);

    BlackJackTable[id][MinBet] = minbet;
    BlackJackTable[id][MaxBet] = maxbet;

    BlackJackTable[id][BJStarted] = false;
    BlackJackTable[id][BJCountdown] = 0;
    
    new Float:actorX = BlackJackTable[id][Pos][0] + 0.65*(floatcos(90 + BlackJackTable[id][Pos][5], degrees));
    new Float:actorY = BlackJackTable[id][Pos][1] + 0.65*(floatsin(90 - BlackJackTable[id][Pos][5], degrees));

    new randskin = __g_CasinoNPCSkin[random(sizeof(__g_CasinoNPCSkin))];
    BlackJackTable[id][BJActor] = CreateDynamicActor(randskin, actorX, actorY, BlackJackTable[id][Pos][2], BlackJackTable[id][Pos][5] - 180.0, true, 1000.0, BlackJackTable[id][World], BlackJackTable[id][Interior], -1, 100.00, -1, 0);
    BlackJackTable[id][BJTableObj] = CreateDynamicObject(2188, BlackJackTable[id][Pos][0], BlackJackTable[id][Pos][1], BlackJackTable[id][Pos][2], BlackJackTable[id][Pos][3], BlackJackTable[id][Pos][4], BlackJackTable[id][Pos][5], BlackJackTable[id][World], BlackJackTable[id][Interior], -1, 100.00, 100.00, -1);

    Iter_Add(BJTables, id);

    Iter_Init(CardsUsed);
    for(new i; i<sizeof(g_CasinoCards); i++)
    {
        Iter_Add(CardsUsed[id], i);
    }

	mysql_format(mdb_query, query, sizeof(query), "INSERT INTO `bj_tables` SET `id`=%d, `X`='%f', `Y`='%f', `Z`='%f', `RX`='%f', `RY`='%f', `RZ`='%f', `Interior`=%d, `World`=%d, `MinBet` = %d, `MaxBet` = %d", id, BlackJackTable[id][Pos][0], BlackJackTable[id][Pos][1], BlackJackTable[id][Pos][2], BlackJackTable[id][Pos][3], BlackJackTable[id][Pos][4], BlackJackTable[id][Pos][5], GetPlayerInterior(playerid), GetPlayerVirtualWorld(playerid), BlackJackTable[id][MinBet], BlackJackTable[id][MaxBet]);
	mysql_pquery(mdb_query, query, "OnBJTableCreated", "ii", playerid, id);
    return 1;
}


CameraRadiusSetPos(playerid, Float:x, Float:y, Float:z, Float:degree = 0.0, Float:height = 3.0, Float:radius = 8.0)
{
	new Float:deltaToX = x + radius * floatsin(-degree, degrees);
	new Float:deltaToY = y + radius * floatcos(-degree, degrees);
	new Float:deltaToZ = z + height;

	SetPlayerCameraPos(playerid, deltaToX, deltaToY, deltaToZ);
	SetPlayerCameraLookAt(playerid, x, y, z); 
	return 1;
}


CMD:blackjack(playerid, params[])
{
    new id = BJTable_Nearest(playerid);
    if(id == -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak dekat dengan meja blackjack manapun!");
    
    if(AccountData[playerid][pLevel] < 5) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus mencapai setidaknya level 5 karakter!");

    if(PlayerBlackJack[playerid][Seated]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda sedang bermain blackjack!");
    if(AccountData[playerid][pInjured]) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak dapat melakukannya saat ini!");
    
    if(BJTable_IsBusy(id))
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Meja blackjack ini sedang digunakan player lain!");

    for(new x; x < 7; x++)
    {
        PlayerTextDrawDestroy(playerid, BlackJackPTD[playerid][x]);
        BlackJackPTD[playerid][x] = PlayerText: -1;

        PlayerTextDrawDestroy(playerid, DealerBJTD[playerid][x]);
        DealerBJTD[playerid][x] = PlayerText: -1;

        PlayerTextDrawDestroy(playerid, DealerBJTD[playerid][x]);
        DealerBJTD[playerid][x] = PlayerText: -1;
    }

    PlayerTextDrawDestroy(playerid, BJTableCardTD[playerid][0]);
    BJTableCardTD[playerid][0] = PlayerText: -1;

    PlayerTextDrawDestroy(playerid, BJTableCardTD[playerid][1]);
    BJTableCardTD[playerid][1] = PlayerText: -1;
    
    PlayerBlackJack[playerid][abet][0] = 0;
    PlayerBlackJack[playerid][abet][1] = 0;
    PlayerBlackJack[playerid][CardValue][0] = 0;
    PlayerBlackJack[playerid][CardValue][1] = 0;
    PlayerBlackJack[playerid][pCardsId] = -1;
    PlayerBlackJack[playerid][DealerCardsId] = -1;
    PlayerBlackJack[playerid][DealerCardValue] = 0;
    PlayerBlackJack[playerid][DealerClosedCard] = -1;
    
    PlayerBlackJack[playerid][Forbiddenv22] = false;
    PlayerBlackJack[playerid][HasAce] = false;
    PlayerBlackJack[playerid][BlackJack] = false;
    PlayerBlackJack[playerid][DoubleTaken][0] = false;
    PlayerBlackJack[playerid][DoubleTaken][1] = false;
    PlayerBlackJack[playerid][InsuranceTaken] = false;
    PlayerBlackJack[playerid][Splited] = false;
    PlayerBlackJack[playerid][SplitCardGiven] = false;
    PlayerBlackJack[playerid][IsSelectSplitCard] = false;
    PlayerBlackJack[playerid][DealerHasAce] = false;
    PlayerBlackJack[playerid][DealerBlackJack] = false;
    PlayerBlackJack[playerid][DealerCardStillClosed] = false;
    PlayerBlackJack[playerid][pCountCards] = -1;
    PlayerBlackJack[playerid][Seated] = true;
    BlackJackTable[id][BJStarted] = false;
    BlackJackTable[id][BJCountdown] = 0;
    BlackJackTable[id][BJCurrPlayerID] = playerid;
    BJTable_CreatePlayerTD(playerid);
    BJTable_HideTextDraw(playerid);

    TextDrawShowForPlayer(playerid, BlackJackTD[8]);
    TextDrawShowForPlayer(playerid, BlackJackTD[9]);

    PlayerTextDrawSetString(playerid, BJTableCardTD[playerid][0], sprintf("Deck Cards~n~%d", Iter_Count(CardsUsed[id])));
    PlayerTextDrawShow(playerid, BJTableCardTD[playerid][0]);
    PlayerTextDrawSetString(playerid, BJTableCardTD[playerid][1], sprintf("Table Bet:~n~$%s - $%s", FormatMoney(BlackJackTable[id][MinBet]), FormatMoney(BlackJackTable[id][MaxBet])));
    PlayerTextDrawShow(playerid, BJTableCardTD[playerid][1]);

    new Float:actorX = BlackJackTable[id][Pos][0] - 0.55*(floatcos(90 + BlackJackTable[id][Pos][5], degrees));
    new Float:actorY = BlackJackTable[id][Pos][1] - 0.55*(floatsin(90 - BlackJackTable[id][Pos][5], degrees));
    CameraRadiusSetPos(playerid, actorX, actorY, BlackJackTable[id][Pos][2], BlackJackTable[id][Pos][5]+180.0, 2.8, 1.5);

    SendClientMessageEx(playerid, X11_LIGHTBLUE, "DEALER: "WHITE"Welcome to your seat. This table minimum bet is "YELLOW"$%s "WHITE"and maximum is "YELLOW"$%s", FormatMoney(BlackJackTable[id][MinBet]), FormatMoney(BlackJackTable[id][MaxBet]));
    
    PlayerBlackJack[playerid][pInBJTable] = id;

    TogglePlayerControllable(playerid, false);

    PlayerPlayNearbySound(playerid, 5810);
    Dialog_Show(playerid, BlackjackBet, DIALOG_STYLE_INPUT, ""Mayoritas"Mayoritas Roleplay "WHITE"- Your Bets", "Welcome to your table, please place your bets:", "Place", "Batal");
    return 1;
}

CMD:editbj(playerid, params[])
{
    new tblid;
    if (AccountData[playerid][pAdmin] < 5) return PermissionError(playerid);
    if (AccountData[playerid][EditingTableBJID] != -1) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda saat ini sedang berada di dalam mode editing!");

    if (sscanf(params, "d", tblid))
    {
        Syntax(playerid, "/editbj [id]");
        return 1;
    }

    if (!Iter_Contains(BJTables, tblid))
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Invalid Blackjack Table ID!");

    if (!IsPlayerInRangeOfPoint(playerid, 30.0, BlackJackTable[tblid][Pos][0], BlackJackTable[tblid][Pos][1], BlackJackTable[tblid][Pos][2]))
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak dekat dengan meja blackjack tersebut!");

    if (BJTable_BeingEdited(tblid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Blackjack Table sedang diedit oleh admin lain!");

    AccountData[playerid][EditingTableBJID] = tblid;
    EditDynamicObject(playerid, BlackJackTable[tblid][BJTableObj]);

    SendStaffMessage(COLOR_LRED, "AdmCmd: %s edited Blackjack Table position ID: %d.", AccountData[playerid][pAdminname], tblid);
    return 1;
}

CMD:removebj(playerid, params[])
{
    new tblid, strgbg[128];
    if (AccountData[playerid][pAdmin] < 5) return PermissionError(playerid);

    if (sscanf(params, "d", tblid))
        return Syntax(playerid, "/removebj [id]");

    if (!Iter_Contains(BJTables, tblid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Invalid Blackjack Table ID!");
    if (BJTable_BeingEdited(tblid)) return ShowTDN(playerid, NOTIFICATION_ERROR, "ID Blackjack Table sedang diedit oleh admin lain!");

    if (DestroyDynamicObject(BlackJackTable[tblid][BJTableObj]))
        BlackJackTable[tblid][BJTableObj] = STREAMER_TAG_OBJECT: INVALID_STREAMER_ID;

    if (DestroyDynamicActor(BlackJackTable[tblid][BJActor]))
        BlackJackTable[tblid][BJActor] = STREAMER_TAG_ACTOR: INVALID_STREAMER_ID;

    BlackJackTable[tblid][Pos][0] = BlackJackTable[tblid][Pos][1] = BlackJackTable[tblid][Pos][2] = BlackJackTable[tblid][Pos][3] = BlackJackTable[tblid][Pos][4] = BlackJackTable[tblid][Pos][5] = 0.0;
    BlackJackTable[tblid][World] = 0;
    BlackJackTable[tblid][Interior] = 0;
    BlackJackTable[tblid][MinBet] = 0;
    BlackJackTable[tblid][MaxBet] = 0;
    BlackJackTable[tblid][BJCountdown] = 0;
    BlackJackTable[tblid][BJCurrPlayerID] = INVALID_PLAYER_ID;

    Iter_Remove(BJTables, tblid);

    mysql_format(mdb_query, strgbg, sizeof(strgbg), "DELETE FROM `bj_tables` WHERE `id` = %d", tblid);
    mysql_pquery(mdb_query, strgbg);
    SendStaffMessage(COLOR_LRED, "AdmCmd: %s removed Blackjack Table with ID: %d.", AccountData[playerid][pAdminname], tblid);
    return 1;
}

CMD:buychip(playerid, params[])
{
    // Cek lokasi
   /* if(!IsPlayerInRangeOfPoint(playerid, 3.0, 2238.5657, 1595.6613, 1019.3632))
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada di counter casino!");
*/
    // Cek level
    if(AccountData[playerid][pLevel] < 5)
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus mencapai setidaknya level 5 karakter!");

    new money;
    if(sscanf(params, "d", money))
        return Syntax(playerid, "/buychip [amount]");

    // Validasi jumlah pembelian
    if(money < 100 || money > 30000)
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Beli di antara $100 - $30000!");

    if(AccountData[playerid][pMoney] < RoundNegativeToPositive(money))
        return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki cukup uang!");

    // Ambil uang pemain
    TakePlayerMoneyEx(playerid, money);

    // Hitung chip setelah pajak 3%
    new Float:pricing = money - (money * 0.03);
    new chipAmount = floatround(pricing);

    // Tambahkan chip ke inventory
    Inventory_Add(playerid, "Chip", 1915, chipAmount);

    // Notifikasi dan ItemBox
    ShowItemBox(playerid, sprintf("Removed $%sx", FormatMoney(money)), "Cash", 1212);
    ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Anda telah membeli ~g~$%s ~l~chip seharga ~r~$%s ~l~(pajak 3 persen).", FormatMoney(chipAmount), FormatMoney(money)));

    return 1;
}



/*
CMD:mychip(playerid, params[])
{
    ShowTDN(playerid, NOTIFICATION_INFO, sprintf("Anda saat ini memiliki chip ~g~$%s", FormatMoney(AccountData[playerid][pCasinoChip])));
    return 1;
}

CMD:buychip(playerid, params[])
{
    if(!IsPlayerInRangeOfPoint(playerid, 3.0, 2238.5657,1595.6613,1019.3632)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada di counter casino!");
    if(AccountData[playerid][pLevel] < 5) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus mencapai setidaknya level 5 karakter!");

    new money, Float:pricing;
    if(sscanf(params, "d", money)) return Syntax(playerid, "/buychip [ammount]");

    if(money < 100 || money > 30000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Beli di antara $100 - $30000!");

    if(AccountData[playerid][pMoney] < RoundNegativeToPositive(money)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak memiliki cukup uang!");

    TakePlayerMoneyEx(playerid, money);

    pricing = money - (money * 0.03);
    AccountData[playerid][pCasinoChip] += floatround(pricing);

    ShowItemBox(playerid, "Cash", sprintf("Removed $%sx", FormatMoney(money)), 1212, 4);
    
    ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Anda telah membeli ~g~$%s ~l~chip seharga ~r~$%s ~l~(pajak 3 persen).", FormatMoney(floatround(pricing)), FormatMoney(money)));
    return 1;
}

CMD:redeemchip(playerid, params[])
{
    if(!IsPlayerInRangeOfPoint(playerid, 3.0, 2231.1189,1595.9353,1019.3696)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda tidak berada di counter casino!");
    if(AccountData[playerid][pLevel] < 5) return ShowTDN(playerid, NOTIFICATION_ERROR, "Anda harus mencapai setidaknya level 5 karakter!");

    new money;
    if(sscanf(params, "d", money)) return Syntax(playerid, "/redeemchip [ammount]");
    
	if(money < 100 || money > 30000) return ShowTDN(playerid, NOTIFICATION_ERROR, "Redeem di antara $100 - $30000!");

    if(AccountData[playerid][pCasinoChip] < RoundNegativeToPositive(money)) return ShowTDN(playerid, NOTIFICATION_ERROR, "Chip anda tidak cukup!");

    AccountData[playerid][pCasinoChip] -= money;

    GivePlayerMoneyEx(playerid, money);

    ShowItemBox(playerid, "Cash", sprintf("Removed $%sx", FormatMoney(money)), 1212, 4);
    ShowTDN(playerid, NOTIFICATION_SUKSES, sprintf("Anda berhasil menukar ~g~$%s ~l~chip.", FormatMoney(money)));
    return 1;
}*/