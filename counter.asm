ORG  0000H
MOV TMOD,#16H; Counter0 in mode2 and        				timer1 in mode1
SETB P3.4               ;initialize as input port
MOV TH0,#00H    ; initialize Counter0 as 00
SETB TR0                ; Start counter0
CLR P1.7
WAIT: MOV A,TL0
CJNE A,#5, WAIT
SETB P1.7       ; Turn on the buzzer
ACALL DELAY  ;delay for 1 sec
CLR P1.7          ; Turn off the buzzer
HERE: SJMP HERE
DELAY:MOV R0,#14; timer 1 as to run 14 times
AGAIN:MOV TH1,#00H
MOV TL1,#00H
SETB TR1;staart timer 1
STAY:JNB TF1,STAY ; wait for 71 ms
CLR TR1
CLR TF1
DJNZ R0,AGAIN
RET
END
