#include "clockStream.h"

#include <stdlib.h>
#include <definitions.h>

static Clock clock[CLOCK_CPU_SIZE][CLOCK_QUANTITY];

Clock* getClockStream(int index){
    return &clock[index];
}
Clock* initClockStream(Clock* clock,
        WriteClockFunction* WriteClock,
        ReadClockFunction* ReadClock,
        uint16_t I2C_ADDRESS,
        uint16_t clockIndex){
    if (clock == NULL){
        //writeError(CLOCK_NULL);
        return;
    }
    clock->readClock = ReadClock;
    clock->writeClock = WriteClock;
    clock->address = I2C_ADDRESS;
    clock->clockIndex = clockIndex;    
    
    return getClockStream(clockIndex);
    
};