#include "7segmentsOutputStream.h"

#include "../../../src/cube/mainCubeMeteo.h"
/**
 * Common function for driver 7Segments, which are not specific to a particular device.
 */
#include <stdlib.h>
#include <string.h>
#include <definitions.h>

#include "../display/displayStream.h"
#include "../display/displayUtils.h"

#include "../common.h"
#include "../../common/7seg/7segments.h"



#include "../../drivers/TM1638/TM1638.h"

#include "../../common/IO/outputStream/outputStream.h"
#include "../../common/I2C/I2CConfig.h"


static OutputStream seg7OutputStream[200] ;
static DisplayStream* display7SegExt1;


OutputStream* get7SegOutpuStream(int index){
    return &seg7OutputStream[index];
}

/**
 *@private
 */
void _openOutputStream7Seg(OutputStream* outputStream, int param1) {
    print7Seg("    }",0x00,outputStream->address);
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


void init7SegOutputStreamSAA1064T(OutputStream* outputStream,uint8_t address, uint16_t streamName, enum DisplayType displayType){

    outputStream->address = address;
    outputStream->openOutputStream = _openOutputStream7Seg;
    outputStream->closeOutputStream = _closeOutputStream7Seg;
    outputStream->writeChar = _write7SegStreamChar;
    outputStream->writeString = _write7SegStreamString;
    outputStream->flush = _flush7Seg;
    outputStream->data = 0; //no dot
}

/*uint16_t getPosX(OutputStream* outputStream){
    DisplayStream* displayStream = &(outputStream->object);
    return displayStream->posX;
}

void setPosX(OutputStream* outputStream, uint16_t posX){
    DisplayStream* displayStream = &(outputStream->object);
    displayStream->posX = posX;
}

 */ 
void _write7SegStreamCharTM1638(OutputStream* outputStream, unsigned char c) {
    DisplayStream* displayStream = &(outputStream->object);
    
    char* string = displayStream->string;
    
    uint16_t posX = displayStream->posX ;
    string[posX] = c ;
    posX++;
    displayStream->posX =posX;
    
    strToTM1638AnnodeCommon(string, 0x80, displayStream->intensity);
    
    
    
}

void _write7SegStreamStringTM1638(OutputStream* outputStream, const char* string) {
    DisplayStream* displayStream = &(outputStream->object);
    displayStream->string = string;
    strToTM1638AnnodeCommon(string, 0x80, displayStream->intensity);

}


void init7SegOutputStreamTM1638(OutputStream* outputStream,uint8_t address, uint16_t streamName, enum DisplayType displayType, DisplayStream* display7SegExt1){
    
    
    
    outputStream->address = address;
    outputStream->openOutputStream = _openOutputStream7Seg;
    outputStream->closeOutputStream = _closeOutputStream7Seg;
    outputStream->writeChar = _write7SegStreamCharTM1638;
    outputStream->writeString = _write7SegStreamStringTM1638;
    outputStream->flush = _flush7Seg;
    outputStream->data = 0; //no dot
    outputStream->object = display7SegExt1 ;
    
    DisplayStream* displayStream = &(outputStream->object);
      
    displayStream->intensity = 0x0F; 
    displayStream->posX = 0x00;
    
    displayStream->string = "Init";
    char* str1 = "Init";
    char* str2 = BOARD_VERSION;
    strcat (str1,str2);

    displayStream->string = str1;
    
    _write7SegStreamStringTM1638(outputStream, displayStream->string);
}


OutputStream* init7SegOutputStream(OutputStream* outputStream,uint8_t address, uint16_t streamName, enum DisplayType displayType) {
    
    if (displayType == TYPE_SAA1064T){
        init7SegOutputStreamSAA1064T(outputStream,address,streamName,displayType);        
    }
    if (displayType == TYPE_TM1638 ){
        
        display7SegExt1 = initDisplayStreamUtils(getDisplayStream(0),0,TYPE_TM1638);
        
        init7SegOutputStreamTM1638(outputStream,address,streamName,displayType, display7SegExt1); 
        
    }
    
    _openOutputStream7Seg(outputStream, 0);  
   
    return (get7SegOutpuStream (streamName));
}