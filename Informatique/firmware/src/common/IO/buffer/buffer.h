#ifndef _BUFFER_H  
#define _BUFFER_H

/**
 * Define a buffer structure with an array of string, size, direction ...
 */
typedef struct {
    /** a name to identify the struct. */
    const char* name;
    /** A type if name are equals. */
    const char* type;
    /** A pointer on an array of char. */
    unsigned char (*s)[];
    /** The max length of the buffer. */
    unsigned int length;
    /** The pointer used to write Data (we write at the end). */
    unsigned int writeIndex;
    /** The pointer used to read (we read at the begin). */
    unsigned int readIndex;
    /** the corresponding outputStream. */
    //OutputStream outputStream;
    /** the corresponding inputStream. */
    //InputStream inputStream;
} Buffer;

void initBuffer(void);

void writeStringToBuffer (char* buffer, char* string);

void writeCharToBuffer(char* buffer, char character);

void readStringFromBuffer (void);

void readCharFromBuffer (void) ;

void flushBuffer(char* buffer);

#endif