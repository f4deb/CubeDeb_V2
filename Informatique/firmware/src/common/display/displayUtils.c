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
    displayStream->posX =posX;
}

uint16_t getPosX(DisplayStream* displayStream){
    return displayStream->posX;
}


void setPosY(DisplayStream* displayStream, uint16_t posY){
    
}

uint16_t getPosY(DisplayStream* displayStream){
    return 0;
    
}

void initDisplayUtils (DisplayStream* displayStream, enum DisplayType displayType){
    displayStream->displayType = displayType;
    displayStream->SetPosX = setPosX;
    displayStream->GetPosX = getPosX;
    displayStream->SetPosY = setPosY;
    displayStream->GetPosY = getPosY;
}

DisplayStream*  initDisplayStreamUtils(DisplayStream* displayStream, uint16_t displayIndex,enum DisplayType displayType) {
    
    initDisplayUtils(displayStream, displayType);
    
    
    return getDisplayStream(displayIndex);
}