
        .model small
        .stack 100h
        
        .code
            
            MOV AH,1
            INT 21H
            MOV BL,AL  ;INPUT1
            
            INT 21H
            MOV CL,AL  ;INPUT2
            
            
            CMP BL,CL
            JG L1
            JL L2
            JE L3
            
            L1: 
                ;NEWLINE
                MOV AH,2
                MOV DL,10
                INT 21H
                MOV DL,13
                INT 21H
                
                ;G:BL
                MOV AH,2
                MOV DL,'G'
                INT 21H
                MOV DL, ':'
                INT 21H
                MOV DL,BL
                INT 21H
                
                ;NEWLINE
                MOV DL,10
                INT 21H
                MOV DL,13
                INT 21H
                
                ;L:CL
                MOV AH,2
                MOV DL,'L'
                INT 21H
                MOV DL, ':'
                INT 21H
                MOV DL,CL
                INT 21H
                
                ;NEWLINE
                MOV DL,10
                INT 21H
                MOV DL,13
                INT 21H
                
                ;E:
                MOV AH,2
                MOV DL,'E'
                INT 21H
                MOV DL, ':'
                INT 21H
                                  
                JMP Exit
                
            L2:
                ;NEWLINE
                MOV AH,2
                MOV DL,10
                INT 21H
                MOV DL,13
                INT 21H
                
                ;G:BL
                MOV AH,2
                MOV DL,'G'
                INT 21H
                MOV DL, ':'
                INT 21H
                MOV DL,CL
                INT 21H
                
                ;NEWLINE
                MOV DL,10
                INT 21H
                MOV DL,13
                INT 21H
                
                ;L:CL
                MOV AH,2
                MOV DL,'L'
                INT 21H
                MOV DL, ':'
                INT 21H
                MOV DL,BL
                INT 21H
                
                ;NEWLINE
                MOV DL,10
                INT 21H
                MOV DL,13
                INT 21H
                
                ;E:
                MOV AH,2
                MOV DL,'E'
                INT 21H
                MOV DL, ':'
                INT 21H
                                  
                JMP Exit
            
            L3:
                ;NEWLINE
                MOV AH,2
                MOV DL,10
                INT 21H
                MOV DL,13
                INT 21H                 
                
                ;G:BL
                MOV AH,2
                MOV DL,'G'
                INT 21H
                MOV DL, ':'
                INT 21H                 
                
                ;NEWLINE
                MOV DL,10
                INT 21H
                MOV DL,13
                INT 21H
                
                ;L:CL
                MOV AH,2
                MOV DL,'L'
                INT 21H
                MOV DL, ':'
                INT 21H
                
                ;NEWLINE
                MOV DL,10
                INT 21H
                MOV DL,13
                INT 21H
                
                ;E:
                MOV AH,2
                MOV DL,'E'
                INT 21H
                MOV DL, ':'
                INT 21H
                MOV DL,BL
                INT 21H
                                  
                JMP Exit
            
            Exit:
                    