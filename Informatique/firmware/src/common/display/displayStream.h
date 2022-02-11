#ifndef _DISPLAYSTREAM_H
#define _DISPLAYSTREAM_H

#include <definitions.h>
#include "../7seg/7segments.h"


/**
 * Universal clock definition.
 */
typedef struct {

} DisplayData;


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
typedef void SetPosXFunction(DisplayStream* displayStream, uint16_t posX);

/**
 * Function which is able to write a character.
 * Be careful that this operation can be buffered.
 * Use flush to ensure that data are sent
 * @param displayStream the pointer on object (POO simulation)
 * @param c the char to write
 */
typedef uint16_t GetPosXFunction(DisplayStream* displayStream);


/**
 * Function which is able to write a character.
 * Be careful that this operation can be buffered.
 * Use flush to ensure that data are sent
 * @param displayStream the pointer on object (POO simulation)
 * @param c the char to write
 */
typedef void SetPosYFunction(DisplayStream* displayStream, uint16_t posY);

/**
 * Function which is able to write a character.
 * Be careful that this operation can be buffered.
 * Use flush to ensure that data are sent
 * @param displayStream the pointer on object (POO simulation)
 * @param c the char to write
 */
typedef uint16_t GetPosYFunction(DisplayStream* displayStream);

/**
 * Function which is able to write a string.
 * Be careful that this operation can be buffered.
 * Use flush to ensure that data are sent
 * @param displayStream the pointer on object (POO simulation)
 * @param string the string to write
 */
typedef void SetPowerModeFunction(DisplayStream* displayStream, bool OnOff);



/**
 * Defines the contract for an display stream (SERIAL, I2C ...)
 */
struct DisplayStream {
    /** The type of the driver */
    enum DisplayType displayType;
    /** The status of power Display : 0/1 ON/OFF */
    uint8_t power;
    /** The level of Display intensity */
    uint8_t intensity;
    /** The posX */    
    uint16_t posX;
    /** The posY */
    uint16_t posY;
    /** Speed of the scrolling to right */
    uint8_t scrollRight;
    /** Speed of the scrollint to left */
    uint8_t scrollLeft;    
    /** The address of the stream (Ex : address for I2C, serialPortIndex ...). */
    uint8_t displayIndex;
    /** The function which must be called to open the stream. */
    OpenDisplayStreamFunction* openDisplayStream;
    /** The function which must be called to close the stream. */
    CloseDisplayStreamFunction* closeDisplayStream;
    /** The function which must be call at the end to write the PosX into the stream. */
    SetPosXFunction* SetPosX;
    /** The function which must be call at the end to read the PosX into the stream. */
    GetPosXFunction* GetPosX;
    /** The function which must be call at the end to write a char into the stream. */
    SetPosYFunction* SetPosY;
    /** The function which must be call at the end to read the PosY into the stream. */
    GetPosYFunction* GetPosY;    
    /** The function which must be call at the end to write a string into the stream */
    SetPowerModeFunction* SetPowerMode;
    /** one option data */
    DisplayData displayData;
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
        SetPosXFunction* SetPosX,
        GetPosXFunction* GetPosX,
        SetPosYFunction* SetPosY,
        GetPosYFunction* GetPosY,
        SetPowerModeFunction* SetPowerMode,
        uint16_t displayIndex,
        DisplayData displayData);

#endif


