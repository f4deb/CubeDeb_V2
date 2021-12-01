#include "timer1.h"

#include <stdbool.h>

#include <definitions.h>

static volatile bool isTmr1Expired = false;

static void tmr1EventHandler (uint32_t intCause, uintptr_t context){
    setIsTmr1Expired (true);                              
}

void initTmr1 (void){
    TMR1_CallbackRegister(tmr1EventHandler, 0);
    /* Start the timer 1 */
    TMR1_Start();
}

bool getIsTmr1Expired (void){    
    return (isTmr1Expired);
}

void setIsTmr1Expired(bool status){
    isTmr1Expired = status;
}