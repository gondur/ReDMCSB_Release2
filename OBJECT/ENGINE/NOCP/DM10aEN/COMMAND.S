BSS SEG "bss"
G432_as_Co:/* global */
	.WORD	#30
G433_i_Com:/* global */
	.WORD	#2
CODE SEG "init!"
	MOVE	#4,G434_i_Com(A4)
BSS SEG "bss"
G434_i_Com:/* global */
	.WORD	#2
CODE SEG "init!"
	MOVE	#1,G435_B_Com(A4)
BSS SEG "bss"
G435_B_Com:/* global */
	.WORD	#2
G436_B_Pen:/* global */
	.WORD	#2
G437_i_Pen:/* global */
	.WORD	#2
G438_i_Pen:/* global */
	.WORD	#2
G439_i_Pen:/* global */
	.WORD	#2
G441_ps_Pr:/* global */
	.WORD	#4
G442_ps_Se:/* global */
	.WORD	#4
G443_ps_Pr:/* global */
	.WORD	#4
G444_ps_Se:/* global */
	.WORD	#4
G445_as_Gr:/* global */
	.WORD	#48
G446_as_Gr:/* global */
	.WORD	#24
G447_as_Gr:/* global */
	.WORD	#192
G448_as_Gr:/* global */
	.WORD	#108
G449_as_Gr:/* global */
	.WORD	#456
G450_as_Gr:/* global */
	.WORD	#36
G451_as_Gr:/* global */
	.WORD	#36
G452_as_Gr:/* global */
	.WORD	#60
G453_as_Gr:/* global */
	.WORD	#60
G454_as_Gr:/* global */
	.WORD	#108
G455_as_Gr:/* global */
	.WORD	#156
G456_as_Gr:/* global */
	.WORD	#108
G457_as_Gr:/* global */
	.WORD	#48
G458_as_Gr:/* global */
	.WORD	#28
G459_as_Gr:/* global */
	.WORD	#28
G460_as_Gr:/* global */
	.WORD	#12
G461_as_Gr:/* global */
	.WORD	#8
G462_as_Gr:/* global */
	.WORD	#16
G463_as_Gr:/* global */
	.WORD	#32
G464_as_Gr:/* global */
	.WORD	#56
G465_ai_Gr:/* global */
	.WORD	#8
G466_ai_Gr:/* global */
	.WORD	#8
G467_s_Gra:/* global */
	.WORD	#8
G468_s_Gra:/* global */
	.WORD	#8
G469_s_Gra:/* global */
	.WORD	#8
G470_s_Gra:/* global */
	.WORD	#8
G471_as_Gr:/* global */
	.WORD	#24
G472_as_Gr:/* global */
	.WORD	#36
G473_as_Gr:/* global */
	.WORD	#48
G474_as_Gr:/* global */
	.WORD	#60
G475_as_Gr:/* global */
	.WORD	#24
G476_as_Gr:/* global */
	.WORD	#36
G477_as_Gr:/* global */
	.WORD	#48
G478_as_Gr:/* global */
	.WORD	#60
G479_i_Gra:/* global */
	.WORD	#2
CODE SEG "init!"
	LEA	G480_aaps_(A4),A1
	LEA	G471_as_Gr(A4),A0
	MOVE.L	A0,(A1)+
	LEA	G472_as_Gr(A4),A0
	MOVE.L	A0,(A1)+
	LEA	G473_as_Gr(A4),A0
	MOVE.L	A0,(A1)+
	LEA	G474_as_Gr(A4),A0
	MOVE.L	A0,(A1)+
	LEA	G475_as_Gr(A4),A0
	MOVE.L	A0,(A1)+
	LEA	G476_as_Gr(A4),A0
	MOVE.L	A0,(A1)+
	LEA	G477_as_Gr(A4),A0
	MOVE.L	A0,(A1)+
	LEA	G478_as_Gr(A4),A0
	MOVE.L	A0,(A1)+
BSS SEG "bss"
G480_aaps_:/* global */
	.WORD	#32
CODE SEG "user"
F357_qzzz_:/* global */
	LINK	A6,L$0
	BRA.S	L2
L3:
	MOVE	#7,-(A7)
	JSR	R057_rzzz_(PC)
	ADDQ.L	#2,A7
L2:
	MOVE	#11,-(A7)
	JSR	R057_rzzz_(PC)
	ADDQ.L	#2,A7
	TST	D0
	BNE.S	L3
L4:
	MOVE	#1,G435_B_Com(A4)
	CLR	G433_i_Com(A4)
	MOVE	#4,G434_i_Com(A4)
	CLR	G435_B_Com(A4)
L1:
	UNLK	A6
	RTS
L$0:	.EQU	#0
F358_xxxx_:/* global */
	LINK	A6,L$5
	MOVEM.L	A3/D7-D4,-(A7)
	MOVE.L	8(A6),A3
	MOVE	12(A6),D7
	MOVE	14(A6),D6
	MOVE	16(A6),D5
	CMPA.L	#0,A3
	BNE.S	L7
	MOVE	#0,D0
	BRA.S	L6
L7:
	BRA.S	L8
L9:
	MOVE	D7,D0
	CMP	4(A3),D0
	BGT.S	L11
	MOVE	D7,D0
	CMP	2(A3),D0
	BLT.S	L11
	MOVE	D6,D0
	CMP	6(A3),D0
	BLT.S	L11
	MOVE	D6,D0
	CMP	8(A3),D0
	BGT.S	L11
	MOVE	D5,D0
	AND	10(A3),D0
	BEQ.S	L11
	BRA.S	L10
L11:
	ADDA	#12,A3
L8:
	MOVE	(A3),D4
	BNE.S	L9
L10:
	MOVE	D4,D0
L6:
	MOVEM.L	(A7)+,D4-D7/A3
	UNLK	A6
	RTS
L$5:	.EQU	#0
F359_hzzz_:/* global */
	LINK	A6,L$12
	MOVEM.L	D7-D4,-(A7)
	MOVE	8(A6),D7
	MOVE	10(A6),D6
	TAS	G435_B_Com(A4)
	BEQ.S	L2T359_002
	MOVE	#1,G436_B_Pen(A4)
	MOVE	D7,G437_i_Pen(A4)
	MOVE	D6,G438_i_Pen(A4)
	MOVE	12(A6),G439_i_Pen(A4)
	BRA	L13(PC)
L2T359_002:
	MOVE	G434_i_Com(A4),D0
	ADDQ	#2,D0
	MOVE	D0,D5
	CMPI	#4,D0
	BLE.S	L14
	SUBQ	#5,D5
L14:
	MOVE	D5,D0
	CMP	G433_i_Com(A4),D0
	BNE.S	L15
	BRA.S	L13
L15:
	MOVE	12(A6),-(A7)
	MOVE	D6,-(A7)
	MOVE	D7,-(A7)
	MOVE.L	G441_ps_Pr(A4),-(A7)
	JSR	F358_xxxx_(PC)
	ADDA	#10,A7
	MOVE	D0,D4
	CMPI	#0,D4
	BNE.S	L16
	MOVE	12(A6),-(A7)
	MOVE	D6,-(A7)
	MOVE	D7,-(A7)
	MOVE.L	G442_ps_Se(A4),-(A7)
	JSR	F358_xxxx_(PC)
	ADDA	#10,A7
	MOVE	D0,D4
L16:
	CMPI	#0,D4
	BEQ.S	L17
	MOVE	D5,D0
	SUBQ	#1,D5
	TST	D0
	BNE.S	L18
	MOVE	#4,D5
L18:
	MOVE	D5,D0
	MOVE	D0,G434_i_Com(A4)
	MULS	#6,D0
	LEA	G432_as_Co+4(A4),A0
	ADDA	D0,A0
	MOVE	D4,(A0)
	MOVE	D5,D0
	MULS	#6,D0
	LEA	G432_as_Co(A4),A0
	ADDA	D0,A0
	MOVE	D7,(A0)
	MOVE	D5,D0
	MULS	#6,D0
	LEA	G432_as_Co+2(A4),A0
	ADDA	D0,A0
	MOVE	D6,(A0)
L17:
	CLR	G435_B_Com(A4)
L13:
	MOVEM.L	(A7)+,D4-D7
	UNLK	A6
	RTS
L$12:	.EQU	#0
F360_xxxx_:/* global */
	LINK	A6,L$19
	MOVE	G436_B_Pen(A4),D0
	BEQ.S	L21
	CLR	G436_B_Pen(A4)
	MOVE	G439_i_Pen(A4),-(A7)
	MOVE	G438_i_Pen(A4),-(A7)
	MOVE	G437_i_Pen(A4),-(A7)
	JSR	F359_hzzz_(PC)
	ADDQ.L	#6,A7
L21:
L20:
	UNLK	A6
	RTS
L$19:	.EQU	#0
F361_nzzz_:/* global */
	LINK	A6,L$22
	MOVEM.L	A3/D7-D5,-(A7)
	MOVE.L	8(A6),D7
	MOVE.L	G443_ps_Pr(A4),D0
	MOVE.L	D0,A3
	CMPI.L	#0,D0
	BNE.S	L24
	BRA	L23(PC)
