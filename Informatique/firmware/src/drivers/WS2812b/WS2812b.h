#ifndef _WS2812B_H    /* Guard against multiple inclusion */
#define _WS2812B_H

#include "../../common/RGB/RGBStream.h"

#include <definitions.h>

RGB* initRGBWS2812b(RGB* rgb, uint16_t maxLed,uint16_t RGBIndex);

#endif