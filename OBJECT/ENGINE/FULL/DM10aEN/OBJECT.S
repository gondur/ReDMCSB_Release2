BSS SEG "bss"
G352_apc_O:/* global */
	.WORD	#796
CODE SEG "main"
F031_aAA2_:/* global */
	LINK	A6,L$0
	MOVEM.L	A3-A2/D7,-(A7)
	MOVE	#1,-(A7)
	MOVE.L	#128,-(A7)
	JSR	F468_ozzz_(PC)
	ADDQ.L	#6,A7
	MOVE.L	D0,G412_puc_B(A4)
	MOVE	#1,-(A7)
	MOVE	#556,-(A7)
	JSR	F494_ozzz_(PC)
	ADDQ.L	#2,A7
	ADD	#199,D0
	AND.L	#65535,D0
	MOVE.L	D0,-(A7)
	JSR	F468_ozzz_(PC)
	ADDQ.L	#6,A7
	MOVE.L	D0,A3
	CLR	-(A7)
	MOVE.L	#2786,-(A7)
	JSR	F468_ozzz_(PC)
	ADDQ.L	#6,A7
	MOVE.L	D0,A2
	MOVE.L	A2,-(A7)
	MOVE	#-32212,-(A7)
	JSR	F490_lzzz_(PC)
	ADDQ.L	#6,A7
	CLR	D7
	BRA.S	L2
L3:
	MOVE	D7,D0
	ASL.L	#2,D0
	LEA	G352_apc_O(A4),A0
	ADDA	D0,A0
	MOVE.L	A3,(A0)
	BRA.S	L6
L7:
	MOVE.B	(A2)+,(A3)+
L6:
	MOVE.B	(A2),D0
	AND	#255,D0
	AND	#128,D0
	BEQ.S	L7
L8:
	MOVE.B	(A2)+,D0
	AND	#255,D0
	AND	#127,D0
	MOVE.B	D0,(A3)+
	CLR.B	(A3)+
L4:
	ADDQ	#1,D7
L2:
	CMPI	#199,D7
	BCS.S	L3
L5:
	MOVE.L	#2786,-(A7)
	JSR	F469_rzzz_(PC)
	ADDQ.L	#4,A7
L1:
	MOVEM.L	(A7)+,D7/A2-A3
	UNLK	A6
	RTS
L$0:	.EQU	#0
F032_aaaY_:/* global */
	LINK	A6,L$9
	MOVE	D7,-(A7)
	CMPI	#-1,8(A6)
	BNE.S	L11
	MOVE	#-1,D0
	BRA.S	L10
L11:
	MOVE	8(A6),-(A7)
	JSR	F141_anzz_(PC)
	ADDQ.L	#2,A7
	MOVE	D0,D7
	CMPI	#-1,D7
	BEQ.S	L12
	MOVE	D7,D0
	MULS	#6,D0
	LEA	G237_as_Gr(A4),A0
	ADDA	D0,A0
	MOVE	(A0),D7
L12:
	MOVE	D7,D0
L10:
	MOVE	(A7)+,D7
	UNLK	A6
	RTS
L$9:	.EQU	#0
F033_aaaz_:/* global */
	LINK	A6,L$13
	MOVEM.L	A3/D7,-(A7)
	MOVE	8(A6),-(A7)
	JSR	F032_aaaY_(PC)
	ADDQ.L	#2,A7
	MOVE	D0,D7
	CMPI	#-1,D0
	BEQ	L15(PC)
	CMPI	#32,D7
	BGE.S	L18
	CMPI	#0,D7
	BGE.S	L17
L18:
	CMPI	#148,D7
	BLT.S	L19
	CMPI	#163,D7
	BLE.S	L17
L19:
	CMPI	#195,D7
	BNE	L16(PC)
L17:
	MOVE	8(A6),-(A7)
	JSR	F156_afzz_(PC)
	ADDQ.L	#2,A7
	MOVE.L	D0,A3
	MOVE	D7,D0
