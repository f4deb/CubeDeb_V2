#ifndef SYSTEM_H
#define SYSTEM_H

/**
 * Defines the name of the BOARD.
 * @param boardName the name of the BOARD (Ex : MAIN BOARD 32 ...)
 */
void setBoardName(char* boardName);

/**
 * Returns the name of the BOARD.
 * @return the name of the BOARD (Ex : MAIN BOARD 32 ...)
 */
char* getBoardName(void);

/**
 * Defines the version of the BOARD.
 * @param boardVersion the Version of the BOARD
 */
void setBoardVersion(char* version);

/**
 * Returns the version of the BOARD.
 * @return the version of the BOARD
 */
char* getBoardVersion(void);



#endif