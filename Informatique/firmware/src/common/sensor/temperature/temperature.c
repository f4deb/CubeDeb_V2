#include "temperature.h"
#include <definitions.h>
#include <stdio.h>
#include "../../I2C/I2CConfig.h"

#include "../../drivers/LM75A/LM75A.h"
char* readSensorValueAsStringFor7Seg (Temperature* temperature){
    char* str = "Err0";
    //uint32_t data32bits = temperature->readSensorValue(temperature->address);
    uint32_t data32bits = getTemperatureSensor(temperature);

    sprintf(str, "%d", data32bits);  
    str[3] = '°';  
    return str;
}

char* readSensorValueAsString (Temperature* temperature){
    char* strf = "err0";
    //uint32_t data32bits = temperature->readSensorValue(temperature->address);
    uint32_t data32bits = getTemperatureSensor(temperature);
    uint32_t i = data32bits / 10;
    uint32_t j = data32bits - (i*10);
    sprintf(strf, "%d.%d", i,j);  
    return strf;
}