#ifndef _DISPLAYSTREAM_H
#define _DISPLAYSTREAM_H



/**
 * Encapsulates a Stream to display data
 * Streams which can be encapsulated :
 * UART, I2C, Zigbee ...
 * @author svanacker
 */

// forward declaration
struct DisplayStream;
typedef struct DisplayStream DisplayStream;


/**
 * The function which opens the display stream.
 * @param displayStream the pointer on object (POO simulation)
 * @param param1 a param passed to configure the stream*
 */
typedef void OpenDisplayStreamFunction(DisplayStream* displayStream, int param1);

/**
 * The function which closes the display stream.
 * @param displayStream the pointer on object (POO simulation)
 */
typedef void CloseDisplayStreamFunction(DisplayStream* displayStream);

/**
 * Function which is able to write a character.
 * Be careful that this operation can be buffered.
 * Use flush to ensure that data are sent
 * @param displayStream the pointer on object (POO simulation)
 * @param c the char to write
 */
typedef void SetPosXFunction(DisplayStream* displayStream, int posX);

/**
 * Function which is able to write a string.
 * Be careful that this operation can be buffered.
 * Use flush to ensure that data are sent
 * @param displayStream the pointer on object (POO simulation)
 * @param string the string to write
 */
typedef void SetPowerModeFunction(DisplayStream* displayStream, const char* string);

/**
 * Flush the stream because char written via SetPosXFunction can be buffered.
 * @param displayStream the pointer on object (POO simulation)
 */
typedef void FlushDisplayFunction(DisplayStream* displayStream);

/**
 * Defines the contract for an display stream (SERIAL, I2C ...)
 */
struct DisplayStream {
    /** The address of the stream (Ex : address for I2C, serialPortIndex ...). */
    unsigned char address;
    /** The function which must be called to open the stream. */
    OpenDisplayStreamFunction* openDisplayStream;
    /** The function which must be called to close the stream. */
    CloseDisplayStreamFunction* closeDisplayStream;
    /** The function which must be call at the end to write a char into the stream. */
    SetPosXFunction* SetPosX;
    /** The function which must be call at the end to write a string into the stream */
    SetPowerModeFunction* SetPowerMode;
    /** Flush the stream. */
    FlushDisplayFunction* flush;
    /** pointer on other object (useful for buffer for example) .*/
    int* object;
    /** one option data */
    int data;
};

/**
 * Initialize an displayStream.
 * @param displayStream the pointer on object (POO simulation)
 * @param openDisplayStream function to open the stream
 * @param closeDisplayStream function to close the stream
 * @param SetPosX function to write the char
 * @param PowerMode function to write a string
 * @param flush function to flush
 * @param object a null type reference linked to the displayStream
 */
void initDisplayStream(DisplayStream* displayStream,
        OpenDisplayStreamFunction* openDisplayStream,
        CloseDisplayStreamFunction* closeDisplayStream,
        SetPosXFunction* SetPosX,
        SetPowerModeFunction* SetPowerMode,
        FlushDisplayFunction* flushDisplay,
        int* object,
        int data);

#endif
