#include "distanceStream.h"

#include <stdlib.h>
#include <definitions.h>

static Distance distanceSensor[24];

Distance* getDistanceStream(int index){
    return  &distanceSensor[index];
}

uint32_t getDistanceSensor (Distance* distance){
    distance->readSensorValue(distance);
    uint32_t dist = distance->readSensorValue(distance);
    return dist;
}

Distance* initDistanceStream(Distance* distance,
        DistanceReadSensorValueFunction* readSensorValue,
        uint16_t sensorIndex) {
    if (distance == NULL) {
        //writeError(DISTANCE_NULL);
        return 0;
    }
    distance->readSensorValue = readSensorValue;
    distance->sensorIndex = sensorIndex;
    return getDistanceStream(sensorIndex);
}