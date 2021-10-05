#ifndef _MAINCUBE_H
#define _MAINCUBE_H

#include <stddef.h>                     // Defines NULL
#include <stdint.h>

#define BOARD_NAME "Meteo Cube V2\r\n"


#define SCREEN_7SEG_CPU getScreen_7Seg_CPU()

void initMainCube (void);

void mainCube (void);

#endif 