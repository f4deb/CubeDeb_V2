#include "displayStream.h"

#include <string.h>

#include "../../common/IO/buffer/buffer.h"
#include "../../common/IO/printWriter/printWriter.h"
#include "../../common/system/system.h"


void  initDisplayStream(DisplayStream* displayStream,
        enum DisplayType displayType,
        OpenDisplayStreamFunction* openDisplayStream,
        CloseDisplayStreamFunction* closeDisplayStream,
        SetPosXFunction* SetPosX,
        GetPosXFunction* GetPosX,
        SetPosYFunction* SetPosY,
        GetPosYFunction* GetPosY,
        SetIntensityFunction* SetIntensity,       
        SetPowerModeFunction* SetPowerMode,
        uint16_t displayIndex,
        char charMap[16],
        DisplayData displayData) {   
    displayStream->displayType = displayType;
    displayStream->openDisplayStream = openDisplayStream;
    displayStream->closeDisplayStream = closeDisplayStream;
    displayStream->SetPosX = SetPosX;
    displayStream->GetPosX = GetPosX;
    displayStream->SetPosY = SetPosY;
    displayStream->GetPosY = GetPosY;    
    displayStream->SetPowerMode = SetPowerMode;
    displayStream->SetIntensity = SetIntensity;
    displayStream->displayIndex = displayIndex;
    displayStream->charMap = charMap;
    displayStream->displayData = displayData;
}






