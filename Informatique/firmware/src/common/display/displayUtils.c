#include "displayUtils.h"

#include "displayStream.h"
#include <string.h>

#include "display.h"

#include "../../common/IO/buffer/buffer.h"
#include "../../common/IO/printWriter/printWriter.h"
#include "../../common/system/system.h"



static DisplayStream* displayStream[100];

DisplayStream* getDisplayStream(uint16_t displayIndex){
    return (DisplayStream*)&displayStream[displayIndex];
}


void setPosX(DisplayStream* displayStream, uint16_t posX){
    //_SetPosX(display, posX);
}

uint16_t getPosX(DisplayStream* displayStream){
    return 0;
}


void setPosY(DisplayStream* displayStream, uint16_t posY){
    
}

uint16_t getPosY(DisplayStream* displayStream){
    return 0;
    
}

void initDisplayUtils (DisplayStream* displayStream){
    displayStream->SetPosX = setPosX;
    displayStream->GetPosX = getPosX;
    displayStream->SetPosY = setPosY;
    displayStream->GetPosY = getPosY;
}

DisplayStream*  initDisplayStreamUtils(DisplayStream* displayStream, uint16_t displayIndex) {
    
    initDisplayUtils(displayStream);
    
    
    return getDisplayStream(displayIndex);
}