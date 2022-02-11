/**
 * Common function for driver 7Segments, which are not specific to a particular device.
 */
#include <stdlib.h>
#include <string.h>
#include <definitions.h>

#include "7segmentsOutputStream.h"

#include "../../common/7seg/7segments.h"

#include "../../common/IO/outputStream/outputStream.h"
#include "../../common/I2C/I2CConfig.h"


static OutputStream seg7OutputStream[100] ;

OutputStream* get7SegOutpuStream(int index){
    return &seg7OutputStream[index];
}

/**
 *@private
 */
void _openOutputStream7Seg(OutputStream* outputStream, int param1) {
    print7Seg("    }",0x00,outputStream->address);
}

/**
 *@private
 */
void _closeOutputStream7Seg(OutputStream* outputStream) {
    //clearScreen();
    print7Seg("    }",0x00,outputStream->address);
}

/**
 *@private
 */
void _write7SegStreamChar(OutputStream* outputStream, unsigned char c) {
    //write7SegChar(c);
    print7Seg("hoho}",0x01,outputStream->address);
}

/**
 *@private
 */
void _write7SegStreamString(OutputStream* outputStream, const char* string) {
    uint8_t type = outputStream->address;

    switch (type) {
        case (SAA1064_ADDR_0):;
            char dot = outputStream->data;
            print7Seg(string,dot,outputStream->address);
            break;
        case (TM1638_0):;
            strToTM1638AnnodeCommon(string);

            break;   
    }
    

}

/**
 *@private
 */
void _flush7Seg(OutputStream* outputStream) {
    //
}

OutputStream* init7SegOutputStream(OutputStream* outputStream,uint8_t address, uint16_t streamName, enum DisplayType type) {
    outputStream->address = address;
    outputStream->openOutputStream = _openOutputStream7Seg;
    outputStream->closeOutputStream = _closeOutputStream7Seg;
    outputStream->writeChar = _write7SegStreamChar;
    outputStream->writeString = _write7SegStreamString;
    outputStream->flush = _flush7Seg;
    outputStream->data = 0; //no dot



    
    _openOutputStream7Seg(outputStream, 0);  
   
    return (get7SegOutpuStream (streamName));
}