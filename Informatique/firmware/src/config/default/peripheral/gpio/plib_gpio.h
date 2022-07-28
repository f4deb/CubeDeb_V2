/*******************************************************************************
  GPIO PLIB

  Company:
    Microchip Technology Inc.

  File Name:
    plib_gpio.h

  Summary:
    GPIO PLIB Header File

  Description:
    This library provides an interface to control and interact with Parallel
    Input/Output controller (GPIO) module.

*******************************************************************************/

/*******************************************************************************
* Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/

#ifndef PLIB_GPIO_H
#define PLIB_GPIO_H

#include <device.h>
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Data types and constants
// *****************************************************************************
// *****************************************************************************


/*** Macros for BD5 pin ***/
#define BD5_Set()               (LATESET = (1<<5))
#define BD5_Clear()             (LATECLR = (1<<5))
#define BD5_Toggle()            (LATEINV= (1<<5))
#define BD5_OutputEnable()      (TRISECLR = (1<<5))
#define BD5_InputEnable()       (TRISESET = (1<<5))
#define BD5_Get()               ((PORTE >> 5) & 0x1)
#define BD5_PIN                  GPIO_PIN_RE5

/*** Macros for BD6 pin ***/
#define BD6_Set()               (LATESET = (1<<6))
#define BD6_Clear()             (LATECLR = (1<<6))
#define BD6_Toggle()            (LATEINV= (1<<6))
#define BD6_OutputEnable()      (TRISECLR = (1<<6))
#define BD6_InputEnable()       (TRISESET = (1<<6))
#define BD6_Get()               ((PORTE >> 6) & 0x1)
#define BD6_PIN                  GPIO_PIN_RE6

/*** Macros for BD7 pin ***/
#define BD7_Set()               (LATESET = (1<<7))
#define BD7_Clear()             (LATECLR = (1<<7))
#define BD7_Toggle()            (LATEINV= (1<<7))
#define BD7_OutputEnable()      (TRISECLR = (1<<7))
#define BD7_InputEnable()       (TRISESET = (1<<7))
#define BD7_Get()               ((PORTE >> 7) & 0x1)
#define BD7_PIN                  GPIO_PIN_RE7

/*** Macros for INPUT_CAPTURE_1 pin ***/
#define INPUT_CAPTURE_1_Get()               ((PORTC >> 2) & 0x1)
#define INPUT_CAPTURE_1_PIN                  GPIO_PIN_RC2

/*** Macros for BRS pin ***/
#define BRS_Set()               (LATESET = (1<<8))
#define BRS_Clear()             (LATECLR = (1<<8))
#define BRS_Toggle()            (LATEINV= (1<<8))
#define BRS_OutputEnable()      (TRISECLR = (1<<8))
#define BRS_InputEnable()       (TRISESET = (1<<8))
#define BRS_Get()               ((PORTE >> 8) & 0x1)
#define BRS_PIN                  GPIO_PIN_RE8

/*** Macros for BE pin ***/
#define BE_Set()               (LATESET = (1<<9))
#define BE_Clear()             (LATECLR = (1<<9))
#define BE_Toggle()            (LATEINV= (1<<9))
#define BE_OutputEnable()      (TRISECLR = (1<<9))
#define BE_InputEnable()       (TRISESET = (1<<9))
#define BE_Get()               ((PORTE >> 9) & 0x1)
#define BE_PIN                  GPIO_PIN_RE9

/*** Macros for LED1_V pin ***/
#define LED1_V_Set()               (LATBSET = (1<<1))
#define LED1_V_Clear()             (LATBCLR = (1<<1))
#define LED1_V_Toggle()            (LATBINV= (1<<1))
#define LED1_V_OutputEnable()      (TRISBCLR = (1<<1))
#define LED1_V_InputEnable()       (TRISBSET = (1<<1))
#define LED1_V_Get()               ((PORTB >> 1) & 0x1)
#define LED1_V_PIN                  GPIO_PIN_RB1

