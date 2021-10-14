#ifndef CUBE_COMMON_H
#define CUBE_COMMON_H

#include "../common/IO/outputStream/outputStream.h"

#include "../common/sensor/temperature/temperatureStream.h"
#include "../common/serial/serial.h"


#define SCREEN_7SEG_CPU getScreen_7Seg_CPU()
#define SCREEN_7SEG_EXT getScreen_7Seg_EXT()

OutputStream* getScreen_7Seg_CPU (void);

OutputStream* getScreen_7Seg_EXT (void);

void initCubeCommon(void);

#endif