#include "cubeCommon.h"

#include "../common/IO/outputStream/outputStream.h"
#include "../common/I2C/I2CConfig.h"

#include "../common/7seg/7segmentsOutputStream.h"
#include "../common/sensor/temperature/temperatureStream.h"



void initCubeCommon(void) {
    init7SegOutputStream(get7SegOutpuStream(), SAA1064_ADDR);
    initTemperatureStream(getTemperatureStream(), LM75_ADDRESS);
}

