#include "WS2812b.h"
#include <definitions.h>

#include "../../common/delay/delay.h"
#include "../../common/RGB/RGBStream.h"



void NZR0(void){
    uint32_t time0 = TMR4;   
    uint32_t time1 = TMR4;
    time0 = TMR4;
        RGB_1_Set();
        while (time1 < time0 + 30){
            time1 = TMR4;
        } 
        time0 = TMR4;
        RGB_1_Clear();
        while (time1 < time0 + 70){
            time1 = TMR4;
        }    
}

void NZR1(void){
    uint32_t time0 = TMR4;   
    uint32_t time1 = TMR4;
    time0 = TMR4;
        RGB_1_Set();
        while (time1 < time0 + 70){
            time1 = TMR4;
        } 
        time0 = TMR4;
        RGB_1_Clear();
        while (time1 < time0 + 30){
            time1 = TMR4;
        }    
}

void RGBbit(uint8_t level){
    if (level == 1 ){
        NZR1();
    }
    else           
        NZR0();
}

void GRBcolor(uint8_t color){
    uint8_t i = 0;
    uint8_t color1;
    uint8_t mask = 0x80;

    while (i<8){
        color1 = color & mask;
        if (color1 && 1){
            RGBbit(1);    
        }
        else {
            RGBbit(0);    
        }
        mask = mask>>1;
        i++;
    }    
}

void ws2812bReset (void){
    RGB_1_Clear();
    delayMicroSecs(50);
}
    

void _WS2812b_write(RGB* rgb, uint16_t red, uint16_t green, uint16_t blue) {
    GRBcolor(green);          
    GRBcolor(red);          
    GRBcolor(blue);  
}

RGB* initRGBWS2812b(RGB* rgb, uint16_t maxLed, uint16_t RGBIndex) {
    return initRGBStream(rgb, _WS2812b_write, maxLed, RGBIndex);
}