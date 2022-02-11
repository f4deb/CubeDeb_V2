#ifndef _7SEGMENTS_H    /* Guard against multiple inclusion */
#define _7SEGMENTS_H

//#include "../ascii/7seg.h"
#include <definitions.h>                // SYS function prototypes

#define TM1638_0 0x01

enum DisplayType {
    TYPE_SAA1064T,
    TYPE_TM1638
};

    
void MyI2CCallback(uintptr_t context);    


void print7Seg (const char *str,char dot, uint16_t I2C_ADDRESS);


#endif