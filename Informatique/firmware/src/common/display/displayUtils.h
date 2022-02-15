#ifndef _DISPLAY_UTILS_H    
#define _DISPLAY_UTILS_H

#include "displayStream.h"
#include "../IO/outputStream/outputStream.h"

DisplayStream* getDisplayStream(uint16_t displayIndex);

DisplayStream* initDisplayStreamUtils(DisplayStream* displayStream, uint16_t displayIndex, enum DisplayType displayType);


#endif 