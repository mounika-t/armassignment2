   PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	
	MOV r1,#15       ;r1 gives the no. of terms in series that are to be considered
	MOV r2,#1	;r2 is counting variable
	VLDR.F32 s0,=5	;s0 gives the values of the x in e^x
	VLDR.F32 s1,=1	;s1 holds intemediate value
	VLDR.F32 s2,=1	;s2 stores sum of the series
loop1	CMP r2,r1      ; compare R1 and R2
	BNE LOOP       ; if count isless than no of terms go to LOOP	
	B stop
LOOP   VMUL.F32 s1,s1,s0       ;s1=s1*s0
       VMOV.F32 s5,r2    ;moving the bit stream in r2 to s5(FPR)
	VCVT.F32.U32 s5,s5 ;converting bitsream to unsigned  32 bit fp no 
	VDIV.F32 s1,s1,s5    ;divide s1 by count and store it back to s1	
	VADD.F32 s2,s2,s1  ; add sum and s1 and store it in sum
	ADD R2,R2,#1	;increement count
	B loop1
stop B stop
     ENDFUNC
     END
