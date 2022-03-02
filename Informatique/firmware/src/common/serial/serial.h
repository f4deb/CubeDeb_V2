#ifndef _SERIAL_H    /* Guard against multiple inclusion */
#define _SERIAL_H

/**
 * Wrap the port number for a serial link.
 */
enum SerialPort {
    /** Define the index of serial port 1. */
    SERIAL_PORT_1 = 1,

    /** Define the index of serial port 2. */
    SERIAL_PORT_2 = 2,

    /** Define the index of serial port 3. */
    SERIAL_PORT_3 = 3,

    /** Define the index of serial port 4. */
    SERIAL_PORT_4 = 4,

    /** Define the index of serial port 5. */
    SERIAL_PORT_5 = 5,

    /** Define the index of serial port 6. */
    SERIAL_PORT_6 = 6
};

#endif 