L24:
	MOVE	#1,G435_B_Com(A4)
	MOVE.L	D7,D0
	CMPI	#0,D0
	BNE.S	L25
	MOVE.L	D7,D0
	ASR.L	#8,D0
	MOVE.L	D0,D7
L25:
	MOVE	G434_i_Com(A4),D0
	ADDQ	#2,D0
	MOVE	D0,D6
	CMPI	#4,D0
	BLE.S	L26
	SUBQ	#5,D6
L26:
	MOVE	D6,D0
	CMP	G433_i_Com(A4),D0
	BNE.S	L27
	BRA.S	L4T361_014
L27:
	BRA.S	L28
L29:
	MOVE.L	D7,D0
	CMP	2(A3),D0
	BNE.S	L31
	MOVE	D6,D0
	SUBQ	#1,D6
	TST	D0
	BNE.S	L32
	MOVE	#4,D6
L32:
	MOVE	D6,D0
	MOVE	D0,G434_i_Com(A4)
	MULS	#6,D0
	LEA	G432_as_Co+4(A4),A0
	ADDA	D0,A0
	MOVE	D5,(A0)
	BRA.S	L4T361_014
L31:
	ADDQ.L	#4,A3
L28:
	MOVE	(A3),D5
	BNE.S	L29
L30:
	MOVE.L	G444_ps_Se(A4),D0
	MOVE.L	D0,A3
	CMPI.L	#0,D0
	BNE.S	L33
	BRA.S	L4T361_014
L33:
	BRA.S	L34
L35:
	MOVE.L	D7,D0
	CMP	2(A3),D0
	BNE.S	L37
	MOVE	D6,D0
	SUBQ	#1,D6
	TST	D0
	BNE.S	L38
	MOVE	#4,D6
L38:
	MOVE	D6,D0
	MOVE	D0,G434_i_Com(A4)
	MULS	#6,D0
	LEA	G432_as_Co+4(A4),A0
	ADDA	D0,A0
	MOVE	D5,(A0)
	BRA.S	L4T361_014
L37:
	ADDQ.L	#4,A3
L34:
	MOVE	(A3),D5
	BNE.S	L35
L36:
L4T361_014:
	CLR	G435_B_Com(A4)
	JSR	F360_xxxx_(PC)
L23:
	MOVEM.L	(A7)+,D5-D7/A3
	UNLK	A6
	RTS
L$22:	.EQU	#0
F362_xxxx_:/* global */
	LINK	A6,L$39
L42:
L41:
	MOVE	G340_B_Hig(A4),D0
	BNE.S	L42
L43:
	MOVE	8(A6),G336_i_Hig(A4)
	MOVE	10(A6),G337_i_Hig(A4)
	MOVE	12(A6),G338_i_Hig(A4)
	MOVE	14(A6),G339_i_Hig(A4)
	MOVE	#1,G340_B_Hig(A4)
	MOVE	#37,-(A7)
	JSR	R056_aaal_(PC)
	ADDQ.L	#2,A7
L40:
	UNLK	A6
	RTS
L$39:	.EQU	#0
F363_pzzz_:/* global */
	LINK	A6,L$44
L47:
L46:
	MOVE	G340_B_Hig(A4),D0
	BNE.S	L47
L48:
	MOVE	G341_B_Hig(A4),D0
	BEQ.S	L49
	MOVE	#1,G340_B_Hig(A4)
	MOVE	#37,-(A7)
	JSR	R056_aaal_(PC)
	ADDQ.L	#2,A7
L49:
L45:
	UNLK	A6
	RTS
L$44:	.EQU	#0
F364_xxxx_:/* global */
	LINK	A6,L$50
	CLR	-(A7)
	MOVE	#-1,-(A7)
	MOVE	G307_i_Par(A4),-(A7)
	MOVE	G306_i_Par(A4),-(A7)
	MOVE	#-1,-(A7)
	JSR	F267_dzzz_(PC)
	ADDA	#10,A7
	PEA	G307_i_Par(A4)
	PEA	G306_i_Par(A4)
	MOVE	8(A6),D0
	BEQ.S	L52
	MOVE	#-1,D0
	BRA.S	L53
L52:
	MOVE	#1,D0
L53:
	MOVE	D0,-(A7)
	MOVE	G309_i_Par(A4),-(A7)
	JSR	F154_afzz_(PC)
	ADDA	#12,A7
	MOVE	D0,G327_i_New(A4)
	MOVE	G327_i_New(A4),-(A7)
	JSR	F173_gzzz_(PC)
	ADDQ.L	#2,A7
	MOVE	G307_i_Par(A4),-(A7)
	MOVE	G306_i_Par(A4),-(A7)
	JSR	F155_ahzz_(PC)
	ADDQ.L	#4,A7
	MOVE	D0,-(A7)
	JSR	F284_czzz_(PC)
	ADDQ.L	#2,A7
	MOVE	G309_i_Par(A4),-(A7)
	JSR	F173_gzzz_(PC)
	ADDQ.L	#2,A7
L51:
	UNLK	A6
	RTS
L$50:	.EQU	#-2
F365_xxxx_:/* global */
	LINK	A6,L$54
	MOVE	D7,-(A7)
	MOVE	#1,G321_B_Sto(A4)
	CMPI	#1,8(A6)
	BNE.S	L56
	MOVE	#145,-(A7)
	MOVE	#125,-(A7)
	MOVE	#261,-(A7)
	MOVE	#234,-(A7)
	JSR	F362_xxxx_(PC)
	ADDQ.L	#8,A7
	BRA.S	L57
L56:
	MOVE	#145,-(A7)
	MOVE	#125,-(A7)
	MOVE	#318,-(A7)
	MOVE	#291,-(A7)
	JSR	F362_xxxx_(PC)
	ADDQ.L	#8,A7
L57:
	MOVE	G307_i_Par(A4),-(A7)
	MOVE	G306_i_Par(A4),-(A7)
	JSR	F151_rzzz_(PC)
	ADDQ.L	#4,A7
	AND	#255,D0
	MOVE	D0,D7
	LSR	#5,D0
	CMPI	#3,D0
	BNE.S	L58
	MOVE	D7,D0
	AND	#4,D0
	MOVE	D0,-(A7)
	JSR	F364_xxxx_(PC)
	ADDQ.L	#2,A7
	BRA.S	L55
L58:
	CLR	-(A7)
	MOVE	#1,-(A7)
	MOVE	#-1,-(A7)
	MOVE	G307_i_Par(A4),-(A7)
	MOVE	G306_i_Par(A4),-(A7)
	JSR	F276_qzzz_(PC)
	ADDA	#10,A7
	MOVE	G308_i_Par(A4),D0
	CMPI	#2,8(A6)
	BNE.S	L59
	MOVE	#1,D1
	BRA.S	L60
L59:
	MOVE	#3,D1
L60:
	ADD	D1,D0
	AND	#3,D0
	MOVE	D0,-(A7)
	JSR	F284_czzz_(PC)
	ADDQ.L	#2,A7
	MOVE	#1,-(A7)
	MOVE	#1,-(A7)
	MOVE	#-1,-(A7)
	MOVE	G307_i_Par(A4),-(A7)
	MOVE	G306_i_Par(A4),-(A7)
	JSR	F276_qzzz_(PC)
	ADDA	#10,A7
L55:
	MOVE	(A7)+,D7
	UNLK	A6
	RTS
L$54:	.EQU	#0
F366_xxxx_:/* global */
	LINK	A6,L$61
	MOVEM.L	A3-A2/D7-D4,-(A7)
	MOVE	#1,G321_B_Sto(A4)
	LEA	G407_s_Par(A4),A0
	MOVE.L	A0,D0
	MOVE.L	D0,A3
	MOVE	#0,D0
	MOVE	D0,D4
	BRA.S	L63
L64:
	MOVE.L	A3,-(A7)
	JSR	F309_awzz_(PC)
	ADDQ.L	#4,A7
	MOVE	D0,-20(A6)
	MOVE	272(A3),D0
	MULU	#3,D0
	AND.L	#65535,D0
	DIVU	-20(A6),D0
	ADDQ	#1,D0
	MOVE	D0,-(A7)
	MOVE	D4,-(A7)
	JSR	F325_bzzz_(PC)
	ADDQ.L	#4,A7
	MOVE.L	A3,D0
	ADDA	#800,A3
	MOVE	D4,D0
	ADDQ	#1,D4
L63:
	MOVE	D4,D0
	CMP	G305_ui_Pa(A4),D0
	BCS.S	L64
