#include "mainCubeMeteo.h"

#include <definitions.h>                // SYS function prototypes
#include <math.h>
#include <stdbool.h>                    // Defines true
#include <stddef.h>                     // Defines NULL
#include <stdio.h>
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <string.h>

#include "../common/common.h"

#include "../common/ascii/7seg.h"

//#include "../common/IO/buffer/buffer.h"
#include "../common/IO/printWriter/printWriter.h"
//#include "../common/IO/outputStream/outputStream.h"

#include "../common/led/led.h"
#include "../common/I2C/I2CConfig.h"

#include "../common/delay/delay.h"
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
#include "../drivers/WS2812b/WS2812b.h"
#include "../drivers/HCSR04/HC-SR04.h"
#include "../drivers/TM1638/TM1638.h"

#include "../common/7seg/7segments.h"
#include "../common/7seg/7segmentsOutputStream.h"

#include "../common/clock/clock.h"
#include "../common/RGB/RGB.h"
#include "../common/RGB/RGBStream.h"
#include "../common/sensor/temperature/temperature.h"
#include "../common/sensor/distance/distance.h"




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

//-------------- RGB STREAM
static RGB* rgbStream;

//-------------- Distance STREAM
static Distance* distanceStream;



//--------------- Timing Synchronisation
static uint16_t timingSync;

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
    
//INPUT CAPTURE 2 Enable    
    ICAP2_Enable();

//OUPTUT COMPARE 3 Enable    
    OCMP3_Enable();
    OC3RS = 1000;//10µs      resolution => 1 = 10ns

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
    
    // initialise le flux pour l'affichage des leds RGB
    rgbStream = initRGBWS2812b(getRGBStream(0),6,0);
    
    // initialise HCSR04 driver et flux pour mesure de distance
    distanceStream = initDistanceHCSR04(getDistanceStream(0),0);
       
    // Set to 0 the Timing Synchronisation
    timingSync = 0;

    // Print the Name and the Version on DebugPort
    appendString(debugOutputStream,getBoardName());
    appendStringLN(debugOutputStream,getBoardVersion());
    
    // Print the Name and the Version on DebugPort
    appendString(screen7SegCpu,getBoardVersion());   
}


uint32_t frequencyCounter (void){
                        
 uint32_t capturedValue[20];
 volatile uint8_t captureIndex = 0;


    int i;
    uint32_t freq = 0;
    uint32_t freqMoyenne = 0; 
    int maxCapture = 16;
    int j = 0;
    

    while (j<100){
        for (i=0;i<maxCapture;i++){
                int count = 0;

            while(!ICAP2_CaptureStatusGet()){   
                appendStringAndDec(debugOutputStream,"Count : ", count);

                count++;  
                if (count > 100){
                    return 0;
                }
            }

            capturedValue[captureIndex++] = ICAP2_CaptureBufferRead();
            capturedValue[captureIndex++] = TMR4;
            if ( captureIndex > maxCapture){
                uint32_t capturedValueIndex = 0;

                if (capturedValue[capturedValueIndex+6]>capturedValue[capturedValueIndex]){
                    freq = (capturedValue[capturedValueIndex+6]-capturedValue[capturedValueIndex]);
                }
                else {
                    freq = (capturedValue[capturedValueIndex]-capturedValue[capturedValueIndex+6]);
                }
            captureIndex = 0;
            }
        }            
        freqMoyenne = freq + freqMoyenne;
        j++;    
    }
    
    freq = freqMoyenne;
    
    
    
    freq = 10000000000/((freq/3)/16);

    return freq;
}


void strToTM1638AnnodeCommon (char str[]){

    int i = 0;
    int j = 0;
    int seg = 1;
    int mask = 1;
    char car = 0x00;
    char tab[16] = {0};
    
    // Configure TM1638
    sendCommandTM1638(0x40); // auto increment
    sendCommandTM1638(0xC0); // adresse 00
    
    for (i=0;i<8;i++){
        car = ascii7Seg[str[i]];

        char car1 = car;
        
        
        for (j=0;j<8;j++){

            
            car = car1 & seg;
            seg = seg<<1;
            
            
            if (car > 0){
                tab[j*2] = (tab[j*2] | mask);
            }
            else {
                tab[j*2] = (tab[j*2] & (0xFF-mask));
            }            


        }
        
        mask = mask << 1;
        seg = 1;
      
        car = 0;
    }
    
    sendDataTM1638(tab[0]); //A
    sendDataTM1638(0); //A
    sendDataTM1638(tab[2]); //A
    sendDataTM1638(0); //A
    sendDataTM1638(tab[4]); //A
    sendDataTM1638(0); //A
    sendDataTM1638(tab[6]); //A
    sendDataTM1638(0); //A
    sendDataTM1638(tab[8]); //A
    sendDataTM1638(0); //A
    sendDataTM1638(tab[10]); //A
    sendDataTM1638(0); //A
    sendDataTM1638(tab[12]); //A
    sendDataTM1638(0); //A
    sendDataTM1638(tab[14]); //A
    sendDataTM1638(0); //A


    
    sendCommandTM1638(0x89); // Activate and controle the intensity 

}


