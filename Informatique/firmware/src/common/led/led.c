
#include <stdbool.h>
#include "led.h"
#include "definitions.h"                // SYS function prototypes

//// LED 1
//RED

bool led1RedStatus (void){
    bool led = !LED1_R_Get();
    return led;
}

void led1RedOn (void){
    LED1_R_Clear();
}

void led1RedOff (void){
    LED1_R_Set();
}

void led1RedToggle (void){
    LED1_R_Toggle();
}

//// LED 1
//GREEN
bool led1GreenStatus (void){
    bool led = !LED1_V_Get();
    return led;
}

void led1GreenOn (void){
    LED1_V_Clear();
}

void led1GreenOff (void){
    LED1_V_Set();
}

void led1GreenToggle (void){
    LED1_V_Toggle();
}

//// LED 2
//RED
bool led2RedStatus (void){
    bool led = !LED2_R_Get();
    return led;
}

void led2RedOn (void){
    LED2_R_Clear();
}

void led2RedOff (void){
    LED2_R_Set();
}

void led2RedToggle (void){
    LED2_R_Toggle();
}

//// LED 2
//GREEN
bool led2GreenStatus (void){
    bool led = !LED2_V_Get();
    return led;
}

void led2GreenOn (void){
    LED2_V_Clear();
}

void led2GreenOff (void){
    LED2_V_Set();
}

void led2GreenToggle (void){
    LED2_V_Toggle();
}

void initLed (bool red1, bool green1, bool red2, bool green2){
    if (red1 == true ) {
        led1RedOn();
    }
    else {
        led1RedOff();
    }
    if (green1 == true ) {
        led1GreenOn();
    }
    else {
        led1GreenOff();
    }
    if (red2 == true ) {
        led2RedOn();
    }
    else {
        led2RedOff();
    }
    if (green2 == true ) {
        led2GreenOn();
    }
    else {
        led2GreenOff();
    }
}
