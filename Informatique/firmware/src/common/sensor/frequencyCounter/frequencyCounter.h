#ifndef _FREQUENCY_COUNTER_H    
#define _FREQUENCY_COUNTER_H

#include "freqencyCounterStream.h"
#include "../../common.h"

uint32_t frequencyCounter (void);


FrequencyCounterStream* initFrequencyCounterLocal(FrequencyCounterStream* frequencyCounterStream, uint16_t I2C_ADDRESS, uint16_t streamName, enum FrequencyCounterType type);

#endif