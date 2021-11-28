#include <stdio.h>

#include "RGB.h"
#include "definitions.h"                // SYS function prototypes

#include "../delay/delay.h"
#include "../RGB/RGBStream.h"

//TODO -> remove the driver call of WS2812b
#include "../../drivers/WS2812b/WS2812b.h"


void setColorRGB (RGB* rgb, uint16_t green,uint16_t red,uint16_t blue){
    rgb->colorWrite (rgb,green,red,blue);
}

void RainRGB(RGB* rgb, uint16_t red, int16_t green, uint16_t blue, int16_t speed, uint16_t cycle){
    bool direction;
    if (speed > 0x10){
        direction = true;
    }
    else {
        direction = false;
    }
    

    int i = 0;
    int j = 0;
    int k = 0;
   
    while ( i < cycle ){
        while (j < rgb->maxLed){
            while ( k < rgb->maxLed ){
                if (j == k ) {
                    rgb->colorWrite (rgb,red,green,blue);
                }
                else {
                    rgb->colorWrite (rgb,0,0,0);
                }

                k++;
            }
            j++;
            k=0;
            delayMilliSecs(speed);
        }   
        i++;
        j=0;
    }
    while ( k < rgb->maxLed ){
        rgb->colorWrite (rgb,0,0,0);
        k++;
    }
}