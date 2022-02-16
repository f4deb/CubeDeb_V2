#ifndef _TM1638_H    /* Guard against multiple inclusion */
#define _TM1638_H

#include <definitions.h>                // SYS function prototypes
#include "../../common/7seg/7segments.h"
#include "../../common/IO/outputStream/outputStream.h"

void sendDataTM1638 (int dataTM1638) ;

void sendCommandTM1638 (int dataTM1638) ;

void strToTM1638AnnodeCommon (char* str,int onOff, int intensity);

OutputStream* initTM1638(OutputStream* outputStream, uint16_t I2C_ADDRESS, uint16_t streamName, enum DisplayType type);


#endif