L20:
	CMP	#0,D0
	BEQ.S	L21
	BRA.S	L23
L21:
	ADD	G308_i_Par(A4),D7
	BRA	L22(PC)
	BRA.S	L24
L23:
	CMP	#4,D0
	BEQ.S	L24
	BRA.S	L25
L24:
	MOVE.L	A3,D0
	MOVE.L	D0,A0
	MOVE	2(A0),D0
	AND	#-32768,D0
	LSR	#7,D0
	LSR	#8,D0
	BEQ.S	L27
	MOVE.L	A3,D0
	MOVE.L	D0,A0
	MOVE	2(A0),D0
	AND	#15360,D0
	LSR	#2,D0
	LSR	#8,D0
	LEA	G029_auc_G(A4),A0
	ADDA	D0,A0
	MOVE.B	(A0),D0
	AND	#255,D0
	ADD	D0,D7
L27:
	BRA	L22(PC)
	BRA.S	L26
L25:
	CMP	#30,D0
	BEQ.S	L26
	BRA.S	L28
L26:
	MOVE.L	A3,D0
	MOVE.L	D0,A0
	MOVE	2(A0),D0
	AND	#-1024,D0
	LSR	#2,D0
	LSR	#8,D0
	BEQ.S	L30
	ADDQ	#1,D7
L30:
	BRA.S	L22
	BRA.S	L29
L28:
	CMP	#8,D0
	BEQ.S	L29
L31:
	CMP	#12,D0
	BEQ.S	L29
L32:
	CMP	#10,D0
	BEQ.S	L29
	BRA.S	L33
L29:
	MOVE	2(A3),D0
	AND	#-16384,D0
	LSR	#6,D0
	LSR	#8,D0
	BEQ.S	L35
	ADDQ	#1,D7
L35:
	BRA.S	L22
	BRA.S	L34
L33:
	CMP	#23,D0
	BEQ.S	L34
L36:
	CMP	#14,D0
	BEQ.S	L34
L37:
	CMP	#18,D0
	BEQ.S	L34
L38:
	CMP	#25,D0
	BEQ.S	L34
L39:
	CMP	#16,D0
	BEQ.S	L34
L40:
	CMP	#20,D0
	BEQ.S	L34
	BRA.S	L41
L34:
	MOVE.L	A3,D0
	MOVE.L	D0,A0
	MOVE	2(A0),D0
	AND	#15360,D0
	LSR	#2,D0
	LSR	#8,D0
	BEQ.S	L43
	ADDQ	#1,D7
L43:
L41:
L42:
L22:
L16:
L15:
	MOVE	D7,D0
L14:
	MOVEM.L	(A7)+,D7/A3
	UNLK	A6
	RTS
L$13:	.EQU	#0
F034_aaau_:/* global */
	LINK	A6,L$44
	MOVEM.L	A3-A2/D7-D6,-(A7)
	MOVE	8(A6),D7
	MOVE	D7,-(A7)
	JSR	F033_aaaz_(PC)
	ADDQ.L	#2,A7
	MOVE	D0,D6
	CMPI	#147,D6
	BNE.S	L46
	MOVE	D7,-(A7)
	JSR	F156_afzz_(PC)
	ADDQ.L	#2,A7
	MOVE.L	D0,A2
	MOVE	2(A2),D0
	AND	#-16384,D0
	LSR	#6,D0
	LSR	#8,D0
	MULS	#800,D0
	LEA	G407_s_Par(A4),A0
	ADDA	D0,A0
	LEA	(A0),A0
	MOVE.L	A0,-(A7)
	PEA	-16(A6)
	JSR	strcpy(PC)
	ADDQ.L	#8,A7
DATA SEG "s!"
s!:
	DATA 20 00 
