#include "cubeCommon7Seg.h"

#include "../common/IO/outputStream/outputStream.h"
#include "../common/I2C/I2CConfig.h"

#include "../common/7seg/7segmentsOutputStream.h"

static OutputStream seg7OutputStream;

OutputStream* get7SegOutpuStream(void){
    return &seg7OutputStream;
}

void initCubeCommon7Seg(void) {

    init7SegOutputStream(&seg7OutputStream, SAA1064_ADDR);
    
}

