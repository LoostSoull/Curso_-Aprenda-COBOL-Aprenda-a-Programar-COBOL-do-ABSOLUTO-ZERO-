      *>****************************************************************
      *>     Author:
      *>     Date:
      *>     Purpose:
      *>     Tectonics: cobc
      *>****************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG_DISPLAY.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-TESTE      PIC X(20) VALUE SPACES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
               ACCEPT WS-TESTE FROM DATE YYYYMMDD
               DISPLAY WS-TESTE
       STOP RUN.
       END PROGRAM PROG_DISPLAY.
