#include "mainCubeMeteo.h"
#include "definitions.h"                // SYS function prototypes

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdio.h>
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <string.h>
#include "definitions.h"                // SYS function prototypes

#include "../common/common.h"

//#include "../common/IO/buffer/buffer.h"
#include "../common/IO/printWriter/printWriter.h"
//#include "../common/IO/outputStream/outputStream.h"

#include "../common/led/led.h"
#include "../common/I2C/I2CConfig.h"

//#include "../common/led/led.h"
#include "../common/system/system.h"
#include "../common/timer1/timer1.h"

#include "../common/uart5/uart5.h"

//#include "../common/serial/serial.h"
#include "../common/serial/serialoutputStream.h"

#include "cubeCommon.h"


#include "../drivers/PCF8563/PCF8563.h"
#include "../drivers/LM75A/LM75A.h"
#include "../drivers/SAA1064T/SAA1064T.h"

#include "../common/7seg/7segments.h"
#include "../common/7seg/7segmentsOutputStream.h"

#include "../common/clock/clock.h"

#include "../common/sensor/temperature/temperature.h"




char messageStart[] = "****  UART5 echo demo: Non-blocking Transfer with the interrupt  ****\r\n\
**** Type 10 characters. The received characters are echoed back, and the LED is toggled ****\r\n";

char messageError[] = "**** UART error occurred ****\r\n";


char receiveBuffer[RX_BUFFER_SIZE] = {};
char echoBuffer[RX_BUFFER_SIZE + 4] = {};

uint8_t txBuffer[50];
uint8_t rxBuffer[10];
//volatile bool txThresholdEventReceived = false;
volatile bool rxThresholdEventReceived = false;
                uint32_t nBytes = 0; 

//--------------- DEBUG Stream 
static OutputStream* debugOutputStream;


//--------------- Temperature Stream
static Temperature* tempSensorCpuStream;
static Temperature* tempSensorExt1Stream;
//---------------  Clock Stream
static Clock* clockCPUStream;

//--------------- 7 Segments Stream
static OutputStream* screen7SegCpu;
//static OutputStream* screen7SegExt1;

//--------------- Input Capture Value
static uint32_t capturedValue[20];
volatile uint8_t captureIndex = 0;

//--------------- Timing Synchronisation
static uint16_t timingSync;


uint16_t mesure_time(void){
    int i;
    uint16_t distance = 0;
    for (i=0;i<4;i++){
        while(!ICAP1_CaptureStatusGet());

        capturedValue[captureIndex++] = ICAP1_CaptureBufferRead();
        capturedValue[captureIndex++] = TMR4;
        if ( captureIndex > 4){
                      
            if (capturedValue[4]>capturedValue[2]){
                distance = ((capturedValue[4]-capturedValue[2])*17)/10000;
            }
            else {
                distance = ((capturedValue[2]-capturedValue[4])*17)/10000;
            }
            
        captureIndex = 0;
        }
    }

    return distance;
}


void ws2812b0(void){
    uint32_t time0 = TMR4;   
    uint32_t time1 = TMR4;
    time0 = TMR4;
        IO1_Clear();
        while (time1 < time0 + 37){
            time1 = TMR4;
        } 
        time0 = TMR4;
        IO1_Set();
        while (time1 < time0 + 75){
            time1 = TMR4;
        }    
}

void ws2812b1(void){
    uint32_t time0 = TMR4;   
    uint32_t time1 = TMR4;
    time0 = TMR4;
        IO1_Clear();
        while (time1 < time0 + 75){
            time1 = TMR4;
        } 
        time0 = TMR4;
        IO1_Set();
        while (time1 < time0 + 37){
            time1 = TMR4;
        }    
}

void ws2812bReset (void){
    IO1_Clear();
    delayMicroSecs(50);
}
    
    
    
void ws2812b (void){

    TMR4_Start();
    int i;
    while (1){
        
                       


        
        for (i=0;i<24;i++){
            ws2812b1();

        }   
        for (i=0;i<24;i++){

            ws2812b1();
        }    
        for (i=0;i<24;i++){
            ws2812b1();

        }    
       delayMilliSecs(500); 
       ws2812bReset();
    }
}



// ***************************************************************************************** //
// ***************************************************************************************** //
// **********************************   INIT MAIN CUBE   *********************************** //
// ***************************************************************************************** //
// ***************************************************************************************** //


