$INCLUDE(.\DCMotor.h)
$INCLUDE (AT89S52.inc)

	ORG 0000H 
	LJMP MAIN
	ORG 0013H
	LJMP DC

MAIN:
	MOV P2, #0
	MOV IE, #84H
	SJMP $

DC: 
		MOV P2, #2
		ACALL DELAY
		MOV P2, #0
		RETI

DELAY:
	MOV R7,#10
WAIT2:
	MOV R6,#0FFH
WAIT1:
	MOV R5,#0FFH
WAIT:
	DJNZ R5, WAIT
	DJNZ R6, WAIT1
	DJNZ R7, WAIT2
	RET

END