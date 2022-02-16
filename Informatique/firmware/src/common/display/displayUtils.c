#include "displayUtils.h"

#include "displayStream.h"
#include <string.h>

//#include "display.h"

#include "../../common/IO/buffer/buffer.h"
#include "../../common/IO/printWriter/printWriter.h"
#include "../../common/system/system.h"

static DisplayStream* displayStream[100];

DisplayStream* getDisplayStream(uint16_t displayIndex){
    return (DisplayStream*)&displayStream[displayIndex];
}


void setPosX (OutputStream* outputStream, uint16_t posX){
    DisplayStream* displayStream = &(outputStream->object);
    displayStream->posX = posX;
}


uint16_t getPosX(OutputStream* outputStream){
    DisplayStream* displayStream = &(outputStream->object);
    return displayStream->posX;
}

void setPosY(OutputStream* outputStream, uint16_t posY){
    DisplayStream* displayStream = &(outputStream->object);
    displayStream->posY = posY;
}

uint16_t getPosY(OutputStream* outputStream){
    DisplayStream* displayStream = &(outputStream->object);
    return displayStream->posY;  
}
void setIntensity (OutputStream* outputStream, uint8_t intensity){
    DisplayStream* displayStream = &(outputStream->object);

    displayStream->intensity = intensity;
}


void initDisplayUtils (DisplayStream* displayStream, enum DisplayType displayType){
    displayStream->displayType = displayType;
}

DisplayStream*  initDisplayStreamUtils(DisplayStream* displayStream, uint16_t displayIndex,enum DisplayType displayType) {
    
    initDisplayUtils(displayStream, displayType);
    
    
    return getDisplayStream(displayIndex);
}