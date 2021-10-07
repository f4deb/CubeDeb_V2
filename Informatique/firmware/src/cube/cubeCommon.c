#include "cubeCommon.h"

#include "../common/common.h"

#include "../common/IO/outputStream/outputStream.h"
#include "../common/I2C/I2CConfig.h"

#include "../common/7seg/7segmentsOutputStream.h"
#include "../common/sensor/temperature/temperatureStream.h"

#include "../drivers/LM75A/LM75A.h"
#include "../drivers/SAA1064T/SAA1064T.h"

#include "../../common/serial/serial.h"


OutputStream* getScreen_7Seg_CPU (void){
    return get7SegOutpuStream(SAA1064_PRINT_7SEG_CPU);
}

OutputStream* getScreen_7Seg_EXT (void){
    return get7SegOutpuStream(SAA1064_PRINT_7SEG_EXT);
}

void initCubeCommon(void) {

    // initialise afficheur driver et flux pour afficheur 7 Segments de la carte CPU
    initSAA1064T(getScreen_7Seg_CPU(), SAA1064_ADDR);  
    
    // initialise driver et flux pour le capteur de temperature interne
    initTemperatureLM75A(getTemperatureStream(TEMP_SENSOR_CPU), LM75_ADDRESS_0);
    // initialise driver et flux pour le capteur de temperature externe 1
    initTemperatureLM75A(getTemperatureStream(TEMP_SENSOR_EXT1), LM75_ADDRESS_1);

    // initialise UART 
    initSerialOutputStream(DEBUG_OUTPUTSTREAM,SERIAL_PORT_5);

}