#ifndef _7SEGMENTS_H
#define _7SEGMENTS_H

#include <stdbool.h>
#include "definitions.h"                // SYS function prototypes

#include "../../common/IO/outputStream/outputStream.h"

///////////////////////////////////////////////////
//                   STREAM INTERFACE            //
///////////////////////////////////////////////////

/**
 * init the outputStream for the 7segments.
 * @param outputStream the pointer to the outputStream which must be initialized
 */
void init7SegOutputStream(OutputStream* outputStream, uint8_t address);



#endif