
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h
mov ah,1h
int 21h
mov bl,al
mov bh,2h
int 21h
add al,bl
sub al,30h
mov dl,al
mov ah,2h
int 21h

ret




