#ifndef _DISPLAYSTREAM_H
#define _DISPLAYSTREAM_H

#include <definitions.h>
#include "../7seg/7segments.h"

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
 * Defines the contract for an display stream (SERIAL, I2C ...)
 */
struct DisplayStream {
    /** The type of the driver */
    enum DisplayType displayType;
    /** The status of power Display : 0/1 ON/OFF */
    enum OnOff power;
    /** The level of Display intensity */
    uint8_t intensity;
    /** The posX */    
    uint16_t posX;
    /** The posY */
    uint16_t posY;
    /** The address of the stream (Ex : address for I2C, serialPortIndex ...). */
    uint16_t displayIndex;
    /** table of caractere contenant */
    char* string;
    /** The function which must be called to open the stream. */
    OpenDisplayStreamFunction* openDisplayStream;
    /** The function which must be called to close the stream. */
    CloseDisplayStreamFunction* closeDisplayStream;
    /** pointer on other object (useful for buffer for example) .*/
    int* object;
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
        enum DisplayType displayType,
        OpenDisplayStreamFunction* openDisplayStream,
        CloseDisplayStreamFunction* closeDisplayStream,
        uint16_t displayIndex,
        char string[16]);

#endif


