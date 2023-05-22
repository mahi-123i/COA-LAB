org 100h
.data
a db 5,1,3,4,7
b db "largest element present in index and number is:$" 

.code
mov ax,@data
mov dx,offset b
mov ah,9h
int 21h
mov cl,4h
mov bh,a[0]
mov si,1h
l1: 
mov bl,a[si]
cmp bl,bh
jg l2
inc si
loop l1
jmp l3
l2:
mov bh,bl
mov dx,si
inc si
dec cl
cmp cl,0h
jne l1
l3:
inc dl
add dl,48
mov ah,2h
int 21h
mov dl,0h
mov ah,2h
int 21h
mov dl,bh
add dl,48
mov ah,2h
int 21h
ret




