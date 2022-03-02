#ifndef _RGB_STREAM_H
#define _RGB_STREAM_H

#include <definitions.h>

struct RGB;
typedef struct RGB RGB;

RGB* getRGBStream(int index);

typedef void RGBColorWriteFunction(RGB* rgb, uint16_t red, uint16_t green, uint16_t blue);

//TODO -> remove if not necessary
//void writeColorRGB (RGB* rgb, uint16_t green,uint16_t red,uint16_t blue);

struct RGB {
    /* The function wigh must be used to write color on the RGB led. */
    RGBColorWriteFunction* colorWrite;
    /* The quantity of RGB led to drive*/
    uint16_t maxLed;
    /* Index of RGB led to drive */
    uint16_t rgbIndex;
};

RGB* initRGBStream(RGB* rgb,
        RGBColorWriteFunction* colorWrite,
        uint16_t maxLed,
        uint16_t rgbIndex);

#endif