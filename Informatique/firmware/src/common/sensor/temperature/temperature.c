#include "temperature.h"
#include <definitions.h>

char* readSensorValueAsString (void){
    char *str = "Err0";
    uint32_t data32bits = readSensorValue(getTemperatureStream());

    sprintf(str, "%d", data32bits);  
    str[3] = '°';  
    return str;
}