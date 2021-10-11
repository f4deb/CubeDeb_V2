#ifndef _SERIAL_OUTPUTSTREAM_H
#define _SERIAL_OUTPUTSTREAM_H

#include "../IO/outputStream/outputStream.h"
#include "serial.h"


OutputStream* getSerialOutputStream(enum SerialPort);

OutputStream* initSerialOutputStream(OutputStream* outputStream, enum SerialPort serialPort);


#endif 