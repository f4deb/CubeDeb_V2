#include <stdbool.h>

#include "error.h"

//#include "../../common/log/logger.h"
//#include "../../common/log/logLevel.h"

#include "../IO/outputStream/outputStream.h"
#include "../IO/printWriter/printWriter.h"

static int lastErrorCode;

void writeError(int errorCode) {
    lastErrorCode = errorCode;
    OutputStream* outputStream = getErrorOutputStreamLogger();
    appendString(outputStream, "ERR CODE:");
    appendHex4(outputStream, errorCode);
    println(outputStream);
}

int getLastError() {
    return lastErrorCode;
}

bool isThereAnyError() {
    return lastErrorCode != 0;
}

void clearLastError() {
    lastErrorCode = 0;
}
