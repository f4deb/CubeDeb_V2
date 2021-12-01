#include <stdlib.h>
#include <math.h>
#include <stdio.h>


#include <definitions.h>                // SYS function prototypes
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
    append(outputStream, CARRIAGE_RETURN);
    append(outputStream, LF);

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

int appendDecUnsigned(OutputStream* stream, unsigned long value) {
    unsigned char num[11]; // 2^31 plus sign
    int pos = 0;
    int nchars = 0;

    if (value == 0) {
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

void appendDec4AsString(OutputStream* stream,uint16_t value){
    char* str = "    ";
    sprintf(str,"%.4d", value); 
    appendString(stream, str);
}

// HEXADECIMAL

unsigned char convertToHex(unsigned char c) {
    // Value between 0 and 9
    if (c < 10) {
        return c + 48;
    } else if (c < 16) {
        // Value between A and F
        // (65 - 10 + c)
        return c + 55;
    }
//    writeError(PRINT_WRITER_NOT_HEX_VALUE);
    return 0;
}

bool appendHex(OutputStream* outputStream, unsigned char c) {
    unsigned char hexChar = convertToHex(c);
    if (hexChar != 0) {
        append(outputStream, hexChar);
        return true;
    }
    return false;
}

void internalAppendHex(OutputStream* outputStream, signed long value, int shiftMax) {
    int i;
    for (i = shiftMax; i >= 0; i -= 4) {
        appendHex(outputStream, (value >> i) & 0xF);
    }
}

void appendHex2(OutputStream* outputStream, unsigned char value) {
    internalAppendHex(outputStream, value, 4);
}

void appendSignedHex2(OutputStream* outputStream, signed char value) {
    internalAppendHex(outputStream, value, 4);
}

void appendHex3(OutputStream* outputStream, signed int value) {
    internalAppendHex(outputStream, value, 8);
}

void appendHex4(OutputStream* outputStream, signed int value) {
    internalAppendHex(outputStream, value, 12);
}

void appendHex5(OutputStream* outputStream, signed int value) {
    internalAppendHex(outputStream, value, 16);
}

void appendHex6(OutputStream* outputStream, signed long value) {
    internalAppendHex(outputStream, value, 20);
}

void appendHex8(OutputStream* outputStream, signed long value) {
    internalAppendHex(outputStream, value, 28);
}
