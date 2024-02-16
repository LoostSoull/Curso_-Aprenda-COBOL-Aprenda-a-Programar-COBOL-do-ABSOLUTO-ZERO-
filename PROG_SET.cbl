*>****************************************************************
*> Author: LUCAS CARDOSO
*> Date: 15/02/24
*> Purpose: UTILIZANDO A VARIAVEL SET, PARA SETAR VALORES
*> Tectonics: cobc
*>****************************************************************
IDENTIFICATION DIVISION.
PROGRAM-ID. PROG_SET.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
77 WS-NUM-1              PIC 99 VALUE 0.
77 WS-NUM-2              PIC 99 VALUE 0.
PROCEDURE DIVISION.
MAIN-PROCEDURE.
    SET WS-NUM-1         TO 5
    DISPLAY 'NUM 1: ' WS-NUM-1

    SET WS-NUM-2         TO WS-NUM-1
    DISPLAY 'NUM 2: ' WS-NUM-2
    STOP RUN.
END PROGRAM PROG_SET.
