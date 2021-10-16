#include <stdlib.h>
#include <math.h>

#include "definitions.h"                // SYS function prototypes
#include "printWriter.h"
#include "../outputStream/outputStream.h"
#include "../../common/common.h"






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

void appendSeparator(OutputStream* outputStream) {
    append(outputStream, '-');
}

void appendSpace(OutputStream* outputStream) {
    append(outputStream, ' ');
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



void appendDot(OutputStream* outputStream, unsigned int dot) {
    outputStream->data = dot;
}

unsigned int appendStringLN(OutputStream* outputStream, const char* s) {
    unsigned result = appendString(outputStream, s);
    append(outputStream,13);
    append(outputStream,10);

   return result;
}

unsigned int appendCR(OutputStream* outputStream) {
    append(outputStream, CARRIAGE_RETURN);
    return 1;
}

unsigned int appendLF(OutputStream* outputStream) {
    append(outputStream, LF);
    return 1;
}

unsigned int appendCRLF(OutputStream* outputStream) {
    append(outputStream, CARRIAGE_RETURN);
    append(outputStream, LF);
    return 2;
}

unsigned int println(OutputStream* outputStream) {
#ifdef USE_CR
    return appendCRLF(outputStream);
#endif
    return appendLF(outputStream);
}

// DECIMAL CONVERSION

int appendDec(OutputStream* stream, signed long value) {
    unsigned char num[11]; // 2^31 plus sign
    int pos = 0;
    int nchars = 0;

    if (value < 0) {
        append(stream, '-');
        value = -value;
        nchars++;
    } else if (value == 0) {
        append(stream, '0');
        nchars++;
        return nchars;
    }

    while (value != 0) {
        unsigned char c = value % 10;
        value = value / 10;
        num[pos++] = c + '0';
    }

    if (pos == 0)
        num[pos++] = '0';

    while (--pos >= 0) {
        append(stream, num[pos]);
        nchars++;
    }

    return nchars;
}

void appendStringAndDec(OutputStream* stream, const char* s, signed long value) {
    appendString(stream, s);
    appendDec(stream, value);
}

void appendStringAndDecLN(OutputStream* stream, const char* s, float value) {
    appendString(stream, s);
    appendDec(stream, value);
    println(stream);
}