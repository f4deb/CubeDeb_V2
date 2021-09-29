#ifndef _OUTPUTSTREAM_H
#define _OUTPUTSTREAM_H

#define DEBUG_OUTPUTSTREAM_NAME_SIZE 10

#define DEBUG_OUTPUTSTREAM   "UART5"

/**
 * Encapsulates a Stream to output data
 * Streams which can be encapsulated :
 * UART, I2C, Zigbee ...
 * @author svanacker
 */

// forward declaration
struct OutputStream;
typedef struct OutputStream OutputStream;

/**
 * The function which opens the output stream.
 * @param outputStream the pointer on object (POO simulation)
 * @param param1 a param passed to configure the stream*
 */
typedef void OpenOutputStreamFunction(OutputStream* outputStream, int param1);

/**
 * The function which closes the output stream.
 * @param outputStream the pointer on object (POO simulation)
 */
typedef void CloseOutputStreamFunction(OutputStream* outputStream);

/**
 * Function which is able to write a character.
 * Be careful that this operation can be buffered.
 * Use flush to ensure that data are sent
 * @param outputStream the pointer on object (POO simulation)
 * @param c the char to write
 */
typedef void WriteCharFunction(OutputStream* outputStream, unsigned char c);

/**
 * Function which is able to write a string.
 * Be careful that this operation can be buffered.
 * Use flush to ensure that data are sent
 * @param outputStream the pointer on object (POO simulation)
 * @param string the string to write
 */
typedef void WriteStringFunction(OutputStream* outputStream, const char* string);

/**
 * Flush the stream because char written via WriteCharFunction can be buffered.
 * @param outputStream the pointer on object (POO simulation)
 */
typedef void FlushFunction(OutputStream* outputStream);

/**
 * Defines the contract for an output stream (SERIAL, I2C ...)
 */
struct OutputStream {
    /** The address of the stream (Ex : address for I2C, serialPortIndex ...). */
    unsigned char address;
    /** The function which must be called to open the stream. */
    OpenOutputStreamFunction* openOutputStream;
    /** The function which must be called to close the stream. */
    CloseOutputStreamFunction* closeOutputStream;
    /** The function which must be call at the end to write a char into the stream. */
    WriteCharFunction* writeChar;
    /** The function which must be call at the end to write a string into the stream */
    WriteStringFunction* writeString;
    /** Flush the stream. */
    FlushFunction* flush;
    /** pointer on other object (useful for buffer for example) .*/
    int* object;
};

/**
 * Initialize an outputStream.
 * @param outputStream the pointer on object (POO simulation)
 * @param openOutputStream function to open the stream
 * @param closeOutputStream function to close the stream
 * @param writeChar function to write the char
 * @param writeString function to write a string
 * @param flush function to flush
 * @param object a null type reference linked to the outputStream
 */
void initOutputStream(OutputStream* outputStream,
        OpenOutputStreamFunction* openOutputStream,
        CloseOutputStreamFunction* closeOutputStream,
        WriteCharFunction* writeChar,
        WriteStringFunction* writeString,
        FlushFunction* flush,
        int* object);







char* getDebugOutputStream  (void);

void initDebugOutputStream (char* debug); 

void writeOutputStream (char* outputStream, char* string);

void appendStream(char* outputStream, char* string);

#endif