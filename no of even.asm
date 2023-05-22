org 100h
.data
a db 0,1,2,3,4,5,6,7,8,9

.code
 mov ax,@data
 mov ds,ax
 mov cx,10
 mov si,-1
 mov dl,0h
 mov dh,0h
 o:
 inc dh
 dec cx
 inc si
 cmp cx,0h
 je c: 
 cmp cx,0h
 jne l1

 l1:
 mov bh,a[si]
 mov ax,0h
 mov dl,bh
 mov al,dl 
 mov bl,02h
 div bl
 cmp ah,0h
 Je o:
 inc si
 loop l1
 dec cx
 
 c: 
 sub dh,1h
 mov dl,dh
 add dl,48
 mov ah,2h
 int 21h

 ret