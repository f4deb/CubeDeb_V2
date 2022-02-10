#include "displayStream.h"

#include <string.h>

#include "../../common/IO/buffer/buffer.h"
#include "../../common/IO/printWriter/printWriter.h"
#include "../../common/system/system.h"


void  initDisplayStream(DisplayStream* displayStream,
        OpenDisplayStreamFunction* openDisplayStream,
        CloseDisplayStreamFunction* closeDisplayStream,
        SetPosXFunction* SetPosX,
        GetPosXFunction* GetPosX,
        SetPosYFunction* SetPosY,
        GetPosYFunction* GetPosY,
        SetPowerModeFunction* SetPowerMode,
        uint16_t displayIndex,
        DisplayData displayData) {    
    displayStream->openDisplayStream = openDisplayStream;
    displayStream->closeDisplayStream = closeDisplayStream;
    displayStream->SetPosX = SetPosX;
    displayStream->GetPosX = GetPosX;
    displayStream->SetPosY = SetPosY;
    displayStream->GetPosY = GetPosY;    
    displayStream->SetPowerMode = SetPowerMode;
    displayStream->displayIndex = displayIndex;
    displayStream->displayData = displayData;
}