CODE SEG "main"
	PEA	s!(A4)
	PEA	-16(A6)
	JSR	strcat(PC)
	ADDQ.L	#8,A7
	MOVE	D6,D0
	ASL.L	#2,D0
	LEA	G352_apc_O(A4),A0
	ADDA	D0,A0
	MOVE.L	(A0),-(A7)
	PEA	-16(A6)
	JSR	strcat(PC)
	ADDQ.L	#8,A7
	LEA	-16(A6),A0
	MOVE.L	A0,A3
	BRA.S	L47
L46:
	MOVE	D6,D0
	ASL.L	#2,D0
	LEA	G352_apc_O(A4),A0
	ADDA	D0,A0
	MOVE.L	(A0),D0
	MOVE.L	D0,A3
L47:
	MOVE	#14,-(A7)
	MOVE.L	A3,-(A7)
	CLR	-(A7)
	MOVE	#4,-(A7)
	MOVE	#37,-(A7)
	MOVE	#233,-(A7)
	MOVE	#160,-(A7)
	MOVE.L	G348_pl_Bi(A4),-(A7)
	JSR	F041_aadZ_(PC)
	ADDA	#20,A7
L45:
	MOVEM.L	(A7)+,D6-D7/A2-A3
	UNLK	A6
	RTS
L$44:	.EQU	#-16
F035_aaaw_:/* global */
	LINK	A6,L$48
	MOVE	#160,-(A7)
	CLR	-(A7)
	PEA	G028_s_Gra(A4)
	MOVE.L	G348_pl_Bi(A4),-(A7)
	JSR	F135_xzzz_(PC)
	ADDA	#12,A7
L49:
	UNLK	A6
	RTS
L$48:	.EQU	#0
F036_aA19_:/* global */
	LINK	A6,L$50
	MOVEM.L	A3-A2/D7-D6,-(A7)
	MOVE	8(A6),D7
	MOVE.L	10(A6),A3
	CLR	D6
	BRA.S	L52
L53:
	MOVE	D6,D0
	ASL.L	#1,D0
	LEA	G026_ai_Gr(A4),A0
	ADDA	D0,A0
	MOVE	(A0),D0
	CMP	D7,D0
	BLS.S	L56
	BRA.S	L55
L56:
L54:
	ADDQ	#1,D6
L52:
	CMPI	#7,D6
	BCS.S	L53
L55:
	MOVE	#42,D0
	SUBQ	#1,D6
	MOVE	D6,D1
	ADD	D1,D0
	MOVE	D0,-(A7)
	JSR	F489_ayzz_(PC)
	ADDQ.L	#2,A7
	MOVE.L	D0,A2
	MOVE	D6,D0
	ASL.L	#1,D0
	LEA	G026_ai_Gr(A4),A0
	ADDA	D0,A0
	SUB	(A0),D7
	MOVE	D7,D0
	AND	#4080,D0
	ASL	#5,D0
	MOVE	D7,D1
	AND	#15,D1
	ASL	#1,D1
	ADD	D1,D0
	AND.L	#65535,D0
	ASL.L	#2,D0
	ADDA.L	D0,A2
	CLR	D6
	BRA.S	L57
L58:
	MOVE.L	(A2)+,(A3)+
	MOVE.L	(A2),(A3)+
	ADDA.L	#124,A2
L59:
	ADDQ	#1,D6
L57:
	CMPI	#16,D6
	BCS.S	L58
L60:
L51:
	MOVEM.L	(A7)+,D6-D7/A2-A3
	UNLK	A6
	RTS
