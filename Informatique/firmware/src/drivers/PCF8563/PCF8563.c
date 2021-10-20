#include "PCF8563.h"

#include <definitions.h>

#include "../../common/clock/clockStream.h"

static uint8_t datarx[8];
static uint8_t datatx[8];

/**
 * @see clock.h
 * @private
 * Read the hour and the date from the Pcf8563, and store in the structure.
 * @param clock the clock
 * @param reg define register as CLOCK or ALARM
 */
ClockData* _readPcf8563Clock(Clock* clock,int reg) {
    datatx[0] = reg;

    //read the PCF8563
    if (I2C1_WriteRead(clock->address, &datatx[0], 1,  &datarx[0], 7)){
    // error handling
    };
    while ( I2C1_IsBusy());

    ClockData* clockData = &(clock->clockData);
    
    //record data
    clockData->second = datarx[0];
    clockData->minute = datarx[1];
    clockData->hour = datarx[2];
    clockData->day = datarx[3];
    clockData->dayofweek = datarx[4];
    clockData->month = datarx[5];
    clockData->year = datarx[6];

    //format data
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
 * @param reg define register as CLOCK or ALARM
 */
void _writePcf8563Clock(Clock* clock,int reg) {

    ClockData* clockData = &(clock->clockData);

    char time[9];
    time[0] = reg;
    time[1] = clockData->second;
    time[2] = clockData->minute;
    time[3]= clockData->hour;
    time[4] = clockData->day;
    time[5] = clockData->dayofweek;
    time[6] = clockData->month;
    time[7] = clockData->year;
    
    while(I2C1_Write( clock->address, time, 8)){
                // error handling
    }    
    while ( I2C1_IsBusy());
}

Clock* initClockPCF8563(Clock* clock, uint16_t clockIndex, uint16_t I2C_ADDRESS) {
    return initClockStream(clock, _writePcf8563Clock, _readPcf8563Clock, I2C_ADDRESS, clockIndex);
}
