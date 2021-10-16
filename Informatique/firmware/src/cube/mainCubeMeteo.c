#include "mainCubeMeteo.h"
#include "definitions.h"                // SYS function prototypes

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdio.h>
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <string.h>
#include "definitions.h"                // SYS function prototypes
#include "../common/7seg/7segments.h"

#include "../common/7seg/7segmentsOutputStream.h"

//#include "../../cube/cubeCommon7Seg.h"
#include "../common/common.h"

#include "../common/IO/buffer/buffer.h"
#include "../common/IO/outputStream/outputStream.h"
#include "../common/IO/printWriter/printWriter.h"
#include "../common/led/led.h"
#include "../common/I2C/I2CConfig.h"
#include "../common/led/led.h"
#include "../common/system/system.h"
#include "../common/timer1/timer1.h"
#include "../common/uart5/uart5.h"
#include "../common/sensor/temperature/temperature.h"
#include "../common/sensor/temperature/temperatureStream.h"
#include "../common/serial/serial.h"
#include "../common/serial/serialoutputStream.h"

#include "cubeCommon.h"

#include "../drivers/LM75A/LM75A.h"



//static int SCREEN_7SEG_CPU;


//LED Gestion        
static bool led2 = true;


char messageStart[] = "****  UART5 echo demo: Non-blocking Transfer with the interrupt  ****\r\n\
**** Type 10 characters. The received characters are echoed back, and the LED is toggled ****\r\n";

char messageError[] = "**** UART error occurred ****\r\n";


char receiveBuffer[RX_BUFFER_SIZE] = {};
char echoBuffer[RX_BUFFER_SIZE + 4] = {};

uint8_t txBuffer[50];
uint8_t rxBuffer[10];
volatile uint32_t nBytesRead = 0;
volatile bool txThresholdEventReceived = false;
volatile bool rxThresholdEventReceived = false;
                uint32_t nBytes = 0; 





// DEBUG Stream 
static OutputStream* debugOutputStream;
// Temperature Stream
static Temperature* tempSensorCpuStream;
static Temperature* tempSensorExt1Stream;



void usartReadEventHandler(UART_EVENT event, uintptr_t context )
{
    uint32_t nBytesAvailable = 0;
    
    if (event == UART_EVENT_READ_THRESHOLD_REACHED)
    {
        /* Receiver should atleast have the thershold number of bytes in the ring buffer */
        nBytesAvailable = UART5_ReadCountGet();
        
        nBytesRead += UART5_Read((uint8_t*)&rxBuffer[nBytesRead], nBytesAvailable);                          
    }
}

void usartWriteEventHandler(UART_EVENT event, uintptr_t context )
{
    txThresholdEventReceived = true;
}



void initMainCube (void) {
    
    
    setBoardName (BOARD_NAME);
    
//CPU LED initialisation    
    initLed(LED1RED,LED1GREEN,LED2RED,LED2GREEN);
    
//TIMER 1 initialisation
    initTmr1();
    
//Uart5 initialisation

    //initUart5(getBoardName(), strlen(getBoardName()));
    
// I2C1 initialisation
    I2C1_Initialize();
    I2C1_CallbackRegister(MyI2CCallback, NULL);
    
// Debug OutputStream init    
    //initDebugOutputStream(DEBUG_OUTPUTSTREAM);    
 
    initCubeCommon();
    
    
        // initialise driver et flux pour le capteur de temperature interne
    tempSensorCpuStream = initTemperatureLM75A(getTemperatureStream(TEMP_SENSOR_CPU),TEMP_SENSOR_CPU, LM75_ADDRESS_0);
    //tempSensorCpuStream = getTemperatureStream(TEMP_SENSOR_CPU);
    // initialise driver et flux pour le capteur de temperature externe 1
    tempSensorExt1Stream = initTemperatureLM75A(getTemperatureStream(TEMP_SENSOR_EXT1),TEMP_SENSOR_EXT1, LM75_ADDRESS_1);
    //tempSensorExt1Stream = getTemperatureStream(TEMP_SENSOR_EXT1);
    
        // initialise UART 
    debugOutputStream = initSerialOutputStream(getSerialOutputStream(SERIAL_PORT_5),SERIAL_PORT_5);
    
    
    
    
    
    
        /* Register a callback for write events */
    UART5_WriteCallbackRegister(usartWriteEventHandler, (uintptr_t) NULL);
    
    /* Register a callback for read events */
    UART5_ReadCallbackRegister(usartReadEventHandler, (uintptr_t) NULL);   
     
    
    
    
    appendString(debugOutputStream,getBoardName());
    
    

    

    
     /* Print the size of the read buffer on the terminal */
    nBytes = sprintf((char*)txBuffer, "RX Buffer Size = %d\r\n", (int)UART5_ReadBufferSizeGet());
    
    UART5_Write((uint8_t*)txBuffer, nBytes);  
    
    /* Print the size of the write buffer on the terminal */
    nBytes = sprintf((char*)txBuffer, "TX Buffer Size = %d\r\n", (int)UART5_WriteBufferSizeGet());
    
    UART5_Write((uint8_t*)txBuffer, nBytes);    
    
    UART5_Write((uint8_t*)"Adding 10 characters to the TX buffer - ", sizeof("Adding 10 characters to the TX buffer - "));   
    
    
    
       
    }

