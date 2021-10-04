#include "temperatureStream.h"

#include <stdlib.h>
#include <definitions.h>


//#include "../../../common/error/error.h"


static int temperatureSensor[24];

int* getTemperatureStream(int index){
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