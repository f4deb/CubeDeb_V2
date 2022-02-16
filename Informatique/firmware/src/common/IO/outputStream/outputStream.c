#include "outputStream.h"

#include <string.h>

#include "../buffer/buffer.h"
#include "../../common/IO/printWriter/printWriter.h"
#include "../../common/system/system.h"
#include "../../common/uart5/uart5.h"

void initOutputStream(OutputStream* outputStream,
        OpenOutputStreamFunction* openOutputStream,
        CloseOutputStreamFunction* closeOutputStream,
        WriteCharFunction* writeChar,
        WriteStringFunction* writeString,
        FlushFunction* flush,
        int* object,
        int data) {

    outputStream->openOutputStream = openOutputStream;
    outputStream->closeOutputStream = closeOutputStream;
    outputStream->writeChar = writeChar;
    outputStream->writeString = writeString;
    outputStream->flush = flush;
    //outputStream->object = object;
    outputStream->data = data;
}






