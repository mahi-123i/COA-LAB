
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.data
e db "even $"
o db "odd $"
.code
mov dl,07h
mov bl,02h
div bl
cmp ah,00h
add dl,30h
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






