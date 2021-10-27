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
#include "../common/serial/serial.h"
#include "../common/serial/serialoutputStream.h"

#include "cubeCommon.h"

#include "../common/clock/clock.h"

#include "../drivers/PCF8563/PCF8563.h"
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
//volatile bool txThresholdEventReceived = false;
volatile bool rxThresholdEventReceived = false;
                uint32_t nBytes = 0; 





//--------------- DEBUG Stream 
static OutputStream* debugOutputStream;

//--------------- I2C STREAM
    // Temperature Stream
static Temperature* tempSensorCpuStream;
static Temperature* tempSensorExt1Stream;
    // Clock Stream
static Clock* clockCPUStream;





uint32_t capturedValue[2];
volatile uint8_t captureIndex = 0;



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
    
    initCubeCommon();    
    
    // initialise driver et flux pour le capteur de temperature interne
    tempSensorCpuStream = initTemperatureLM75A(getTemperatureStream(TEMP_SENSOR_CPU),TEMP_SENSOR_CPU, LM75_ADDRESS_0);
    //tempSensorCpuStream = getTemperatureStream(TEMP_SENSOR_CPU);
    // initialise driver et flux pour le capteur de temperature externe 1
    tempSensorExt1Stream = initTemperatureLM75A(getTemperatureStream(TEMP_SENSOR_EXT1),TEMP_SENSOR_EXT1, LM75_ADDRESS_1);
    //tempSensorExt1Stream = getTemperatureStream(TEMP_SENSOR_EXT1);
    
        // initialise UART 
    debugOutputStream = initSerialOutputStream(getSerialOutputStream(SERIAL_PORT_5),SERIAL_PORT_5);
    
    clockCPUStream = initClockPCF8563(getClockStream(CLOCK_CPU),CLOCK_CPU,PCF8563_ADDRESS_0);

    
    appendString(debugOutputStream,"\n\r---------------------------------------------------------"); 
    appendString(debugOutputStream,"\n\r                    ICAP Demo                 "); 
    appendString(debugOutputStream,"\n\r---------------------------------------------------------\n\r"); 
    
    
    ICAP2_Enable();

    TMR4_Start();

    TMR3_Start();
    TMR2_Start();

    OCMP3_Enable();

    
    }

void mainCube (void){
     
    ClockData* clockParam = &(clockCPUStream->clockData);
    clockParam->second = 0x41;
    clockParam->minute = 0x35;
    clockParam->hour = 0x21;
    clockParam->day = 0x20;
    clockParam->dayofweek = 0x03;
    clockParam->month = 0x10;
    clockParam->year = 0x21;
    
    //setClock(clockCPUStream, clockParam);


    OC3RS = 62499/2; //62489 = 320ns     62488 = 640ns     62490/2 = 10ms 





    
        
   if (getIsTmr1Expired() == true) {

        setIsTmr1Expired(false);

        if (led2 == true ) {
            led1RedOn();
            led2GreenOff();

            led2 = false;             

            printClock(debugOutputStream,getClockStream(CLOCK_CPU));
           
            appendDot(SCREEN_7SEG_CPU,4);
            appendString(SCREEN_7SEG_CPU, readSensorValueAsStringFor7Seg(tempSensorCpuStream));
            appendString(debugOutputStream,"Temperature Interne: "); 
            appendString(debugOutputStream, readSensorValueAsString(tempSensorCpuStream));
            appendString(debugOutputStream, "deg");
            append(debugOutputStream,LF);  
            
            printClock(debugOutputStream,getClockStream(CLOCK_CPU));
            appendString(debugOutputStream, "Distance : ");
            appendDec(debugOutputStream,readDistance(0));
            append(debugOutputStream,LF);
            mesure_time();
        }
        else {
            led2GreenOn();
            led1RedOff();
            led2 = true;
            
            printClock(debugOutputStream,getClockStream(CLOCK_CPU));
            
            appendDot(SCREEN_7SEG_CPU,4);
            appendString(SCREEN_7SEG_CPU, readSensorValueAsStringFor7Seg(tempSensorExt1Stream));
            appendString(debugOutputStream,"Temperature Externe: ");
            appendString(debugOutputStream, readSensorValueAsString(tempSensorExt1Stream));            
            appendString(debugOutputStream, "deg");
            append(debugOutputStream,LF);
            
            printClock(debugOutputStream,getClockStream(CLOCK_CPU));
            appendString(debugOutputStream, "Distance : ");
            appendDec(debugOutputStream,readDistance(0));
            append(debugOutputStream,LF);
            mesure_time();
        }
    }            
}

void mesure_time(void){
 
            
            

        while(!ICAP2_CaptureStatusGet());

        capturedValue[captureIndex++] = ICAP2_CaptureBufferRead();

        if ( captureIndex > 0){
            uint16_t value = (capturedValue[0] - capturedValue[1]);
            appendDec(debugOutputStream,capturedValue[1]); 
            appendLF(debugOutputStream);
            appendDec(debugOutputStream,capturedValue[2]); 
            appendLF(debugOutputStream);

            appendHex4(debugOutputStream,TMR4_CounterGet()); 
            appendLF(debugOutputStream);

            appendDec(debugOutputStream,ICAP2_CaptureBufferRead()); 
            appendLF(debugOutputStream);


            captureIndex = 0;
        }
}