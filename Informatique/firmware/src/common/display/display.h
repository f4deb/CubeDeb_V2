#ifndef _DISPLAY_H
#define _DISPLAY_H

#include "../../common/IO/outputStream/outputStream.h"
#include "../../common/display/displayStream.h"

#include <definitions.h>

void setposX(OutputStream* outputStream, uint16_t posX);
    
uint16_t getposX(OutputStream* outputStream);

    
#endif