#ifndef _MAIN_H    
#define _MAIN_H

#include <xc.h>
//#include <sys/attribs.h>

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

/* Nullify SYS_Tasks() if only PLIBs are used. */
#define     SYS_Tasks()

/* CPU clock frequency */
#define CPU_CLOCK_FREQUENCY 200000000



// ****************************************************************************
// ****************************************************************************
// Section: Configuration Bits
// ****************************************************************************
// ****************************************************************************

/*** DEVCFG0 ***/
#pragma config DEBUG =      OFF
#pragma config JTAGEN =     OFF
#pragma config ICESEL =     ICS_PGx1
#pragma config TRCEN =      OFF
#pragma config BOOTISA =    MIPS32
#pragma config FECCCON =    OFF_UNLOCKED
#pragma config FSLEEP =     OFF
#pragma config DBGPER =     PG_ALL
#pragma config SMCLR =      MCLR_NORM
#pragma config SOSCGAIN =   GAIN_LEVEL_3
#pragma config SOSCBOOST =  ON
#pragma config POSCGAIN =   GAIN_LEVEL_3
#pragma config POSCBOOST =  ON
#pragma config EJTAGBEN =   NORMAL
#pragma config CP =         OFF

/*** DEVCFG1 ***/
#pragma config FNOSC =      SPLL
#pragma config DMTINTV =    WIN_127_128
#pragma config FSOSCEN =    ON
#pragma config IESO =       OFF
#pragma config POSCMOD =    HS
#pragma config OSCIOFNC =   OFF
#pragma config FCKSM =      CSECME
#pragma config WDTPS =      PS1048576
#pragma config WDTSPGM =    STOP
#pragma config FWDTEN =     OFF
#pragma config WINDIS =     NORMAL
#pragma config FWDTWINSZ =  WINSZ_25
#pragma config DMTCNT =     DMT31
#pragma config FDMTEN =     OFF

/*** DEVCFG2 ***/
#pragma config FPLLIDIV =   DIV_1
#pragma config FPLLRNG =    RANGE_5_10_MHZ
#pragma config FPLLICLK =   PLL_FRC
#pragma config FPLLMULT =   MUL_50
#pragma config FPLLODIV =   DIV_2
#pragma config UPLLFSEL =   FREQ_24MHZ

/*** DEVCFG3 ***/
#pragma config USERID =     0xffff
#pragma config FMIIEN =     ON
#pragma config FETHIO =     ON
#pragma config PGL1WAY =    ON
#pragma config PMDL1WAY =   ON
#pragma config IOL1WAY =    ON
#pragma config FUSBIDIO =   ON

/*** BF1SEQ0 ***/

#pragma config TSEQ =       0xffff
#pragma config CSEQ =       0x0


// ****************************************************
// ****************************************************
// Section : LED CONTROL
// ****************************************************
// ****************************************************

/*** Macros for LED2_R pin ***/
#define LED2_R_Off()               (LATGSET = (1<<1))   // LED OFF
#define LED2_R_On()                (LATGCLR = (1<<1))   // LED ON
#define LED2_R_Toggle()            (LATGINV= (1<<1))    // LED TOGGLE
#define LED2_R_OutputEnable()      (TRISGCLR = (1<<1))  // LED CONTROL ENABLE
#define LED2_R_InputEnable()       (TRISGSET = (1<<1))
#define LED2_R_Get()               ((PORTG >> 1) & 0x1)
#define LED2_R_PIN                  GPIO_PIN_RG1

/*** Macros for LED1_R pin ***/
#define LED1_R_Off()               (LATGSET = (1<<0))   // LED OFF
#define LED1_R_On()                (LATGCLR = (1<<0))   // LED ON
#define LED1_R_Toggle()            (LATGINV= (1<<0))    // LED TOGGLE
#define LED1_R_OutputEnable()      (TRISGCLR = (1<<0))  // LED CONTROL ENABLE
#define LED1_R_InputEnable()       (TRISGSET = (1<<0))
#define LED1_R_Get()               ((PORTG >> 0) & 0x1)
#define LED1_R_PIN                  GPIO_PIN_RG0

/*** Macros for LED1_V pin ***/
#define LED1_V_Off()               (LATBSET = (1<<1))   // LED OFF
#define LED1_V_On()                (LATBCLR = (1<<1))   // LED ON
#define LED1_V_Toggle()            (LATBINV= (1<<1))    // LED TOGGLE
#define LED1_V_OutputEnable()      (TRISBCLR = (1<<1))  // LED CONTROL ENABLE
#define LED1_V_InputEnable()       (TRISBSET = (1<<1))
#define LED1_V_Get()               ((PORTB >> 1) & 0x1)
#define LED1_V_PIN                  GPIO_PIN_RB1

/*** Macros for LED2_V pin ***/
#define LED2_V_Off()               (LATBSET = (1<<0))   // LED OFF
#define LED2_V_On()                (LATBCLR = (1<<0))   // LED ON
#define LED2_V_Toggle()            (LATBINV= (1<<0))    // LED TOGGLE
#define LED2_V_OutputEnable()      (TRISBCLR = (1<<0))  // LED CONTROL ENABLE
#define LED2_V_InputEnable()       (TRISBSET = (1<<0))
#define LED2_V_Get()               ((PORTB >> 0) & 0x1)
#define LED2_V_PIN                  GPIO_PIN_RB0

#endif 