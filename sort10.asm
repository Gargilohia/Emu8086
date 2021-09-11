
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

Data Segment
  arr1 db 8,2,7,4,3,1,5,6,9,0
Data Ends

Code Segment
  Assume cs:code, ds:data

  Begin:
    mov ax, data
    mov ds, ax
    mov es, ax
    mov bx, OFFSET arr1
    mov cx, 10
    mov dx, cx
    L1:      
       mov si, 0
       mov ax, si
       inc ax
       mov di, ax
       mov dx, cx
    L2:
       mov al, [bx][si]
       cmp al, [bx][di]
       jg L4
    L3:
       inc si
       inc di
       dec dx
       cmp dx, 00
       je L1
       jg L2
    L4:
       mov al, [bx][si]
       mov ah, [bx][di]
       mov [bx][si], ah
       mov [bx][di], al
       inc si
       inc di       
       dec dx
       cmp dx, 00
       je L1
       jg L2
    Exit:
       mov ax, 4c00h
       int 21h
Code Ends
End Begin

