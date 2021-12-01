#include "HC-SR04.h"
#include "../../common/delay/delay.h"

//--------------- Input Capture Value
static uint32_t capturedValue[20];
volatile uint8_t captureIndex = 0;


uint32_t _HCSR04_readDistanceValue (Distance* distance){
    TMR4_Start();

    int i;
    uint16_t dist = 0;
    for (i=0;i<4;i++){
        while(!ICAP1_CaptureStatusGet());

        capturedValue[captureIndex++] = ICAP1_CaptureBufferRead();
        capturedValue[captureIndex++] = TMR4;
        if ( captureIndex > 4){
                      
            if (capturedValue[4]>capturedValue[2]){
                dist = ((capturedValue[4]-capturedValue[2])*17)/10000;
            }
            else {
                dist = ((capturedValue[2]-capturedValue[4])*17)/10000;
            }
            
        captureIndex = 0;
        }
    }
}

Distance* initDistanceHCSR04(Distance* distance, uint16_t distanceIndex) {
    return initDistanceStream(distance, _HCSR04_readDistanceValue, distanceIndex);
}
