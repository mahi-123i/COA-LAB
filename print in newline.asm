org 100h
.data
newline db 13,10,"$"
a db "hello$" 
b db "world$"
.code
mov ax,@data
mov dx,offset a
mov ah,9h
int 21h  
mov dx,offset newline
mov ah,9h
int 21h
mov dx,offset b
mov ah,9h
int 21h



                                                     ;