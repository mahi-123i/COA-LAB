org 100h
.data
a db 4,8,2,3

.code
 mov ax,@data
 mov ds,ax
 mov cx,2
 mov si,0 
 mov dh,0h
 mov bl,0h
 l1:
 mov bh,a[si]
 mov dl,bh 
 add dh,dl  
 inc si
 loop l1

 mov ax,@data
 mov ds,ax
 mov cx,2
 mov si,2
 l2:
 mov bh,a[si]
 mov dl,bh
 add bl,dl   
 inc si
 loop l2
 sub dh,dl
 mov dl,bh
 add dl,48
 mov ah,2h
 int 21h
 
ret