L65:
	MOVE	8(A6),D4
	SUBQ	#3,D4
	MOVE	D4,D0
	ASL.L	#3,D0
	LEA	G463_as_Gr(A4),A0
	ADDA	D0,A0
	LEA	(A0),A0
	MOVE.L	A0,A2
	MOVE	6(A2),-(A7)
	MOVE	4(A2),-(A7)
	MOVE	2(A2),-(A7)
	MOVE	(A2),-(A7)
	JSR	F362_xxxx_(PC)
	ADDQ.L	#8,A7
	MOVE	G307_i_Par(A4),D0
	MOVE	D0,-4(A6)
	MOVE	D0,-(A7)
	MOVE	G306_i_Par(A4),D0
	MOVE	D0,-2(A6)
	MOVE	D0,-(A7)
	JSR	F151_rzzz_(PC)
	ADDQ.L	#4,A7
	AND	#255,D0
	MOVE	D0,D7
	LSR	#5,D0
	CMPI	#3,D0
	SEQ	D0
	AND	#1,D0
	MOVE	D0,-6(A6)
	MOVE	-6(A6),D0
	BEQ.S	L66
	CMPI	#2,D4
	BNE.S	L66
	MOVE	D7,D0
	AND	#4,D0
	MOVE	D0,-(A7)
	JSR	F364_xxxx_(PC)
	ADDQ.L	#2,A7
	BRA	L62(PC)
L66:
	PEA	-4(A6)
	PEA	-2(A6)
	MOVE	D4,D0
	ASL.L	#1,D0
	LEA	G466_ai_Gr(A4),A0
	ADDA	D0,A0
	MOVE	(A0),-(A7)
	MOVE	D4,D0
	ASL.L	#1,D0
	LEA	G465_ai_Gr(A4),A0
	ADDA	D0,A0
	MOVE	(A0),-(A7)
	MOVE	G308_i_Par(A4),-(A7)
	JSR	F150_wzzz_(PC)
	ADDA	#14,A7
	MOVE	-4(A6),-(A7)
	MOVE	-2(A6),-(A7)
	JSR	F151_rzzz_(PC)
	ADDQ.L	#4,A7
	AND	#255,D0
	MOVE	D0,D7
	LSR	#5,D0
	MOVE	D0,D6
	CMPI	#3,D6
	BNE.S	L67
	CLR	-(A7)
	MOVE	#-1,-(A7)
	MOVE	G307_i_Par(A4),-(A7)
	MOVE	G306_i_Par(A4),-(A7)
	MOVE	#-1,-(A7)
	JSR	F267_dzzz_(PC)
	ADDA	#10,A7
	MOVE	-2(A6),G306_i_Par(A4)
	MOVE	-4(A6),G307_i_Par(A4)
	MOVE	D7,D0
	AND	#4,D0
	MOVE	D0,-(A7)
	JSR	F364_xxxx_(PC)
	ADDQ.L	#2,A7
	BRA	L62(PC)
L67:
	CLR	D5
	CMPI	#0,D6
	BNE.S	L68
	MOVE	#1,D5
	BRA.S	L69
L68:
	CMPI	#4,D6
	BNE.S	L70
	MOVE	D7,D5
	AND	#7,D5
	CMPI	#0,D5
	SNE	D0
	TST.B	D0
	BEQ.S	L72
	CMPI	#1,D5
	SNE	D0
	TST.B	D0
L72:
	TST.B	D0
	BEQ.S	L71
	CMPI	#5,D5
	SNE	D0
	TST.B	D0
L71:
	AND	#1,D0
	MOVE	D0,D5
	BRA.S	L73
L70:
	CMPI	#6,D6
	BNE.S	L74
	MOVE	D7,D5
	AND	#4,D5
	SEQ	D5
	TST.B	D5
	BEQ.S	L75
	MOVE	D7,D5
	AND	#1,D5
	SEQ	D5
	TST.B	D5
L75:
	AND	#1,D5
L74:
L73:
L69:
	CMPI	#0,G305_ui_Pa(A4)
	BNE.S	L76
	BRA	L77(PC)
L76:
	MOVE	D5,D0
	BEQ	L78(PC)
	MOVE	#2,-(A7)
	MOVE	#24,-(A7)
	MOVE	#1,-(A7)
	MOVE	G308_i_Par(A4),D1
	ADDQ	#2,D1
	MOVE	D4,D0
	ADD	D1,D0
	MOVE	D0,D4
	AND	#3,D0
	MOVE	D0,-(A7)
	MOVE	-4(A6),-(A7)
	MOVE	-2(A6),-(A7)
	JSR	F286_hzzz_(PC)
	ADDQ.L	#6,A7
	MOVE	D0,-8(A6)
	MOVE	D0,-(A7)
	JSR	F321_AA29_(PC)
	ADDQ.L	#8,A7
	MOVE	D0,D5
	MOVE	D4,D0
	ADDQ	#1,D0
	AND	#3,D0
	MOVE	D0,-(A7)
	MOVE	-4(A6),-(A7)
	MOVE	-2(A6),-(A7)
	JSR	F286_hzzz_(PC)
	ADDQ.L	#6,A7
	MOVE	D0,-10(A6)
	MOVE	D0,-30(A6)
	MOVE	-8(A6),D0
	CMP	-30(A6),D0
	BEQ.S	L79
	MOVE	#2,-(A7)
	MOVE	#24,-(A7)
	MOVE	#1,-(A7)
	MOVE	-10(A6),-(A7)
	JSR	F321_AA29_(PC)
	ADDQ.L	#8,A7
	OR	D0,D5
L79:
	MOVE	D5,D0
	BEQ.S	L80
	CLR	-(A7)
	MOVE	G307_i_Par(A4),-(A7)
	MOVE	G306_i_Par(A4),-(A7)
	MOVE	#18,-(A7)
	JSR	F064_aadz_(PC)
	ADDQ.L	#8,A7
L80:
	BRA.S	L81
L78:
	MOVE	-4(A6),-(A7)
	MOVE	-2(A6),-(A7)
	JSR	F175_gzzz_(PC)
	ADDQ.L	#4,A7
	CMPI	#-2,D0
	SNE	D0
	AND	#1,D0
	MOVE	D0,D5
	BEQ.S	L82
	CLR	-(A7)
	MOVE	#-1,-(A7)
	MOVE	-4(A6),-(A7)
	MOVE	-2(A6),-(A7)
	JSR	F209_xzzz_(PC)
	ADDQ.L	#8,A7
L82:
L81:
L77:
	MOVE	D5,D0
	BEQ.S	L83
	JSR	F357_qzzz_(PC)
	CLR	G321_B_Sto(A4)
	BRA	L62(PC)
L83:
	MOVE	-6(A6),D0
	BEQ.S	L84
	MOVE	-4(A6),-(A7)
	MOVE	-2(A6),-(A7)
	CLR	-(A7)
	MOVE	#-1,-(A7)
	MOVE	#-1,-(A7)
	JSR	F267_dzzz_(PC)
	ADDA	#10,A7
	BRA.S	L85
L84:
	MOVE	-4(A6),-(A7)
	MOVE	-2(A6),-(A7)
	MOVE	G307_i_Par(A4),-(A7)
	MOVE	G306_i_Par(A4),-(A7)
	MOVE	#-1,-(A7)
	JSR	F267_dzzz_(PC)
	ADDA	#10,A7
L85:
	MOVE	#1,D7
	LEA	G407_s_Par(A4),A0
	MOVE.L	A0,D0
	MOVE.L	D0,A3
	MOVE	#0,D0
	MOVE	D0,D4
	BRA.S	L86
L87:
	MOVE	52(A3),D0
	BEQ.S	L89
	MOVE.L	A3,-(A7)
	JSR	F310_AA08_(PC)
	ADDQ.L	#4,A7
	MOVE	D0,-(A7)
	MOVE	D7,-(A7)
	JSR	F025_aatz_(PC)
	ADDQ.L	#4,A7
	MOVE	D0,D7
L89:
	MOVE	D4,D0
	ADDQ	#1,D4
	MOVE.L	A3,D0
	ADDA	#800,A3
L86:
	MOVE	D4,D0
	CMP	G305_ui_Pa(A4),D0
	BCS.S	L87
L88:
	MOVE	D7,G310_i_Dis(A4)
	CLR	G311_i_Pro(A4)
L62:
	MOVEM.L	(A7)+,D4-D7/A2-A3
	UNLK	A6
	RTS
L$61:	.EQU	#-30
F367_xxxx_:/* global */
	LINK	A6,L$90
	MOVEM.L	D7-D5,-(A7)
	MOVE	10(A6),D7
	MOVE	12(A6),D6
	MOVE	8(A6),D0
	ADDQ	#1,D0
	MOVE	G423_i_Inv(A4),D1
	CMP	D1,D0
	BNE.S	L92
	MOVE	8(A6),-(A7)
	JSR	F368_fzzz_(PC)
	ADDQ.L	#2,A7
	BRA.S	L91
L92:
	MOVE	#2,-(A7)
	MOVE	D6,-(A7)
	MOVE	D7,-(A7)
	PEA	G455_as_Gr(A4)
	JSR	F358_xxxx_(PC)
	ADDA	#10,A7
	MOVE	D0,D5
	CMPI	#16,D5
	BCS.S	L93
	CMPI	#19,D5
	BHI.S	L93
	MOVE	D5,D0
	SUB	#16,D0
	MOVE	D0,-(A7)
	JSR	F368_fzzz_(PC)
	ADDQ.L	#2,A7
	BRA.S	L91
