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

unsigned int appendBool(OutputStream* outputStream, bool b) {
    if (b) {
        append(outputStream, '1');
    } else {
        append(outputStream, '0');
    }
	return 1;
}

unsigned int appendBoolAsString(OutputStream* outputStream, bool b) {
    if (b) {
        return appendString(outputStream, "true");
    }
    else {
        return appendString(outputStream, "false");
    }
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

int appendDecf(OutputStream* stream, float value) {
    if (isnan(value)) {
        return appendString(stream, "NAN");
    }
    int result = 0;
    float decimalValue;
    long decimalValueLong;

	float absValue = value;
	if (absValue < 0) {
		absValue = -absValue;
	}
	// By default, 1 decimal
	int decimalCount = 1;
	float decimalFactorMultiplicator = 10;
	if (absValue < 10) {
		// 3 decimal
		decimalCount = 3;
		decimalFactorMultiplicator = 1000;
	}
	else if (absValue < 100) {
		// 2 decimal
		decimalCount = 2;
		decimalFactorMultiplicator = 100;
	}

    if (value < 0) {
        decimalValue = ((value - (long) value) * (-decimalFactorMultiplicator));
        append(stream, '-');
        result++;
        result += appendDec(stream, -(long) value);
    } else {
        decimalValue = ((value - (long) value) * decimalFactorMultiplicator);
        result += appendDec(stream, (long) value);
    }
    decimalValueLong = (long) decimalValue;

    append(stream, DECIMAL_SEPARATOR);
    result++;

	// Decimals
	if (decimalCount >= 3 && decimalValueLong < 100) {
		append(stream, '0');
		result++;
	}
    if (decimalCount >= 2 && decimalValueLong < 10) {
        append(stream, '0');
		result++;
	}
    result += appendDec(stream, decimalValueLong);

    return result;
}



void appendStringAndDecLN(OutputStream* outputStream, const char* s, long value) {
    appendString(outputStream, s);
    appendDec(outputStream, value);
    println(outputStream);
}

void appendStringAndDecUnsignedLN(OutputStream* outputStream, const char* s, long value) {
    appendString(outputStream, s);
    appendDecUnsigned(outputStream, value);
    println(outputStream);
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


// FLOAT

void appendHexFloat2(OutputStream* stream, float value, unsigned int digitPrecision) {
    // we append it as a long value excluding digit after comma (but we multiply it before)
    float valueWrite = value;
    unsigned int i;
    for (i = 0; i < digitPrecision; i++) {
        valueWrite *= 10.0f;
    }
    unsigned char truncatedValue = (unsigned char) valueWrite;
    appendHex2(stream, truncatedValue);
}

void appendHexFloat4(OutputStream* stream, float value, unsigned int digitPrecision) {
    // we append it as a long value excluding digit after comma (but we multiply it before)
    float valueWrite = value;
    unsigned int i;
    for (i = 0; i < digitPrecision; i++) {
        valueWrite *= 10.0f;
    }
    signed long longValue = (signed long) valueWrite;
    appendHex4(stream, longValue);
}

void appendHexFloat6(OutputStream* stream, float value, unsigned int digitPrecision) {
    // we append it as a long value excluding digit after comma (but we multiply it before)
    float valueWrite = value;
    unsigned int i;
    for (i = 0; i < digitPrecision; i++) {
        valueWrite *= 10.0f;
    }
    signed long longValue = (signed long)valueWrite;
    appendHex6(stream, longValue);
}

void appendHexFloat8(OutputStream* stream, float value, unsigned int digitPrecision) {
    // we append it as a long value excluding digit after comma (but we multiply it before)
    float valueWrite = value;
    unsigned int i;
    for (i = 0; i < digitPrecision; i++) {
        valueWrite *= 10.0f;
    }
    signed long longValue = (signed long)valueWrite;
    appendHex8(stream, longValue);
}


// AGGREGATION


void appendStringAndDecf(OutputStream* stream, const char* s, float value) {
    appendString(stream, s);
    appendDecf(stream, value);
}

void appendStringAndDec(OutputStream* stream, const char* s, long value) {
    appendString(stream, s);
    appendDec(stream, value);
}

void appendStringAndHex2(OutputStream* stream, const char* s, unsigned char value) {
    appendString(stream, s);
    appendHex2(stream, value);
}



void appendStringAndHex2LN(OutputStream* stream, const char* s, unsigned char value) {
    appendString(stream, s);
    appendHex2(stream, value);
    println(stream);
}

void appendStringAndBool(OutputStream* outputStream, const char* s, bool value) {
	appendString(outputStream, s);
	appendBool(outputStream, value);
}

void appendKeyAndName(OutputStream* stream, const char* key, const char* name) {
    appendString(stream, key);
    appendString(stream, name);
}