.MODEL SMALL
.DATA
ARRAY db 'GH&Y6@7ph82!^3%+'
C1 DB 0
C2 DB 0
C3 DB 0

.CODE
DUA MACRO ARR,VAR
    LOCAL CONTINUE
    CMP ARR,'a'
    JB CONTINUE
    CMP ARR,'z'
    JA CONTINUE
    INC VAR
    CONTINUE:
    DUA ENDM

.STARTUP
MOV DI,0
MOV SI,0
MOV BX,0
MOV CX,16
AGAIN:
DUA ARRAY[DI],C2
INC DI
LOOP AGAIN
.EXIT
END