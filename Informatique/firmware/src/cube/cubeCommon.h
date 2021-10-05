#ifndef CUBE_COMMON_H
#define CUBE_COMMON_H

#include "../common/IO/outputStream/outputStream.h"

#include "../common/sensor/temperature/temperatureStream.h"

int getScreen_7Seg_CPU (void);

int getScreen_7Seg_EXT (void);

void initCubeCommon(void);

#endif