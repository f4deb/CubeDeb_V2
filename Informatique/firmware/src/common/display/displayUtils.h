#ifndef _DISPLAY_UTILS_H    
#define _DISPLAY_UTILS_H

#include "displayStream.h"
#include "../IO/outputStream/outputStream.h"

DisplayStream* getDisplayStream(uint16_t displayIndex);

void setPosX (OutputStream* outputStream, uint16_t posX);

uint16_t getPosX(OutputStream* outputStream);

void setPosY(OutputStream* outputStream, uint16_t posY);

uint16_t getPosY(OutputStream* outputStream);

void setPower (OutputStream* outputStream, uint16_t power);

void setIntensity (OutputStream* outputStream, uint8_t intensity);



DisplayStream* getDisplayStream(uint16_t displayIndex);

DisplayStream* initDisplayStreamUtils(DisplayStream* displayStream, uint16_t displayIndex, enum DisplayType displayType);


#endif 