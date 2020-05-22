.model small
.stack 100h

.data
    msg db "Original Value: $"
    msg2 db "Increment Value: $"
    msg3 db "Decrement Value: $"

.code
    MOV AX,@DATA
    MOV DS,AX
    
    MOV BL,54
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H 
    
    INC BL
    
    ;newline
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    DEC BL
    
    ;newline
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H
    
    MOV AH,2
    MOV DL,BL
    INT 21H