L93:
	CMPI	#20,D5
	BCS.S	L94
	CMPI	#27,D5
	BHI.S	L94
	MOVE	D5,D0
	SUB	#20,D0
	MOVE	D0,-(A7)
	JSR	F302_mzzz_(PC)
	ADDQ.L	#2,A7
L94:
L91:
	MOVEM.L	(A7)+,D5-D7
	UNLK	A6
	RTS
L$90:	.EQU	#0
F368_fzzz_:/* global */
	LINK	A6,L$95
	MOVEM.L	A3/D7-D5,-(A7)
	MOVE	8(A6),D7
	MOVE	D7,D0
	CMP	G411_i_Lea(A4),D0
	BEQ.S	L98
	CMPI	#-1,D7
	BEQ.S	L97
	MOVE	D7,D0
	MULS	#800,D0
	LEA	G407_s_Par+52(A4),A0
	ADDA	D0,A0
	MOVE	(A0),D0
	BNE.S	L97
L98:
	BRA	L96(PC)
L97:
	CMPI	#-1,G411_i_Lea(A4)
	BEQ.S	L99
	MOVE	G411_i_Lea(A4),D0
	MOVE	D0,D6
	MULS	#800,D0
	LEA	G407_s_Par+48(A4),A0
	ADDA	D0,A0
	ORI	#640,(A0)
	MOVE	G414_T_Lea(A4),-(A7)
	JSR	F140_yzzz_(PC)
	ADDQ.L	#2,A7
	MOVE.L	D0,D1
	MOVE	D6,D0
	MULS	#800,D0
	LEA	G407_s_Par+272(A4),A0
	ADDA	D0,A0
	MOVE	(A0),D0
	SUB	D1,D0
	MOVE	D0,(A0)
	MOVE	#-1,G411_i_Lea(A4)
	MOVE	D6,-(A7)
	JSR	F292_arzz_(PC)
	ADDQ.L	#2,A7
L99:
	CMPI	#-1,D7
	BNE.S	L100
	MOVE	#-1,G411_i_Lea(A4)
	BRA.S	L96
L100:
	MOVE	D7,D0
	MOVE	D0,G411_i_Lea(A4)
	MULS	#800,D0
	LEA	G407_s_Par(A4),A0
	ADDA	D0,A0
	LEA	(A0),A0
	MOVE.L	A0,A3
	MOVE	G308_i_Par(A4),D0
	MOVE.B	D0,28(A3)
	MOVE	G414_T_Lea(A4),-(A7)
	JSR	F140_yzzz_(PC)
	ADDQ.L	#2,A7
	MOVE.L	D0,D1
	MOVE	D7,D0
	MULS	#800,D0
	LEA	G407_s_Par+272(A4),A0
	ADDA	D0,A0
	MOVE	(A0),D0
	ADD	D1,D0
	MOVE	D0,(A0)
	MOVE	D7,D0
	ADDQ	#1,D0
	CMP	G299_ui_Ca(A4),D0
	BEQ.S	L101
	ORI	#1664,48(A3)
	MOVE	D7,-(A7)
	JSR	F292_arzz_(PC)
	ADDQ.L	#2,A7
L101:
L96:
	MOVEM.L	(A7)+,D5-D7/A3
	UNLK	A6
	RTS
L$95:	.EQU	#0
F369_xxxx_:/* global */
	LINK	A6,L$102
	MOVEM.L	A3/D7,-(A7)
	CMPI	#108,8(A6)
	BNE.S	L104
	MOVE	G514_i_Mag(A4),D0
	MULS	#800,D0
	LEA	G407_s_Par+34(A4),A0
	ADDA	D0,A0
	MOVE.B	(A0),D0
	EXT	D0
	CMP	#0,D0
	BNE.S	L105
	BRA.S	L103
L105:
	MOVE	#73,-(A7)
	MOVE	#63,-(A7)
	MOVE	#303,-(A7)
	MOVE	#234,-(A7)
	JSR	F362_xxxx_(PC)
	ADDQ.L	#8,A7
	CLR	-(A7)
	JSR	F408_xxxx_(PC)
	ADDQ.L	#2,A7
	MOVE	D0,G321_B_Sto(A4)
	BRA.S	L106
L104:
	MOVE	8(A6),D7
	SUB	#101,D7
	MOVE	D7,D0
	ASL.L	#3,D0
	LEA	G464_as_Gr(A4),A0
	ADDA	D0,A0
	LEA	(A0),A0
	MOVE.L	A0,A3
	MOVE	6(A3),-(A7)
	MOVE	4(A3),-(A7)
	MOVE	2(A3),-(A7)
	MOVE	(A3),-(A7)
	JSR	F362_xxxx_(PC)
	ADDQ.L	#8,A7
	MOVE	#37,-(A7)
	JSR	R056_aaal_(PC)
	ADDQ.L	#2,A7
	JSR	F363_pzzz_(PC)
	CMPI	#6,D7
	BCC.S	L107
	MOVE	D7,-(A7)
	JSR	F399_xxxx_(PC)
	ADDQ.L	#2,A7
	BRA.S	L108
L107:
	JSR	F400_xxxx_(PC)
L108:
L106:
L103:
	MOVEM.L	(A7)+,D7/A3
	UNLK	A6
	RTS
L$102:	.EQU	#0
F370_xxxx_:/* global */
	LINK	A6,L$109
	MOVEM.L	D7-D6,-(A7)
	MOVE	#-1,D6
	CMPI	#48,10(A6)
	BHI	L111(PC)
	MOVE	G514_i_Mag(A4),D0
L112:
	CMP	#0,D0
	BEQ.S	L113
	BRA.S	L115
L113:
	CMPI	#280,8(A6)
	BCS.S	L117
	CMPI	#291,8(A6)
	BHI.S	L117
	MOVE	#1,D6
	BRA.S	L118
L117:
	CMPI	#294,8(A6)
	BCS.S	L119
	CMPI	#305,8(A6)
	BHI.S	L119
	MOVE	#2,D6
	BRA.S	L120
L119:
	CMPI	#308,8(A6)
	BCS.S	L121
	MOVE	#3,D6
L121:
L120:
L118:
	BRA	L114(PC)
	BRA.S	L116
L115:
	CMP	#1,D0
	BEQ.S	L116
	BRA.S	L122
L116:
	CMPI	#233,8(A6)
	BCS.S	L124
	CMPI	#244,8(A6)
	BHI.S	L124
	CLR	D6
	BRA.S	L125
L124:
	CMPI	#294,8(A6)
	BCS.S	L126
	CMPI	#305,8(A6)
	BHI.S	L126
	MOVE	#2,D6
	BRA.S	L127
L126:
	CMPI	#308,8(A6)
	BCS.S	L128
	MOVE	#3,D6
L128:
L127:
L125:
	BRA	L114(PC)
	BRA.S	L123
L122:
	CMP	#2,D0
	BEQ.S	L123
	BRA.S	L129
L123:
	CMPI	#233,8(A6)
	BCS.S	L131
	CMPI	#244,8(A6)
	BHI.S	L131
	CLR	D6
	BRA.S	L132
L131:
	CMPI	#247,8(A6)
	BCS.S	L133
	CMPI	#258,8(A6)
	BHI.S	L133
	MOVE	#1,D6
	BRA.S	L134
L133:
	CMPI	#308,8(A6)
	BCS.S	L135
	MOVE	#3,D6
L135:
L134:
L132:
	BRA.S	L114
	BRA.S	L130
L129:
	CMP	#3,D0
	BEQ.S	L130
	BRA.S	L136
L130:
	CMPI	#247,8(A6)
	BCS.S	L138
	CMPI	#258,8(A6)
	BHI.S	L138
	MOVE	#1,D6
	BRA.S	L139
L138:
	CMPI	#261,8(A6)
	BCS.S	L140
	CMPI	#272,8(A6)
	BHI.S	L140
	MOVE	#2,D6
	BRA.S	L141
L140:
	CMPI	#244,8(A6)
	BHI.S	L142
	CLR	D6
L142:
L141:
L139:
L136:
L137:
L114:
	CMPI	#-1,D6
	BEQ.S	L143
	MOVE	D6,D0
	CMP	G305_ui_Pa(A4),D0
	BCC.S	L143
	MOVE	D6,-(A7)
	JSR	F394_ozzz_(PC)
	ADDQ.L	#2,A7
L143:
	BRA.S	L144
L111:
	MOVE	#2,-(A7)
	MOVE	10(A6),-(A7)
	MOVE	8(A6),-(A7)
	PEA	G454_as_Gr(A4)
	JSR	F358_xxxx_(PC)
	ADDA	#10,A7
	MOVE	D0,D7
	CMPI	#0,D7
	BEQ.S	L145
	MOVE	D7,-(A7)
	JSR	F369_xxxx_(PC)
	ADDQ.L	#2,A7
L145:
L144:
L110:
	MOVEM.L	(A7)+,D6-D7
	UNLK	A6
	RTS
