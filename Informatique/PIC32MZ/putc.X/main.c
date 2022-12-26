#include "main.h"

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

#include "timer1/timer1.h"
#include "tmr1/plib_tmr1_common.h"
#include "tmr1/plib_tmr1.h"

void SYS_Initialize ( void* data )
{

    /* Start out with interrupts disabled before configuring any modules */
    __builtin_disable_interrupts();

  
    CLK_Initialize();
    
    /* Configure Prefetch, Wait States and ECC */
    PRECONbits.PREFEN = 3;
    PRECONbits.PFMWS = 3;
    CFGCONbits.ECCCON = 3;

    TMR1_Initialize();

	/* Enable global interrupts */
    __builtin_enable_interrupts();
}

void CLK_Initialize( void )
{
    /* unlock system for clock configuration */
    SYSKEY = 0x00000000;
    SYSKEY = 0xAA996655;
    SYSKEY = 0x556699AA;


  

    /* Peripheral Module Disable Configuration */
    PMD1 = 0x1000;
    PMD2 = 0x3;
    PMD3 = 0x1fb01fc;
    PMD4 = 0x1e0;
    PMD5 = 0x301e3f2d;
    PMD6 = 0x10830001;
    PMD7 = 0x500000;

    /* Lock system since done with clock configuration */
    SYSKEY = 0x33333333;
}


void initLed(void){
    LED1_R_OutputEnable();
    LED1_V_OutputEnable();
    LED2_R_OutputEnable();    
    LED2_V_OutputEnable();
    
    LED1_R_On();
    LED1_V_Off();
    LED2_V_On();
    LED2_R_Off();
};



int main(void){ 
    
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    //TIMER 1 initialisation
    initTmr1();
    
    initLed();
    
    
    //TIMER 1 initialisation
    initTmr1();

    while(1){
    
        if (getIsTmr1Expired() == true) {

            setIsTmr1Expired(false);
            
            TMR1_InterruptDisable();

            LED2_R_On();

            LED2_V_Toggle();
            LED2_R_Toggle();
            LED1_V_Toggle();
            LED1_R_Toggle();
                        LED2_R_On();
            TMR1_InterruptEnable();
        }
    }
};