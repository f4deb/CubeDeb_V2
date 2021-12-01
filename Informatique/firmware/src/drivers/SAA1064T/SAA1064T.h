#ifndef _SAA1064T_H    /* Guard against multiple inclusion */
#define _SAA1064T_H

#include <definitions.h>                // SYS function prototypes
#include "../../common/IO/outputStream/outputStream.h"

void SAA1064Twrite4DIGIT (uint16_t I2C_ADDRESS, uint8_t *data);

OutputStream* initSAA1064T(OutputStream* outputStream, uint16_t I2C_ADDRESS);


#endif