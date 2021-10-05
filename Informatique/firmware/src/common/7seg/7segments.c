#include "7segments.h"
#include "drivers/SAA1064T/SAA1064T.h"

static uint8_t data[] = " ";

void MyI2CCallback(uintptr_t context){
            // This function will be called when the transfer completes. Note
            // that this functioin executes in the context of the I2C interrupt.
    }

void print7Seg (const char *str,char dot, uint16_t I2C_ADDRESS){
    uint8_t dotMask = 0b00000010;
    uint8_t caractere;
    data[0] = 00;
    data[1] = 0x17;  
    caractere = str[3];    
    data[3] = ascii7[caractere] | ((dot<<1) & dotMask);
    caractere = str[2];
    data[2] = ascii7[caractere] | ((dot) & dotMask);
    caractere = str[0];
    data[4] = ascii7[caractere] | ((dot>>2) & dotMask);
    caractere = str[1];
    data[5] = ascii7[caractere] | ((dot>>1) & dotMask);
         
    SAA1064Twrite4DIGIT (I2C_ADDRESS, data);

}