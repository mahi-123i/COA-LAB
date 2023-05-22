
org 100h
.data
e db "even $"
o db "odd $"
.code
mov ah,1h
int 21h
mov dl,al
mov bl,02h
div bl
cmp ah,00h
mov ah,2h
int 21h 
mov dl,0h 
int 21h
JE even:
mov dx,offset o
mov ah,9h
int 21h
mov ah,4ch
int 21h 
even:
mov dx,offset e
mov ah,9h
int 21h 



ret




