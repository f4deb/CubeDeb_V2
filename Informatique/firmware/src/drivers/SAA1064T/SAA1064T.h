#ifndef _SAA1064T_H    /* Guard against multiple inclusion */
#define _SAA1064T_H

#include "definitions.h"                // SYS function prototypes

void SAA1064Twrite4DIGIT (uint16_t I2C_ADDRESS, uint8_t *data);
#endif