L$109:	.EQU	#0
F371_xxxx_:/* global */
	LINK	A6,L$146
	MOVE	D7,-(A7)
	MOVE	G506_i_Act(A4),D0
	BEQ	L148(PC)
	MOVE	#2,-(A7)
	MOVE	10(A6),-(A7)
	MOVE	8(A6),-(A7)
	PEA	G452_as_Gr(A4)
	JSR	F358_xxxx_(PC)
	ADDA	#10,A7
	MOVE	D0,D7
	CMPI	#0,D7
	BEQ	L149(PC)
	CMPI	#112,D7
	BNE.S	L150
	MOVE	#83,-(A7)
	MOVE	#77,-(A7)
	MOVE	#319,-(A7)
	MOVE	#285,-(A7)
	JSR	F362_xxxx_(PC)
	ADDQ.L	#8,A7
	MOVE	#-1,-(A7)
	JSR	F391_xxxx_(PC)
	ADDQ.L	#2,A7
	BRA.S	L151
L150:
	MOVE	D7,D0
	SUB	#112,D0
	CMP	G507_ui_Ac(A4),D0
	BHI.S	L152
	CMPI	#113,D7
	BNE.S	L153
	MOVE	#96,-(A7)
	MOVE	#86,-(A7)
	MOVE	#318,-(A7)
	MOVE	#234,-(A7)
	JSR	F362_xxxx_(PC)
	ADDQ.L	#8,A7
	BRA.S	L154
L153:
	CMPI	#114,D7
	BNE.S	L155
	MOVE	#108,-(A7)
	MOVE	#98,-(A7)
	MOVE	#318,-(A7)
	MOVE	#234,-(A7)
	JSR	F362_xxxx_(PC)
	ADDQ.L	#8,A7
	BRA.S	L156
L155:
	MOVE	#120,-(A7)
	MOVE	#110,-(A7)
	MOVE	#318,-(A7)
	MOVE	#234,-(A7)
	JSR	F362_xxxx_(PC)
	ADDQ.L	#8,A7
L156:
L154:
	MOVE	D7,D0
	SUB	#113,D0
	MOVE	D0,-(A7)
	JSR	F391_xxxx_(PC)
	ADDQ.L	#2,A7
	MOVE	D0,G321_B_Sto(A4)
L152:
L151:
L149:
	BRA.S	L157
L148:
	MOVE	G509_B_Act(A4),D0
	BEQ.S	L158
	MOVE	#2,-(A7)
	MOVE	10(A6),-(A7)
	MOVE	8(A6),-(A7)
	PEA	G453_as_Gr(A4)
	JSR	F358_xxxx_(PC)
	ADDA	#10,A7
	MOVE	D0,D7
	CMPI	#0,D7
	BEQ.S	L159
	MOVE	D7,D0
	SUB	#116,D0
	MOVE	D0,D7
	CMP	G305_ui_Pa(A4),D0
	BCC.S	L160
	MOVE	D7,-(A7)
	JSR	F389_xxxx_(PC)
	ADDQ.L	#2,A7
L160:
L159:
L158:
L157:
L147:
	MOVE	(A7)+,D7
	UNLK	A6
	RTS
L$146:	.EQU	#0
F372_xxxx_:/* global */
	LINK	A6,L$161
	MOVE	G306_i_Par(A4),-2(A6)
	MOVE	G307_i_Par(A4),-4(A6)
	MOVE	G308_i_Par(A4),D1
	ASL.L	#1,D1
	LEA	G233_ai_Gr(A4),A0
	ADDA	D1,A0
	MOVE	(A0),D1
	MOVE	-2(A6),D0
	ADD	D1,D0
	MOVE	D0,-2(A6)
	MOVE	G308_i_Par(A4),D1
	ASL.L	#1,D1
	LEA	G234_ai_Gr(A4),A0
	ADDA	D1,A0
	MOVE	(A0),D1
	MOVE	-4(A6),D0
	ADD	D1,D0
	MOVE	D0,-4(A6)
	CMPI	#0,-2(A6)
	BCS.S	L163
	MOVE	-2(A6),D0
	MOVE	G273_i_Cur(A4),D1
	CMP	D1,D0
	BCC.S	L163
	CMPI	#0,-4(A6)
	BCS.S	L163
	MOVE	-4(A6),D0
	MOVE	G274_i_Cur(A4),D1
	CMP	D1,D0
	BCC.S	L163
	MOVE	G308_i_Par(A4),D0
	ADDQ	#2,D0
	AND	#3,D0
	MOVE	D0,-(A7)
	MOVE	-4(A6),-(A7)
	MOVE	-2(A6),-(A7)
	JSR	F275_aszz_(PC)
	ADDQ.L	#6,A7
	MOVE	D0,G321_B_Sto(A4)
L163:
L162:
	UNLK	A6
	RTS
L$161:	.EQU	#-4
F373_xxxx_:/* global */
	LINK	A6,L$164
	MOVEM.L	D7-D4,-(A7)
	MOVE	8(A6),D7
	CMPI	#-1,G411_i_Lea(A4)
	BNE.S	L166
	BRA	L165(PC)
L166:
	MOVE	G306_i_Par(A4),D6
	MOVE	G307_i_Par(A4),D5
	CMPI	#2,D7
	BCS.S	L167
	MOVE	G308_i_Par(A4),D1
	ASL.L	#1,D1
	LEA	G233_ai_Gr(A4),A0
	ADDA	D1,A0
	MOVE	(A0),D1
	MOVE	D6,D0
	ADD	D1,D0
	MOVE	D0,D6
	MOVE	G308_i_Par(A4),D1
	ASL.L	#1,D1
	LEA	G234_ai_Gr(A4),A0
	ADDA	D1,A0
	MOVE	(A0),D1
	MOVE	D5,D0
	ADD	D1,D0
	MOVE	D0,D5
	MOVE	D5,-(A7)
	MOVE	D6,-(A7)
	JSR	F175_gzzz_(PC)
	ADDQ.L	#4,A7
	MOVE	D0,D4
	CMPI	#-2,D0
	BEQ.S	L168
	MOVE	#4,-(A7)
	MOVE	D4,-(A7)
	JSR	F264_avzz_(PC)
	ADDQ.L	#4,A7
	TST	D0
	BNE.S	L168
	MOVE	D7,D0
	ADD	G308_i_Par(A4),D0
	AND	#3,D0
	MOVE	D0,-(A7)
	MOVE	D4,D0
	AND	#1023,D0
	MOVE.L	G284_apuc_+16(A4),D1
	MULS	#16,D0
	MOVE.L	D1,A0
	ADDA	D0,A0
	LEA	(A0),A0
	MOVE.L	A0,-(A7)
	JSR	F176_avzz_(PC)
	ADDQ.L	#6,A7
	TST	D0
	BEQ.S	L168
	BRA.S	L165
L168:
L167:
	MOVE	D7,D4
	ASL.L	#1,D4
	LEA	G292_aT_Pi(A4),A0
	ADDA	D4,A0
	MOVE	(A0),D4
	MOVE	D4,-(A7)
	JSR	F033_aaaz_(PC)
	ADDQ.L	#2,A7
	CMPI	#-1,D0
	BEQ.S	L169
	CLR	-(A7)
	MOVE	#-1,-(A7)
	MOVE	D5,-(A7)
	MOVE	D6,-(A7)
	MOVE	D4,-(A7)
	JSR	F267_dzzz_(PC)
	ADDA	#10,A7
	MOVE	#1,G416_i_Use(A4)
	MOVE	#1,-(A7)
	MOVE	D4,-(A7)
	JSR	F297_atzz_(PC)
	ADDQ.L	#4,A7
L169:
	MOVE	#1,G321_B_Sto(A4)
L165:
	MOVEM.L	(A7)+,D4-D7
	UNLK	A6
	RTS
L$164:	.EQU	#0
F374_xxxx_:/* global */
	LINK	A6,L$170
	MOVEM.L	A3/D7-D4,-(A7)
	MOVE	8(A6),D7
	CMPI	#-1,G411_i_Lea(A4)
	BNE.S	L172
	BRA	L171(PC)
L172:
	MOVE	G306_i_Par(A4),D6
	MOVE	G307_i_Par(A4),D5
	CMPI	#4,D7
	SEQ	D0
	AND	#1,D0
	MOVE	D0,-6(A6)
	BEQ.S	L173
	MOVE	#2,D7
L173:
	CMPI	#1,D7
	BLS.S	L174
	MOVE	G308_i_Par(A4),D1
	ASL.L	#1,D1
	LEA	G233_ai_Gr(A4),A0
	ADDA	D1,A0
	MOVE	(A0),D1
	MOVE	D6,D0
	ADD	D1,D0
	MOVE	D0,D6
	MOVE	G308_i_Par(A4),D1
	ASL.L	#1,D1
	LEA	G234_ai_Gr(A4),A0
	ADDA	D1,A0
	MOVE	(A0),D1
	MOVE	D5,D0
	ADD	D1,D0
	MOVE	D0,D5
