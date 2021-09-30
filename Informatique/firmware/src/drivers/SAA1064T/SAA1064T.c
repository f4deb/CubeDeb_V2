#include "SAA1064T.h"

void SAA1064Twrite4DIGIT (uint16_t I2C_ADDRESS, uint8_t *data){
    while(I2C1_Write( I2C_ADDRESS , data, 6 )){
                // error handling
    }    
    while ( I2C1_IsBusy());

}