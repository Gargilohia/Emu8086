MOV AL,32
MOV BL,32
ADD AL,BL
DAA
MOV [600],AL
MOV AL,00
ADC AL,AL
MOV [601],AL
HLT
