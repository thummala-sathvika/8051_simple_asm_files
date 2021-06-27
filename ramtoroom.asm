ORG 0000H
	
	MOV DPTR,#200H;  Load 200h in DPTR which will act as source pointer
	MOV R1,#0EH;  The length of the string is loaded in R1 register
	MOV R0,#40H;  Load the destination pointer in R0 register
	MOV A,#0EH;
	
LOOP:MOVC A,@A+DPTR;  Move from ROM  to Accumulator
	MOV @R0,A;  Move from Accumulator to RAM
	SUBB A,#1;
	INC R0
	DJNZ R1,LOOP ; Decrement the count and check for zero
     HERE: SJMP HERE
	ORG 0200H
	DB "VIT UNIVERSITY"
	              END
