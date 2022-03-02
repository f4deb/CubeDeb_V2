#include "displayStream.h"

#include <string.h>

#include "../../common/IO/buffer/buffer.h"
#include "../../common/IO/printWriter/printWriter.h"
#include "../../common/system/system.h"


void  initDisplayStream(DisplayStream* displayStream,
        enum DisplayType displayType,
        OpenDisplayStreamFunction* openDisplayStream,
        CloseDisplayStreamFunction* closeDisplayStream,
        uint16_t displayIndex,
        char string[16]) {   
    displayStream->displayType = displayType;
    displayStream->openDisplayStream = openDisplayStream;
    displayStream->closeDisplayStream = closeDisplayStream;
    displayStream->displayIndex = displayIndex;
    displayStream->string = string;
}