L174:
	MOVE	G308_i_Par(A4),D0
	ADD	D7,D0
	AND	#3,D0
	MOVE	D0,-4(A6)
	JSR	F298_aqzz_(PC)
	MOVE	D0,D4
	MOVE	D5,-(A7)
	MOVE	D6,-(A7)
	CLR	-(A7)
	MOVE	#-1,-(A7)
	MOVE	D4,D0
	AND	#16383,D0
	MOVE	-4(A6),D1
	ASL	#6,D1
	ASL	#8,D1
	OR	D1,D0
	MOVE	D0,-(A7)
	JSR	F267_dzzz_(PC)
	ADDA	#10,A7
	MOVE	-6(A6),D0
	BEQ.S	L175
	MOVE	G287_B_Fac(A4),D0
	BEQ.S	L175
	MOVE	D4,-(A7)
	JSR	F033_aaaz_(PC)
	ADDQ.L	#2,A7
	MOVE	D0,-2(A6)
	CMPI	#147,D0
	BNE.S	L175
	MOVE	D4,-(A7)
	JSR	F156_afzz_(PC)
	ADDQ.L	#2,A7
	MOVE.L	D0,A3
	MOVE.L	G313_ul_Ga(A4),D0
	ADDQ.L	#1,D0
	MOVE	G309_i_Par(A4),D1
	EXT.L	D1
	MOVE.L	#24,D3
	ASL.L	D3,D1
	OR.L	D1,D0
	MOVE.L	D0,-16(A6)
	MOVE.B	#13,-12(A6)
	MOVE	2(A3),D0
	AND	#-16384,D0
	LSR	#6,D0
	LSR	#8,D0
	MOVE.B	D0,-11(A6)
	MOVE	D6,D0
	MOVE.B	D0,-10(A6)
	MOVE	D5,D0
	MOVE.B	D0,-9(A6)
	MOVE	-4(A6),D0
	MOVE.B	D0,-8(A6)
	MOVE.B	#2,-7(A6)
	PEA	-16(A6)
	JSR	F238_pzzz_(PC)
	ADDQ.L	#4,A7
L175:
	MOVE	#1,G321_B_Sto(A4)
L171:
	MOVEM.L	(A7)+,D4-D7/A3
	UNLK	A6
	RTS
L$170:	.EQU	#-16
F375_xxxx_:/* global */
	LINK	A6,L$176
	MOVE	D7,-(A7)
	CMPI	#47,10(A6)
	BLT.S	L179
	CMPI	#102,10(A6)
	BLE.S	L178
L179:
	MOVE	#0,D0
	BRA.S	L177
L178:
	CMPI	#111,8(A6)
	BGT.S	L180
	CMPI	#17,G285_i_Squ(A4)
	BNE.S	L181
	CMPI	#64,8(A6)
	BGE.S	L182
	MOVE	#0,D0
	BRA.S	L177
L182:
	BRA.S	L183
L181:
	CMPI	#32,8(A6)
	BGE.S	L184
	MOVE	#0,D0
	BRA.S	L177
L184:
L183:
	CLR	-(A7)
	JSR	F329_hzzz_(PC)
	ADDQ.L	#2,A7
	BRA.S	L177
L180:
	CMPI	#17,G285_i_Squ(A4)
	BNE.S	L185
	CMPI	#163,8(A6)
	BLE.S	L186
	MOVE	#0,D0
	BRA.S	L177
L186:
	BRA.S	L187
L185:
	CMPI	#191,8(A6)
	BLE.S	L188
	MOVE	#0,D0
	BRA.S	L177
L188:
L187:
	MOVE	#1,-(A7)
	JSR	F329_hzzz_(PC)
	ADDQ.L	#2,A7
L177:
	MOVE	(A7)+,D7
	UNLK	A6
	RTS
L$176:	.EQU	#0
F376_xxxx_:/* global */
	LINK	A6,L$189
	MOVEM.L	A3/D7-D6,-(A7)
	MOVE.L	8(A6),A3
	MOVE	12(A6),D7
	MOVE	14(A6),D6
	MOVE	D7,D0
	MOVE.B	1(A3),D1
	AND	#255,D1
	CMP	D1,D0
	SLE	D0
	TST.B	D0
	BEQ.S	L193
	MOVE	D7,D0
	MOVE.B	(A3),D1
	AND	#255,D1
	CMP	D1,D0
	SGE	D0
	TST.B	D0
L193:
	TST.B	D0
	BEQ.S	L192
	MOVE	D6,D0
	MOVE.B	3(A3),D1
	AND	#255,D1
	CMP	D1,D0
	SLE	D0
	TST.B	D0
L192:
	TST.B	D0
	BEQ.S	L191
	MOVE	D6,D0
	MOVE.B	2(A3),D1
	AND	#255,D1
	CMP	D1,D0
	SGE	D0
	TST.B	D0
L191:
	AND	#1,D0
L190:
	MOVEM.L	(A7)+,D6-D7/A3
	UNLK	A6
	RTS
L$189:	.EQU	#0
F377_xxxx_:/* global */
	LINK	A6,L$194
	MOVEM.L	A3/D7-D5,-(A7)
	MOVE	8(A6),D7
	MOVE	10(A6),D6
	CMPI	#17,G285_i_Squ(A4)
	BNE	L196(PC)
	CMPI	#-1,G411_i_Lea(A4)
	BNE.S	L197
	BRA	L195(PC)
L197:
	MOVE	G306_i_Par(A4),-8(A6)
	MOVE	G307_i_Par(A4),-10(A6)
	MOVE	G308_i_Par(A4),D1
	ASL.L	#1,D1
	LEA	G233_ai_Gr(A4),A0
	ADDA	D1,A0
	MOVE	(A0),D1
	MOVE	-8(A6),D0
	ADD	D1,D0
	MOVE	D0,-8(A6)
	MOVE	G308_i_Par(A4),D1
	ASL.L	#1,D1
	LEA	G234_ai_Gr(A4),A0
	ADDA	D1,A0
	MOVE	(A0),D1
	MOVE	-10(A6),D0
	ADD	D1,D0
	MOVE	D0,-10(A6)
	MOVE	G415_B_Lea(A4),D0
	BEQ	L198(PC)
	MOVE	-10(A6),-(A7)
	MOVE	-8(A6),-(A7)
	JSR	F161_szzz_(PC)
	ADDQ.L	#4,A7
	AND	#1023,D0
	MOVE.L	G284_apuc_(A4),D1
	ASL.L	#2,D0
	MOVE.L	D1,A0
	ADDA	D0,A0
	MOVE	2(A0),D0
	AND	#64,D0
	LSR	#6,D0
	BEQ.S	L199
	MOVE	D6,D0
	SUB	#33,D0
	MOVE	D0,-(A7)
	MOVE	D7,-(A7)
	PEA	G291_aauc_+20(A4)
	JSR	F376_xxxx_(PC)
	ADDQ.L	#8,A7
	TST	D0
	BEQ.S	L199
	MOVE	#1,G321_B_Sto(A4)
	MOVE	#1,-(A7)
	MOVE	G307_i_Par(A4),-(A7)
	MOVE	G306_i_Par(A4),-(A7)
	MOVE	#1,-(A7)
	JSR	F064_aadz_(PC)
	ADDQ.L	#8,A7
	MOVE.L	G313_ul_Ga(A4),D0
	ADDQ.L	#1,D0
	MOVE.L	D0,-(A7)
	MOVE	#2,-(A7)
	CLR	-(A7)
	MOVE	-10(A6),-(A7)
	MOVE	-8(A6),-(A7)
	MOVE	#10,-(A7)
	JSR	F268_fzzz_(PC)
	ADDA	#14,A7
	BRA	L195(PC)
L199:
L198:
	MOVE	G415_B_Lea(A4),D0
	BNE.S	L200
	MOVE	D6,-(A7)
	MOVE	D7,-(A7)
	JSR	F375_xxxx_(PC)
	ADDQ.L	#4,A7
	TST	D0
	BEQ.S	L201
	BRA	L195(PC)
L201:
L200:
L196:
	MOVE	G415_B_Lea(A4),D0
	BEQ.S	L202
	CLR	D5
	BRA.S	L203
L204:
	MOVE	D6,D0
	SUB	#33,D0
	MOVE	D0,-(A7)
	MOVE	D7,-(A7)
	MOVE	D5,D0
	ASL.L	#2,D0
	LEA	G291_aauc_(A4),A0
	ADDA	D0,A0
	LEA	(A0),A0
	MOVE.L	A0,-(A7)
	JSR	F376_xxxx_(PC)
	ADDQ.L	#8,A7
	TST	D0
	BEQ.S	L207
	CMPI	#5,D5
	BNE.S	L208
	MOVE	G286_B_Fac(A4),D0
	BNE.S	L209
	JSR	F372_xxxx_(PC)
L209:
	BRA.S	L210
L208:
	MOVE	D5,-(A7)
	JSR	F373_xxxx_(PC)
	ADDQ.L	#2,A7
L210:
	BRA	L195(PC)
L207:
L205:
	ADDQ	#1,D5
L203:
	CMPI	#6,D5
	BCS.S	L204
L206:
	BRA	L195(PC)
L202:
	MOVE	G414_T_Lea(A4),-2(A6)
	MOVE	-2(A6),-(A7)
	JSR	F156_afzz_(PC)
	ADDQ.L	#2,A7
	MOVE.L	D0,A3
	CMPI	#0,G285_i_Squ(A4)
	BNE	L211(PC)
	CLR	D5
	BRA.S	L212
