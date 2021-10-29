#ifndef _LED_H    
#define _LED_H

#define LED1RED false
#define LED1GREEN true
#define LED2RED false
#define LED2GREEN true

bool led1RedStatus (void);
void led1RedOn (void);
void led1RedOff (void);
void led1RedToggle (void);

bool led1GreenStatus (void);
void led1GreenOn (void);
void led1GreenOff (void);
void led1GreenToggle (void);

bool led2RedStatus (void);
void led2RedOn (void);
void led2RedOff (void);
void led2RedToggle (void);

bool led2GreenStatus (void);
void led2GreenOn (void);
void led2GreenOff (void);
void led2GreenToggle (void);

void initLed (bool red1, bool green1, bool red2, bool green2);

#endif 