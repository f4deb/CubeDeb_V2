
#ifndef _LM75A_H    /* Guard against multiple inclusion */
#define _LM75A_H

#include "../../common/sensor/temperature/temperatureStream.h"

#include <definitions.h>




void initTemperatureLM75A(Temperature* temperature, uint16_t I2C_ADDRESS);




#endif