/*** Macros for LED2_V pin ***/
#define LED2_V_Set()               (LATBSET = (1<<0))
#define LED2_V_Clear()             (LATBCLR = (1<<0))
#define LED2_V_Toggle()            (LATBINV= (1<<0))
#define LED2_V_OutputEnable()      (TRISBCLR = (1<<0))
#define LED2_V_InputEnable()       (TRISBSET = (1<<0))
#define LED2_V_Get()               ((PORTB >> 0) & 0x1)
#define LED2_V_PIN                  GPIO_PIN_RB0

/*** Macros for CLK_TM1638 pin ***/
#define CLK_TM1638_Set()               (LATBSET = (1<<9))
#define CLK_TM1638_Clear()             (LATBCLR = (1<<9))
#define CLK_TM1638_Toggle()            (LATBINV= (1<<9))
#define CLK_TM1638_OutputEnable()      (TRISBCLR = (1<<9))
#define CLK_TM1638_InputEnable()       (TRISBSET = (1<<9))
#define CLK_TM1638_Get()               ((PORTB >> 9) & 0x1)
#define CLK_TM1638_PIN                  GPIO_PIN_RB9

/*** Macros for DIO_TM1638 pin ***/
#define DIO_TM1638_Set()               (LATBSET = (1<<10))
#define DIO_TM1638_Clear()             (LATBCLR = (1<<10))
#define DIO_TM1638_Toggle()            (LATBINV= (1<<10))
#define DIO_TM1638_OutputEnable()      (TRISBCLR = (1<<10))
#define DIO_TM1638_InputEnable()       (TRISBSET = (1<<10))
#define DIO_TM1638_Get()               ((PORTB >> 10) & 0x1)
#define DIO_TM1638_PIN                  GPIO_PIN_RB10

/*** Macros for U12V pin ***/
#define U12V_Get()               ((PORTB >> 11) & 0x1)
#define U12V_PIN                  GPIO_PIN_RB11

/*** Macros for RGB_1 pin ***/
#define RGB_1_Set()               (LATASET = (1<<1))
#define RGB_1_Clear()             (LATACLR = (1<<1))
#define RGB_1_Toggle()            (LATAINV= (1<<1))
#define RGB_1_OutputEnable()      (TRISACLR = (1<<1))
#define RGB_1_InputEnable()       (TRISASET = (1<<1))
#define RGB_1_Get()               ((PORTA >> 1) & 0x1)
#define RGB_1_PIN                  GPIO_PIN_RA1

/*** Macros for U5VA pin ***/
#define U5VA_Get()               ((PORTB >> 12) & 0x1)
#define U5VA_PIN                  GPIO_PIN_RB12

/*** Macros for U5VD pin ***/
#define U5VD_Get()               ((PORTB >> 13) & 0x1)
#define U5VD_PIN                  GPIO_PIN_RB13

/*** Macros for U3V3 pin ***/
#define U3V3_Get()               ((PORTB >> 15) & 0x1)
#define U3V3_PIN                  GPIO_PIN_RB15

/*** Macros for I2C1_SCL pin ***/
#define I2C1_SCL_Get()               ((PORTA >> 14) & 0x1)
#define I2C1_SCL_PIN                  GPIO_PIN_RA14

/*** Macros for I2C1_SDA pin ***/
#define I2C1_SDA_Get()               ((PORTA >> 15) & 0x1)
#define I2C1_SDA_PIN                  GPIO_PIN_RA15

/*** Macros for UART0_RX pin ***/
#define UART0_RX_Get()               ((PORTD >> 10) & 0x1)
#define UART0_RX_PIN                  GPIO_PIN_RD10

/*** Macros for UART0_TX pin ***/
#define UART0_TX_Get()               ((PORTD >> 11) & 0x1)
#define UART0_TX_PIN                  GPIO_PIN_RD11

/*** Macros for INPUT_CAPTURE_2 pin ***/
#define INPUT_CAPTURE_2_Get()               ((PORTD >> 12) & 0x1)
#define INPUT_CAPTURE_2_PIN                  GPIO_PIN_RD12

/*** Macros for UART1_RX pin ***/
#define UART1_RX_Get()               ((PORTD >> 4) & 0x1)
#define UART1_RX_PIN                  GPIO_PIN_RD4

