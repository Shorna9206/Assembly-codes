.model small
.stack 100h

.data
    PBL db "BL: $"
    PCL db " CL: $"

.code
    MOV AX,@DATA
    MOV DS,AX
    
    MOV BL,50 ; BL=2
    MOV CL,52 ; CL=4
    
    MOV AH,9
    LEA DX,PBL
    INT 21H
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,9
    LEA DX,PCL
    INT 21H
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    ;BL=4 CL=2
    XCHG BL,CL   
    
    ;newline
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,9
    LEA DX,PBL
    INT 21H
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,9
    LEA DX,PCL
    INT 21H
    MOV AH,2
    MOV DL,CL
    INT 21H