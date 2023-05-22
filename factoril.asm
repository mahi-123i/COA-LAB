
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al,03h
mov dl,al
dec dl
mov cl,dl
l1:
mul dl
dec dl
loop l1
mov dl,al
add dl,48
mov ah,2h
int 21h



ret




