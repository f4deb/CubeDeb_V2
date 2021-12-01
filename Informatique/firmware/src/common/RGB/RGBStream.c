#include "RGBStream.h"
#include <definitions.h>                // SYS function prototypes

static RGB rgb[100];

RGB* getRGBStream(int index){
    return &rgb[index];
}

//TODO -> remove if not necessary
/*void writeColorRGB (RGB* rgb, uint16_t green,uint16_t red,uint16_t blue){
    rgb->colorWrite(rgb,green,red,blue);
}
*/
RGB* initRGBStream (RGB* rgb,
        RGBColorWriteFunction* colorWrite,
        uint16_t maxLed,
        uint16_t rgbIndex){
    rgb->colorWrite = colorWrite;
    rgb->maxLed = maxLed;
    rgb->rgbIndex = rgbIndex;
    return getRGBStream(rgbIndex);
}