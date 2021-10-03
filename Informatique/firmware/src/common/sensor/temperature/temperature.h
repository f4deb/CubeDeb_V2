#ifndef _TEMPERATURE_COMMON_H    /* Guard against multiple inclusion */
#define _TEMPERATURE_COMMON_H

#include <definitions.h>

#include "temperatureStream.h"

#include "../../cube/cubeCommon.h"



char* readSensorValueAsString (Temperature* temperature,uint16_t I2C_ADDRESS);

#endif