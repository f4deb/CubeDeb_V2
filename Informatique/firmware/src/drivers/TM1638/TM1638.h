#ifndef _TM1638_H    /* Guard against multiple inclusion */
#define _TM1638_H

#include <definitions.h>                // SYS function prototypes
#include "../../common/IO/outputStream/outputStream.h"

void sendDataTM1638 (int dataTM1638) ;

void sendCommandTM1638 (int dataTM1638) ;

void TM1638writeDIGIT (uint16_t I2C_ADDRESS, uint8_t *data);

OutputStream* initTM1638(OutputStream* outputStream, uint16_t I2C_ADDRESS);


#endif