L213:
	MOVE	D6,-(A7)
	MOVE	D7,-(A7)
	MOVE	D5,D0
	ASL.L	#2,D0
	LEA	G462_as_Gr(A4),A0
	ADDA	D0,A0
	LEA	(A0),A0
	MOVE.L	A0,-(A7)
	JSR	F376_xxxx_(PC)
	ADDQ.L	#8,A7
	TST	D0
	BEQ.S	L216
	MOVE	D5,-(A7)
	JSR	F374_xxxx_(PC)
	ADDQ.L	#2,A7
	BRA	L195(PC)
L216:
L214:
	ADDQ	#1,D5
L212:
	CMPI	#2,D5
	BCS.S	L213
L215:
	MOVE	D6,D0
	SUB	#33,D0
	MOVE	D0,-(A7)
	MOVE	D7,-(A7)
	PEA	G291_aauc_+20(A4)
	JSR	F376_xxxx_(PC)
	ADDQ.L	#8,A7
	TST	D0
	BEQ	L217(PC)
	MOVE	G286_B_Fac(A4),D0
	BEQ.S	L218
	MOVE	#4,-(A7)
	JSR	F374_xxxx_(PC)
	ADDQ.L	#2,A7
	BRA	L219(PC)
L218:
	MOVE	G288_B_Fac(A4),D0
	BEQ	L220(PC)
	MOVE	-2(A6),-(A7)
	JSR	F033_aaaz_(PC)
	ADDQ.L	#2,A7
	MOVE	D0,-4(A6)
	MOVE	-2(A6),-(A7)
	JSR	F140_yzzz_(PC)
	ADDQ.L	#2,A7
	MOVE	D0,-6(A6)
	CMPI	#8,-4(A6)
	BCS.S	L221
	CMPI	#9,-4(A6)
	BHI.S	L221
	MOVE	#3,D0
	AND	#3,D0
	MOVE	D0,D3
	ASL	#6,D3
	ASL	#8,D3
	ANDI	#16383,2(A3)
	OR	D3,2(A3)
	BRA.S	L222
L221:
	CMPI	#195,-4(A6)
	BNE.S	L223
	MOVE	#15,D0
	MOVE.L	A3,D1
	MOVE.L	D1,A0
	AND	#127,D0
	MOVE	D0,D3
	ASL	#8,D3
	ANDI	#-32513,2(A0)
	OR	D3,2(A0)
	BRA.S	L224
L223:
	BRA.S	L20T377_019
L224:
L222:
	JSR	F296_aizz_(PC)
	MOVE	-2(A6),-(A7)
	JSR	F140_yzzz_(PC)
	ADDQ.L	#2,A7
	MOVE.L	D0,D1
	SUB	-6(A6),D1
	MOVE	G411_i_Lea(A4),D0
	MULS	#800,D0
	LEA	G407_s_Par+272(A4),A0
	ADDA	D0,A0
	MOVE	(A0),D0
	ADD	D1,D0
	MOVE	D0,(A0)
L220:
L20T377_019:
	JSR	F372_xxxx_(PC)
L219:
L217:
	BRA.S	L195
L211:
	MOVE	D6,-(A7)
	MOVE	D7,-(A7)
	JSR	F375_xxxx_(PC)
	ADDQ.L	#4,A7
	TST	D0
	BEQ.S	L225
	BRA.S	L195
L225:
	CLR	D5
	BRA.S	L226
L227:
	MOVE	D6,-(A7)
	MOVE	D7,-(A7)
	MOVE	D5,D0
	ASL.L	#2,D0
	LEA	G462_as_Gr(A4),A0
	ADDA	D0,A0
	LEA	(A0),A0
	MOVE.L	A0,-(A7)
	JSR	F376_xxxx_(PC)
	ADDQ.L	#8,A7
	TST	D0
	BEQ.S	L230
	MOVE	D5,-(A7)
	JSR	F374_xxxx_(PC)
	ADDQ.L	#2,A7
	BRA.S	L195
L230:
L228:
	ADDQ	#1,D5
L226:
	CMPI	#4,D5
	BCS.S	L227
L229:
L195:
	MOVEM.L	(A7)+,D5-D7/A3
	UNLK	A6
	RTS
L$194:	.EQU	#-10
F378_xxxx_:/* global */
	LINK	A6,L$231
	MOVEM.L	D7-D4,-(A7)
	MOVE	8(A6),D7
	MOVE	10(A6),D6
	CMPI	#-1,G411_i_Lea(A4)
	SEQ	D4
	AND	#1,D4
	MOVE	G424_i_Pan(A4),D0
L233:
	CMP	#4,D0
	BEQ.S	L234
	BRA.S	L236
L234:
	MOVE	D4,D0
	BEQ.S	L238
	BRA.S	L235
L238:
	MOVE	#2,-(A7)
	MOVE	D6,-(A7)
	MOVE	D7,-(A7)
	PEA	G456_as_Gr(A4)
	JSR	F358_xxxx_(PC)
	ADDA	#10,A7
	MOVE	D0,D5
	CMPI	#0,D5
	BEQ.S	L239
	MOVE	D5,D0
	SUB	#20,D0
	MOVE	D0,-(A7)
	JSR	F302_mzzz_(PC)
	ADDQ.L	#2,A7
L239:
	BRA.S	L235
	BRA.S	L237
L236:
	CMP	#5,D0
	BEQ.S	L237
	BRA.S	L240
L237:
	MOVE	G415_B_Lea(A4),D0
	BNE.S	L242
	BRA.S	L235
L242:
	MOVE	#2,-(A7)
	MOVE	D6,-(A7)
	MOVE	D7,-(A7)
	PEA	G457_as_Gr(A4)
	JSR	F358_xxxx_(PC)
	ADDA	#10,A7
	MOVE	D0,D5
	CMPI	#0,D5
	BEQ.S	L243
	MOVE	D5,-(A7)
	JSR	F282_xzzz_(PC)
	ADDQ.L	#2,A7
L243:
L240:
L241:
L235:
L232:
	MOVEM.L	(A7)+,D4-D7
	UNLK	A6
	RTS
L$231:	.EQU	#0
F379_jzzz_:/* global */
	LINK	A6,L$244
	MOVE	#1904,-(A7)
	CLR	-(A7)
	MOVE.L	G296_puc_B(A4),-(A7)
	JSR	F134_zzzz_(PC)
	ADDQ.L	#8,A7
DATA SEG "s!"
s!:
	DATA 57 41 4B 45 20 55 50 00 
CODE SEG "user"
	PEA	s!(A4)
	CLR	-(A7)
	MOVE	#4,-(A7)
	MOVE	#69,-(A7)
	MOVE	#93,-(A7)
	MOVE	#112,-(A7)
	MOVE.L	G296_puc_B(A4),-(A7)
	JSR	F040_aacZ_(PC)
	ADDA	#18,A7
L245:
	UNLK	A6
	RTS
L$244:	.EQU	#0
F380_xzzz_:/* global */
	LINK	A6,L$246
BSS SEG "bss"
24G481_ps_:
	.WORD	#4
25G482_ps_:
	.WORD	#4
26G483_ps_:
	.WORD	#4
27G484_ps_:
	.WORD	#4
CODE SEG "user"
	MOVEM.L	A3/D7-D4,-(A7)
	MOVE	#1,G435_B_Com(A4)
	MOVE	G434_i_Com(A4),D0
	ADDQ	#1,D0
	MOVE	D0,D7
	CMPI	#4,D0
	BLE.S	L248
	CLR	D7
L248:
	MOVE	D7,D0
	CMP	G433_i_Com(A4),D0
	BNE.S	L249
	CLR	G435_B_Com(A4)
	JSR	F360_xxxx_(PC)
	BRA	L247(PC)
L249:
	MOVE	G433_i_Com(A4),D6
	MULS	#6,D6
	LEA	G432_as_Co+4(A4),A0
	ADDA	D6,A0
	MOVE	(A0),D6
	CMPI	#3,D6
	BLT.S	L250
	CMPI	#6,D6
	BGT.S	L250
	MOVE	G310_i_Dis(A4),D0
	BNE.S	L251
	MOVE	G311_i_Pro(A4),D0
	BEQ.S	L250
	MOVE	G312_i_Las(A4),D0
	MOVE	G308_i_Par(A4),D1
	ADD	D6,D1
	SUBQ	#3,D1
	AND	#3,D1
	CMP	D1,D0
	BNE.S	L250
L251:
	CLR	G435_B_Com(A4)
	JSR	F360_xxxx_(PC)
	BRA	L247(PC)
L250:
	MOVE	G433_i_Com(A4),D5
	MULS	#6,D5
	LEA	G432_as_Co(A4),A0
	ADDA	D5,A0
	MOVE	(A0),D5
	MOVE	G433_i_Com(A4),D4
	MULS	#6,D4
	LEA	G432_as_Co+2(A4),A0
	ADDA	D4,A0
	MOVE	(A0),D4
	ADDQ	#1,G433_i_Com(A4)
	MOVE	G433_i_Com(A4),D0
	CMPI	#4,D0
	BLE.S	L252
	CLR	G433_i_Com(A4)
