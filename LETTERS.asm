
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

org 100h
mov cx,26
mov bh,0h  
add bh,65
L1:
mov dl,bh
mov ah,2h
int 21h  
inc bh
 mov dl,0h
 mov ah,2h
 int 21h

loop L1
hlt

ret




