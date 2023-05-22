org 100h
.data
a db 1,3,4,5,6,7
.code
mov ax,@data
mov ds,ax
mov cx,3
mov si,0
mov bl,0
mov dh,0h
mov al,0h
L1:
mov bh,a[si]
mov dl,bh
add dh,dl
inc si
loop L1
mov ax,@data
mov ds,ax
mov cx,3
mov si,3
mov bl,0
L2:
mov bh,a[si]
mov dl,bh
add al,dl
inc si
loop L2
sub dh,al
mov dl,dh
add dl,48h
mov ah,2h
int 21h
ret