L252:
	CLR	G435_B_Com(A4)
	JSR	F360_xxxx_(PC)
	CMPI	#2,D6
	BEQ.S	L254
	CMPI	#1,D6
	BNE.S	L253
L254:
	MOVE	D6,-(A7)
	JSR	F365_xxxx_(PC)
	ADDQ.L	#2,A7
	BRA	L247(PC)
L253:
	CMPI	#3,D6
	BLT.S	L255
	CMPI	#6,D6
	BGT.S	L255
	MOVE	D6,-(A7)
	JSR	F366_xxxx_(PC)
	ADDQ.L	#2,A7
	BRA	L247(PC)
L255:
	CMPI	#12,D6
	BLT.S	L256
	CMPI	#15,D6
	BGT.S	L256
	MOVE	D6,D0
	SUB	#12,D0
	MOVE	D0,D7
	CMP	G305_ui_Pa(A4),D0
	BCC.S	L257
	MOVE	G299_ui_Ca(A4),D0
	BNE.S	L257
	MOVE	D4,-(A7)
	MOVE	D5,-(A7)
	MOVE	D7,-(A7)
	JSR	F367_xxxx_(PC)
	ADDQ.L	#6,A7
L257:
	BRA	L247(PC)
L256:
	CMPI	#125,D6
	BLT.S	L258
	CMPI	#128,D6
	BGT.S	L258
	MOVE	D6,D0
	SUB	#125,D0
	MOVE	D0,-(A7)
	JSR	F070_aajz_(PC)
	ADDQ.L	#2,A7
	BRA	L247(PC)
L258:
	CMPI	#28,D6
	BLT.S	L259
	CMPI	#66,D6
	BGE.S	L259
	CMPI	#-1,G411_i_Lea(A4)
	BEQ.S	L260
	MOVE	D6,D0
	SUB	#20,D0
	MOVE	D0,-(A7)
	JSR	F302_mzzz_(PC)
	ADDQ.L	#2,A7
L260:
	BRA	L247(PC)
L259:
	CMPI	#7,D6
	BLT.S	L261
	CMPI	#11,D6
	BGT.S	L261
	MOVE	D6,D0
	SUBQ	#7,D0
	MOVE	D0,D7
	CMPI	#4,D0
	BEQ.S	L263
	MOVE	D7,D0
	CMP	G305_ui_Pa(A4),D0
	BCC.S	L262
L263:
	MOVE	G299_ui_Ca(A4),D0
	BNE.S	L262
	MOVE	D7,-(A7)
	JSR	F355_hzzz_(PC)
	ADDQ.L	#2,A7
L262:
	BRA	L247(PC)
L261:
	CMPI	#83,D6
	BNE.S	L264
	CMPI	#-1,G411_i_Lea(A4)
	BEQ.S	L265
	MOVE	G411_i_Lea(A4),-(A7)
	JSR	F355_hzzz_(PC)
	ADDQ.L	#2,A7
L265:
	BRA	L247(PC)
L264:
	CMPI	#100,D6
	BNE.S	L266
	MOVE	G299_ui_Ca(A4),D0
	BNE.S	L267
	CMPI	#-1,G514_i_Mag(A4)
	BEQ.S	L267
	MOVE	D4,-(A7)
	MOVE	D5,-(A7)
	JSR	F370_xxxx_(PC)
	ADDQ.L	#4,A7
L267:
	BRA	L247(PC)
L266:
	CMPI	#111,D6
	BNE.S	L268
	MOVE	G299_ui_Ca(A4),D0
	BNE.S	L269
	MOVE	D4,-(A7)
	MOVE	D5,-(A7)
	JSR	F371_xxxx_(PC)
	ADDQ.L	#4,A7
L269:
	BRA	L247(PC)
L268:
	CMPI	#70,D6
	BNE.S	L270
	JSR	F349_dzzz_(PC)
	BRA	L247(PC)
L270:
	CMPI	#71,D6
	BNE.S	L271
	JSR	F352_aszz_(PC)
	BRA	L247(PC)
L271:
	CMPI	#80,D6
	BNE.S	L272
	MOVE	D4,-(A7)
	MOVE	D5,-(A7)
	JSR	F377_xxxx_(PC)
	ADDQ.L	#4,A7
	BRA	L247(PC)
L272:
	CMPI	#81,D6
	BNE.S	L273
	MOVE	D4,-(A7)
	MOVE	D5,-(A7)
	JSR	F378_xxxx_(PC)
	ADDQ.L	#4,A7
	BRA	L247(PC)
L273:
	CMPI	#145,D6
	BNE.S	L274
	MOVE	G423_i_Inv(A4),D0
	BEQ.S	L275
	MOVE	#4,-(A7)
	JSR	F355_hzzz_(PC)
	ADDQ.L	#2,A7
L275:
	JSR	F456_vzzz_(PC)
	MOVE	#1,G300_B_Par(A4)
	JSR	F379_jzzz_(PC)
	MOVE	#2,-(A7)
	JSR	F097_lzzz_(PC)
	ADDQ.L	#2,A7
	CLR	G318_i_Wai(A4)
	LEA	G450_as_Gr(A4),A0
	MOVE.L	A0,G441_ps_Pr(A4)
	CLR.L	G442_ps_Se(A4)
	LEA	G460_as_Gr(A4),A0
	MOVE.L	A0,G443_ps_Pr(A4)
	CLR.L	G444_ps_Se(A4)
	JSR	F357_qzzz_(PC)
	BRA	L247(PC)
L274:
	CMPI	#146,D6
	BNE.S	L276
	JSR	F314_gzzz_(PC)
	BRA	L247(PC)
L276:
	CMPI	#140,D6
	BNE.S	L277
	CMPI	#0,G305_ui_Pa(A4)
	BLS.S	L278
	MOVE	G299_ui_Ca(A4),D0
	BNE.S	L278
	JSR	F433_AA39_(PC)
L278:
	BRA	L247(PC)
L277:
	CMPI	#147,D6
	BNE.S	L279
	CLR	G301_B_Gam(A4)
	JSR	F456_vzzz_(PC)
	MOVE	#1904,-(A7)
	CLR	-(A7)
	MOVE.L	G296_puc_B(A4),-(A7)
	JSR	F134_zzzz_(PC)
	ADDQ.L	#8,A7
DATA SEG "s!"
	DATA 47 41 4D 45 20 46 52 4F 5A 45 4E 00 
CODE SEG "user"
	PEA	s!+8(A4)
	CLR	-(A7)
	MOVE	#4,-(A7)
	MOVE	#69,-(A7)
	MOVE	#81,-(A7)
	MOVE	#112,-(A7)
	MOVE.L	G296_puc_B(A4),-(A7)
	JSR	F040_aacZ_(PC)
	ADDA	#18,A7
	MOVE	#2,-(A7)
	JSR	F097_lzzz_(PC)
	ADDQ.L	#2,A7
	MOVE.L	G441_ps_Pr(A4),26G483_ps_(A4)
	MOVE.L	G442_ps_Se(A4),27G484_ps_(A4)
	MOVE.L	G443_ps_Pr(A4),24G481_ps_(A4)
	MOVE.L	G444_ps_Se(A4),25G482_ps_(A4)
	LEA	G451_as_Gr(A4),A0
	MOVE.L	A0,G441_ps_Pr(A4)
	CLR.L	G442_ps_Se(A4)
	LEA	G461_as_Gr(A4),A0
	MOVE.L	A0,G443_ps_Pr(A4)
	CLR.L	G444_ps_Se(A4)
	JSR	F357_qzzz_(PC)
	BRA.S	L247
L279:
	CMPI	#148,D6
	BNE.S	L280
	MOVE	#1,G301_B_Gam(A4)
	JSR	F457_AA08_(PC)
	MOVE.L	26G483_ps_(A4),G441_ps_Pr(A4)
	MOVE.L	27G484_ps_(A4),G442_ps_Se(A4)
	MOVE.L	24G481_ps_(A4),G443_ps_Pr(A4)
	MOVE.L	25G482_ps_(A4),G444_ps_Se(A4)
	JSR	F357_qzzz_(PC)
	BRA.S	L247
L280:
	CMPI	#200,D6
	BNE.S	L281
	MOVE	#1,G298_B_New(A4)
	BRA.S	L247
L281:
	CMPI	#201,D6
	BNE.S	L282
	CLR	G298_B_New(A4)
	BRA.S	L247
L282:
	CMPI	#202,D6
	BNE.S	L283
	JSR	F442_AA08_(PC)
	BRA.S	L247
L283:
	CMPI	#210,D6
	BLT.S	L284
	CMPI	#213,D6
	BGT.S	L284
	MOVE	D6,D0
	SUB	#209,D0
	MOVE	D0,G335_i_Sel(A4)
	BRA.S	L247
L284:
	CMPI	#215,D6
	BNE.S	L285
	MOVE	#1,G523_B_Res(A4)
L285:
L247:
	MOVEM.L	(A7)+,D4-D7/A3
	UNLK	A6
	RTS
L$246:	.EQU	#0
