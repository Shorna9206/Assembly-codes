.MODEL SMALLl
.STACK 100h
.DATA
MSG1 DB 'Input:$'
MSG2 DB 'In range $'
MSG3 DB 'Out of range $'

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21h
    
    MOV AH,1
    INT 21h
    MOV BL,AL
    
    
    CMP BL,4
    JGE L2
    
    L1:
    LEA DX,MSG2
    MOV AH,9
    INT 21h 
    JMP EXIT
    
    L2:
    CMP BL,7
    JLE L3
    JMP L1
    
    L3:
    LEA DX,MSG3
    MOV AH,9
    INT 21h
    
    EXIT:
    MOV AH,4ch
    INT 21h
    MAIN ENDP
END MAIN