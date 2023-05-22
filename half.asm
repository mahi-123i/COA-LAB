org 100h
.data
a db 1,2,3,4
.code
mov ax,@data
mov ds,ax
mov cx,2
mov si,0
mov bl,0
mov dh,0h
mov al,0h
L1:
mov bh,a[si]
mov dl,bh
add bl,dl
add dh,dl
inc si
loop L1
mov ax,@data
mov ds,ax
mov cx,2
mov si,2
mov bl,0
L2:
mov bh,a[si]
mov dl,bh
add bl,dl
add al,dl
inc si
loop L2
sub al,dh
mov dl,al
add dl,48
mov ah,2h
int 21h
hlt
