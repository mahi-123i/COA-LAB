org 100h
.data
a db 7,6,5,4,3,2,1
msg db "the sorted array is : $"
temp dw ?
.code
mov dx, offset msg
mov ah, 09h
int 21h
mov ax,@data
mov ds,ax
mov temp,7
l0:
mov cx,7
mov si,0h
mov di,1h
l1:
mov bl,a[si]
mov al,a[di]
cmp bl,al
jg l2
jmp l3
l2:
mov bh,a[di]
mov dl,a[si]
mov a[si],bh
mov a[di],dl
l3:
inc si
inc di
loop l1
dec temp
cmp temp,0
jz l5
jmp l0
mov cx,7
mov si,0h
l5:
mov cx,7
mov si,0
l4:
mov dl,a[si] 
add dl,48
mov ah,2h
int 21h
inc si
mov dl,0h
mov ah,2h
int 21h
loop l4
ret