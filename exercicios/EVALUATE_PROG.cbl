*>****************************************************************
*> Author: LUCAS CARDOSO
*> Date: 07/03/24
*> Purpose: UM EXEMPLO COM EVALUETE, EM OUTRAS LINGUAGENS, MAIS CONHECIDO COMO CASE, VALIDANDO MESES DO ANO E STATUS.
*> Tectonics: cobc
*>****************************************************************
IDENTIFICATION DIVISION.
PROGRAM-ID. EVALUATE_PROG.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01 WS-VARIAVEIS.
     03 WS-MES      PIC 99.
     03 WS-STATUS   PIC 99.

PROCEDURE DIVISION.
MAIN-PROCEDURE.

    INITIALIZE WS-VARIAVEIS

    DISPLAY 'INFORME O NUMERO DO MES'
    ACCEPT WS-MES

    DISPLAY 'INFORME O STATUS'
    ACCEPT WS-STATUS

    EVALUATE WS-MES
     WHEN 01
          DISPLAY 'JANEIRO'

     WHEN 02
          DISPLAY 'FEVEREIRO'

     WHEN 03
          DISPLAY 'MARÇO'

     WHEN 04
          DISPLAY 'ABRIL'

     WHEN 05
          DISPLAY 'MAIO'

     WHEN 06
          DISPLAY 'JUNHO'
     WHEN 07
          DISPLAY 'JULHO'

     WHEN 08
          DISPLAY 'AGOSTO'

     WHEN 09
          DISPLAY 'SETEMBRO'

     WHEN 10
          DISPLAY 'OUTUBRO'

     WHEN 11
          DISPLAY 'NOVEMBRO'

     WHEN 12
          DISPLAY 'DEZEMBRO '

     WHEN OTHER
          DISPLAY 'MES INVALIDO!'
     END-EVALUATE

     EVALUATE WS-STATUS
          WHEN 1
               DISPLAY 'HOMEM'
          WHEN 2
               DISPLAY 'MULHER'
          WHEN 3
               DISPLAY 'OUTRO'
          WHEN OTHER
               DISPLAY 'STATUS INVALIDO!'
               END-EVALUATE

    STOP RUN.
END PROGRAM EVALUATE_PROG.
