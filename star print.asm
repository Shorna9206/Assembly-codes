.MODEL SMALL
.STACK 100H

.DATA 
    A DB ?
    STAR DB '*'
    MSG DB 10,13,'ENTER VALUE : $'

.CODE
MAIN PROC 
     
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H 
    
    MOV AH,1
    INT 21H 
    SUB AL,30H
    MOV A,AL 
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
           
    MOV CH,0       
    MOV CL,A
    MOV BL,1 
    
    LOOP1:
    MOV CX,BX
    
    LOOP2: 
    CMP BL,A
    JG EXIT
    MOV AH,2
    MOV DL,STAR
    INT 21H
     
    LOOP LOOP2
    
    INC BL
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    LOOP LOOP1
        
EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP 
END MAIN