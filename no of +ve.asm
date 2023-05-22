org 100h
.data 
a db -1,-2,3,4,-5
b db "total positive numbers is:$"

.code
mov ax,@data
mov cl,5h
mov si,0h
mov bh,0h 
l1:
mov bl,a[si]
cmp bl,0h
jg l2
inc si
loop l1
jmp l3
l2:
inc bh
inc si
dec cl
cmp cl,0h
jne l1
l3:
mov dx,offset b
mov ah,9h
int 21h
mov dl,bh
add dl,48
mov ah,2h
int 21h


ret