opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNROOT	_main
	global	_PORTA
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RA7
_RA7	set	47
	global	_RC7
_RC7	set	63
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"watchreset.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	global	main@temp1
main@temp1:	; 2 bytes @ 0x0
	ds	2
	global	main@temp2
main@temp2:	; 2 bytes @ 0x2
	ds	2
	global	main@temp3
main@temp3:	; 2 bytes @ 0x4
	ds	2
	global	main@temp4
main@temp4:	; 2 bytes @ 0x6
	ds	2
	global	main@x
main@x:	; 2 bytes @ 0x8
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                10    10      0    1275
;;                                              0 COMMON    10    10      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 3 in file "E:\KTU\Softwares\mplab\Watchreset\watchreset.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2    8[COMMON] int 
;;  temp4           2    6[COMMON] int 
;;  temp3           2    4[COMMON] int 
;;  temp2           2    2[COMMON] int 
;;  temp1           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:        10       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Watchreset\watchreset.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	4
	
l1458:	
;watchreset.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
	
l1460:	
;watchreset.c: 5: TRISA=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	6
	
l1462:	
;watchreset.c: 6: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	7
	
l1464:	
;watchreset.c: 7: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	8
	
l1466:	
;watchreset.c: 8: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	9
;watchreset.c: 9: TRISC=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	10
	
l1468:	
;watchreset.c: 10: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	11
	
l1470:	
;watchreset.c: 11: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	12
	
l1472:	
;watchreset.c: 12: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	13
	
l1474:	
;watchreset.c: 13: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	14
	
l1476:	
;watchreset.c: 14: int x=0;
	clrf	(main@x)
	clrf	(main@x+1)
	line	15
	
l1478:	
;watchreset.c: 15: int temp1=0;
	clrf	(main@temp1)
	clrf	(main@temp1+1)
	line	16
	
l1480:	
;watchreset.c: 16: int temp2=0;
	clrf	(main@temp2)
	clrf	(main@temp2+1)
	line	17
	
l1482:	
;watchreset.c: 17: int temp3=0;
	clrf	(main@temp3)
	clrf	(main@temp3+1)
	line	18
	
l1484:	
;watchreset.c: 18: int temp4=0;
	clrf	(main@temp4)
	clrf	(main@temp4+1)
	goto	l1486
	line	19
;watchreset.c: 19: while(1)
	
l1025:	
	line	21
	