/*** Macros for UART1_TX pin ***/
#define UART1_TX_Get()               ((PORTD >> 5) & 0x1)
#define UART1_TX_PIN                  GPIO_PIN_RD5

/*** Macros for BRW pin ***/
#define BRW_Set()               (LATFSET = (1<<0))
#define BRW_Clear()             (LATFCLR = (1<<0))
#define BRW_Toggle()            (LATFINV= (1<<0))
#define BRW_OutputEnable()      (TRISFCLR = (1<<0))
#define BRW_InputEnable()       (TRISFSET = (1<<0))
#define BRW_Get()               ((PORTF >> 0) & 0x1)
#define BRW_PIN                  GPIO_PIN_RF0

/*** Macros for LED2_R pin ***/
#define LED2_R_Set()               (LATGSET = (1<<1))
#define LED2_R_Clear()             (LATGCLR = (1<<1))
#define LED2_R_Toggle()            (LATGINV= (1<<1))
#define LED2_R_OutputEnable()      (TRISGCLR = (1<<1))
#define LED2_R_InputEnable()       (TRISGSET = (1<<1))
#define LED2_R_Get()               ((PORTG >> 1) & 0x1)
#define LED2_R_PIN                  GPIO_PIN_RG1

/*** Macros for LED1_R pin ***/
#define LED1_R_Set()               (LATGSET = (1<<0))
#define LED1_R_Clear()             (LATGCLR = (1<<0))
#define LED1_R_Toggle()            (LATGINV= (1<<0))
#define LED1_R_OutputEnable()      (TRISGCLR = (1<<0))
#define LED1_R_InputEnable()       (TRISGSET = (1<<0))
#define LED1_R_Get()               ((PORTG >> 0) & 0x1)
#define LED1_R_PIN                  GPIO_PIN_RG0

/*** Macros for STB_TM1638 pin ***/
#define STB_TM1638_Set()               (LATASET = (1<<7))
#define STB_TM1638_Clear()             (LATACLR = (1<<7))
#define STB_TM1638_Toggle()            (LATAINV= (1<<7))
#define STB_TM1638_OutputEnable()      (TRISACLR = (1<<7))
#define STB_TM1638_InputEnable()       (TRISASET = (1<<7))
#define STB_TM1638_Get()               ((PORTA >> 7) & 0x1)
#define STB_TM1638_PIN                  GPIO_PIN_RA7

/*** Macros for BD0 pin ***/
#define BD0_Set()               (LATESET = (1<<0))
#define BD0_Clear()             (LATECLR = (1<<0))
#define BD0_Toggle()            (LATEINV= (1<<0))
#define BD0_OutputEnable()      (TRISECLR = (1<<0))
#define BD0_InputEnable()       (TRISESET = (1<<0))
#define BD0_Get()               ((PORTE >> 0) & 0x1)
#define BD0_PIN                  GPIO_PIN_RE0

/*** Macros for BD1 pin ***/
#define BD1_Set()               (LATESET = (1<<1))
#define BD1_Clear()             (LATECLR = (1<<1))
#define BD1_Toggle()            (LATEINV= (1<<1))
#define BD1_OutputEnable()      (TRISECLR = (1<<1))
#define BD1_InputEnable()       (TRISESET = (1<<1))
#define BD1_Get()               ((PORTE >> 1) & 0x1)
#define BD1_PIN                  GPIO_PIN_RE1

/*** Macros for BD2 pin ***/
#define BD2_Set()               (LATESET = (1<<2))
#define BD2_Clear()             (LATECLR = (1<<2))
#define BD2_Toggle()            (LATEINV= (1<<2))
#define BD2_OutputEnable()      (TRISECLR = (1<<2))
#define BD2_InputEnable()       (TRISESET = (1<<2))
#define BD2_Get()               ((PORTE >> 2) & 0x1)
#define BD2_PIN                  GPIO_PIN_RE2

