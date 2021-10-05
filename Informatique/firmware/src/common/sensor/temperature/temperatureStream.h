#ifndef _TEMPERATURE_STREAM_H    /* Guard against multiple inclusion */
#define _TEMPERATURE_STREAM_H

#define TEMP_SENSOR_STREAM_SIZE 3
#define TEMP_SENSOR_CPU 0
#define TEMP_SENSOR_EXT1 TEMP_SENSOR_STREAM_SIZE
#define TEMP_SENSOR_EXT2 TEMP_SENSOR_STREAM_SIZE*2
#define TEMP_SENSOR_EXT3 TEMP_SENSOR_STREAM_SIZE*3
#define TEMP_SENSOR_EXT4 TEMP_SENSOR_STREAM_SIZE*4
#define TEMP_SENSOR_EXT5 TEMP_SENSOR_STREAM_SIZE*5
#define TEMP_SENSOR_EXT6 TEMP_SENSOR_STREAM_SIZE*6
#define TEMP_SENSOR_EXT7 TEMP_SENSOR_STREAM_SIZE*7


#include <definitions.h>

// forward declaration
struct Temperature;
typedef struct Temperature Temperature;

Temperature* getTemperatureStream(int index);


/**
 * Get the value from the temperature sensor
 * @return temperature  the value from the temperature sensor
 */
typedef uint32_t TemperatureReadSensorValueFunction(Temperature* temperature);

/** 
 * Set the temperature to know if we are above the value.
 * @param temperatureSensorAlert the new limit for the temperature
 */
typedef void TemperatureWriteAlertLimitFunction(Temperature* temperature, int temperatureSensorAlert);

/**
 * Temperature sensor wrapping.
 */
struct Temperature {
    /** The function which must be used to read the value of the temperature (in celcius degree). */
    TemperatureReadSensorValueFunction* readSensorValue;
    /** The function which must be used to write the alert limit of the temperature sensor (in celcius degree). */
    TemperatureWriteAlertLimitFunction* writeAlertLimit;
    /** The address of I2C */
    int address;

};

/**
 * Initialize the temperature object wrapper.
 * @param temperature the pointer on temperature object (POO Programming)
 * @param readSensorValue the pointer on the callback function to read the value of the temperature (in celcius degree).
 * @param writeAlertLimit the pointer on the callback function to write the alert limit of the temperature sensor (in celcius degree).
 */
void initTemperatureStream(Temperature* temperature,
    TemperatureReadSensorValueFunction* readSensorValue,
    TemperatureWriteAlertLimitFunction* writeAlertLimit,
    uint16_t I2C_ADDRESS);
#endif