// ***************************************************************************************** //
// ***************************************************************************************** //
// *************************************   MAIN CUBE   ************************************* //
// ***************************************************************************************** //
// ***************************************************************************************** //

void mainCube (void){
     
    ClockData* clockParam = &(clockCPUStream->clockData);
    clockParam->second = 0x41;
    clockParam->minute = 0x22;
    clockParam->hour = 0x21;
    clockParam->day = 0x06;
    clockParam->dayofweek = 0x01;
    clockParam->month = 0x01;
    clockParam->year = 0x22;
    
    //setClock(clockCPUStream,clockParam);
    
    //printClock(debugOutputStream,getClockStream(CLOCK_CPU));
    //appendStringAndDec(debugOutputStream,"Distance en mm :",mesure_time(distanceStream)); 
    //appendLF(debugOutputStream);

    if (getIsTmr1Expired() == true) {

        setIsTmr1Expired(false);
        TMR1_InterruptDisable();
        
///Timing Synchronisation
        led2GreenToggle();
        
        uint32_t volt=0;
        
        uint32_t adc_count;
        float input_voltage;
        
        #define ADC_VREF                (2.048f)
#define ADC_MAX_COUNT           (4095)
        
        
         ADCHS_ChannelConversionStart(6);      
         ADCHS_ChannelConversionStart(7); 
         ADCHS_ChannelConversionStart(8); 
         ADCHS_ChannelConversionStart(10); 
        /* Wait till ADC conversion result is available */
        while(!ADCHS_ChannelResultIsReady(ADCHS_CH6))
        {
        };
        while(!ADCHS_ChannelResultIsReady(ADCHS_CH7))
        {
        };
          while(!ADCHS_ChannelResultIsReady(ADCHS_CH8))
        {
        };
          while(!ADCHS_ChannelResultIsReady(ADCHS_CH10))
        {
        };

        /* Read the ADC result */
        adc_count = ADCHS_ChannelResultGet(ADCHS_CH6);
        input_voltage = (float)adc_count * ADC_VREF / ADC_MAX_COUNT;        
        input_voltage = input_voltage * 11500/1500;        
        appendStringAndDecf(debugOutputStream,"Tension 12V : ", input_voltage);
        append(debugOutputStream,LF);        

        adc_count = ADCHS_ChannelResultGet(ADCHS_CH7);
        input_voltage = (float)adc_count * ADC_VREF / ADC_MAX_COUNT;        
        input_voltage = input_voltage * 14700/4700;        
        appendStringAndDecf(debugOutputStream,"Tension 5VA : ", input_voltage);
        append(debugOutputStream,LF); 

        adc_count = ADCHS_ChannelResultGet(ADCHS_CH8);
        input_voltage = (float)adc_count * ADC_VREF / ADC_MAX_COUNT;        
        input_voltage = input_voltage * 14700/4700;        
        appendStringAndDecf(debugOutputStream,"Tension 5VD : ", input_voltage);        
        append(debugOutputStream,LF); 

        adc_count = ADCHS_ChannelResultGet(ADCHS_CH10);
        input_voltage = (float)adc_count * ADC_VREF / ADC_MAX_COUNT;        
        input_voltage = input_voltage * 14700/4700;        
        appendStringAndDecf(debugOutputStream,"Tension 3V3 : ", input_voltage);  
        append(debugOutputStream,LF); 
        

        
        


    append(debugOutputStream,LF); 
    appendStringAndDecLN(debugOutputStream,"Frequency(Hz) : ",frequencyCounter());


    append(debugOutputStream,LF); 
    append(debugOutputStream,LF); 
    
    int dataTM1638;
    int dataT;

//////////////////////////////////////

        
        
        strToTM1638AnnodeCommon("STEPHANE");
        
 
      
                 
                        
        switch (timingSync) {
            case 0:; 
                appendDot(screen7SegCpu,4);
                appendString(screen7SegCpu, readSensorValueAsStringFor7Seg(tempSensorCpuStream));
                printClock(debugOutputStream,getClockStream(CLOCK_CPU));
                appendString(debugOutputStream,"Temperature Interne: "); 
                appendString(debugOutputStream, readSensorValueAsString(tempSensorCpuStream));
                appendString(debugOutputStream, "deg");
                append(debugOutputStream,LF); 
              
                break;            
                
            case 1 :;
                   
                break;
                
            case 2: 
                appendDot(screen7SegCpu,4);
                appendString(screen7SegCpu, printTimeTo7Seg(getClockStream(CLOCK_CPU)));
                

                append(debugOutputStream,LF); 
                printClock(debugOutputStream,getClockStream(CLOCK_CPU));
                append(debugOutputStream,LF);  
                break;
                
            case 3 :;
                    
                break;
           
            case 4:;
                
                break;

            case 5 :;
                
                break;
            
            case 6:;
                break;
                
            case 7:   ;

                break;
            
            default : 
                //appendDec(debugOutputStream, timingSync);
                appendCRLF(debugOutputStream);                         
        }    
        timingSync++;
        if (timingSync >2 ) {
            timingSync = 0;
        }    
        TMR1_InterruptEnable();
    }            
}