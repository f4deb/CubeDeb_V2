#include "TM1638.h"

#include "../../common/IO/outputStream/outputStream.h"
#include "../../common/7seg/7segmentsOutputStream.h"



void sendDataTM1638 (int dataTM1638) {
    int i = 0;
    int dataT = dataTM1638; 
    
    while (i<8){     
        dataT = dataTM1638 >> i;

        
        CLK_TM1638_Clear();  
        delayMicroSecs(10);
        if (dataT & 0x01){
            DIO_TM1638_Set();           
        }
        else{
            DIO_TM1638_Clear();
        }
        delayMicroSecs(10);
        CLK_TM1638_Set();
        delayMicroSecs(10);
        
        i++;
    }    
    
}

void sendCommandTM1638 (int dataTM1638) {
    int dataT = dataTM1638;
    int i = 0;

    STB_TM1638_Set();
    delayMicroSecs(50);
    STB_TM1638_Clear();

    while (i<8){     
        dataT = dataTM1638 >> i;

        CLK_TM1638_Clear();  
        delayMicroSecs(10);
        if (dataT & 0x01){
            DIO_TM1638_Set();           
        }
        else{
            DIO_TM1638_Clear();
        }
        delayMicroSecs(10);
        CLK_TM1638_Set();  
        delayMicroSecs(10);      
        
        i++;
    }
}    

void TM1638writeDIGIT (uint16_t I2C_ADDRESS, uint8_t *data){
    /*while(I2C1_Write( I2C_ADDRESS , data, 6 )){
                // error handling
    }    
    while ( I2C1_IsBusy());*/
    strToTM1638AnnodeCommon("HELLO ME");


}

OutputStream* initTM1638(OutputStream* outputStream, uint16_t I2C_ADDRESS, uint16_t streamName, enum DisplayType type) {
    return (init7SegOutputStream(outputStream, I2C_ADDRESS, streamName, type));
}