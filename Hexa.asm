.MODEL SMALL
.STACK 100H
.DATA

MSG1 DB ,10,13, "HEXA VALUE: $ "
MSG2 DB ,10,13, "DECIMAL VALUE OF $"
TRY DB ,10,13, "TRY AGAIN!?Y/N $"
WRNG DB ,10,13, "WRONG INPUT $"
VAR1 DB ?


.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS, AX
    
    HEXA:
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV BL,AL
    MOV VAR1,AL
    
    CMP VAR1, 48
    JE DIGIT
    
    CMP VAR1, 57
    JLE DIGIT
    
    CMP VAR1, 65
    JE L1
    
    CMP VAR1, 70
    JLE L1
    
    CALL ILLEGAL
    
    DIGIT:
    
    MOV AH,2
    MOV DL, 13
    INT 21H
    MOV DL,10
    INT 21H
    
    MOV AH, 9
    LEA DX, MSG2
    INT 21H
    
    MOV AH,2
    MOV DL,VAR1
    INT 21H
    
    MOV AH,2
    MOV DL, 58
    INT 21H
    
    SUB BL, 17
    MOV DL, BL
    INT 21H
    
    MOV AH,9
    LEA DX,TRY
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    CMP CL, 'Y'
    JE CALL HEXA
    
    CMP CL, 'Y'
    JE CALL EXIT
    
    L1:
    
    MOV AH,2
    MOV DL,13
    INT 21H
    MOV DL,10
    INT 21H
    
    MOV AH, 9
    LEA DX, MSG2
    INT 21H
    
    MOV AH,2
    MOV DL, VAR1
    INT 21H
    
    MOV AH,2
    MOV DL,3AH
    INT 21H
    
    MOV AH,2
    MOV DL, 49
    INT 21H
    
    SUB BL,17
    MOV DL,BL
    INT 21H
    
    MOV AH, 9
    LEA DX, TRY
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    CMP CL, 'Y'
    JE CALL HEXA
    
    CMP CL, 'Y'
    JE CALL EXIT
    
    
    ILLEGAL:
    
    MOV AH, 9
    LEA DX,WRNG
    INT 21H
    
    MOV AH,9
    LEA DX,TRY
    INT 21H
    
    MOV AH, 1
    INT 21H
    MOV CL, AL
    
    CMP CL, 'Y'
    JE CALL HEXA
    
    CMP CL, 'Y'
    JE CALL EXIT
    
    EXIT:
    MOV AH,4CH
    INT 21H