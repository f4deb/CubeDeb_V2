#include "uart5.h"

#

#include "../IO/buffer/buffer.h"
#include "../delay/delay.h"
#include "../led/led.h"

volatile static bool txThresholdEventReceived = false;

volatile static int32_t nBytesRead = 0;


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


bool getTxThresholdEventReceived (void){
    return txThresholdEventReceived;
}

void setTxThresholdEventReceived (bool status){
    txThresholdEventReceived = status;
}

void writeUart5 (uint8_t* message, int size){ 

    /* Wait for the TX buffer to become empty. Flag "txThresholdEventReceived" is set in the callback. */
    //while (getTxThresholdEventReceived() == false);
    setTxThresholdEventReceived(false);   

    UART5_Write(message, size);
    
    /* Wait for all bytes to be transmitted out */
    while (UART5_WriteCountGet() != 0);    
}

size_t writeUart5_WriteCountGet(void){
    return UART5_WriteCountGet();
}




void usartReadEventHandler(UART_EVENT event, uintptr_t context )
{
    uint32_t nBytesAvailable = 0;
    
    if (event == UART_EVENT_READ_THRESHOLD_REACHED)
    {
        /* Receiver should atleast have the thershold number of bytes in the ring buffer */
        nBytesAvailable = UART5_ReadCountGet();
        
        nBytesRead += UART5_Read((uint8_t*)&rxBuffer[nBytesRead], nBytesAvailable);                          
    }
}

void usartWriteEventHandler(UART_EVENT event, uintptr_t context )
{
    setTxThresholdEventReceived(true);
}
