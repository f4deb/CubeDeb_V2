#include "serialoutputStream.h"

#include "serial.h"

static OutputStream* serialOutputStream[100];

OutputStream* getSerialOutputStream(enum SerialPort serialPort){
    return &serialOutputStream[serialPort];
}


void flushSerial(OutputStream* outputStream) {
    // don't do anything
}

// -> SERIAL PORT 5

void openOutputStreamSerial5(OutputStream* outputStream, int param1) {
    /*if (param1 == 0) {
        openSerialAtDefaultSpeed(SERIAL_PORT_5);
    } else {
        openSerial(SERIAL_PORT_5, param1);
    }*/
}

void closeOutputStreamSerial5(OutputStream* outputStream) {
    //closeSerial(SERIAL_PORT_5);
}

void writeChar5(OutputStream* outputStream, unsigned char c) {
    writeUart5(c, 1);
    

}

void writeString5(OutputStream* outputStream, unsigned char* str) {
    writeUart5(str, strlen(str));

}

void initSerialOutputStream5(OutputStream* outputStream) {
    outputStream->openOutputStream = openOutputStreamSerial5;
    outputStream->closeOutputStream = closeOutputStreamSerial5;
    outputStream->address = SERIAL_PORT_5;
    outputStream->writeChar = writeChar5;
    outputStream->writeString = writeString5;
    outputStream->flush = flushSerial;
}


// PUBLIC INTERFACE

void initSerialOutputStream(OutputStream* outputStream, enum SerialPort serialPort) {
/*    if (serialPortIndex == SERIAL_PORT_1) {
        initSerialOutputStream1(outputStream);
    } else if (serialPortIndex == SERIAL_PORT_2) {
        initSerialOutputStream2(outputStream);
    } else if (serialPortIndex == SERIAL_PORT_3) {
        initSerialOutputStream3(outputStream);
    } else if (serialPortIndex == SERIAL_PORT_4) {
        initSerialOutputStream4(outputStream);
    } else if (serialPortIndex == SERIAL_PORT_5) {
        initSerialOutputStream5(outputStream);
    } else */
    if (serialPort == SERIAL_PORT_5) {
        initSerialOutputStream5(outputStream);
    }
 
}