/*** Macros for BD3 pin ***/
#define BD3_Set()               (LATESET = (1<<3))
#define BD3_Clear()             (LATECLR = (1<<3))
#define BD3_Toggle()            (LATEINV= (1<<3))
#define BD3_OutputEnable()      (TRISECLR = (1<<3))
#define BD3_InputEnable()       (TRISESET = (1<<3))
#define BD3_Get()               ((PORTE >> 3) & 0x1)
#define BD3_PIN                  GPIO_PIN_RE3

/*** Macros for BD4 pin ***/
#define BD4_Set()               (LATESET = (1<<4))
#define BD4_Clear()             (LATECLR = (1<<4))
#define BD4_Toggle()            (LATEINV= (1<<4))
#define BD4_OutputEnable()      (TRISECLR = (1<<4))
#define BD4_InputEnable()       (TRISESET = (1<<4))
#define BD4_Get()               ((PORTE >> 4) & 0x1)
#define BD4_PIN                  GPIO_PIN_RE4


// *****************************************************************************
/* GPIO Port

  Summary:
    Identifies the available GPIO Ports.

  Description:
    This enumeration identifies the available GPIO Ports.

  Remarks:
    The caller should not rely on the specific numbers assigned to any of
    these values as they may change from one processor to the next.

    Not all ports are available on all devices.  Refer to the specific
    device data sheet to determine which ports are supported.
*/

typedef enum
{
    GPIO_PORT_A = 0,
    GPIO_PORT_B = 1,
    GPIO_PORT_C = 2,
    GPIO_PORT_D = 3,
    GPIO_PORT_E = 4,
    GPIO_PORT_F = 5,
    GPIO_PORT_G = 6,
} GPIO_PORT;

// *****************************************************************************
/* GPIO Port Pins

  Summary:
    Identifies the available GPIO port pins.

  Description:
    This enumeration identifies the available GPIO port pins.

  Remarks:
    The caller should not rely on the specific numbers assigned to any of
    these values as they may change from one processor to the next.

    Not all pins are available on all devices.  Refer to the specific
    device data sheet to determine which pins are supported.
*/

typedef enum
{
    GPIO_PIN_RA0 = 0,
    GPIO_PIN_RA1 = 1,
    GPIO_PIN_RA2 = 2,
    GPIO_PIN_RA3 = 3,
    GPIO_PIN_RA4 = 4,
    GPIO_PIN_RA5 = 5,
    GPIO_PIN_RA6 = 6,
    GPIO_PIN_RA7 = 7,
    GPIO_PIN_RA9 = 9,
    GPIO_PIN_RA10 = 10,
    GPIO_PIN_RA14 = 14,
    GPIO_PIN_RA15 = 15,
    GPIO_PIN_RB0 = 16,
    GPIO_PIN_RB1 = 17,
    GPIO_PIN_RB2 = 18,
    GPIO_PIN_RB3 = 19,
    GPIO_PIN_RB4 = 20,
    GPIO_PIN_RB5 = 21,
    GPIO_PIN_RB6 = 22,
    GPIO_PIN_RB7 = 23,
    GPIO_PIN_RB8 = 24,
    GPIO_PIN_RB9 = 25,
    GPIO_PIN_RB10 = 26,
    GPIO_PIN_RB11 = 27,
    GPIO_PIN_RB12 = 28,
    GPIO_PIN_RB13 = 29,
    GPIO_PIN_RB14 = 30,
    GPIO_PIN_RB15 = 31,
    GPIO_PIN_RC1 = 33,
    GPIO_PIN_RC2 = 34,
    GPIO_PIN_RC3 = 35,
    GPIO_PIN_RC4 = 36,
    GPIO_PIN_RC12 = 44,
    GPIO_PIN_RC13 = 45,
    GPIO_PIN_RC14 = 46,
    GPIO_PIN_RC15 = 47,
    GPIO_PIN_RD0 = 48,
    GPIO_PIN_RD1 = 49,
    GPIO_PIN_RD2 = 50,
    GPIO_PIN_RD3 = 51,
    GPIO_PIN_RD4 = 52,
    GPIO_PIN_RD5 = 53,
    GPIO_PIN_RD9 = 57,
    GPIO_PIN_RD10 = 58,
    GPIO_PIN_RD11 = 59,
    GPIO_PIN_RD12 = 60,
    GPIO_PIN_RD13 = 61,
    GPIO_PIN_RD14 = 62,
    GPIO_PIN_RD15 = 63,
    GPIO_PIN_RE0 = 64,
    GPIO_PIN_RE1 = 65,
    GPIO_PIN_RE2 = 66,
    GPIO_PIN_RE3 = 67,
    GPIO_PIN_RE4 = 68,
    GPIO_PIN_RE5 = 69,
    GPIO_PIN_RE6 = 70,
    GPIO_PIN_RE7 = 71,
    GPIO_PIN_RE8 = 72,
    GPIO_PIN_RE9 = 73,
    GPIO_PIN_RF0 = 80,
    GPIO_PIN_RF1 = 81,
    GPIO_PIN_RF2 = 82,
    GPIO_PIN_RF3 = 83,
    GPIO_PIN_RF4 = 84,
    GPIO_PIN_RF5 = 85,
    GPIO_PIN_RF8 = 88,
    GPIO_PIN_RF12 = 92,
    GPIO_PIN_RF13 = 93,
    GPIO_PIN_RG0 = 96,
    GPIO_PIN_RG1 = 97,
    GPIO_PIN_RG6 = 102,
    GPIO_PIN_RG7 = 103,
    GPIO_PIN_RG8 = 104,
    GPIO_PIN_RG9 = 105,
    GPIO_PIN_RG12 = 108,
    GPIO_PIN_RG13 = 109,
    GPIO_PIN_RG14 = 110,
    GPIO_PIN_RG15 = 111,

    /* This element should not be used in any of the GPIO APIs.
       It will be used by other modules or application to denote that none of the GPIO Pin is used */
    GPIO_PIN_NONE = -1

} GPIO_PIN;


