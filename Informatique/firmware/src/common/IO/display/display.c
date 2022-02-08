#include "display.h"
#include "displayStream.h"


void setPosX(Display* display, int posX){
    _SetPosX(display, posX);
}







void _openDisplay(Display* display, int param1){
    
}

void _closeDisplay(Display* display){
    
}

void _SetPosX(Display* display, int posX){
    display->SetPosX = posX;
}

void _SetPosY(Display* display, int posY){
    display->SetPosY = posY;
}

void _SetPowerMode(Display* display, bool OnOff){
    
}



Display* initDisplay(Display* display, uint16_t displayIndex) {
    return initDisplayStream(display, _openDisplay, _closeDisplay, _SetPosX, _SetPosY, _SetPowerMode,displayIndex);
}