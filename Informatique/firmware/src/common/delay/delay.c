#include "delay.h"
#include "definitions.h"

void delayMicroSecs(uint32_t microSeconds) {
    CORETIMER_DelayMs( microSeconds);
}

void delayMilliSecs(uint32_t milliSeconds) {
    CORETIMER_DelayUs( milliSeconds);
}
