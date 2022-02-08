#include "displayStream.h"

#include <string.h>

#include "../buffer/buffer.h"
#include "../../common/IO/printWriter/printWriter.h"
#include "../../common/system/system.h"

static Display display[10][10];



Display* getDisplayStream(int index){
    return display[index];
}    

Display* initDisplayStream(Display* display,
        OpenDisplayFunction* openDisplay,
        CloseDisplayFunction* closeDisplay,
        SetPosXFunction* SetPosX,
        SetPosYFunction* SetPosY,
        SetPowerModeFunction* SetPowerMode,
        uint16_t displayIndex)

{
    display->openDisplay = openDisplay;
    display->closeDisplay = closeDisplay;
    display->SetPosX = SetPosX;
    display->SetPosY = SetPosY;
    display->SetPowerMode = SetPowerMode;

    return getDisplayStream(displayIndex);

}






