#include "drivers/segSAA1064T/segSAA1064T.h"
#include "drivers/SAA1064T/SAA1064T.h"

void segSAA1064Twrite4DIGIT (uint16_t I2C_ADDRESS, uint8_t *data){

    SAA1064Twrite4DIGIT( I2C_ADDRESS , data );
}