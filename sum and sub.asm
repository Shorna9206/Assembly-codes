;sub and sum

.model small
.stack 100h
.code

main proc
    mov ah, 1
    int 21h
    mov bl, al
    mov cl, bl
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h 
    
    add bl, 3
    
    mov ah, 2
    mov dl, 43
    int 21h 
    
    mov ah, 2
    mov dl, 51
    int 21h 
    
    mov ah, 2
    mov dl, 61
    int 21h
    
     mov ah,2
    mov dl, bl
    int 21h 
    
     mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 2
    mov dl, cl
    int 21h 
    
    mov ah, 2
    mov dl, 45
    int 21h 
    
    mov ah, 2
    mov dl, 51
    int 21h 
    
    mov ah, 2
    mov dl, 61
    int 21h
    
    sub cl, 3
    
     mov ah,2
    mov dl, cl
    int 21h 
