org 100h
.data
a db "THE HCF IS:$"  
.code
mov ax,@data
mov dx,offset a
mov ah,9h
int 21h
mov dx,0h
mov ax,0h
mov bl,7h
mov bh,3h
cmp bl,bh
je l1
cmp bl,bh
jl l2
jmp l3
l2:
xchg bl,bh
l3:
mov cl,bl
l4:
mov al,bl
div bh
je l5
mov al,bh
mov dh,bh 
mov bh,ah
cmp ah,0h
je l5
mov dh,ah
mov ah,0h
div dh 
cmp ah,0h
je l5
loop l4
l1: 
mov dl,bh
add dl,48
mov ah,2h
int 21h
jmp l6
l5:
mov dl,dh
add dl,48
mov ah,2h
int 21h
l6:

ret




