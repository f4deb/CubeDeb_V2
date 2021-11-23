#include "system.h"

static char* boardName;
static char* boardVersion;

void setBoardName(char* aBoardName) {
    boardName = aBoardName;
}

char* getBoardName(void) {
    return boardName;
}

void setBoardVersion(char* version) {
    boardVersion = version;
}

char* getBoardVersion(void) {
    return boardVersion;
}
