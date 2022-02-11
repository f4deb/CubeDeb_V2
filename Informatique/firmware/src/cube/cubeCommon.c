#include "cubeCommon.h"

#include "../common/common.h"

#include "../common/IO/outputStream/outputStream.h"
#include "../common/I2C/I2CConfig.h"

#include "../common/7seg/7segmentsOutputStream.h"
#include "../common/sensor/temperature/temperatureStream.h"

#include "../drivers/LM75A/LM75A.h"
#include "../drivers/SAA1064T/SAA1064T.h"

#include "../../common/serial/serial.h"


void initCubeCommon(void) {

    // initialise afficheur driver et flux pour afficheur 7 Segments de la carte CPU
   // initSAA1064T(getScreen_7Seg_CPU(), SAA1064_ADDR);  
    

}