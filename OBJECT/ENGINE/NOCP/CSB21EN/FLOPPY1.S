CODE SEG "start"
F449_xxxx_:/* global */
	LINK	A6,L$0
	MOVE	#1,-(A7)
	CLR	-(A7)
	CLR	-(A7)
	MOVE	#1,-(A7)
	MOVE	8(A6),-(A7)
	CLR.L	-(A7)
	MOVE.L	10(A6),-(A7)
	MOVE	#8,-(A7)
	JSR	R056_aaal_(PC)
	ADDA	#20,A7
	MOVE	#1,-(A7)
	CLR	-(A7)
	CLR	-(A7)
	MOVE	#1,-(A7)
	MOVE	8(A6),-(A7)
	CLR.L	-(A7)
	MOVE.L	10(A6),-(A7)
	MOVE	#9,-(A7)
	JSR	R056_aaal_(PC)
	ADDA	#20,A7
	CMPI.L	#-13,D0
	SEQ	D0
	AND	#1,D0
L1:
	UNLK	A6
	RTS
L$0:	.EQU	#0
F450_xxxx_:/* global */
	LINK	A6,L$2
CODE SEG "init!"
	LEA	2G577_ac_T(A4),A1
	MOVE.B	#65,(A1)+
	MOVE.B	#58,(A1)+
	MOVE.B	#92,(A1)+
	MOVE.B	#70,(A1)+
	MOVE.B	#0,(A1)+
BSS SEG "bss"
2G577_ac_T:
	.WORD	#6
CODE SEG "start"
	MOVEM.L	D7-D6,-(A7)
	CMPI	#0,8(A6)
	BEQ	L4(PC)
	CMPI	#1,8(A6)
	BNE.S	L5
	MOVE	G573_i_Gam(A4),-2(A6)
	BRA.S	L6
L5:
	MOVE	G574_i_Sav(A4),-2(A6)
L6:
	MOVE	#65,D0
	ADD	-2(A6),D0
	MOVE.B	D0,2G577_ac_T(A4)
	CLR.L	-(A7)
	MOVE	#32,-(A7)
	JSR	R057_rzzz_(PC)
	ADDQ.L	#6,A7
	MOVE.L	D0,D7
	LEA	L1V450_1_xx(PC),A0
	MOVE.L	A6,(A0)
	MOVE.L	1138.W,-6(A6)
	MOVE.L	1150.W,-10(A6)
	MOVE.L	1142.W,-14(A6)
	LEA	L1T450_003_(PC),A0
	MOVE.L	A0,1138.W
	MOVE.L	A0,D6
	LEA	L1T450_005_(PC),A0
	MOVE.L	A0,1150.W
	LEA	L1T450_007_(PC),A0
	MOVE.L	A0,1142.W
	CLR	-(A7)
	PEA	2G577_ac_T(A4)
	MOVE	#61,-(A7)
	JSR	R057_rzzz_(PC)
	ADDQ.L	#8,A7
	CMP.L	1138.W,D6
	BNE.S	L1T450_010
	MOVE.L	-6(A6),1138.W
	MOVE.L	-10(A6),1150.W
	MOVE.L	-14(A6),1142.W
	BRA.S	L1T450_010
L1T450_003_:
	MOVE.L	L1V450_1_xx(PC),A0
	MOVE	-2(A0),D0
	CMP	4(A7),D0
	BNE.S	L1T450_004
	MOVE.L	-6(A0),1138.W
	MOVE.L	-10(A0),1150.W
	MOVE.L	-14(A0),1142.W
L1T450_004:
	MOVE.L	-6(A0),A0
	JMP	(A0)
L1T450_005_:
	MOVE.L	L1V450_1_xx(PC),A0
	MOVE	-2(A0),D0
	CMP	4(A7),D0
	BNE.S	L1T450_006
	MOVEQ	#2,D0
	RTS
L1T450_006:
	MOVE.L	-10(A0),A0
	JMP	(A0)
L1T450_007_:
	MOVE.L	L1V450_1_xx(PC),A0
	MOVE	-2(A0),D0
	CMP	14(A7),D0
	BNE.S	L1T450_008
	MOVEQ	#242,D0
	RTS
L1T450_008:
	MOVE.L	-14(A0),A0
	JMP	(A0)
L1V450_1_xx:
	ORI.B	#0,D0
L1T450_010:
	MOVE.L	D7,-(A7)
	MOVE	#32,-(A7)
	JSR	R057_rzzz_(PC)
	ADDQ.L	#6,A7
L4:
L3:
	MOVEM.L	(A7)+,D6-D7
	UNLK	A6
	RTS
L$2:	.EQU	#-14
