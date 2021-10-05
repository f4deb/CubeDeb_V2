#include "temperature.h"
#include <definitions.h>
#include <stdio.h>

#include "../../drivers/LM75A/LM75A.h"
char* readSensorValueAsString (Temperature* temperature){
    char *str = "Err0";
    uint32_t data32bits =temperature->readSensorValue(temperature->address);

    sprintf(str, "%d", data32bits);  
    str[3] = '°';  
    return str;
}