#ifndef CLOCK_H
#define CLOCK_H

#include <stdbool.h>

#include "clockStream.h"
#include "../IO/outputStream/outputStream.h"

void printClock(OutputStream* outputStream, Clock* clock);

void printClockAlarm(OutputStream* outputStream, Clock* clock);

void setClock(Clock* clock, ClockData* clockParam);

void setClockAlarm(Clock* clock, ClockData* clockParam);


#endif
