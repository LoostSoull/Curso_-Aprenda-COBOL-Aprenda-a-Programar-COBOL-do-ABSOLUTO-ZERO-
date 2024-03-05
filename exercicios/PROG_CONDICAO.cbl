*>****************************************************************
*> Author: LUCAS CARDOSO
*> Date: 05/03/24
*> Purpose: PROGRAMA PARA EXEMPLIFICAR CONDIÇÃO IF E ELSE.
*> Tectonics: cobc
*>****************************************************************
IDENTIFICATION DIVISION.
PROGRAM-ID. PROG_CONDICAO.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 WS-VARIAVEIS.
      03 WS-NUM-1                  PIC S9(04)V99.
      03 WS-TEXTO                  PIC X(20).

PROCEDURE DIVISION.
MAIN-PROCEDURE.

     PERFORM P100-INICIALIZA
     PERFORM P300-TESTE
     PERFORM P900-FIM
     .

    P000-ERRO.
         DISPLAY 'ERRO DE PROCESSAMENTO.'
         PERFORM P900-FIM
         .
    P100-INICIALIZA.
         INITIALIZE WS-VARIAVEIS.

    P300-TESTE.
         DISPLAY 'DIGITE UM NUMERO DE 1 A 3 : '
         ACCEPT WS-NUM-1

         IF WS-NUM-1 = 1
              DISPLAY 'HOMEM'.
         IF WS-NUM-1 = 2
              DISPLAY 'MULHER'.
         IF WS-NUM-1 = 3
              DISPLAY 'OUTRO'.
         IF WS-NUM-1 GREATER 3
            PERFORM P000-ERRO.

    P900-FIM.
        STOP RUN.
END PROGRAM PROG_CONDICAO.
