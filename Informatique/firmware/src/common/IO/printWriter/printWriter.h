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
 * Append a separator to the outputStream.
 * @param outputStream the pointer on outputStream (POO simulation)
 */
void appendSeparator(OutputStream* outputStream);

/**
 * Append a space to the outputStream.
 * @param outputStream the pointer on outputStream (POO simulation)
 */
void appendSpace(OutputStream* outputStream);

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

/**
 * Write a LF to the outputStream.
 * @param outputStream the pointer on outputStream (POO simulation)
 */
unsigned int println(OutputStream* outputStream);

/**
 * Write a CRLF to the outputStream.
 * @param outputStream the pointer on outputStream (POO simulation)
 */
unsigned int appendCRLF(OutputStream* outputStream);





// DEC

/**
 * Sends the decimal value of a long.
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param value the value to send
 * @return the number of characters sent
 * @return the number of char which are written
 */
int appendDec(OutputStream* outputStream, signed long value);

void appendStringAndDec(OutputStream* stream, const char* s, signed long value);

void appendStringAndDecLN(OutputStream* stream, const char* s, float value);


#endif
