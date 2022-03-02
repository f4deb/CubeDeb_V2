#ifndef _PCF8563_H
#define _PCF8563_H

#include "../../common/clock/clockStream.h"

#include <definitions.h>


#define PCF8563_READ_ADDRESS            PCF8563_WRITE_ADDRESS + 1

#define PCF8563_CLOCK_REGISTER          0x02
#define PCF8563_ALARM_REGISTER          0x09

/**
 * Initializes a clock object with a PCF8563 hardware component.
 * @param clock a pointer on the clock structure.
 */
Clock* initClockPCF8563(Clock* clock, uint16_t clockIndex, uint16_t I2C_ADDRESS);

#endif
