#include "frequencyCounter.h"

#include "freqencyCounterStream.h"
#include "../../common.h"

/**********************
 * Internal Interface *
 *********************/

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
//                appendStringAndDec(debugOutputStream,"Count : ", count);
                // Stop if no input signal
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



FrequencyCounterStream* initFrequencyCounterLocal(FrequencyCounterStream* frequencyCounterStream, uint16_t I2C_ADDRESS, uint16_t streamName, enum FrequencyCounterType type) {
    //return initFrequencyCounterStream(frequencyCounterStream, I2C_ADDRESS, type);
}
