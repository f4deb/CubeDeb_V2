#ifndef _7SEGMENTS_H    /* Guard against multiple inclusion */
#define _7SEGMENTS_H

#include "../ascii/7seg.h"

    
void MyI2CCallback(uintptr_t context);    


void print7Seg (const char *str,char dot, uint16_t I2C_ADDRESS);


#endif