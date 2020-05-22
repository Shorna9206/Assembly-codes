.model small
.stack 100h

.data
    msg db 10, 13, "Enter first digit: $"
    msg2 db 10, 13, "Enter second digit: $" 
    msg3 db 10, 13, "Sum: $" 
    
    a db 0
    b db 0
    c db 0

.code 
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    LEA dx, msg
    int 21h
    
    mov ah, 1
    int 21h
    sub al, 48
    mov a, al
    int 21h
    
    mov ah, 9
    LEA dx, msg2
    int 21h
    
    mov ah, 1
    int 21h
    sub al, 48
    mov b, al
    
    add al, a
    mov ah, 0 
    AAA
    
    add ah, 48
    add al, 48
    
    mov bx, ax
    
    mov ah, 9
    LEA dx, msg3
    int 21h
    
    mov ah, 2
    mov dl, bh
    int 21h
    
    mov ah, 2
    mov dl, bl
    int 21h
    
