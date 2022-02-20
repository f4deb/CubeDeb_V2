#ifndef _FREQUENCY_COUTER_UTILS_H   
#define _FREQUENCY_COUTER_UTILS_H

#include "../../common.h"
#include "freqencyCounterStream.h"

FrequencyCounterStream* getFrequencyCounterStream(uint16_t frequencyCounterIndex);

FrequencyCounterStream*  initFrequencyCounterStreamUtils(FrequencyCounterStream* frequencyCounterStream, uint16_t frequencyCounterIndex,enum FrequencyCounterType frequencyCounterType);

#endif 