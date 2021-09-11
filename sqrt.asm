org 100
MOV AX,0019H
MOV CX,0001H
MOV DX, 0001H
SUB AX,DX 
JZ  label1
INC DX
INC DX
INC CX 
JMP 
label1:
  MOV AX,CX 
exit:
  ret