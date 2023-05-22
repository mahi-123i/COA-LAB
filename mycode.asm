mov ah,1h
int 21h
sub al,30h
mov dl,al
mov dh,dl
dec dl
mov cl,dl
l1:
mul dl
dec dl
loop l1
mov bl,al
mov dl,0h
mov ah,2h
int 21h
mov dl,bl
add dl,48
mov ah,2h
int 21h

mov bh,bl

mov ah,1h
int 21h
sub al,30h
sub dh,al
mov dl,dh
cmp dl,1h
jne l2
dec dl
mov cl,dl
mov dl,01h
add dl,48h
mov ah,2h 
int 21h
l2:
mul dl
dec dl
loop l2

ret