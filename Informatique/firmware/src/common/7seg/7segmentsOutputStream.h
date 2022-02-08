#ifndef _7SEGMENTS_OUTPUT_STREAM_H
#define _7SEGMENTS_OUTPUT_STREAM_H

#include <stdbool.h>
#include <definitions.h>                // SYS function prototypes

#include "../IO/outputStream/outputStream.h"
#include "../IO/display/displayStream.h"


#define SAA1064_PRINT_7SEG_SIZE 7
#define SAA1064_PRINT_7SEG_CPU 0
#define SAA1064_PRINT_7SEG_EXT SAA1064_PRINT_7SEG_SIZE




DisplayStream* getDisplayStream(uint8_t index);

DisplayStream* initDisplayStream7Seg (DisplayStream* displayStream, uint8_t index);

OutputStream* get7SegOutpuStream(int index);


///////////////////////////////////////////////////
//                   STREAM INTERFACE            //
///////////////////////////////////////////////////

/**
 * init the outputStream for the 7segments.
 * @param outputStream the pointer to the outputStream which must be initialized
 */
OutputStream* init7SegOutputStream(OutputStream* outputStream, uint8_t address);



#endif