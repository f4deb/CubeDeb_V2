#include "outputStream.h"

#include <string.h>

#include "../buffer/buffer.h"
#include "../../common/system/system.h"
#include "../../common/uart5/uart5.h"

#include "outputStream.h"

void initOutputStream(OutputStream* outputStream,
        OpenOutputStreamFunction* openOutputStream,
        CloseOutputStreamFunction* closeOutputStream,
        WriteCharFunction* writeChar,
        WriteStringFunction* writeString,
        FlushFunction* flush,
        int* object) {

    outputStream->openOutputStream = openOutputStream;
    outputStream->closeOutputStream = closeOutputStream;
    outputStream->writeChar = writeChar;
    outputStream->writeString = writeString;
    outputStream->flush = flush;
    outputStream->object = object;
}





static char debugOutputStream[DEBUG_OUTPUTSTREAM_NAME_SIZE] = {};

char* getDebugOutputStream  (void){
    return debugOutputStream;
}

void initDebugOutputStream (char* debug){ 
    
}

void writeOutputStream (char* outputStream, char* string){
    writeStringToBuffer (getTxBuffer(),getBoardName());
    writeUart5(getTxBuffer(), strlen(getTxBuffer()));
    flushBuffer(getTxBuffer());
}

void appendStream(char* outputStream, char* string){
    writeOutputStream (outputStream, string);
}