#ifndef _TIMER1_H
#define _TIMER1_H

#include <stdbool.h>

void initTmr1 (void);

bool getIsTmr1Expired (void);

void setIsTmr1Expired ( bool status);


#endif