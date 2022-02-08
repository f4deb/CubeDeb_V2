/**
 * Common function for driver 7Segments, which are not specific to a particular device.
 */
#include <stdlib.h>
#include <string.h>
#include <definitions.h>

#include "7segmentsOutputStream.h"

#include "../../common/7seg/7segments.h"

#include "../../common/IO/outputStream/outputStream.h"
#include "../../common/I2C/I2CConfig.h"



static OutputStream seg7OutputStream[100];


static DisplayStream displayStream1; 





/********************************************
 *              DISPLAY                     * 
 ********************************************/

DisplayStream* getDisplayStream(uint8_t index){
    return &displayStream1;
}

/**
 *@private
 */
void _openDisplayStream(DisplayStream* displayStream, int param1) {
}

/**
 *@private
 */
void _closeDisplayStream(DisplayStream* displayStream) {
    
}

/**
 *@private
 */
void _SetPowerMode(DisplayStream* displayStream, unsigned char c) {
    
}

/**
 *@private
 */
void _SetPosXDisplayStream(DisplayStream* displayStream, int posX) {

}

/**
 *@private
 */
void _flushDisplayStream(DisplayStream* displayStream) {
    //
}

DisplayStream* initDisplayStream7Seg(DisplayStream* displayStream,uint8_t address) {
    displayStream->address = address;
    displayStream->openDisplayStream = _openDisplayStream;
    displayStream->closeDisplayStream = _closeDisplayStream;
    displayStream->SetPowerMode= 0;
    displayStream->SetPosX = _SetPosXDisplayStream;
    displayStream->flush = _flushDisplayStream;
    displayStream->data = 0; //no dot
 
 
    return (getDisplayStream (address));
}



/********************************************
 *              7 Segments                  *
 ********************************************/

OutputStream* get7SegOutpuStream(int index){
    return &seg7OutputStream[index];
}

/**
 *@private
 */
void _openOutputStream7Seg(OutputStream* outputStream, int param1) {
}

/**
 *@private
 */
void _closeOutputStream7Seg(OutputStream* outputStream) {
    //clearScreen();
    print7Seg("    }",0x00,outputStream->address);
}

/**
 *@private
 */
void _write7SegStreamChar(OutputStream* outputStream, unsigned char c) {
    //write7SegChar(c);
    print7Seg("hoho}",0x01,outputStream->address);
}

/**
 *@private
 */
void _write7SegStreamString(OutputStream* outputStream, const char* string) {
    char dot = outputStream->data;
    print7Seg(string,dot,outputStream->address);
}

/**
 *@private
 */
void _flush7Seg(OutputStream* outputStream) {
    //
}

OutputStream* init7SegOutputStream(OutputStream* outputStream,uint8_t address) {
    outputStream->address = address;
    outputStream->openOutputStream = _openOutputStream7Seg;
    outputStream->closeOutputStream = _closeOutputStream7Seg;
    outputStream->writeChar = _write7SegStreamChar;
    outputStream->writeString = _write7SegStreamString;
    outputStream->flush = _flush7Seg;
    outputStream->data = 0; //no dot



    
    _openOutputStream7Seg(outputStream, 0);  
   
    return (get7SegOutpuStream (SAA1064_PRINT_7SEG_CPU));
}