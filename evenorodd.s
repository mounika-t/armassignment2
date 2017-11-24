     PRESERVE8
     THUMB
     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
       MOV R1,#43
	   MOV R2,#2
	   UDIV R3,R1,R2
	   MLS R3,R3,R2,R1
	   CMP R3,#0
	   BNE LOOP
	   MOV  R3,#1
	   B STOP
LOOP   MOV R3,#0
STOP   B STOP
      ENDFUNC
	  END
	   
	   