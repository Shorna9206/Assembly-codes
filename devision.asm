.model small
.stack 100h

.code

    mov al,8 ; al=9    
    mov bl,3 ; bl=3
    div bl   ; al=al/bl = 9/3 = 3
    
    mov cl,al ; cl=al=3=quotient
    add cl,30h ; cl= 3 (Decimal)
    
    mov dl,ah ; dl=ah=reminder
    add dl,30h ; 
    
    mov ah,2
    int 21h    ; print reminder
    
    mov dl,cl  ; print quotient
    int 21h
    