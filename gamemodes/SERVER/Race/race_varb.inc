#define MAX_DYNAMIC_RACE	150
enum E_RACE_DATA
{
	raceID,
	racePlayerID,

    Float:raceAwal[3],

	Float:racePositionX,
    Float:racePositionY,
    Float:racePositionZ,

    Text3D:raceLabel,

    RaceType,
    
    raceReady,
    racePrize,
    raceStart,

    raceWinner,
    raceTimer
};

new Iterator:Race<MAX_DYNAMIC_RACE>,
	RaceData[MAX_DYNAMIC_RACE][E_RACE_DATA],
    RaceCP[MAX_DYNAMIC_RACE][20][E_RACE_DATA];

new PlayerInRace[MAX_DYNAMIC_RACE] = 0;