#ifndef _DISTANCE_STREAM_H
#define _DISTANCE_STREAM_H

#include <definitions.h>

#define DISTANCE_SENSOR_STREAM_SIZE 5
#define DISTANCE_SENSOR_EXT0 0
#define DISTANCE_SENSOR_EXT1 TEMP_SENSOR_STREAM_SIZE
#define DISTANCE_SENSOR_EXT2 TEMP_SENSOR_STREAM_SIZE*2
#define DISTANCE_SENSOR_EXT3 TEMP_SENSOR_STREAM_SIZE*3

// forward declaration
struct Distance;
typedef struct Distance Distance;

Distance* getDistanceStream(int index);


uint32_t getDistanceSensor (Distance* distance);


/**
 * Get the value from the distance sensor
 * @return distance  the value from the distance sensor
 */
typedef uint32_t DistanceReadSensorValueFunction(Distance* distance);

/**
 * Distance sensor wrapping.
 */
struct Distance {
    /** The function which must be used to read the value of the distance (in celcius degree). */
    DistanceReadSensorValueFunction* readSensorValue;
    /** The Distance value */
    uint32_t value;
    /** the index sensor*/
    uint16_t sensorIndex;

};

uint32_t getDistanceSensor (Distance* distance);

/**
 * Initialize the distance object wrapper.
 * @param distance the pointer on distance object (POO Programming)
 * @param readSensorValue the pointer on the callback function to read the value of the distance (in celcius degree).
 * @param writeAlertLimit the pointer on the callback function to write the alert limit of the distance sensor (in celcius degree).
 */
Distance* initDistanceStream(Distance* distance,
    DistanceReadSensorValueFunction* readSensorValue,
    uint16_t sensorIndex);
#endif