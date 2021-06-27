ORG 000H
MOV DPTR, #200H
MOV R0, #40H
MOV R1, #0EH
LOOP:CLR A
MOVC A,@A+DPTR
MOV @R0,A
INC R0
INC DPTR
DJNZ R1,LOOP
MOV R0,#40H; Initializing R0 as source pointer
MOV R1,#60H; Initializing R1 as destination pointer
MOV R3,#0EH; Length of the string
LOOP2: CLR A
MOV A,@R0
MOV @R1,A
INC R0
INC R1
DJNZ R3, LOOP2
HERE:SJMP HERE
ORG 200H
DB "VIT UNIVERSITY"
END                 
