#include <stdlib.h>
#include <math.h>

#include "definitions.h"                // SYS function prototypes
#include "printWriter.h"
#include "../outputStream/outputStream.h"






/**
 * Contains all string manipulations which writes data to an outputStream
 */

// STRINGS

void append(OutputStream* outputStream, unsigned char c) {
    if (outputStream == NULL) {
        return;
    }
    outputStream->writeChar(outputStream, c);
}

unsigned int appendString(OutputStream* outputStream, const char* s) {
    unsigned int result = 0;
    if (s == NULL) {
        return result;
    }
    if (outputStream == NULL) {
        return -1;
    }
    outputStream->writeString(outputStream, s);
    return result;
    
    
    

    
}