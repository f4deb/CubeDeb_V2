#include <stdio.h>

#include "RGB.h"
#include <definitions.h>                // SYS function prototypes

#include "../delay/delay.h"
#include "../RGB/RGBStream.h"

//TODO -> remove the driver call of WS2812b
#include "../../drivers/WS2812b/WS2812b.h"


/************************************************************
 * RainRGB
 * @param   RGB* rgb        the led RGB stream
 * @param   uint16_t red    define the red level of the led
 * @param   uint16_t green  define the green level of the led
 * @param   uint16_t blue   define the blue level of the led
 *
 * @return  void
 ***********************************************************/
void setColorRGB (RGB* rgb, uint16_t red,uint16_t green,uint16_t blue){
    rgb->colorWrite (rgb,red,green,blue);
}

/************************************************************
 * RainRGB
 * @param   RGB* rgb        the led RGB stream
 * @param   uint16_t red    define the red level of the led
 * @param   uint16_t green  define the green level of the led
 * @param   uint16_t blue   define the blue level of the led
 *
 * @return  void
 ***********************************************************/
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
}

/************************************************************
 * valueToRGB
 * @param   RGB* rgb        the led RGB stream
 * @param   uint16_t value  define the level of baragraphe
 *
 * @return  void
 ***********************************************************/

void valueToRGB (RGB* rgb,uint16_t value){
    uint8_t r,v,b = 0;
    uint16_t calc;
    
// 30mm->60mm        
    r = 0;
    v = 0;
    b = 0;   

    if (value < 35 ){    
         r = 255;
         v = 255;
         b = 255;       
    }
    else if (value < 127) {
        calc = value - 30;
        calc = (calc * 255) / 92;
        r = 255 - calc;
    }
    setColorRGB(rgb,r,v,b);

// 127mm->382mm       
    r = 0;
    v = 0;
    b = 0;   
    if (value <127){    
        r = 255;
        v = 255;   
    }
    else if (value < 382) {
        calc = value - 127;
        r = 255 - calc;
        v = 255 - calc;
    }
    setColorRGB(rgb,r,v,b);

// 382mm->637mm     
    r = 0;
    v = 0;
    b = 0;   
    if (value <382){    
        v = 255;
    }
    else if (value <637) {
        calc = value - 382;
        v = 255 - calc;
    }
    setColorRGB(rgb,r,v,b);

// 637mm->892mm   
    r = 0;
    v = 0;
    b = 0;   
    if (value <637){    
        v = 255;
        b = 255;        
    }
    else if (value <892) {
        calc = value - 637;
        v = 255 - calc;
        b = 255 - calc;
    }
    setColorRGB(rgb,r,v,b);

// 892mm->1147mm    
    r = 0;
    v = 0;
    b = 0;   
    if (value <892){              
        b = 255;
    }            
    else if (value <1147) {
        calc = value - 892;
        b = calc;
    }            
    setColorRGB(rgb,r,v,b);

// 1147mm->1402mm      
    r = 0;
    v = 0;
    b = 0;   
    if (value <1147){                         
        r = 255;
        b = 255;
    }
    else if (value <1402) {
        calc = value - 1147;
        r = calc;
        b = calc;
    }
    setColorRGB(rgb,r,v,b);
}