l1486:	
;watchreset.c: 20: {
;watchreset.c: 21: if(RC7==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(63/8),(63)&7
	goto	u11
	goto	u10
u11:
	goto	l1494
u10:
	goto	l1027
	line	23
	
l1488:	
;watchreset.c: 22: {
;watchreset.c: 23: while(RC7==1);
	goto	l1027
	
l1028:	
	
l1027:	
	btfsc	(63/8),(63)&7
	goto	u21
	goto	u20
u21:
	goto	l1027
u20:
	goto	l1490
	
l1029:	
	line	24
	
l1490:	
;watchreset.c: 24: x++;
	movlw	low(01h)
	addwf	(main@x),f
	skipnc
	incf	(main@x+1),f
	movlw	high(01h)
	addwf	(main@x+1),f
	line	25
;watchreset.c: 25: if(x==4)
	movlw	04h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l1494
u30:
	line	27
	
l1492:	
;watchreset.c: 26: {
;watchreset.c: 27: x=0;
	clrf	(main@x)
	clrf	(main@x+1)
	goto	l1494
	line	28
	
l1030:	
	goto	l1494
	line	29
	
l1026:	
	line	30
	
l1494:	
;watchreset.c: 28: }
;watchreset.c: 29: }
;watchreset.c: 30: if(RA7==1 && x==0)
	btfss	(47/8),(47)&7
	goto	u41
	goto	u40
u41:
	goto	l1502
u40:
	
l1496:	
	movf	((main@x+1)),w
	iorwf	((main@x)),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l1502
u50:
	goto	l1032
	line	32
	
l1498:	
;watchreset.c: 31: {
;watchreset.c: 32: while(RA7==1);
	goto	l1032
	
l1033:	
	
l1032:	
	btfsc	(47/8),(47)&7
	goto	u61
	goto	u60
u61:
	goto	l1032
u60:
	goto	l1500
	
l1034:	
	line	33
	
l1500:	
;watchreset.c: 33: temp1++;
	movlw	low(01h)
	addwf	(main@temp1),f
	skipnc
	incf	(main@temp1+1),f
	movlw	high(01h)
	addwf	(main@temp1+1),f
	goto	l1502
	line	34
	
l1031:	
	line	35
	
l1502:	
;watchreset.c: 34: }
;watchreset.c: 35: if(RA7==1 && x==1)
	btfss	(47/8),(47)&7
	goto	u71
	goto	u70
u71:
	goto	l1510
u70:
	
l1504:	
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u81
	goto	u80
u81:
	goto	l1510
u80:
	goto	l1036
	line	37
	
l1506:	
;watchreset.c: 36: {
;watchreset.c: 37: while(RA7==1);
	goto	l1036
	
l1037:	
	
l1036:	
	btfsc	(47/8),(47)&7
	goto	u91
	goto	u90
u91:
	goto	l1036
u90:
	goto	l1508
	
l1038:	
	line	38
	
l1508:	
;watchreset.c: 38: temp2++;
	movlw	low(01h)
	addwf	(main@temp2),f
	skipnc
	incf	(main@temp2+1),f
	movlw	high(01h)
	addwf	(main@temp2+1),f
	goto	l1510
	line	39
	
l1035:	
	line	40
	
l1510:	
;watchreset.c: 39: }
;watchreset.c: 40: if(RA7==1 && x==2)
	btfss	(47/8),(47)&7
	goto	u101
	goto	u100
u101:
	goto	l1518
u100:
	
l1512:	
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u111
	goto	u110
u111:
	goto	l1518
u110:
	goto	l1040
	line	42
	
l1514:	
;watchreset.c: 41: {
;watchreset.c: 42: while(RA7==1);
	goto	l1040
	
l1041:	
	
l1040:	
	btfsc	(47/8),(47)&7
	goto	u121
	goto	u120
u121:
	goto	l1040
u120:
	goto	l1516
	
l1042:	
	line	43
	
l1516:	
;watchreset.c: 43: temp3++;
	movlw	low(01h)
	addwf	(main@temp3),f
	skipnc
	incf	(main@temp3+1),f
	movlw	high(01h)
	addwf	(main@temp3+1),f
	goto	l1518
	line	44
	
l1039:	
	line	45
	
l1518:	
;watchreset.c: 44: }
;watchreset.c: 45: if(RA7==1 && x==3)
	btfss	(47/8),(47)&7
	goto	u131
	goto	u130
u131:
	goto	l1043
u130:
	
l1520:	
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u141
	goto	u140
u141:
	goto	l1043
u140:
	goto	l1044
	line	47
	
l1522:	
;watchreset.c: 46: {
;watchreset.c: 47: while(RA7==1);
	goto	l1044
	
l1045:	
	
l1044:	
	btfsc	(47/8),(47)&7
	goto	u151
	goto	u150
u151:
	goto	l1044
u150:
	goto	l1524
	
l1046:	
	line	48
	
l1524:	
;watchreset.c: 48: temp4++;
	movlw	low(01h)
	addwf	(main@temp4),f
	skipnc
	incf	(main@temp4+1),f
	movlw	high(01h)
	addwf	(main@temp4+1),f
	line	49
	
l1043:	
	line	53
;watchreset.c: 49: }
;watchreset.c: 53: if(temp1==1 && x==0)
	movlw	01h
	xorwf	(main@temp1),w
	iorwf	(main@temp1+1),w
	skipz
	goto	u161
	goto	u160
u161:
	goto	l1047
u160:
	
l1526:	
	movf	((main@x+1)),w
	iorwf	((main@x)),w
	skipz
	goto	u171
	goto	u170
u171:
	goto	l1047
u170:
	line	55
	
l1528:	
;watchreset.c: 54: {
;watchreset.c: 55: PORTC=0XBF;
	movlw	(0BFh)
	movwf	(7)	;volatile
	line	56
	
l1047:	
	line	57
;watchreset.c: 56: }
;watchreset.c: 57: if(temp1==2 && x==0)
	movlw	02h
	xorwf	(main@temp1),w
	iorwf	(main@temp1+1),w
	skipz
	goto	u181
	goto	u180
u181:
	goto	l1048
u180:
	
l1530:	
	movf	((main@x+1)),w
	iorwf	((main@x)),w
	skipz
	goto	u191
	goto	u190
u191:
	goto	l1048
u190:
	line	59
	
l1532:	
;watchreset.c: 58: {
;watchreset.c: 59: PORTC=0X06;
	movlw	(06h)
	movwf	(7)	;volatile
	line	60
	
l1048:	
	line	61
;watchreset.c: 60: }
;watchreset.c: 61: if(temp1==3 && x==0)
	movlw	03h
	xorwf	(main@temp1),w
	iorwf	(main@temp1+1),w
	skipz
	goto	u201
	goto	u200
u201:
	goto	l1049
u200:
	
l1534:	
	movf	((main@x+1)),w
	iorwf	((main@x)),w
	skipz
	goto	u211
	goto	u210
u211:
	goto	l1049
u210:
	line	63
	
l1536:	
;watchreset.c: 62: {
;watchreset.c: 63: PORTC=0X5B;
	movlw	(05Bh)
	movwf	(7)	;volatile
	line	64
	
l1049:	
	line	65
;watchreset.c: 64: }
;watchreset.c: 65: if(temp1==4 && x==0)
	movlw	04h
	xorwf	(main@temp1),w
	iorwf	(main@temp1+1),w
	skipz
	goto	u221
	goto	u220
u221:
	goto	l1050
u220:
	
l1538:	
	movf	((main@x+1)),w
	iorwf	((main@x)),w
	skipz
	goto	u231
	goto	u230
u231:
	goto	l1050
u230:
	line	67
	
l1540:	
;watchreset.c: 66: {
;watchreset.c: 67: PORTC=0X4F;
	movlw	(04Fh)
	movwf	(7)	;volatile
	line	68
	
l1050:	
	line	69
;watchreset.c: 68: }
;watchreset.c: 69: if(temp1==5 && x==0)
	movlw	05h
	xorwf	(main@temp1),w
	iorwf	(main@temp1+1),w
	skipz
	goto	u241
	goto	u240
u241:
	goto	l1051
u240:
	
l1542:	
	movf	((main@x+1)),w
	iorwf	((main@x)),w
	skipz
	goto	u251
	goto	u250
u251:
	goto	l1051
u250:
	line	71
	
l1544:	
;watchreset.c: 70: {
;watchreset.c: 71: PORTC=0X66;
	movlw	(066h)
	movwf	(7)	;volatile
	line	72
	
l1051:	
	line	73
;watchreset.c: 72: }
;watchreset.c: 73: if(temp1==6 && x==0)
	movlw	06h
	xorwf	(main@temp1),w
	iorwf	(main@temp1+1),w
	skipz
	goto	u261
	goto	u260
u261:
	goto	l1052
u260:
	
l1546:	
	movf	((main@x+1)),w
	iorwf	((main@x)),w
	skipz
	goto	u271
	goto	u270
u271:
	goto	l1052
u270:
	line	75
	
l1548:	
;watchreset.c: 74: {
;watchreset.c: 75: PORTC=0X6D;
	movlw	(06Dh)
	movwf	(7)	;volatile
	line	76
	
l1052:	
	line	77
;watchreset.c: 76: }
;watchreset.c: 77: if(temp1==7 && x==0)
	movlw	07h
	xorwf	(main@temp1),w
	iorwf	(main@temp1+1),w
	skipz
	goto	u281
	goto	u280
u281:
	goto	l1053
u280:
	
l1550:	
	movf	((main@x+1)),w
	iorwf	((main@x)),w
	skipz
	goto	u291
	goto	u290
u291:
	goto	l1053
u290:
	line	79
	
l1552:	
;watchreset.c: 78: {
;watchreset.c: 79: PORTC=0X7C;
	movlw	(07Ch)
	movwf	(7)	;volatile
	line	80
	
l1053:	
	line	81
;watchreset.c: 80: }
;watchreset.c: 81: if(temp1==8 && x==0)
	movlw	08h
	xorwf	(main@temp1),w
	iorwf	(main@temp1+1),w
	skipz
	goto	u301
	goto	u300
u301:
	goto	l1054
u300:
	
l1554:	
	movf	((main@x+1)),w
	iorwf	((main@x)),w
	skipz
	goto	u311
	goto	u310
u311:
	goto	l1054
u310:
	line	83
	
l1556:	
;watchreset.c: 82: {
;watchreset.c: 83: PORTC=0X07;
	movlw	(07h)
	movwf	(7)	;volatile
	line	84
	
l1054:	
	line	85
;watchreset.c: 84: }
;watchreset.c: 85: if(temp1==9 && x==0)
	movlw	09h
	xorwf	(main@temp1),w
	iorwf	(main@temp1+1),w
	skipz
	goto	u321
	goto	u320
u321:
	goto	l1055
u320:
	
l1558:	
	movf	((main@x+1)),w
	iorwf	((main@x)),w
	skipz
	goto	u331
	goto	u330
u331:
	goto	l1055
u330:
	line	87
	
l1560:	
;watchreset.c: 86: {
;watchreset.c: 87: PORTC=0XFF;
	movlw	(0FFh)
	movwf	(7)	;volatile
	line	88
	
l1055:	
	line	89
;watchreset.c: 88: }
;watchreset.c: 89: if(temp1==10 && x==0)
	movlw	0Ah
	xorwf	(main@temp1),w
	iorwf	(main@temp1+1),w
	skipz
	goto	u341
	goto	u340
u341:
	goto	l1568
u340:
	
l1562:	
	movf	((main@x+1)),w
	iorwf	((main@x)),w
	skipz
	goto	u351
	goto	u350
u351:
	goto	l1568
u350:
	line	91
	
l1564:	
;watchreset.c: 90: {
;watchreset.c: 91: PORTC=0XE7;
	movlw	(0E7h)
	movwf	(7)	;volatile
	line	92
	
l1566:	
;watchreset.c: 92: temp1=0;
	clrf	(main@temp1)
	clrf	(main@temp1+1)
	goto	l1568
	line	93
	
l1056:	
	line	94
	
l1568:	
;watchreset.c: 93: }
;watchreset.c: 94: if(temp2==1 && x==1)
	movlw	01h
	xorwf	(main@temp2),w
	iorwf	(main@temp2+1),w
	skipz
	goto	u361
	goto	u360
u361:
	goto	l1057
u360:
	
l1570:	
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u371
	goto	u370
u371:
	goto	l1057
u370:
	line	96
	
l1572:	
;watchreset.c: 95: {
;watchreset.c: 96: PORTD=0XBF;
	movlw	(0BFh)
	movwf	(8)	;volatile
	line	97
	
l1057:	
	line	98
;watchreset.c: 97: }
;watchreset.c: 98: if(temp2==2 && x==1)
	movlw	02h
	xorwf	(main@temp2),w
	iorwf	(main@temp2+1),w
	skipz
	goto	u381
	goto	u380
u381:
	goto	l1058
u380:
	
l1574:	
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u391
	goto	u390
u391:
	goto	l1058
u390:
	line	100
	
l1576:	
;watchreset.c: 99: {
;watchreset.c: 100: PORTD=0X06;
	movlw	(06h)
	movwf	(8)	;volatile
	line	101
	
l1058:	
	line	102
;watchreset.c: 101: }
;watchreset.c: 102: if(temp2==3 && x==1)
	movlw	03h
	xorwf	(main@temp2),w
	iorwf	(main@temp2+1),w
	skipz
	goto	u401
	goto	u400
u401:
	goto	l1059
u400:
	
l1578:	
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u411
	goto	u410
u411:
	goto	l1059
u410:
	line	104
	
l1580:	
;watchreset.c: 103: {
;watchreset.c: 104: PORTD=0X5B;
	movlw	(05Bh)
	movwf	(8)	;volatile
	line	105
	
l1059:	
	line	106
;watchreset.c: 105: }
;watchreset.c: 106: if(temp2==4 && x==1)
	movlw	04h
	xorwf	(main@temp2),w
	iorwf	(main@temp2+1),w
	skipz
	goto	u421
	goto	u420
u421:
	goto	l1060
u420:
	
l1582:	
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u431
	goto	u430
u431:
	goto	l1060
u430:
	line	108
	
l1584:	
;watchreset.c: 107: {
;watchreset.c: 108: PORTD=0X4F;
	movlw	(04Fh)
	movwf	(8)	;volatile
	line	109
	
l1060:	
	line	110
;watchreset.c: 109: }
;watchreset.c: 110: if(temp2==5 && x==1)
	movlw	05h
	xorwf	(main@temp2),w
	iorwf	(main@temp2+1),w
	skipz
	goto	u441
	goto	u440
u441:
	goto	l1061
u440:
	
l1586:	
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u451
	goto	u450
u451:
	goto	l1061
u450:
	line	112
	
l1588:	
;watchreset.c: 111: {
;watchreset.c: 112: PORTD=0X66;
	movlw	(066h)
	movwf	(8)	;volatile
	line	113
	
l1061:	
	line	114
;watchreset.c: 113: }
;watchreset.c: 114: if(temp2==6 && x==1)
	movlw	06h
	xorwf	(main@temp2),w
	iorwf	(main@temp2+1),w
	skipz
	goto	u461
	goto	u460
u461:
	goto	l1062
u460:
	
l1590:	
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u471
	goto	u470
u471:
	goto	l1062
u470:
	line	116
	
l1592:	
;watchreset.c: 115: {
;watchreset.c: 116: PORTD=0X6D;
	movlw	(06Dh)
	movwf	(8)	;volatile
	line	117
	
l1062:	
	line	118
;watchreset.c: 117: }
;watchreset.c: 118: if(temp2==7 && x==1)
	movlw	07h
	xorwf	(main@temp2),w
	iorwf	(main@temp2+1),w
	skipz
	goto	u481
	goto	u480
u481:
	goto	l1063
u480:
	
l1594:	
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u491
	goto	u490
u491:
	goto	l1063
u490:
	line	120
	
l1596:	
;watchreset.c: 119: {
;watchreset.c: 120: PORTD=0X7C;
	movlw	(07Ch)
	movwf	(8)	;volatile
	line	121
	
l1063:	
	line	122
;watchreset.c: 121: }
;watchreset.c: 122: if(temp2==8 && x==1)
	movlw	08h
	xorwf	(main@temp2),w
	iorwf	(main@temp2+1),w
	skipz
	goto	u501
	goto	u500
u501:
	goto	l1064
u500:
	
l1598:	
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u511
	goto	u510
u511:
	goto	l1064
u510:
	line	124
	
l1600:	
;watchreset.c: 123: {
;watchreset.c: 124: PORTD=0X07;
	movlw	(07h)
	movwf	(8)	;volatile
	line	125
	
l1064:	
	line	126
;watchreset.c: 125: }
;watchreset.c: 126: if(temp2==9 && x==1)
	movlw	09h
	xorwf	(main@temp2),w
	iorwf	(main@temp2+1),w
	skipz
	goto	u521
	goto	u520
u521:
	goto	l1065
u520:
	
l1602:	
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u531
	goto	u530
u531:
	goto	l1065
u530:
	line	128
	
l1604:	
;watchreset.c: 127: {
;watchreset.c: 128: PORTD=0XFF;
	movlw	(0FFh)
	movwf	(8)	;volatile
	line	129
	
l1065:	
	line	130
;watchreset.c: 129: }
;watchreset.c: 130: if(temp2==10 && x==1)
	movlw	0Ah
	xorwf	(main@temp2),w
	iorwf	(main@temp2+1),w
	skipz
	goto	u541
	goto	u540
u541:
	goto	l1612
u540:
	
l1606:	
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u551
	goto	u550
u551:
	goto	l1612
u550:
	line	132
	
l1608:	
;watchreset.c: 131: {
;watchreset.c: 132: PORTD=0XE7;
	movlw	(0E7h)
	movwf	(8)	;volatile
	line	133
	
l1610:	
;watchreset.c: 133: temp2=0;
	clrf	(main@temp2)
	clrf	(main@temp2+1)
	goto	l1612
	line	134
	
l1066:	
	line	135
	
l1612:	
;watchreset.c: 134: }
;watchreset.c: 135: if(temp3==1 && x==2)
	movlw	01h
	xorwf	(main@temp3),w
	iorwf	(main@temp3+1),w
	skipz
	goto	u561
	goto	u560
u561:
	goto	l1067
u560:
	
l1614:	
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u571
	goto	u570
u571:
	goto	l1067
u570:
	line	137
	
l1616:	
;watchreset.c: 136: {
;watchreset.c: 137: PORTB=0XBF;
	movlw	(0BFh)
	movwf	(6)	;volatile
	line	138
	
l1067:	
	line	139
;watchreset.c: 138: }
;watchreset.c: 139: if(temp3==2 && x==2)
	movlw	02h
	xorwf	(main@temp3),w
	iorwf	(main@temp3+1),w
	skipz
	goto	u581
	goto	u580
u581:
	goto	l1068
u580:
	
l1618:	
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u591
	goto	u590
u591:
	goto	l1068
u590:
	line	141
	
l1620:	
;watchreset.c: 140: {
;watchreset.c: 141: PORTB=0X06;
	movlw	(06h)
	movwf	(6)	;volatile
	line	142
	
l1068:	
	line	143
;watchreset.c: 142: }
;watchreset.c: 143: if(temp3==3 && x==2)
	movlw	03h
	xorwf	(main@temp3),w
	iorwf	(main@temp3+1),w
	skipz
	goto	u601
	goto	u600
u601:
	goto	l1069
u600:
	
l1622:	
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u611
	goto	u610
u611:
	goto	l1069
u610:
	line	145
	
l1624:	
;watchreset.c: 144: {
;watchreset.c: 145: PORTB=0X5B;
	movlw	(05Bh)
	movwf	(6)	;volatile
	line	146
	
l1069:	
	line	147
;watchreset.c: 146: }
;watchreset.c: 147: if(temp3==4 && x==2)
	movlw	04h
	xorwf	(main@temp3),w
	iorwf	(main@temp3+1),w
	skipz
	goto	u621
	goto	u620
u621:
	goto	l1070
u620:
	
l1626:	
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u631
	goto	u630
u631:
	goto	l1070
u630:
	line	149
	
l1628:	
;watchreset.c: 148: {
;watchreset.c: 149: PORTB=0X4F;
	movlw	(04Fh)
	movwf	(6)	;volatile
	line	150
	
l1070:	
	line	151
;watchreset.c: 150: }
;watchreset.c: 151: if(temp3==5 && x==2)
	movlw	05h
	xorwf	(main@temp3),w
	iorwf	(main@temp3+1),w
	skipz
	goto	u641
	goto	u640
u641:
	goto	l1071
u640:
	
l1630:	
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u651
	goto	u650
u651:
	goto	l1071
u650:
	line	153
	
l1632:	
;watchreset.c: 152: {
;watchreset.c: 153: PORTB=0X66;
	movlw	(066h)
	movwf	(6)	;volatile
	line	154
	
l1071:	
	line	155
;watchreset.c: 154: }
;watchreset.c: 155: if(temp3==6 && x==2)
	movlw	06h
	xorwf	(main@temp3),w
	iorwf	(main@temp3+1),w
	skipz
	goto	u661
	goto	u660
u661:
	goto	l1072
u660:
	
l1634:	
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u671
	goto	u670
u671:
	goto	l1072
u670:
	line	157
	
l1636:	
;watchreset.c: 156: {
;watchreset.c: 157: PORTB=0X6D;
	movlw	(06Dh)
	movwf	(6)	;volatile
	line	158
	
l1072:	
	line	159
;watchreset.c: 158: }
;watchreset.c: 159: if(temp3==7 && x==2)
	movlw	07h
	xorwf	(main@temp3),w
	iorwf	(main@temp3+1),w
	skipz
	goto	u681
	goto	u680
u681:
	goto	l1073
u680:
	
l1638:	
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u691
	goto	u690
u691:
	goto	l1073
u690:
	line	161
	
l1640:	
;watchreset.c: 160: {
;watchreset.c: 161: PORTB=0X7C;
	movlw	(07Ch)
	movwf	(6)	;volatile
	line	162
	
l1073:	
	line	163
;watchreset.c: 162: }
;watchreset.c: 163: if(temp3==8 && x==2)
	movlw	08h
	xorwf	(main@temp3),w
	iorwf	(main@temp3+1),w
	skipz
	goto	u701
	goto	u700
u701:
	goto	l1074
u700:
	
l1642:	
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u711
	goto	u710
u711:
	goto	l1074
u710:
	line	165
	
l1644:	
;watchreset.c: 164: {
;watchreset.c: 165: PORTB=0X07;
	movlw	(07h)
	movwf	(6)	;volatile
	line	166
	
l1074:	
	line	167
;watchreset.c: 166: }
;watchreset.c: 167: if(temp3==9 && x==2)
	movlw	09h
	xorwf	(main@temp3),w
	iorwf	(main@temp3+1),w
	skipz
	goto	u721
	goto	u720
u721:
	goto	l1075
u720:
	
l1646:	
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u731
	goto	u730
u731:
	goto	l1075
u730:
	line	169
	
l1648:	
;watchreset.c: 168: {
;watchreset.c: 169: PORTB=0XFF;
	movlw	(0FFh)
	movwf	(6)	;volatile
	line	170
	
l1075:	
	line	171
;watchreset.c: 170: }
;watchreset.c: 171: if(temp3==10 && x==2)
	movlw	0Ah
	xorwf	(main@temp3),w
	iorwf	(main@temp3+1),w
	skipz
	goto	u741
	goto	u740
u741:
	goto	l1656
u740:
	
l1650:	
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u751
	goto	u750
u751:
	goto	l1656
u750:
	line	173
	
l1652:	
;watchreset.c: 172: {
;watchreset.c: 173: PORTB=0XE7;
	movlw	(0E7h)
	movwf	(6)	;volatile
	line	174
	
l1654:	
;watchreset.c: 174: temp3=0;
	clrf	(main@temp3)
	clrf	(main@temp3+1)
	goto	l1656
	line	175
	
l1076:	
	line	176
	
l1656:	
;watchreset.c: 175: }
;watchreset.c: 176: if(temp4==1 && x==3)
	movlw	01h
	xorwf	(main@temp4),w
	iorwf	(main@temp4+1),w
	skipz
	goto	u761
	goto	u760
u761:
	goto	l1077
u760:
	
l1658:	
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u771
	goto	u770
u771:
	goto	l1077
u770:
	line	178
	
l1660:	
;watchreset.c: 177: {
;watchreset.c: 178: PORTA=0XBF;
	movlw	(0BFh)
	movwf	(5)	;volatile
	line	179
	
l1077:	
	line	180
;watchreset.c: 179: }
;watchreset.c: 180: if(temp4==2 && x==3)
	movlw	02h
	xorwf	(main@temp4),w
	iorwf	(main@temp4+1),w
	skipz
	goto	u781
	goto	u780
u781:
	goto	l1078
u780:
	
l1662:	
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u791
	goto	u790
u791:
	goto	l1078
u790:
	line	182
	
l1664:	
;watchreset.c: 181: {
;watchreset.c: 182: PORTA=0X06;
	movlw	(06h)
	movwf	(5)	;volatile
	line	183
	
l1078:	
	line	184
;watchreset.c: 183: }
;watchreset.c: 184: if(temp4==3 && x==3)
	movlw	03h
	xorwf	(main@temp4),w
	iorwf	(main@temp4+1),w
	skipz
	goto	u801
	goto	u800
u801:
	goto	l1079
u800:
	
l1666:	
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u811
	goto	u810
u811:
	goto	l1079
u810:
	line	186
	
l1668:	
;watchreset.c: 185: {
;watchreset.c: 186: PORTA=0X5B;
	movlw	(05Bh)
	movwf	(5)	;volatile
	line	187
	
l1079:	
	line	188
;watchreset.c: 187: }
;watchreset.c: 188: if(temp4==4 && x==3)
	movlw	04h
	xorwf	(main@temp4),w
	iorwf	(main@temp4+1),w
	skipz
	goto	u821
	goto	u820
u821:
	goto	l1080
u820:
	
l1670:	
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u831
	goto	u830
u831:
	goto	l1080
u830:
	line	190
	
l1672:	
;watchreset.c: 189: {
;watchreset.c: 190: PORTA=0X4F;
	movlw	(04Fh)
	movwf	(5)	;volatile
	line	191
	
l1080:	
	line	192
;watchreset.c: 191: }
;watchreset.c: 192: if(temp4==5 && x==3)
	movlw	05h
	xorwf	(main@temp4),w
	iorwf	(main@temp4+1),w
	skipz
	goto	u841
	goto	u840
u841:
	goto	l1081
u840:
	
l1674:	
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u851
	goto	u850
u851:
	goto	l1081
u850:
	line	194
	
l1676:	
;watchreset.c: 193: {
;watchreset.c: 194: PORTA=0X66;
	movlw	(066h)
	movwf	(5)	;volatile
	line	195
	
l1081:	
	line	196
;watchreset.c: 195: }
;watchreset.c: 196: if(temp4==6 && x==3)
	movlw	06h
	xorwf	(main@temp4),w
	iorwf	(main@temp4+1),w
	skipz
	goto	u861
	goto	u860
u861:
	goto	l1082
u860:
	
l1678:	
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u871
	goto	u870
u871:
	goto	l1082
u870:
	line	198
	
l1680:	
;watchreset.c: 197: {
;watchreset.c: 198: PORTA=0X6D;
	movlw	(06Dh)
	movwf	(5)	;volatile
	line	199
	
l1082:	
	line	200
;watchreset.c: 199: }
;watchreset.c: 200: if(temp4==7 && x==3)
	movlw	07h
	xorwf	(main@temp4),w
	iorwf	(main@temp4+1),w
	skipz
	goto	u881
	goto	u880
u881:
	goto	l1083
u880:
	
l1682:	
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u891
	goto	u890
u891:
	goto	l1083
u890:
	line	202
	
l1684:	
;watchreset.c: 201: {
;watchreset.c: 202: PORTA=0X7C;
	movlw	(07Ch)
	movwf	(5)	;volatile
	line	203
	
l1083:	
	line	204
;watchreset.c: 203: }
;watchreset.c: 204: if(temp4==8 && x==3)
	movlw	08h
	xorwf	(main@temp4),w
	iorwf	(main@temp4+1),w
	skipz
	goto	u901
	goto	u900
u901:
	goto	l1084
u900:
	
l1686:	
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u911
	goto	u910
u911:
	goto	l1084
u910:
	line	206
	
l1688:	
;watchreset.c: 205: {
;watchreset.c: 206: PORTA=0X07;
	movlw	(07h)
	movwf	(5)	;volatile
	line	207
	
l1084:	
	line	208
;watchreset.c: 207: }
;watchreset.c: 208: if(temp4==9 && x==3)
	movlw	09h
	xorwf	(main@temp4),w
	iorwf	(main@temp4+1),w
	skipz
	goto	u921
	goto	u920
u921:
	goto	l1085
u920:
	
l1690:	
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u931
	goto	u930
u931:
	goto	l1085
u930:
	line	210
	
l1692:	
;watchreset.c: 209: {
;watchreset.c: 210: PORTA=0XFF;
	movlw	(0FFh)
	movwf	(5)	;volatile
	line	211
	
l1085:	
	line	212
;watchreset.c: 211: }
;watchreset.c: 212: if(temp4==10 && x==3)
	movlw	0Ah
	xorwf	(main@temp4),w
	iorwf	(main@temp4+1),w
	skipz
	goto	u941
	goto	u940
u941:
	goto	l1486
u940:
	
l1694:	
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u951
	goto	u950
u951:
	goto	l1486
u950:
	line	214
	
l1696:	
;watchreset.c: 213: {
;watchreset.c: 214: PORTA=0XE7;
	movlw	(0E7h)
	movwf	(5)	;volatile
	line	215
	
l1698:	
;watchreset.c: 215: temp4=0;
	clrf	(main@temp4)
	clrf	(main@temp4+1)
	goto	l1486
	line	216
	
l1086:	
	goto	l1486
	line	221
	
l1087:	
	line	19
	goto	l1486
	
l1088:	
	line	222
	
l1089:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
