#include "clock.h"

#include <stdlib.h>
#include <stdbool.h>

#include "../clock/clockStream.h"
#include "../IO/outputStream/outputStream.h"
#include "../IO/printWriter/printWriter.h"

#include "../../drivers/PCF8563/PCF8563.h"

void printClock(OutputStream* outputStream, Clock* clock) {
    ClockData* clockData = &(clock->clockData);
    appendHex2(outputStream, clockData->hour);
    append(outputStream, ':');
    appendHex2(outputStream, clockData->minute);
    append(outputStream, ':');
    appendHex2(outputStream, clockData->second);

    appendSpace(outputStream);
    appendHex2(outputStream, clockData->day);

    append(outputStream, '/');
    appendHex2(outputStream, clockData->month);
    append(outputStream, '/');
    appendHex2(outputStream, clockData->year);
    appendSpace(outputStream);
}

void setClock(Clock* clock, ClockData* clockParam){
  
  ClockData* clockData = &(clock->clockData);
  
  clockData->second = clockParam->second;
  clockData->minute = clockParam->minute;
  clockData->hour = clockParam->hour;
  clockData->day = clockParam->day;
  clockData->dayofweek = clockParam->dayofweek;
  clockData->month = clockParam->month;
  clockData->year = clockParam->year;
  
  clock->writeClock(clock);
}

bool isClockInitialized(Clock* clock) {
    if (clock->writeClock == NULL || clock->readClock == NULL) {
        return false;
    }
    return true;
}
