#include "RGBStream.h"
#include <definitions.h>                // SYS function prototypes

static RGB rgb[50];

/************************************************************
 * initRGBStream
 * @param   int index           set the addresse into the stream
 *
 * @return  RGB*                return a pointer to RGB Stream
 ***********************************************************/
RGB* getRGBStream(int index){
    return &rgb[index];
}

/************************************************************
 * initRGBStream
 * @param   RGB* rgb            the led RGB stream
 * @param   uint16_t maxLed     the quantity of rgb led to drive
 * @param   uint16_t rgbIndex   define which RGB Stream 
 *
 * @return  RGB*                return a pointer to RGB Stream
 ***********************************************************/
RGB* initRGBStream (RGB* rgb,
        RGBColorWriteFunction* colorWrite,
        uint16_t maxLed,
        uint16_t rgbIndex){
    rgb->colorWrite = colorWrite;
    rgb->maxLed = maxLed;
    rgb->rgbIndex = rgbIndex;
    return getRGBStream(rgbIndex);
}