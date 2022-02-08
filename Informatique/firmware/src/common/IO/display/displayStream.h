#ifndef _DISPLAYSTREAM_H
#define _DISPLAYSTREAM_H

#include <definitions.h>

/**
 * Universal clock definition.
 */
typedef struct {
    int power;
    int intensity;
    int posX;
    int posY;
    int scrollRight;
    int scrollLeft;
} DisplayData;


/**
 * Encapsulates a Stream to display data
 * Streams which can be encapsulated :
 * UART, I2C, Zigbee ...
 * @author svanacker
 */

// forward declaration
struct Display;
typedef struct Display Display;


/**
 * The function which opens the display stream.
 * @param displayStream the pointer on object (POO simulation)
 * @param param1 a param passed to configure the stream*
 */
typedef void OpenDisplayFunction(Display* display, int param1);

/**
 * The function which closes the display stream.
 * @param displayStream the pointer on object (POO simulation)
 */
typedef void CloseDisplayFunction(Display* display);

/**
 * Function which is able to write a character.
 * Be careful that this operation can be buffered.
 * Use flush to ensure that data are sent
 * @param displayStream the pointer on object (POO simulation)
 * @param c the char to write
 */
typedef void SetPosXFunction(Display* display, int posX);

/**
 * Function which is able to write a character.
 * Be careful that this operation can be buffered.
 * Use flush to ensure that data are sent
 * @param displayStream the pointer on object (POO simulation)
 * @param c the char to write
 */
typedef void SetPosYFunction(Display* display, int posY);

/**
 * Function which is able to write a string.
 * Be careful that this operation can be buffered.
 * Use flush to ensure that data are sent
 * @param displayStream the pointer on object (POO simulation)
 * @param string the string to write
 */
typedef void SetPowerModeFunction(Display* display, bool OnOff);



/**
 * Defines the contract for an display stream (SERIAL, I2C ...)
 */
struct Display {
    /** The address of the stream (Ex : address for I2C, serialPortIndex ...). */
    uint8_t index;
    /** The function which must be called to open the stream. */
    OpenDisplayFunction* openDisplay;
    /** The function which must be called to close the stream. */
    CloseDisplayFunction* closeDisplay;
    /** The function which must be call at the end to write a char into the stream. */
    SetPosXFunction* SetPosX;
    /** The function which must be call at the end to write a char into the stream. */
    SetPosYFunction* SetPosY;
    /** The function which must be call at the end to write a string into the stream */
    SetPowerModeFunction* SetPowerMode;
    /** one option data */
    DisplayData displayData;
    /** pointer on other object (useful for buffer for example) .*/
    int* object;
};



Display* getDisplayStream(int index);


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
Display* initDisplayStream(Display* display,
        OpenDisplayFunction* openDisplay,
        CloseDisplayFunction* closeDisplay,
        SetPosXFunction* SetPosX,
        SetPosYFunction* SetPosY,
        SetPowerModeFunction* SetPowerMode,
        uint16_t displayIndex);

#endif


