#include <stdio.h>

#include "RGB.h"
#include "definitions.h"                // SYS function prototypes

#include "../RGB/RGBStream.h"

//TODO -> remove the driver call of WS2812b
#include "../../drivers/WS2812b/WS2812b.h"


void setColorRGB (RGB* rgb, uint16_t green,uint16_t red,uint16_t blue){
    rgb->colorWrite (rgb,green,red,blue);
}
