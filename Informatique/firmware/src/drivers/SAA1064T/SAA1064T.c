#include "SAA1064T.h"

#include "../../common/IO/outputStream/outputStream.h"
#include "../../common/7seg/7segmentsOutputStream.h"

void SAA1064Twrite4DIGIT (uint16_t I2C_ADDRESS, uint8_t *data){
    while(I2C1_Write( I2C_ADDRESS , data, 6 )){
                // error handling
    }    
    while ( I2C1_IsBusy());

}

OutputStream* initSAA1064T(OutputStream* outputStream, uint16_t I2C_ADDRESS, uint16_t streamName, enum DisplayType type) {
    return (init7SegOutputStream(outputStream, I2C_ADDRESS, streamName,type));
}