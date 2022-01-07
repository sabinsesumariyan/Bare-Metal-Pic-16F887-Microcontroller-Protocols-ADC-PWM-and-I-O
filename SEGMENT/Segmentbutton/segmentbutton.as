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
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_RA6
_RA6	set	46
	global	_RA7
_RA7	set	47
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"segmentbutton.as"
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
	global	main@count
main@count:	; 2 bytes @ 0x0
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
;; (0) _main                                                 2     2      0     150
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
;;		line 3 in file "E:\KTU\Softwares\mplab\Segmentbutton\segmentbutton.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
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
	file	"E:\KTU\Softwares\mplab\Segmentbutton\segmentbutton.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+btemp+1]
	line	4
	
l1437:	
;segmentbutton.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
;segmentbutton.c: 5: PORTB=0X00;
	clrf	(6)	;volatile
	line	6
;segmentbutton.c: 6: PORTC=0X00;
	clrf	(7)	;volatile
	line	7
	
l1439:	
;segmentbutton.c: 7: TRISA=0XFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	8
	
l1441:	
;segmentbutton.c: 8: TRISB=0X00;
	clrf	(134)^080h	;volatile
	line	9
;segmentbutton.c: 9: TRISC=0X03;
	movlw	(03h)
	movwf	(135)^080h	;volatile
	line	10
	
l1443:	
;segmentbutton.c: 10: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	11
	
l1445:	
;segmentbutton.c: 11: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	12
	
l1447:	
;segmentbutton.c: 12: int count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l1449
	line	13
;segmentbutton.c: 13: while(1)
	
l1025:	
	line	15
	
