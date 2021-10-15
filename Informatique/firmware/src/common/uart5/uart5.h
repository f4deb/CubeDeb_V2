#ifndef _UART5_H   
#define _UART5_H

#include "definitions.h"

#define RX_BUFFER_SIZE                  5

#define UART5_BUFFER_SIZE   13

void APP_WriteCallbackUart5(uintptr_t context);

void APP_ReadCallbackUart5(uintptr_t context);

char* getTxBuffer  (void);

bool getErrorStatusUart5(void);

void setErrorStatusUart5(bool status);

bool getWriteStatusUart5(void);

void setWriteStatusUart5(bool status);

bool getReadStatusUart5 (void);

void setReadStatusUart5 (bool status);

void writeUart5 (char* message, int size);

#endif