;here a can accomodate 8 bit, so we use r0 s that we can see the total value as r0(higher nibble) and A (lower ibble)
Org 0000h
MOV A, #92H;      Load first i/p data in A register.
MOV B, #23H;      Load second i/p data in B register.
ADD A, B ; Add the two data
JNC  L1 ; check for carry
INC R0; Increment reg R0, If CARRY occurs
L1: MOV B, A
MOV A, #66H; Load third i/p data in A register.
ADD A, B
JNC L2
INC R0
L2: MOV B,A
MOV A,#87H; Load fourth i/p data in A register.
ADD A,B
JNC L3
INC R0
L3: MOV B,A
MOV A,#0F5H; Load fifth i/p data in A register.
ADD A, B
JNC L4
 INC R0
L4: SJMP L4
END
	
