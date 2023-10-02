#include "kpa_96.h"

EntryList N(Entrances) = {
    [kpa_96_ENTRY_0]    {  210.0,    0.0,  100.0,  270.0 },
};

MapSettings N(settings) = {
    .main = &N(EVS_Main),
    .entryList = &N(Entrances),
    .entryCount = ENTRY_COUNT(N(Entrances)),
    .tattle = { MSG_MapTattle_kpa_96 },
};
