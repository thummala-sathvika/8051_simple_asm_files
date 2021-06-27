ORG 000H
MOV DPTR, #200H
MOV A, #03H; loading x value, eg.x=3, dont go above 9
MOV R1, A; copy x value to R1
MOV R0,A;  copy x value to R0
ADDC A, R1;    Add with carry( adding to get 2x)
MOV R1, A; R1 will have 2x value
MOV A, R0; Load A with x value
MOVC A, @A+DPTR; Mov from code space (ROM) to A register(get X2 from lookup table into register A)
ADDC A,#09H;     x2+9
ADDC A, R1; x2+2x+9
MOV R2, A
HERE: SJMP HERE
ORG 200H
DB 00H,01H,04H,09H,10H,19H,24H,31H,40H,51H
END	
