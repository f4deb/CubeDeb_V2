#ifndef CLOCK_H
#define CLOCK_H

#include <stdbool.h>

#include "clockStream.h"
#include "../IO/outputStream/outputStream.h"

char* printTimeTo7Seg(Clock* clock);

void printClock(OutputStream* outputStream, Clock* clock);

void printClockAlarm(OutputStream* outputStream, Clock* clock);

void setClock(Clock* clock, ClockData* clockParam);

void setClockAlarm(Clock* clock, ClockData* clockParam);


#endif
