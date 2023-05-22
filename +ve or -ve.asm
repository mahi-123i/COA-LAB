;find the no of  negitive numbers

org 100h

.data
a db -1,-2,3,4,5
.code
mov dx,@data
mov si,0h
mov ch,5h
mov dh,0h
l1:
mov al,a[si]
cmp al,0h
jl v
inc si
dec ch
cmp ch,0h
je l2
loop l1

v:
inc dl
inc si
dec ch
cmp ch,0h
jne l1
je l2
l2:
add dl,48
mov ah,2h
int 21h

ret 

;find the no of  positive numbers
org 100h

.data
a db -1,-2,3,4,5
.code
mov dx,@data
mov si,0h
mov ch,5h
mov dh,0h
l1:
mov al,a[si]
cmp al,0h
jg v
inc si
dec ch
cmp ch,0h
je l2
loop l1

v:
inc dl
inc si
dec ch
cmp ch,0h
jne l1
je l2
l2:
add dl,48
mov ah,2h
int 21h

ret




