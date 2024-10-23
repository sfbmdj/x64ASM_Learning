INCLUDELIB kernel32.lib
ExitProcess PROTO 

.DATA 

var QWORD 100 ; Init var mem

.CODE

con EQU 12 ; init constant mem val of 12

main PROC

	XOR RCX, RCX ; Clear reg 
	XOR RDX, RDX ; Clear reg, data counter 
	MOV RCX, con ; Assign const mem (12) to RCX reg, hardware counter

	MOV RCX, 33 ; assign immediate value to first clear reg
	MOV RDX, RCX ; Assign 1 reg to other reg 
	MOV RCX, var ; assign val in variable to first reg
	MOV var, RDX ; Assign value in 2nd reg to var

	XCHG RCX, var ; exchange data between variable and reg RCX
	MOV DL, 3 ; move 3 into DL 
	XCHG DH, DL ; exchanges 8 bit registers - DL to DH 
	ADD RDX, RCX ; adds val of counter register to data register
	SUB RCX, 100 ; subtracts 100 from RCX reg 
	INC var ; increments var by 1
	SUB RCX, var ; subtracts var-1 from RCX

CALL ExitProcess
MAIN ENDP
END