*>****************************************************************
*> Author:
*> Date:
*> Purpose:
*> Tectonics: cobc
*>*****************************************************************
IDENTIFICATION DIVISION.
PROGRAM-ID. CALCULO_MEDIA.
DATA DIVISION.
WORKING-STORAGE SECTION.
LINKAGE SECTION.
01 PARAMETRES.

   03 WS-NOME     PIC X(30).
   03 WS-MATERIA  PIC X(30).
   03 WS-NOTA_1   PIC 99.
   03 WS-NOTA_2   PIC 99.
   03 WS-NOTA_3   PIC 99.
   03 WS-NOTA_4   PIC 99.
   03 WS-RESULT   PIC 99.


PROCEDURE DIVISION USING PARAMETRES.
MAIN-PROCEDURE.

*>VALIDA SE AS VARIAVEIS RECEBERAM NUMEROS

IF FUNCTION NUMVAL-C(WS-NOTA_1) = 0 OR
   FUNCTION NUMVAL-C(WS-NOTA_2) = 0 OR
   FUNCTION NUMVAL-C(WS-NOTA_3) = 0 OR
   FUNCTION NUMVAL-C(WS-NOTA_4) = 0
   DISPLAY "PELO MENOS UMA DAS VARIAVEIS NAO CONTEM UM NUMERO"
   GOBACK

ELSE

   IF WS-RESULT >= 7 THEN

          DISPLAY "**************** B O L E T I M *************************** "
          DISPLAY "* NOME DO ALUNO: "   WS-NOME
          DISPLAY "* MATERIA: "         WS-MATERIA
          DISPLAY "* A SUA MEDIA FOI: " WS-RESULT
          DISPLAY " APROVADO!"
          DISPLAY "********************************************************** "
          DISPLAY " PARABENS!"
   ELSE
          DISPLAY "**************** B O L E T I M *************************** "
          DISPLAY "* NOME DO ALUNO: "   WS-NOME
          DISPLAY "* MATERIA: "         WS-MATERIA
          DISPLAY "* A SUA MEDIA FOI: " WS-RESULT
          DISPLAY "* REPROVADO!"
          DISPLAY "********************************************************** "
          DISPLAY " ESTUDE MAIS NO PROXIMO SEMESTRE!"

   GOBACK
END-IF.



END PROGRAM CALCULO_MEDIA.
