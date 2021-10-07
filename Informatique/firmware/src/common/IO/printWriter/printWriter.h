#ifndef PRINT_WRITER_H
#define PRINT_WRITER_H

#include <stdbool.h>


#include "../../common/IO/outputStream/outputStream.h"


#define CONSOLE_MAX_WIDTH                                               110

// STRINGS

/**
 * Append a char to the outputStream.
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param c the char to write
 */
void append(OutputStream* outputStream, unsigned char c);

/**
 * Append a string to the buffer.
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param s a standard C String (terminated by \0)
 * @return how many chars were written
 */
unsigned int appendString(OutputStream* outputStream, const char* s);

unsigned int appendStringLN(OutputStream* outputStream, const char* s);

void appendDot(OutputStream* outputStream, unsigned int dot);

unsigned int appendStringLN(OutputStream* outputStream, const char* s);



#endif
