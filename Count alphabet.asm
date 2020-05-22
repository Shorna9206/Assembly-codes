.model small
.stack 100h
 
.code
 
main proc
mov ah,1
mov cl,'0'

TOP:
int 21h
mov bl,al 
 
cmp bl, 'a'
jge L1



cmp bl, 'A'
jge L2

cmp bl, '?'
je exit

jmp TOP 
 
L1:

cmp bl, 'z'
jle count

L2:
cmp bl, 'Z'
jle count
jmp TOP

count:
inc cl
jmp TOP 

exit: 
mov ah,2 
mov dl,0AH
int 21h
mov dl,0DH
int 21h

mov dl, cl
int 21h