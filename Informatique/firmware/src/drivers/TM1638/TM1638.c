#include "TM1638.h"

#include "../../common/ascii/7seg.h"
#include "../../common/delay/delay.h"
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

void strToTM1638AnnodeCommon (char str[],int onOff, int intensity){

    int i = 0;
    int j = 0;
    int seg = 1;
    int mask = 1;
    char car = 0x00;
    char tab[16] = {0};
    
    // Configure TM1638
    sendCommandTM1638(0x40); // auto increment
    sendCommandTM1638(0xC0); // adresse 00
    
    for (i=0;i<8;i++){
        car = ascii7Seg[str[i]];

        char car1 = car;
                
        for (j=0;j<8;j++){            
            car = car1 & seg;
            seg = seg<<1;
                        
            if (car > 0){
                tab[j*2] = (tab[j*2] | mask);
            }
            else {
                tab[j*2] = (tab[j*2] & (0xFF-mask));
            }            
        }
        
        mask = mask << 1;
        seg = 1;
      
        car = 0;
    }
    for (i=0; i<16 ;i = i + 2){  
        sendDataTM1638(tab[i]); //A
        sendDataTM1638(0); //A
    }

    int value  = onOff | intensity;
    sendCommandTM1638(value); // Activate and controle the intensity  

}

OutputStream* initTM1638(OutputStream* outputStream, uint16_t I2C_ADDRESS, uint16_t streamName, enum DisplayType type) {
    return (init7SegOutputStream(outputStream, I2C_ADDRESS, streamName, type));
}