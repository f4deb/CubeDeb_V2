#include "display.h"

void setposX(OutputStream* outputStream, uint16_t posX){
    DisplayStream* displayStream = &(outputStream->object);
    displayStream->posX = 1;
}


uint16_t getposX(OutputStream* outputStream){
    DisplayStream* displayStream = &(outputStream->object);
    return displayStream->posX;
}