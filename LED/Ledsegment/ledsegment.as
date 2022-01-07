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
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
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
	file	"ledsegment.as"
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
	global	main@x
main@x:	; 2 bytes @ 0x0
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       2
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
;; (0) _main                                                 2     2      0     300
;;                                              0 COMMON     2     2      0
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
;;COMMON               E      2       2       1       14.3%
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
;;		line 3 in file "E:\KTU\Softwares\mplab\Ledsegment\ledsegment.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Ledsegment\ledsegment.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	4
	
l1421:	
;ledsegment.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
	
l1423:	
;ledsegment.c: 5: TRISA=0X02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	6
	
l1425:	
;ledsegment.c: 6: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	7
	
l1427:	
;ledsegment.c: 7: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	8
	
l1429:	
;ledsegment.c: 8: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	9
	
l1431:	
;ledsegment.c: 9: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	10
	
l1433:	
;ledsegment.c: 10: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	11
	
l1435:	
;ledsegment.c: 11: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	12
	
l1437:	
;ledsegment.c: 12: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	13
	
l1439:	
;ledsegment.c: 13: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	14
	
l1441:	
;ledsegment.c: 14: int x=0;
	clrf	(main@x)
	clrf	(main@x+1)
	goto	l1443
	line	15
;ledsegment.c: 15: while(1)
	
l1025:	
	line	17
	