l1449:	
;segmentbutton.c: 14: {
;segmentbutton.c: 15: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u11
	goto	u10
u11:
	goto	l1459
u10:
	goto	l1455
	line	17
	
l1451:	
;segmentbutton.c: 16: {
;segmentbutton.c: 17: while(count<30000)
	goto	l1455
	
l1028:	
	line	19
	
l1453:	
;segmentbutton.c: 18: {
;segmentbutton.c: 19: PORTB=0XBF;
	movlw	(0BFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	20
;segmentbutton.c: 20: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l1455
	line	21
	
l1027:	
	line	17
	
l1455:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(07530h)
	subwf	(main@count),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l1453
u20:
	goto	l1457
	
l1029:	
	line	22
	
l1457:	
;segmentbutton.c: 21: }
;segmentbutton.c: 22: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	23
;segmentbutton.c: 23: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l1459
	line	24
	
l1026:	
	line	25
	
l1459:	
;segmentbutton.c: 24: }
;segmentbutton.c: 25: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u31
	goto	u30
u31:
	goto	l1469
u30:
	goto	l1465
	line	27
	
l1461:	
;segmentbutton.c: 26: {
;segmentbutton.c: 27: while(count<30000)
	goto	l1465
	
l1032:	
	line	29
	
l1463:	
;segmentbutton.c: 28: {
;segmentbutton.c: 29: PORTB=0X06;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	30
;segmentbutton.c: 30: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l1465
	line	31
	
l1031:	
	line	27
	
l1465:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u45
	movlw	low(07530h)
	subwf	(main@count),w
u45:

	skipc
	goto	u41
	goto	u40
u41:
	goto	l1463
u40:
	goto	l1467
	
l1033:	
	line	32
	
l1467:	
;segmentbutton.c: 31: }
;segmentbutton.c: 32: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	33
;segmentbutton.c: 33: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l1469
	line	34
	
l1030:	
	line	35
	
l1469:	
;segmentbutton.c: 34: }
;segmentbutton.c: 35: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u51
	goto	u50
u51:
	goto	l1479
u50:
	goto	l1475
	line	37
	
l1471:	
;segmentbutton.c: 36: {
;segmentbutton.c: 37: while(count<30000)
	goto	l1475
	
l1036:	
	line	39
	
l1473:	
;segmentbutton.c: 38: {
;segmentbutton.c: 39: PORTB=0X5B;
	movlw	(05Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	40
;segmentbutton.c: 40: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l1475
	line	41
	
l1035:	
	line	37
	
l1475:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u65
	movlw	low(07530h)
	subwf	(main@count),w
u65:

	skipc
	goto	u61
	goto	u60
u61:
	goto	l1473
u60:
	goto	l1477
	
l1037:	
	line	42
	
l1477:	
;segmentbutton.c: 41: }
;segmentbutton.c: 42: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	43
;segmentbutton.c: 43: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l1479
	line	44
	
l1034:	
	line	45
	
l1479:	
;segmentbutton.c: 44: }
;segmentbutton.c: 45: if(RA3==1)
	btfss	(43/8),(43)&7
	goto	u71
	goto	u70
u71:
	goto	l1489
u70:
	goto	l1485
	line	47
	
l1481:	
;segmentbutton.c: 46: {
;segmentbutton.c: 47: while(count<30000)
	goto	l1485
	
l1040:	
	line	49
	
l1483:	
;segmentbutton.c: 48: {
;segmentbutton.c: 49: PORTB=0X4F;
	movlw	(04Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	50
;segmentbutton.c: 50: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l1485
	line	51
	
l1039:	
	line	47
	
l1485:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u85
	movlw	low(07530h)
	subwf	(main@count),w
u85:

	skipc
	goto	u81
	goto	u80
u81:
	goto	l1483
u80:
	goto	l1487
	
l1041:	
	line	52
	
l1487:	
;segmentbutton.c: 51: }
;segmentbutton.c: 52: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	53
;segmentbutton.c: 53: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l1489
	line	54
	
l1038:	
	line	55
	
l1489:	
;segmentbutton.c: 54: }
;segmentbutton.c: 55: if(RA4==1)
	btfss	(44/8),(44)&7
	goto	u91
	goto	u90
u91:
	goto	l1499
u90:
	goto	l1495
	line	57
	
l1491:	
;segmentbutton.c: 56: {
;segmentbutton.c: 57: while(count<30000)
	goto	l1495
	
l1044:	
	line	59
	
l1493:	
;segmentbutton.c: 58: {
;segmentbutton.c: 59: PORTB=0X66;
	movlw	(066h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	60
;segmentbutton.c: 60: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l1495
	line	61
	
l1043:	
	line	57
	
l1495:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u105
	movlw	low(07530h)
	subwf	(main@count),w
u105:

	skipc
	goto	u101
	goto	u100
u101:
	goto	l1493
u100:
	goto	l1497
	
l1045:	
	line	62
	
l1497:	
;segmentbutton.c: 61: }
;segmentbutton.c: 62: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	63
;segmentbutton.c: 63: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l1499
	line	64
	
l1042:	
	line	65
	
l1499:	
;segmentbutton.c: 64: }
;segmentbutton.c: 65: if(RA5==1)
	btfss	(45/8),(45)&7
	goto	u111
	goto	u110
u111:
	goto	l1509
u110:
	goto	l1505
	line	67
	
l1501:	
;segmentbutton.c: 66: {
;segmentbutton.c: 67: while(count<30000)
	goto	l1505
	
l1048:	
	line	69
	
l1503:	
;segmentbutton.c: 68: {
;segmentbutton.c: 69: PORTB=0X6D;
	movlw	(06Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	70
;segmentbutton.c: 70: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l1505
	line	71
	
l1047:	
	line	67
	
l1505:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u125
	movlw	low(07530h)
	subwf	(main@count),w
u125:

	skipc
	goto	u121
	goto	u120
u121:
	goto	l1503
u120:
	goto	l1507
	
l1049:	
	line	72
	
l1507:	
;segmentbutton.c: 71: }
;segmentbutton.c: 72: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	73
;segmentbutton.c: 73: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l1509
	line	74
	
l1046:	
	line	75
	
l1509:	
;segmentbutton.c: 74: }
;segmentbutton.c: 75: if(RA6==1)
	btfss	(46/8),(46)&7
	goto	u131
	goto	u130
u131:
	goto	l1519
u130:
	goto	l1515
	line	77
	
l1511:	
;segmentbutton.c: 76: {
;segmentbutton.c: 77: while(count<30000)
	goto	l1515
	
l1052:	
	line	79
	
l1513:	
;segmentbutton.c: 78: {
;segmentbutton.c: 79: PORTB=0X7C;
	movlw	(07Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	80
;segmentbutton.c: 80: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l1515
	line	81
	
l1051:	
	line	77
	
l1515:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u145
	movlw	low(07530h)
	subwf	(main@count),w
u145:

	skipc
	goto	u141
	goto	u140
u141:
	goto	l1513
u140:
	goto	l1517
	
l1053:	
	line	82
	
l1517:	
;segmentbutton.c: 81: }
;segmentbutton.c: 82: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	83
;segmentbutton.c: 83: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l1519
	line	84
	
l1050:	
	line	85
	
l1519:	
;segmentbutton.c: 84: }
;segmentbutton.c: 85: if(RA7==1)
	btfss	(47/8),(47)&7
	goto	u151
	goto	u150
u151:
	goto	l1529
u150:
	goto	l1525
	line	87
	
l1521:	
;segmentbutton.c: 86: {
;segmentbutton.c: 87: while(count<30000)
	goto	l1525
	
l1056:	
	line	89
	
l1523:	
;segmentbutton.c: 88: {
;segmentbutton.c: 89: PORTB=0X07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	90
;segmentbutton.c: 90: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l1525
	line	91
	
l1055:	
	line	87
	
l1525:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u165
	movlw	low(07530h)
	subwf	(main@count),w
u165:

	skipc
	goto	u161
	goto	u160
u161:
	goto	l1523
u160:
	goto	l1527
	
l1057:	
	line	92
	
l1527:	
;segmentbutton.c: 91: }
;segmentbutton.c: 92: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	93
;segmentbutton.c: 93: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l1529
	line	94
	
l1054:	
	line	95
	
l1529:	
;segmentbutton.c: 94: }
;segmentbutton.c: 95: if(RC0==1)
	btfss	(56/8),(56)&7
	goto	u171
	goto	u170
u171:
	goto	l1539
u170:
	goto	l1535
	line	97
	
l1531:	
;segmentbutton.c: 96: {
;segmentbutton.c: 97: while(count<30000)
	goto	l1535
	
l1060:	
	line	99
	
l1533:	
;segmentbutton.c: 98: {
;segmentbutton.c: 99: PORTB=0XFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	100
;segmentbutton.c: 100: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l1535
	line	101
	
l1059:	
	line	97
	
l1535:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u185
	movlw	low(07530h)
	subwf	(main@count),w
u185:

	skipc
	goto	u181
	goto	u180
u181:
	goto	l1533
u180:
	goto	l1537
	
l1061:	
	line	102
	
l1537:	
;segmentbutton.c: 101: }
;segmentbutton.c: 102: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	103
;segmentbutton.c: 103: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l1539
	line	104
	
l1058:	
	line	105
	
l1539:	
;segmentbutton.c: 104: }
;segmentbutton.c: 105: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u191
	goto	u190
u191:
	goto	l1449
u190:
	goto	l1545
	line	107
	
l1541:	
;segmentbutton.c: 106: {
;segmentbutton.c: 107: while(count<30000)
	goto	l1545
	
l1064:	
	line	109
	
l1543:	
;segmentbutton.c: 108: {
;segmentbutton.c: 109: PORTB=0XE7;
	movlw	(0E7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	110
;segmentbutton.c: 110: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l1545
	line	111
	
l1063:	
	line	107
	
l1545:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u205
	movlw	low(07530h)
	subwf	(main@count),w
u205:

	skipc
	goto	u201
	goto	u200
u201:
	goto	l1543
u200:
	goto	l1547
	
l1065:	
	line	112
	
l1547:	
;segmentbutton.c: 111: }
;segmentbutton.c: 112: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	113
;segmentbutton.c: 113: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	goto	l1449
	line	114
	
l1062:	
	goto	l1449
	line	115
	
l1066:	
	line	13
	goto	l1449
	
l1067:	
	line	116
	
l1068:	
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
