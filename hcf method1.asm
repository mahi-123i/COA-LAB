org 100h
.data
a db "HCF is:$"
rd db ?
mul1 db ?
.code
mov ax,@data 
mov dx,offset a
mov ah,9h
int 21h
mov bl,5h
mov bh,5h
mov al,bl
mul bh
mov mul1,al
cmp bl,bh
jl l2
je l1
jmp l3 
l1: 
mov dl,bl
jmp l6 
l2:
xchg bl,bh 
jmp l3
l3:
mov cl,bl
mov rd,1h
l4:
mov ax,0h
mov al,bh
mul rd
mov dl,al
div bl
inc rd
cmp ah,0h
je l5
loop l4
l6:
add dl,48
mov ah,2h
int 21h
ret
l5:
mov al,mul1 
div dl
mov dl,al
add dl,48
mov ah,2h
int 21h


ret




