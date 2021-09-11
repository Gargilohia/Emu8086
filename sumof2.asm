
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

DATA SEGMENT  
C DB 10
D DB 15
;A DB 10
B DB 10 

DATA ENDS
CODE SEGMENT  
    
         ASSUME DS:DATA,CS:CODE
START: 
      MOV AX,DATA   
     
      
      MOV DS,AX
      MOV AX,00 
      MOV AL,C
      ADD AL,D
      ;MOV AL,A
      MOV BL,B
      DIV BL
      CMP AH,00
      JZ L1
      ;MOV CL,A
      MOV CH,00
      JMP L2
   L1:;MOV CH,A
      MOV CL,00
   L2:MOV AH,4CH
      INT 21H
CODE ENDS
END START







