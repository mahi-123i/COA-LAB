org 100h

.data
a db 1,2,3
e db "average of all elements in array [ $"
c db "]= $"
o db ", $"
.code
 mov dx,offset e
 mov ah,9h
 int 21h
 mov ax,@data
 mov ds,ax
 mov cx,3
 mov si,0h
 mov bl,0h
 
 l1:
 mov bh,a[si]
 mov dl,bh
 add bl,dl   
 add dl,48 
 mov ah,2h
 int 21h 
 mov dx,offset o
 mov ah,9h
 int 21h
 inc si
 loop l1 

 mov dx,offset c
 mov ah,9h
 int 21h
 mov ax,bx
 mov ah,0h
 mov dl,03h 
 div dl
 add al,30h 
 mov dl,al
 mov ah,2h
 int 21h

ret



