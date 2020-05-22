.model small
.stack 100h

.data
    msg db "Hello Assembly Language!!$"
    msg2 db "Welcome..$"

.code
    mov AX, @data
    mov DS, AX
    
    MOV DX, offset msg
    MOV AH,9
    INT 21H
    
    ;newline
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    
    LEA DX,MSG2 ;Load Effective Address
    MOV AH,9
    INT 21H

    