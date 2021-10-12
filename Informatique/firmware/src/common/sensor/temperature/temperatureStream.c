#include "temperatureStream.h"

#include <stdlib.h>
#include <definitions.h>


//#include "../../../common/error/error.h"


static Temperature temperatureSensor[24];

Temperature* getTemperatureStream(int index){
    return &temperatureSensor[index];
}

void initTemperatureStream(Temperature* temperature,
        TemperatureReadSensorValueFunction* readSensorValue,
        TemperatureWriteAlertLimitFunction* writeAlertLimit,
        uint16_t I2C_ADDRESS) {
    if (temperature == NULL) {
        //writeError(TEMPERATURE_NULL);
        return;
    }
    temperature->readSensorValue = readSensorValue;
    temperature->writeAlertLimit = writeAlertLimit;
    temperature->address = I2C_ADDRESS;
}