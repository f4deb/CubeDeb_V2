#include "uart5.h"

#

#include "../IO/buffer/buffer.h"
#include "../delay/delay.h"
#include "../led/led.h"


static char rxBuffer[UART5_BUFFER_SIZE] = {};
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
        led2RedToggle();
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

void writeUart5 (char* message, int size){ 
    UART5_Write(message, size);
}