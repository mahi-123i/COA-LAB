
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov dx, offset msg
#request to display string
mov ah,9h
#calling interupt
int 21h
 
ret
msg DB "hello world $"
 
#"db"<data byte> to allocate some space, and fill it with a string




