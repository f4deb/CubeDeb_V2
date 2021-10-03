
#ifndef _LM75A_H    /* Guard against multiple inclusion */
#define _LM75A_H

#include "../../common/sensor/temperature/temperatureStream.h"

uint32_t LM75AReadSensorValue(uint16_t I2C_ADDRESS);

void LM75AWriteAlertLimit(uint16_t I2C_ADDRESS, uint8_t *data);





#endif