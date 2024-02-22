*>****************************************************************
*> Author: LUCAS CARDOSO
*> Date: 22/02/24
*> Purpose: PROGRAMA MOSTRANDO EXEMPLOS DE OPERAÇÕES MATEMATICAS COM
*>          ADD,SUBTRACT,MULTIPLY E DIVIDE.
*> Tectonics: cobc
*>****************************************************************
IDENTIFICATION DIVISION.
PROGRAM-ID. YOUR-PROGRAM-NAME.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
77 WS-NUM-1          PIC 9(02) VALUES ZEROS.
77 WS-NUM-2          PIC 9(02) VALUES ZEROS.
PROCEDURE DIVISION.


          PERFORM P100-INICIO.
          PERFORM P500-CALC.
          PERFORM P999-FIM.


     P100-INICIO.
          DISPLAY 'DIGITE O PRIMEIRO NUMERO: '
          ACCEPT WS-NUM-1

          DISPLAY 'DIGITE O SEGUNDO NUMERO: '
          ACCEPT WS-NUM-2
          .

     P800-ERRO.
        DISPLAY 'ERRO NO CALCULO!'
        PERFORM P999-FIM.

     P500-CALC.
          DISPLAY 'FUNCAO ADD: '
          ADD WS-NUM-1             TO WS-NUM-2
                                   ON SIZE ERROR PERFORM P800-ERRO
          END-ADD
          DISPLAY 'VALOR DE WS-NUM-2 APOS ADD:' WS-NUM-2


          DISPLAY 'FUNCAO SUBTRACT: '
          SUBTRACT 2             FROM WS-NUM-2
                                   ON SIZE ERROR PERFORM P800-ERRO
          END-SUBTRACT
          DISPLAY 'VALOR DE WS-NUM-2 APOS SUBTRACT:' WS-NUM-2



          DISPLAY 'FUNCAO MULTIPLY: '
          MULTIPLY 2             BY WS-NUM-2
                                   ON SIZE ERROR PERFORM P800-ERRO
          END-MULTIPLY
          DISPLAY 'VALOR DE WS-NUM-2 APOS MULTIPLY:' WS-NUM-2




          DISPLAY 'FUNCAO DIVIDE: '
          DIVIDE WS-NUM-2             BY WS-NUM-1 GIVING WS-NUM-2
                                      ON SIZE ERROR PERFORM P800-ERRO
          END-DIVIDE
          DISPLAY 'VALOR DE WS-NUM-2 APOS DIVIDE:' WS-NUM-2
         .

     P999-FIM.
          STOP RUN.
END PROGRAM YOUR-PROGRAM-NAME.
