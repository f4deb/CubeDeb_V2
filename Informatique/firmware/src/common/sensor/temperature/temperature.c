#include "temperature.h"
#include <definitions.h>

#include "../../drivers/LM75A/LM75A.h"
char* readSensorValueAsString (Temperature* temperature,uint16_t I2C_ADDRESS){
    char *str = "Err0";
    //uint32_t data32bits = _LM75A_readSensorValue(I2C_ADDRESS);
    uint32_t data32bits =temperature->readSensorValue(I2C_ADDRESS);

    sprintf(str, "%d", data32bits);  
    str[3] = '°';  
    return str;
}