#ifndef _UART5_H   
#define _UART5_H

#include <definitions.h>

#define RX_BUFFER_SIZE      20

#define UART5_BUFFER_SIZE   13



char* getTxBuffer  (void);

bool getErrorStatusUart5(void);

void setErrorStatusUart5(bool status);

bool getWriteStatusUart5(void);

void setWriteStatusUart5(bool status);

bool getReadStatusUart5 (void);

void setReadStatusUart5 (bool status);

bool getTxThresholdEventReceived (void);

void setTxThresholdEventReceived (bool status);

void writeUart5 (uint8_t* message, int size);


void usartReadEventHandler(UART_EVENT event, uintptr_t context );

void usartWriteEventHandler(UART_EVENT event, uintptr_t context );


#endif