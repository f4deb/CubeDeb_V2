#ifndef _DISPLAY_UTILS_H    
#define _DISPLAY_UTILS_H

#include "displayStream.h"

DisplayStream* getDisplayStream(uint16_t displayIndex);


DisplayStream* initDisplayStreamUtils(DisplayStream* displayStream, uint16_t displayIndex);


#endif 