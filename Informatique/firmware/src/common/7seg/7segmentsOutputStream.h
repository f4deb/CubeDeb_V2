#ifndef _7SEGMENTS_OUTPUT_STREAM_H
#define _7SEGMENTS_OUTPUT_STREAM_H

#include <stdbool.h>
#include <definitions.h>                // SYS function prototypes

#include "../../common/7seg/7segments.h"
#include "../../common/IO/outputStream/outputStream.h"

#define SEVEN_SEGMENT_DISPLAY_SIZE 7
#define SEVEN_SEGMENT_DISPLAY_CPU 0
#define SEVEN_SEGMENT_DISPLAY_EXT1 SEVEN_SEGMENT_DISPLAY_SIZE



OutputStream* get7SegOutpuStream(int index);

///////////////////////////////////////////////////
//                   STREAM INTERFACE            //
///////////////////////////////////////////////////

/**
 * init the outputStream for the 7segments.
 * @param outputStream the pointer to the outputStream which must be initialized
 */
OutputStream* init7SegOutputStream(OutputStream* outputStream, uint8_t address, uint16_t streamName, enum DisplayType displayType);

#endif