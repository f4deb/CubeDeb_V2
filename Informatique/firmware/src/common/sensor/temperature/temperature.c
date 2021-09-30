#include "temperature.h"

#include <stdlib.h>

static Temperature temperature;

Temperature* getTemperature(void){
    return &temperature;
}


void initTemperature(Temperature* temperature,
        TemperatureReadSensorValueFunction* readSensorValue,
        TemperatureWriteAlertLimitFunction* writeAlertLimit,
        void* object) {
    if (temperature == NULL) {
        // if error
        return;
    }
    temperature->readSensorValue = readSensorValue;
    temperature->writeAlertLimit = writeAlertLimit;
    temperature->object = object;
}