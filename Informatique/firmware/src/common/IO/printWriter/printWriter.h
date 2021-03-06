#ifndef PRINT_WRITER_H
#define PRINT_WRITER_H

#include <stdbool.h>
#include <definitions.h>                // SYS function prototypes


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
 * Append a bool value (1 for true, 0 for false)
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param b the bool value to write
 */
unsigned int appendBool(OutputStream* outputStream, bool b);

/**
 * Append a bool value, but as string ("true" for true, "false" for false)
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param b the bool value to write
 */
unsigned int appendBoolAsString(OutputStream* outputStream, bool b);

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


unsigned int appendLF(OutputStream* outputStream);


/**
 * Write a CRLF to the outputStream.
 * @param outputStream the pointer on outputStream (POO simulation)
 */
unsigned int appendCRLF(OutputStream* outputStream);










void appendDec4AsString(OutputStream* stream,uint16_t value);

// --- Management of hex conversion

/**
 * Sends an hexadecimal value to the serial output.
 * char c must be >= 0 and <= 15 to be appended to the outputStream. If not, the char will not be converted and we will write an error !
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param c the char value to write as hexadecimal
 * @return true if the char was appended, false else
 */
bool appendHex(OutputStream* outputStream, unsigned char c);

/**
 * Send a char value into hexadecimal value (2 chars)
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param value the value which must be sent
 */
void appendHex2(OutputStream* outputStream, unsigned char value);

/**
 * Send a signed char value into hexadecimal value (2 chars)
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param value the value which must be sent
 */
void appendSignedHex2(OutputStream* outputStream, signed char value);

/**
 * Send an signed int into hexadecimal value (3 chars)
 * @param value the value which must be sent
 */
void appendHex3(OutputStream* outputStream, signed int value);

/**
 * Send an signed int into hexadecimal value (4 chars)
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param value the value which must be sent
 */
void appendHex4(OutputStream* outputStream, signed int value);

/**
 * Send an signed int into hexadecimal value (5 chars)
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param value the value which must be sent
 */
void appendHex5(OutputStream* outputStream, signed int value);

/**
 * Send an signed long into hexadecimal value (6 chars)
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param value the value which must be sent
 */
void appendHex6(OutputStream* outputStream, signed long value);

/**
 * Send an signed long into hexadecimal value (8 chars)
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param value the value which must be sent
 */
void appendHex8(OutputStream* outputStream, signed long value);

// Hex - Float

/**
* Append a float value into hexadecimal value (2 chars).
* @param outputStream the pointer on outputStream (POO simulation)
* @param value the float value
* @param digitPrecision how many digit we would like to have
*/
void appendHexFloat2(OutputStream* outputStream, float value, unsigned int digitPrecision);

/**
 * Append a float value into hexadecimal value (4 chars).
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param value the float value
 * @param digitPrecision how many digit we would like to have
 */
void appendHexFloat4(OutputStream* outputStream, float value, unsigned int digitPrecision);

/**
* Append a float value into hexadecimal value (6 chars).
* @param outputStream the pointer on outputStream (POO simulation)
* @param value the float value
* @param digitPrecision how many digit we would like to have
*/
void appendHexFloat6(OutputStream* outputStream, float value, unsigned int digitPrecision);

/**
 * Append a float value into hexadecimal value (8 chars).
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param value the float value
 * @param digitPrecision how many digit we would like to have
 */
void appendHexFloat8(OutputStream* outputStream, float value, unsigned int digitPrecision);

// DEC

/**
 * Sends the decimal value of a long.
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param value the value to send
 * @return the number of characters sent
 * @return the number of char which are written
 */
int appendDec(OutputStream* outputStream, signed long value);

int appendDecUnsigned(OutputStream* stream, unsigned long value) ;

/**
 * Sends the decimal value of a float. The precision after the comma depend on the value. For value very low, we have 3 chars after the comma, but we could have only 1.
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param value the value to send
 * @return the number of char which are written including part before comma, the comma, and after the comma
 */
int appendDecf(OutputStream* outputStream, float value);

// AGGREGATE FUNCTION

// -> FLOATING VALUES

/**
 * Append a string followed by a float value.
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param s the string to write
 * @param float the float value to write
 */
void appendStringAndDecf(OutputStream* outputStream, const char* s, float value);


// -> INTEGER / LONG VALUES

/**
 * Append a string followed by a long value.
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param s the string to write
 * @param value the value to write
 */
void appendStringAndDec(OutputStream* outputStream, const char* s, long value);

void appendStringAndDecLN(OutputStream* outputStream, const char* s, long value);

void appendStringAndDecUnsignedLN(OutputStream* outputStream, const char* s, long value);


// -> HEXA VALUES

void appendStringAndHex2(OutputStream* stream, const char* s, unsigned char value);



void appendStringAndHex2LN(OutputStream* stream, const char* s, unsigned char value);

/**
* Append a string followed by a bool value.
* @param outputStream the pointer on outputStream (POO simulation)
* @param s the string to write
* @param value the value to write
*/
void appendStringAndBool(OutputStream* outputStream, const char* s, bool value);

/**
 * Append both string : key followed by a value.
 * @param outputStream the pointer on outputStream (POO simulation)
 * @param key the key to write
 * @param name the name to write
 */
void appendKeyAndName(OutputStream* outputStream, const char* key, const char* name);


#endif
