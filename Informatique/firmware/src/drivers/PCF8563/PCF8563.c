#include "PCF8563.h"

#include <definitions.h>

#include "../../common/clock/clockStream.h"

static uint8_t datarx[16];
static uint8_t datatx[16];

/**
 * @see clock.h
 * @private
 * Read the hour and the date from the Pcf8563, and store in the structure.
 * @param clock the clock
 */
ClockData* _readPcf8563Clock(Clock* clock) {
    datatx[0] = clock->address;
    datatx[1] = PCF8563_CLOCK_REGISTER;

    if (I2C1_WriteRead(clock->address, &datatx[0], 1,  &datarx[0], 2)){
    // error handling
    };
    while ( I2C1_IsBusy());

    ClockData* clockData = &(clock->clockData);
    
    clockData->second = datarx[0];
    clockData->minute = datarx[1];
    clockData->hour = datarx[2];
    clockData->day = datarx[3];
    clockData->dayofweek = datarx[4];
    clockData->month = datarx[5];
    clockData->year = datarx[6];


    clockData->second = clockData->second & 0b01111111;
    clockData->minute = clockData->minute & 0b01111111;
    clockData->hour = clockData->hour & 0b00111111;
    clockData->day = clockData->day & 0b00111111;
    clockData->dayofweek = clockData->dayofweek & 0b00001111;
    clockData->month = clockData->month & 0b00011111;

    return clockData;
}

/**
 * @see clock.h
 * @private
 * Set the Clock into the Pcf8563.
 * @param clock the new value of clock
 */
void _writePcf8563Clock(Clock* clock) {

    ClockData* clockData = &(clock->clockData);

    char* time;
    time[0] = PCF8563_CLOCK_REGISTER;
    time[1] = clockData->second;
    time[2] = clockData->minute;
    time[3] = clockData->hour;
    time[4] = clockData->day;
    time[5] = clockData->dayofweek;
    time[6] = clockData->month;
    time[7] = clockData->year;
    time[8] = '\0';
    
    while(I2C1_Write( clock->address , time, strlen(time))){
                // error handling
    }    
    while ( I2C1_IsBusy());
}

Clock* initClockPCF8563(Clock* clock, uint16_t clockIndex, uint16_t I2C_ADDRESS) {
    return initClockStream(clock, _writePcf8563Clock, _readPcf8563Clock, I2C_ADDRESS, clockIndex);
}
