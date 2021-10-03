#include "LM75A.h"
#include <definitions.h>

#include "../../common/sensor/temperature/temperatureStream.h"

static uint8_t datarx[6];
static uint8_t datatx[6];

/**
 * Get the internal I2cBusConnection.
 * @param temperature the temperature structure (to simulate POO Programming).
 * @private
 */
/*I2cBusConnection* _LM75A_getI2cBusConnection(Temperature* temperature) {
    I2cBusConnection* result = (I2cBusConnection*) temperature->object;

    return result;
}*/



uint8_t getDatatx (void){
    return datatx;
}

uint32_t _LM75A_readSensorValue(uint16_t I2C_ADDRESS){
    datatx[0] = 0x00;
    datatx[1] = 0x00;
    
    if (I2C1_WriteRead(I2C_ADDRESS, &datatx[0], 1,  &datarx[0], 2)){
    // error handling
    };
    while ( I2C1_IsBusy());

    uint32_t data32bits = datarx[0]<<8;
    data32bits = data32bits + datarx[1];
    data32bits = data32bits >> 5;    
            
    return data32bits;
}

void _LM75A_writeAlertLimit(uint16_t I2C_ADDRESS, uint8_t *data) {
    while(I2C1_Write( I2C_ADDRESS , data, 6 )){
                // error handling
    }    
    while ( I2C1_IsBusy());
}

void initTemperatureLM75A(Temperature* temperature, uint16_t I2C_ADDRESS) {
    initTemperatureStream(temperature, _LM75A_readSensorValue, _LM75A_writeAlertLimit, I2C_ADDRESS);
}