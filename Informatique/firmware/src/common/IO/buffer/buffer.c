#include "buffer.h"

#include <stdbool.h>
#include <string.h>

static int writeIndex = 0;
//static int readIndex = 0;


void initBuffer(void){
    
}

void writeStringToBuffer (char* buffer, char* string){
    memcpy(&buffer[writeIndex], string,strlen(string));
    writeIndex +=  strlen(string);   
}

void  writeCharToBuffer(char* buffer, char character){
    buffer[writeIndex] = character;
    writeIndex++;    
}

void readStringFromBuffer (void){
    
}

void readCharFromBuffer (void) {
    
}

void flushBuffer(char* buffer){
    writeIndex = 0;
}