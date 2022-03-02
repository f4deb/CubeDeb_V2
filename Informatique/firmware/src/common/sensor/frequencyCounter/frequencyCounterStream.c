#include "freqencyCounterStream.h"

#include <string.h>

#include "../../common/IO/buffer/buffer.h"
#include "../../common/IO/printWriter/printWriter.h"
#include "../../common/system/system.h"


void  initFrequencyCounterStream(FrequencyCounterStream* frequencyCounterStream,
        enum FrequencyCounterType frequencyCounterType,
        OpenFrequencyCounterStreamFunction* openFrequencyCounterStream,
        CloseFrequencyCounterStreamFunction* closeFrequencyCounterStream,
        uint16_t frequencyCounterIndex,
        char string[16]) {   
    frequencyCounterStream->frequencyCounterType = frequencyCounterType;
    frequencyCounterStream->openFrequencyCounterStream = openFrequencyCounterStream;
    frequencyCounterStream->closeFrequencyCounterStream = closeFrequencyCounterStream;
    frequencyCounterStream->frequencyCounterIndex = frequencyCounterIndex;
    frequencyCounterStream->string = string;
}