L$50:	.EQU	#0
F037_aA29_:/* global */
	LINK	A6,L$61
	CLR	-(A7)
	MOVE.L	#128,-(A7)
	JSR	F468_ozzz_(PC)
	ADDQ.L	#6,A7
	MOVE.L	D0,-4(A6)
	MOVE	10(A6),D0
	MOVE	D0,-12(A6)
	ADD	#15,D0
	MOVE	D0,-10(A6)
	MOVE	12(A6),D0
	MOVE	D0,-8(A6)
	ADD	#15,D0
	MOVE	D0,-6(A6)
	MOVE.L	-4(A6),-(A7)
	MOVE	8(A6),-(A7)
	JSR	F036_aA19_(PC)
	ADDQ.L	#6,A7
	MOVE	#-1,-(A7)
	MOVE	#8,-(A7)
	PEA	-12(A6)
	MOVE.L	-4(A6),-(A7)
	JSR	F021_a002_(PC)
	ADDA	#12,A7
	MOVE.L	#128,-(A7)
	JSR	F469_rzzz_(PC)
	ADDQ.L	#4,A7
L62:
	UNLK	A6
	RTS
L$61:	.EQU	#-12
F038_AA07_:/* global */
	LINK	A6,L$63
	MOVEM.L	A3-A2/D7-D4,-(A7)
	MOVE	8(A6),D7
	MOVE	10(A6),D6
	MOVE	D7,D0
	MULS	#6,D0
	LEA	G030_as_Gr(A4),A0
	ADDA	D0,A0
	LEA	(A0),A0
	MOVE.L	A0,A3
	MOVE	D6,D0
	MOVE	D0,4(A3)
	CMPI	#-1,D0
	BNE.S	L65
	BRA	L64(PC)
L65:
	MOVE	(A3),D0
	MOVE	D0,-8(A6)
	ADD	#15,D0
	MOVE	D0,-6(A6)
	MOVE	2(A3),D0
	MOVE	D0,-4(A6)
	ADD	#15,D0
	MOVE	D0,-2(A6)
	CLR	D5
	BRA.S	L66
L67:
	MOVE	D5,D0
	ASL.L	#1,D0
	LEA	G026_ai_Gr(A4),A0
	ADDA	D0,A0
	MOVE	(A0),D0
	CMP	D6,D0
	BLE.S	L70
	BRA.S	L69
L70:
L68:
	ADDQ	#1,D5
L66:
	CMPI	#7,D5
	BCS.S	L67
L69:
	SUBQ	#1,D5
	MOVE	D5,D0
	ADD	#42,D0
	MOVE	D0,-(A7)
	JSR	F489_ayzz_(PC)
	ADDQ.L	#2,A7
	MOVE.L	D0,A2
	MOVE	D5,D0
	ASL.L	#1,D0
	LEA	G026_ai_Gr(A4),A0
	ADDA	D0,A0
	SUB	(A0),D6
	CMPI	#8,D7
	BCS.S	L71
	MOVE.L	G296_puc_B(A4),-12(A6)
	MOVE	#112,D4
	BRA.S	L72
L71:
	MOVE.L	G348_pl_Bi(A4),D0
	MOVE.L	D0,-12(A6)
	MOVE	#160,D4
L72:
	MOVE	#0,D0
	MOVE	D0,G578_B_Use(A4)
	MOVE	#-1,-(A7)
	MOVE	D4,-(A7)
	MOVE	#128,-(A7)
	MOVE	D6,D0
	AND	#4080,D0
	MOVE	D0,-(A7)
	MOVE	D6,D0
	AND	#15,D0
	ASL	#4,D0
	MOVE	D0,-(A7)
	PEA	-8(A6)
	MOVE.L	-12(A6),-(A7)
	MOVE.L	A2,-(A7)
	JSR	F132_xzzz_(PC)
	ADDA	#22,A7
L64:
	MOVEM.L	(A7)+,D4-D7/A2-A3
	UNLK	A6
	RTS
L$63:	.EQU	#-12
F039_aaaL_:/* global */
	LINK	A6,L$73
	MOVE	8(A6),D0
	MULS	#6,D0
	LEA	G030_as_Gr+4(A4),A0
	ADDA	D0,A0
	MOVE	(A0),D0
L74:
	UNLK	A6
	RTS
L$73:	.EQU	#0
