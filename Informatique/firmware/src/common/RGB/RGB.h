#ifndef _RGB_H
#define _RGB_H

#include <definitions.h>

#include "RGBStream.h"

void setColorRGB (RGB* rgb, uint16_t green,uint16_t red,uint16_t blue);

void RainRGB(RGB* rgb, uint16_t red, int16_t green, uint16_t blue, int16_t speed, uint16_t cycle);

#endif