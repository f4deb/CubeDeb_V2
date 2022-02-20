#ifndef _FREQUENCY_COUNTER_STREAM_H    /* Guard against multiple inclusion */
#define _FREQUENCY_COUNTER_STREAM_H

#include <definitions.h>
#include "../../common.h"

/**
 * Encapsulates a Stream to read data
 * Streams which can be encapsulated :
 * UART, I2C, Zigbee ...
 * @author svanacker
 */

// forward declaration
struct FrequencyCounterStream;
typedef struct FrequencyCounterStream FrequencyCounterStream;


/**
 * The function which opens the stream.
 * @param Stream the pointer on object (POO simulation)
 * @param param1 a param passed to configure the stream*
 */
typedef void OpenFrequencyCounterStreamFunction(FrequencyCounterStream* frequencyCounterStream, int param1);

/**
 * The function which closes the stream.
 * @param Stream the pointer on object (POO simulation)
 */
typedef void CloseFrequencyCounterStreamFunction(FrequencyCounterStream* frequencyCounterStream);

/**
 * Defines the contract for the stream (SERIAL, I2C ...)
 */
struct FrequencyCounterStream {
    /** The type of the driver */
    enum FrequencyCounterType frequencyCounterType;
    /** The status of power : 0/1 ON/OFF */
    enum OnOff power;
    /** The address of the stream (Ex : address for I2C, serialPortIndex ...). */
    uint16_t frequencyCounterIndex;
    /** table of caractere contenant */
    char* string;
    /** The function which must be called to open the stream. */
    OpenFrequencyCounterStreamFunction* openFrequencyCounterStream;
    /** The function which must be called to close the stream. */
    CloseFrequencyCounterStreamFunction* closeFrequencyCounterStream;
    /** pointer on other object (useful for buffer for example) .*/
    int* object;
};

/**
 * Initialize an Stream.
 * @param Stream the pointer on object (POO simulation)
 * @param openStream function to open the stream
 * @param closeStream function to close the stream
 * @param PowerMode function to write a string
 * @param flush function to flush
 * @param object a null type reference linked to the Stream
 */
void initFrequencyCounterStream(FrequencyCounterStream* frequencyCounterStream,
        enum FrequencyCounterType frequencyCounterType,
        OpenFrequencyCounterStreamFunction* openFrequencyCounterStream,
        CloseFrequencyCounterStreamFunction* closeFrequencyCounterStream,
        uint16_t frequencyCounterIndex,
        char string[16]);


#endif 