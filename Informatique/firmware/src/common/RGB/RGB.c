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

void RainRGB(RGB* rgb, uint16_t red, int16_t green, uint16_t blue, signed int speed, uint16_t cycle){
    bool direction;
    int i = 0;
    int k = 0;
    int j = 0;
    if (speed < 0 ){
        direction = false;
        j = rgb->maxLed;
        //enlever le signe
        speed = ~speed; // complement à 2
        speed++;        // +1
    }
    else {
        direction = true;
        j = 0;
    }
    

    
  
    if (direction == true ){
        while ( i <= cycle ){
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
    }    
    else { 
        while ( i < cycle ){
            while (j > -1){
                while ( k < rgb->maxLed ){
                    if (j == k ) {
                        rgb->colorWrite (rgb,red,green,blue);
                    }
                    else {
                        rgb->colorWrite (rgb,0,0,0);
                    }
                    k++;
                }
                j--;
                k = 0;
                delayMilliSecs(speed);
            }   
            i++;
            j = rgb->maxLed;
        }    
    }

    /*TODO -> does not work
    while ( k < rgb->maxLed ){
        rgb->colorWrite (rgb,0,0,0);
        k++;
    }    
     */
}