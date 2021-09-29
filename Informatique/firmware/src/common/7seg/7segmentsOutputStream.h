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

// 7 Segments Interface
///////////////////////////////////////////////////
//               7 Segments INTERFACE            //
///////////////////////////////////////////////////

/**
 * writes a character at the current position of the cursor.
 * @param c character to write on the 7 Segments
 */
void write7SegChar(unsigned char c);





///////////////////////////////////////////////////
//                  DEVICE INTERFACE             //
///////////////////////////////////////////////////

/**
 * Init the 7Segments.
 */
void init7Seg(void);

/**
 * Returns the software revision of the 7 Segments.
 * @return Returns the software revision of the LCD.
 */
unsigned int get7SegSoftwareRevision(void);

#endif