.MODEL SMALL
.STACK 100H
.DATA

A DB 1,2,3

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA AX,A
    MOV BX,AX
    
    MOV DX,[BX]
    
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN