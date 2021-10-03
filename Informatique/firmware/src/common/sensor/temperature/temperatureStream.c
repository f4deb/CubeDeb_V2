#include "temperatureStream.h"

#include <stdlib.h>

static Temperature temperature;

Temperature* getTemperatureStream(void){
    return &temperature;
}

uint32_t readSensorValue(Temperature* temperature){
    return LM75AReadSensorValue(temperature->address);
}

void writeAlertLimit(Temperature* temperature, int temperatureSensorAlert){
    LM75AWriteAlertLimit(temperature->address, temperatureSensorAlert);
}

void initTemperatureStream(Temperature* temperature,uint8_t address){
    temperature->address = address;
    temperature->readSensorValue = readSensorValue;
    temperature->writeAlertLimit = writeAlertLimit;    
}