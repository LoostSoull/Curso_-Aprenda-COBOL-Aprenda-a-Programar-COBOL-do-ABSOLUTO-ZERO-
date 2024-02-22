
*>****************************************************************
*> Author: LUCAS CARDOSO
*> Date: 20/02/24
*> Purpose: UTILIZANDO O COMANDO LENGTH, PODEMOS VERIFICAR O TAMANHO DO GRUPO,
*> EM NOSSO CASO O TAMANHO É 70, SERIA A SOMA DOS BITS, REALIZAMOS DE DUAS FORMAS.
*> Tectonics: cobc
*>****************************************************************
IDENTIFICATION DIVISION.
PROGRAM-ID. LENGHT_PROG.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
77 WS-COMPRIMENTO        PIC 99 VALUE 0.
01 WS-ENDERECO.
     03 WS-RUA           PIC X(20).
     03 WS-BAIRRO        PIC X(20).
     03 WS-CIDADE        PIC X(30).
PROCEDURE DIVISION.
MAIN-PROCEDURE.
*>******************FORMA 1*************************************************
    DISPLAY "O COMPRIMENTO DO GRUPO ENDERECO E: " LENGTH OF WS-ENDERECO

*>******************FORMA 2*************************************************
    COMPUTE WS-COMPRIMENTO = FUNCTION LENGTH (WS-ENDERECO)

    DISPLAY 'OUTRA FORMA: ' WS-COMPRIMENTO
    .
    STOP RUN.
END PROGRAM LENGHT_PROG.
