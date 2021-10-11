#include "uart5.h"


#include "../IO/buffer/buffer.h"
#include "../delay/delay.h"

static char txBuffer[UART5_BUFFER_SIZE] = {};

static bool errorStatus = false;
static bool writeStatus = false;
static bool readStatus = false;

void APP_WriteCallbackUart5(uintptr_t context)
{
    writeStatus = true;
}


void APP_ReadCallbackUart5(uintptr_t context)
{
    if(UART5_ErrorGet() != UART_ERROR_NONE)
    {
        /* ErrorGet clears errors, set error flag to notify console */
        errorStatus = true;
    }
    else
    {
        readStatus = true;
    }
}

char* getTxBuffer  (void){
    return txBuffer;
}

bool getErrorStatusUart5 (void){
    return errorStatus;
}

void setErrorStatusUart5 (bool status){
    errorStatus = status;
}

bool getWriteStatusUart5 (void){
    return writeStatus;
}

void setWriteStatusUart5 (bool status){
    writeStatus = status;
}

bool getReadStatusUart5(void){
    return readStatus;
}

void setReadStatusUart5 (bool status){
    readStatus = status;
}


void initUart5 (char* messageStart, int size){ 
/* Register callback functions and send start message */
    UART5_WriteCallbackRegister(APP_WriteCallbackUart5, 0);
    UART5_ReadCallbackRegister(APP_ReadCallbackUart5, 0);
    UART5_Write(messageStart, size);
    
    initBuffer();
    

    
}

void writeUart5 (char* message, int size){ 
    UART5_Write(message, size);
    //TODO replace delayMilliSecs by control test
    delayMilliSecs(2);
}