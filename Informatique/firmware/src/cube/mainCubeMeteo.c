#include "mainCubeMeteo.h"
#include "definitions.h"                // SYS function prototypes

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdio.h>
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <string.h>
#include "definitions.h"                // SYS function prototypes


#include "../../cube/cubeCommon7Seg.h"

#include "../common/IO/buffer/buffer.h"
#include "../common/IO/outputStream/outputStream.h"
#include "../common/IO/printWriter/printWriter.h"
#include "../common/led/led.h"
#include "../common/I2C/I2CConfig.h"
#include "../common/led/led.h"
#include "../common/sensor/temperature/temperatureStream.h"
#include "../common/system/system.h"
#include "../common/timer1/timer1.h"
#include "../common/uart5/uart5.h"


#include "common/7seg/7segments.h"





//LED Gestion        
static bool led2 = true;


char messageStart[] = "****  UART5 echo demo: Non-blocking Transfer with the interrupt  ****\r\n\
**** Type 10 characters. The received characters are echoed back, and the LED is toggled ****\r\n";

char messageError[] = "**** UART error occurred ****\r\n";


char receiveBuffer[RX_BUFFER_SIZE] = {};
char echoBuffer[RX_BUFFER_SIZE + 4] = {};






void initMainCube (void) {
    
    
    setBoardName (BOARD_NAME);
    
//CPU LED initialisation    
    initLed(LED1RED,LED1GREEN,LED2RED,LED2GREEN);
    
//TIMER 1 initialisation
    initTmr1();
    
//Uart5 initialisation
    initUart5(getBoardName(), strlen(getBoardName()));
    
// I2C1 initialisation
    I2C1_Initialize();
    I2C1_CallbackRegister(MyI2CCallback, NULL);
    
// Debug OutputStream init    
    initDebugOutputStream(DEBUG_OUTPUTSTREAM);    
    
    
    initCubeCommon();

    
    
}

void mainCube (void){
    

    
    
    //UART debug echo
    if(getErrorStatusUart5() == true){
        /* Send error message to console */
        setErrorStatusUart5(false);
        writeUart5 (messageError, strlen(messageError));
    }
    else if(getReadStatusUart5() == true){
        /* Echo back received buffer and Toggle LED */
        setReadStatusUart5(false);
        
        appendStream(getDebugOutputStream(),getBoardName());
        
        /*writeStringToBuffer (getTxBuffer(),getBoardName());
        writeUart5(getTxBuffer(), strlen(getTxBuffer()));
        flushBuffer(getTxBuffer());*/

        writeCharToBuffer (getTxBuffer(),'\n');
        writeCharToBuffer (getTxBuffer(),'\r');
        writeStringToBuffer (getTxBuffer(),receiveBuffer);
        writeCharToBuffer (getTxBuffer(),'\n');
        writeCharToBuffer (getTxBuffer(),'\r');
        writeCharToBuffer (getTxBuffer(),'\0');
        writeUart5(getTxBuffer(), strlen(getTxBuffer()));
        flushBuffer(getTxBuffer());


        LED1_V_Toggle();
    }
    else if(getWriteStatusUart5() == true){
        /* Submit buffer to read user data */
        setWriteStatusUart5(false);
        UART5_Read(&receiveBuffer, sizeof(receiveBuffer));
    }
    else {

    }
        
    char *str = "Err0";

    
       
    if (getIsTmr1Expired() == true) {

        setIsTmr1Expired(false);

        if (led2 == true ) {
            led1RedOn();
            led2GreenOff();

            led2 = false; 

            appendDot(get7SegOutpuStream(),4);
            appendString(get7SegOutpuStream(), readSensorValueAsString(getTemperatureStream(),LM75_ADDRESS));

        }
        else {
            led2GreenOn();
            led1RedOff();
            led2 = true;
//            print7Seg("Temp}",0x04,SAA1064_ADDR);
            //write7SegStreamChar(get7SegOutpuStream(),'a');

            appendDot(get7SegOutpuStream(),0);
            appendString(get7SegOutpuStream(),"temp}");


        }
    }            
}