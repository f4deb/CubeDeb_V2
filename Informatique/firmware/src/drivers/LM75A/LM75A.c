#include "LM75A.h"

#include "../../common/sensor/temperature/temperatureStream.h"

static uint8_t datarx[6];
static uint8_t datatx[6];

uint8_t getDatatx (void){
    return datatx;
}

uint32_t LM75AReadSensorValue(uint16_t I2C_ADDRESS){
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

void LM75AWriteAlertLimit(uint16_t I2C_ADDRESS, uint8_t *data) {
    while(I2C1_Write( I2C_ADDRESS , data, 6 )){
                // error handling
    }    
    while ( I2C1_IsBusy());
}