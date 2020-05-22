;add two number

.model small
.stack 100h
.code

main proc
    mov ah, 2
    mov dl, 51
    int 21h
    
    mov ah, 2
    mov dl, 43
    int 21h
    
    mov ah, 2
    mov dl, 53
    int 21h
    
    mov ah, 2
    mov dl, 61
    int 21h
    
    mov bl,53
    add bl, 3
    
     mov ah,2
    mov dl, bl
    int 21h 
    

    
   