

data segment

n1 db "enter the length of the square$"

n2 db "area of the square=$"

n3 db ?

ends

code segment

start:

assume cs:code ,ds: data

mov ax,data

mov ds,ax

lea dx,n1 

mov ah,9 

int 21h 

mov ah,1 

int 21h 

sub al,30h 

mul al 

add al,30h 

mov n3,al 

lea dx,n1 

mov ah,9 

int 21h 

mov dl,n3

mov ah,2 

int 21h 

mov ah,4ch

int 21h

ends 

end start