void mainCube (void){
    
     UART5_Write((uint8_t*)"Adding 10 characters to the TX buffer - ", sizeof("Adding 10 characters to the TX buffer - "));   

    
    /* Wait for all bytes to be transmitted out */
    while (UART5_WriteCountGet() != 0);    
    
    UART5_Write((uint8_t*)"0123456789012345678901234567890123456789012345678901234567890123456789012345678901234567", 88);   
    
        nBytes = sprintf((char*)txBuffer, "\r\nFree Space in Trans Buf = %d  \r\n", (int)UART5_WriteFreeBufferCountGet());

    UART5_Write((uint8_t*)txBuffer, nBytes); 
        /* Let's enable notifications to get notified when the TX buffer is empty */
    UART5_WriteThresholdSet(UART5_WriteBufferSizeGet());   
    
    /* Enable notifications */
    UART5_WriteNotificationEnable(true, false);
    
    /* Wait for the TX buffer to become empty. Flag "txThresholdEventReceived" is set in the callback. */
    while (txThresholdEventReceived == false);
    
        txThresholdEventReceived = false;   
    
        
    /* Print the amount of free space available in the TX buffer. This should be 10 bytes less than the configured write buffer size. */
    nBytes = sprintf((char*)txBuffer, "\r\nFree Space in Transmitt Buffer = %d\r\n", (int)UART5_WriteFreeBufferCountGet());

    UART5_Write((uint8_t*)txBuffer, nBytes);    
    
    /* Let's enable notifications to get notified when the TX buffer is empty */
    UART5_WriteThresholdSet(UART5_WriteBufferSizeGet());   
    
    /* Enable notifications */
    UART5_WriteNotificationEnable(true, false);
    
    /* Wait for the TX buffer to become empty. Flag "txThresholdEventReceived" is set in the callback. */
    while (txThresholdEventReceived == false);
    
        txThresholdEventReceived = false;   
    
    /* Disable TX notifications */
    UART5_WriteNotificationEnable(false, false);
    
    UART5_Write((uint8_t*)"Enter 10 characters. The received characters are echoed back. \r\n>", sizeof("Enter 10 characters. The received characters are echoed back. \r\n>"));               
            
    /* Wait till 10 (or more) characters are received */
    while (UART5_ReadCountGet() < 10);
    
    /* At-least 10 characters are available in the RX buffer. Read out into the application buffer */
    UART5_Read((uint8_t*)rxBuffer, 10);  
    
    /* Echo the received data */
    UART5_Write((uint8_t*)rxBuffer, 10);    
    
    /* Now demonstrating receiver notifications */
    UART5_Write((uint8_t*)"\r\n Now turning on RX notifications \r\n>", sizeof("\r\n Now turning on RX notifications \r\n>"));
    
    /* For demonstration purpose, set a threshold value to receive a callback after every 5 characters are received */
    UART5_ReadThresholdSet(5);
    
    /* Enable RX event notifications */
    UART5_ReadNotificationEnable(true, false);
                   
    while(1)
    {
        /* Wait until at-least 10 characters are entered by the user */
        while (nBytesRead < 2);    
    
        /* Echo the received data */
        UART5_Write((uint8_t*)rxBuffer, nBytesRead);
        
        UART5_Write((uint8_t*)"\r\n>", 3);

        nBytesRead = 0;
    }

    
    
    //appendStringAndDecLN(debugOutputStream,"RX Buffer Size = ",nBytes);

    
    
    
    
    
    
    
    
    

    if (getIsTmr1Expired() == true) {

        setIsTmr1Expired(false);

        if (led2 == true ) {
            led1RedOn();
            led2GreenOff();

            led2 = false;             
            
            appendDot(SCREEN_7SEG_CPU,4);
            appendString(SCREEN_7SEG_CPU, readSensorValueAsStringFor7Seg(tempSensorCpuStream));
            appendString(debugOutputStream,"Temperature Interne: "); 
            appendString(debugOutputStream, readSensorValueAsString(tempSensorCpuStream));
            appendString(debugOutputStream, "deg");
            append(debugOutputStream,LF);       
        }
        else {
            led2GreenOn();
            led1RedOff();
            led2 = true;
            
            appendDot(SCREEN_7SEG_CPU,4);
            appendString(SCREEN_7SEG_CPU, readSensorValueAsStringFor7Seg(tempSensorExt1Stream));
            appendString(debugOutputStream,"Temperature Externe: ");
            appendString(debugOutputStream, readSensorValueAsString(tempSensorExt1Stream));            
            appendString(debugOutputStream, "deg");
            append(debugOutputStream,LF);
        }
    }            
}