#include "distance.h"
#include <definitions.h>
#include <stdio.h>
#include "../../I2C/I2CConfig.h"

#include "../../drivers/LM75A/LM75A.h"

uint16_t mesure_time(Distance* distance){
    uint16_t dist = getDistanceSensor(distance);

    return dist;
}