l1443:	
;ledsegment.c: 16: {
;ledsegment.c: 17: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u11
	goto	u10
u11:
	goto	l1026
u10:
	line	20
	
l1445:	
;ledsegment.c: 18: {
;ledsegment.c: 20: PORTC=0X00;
	clrf	(7)	;volatile
	line	21
;ledsegment.c: 21: PORTD=0X00;
	clrf	(8)	;volatile
	line	22
;ledsegment.c: 22: while(RA0==1);
	goto	l1027
	
l1028:	
	
l1027:	
	btfsc	(40/8),(40)&7
	goto	u21
	goto	u20
u21:
	goto	l1027
u20:
	goto	l1447
	
l1029:	
	line	23
	
l1447:	
;ledsegment.c: 23: x++;
	movlw	low(01h)
	addwf	(main@x),f
	skipnc
	incf	(main@x+1),f
	movlw	high(01h)
	addwf	(main@x+1),f
	line	24
	
l1026:	
	line	25
;ledsegment.c: 24: }
;ledsegment.c: 25: if(x==1)
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l1030
u30:
	line	27
	
l1449:	
;ledsegment.c: 26: {
;ledsegment.c: 27: PORTB=0XBF;
	movlw	(0BFh)
	movwf	(6)	;volatile
	line	28
	
l1030:	
	line	29
;ledsegment.c: 28: }
;ledsegment.c: 29: if(x==2)
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l1031
u40:
	line	31
	
l1451:	
;ledsegment.c: 30: {
;ledsegment.c: 31: PORTB=0X06;
	movlw	(06h)
	movwf	(6)	;volatile
	line	32
	
l1031:	
	line	33
;ledsegment.c: 32: }
;ledsegment.c: 33: if(x==3)
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l1032
u50:
	line	35
	
l1453:	
;ledsegment.c: 34: {
;ledsegment.c: 35: PORTB=0X5B;
	movlw	(05Bh)
	movwf	(6)	;volatile
	line	36
	
l1032:	
	line	37
;ledsegment.c: 36: }
;ledsegment.c: 37: if(x==4)
	movlw	04h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u61
	goto	u60
u61:
	goto	l1033
u60:
	line	39
	
l1455:	
;ledsegment.c: 38: {
;ledsegment.c: 39: PORTB=0X4F;
	movlw	(04Fh)
	movwf	(6)	;volatile
	line	40
	
l1033:	
	line	41
;ledsegment.c: 40: }
;ledsegment.c: 41: if(x==5)
	movlw	05h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u71
	goto	u70
u71:
	goto	l1034
u70:
	line	43
	
l1457:	
;ledsegment.c: 42: {
;ledsegment.c: 43: PORTB=0X66;
	movlw	(066h)
	movwf	(6)	;volatile
	line	44
	
l1034:	
	line	45
;ledsegment.c: 44: }
;ledsegment.c: 45: if(x==6)
	movlw	06h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u81
	goto	u80
u81:
	goto	l1035
u80:
	line	47
	
l1459:	
;ledsegment.c: 46: {
;ledsegment.c: 47: PORTB=0X6D;
	movlw	(06Dh)
	movwf	(6)	;volatile
	line	48
	
l1035:	
	line	49
;ledsegment.c: 48: }
;ledsegment.c: 49: if(x==7)
	movlw	07h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u91
	goto	u90
u91:
	goto	l1036
u90:
	line	51
	
l1461:	
;ledsegment.c: 50: {
;ledsegment.c: 51: PORTB=0X7C;
	movlw	(07Ch)
	movwf	(6)	;volatile
	line	52
	
l1036:	
	line	53
;ledsegment.c: 52: }
;ledsegment.c: 53: if(x==8)
	movlw	08h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u101
	goto	u100
u101:
	goto	l1037
u100:
	line	55
	
l1463:	
;ledsegment.c: 54: {
;ledsegment.c: 55: PORTB=0X07;
	movlw	(07h)
	movwf	(6)	;volatile
	line	56
	
l1037:	
	line	57
;ledsegment.c: 56: }
;ledsegment.c: 57: if(x==9)
	movlw	09h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u111
	goto	u110
u111:
	goto	l1038
u110:
	line	59
	
l1465:	
;ledsegment.c: 58: {
;ledsegment.c: 59: PORTB=0XFF;
	movlw	(0FFh)
	movwf	(6)	;volatile
	line	60
	
l1038:	
	line	61
;ledsegment.c: 60: }
;ledsegment.c: 61: if(x==10)
	movlw	0Ah
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u121
	goto	u120
u121:
	goto	l1471
u120:
	line	63
	
l1467:	
;ledsegment.c: 62: {
;ledsegment.c: 63: PORTB=0XE7;
	movlw	(0E7h)
	movwf	(6)	;volatile
	line	64
	
l1469:	
;ledsegment.c: 64: x=0;
	clrf	(main@x)
	clrf	(main@x+1)
	goto	l1471
	line	65
	
l1039:	
	line	66
	
l1471:	
;ledsegment.c: 65: }
;ledsegment.c: 66: if(x==1 && RA1==1)
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u131
	goto	u130
u131:
	goto	l1040
u130:
	
l1473:	
	btfss	(41/8),(41)&7
	goto	u141
	goto	u140
u141:
	goto	l1040
u140:
	line	68
	
l1475:	
;ledsegment.c: 67: {
;ledsegment.c: 68: PORTB=0XBF;
	movlw	(0BFh)
	movwf	(6)	;volatile
	line	69
	
l1477:	
;ledsegment.c: 69: RC0=1;
	bsf	(56/8),(56)&7
	line	70
	
l1040:	
	line	71
;ledsegment.c: 70: }
;ledsegment.c: 71: if(x==2 && RA1==1)
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u151
	goto	u150
u151:
	goto	l1041
u150:
	
l1479:	
	btfss	(41/8),(41)&7
	goto	u161
	goto	u160
u161:
	goto	l1041
u160:
	line	73
	
l1481:	
;ledsegment.c: 72: {
;ledsegment.c: 73: PORTB=0X06;
	movlw	(06h)
	movwf	(6)	;volatile
	line	74
	
l1483:	
;ledsegment.c: 74: RC1=1;
	bsf	(57/8),(57)&7
	line	75
	
l1041:	
	line	76
;ledsegment.c: 75: }
;ledsegment.c: 76: if(x==3 && RA1==1)
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u171
	goto	u170
u171:
	goto	l1042
u170:
	
l1485:	
	btfss	(41/8),(41)&7
	goto	u181
	goto	u180
u181:
	goto	l1042
u180:
	line	78
	
l1487:	
;ledsegment.c: 77: {
;ledsegment.c: 78: PORTB=0X5B;
	movlw	(05Bh)
	movwf	(6)	;volatile
	line	79
	
l1489:	
;ledsegment.c: 79: RC2=1;
	bsf	(58/8),(58)&7
	line	80
	
l1042:	
	line	81
;ledsegment.c: 80: }
;ledsegment.c: 81: if(x==4 && RA1==1)
	movlw	04h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u191
	goto	u190
u191:
	goto	l1043
u190:
	
l1491:	
	btfss	(41/8),(41)&7
	goto	u201
	goto	u200
u201:
	goto	l1043
u200:
	line	83
	
l1493:	
;ledsegment.c: 82: {
;ledsegment.c: 83: PORTB=0X4F;
	movlw	(04Fh)
	movwf	(6)	;volatile
	line	84
	
l1495:	
;ledsegment.c: 84: RC3=1;
	bsf	(59/8),(59)&7
	line	85
	
l1043:	
	line	86
;ledsegment.c: 85: }
;ledsegment.c: 86: if(x==5 && RA1==1)
	movlw	05h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u211
	goto	u210
u211:
	goto	l1044
u210:
	
l1497:	
	btfss	(41/8),(41)&7
	goto	u221
	goto	u220
u221:
	goto	l1044
u220:
	line	88
	
l1499:	
;ledsegment.c: 87: {
;ledsegment.c: 88: PORTB=0X66;
	movlw	(066h)
	movwf	(6)	;volatile
	line	89
	
l1501:	
;ledsegment.c: 89: RC4=1;
	bsf	(60/8),(60)&7
	line	90
	
l1044:	
	line	91
;ledsegment.c: 90: }
;ledsegment.c: 91: if(x==6 && RA1==1)
	movlw	06h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u231
	goto	u230
u231:
	goto	l1045
u230:
	
l1503:	
	btfss	(41/8),(41)&7
	goto	u241
	goto	u240
u241:
	goto	l1045
u240:
	line	93
	
l1505:	
;ledsegment.c: 92: {
;ledsegment.c: 93: PORTB=0X6D;
	movlw	(06Dh)
	movwf	(6)	;volatile
	line	94
	
l1507:	
;ledsegment.c: 94: RC5=1;
	bsf	(61/8),(61)&7
	line	95
	
l1045:	
	line	96
;ledsegment.c: 95: }
;ledsegment.c: 96: if(x==7 && RA1==1)
	movlw	07h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u251
	goto	u250
u251:
	goto	l1046
u250:
	
l1509:	
	btfss	(41/8),(41)&7
	goto	u261
	goto	u260
u261:
	goto	l1046
u260:
	line	98
	
l1511:	
;ledsegment.c: 97: {
;ledsegment.c: 98: PORTB=0X7C;
	movlw	(07Ch)
	movwf	(6)	;volatile
	line	99
	
l1513:	
;ledsegment.c: 99: RC6=1;
	bsf	(62/8),(62)&7
	line	100
	
l1046:	
	line	101
;ledsegment.c: 100: }
;ledsegment.c: 101: if(x==8 && RA1==1)
	movlw	08h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u271
	goto	u270
u271:
	goto	l1047
u270:
	
l1515:	
	btfss	(41/8),(41)&7
	goto	u281
	goto	u280
u281:
	goto	l1047
u280:
	line	103
	
l1517:	
;ledsegment.c: 102: {
;ledsegment.c: 103: PORTB=0X07;
	movlw	(07h)
	movwf	(6)	;volatile
	line	104
	
l1519:	
;ledsegment.c: 104: RC7=1;
	bsf	(63/8),(63)&7
	line	105
	
l1047:	
	line	106
;ledsegment.c: 105: }
;ledsegment.c: 106: if(x==9 && RA1==1)
	movlw	09h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u291
	goto	u290
u291:
	goto	l1048
u290:
	
l1521:	
	btfss	(41/8),(41)&7
	goto	u301
	goto	u300
u301:
	goto	l1048
u300:
	line	108
	
l1523:	
;ledsegment.c: 107: {
;ledsegment.c: 108: PORTB=0XFF;
	movlw	(0FFh)
	movwf	(6)	;volatile
	line	109
	
l1525:	
;ledsegment.c: 109: RD0=1;
	bsf	(64/8),(64)&7
	line	110
	
l1048:	
	line	111
;ledsegment.c: 110: }
;ledsegment.c: 111: if(x==10 && RA1==1)
	movlw	0Ah
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u311
	goto	u310
u311:
	goto	l1443
u310:
	
l1527:	
	btfss	(41/8),(41)&7
	goto	u321
	goto	u320
u321:
	goto	l1443
u320:
	line	113
	
l1529:	
;ledsegment.c: 112: {
;ledsegment.c: 113: PORTB=0XE7;
	movlw	(0E7h)
	movwf	(6)	;volatile
	line	114
	
l1531:	
;ledsegment.c: 114: RD1=1;
	bsf	(65/8),(65)&7
	line	115
	
l1533:	
;ledsegment.c: 115: x=0;
	clrf	(main@x)
	clrf	(main@x+1)
	goto	l1443
	line	116
	
l1049:	
	goto	l1443
	line	117
	
l1050:	
	line	15
	goto	l1443
	
l1051:	
	line	118
	
l1052:	
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
