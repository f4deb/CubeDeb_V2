#ifndef _COMMON_H    /* Guard against multiple inclusion */
#define _COMMON_H

#define BOARD_NAME "Meteo Cube "
#define BOARD_VERSION "V208"

enum DisplayType {
    TYPE_SAA1064T,
    TYPE_TM1638
};

enum OnOff {
    OFF,
    ON           
};

enum FrequencyCounterType {
    TYPE_FREQUENCY_COUNTER_LOCAL
};

//// Special Characters Definition

/** Define the ASCII table STX value. */
#define ASCII_STX '\2'

/** Define the ASCII table ETX value. */
#define ASCII_ETX '\3'

/** Define the ASCII table ASCII ACK value. */
#define ASCII_ACK '\6'

/** Line Feed : \n". */
#define LF 10

/** Carriage return : \r". */
#define CARRIAGE_RETURN 13

/** Clear Screnn. */
#define CLS 12

/** Define or not if we add LF and CR */
#define USE_CR         true

//// Classical values

#define DECIMAL_SEPARATOR '.'

#define ACK 'a'

#define IN_AS_STRING "IN"
#define OUT_AS_STRING "OUT"


#endif 