void initMainCube (void) {
    
// Define the name of the Board    
    setBoardName (BOARD_NAME);
    
// Define the version of the Board
    setBoardVersion(BOARD_VERSION);
    
//CPU LED initialisation    
    initLed(LED1RED,LED1GREEN,LED2RED,LED2GREEN);
    
//TIMER 1 initialisation
    initTmr1();

//TIMER 2 initialisation
    TMR2_Start();
    
//TIMER 4 initialisation
    TMR4_Start();

//INPUT CAPTURE 1 Enable    
    ICAP1_Enable();

//OUPTUT COMPARE 3 Enable    
    OCMP3_Enable();
    OC3RS = 1000;//10�s      resolution => 1 = 10ns

    // I2C1 initialisation interruption
    I2C1_CallbackRegister(MyI2CCallback, NULL);
    
    initCubeCommon();    
    
    // initialise driver et flux pour le capteur de temperature interne
    tempSensorCpuStream = initTemperatureLM75A(getTemperatureStream(TEMP_SENSOR_CPU),TEMP_SENSOR_CPU, LM75_ADDRESS_0);

    // initialise driver et flux pour le capteur de temperature externe 1
    tempSensorExt1Stream = initTemperatureLM75A(getTemperatureStream(TEMP_SENSOR_EXT1),TEMP_SENSOR_EXT1, LM75_ADDRESS_1);
   
    // initialise driver et flux pour l horloge interne
    clockCPUStream = initClockPCF8563(getClockStream(CLOCK_CPU),CLOCK_CPU,PCF8563_ADDRESS_0);
    
    // initialise UART 
    debugOutputStream = initSerialOutputStream(getSerialOutputStream(SERIAL_PORT_5),SERIAL_PORT_5);
    
    // initialise afficheur driver et flux pour afficheur 7 Segments de la carte CPU
    screen7SegCpu = initSAA1064T(get7SegOutpuStream(SAA1064_PRINT_7SEG_CPU), SAA1064_ADDR_0);  
    
    // Set to 0 the Timing Synchronisation
    timingSync = 0;

    // Print the Name and the Version on DebugPort
    appendString(debugOutputStream,getBoardName());
    appendStringLN(debugOutputStream,getBoardVersion());
    
    // Print the Name and the Version on DebugPort
    appendString(screen7SegCpu,getBoardVersion());   
}

// ***************************************************************************************** //
// ***************************************************************************************** //
// *************************************   MAIN CUBE   ************************************* //
// ***************************************************************************************** //
// ***************************************************************************************** //

void mainCube (void){
     
    ClockData* clockParam = &(clockCPUStream->clockData);
    clockParam->second = 0x41;
    clockParam->minute = 0x31;
    clockParam->hour = 0x22;
    clockParam->day = 0x02;
    clockParam->dayofweek = 0x21;
    clockParam->month = 0x11;
    clockParam->year = 0x21;
    
    //setClock(clockCPUStream,clockParam);
    
    if (getIsTmr1Expired() == true) {

        setIsTmr1Expired(false);

//Timing Synchronisation
    //- 1/2    
        led2GreenToggle();
        
        ws2812b();
            
        switch (timingSync) {
            case 2: 
                appendDot(screen7SegCpu,4);
                appendString(screen7SegCpu, readSensorValueAsStringFor7Seg(tempSensorCpuStream));
                printClock(debugOutputStream,getClockStream(CLOCK_CPU));
                appendString(debugOutputStream,"Temperature Interne: "); 
                appendString(debugOutputStream, readSensorValueAsString(tempSensorCpuStream));
                appendString(debugOutputStream, "deg");
                append(debugOutputStream,LF);  
                break;
           
            case 4:
                appendDot(screen7SegCpu,4);
                appendString(screen7SegCpu, readSensorValueAsStringFor7Seg(tempSensorExt1Stream));
                printClock(debugOutputStream,getClockStream(CLOCK_CPU));
                appendString(debugOutputStream,"Temperature Externe: ");
                appendString(debugOutputStream, readSensorValueAsString(tempSensorExt1Stream));            
                appendString(debugOutputStream, "deg");
                append(debugOutputStream,LF);
                break;
            
            case 6:
                printClock(debugOutputStream,getClockStream(CLOCK_CPU));
                appendStringAndDec(debugOutputStream,"Distance en mm :",mesure_time()); 
                appendLF(debugOutputStream);
                appendDot(screen7SegCpu,0);  
                appendDec4AsString(screen7SegCpu,mesure_time());           
                break;
            
            default : 
                //appendDec(debugOutputStream, timingSync);
                appendCRLF(debugOutputStream);                         
        }    
        timingSync++;
        if (timingSync >6 ) {
            timingSync = 1;
        }    
    }            
}