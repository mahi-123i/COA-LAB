org 100h
.data
e db "the factorieal of number $"
a db " is:$"
.code
mov ax,@data
mov dx,offset e
mov ah,9h
int 21h
mov ah,1h
int 21h
sub al,30h
mov dl,al
dec dl
mov cl,dl

l1:
mul dl
dec dl
loop l1
mov bl,al
mov dx,offset a
mov ah,9h
int 21h
mov dl,0h
mov ah,2h
int 21h
mov dl,bl
add dl,48
mov ah,2h
int 21h



ret