void GPIO_Initialize(void);

// *****************************************************************************
// *****************************************************************************
// Section: GPIO Functions which operates on multiple pins of a port
// *****************************************************************************
// *****************************************************************************

uint32_t GPIO_PortRead(GPIO_PORT port);

void GPIO_PortWrite(GPIO_PORT port, uint32_t mask, uint32_t value);

uint32_t GPIO_PortLatchRead ( GPIO_PORT port );

void GPIO_PortSet(GPIO_PORT port, uint32_t mask);

void GPIO_PortClear(GPIO_PORT port, uint32_t mask);

void GPIO_PortToggle(GPIO_PORT port, uint32_t mask);

void GPIO_PortInputEnable(GPIO_PORT port, uint32_t mask);

void GPIO_PortOutputEnable(GPIO_PORT port, uint32_t mask);

// *****************************************************************************
// *****************************************************************************
// Section: GPIO Functions which operates on one pin at a time
// *****************************************************************************
// *****************************************************************************

static inline void GPIO_PinWrite(GPIO_PIN pin, bool value)
{
    GPIO_PortWrite((GPIO_PORT)(pin>>4), (uint32_t)(0x1) << (pin & 0xF), (uint32_t)(value) << (pin & 0xF));
}

static inline bool GPIO_PinRead(GPIO_PIN pin)
{
    return (bool)(((GPIO_PortRead((GPIO_PORT)(pin>>4))) >> (pin & 0xF)) & 0x1);
}

static inline bool GPIO_PinLatchRead(GPIO_PIN pin)
{
    return (bool)((GPIO_PortLatchRead((GPIO_PORT)(pin>>4)) >> (pin & 0xF)) & 0x1);
}

static inline void GPIO_PinToggle(GPIO_PIN pin)
{
    GPIO_PortToggle((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}

static inline void GPIO_PinSet(GPIO_PIN pin)
{
    GPIO_PortSet((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}

static inline void GPIO_PinClear(GPIO_PIN pin)
{
    GPIO_PortClear((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}

static inline void GPIO_PinInputEnable(GPIO_PIN pin)
{
    GPIO_PortInputEnable((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}

static inline void GPIO_PinOutputEnable(GPIO_PIN pin)
{
    GPIO_PortOutputEnable((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}


// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif
// DOM-IGNORE-END
#endif // PLIB_GPIO_H
