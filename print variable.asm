.model small
.stack 100h
.code

main proc
    mov ah,2
    mov dl, 65
    int 21h
    
    mov ah,2
    mov dl, 10
    int 21h
    
    mov ah,2
    mov dl, 13
    int 21h
    
    mov ah,2
    mov dl, 66
    int 21h