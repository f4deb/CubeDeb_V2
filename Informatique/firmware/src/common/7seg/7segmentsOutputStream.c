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

static int dot7Seg = 0;

/**
 *@private
 */
void _openOutputStream7Seg(OutputStream* outputStream, int param1) {
//    init7Seg();
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
    print7Seg(string,outputStream->object,outputStream->address);
}

/**
 *@private
 */
void _flush7Seg(OutputStream* outputStream) {
    //
}

void init7SegOutputStream(OutputStream* outputStream,uint8_t address) {
    outputStream->address = address;
    outputStream->openOutputStream = _openOutputStream7Seg;
    outputStream->closeOutputStream = _closeOutputStream7Seg;
    outputStream->writeChar = _write7SegStreamChar;
    outputStream->writeString = _write7SegStreamString;
    outputStream->flush = _flush7Seg;
    outputStream->object = dot7Seg;
    
    _openOutputStream7Seg(outputStream, 0);
}