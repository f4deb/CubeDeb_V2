#ifndef _TEMPERATURE_STREAM_H    /* Guard against multiple inclusion */
#define _TEMPERATURE_STREAM_H

#include <definitions.h>

// forward declaration
struct Temperature;
typedef struct Temperature Temperature;

Temperature* getTemperatureStream(void);


/**
 * Get the value from the temperature sensor
 * @return temperature  the value from the temperature sensor
 */
typedef uint32_t* TemperatureReadSensorValueFunction(Temperature* temperature);

/** 
 * Set the temperature to know if we are above the value.
 * @param temperatureSensorAlert the new limit for the temperature
 */
typedef void TemperatureWriteAlertLimitFunction(Temperature* temperature, int temperatureSensorAlert);

/**
 * Temperature sensor wrapping.
 */
struct Temperature {
    /** The address for I2C Bus */
    int address;    
    /** The function which must be used to read the value of the temperature (in celcius degree). */
    TemperatureReadSensorValueFunction* readSensorValue;
    /** The function which must be used to write the alert limit of the temperature sensor (in celcius degree). */
    TemperatureWriteAlertLimitFunction* writeAlertLimit;
    /** A pointer on generic object (for example to store I2cBus ...). */
    void* object;
};

/**
 * Initialize the temperature object wrapper.
 * @param temperature the pointer on temperature object (POO Programming)
 * @param readSensorValue the pointer on the callback function to read the value of the temperature (in celcius degree).
 * @param writeAlertLimit the pointer on the callback function to write the alert limit of the temperature sensor (in celcius degree).
 */
void initTemperatureStream(Temperature* temperature, uint8_t address);

#endif