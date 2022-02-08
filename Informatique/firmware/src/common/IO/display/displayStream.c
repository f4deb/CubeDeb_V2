#include "displayStream.h"

#include <string.h>

#include "../buffer/buffer.h"
#include "../../common/IO/printWriter/printWriter.h"
#include "../../common/system/system.h"


void initDisplayStream(DisplayStream* displayStream,
        OpenDisplayStreamFunction* openDisplayStream,
        CloseDisplayStreamFunction* closeDisplayStream,
        SetPosXFunction* SetPosX,
        PowerModeFunction* PowerMode,
        FlushDisplayFunction* flush,
        int* object,
        int data) {

    displayStream->openDisplayStream = openDisplayStream;
    displayStream->closeDisplayStream = closeDisplayStream;
    displayStream->SetPosX = SetPosX;
    displayStream->PowerMode = PowerMode;
    displayStream->flush = flush;
    displayStream->object = object;
    displayStream->data = data;
}






