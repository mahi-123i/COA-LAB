
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
a db 1,2,3
.code
 mov ax,@data
 mov ds,ax
 mov cx,3
 mov si,0h
 mov bl,0h
 l1:
 mov bh,a[si]
 mov dl,bh
 add bl,dl   
 add dl,48 
 mov ah,2h
 int 21h 
 mov dl,0h
 mov ah,2h
 int 21h
 inc si
 loop l1 
 mov dl,bl
 add dl,48 
 mov ah,2h
 int 21h

ret




                                        
                                        