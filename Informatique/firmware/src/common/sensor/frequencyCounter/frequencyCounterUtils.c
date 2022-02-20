#include "frequencyCounterUtils.h"

#include "freqencyCounterStream.h"
#include <string.h>

#include "../../common/IO/buffer/buffer.h"
#include "../../common/IO/printWriter/printWriter.h"
#include "../../common/system/system.h"

static FrequencyCounterStream* frequencyCounterStream[100];

FrequencyCounterStream* getFrequencyCounterStream(uint16_t frequencyCounterIndex){
    return (FrequencyCounterStream*)&frequencyCounterStream[frequencyCounterIndex];
}

void initFrequencyCounterUtils (FrequencyCounterStream* frequencyCounterStream, enum FrequencyCounterType frequencyCounterType){
    frequencyCounterStream->frequencyCounterType = frequencyCounterType;
}

FrequencyCounterStream*  initFrequencyCounterStreamUtils(FrequencyCounterStream* frequencyCounterStream, uint16_t frequencyCounterIndex,enum FrequencyCounterType frequencyCounterType) {
    
    initFrequencyCounterUtils(frequencyCounterStream, frequencyCounterType);
    
    
    return getFrequencyCounterStream(frequencyCounterIndex);
}