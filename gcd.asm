

data segment
num1 db 24h
num2 db 21h
data ends

code segment
assume cs:code,ds:data
start:
        mov ax,data
        mov ds,ax		;initializing data segment
        xor ax,ax
        xor bx,bx
        xor cx,cx
        xor dx,dx

        mov al,num1
        mov bl,num2		;storing numbers in registers

up:     mov ah,00		;clearing remainder for each iteration
        mov cl,bl               ;temp=num2
        div bl
        mov bl,ah               ;num2=num1%num2
        cmp bl,00		;checking if remainder is 0
        je down
        mov ch,cl		;gcd=temp
        jmp up

down:
        xor ax,ax
        xor bx,bx
        xor dx,dx                ;clearing the registers

        mov al,num1
        mov bl,num2		;moving content of registers
        mul bl			;multiplying the content of two registers

        mov bh,00		;making 8 bit operation to 16 bit operation
        mov bl,ch		;taking the gcd to bl register
        div bx			;dividing ax by bx

        mov dx,ax               ;showing final lcm in dx register
        xor ax,ax
        xor cx,cx
                                ;showing gcd in bl register
        int 03h
        code ends
        end start 

