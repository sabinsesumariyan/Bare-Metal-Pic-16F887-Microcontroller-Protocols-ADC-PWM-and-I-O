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
	global	_PORTE
_PORTE	set	9
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"keypadled.as"
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
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0       0
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
;; (0) _main                                                 0     0      0       0
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
;;COMMON               E      0       0       1        0.0%
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
;;		line 3 in file "E:\KTU\Softwares\mplab\Keypadled\keypadled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Keypadled\keypadled.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	4
	
l1437:	
;keypadled.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
	
l1439:	
;keypadled.c: 5: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	6
	
l1441:	
;keypadled.c: 6: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	7
	
l1443:	
;keypadled.c: 7: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	8
	
l1445:	
;keypadled.c: 8: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	9
	
l1447:	
;keypadled.c: 9: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	10
	
l1449:	
;keypadled.c: 10: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	11
	
l1451:	
;keypadled.c: 11: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	12
	
l1453:	
;keypadled.c: 12: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	13
	
l1455:	
;keypadled.c: 13: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	14
	
l1457:	
;keypadled.c: 14: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	15
	
l1459:	
;keypadled.c: 15: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	goto	l1461
	line	16
;keypadled.c: 16: while(1)
	
l1025:	
	line	18
	
l1461:	
;keypadled.c: 17: {
;keypadled.c: 18: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	19
	
l1463:	
;keypadled.c: 19: RB1=0;
	bcf	(49/8),(49)&7
	line	20
	
l1465:	
;keypadled.c: 20: RB2=0;
	bcf	(50/8),(50)&7
	line	21
	
l1467:	
;keypadled.c: 21: RB3=0;
	bcf	(51/8),(51)&7
	line	22
	
l1469:	
;keypadled.c: 22: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u11
	goto	u10
u11:
	goto	l1495
u10:
	goto	l1027
	line	24
	
l1471:	
;keypadled.c: 23: {
;keypadled.c: 24: while(RA0==1);
	goto	l1027
	
l1028:	
	
l1027:	
	btfsc	(40/8),(40)&7
	goto	u21
	goto	u20
u21:
	goto	l1027
u20:
	goto	l1473
	
l1029:	
	line	25
	
l1473:	
;keypadled.c: 25: PORTC=0X06;
	movlw	(06h)
	movwf	(7)	;volatile
	line	26
	
l1475:	
;keypadled.c: 26: RD0=1;RD1=0;RD2=0;RD3=0;RD4=0;RD5=0;RD6=0;
	bsf	(64/8),(64)&7
	
l1477:	
	bcf	(65/8),(65)&7
	
l1479:	
	bcf	(66/8),(66)&7
	
l1481:	
	bcf	(67/8),(67)&7
	
l1483:	
	bcf	(68/8),(68)&7
	
l1485:	
	bcf	(69/8),(69)&7
	
l1487:	
	bcf	(70/8),(70)&7
	line	27
	
l1489:	
;keypadled.c: 27: RD7=0;RE0=0;RE1=0;
	bcf	(71/8),(71)&7
	
l1491:	
	bcf	(72/8),(72)&7
	
l1493:	
	bcf	(73/8),(73)&7
	goto	l1495
	line	28
	
l1026:	
	line	29
	
l1495:	
;keypadled.c: 28: }
;keypadled.c: 29: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u31
	goto	u30
u31:
	goto	l1521
u30:
	goto	l1031
	line	31
	
l1497:	
;keypadled.c: 30: {
;keypadled.c: 31: while(RA1==1);
	goto	l1031
	
l1032:	
	
l1031:	
	btfsc	(41/8),(41)&7
	goto	u41
	goto	u40
u41:
	goto	l1031
u40:
	goto	l1499
	
l1033:	
	line	32
	
l1499:	
;keypadled.c: 32: PORTC=0X5B;
	movlw	(05Bh)
	movwf	(7)	;volatile
	line	33
	
l1501:	
;keypadled.c: 33: RD0=1;RD1=1;RD2=0;RD3=0;RD4=0;RD5=0;RD6=0;
	bsf	(64/8),(64)&7
	
l1503:	
	bsf	(65/8),(65)&7
	
l1505:	
	bcf	(66/8),(66)&7
	
l1507:	
	bcf	(67/8),(67)&7
	
l1509:	
	bcf	(68/8),(68)&7
	
l1511:	
	bcf	(69/8),(69)&7
	
l1513:	
	bcf	(70/8),(70)&7
	line	34
	
l1515:	
;keypadled.c: 34: RD7=0;RE0=0;RE1=0;
	bcf	(71/8),(71)&7
	
l1517:	
	bcf	(72/8),(72)&7
	
l1519:	
	bcf	(73/8),(73)&7
	goto	l1521
	line	35
	
l1030:	
	line	36
	
l1521:	
;keypadled.c: 35: }
;keypadled.c: 36: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u51
	goto	u50
u51:
	goto	l1547
u50:
	goto	l1035
	line	38
	
l1523:	
;keypadled.c: 37: {
;keypadled.c: 38: while(RA2==1);
	goto	l1035
	
l1036:	
	
l1035:	
	btfsc	(42/8),(42)&7
	goto	u61
	goto	u60
u61:
	goto	l1035
u60:
	goto	l1525
	
l1037:	
	line	39
	
l1525:	
;keypadled.c: 39: PORTC=0X4F;
	movlw	(04Fh)
	movwf	(7)	;volatile
	line	40
	
l1527:	
;keypadled.c: 40: RD0=1;RD1=1;RD2=1;RD3=0;RD4=0;RD5=0;RD6=0;
	bsf	(64/8),(64)&7
	
l1529:	
	bsf	(65/8),(65)&7
	
l1531:	
	bsf	(66/8),(66)&7
	
l1533:	
	bcf	(67/8),(67)&7
	
l1535:	
	bcf	(68/8),(68)&7
	
l1537:	
	bcf	(69/8),(69)&7
	
l1539:	
	bcf	(70/8),(70)&7
	line	41
	
l1541:	
;keypadled.c: 41: RD7=0;RE0=0;RE1=0;
	bcf	(71/8),(71)&7
	
l1543:	
	bcf	(72/8),(72)&7
	
l1545:	
	bcf	(73/8),(73)&7
	goto	l1547
	line	42
	
l1034:	
	line	43
	
l1547:	
;keypadled.c: 42: }
;keypadled.c: 43: RB0=0;
	bcf	(48/8),(48)&7
	line	44
	
l1549:	
;keypadled.c: 44: RB1=1;
	bsf	(49/8),(49)&7
	line	45
	
l1551:	
;keypadled.c: 45: RB2=0;
	bcf	(50/8),(50)&7
	line	46
	
l1553:	
;keypadled.c: 46: RB3=0;
	bcf	(51/8),(51)&7
	line	47
	
l1555:	
;keypadled.c: 47: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u71
	goto	u70
u71:
	goto	l1581
u70:
	goto	l1039
	line	49
	
l1557:	
;keypadled.c: 48: {
;keypadled.c: 49: while(RA0==1);
	goto	l1039
	
l1040:	
	
l1039:	
	btfsc	(40/8),(40)&7
	goto	u81
	goto	u80
u81:
	goto	l1039
u80:
	goto	l1559
	
l1041:	
	line	50
	
l1559:	
;keypadled.c: 50: PORTC=0X66;
	movlw	(066h)
	movwf	(7)	;volatile
	line	51
	
l1561:	
;keypadled.c: 51: RD0=1;RD1=1;RD2=1;RD3=1;RD4=0;RD5=0;RD6=0;
	bsf	(64/8),(64)&7
	
l1563:	
	bsf	(65/8),(65)&7
	
l1565:	
	bsf	(66/8),(66)&7
	
l1567:	
	bsf	(67/8),(67)&7
	
l1569:	
	bcf	(68/8),(68)&7
	
l1571:	
	bcf	(69/8),(69)&7
	
l1573:	
	bcf	(70/8),(70)&7
	line	52
	
l1575:	
;keypadled.c: 52: RD7=0;RE0=0;RE1=0;
	bcf	(71/8),(71)&7
	
l1577:	
	bcf	(72/8),(72)&7
	
l1579:	
	bcf	(73/8),(73)&7
	goto	l1581
	line	53
	
l1038:	
	line	54
	
l1581:	
;keypadled.c: 53: }
;keypadled.c: 54: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u91
	goto	u90
u91:
	goto	l1607
u90:
	goto	l1043
	line	56
	
l1583:	
;keypadled.c: 55: {
;keypadled.c: 56: while(RA1==1);
	goto	l1043
	
l1044:	
	
l1043:	
	btfsc	(41/8),(41)&7
	goto	u101
	goto	u100
u101:
	goto	l1043
u100:
	goto	l1585
	
l1045:	
	line	57
	
l1585:	
;keypadled.c: 57: PORTC=0X6D;
	movlw	(06Dh)
	movwf	(7)	;volatile
	line	58
	
l1587:	
;keypadled.c: 58: RD0=1;RD1=1;RD2=1;RD3=1;RD4=1;RD5=0;RD6=0;
	bsf	(64/8),(64)&7
	
l1589:	
	bsf	(65/8),(65)&7
	
l1591:	
	bsf	(66/8),(66)&7
	
l1593:	
	bsf	(67/8),(67)&7
	
l1595:	
	bsf	(68/8),(68)&7
	
l1597:	
	bcf	(69/8),(69)&7
	
l1599:	
	bcf	(70/8),(70)&7
	line	59
	
l1601:	
;keypadled.c: 59: RD7=0;RE0=0;RE1=0;
	bcf	(71/8),(71)&7
	
l1603:	
	bcf	(72/8),(72)&7
	
l1605:	
	bcf	(73/8),(73)&7
	goto	l1607
	line	60
	
l1042:	
	line	61
	
l1607:	
;keypadled.c: 60: }
;keypadled.c: 61: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u111
	goto	u110
u111:
	goto	l1633
u110:
	goto	l1047
	line	63
	
l1609:	
;keypadled.c: 62: {
;keypadled.c: 63: while(RA2==1);
	goto	l1047
	
l1048:	
	
l1047:	
	btfsc	(42/8),(42)&7
	goto	u121
	goto	u120
u121:
	goto	l1047
u120:
	goto	l1611
	
l1049:	
	line	64
	
l1611:	
;keypadled.c: 64: PORTC=0X7C;
	movlw	(07Ch)
	movwf	(7)	;volatile
	line	65
	
l1613:	
;keypadled.c: 65: RD0=1;RD1=1;RD2=1;RD3=1;RD4=1;RD5=1;RD6=0;
	bsf	(64/8),(64)&7
	
l1615:	
	bsf	(65/8),(65)&7
	
l1617:	
	bsf	(66/8),(66)&7
	
l1619:	
	bsf	(67/8),(67)&7
	
l1621:	
	bsf	(68/8),(68)&7
	
l1623:	
	bsf	(69/8),(69)&7
	
l1625:	
	bcf	(70/8),(70)&7
	line	66
	
l1627:	
;keypadled.c: 66: RD7=0;RE0=0;RE1=0;
	bcf	(71/8),(71)&7
	
l1629:	
	bcf	(72/8),(72)&7
	
l1631:	
	bcf	(73/8),(73)&7
	goto	l1633
	line	67
	
l1046:	
	line	68
	
l1633:	
;keypadled.c: 67: }
;keypadled.c: 68: RB0=0;
	bcf	(48/8),(48)&7
	line	69
	
l1635:	
;keypadled.c: 69: RB1=0;
	bcf	(49/8),(49)&7
	line	70
	
l1637:	
;keypadled.c: 70: RB2=1;
	bsf	(50/8),(50)&7
	line	71
	
l1639:	
;keypadled.c: 71: RB3=0;
	bcf	(51/8),(51)&7
	line	72
	
l1641:	
;keypadled.c: 72: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u131
	goto	u130
u131:
	goto	l1667
u130:
	goto	l1051
	line	74
	
l1643:	
;keypadled.c: 73: {
;keypadled.c: 74: while(RA0==1);
	goto	l1051
	
l1052:	
	
l1051:	
	btfsc	(40/8),(40)&7
	goto	u141
	goto	u140
u141:
	goto	l1051
u140:
	goto	l1645
	
l1053:	
	line	75
	
l1645:	
;keypadled.c: 75: PORTC=0X07;
	movlw	(07h)
	movwf	(7)	;volatile
	line	76
	
l1647:	
;keypadled.c: 76: RD0=1;RD1=1;RD2=1;RD3=1;RD4=1;RD5=1;RD6=1;
	bsf	(64/8),(64)&7
	
l1649:	
	bsf	(65/8),(65)&7
	
l1651:	
	bsf	(66/8),(66)&7
	
l1653:	
	bsf	(67/8),(67)&7
	
l1655:	
	bsf	(68/8),(68)&7
	
l1657:	
	bsf	(69/8),(69)&7
	
l1659:	
	bsf	(70/8),(70)&7
	line	77
	
l1661:	
;keypadled.c: 77: RD7=0;RE0=0;RE1=0;
	bcf	(71/8),(71)&7
	
l1663:	
	bcf	(72/8),(72)&7
	
l1665:	
	bcf	(73/8),(73)&7
	goto	l1667
	line	78
	
l1050:	
	line	79
	
l1667:	
;keypadled.c: 78: }
;keypadled.c: 79: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u151
	goto	u150
u151:
	goto	l1693
u150:
	goto	l1055
	line	81
	
l1669:	
;keypadled.c: 80: {
;keypadled.c: 81: while(RA1==1);
	goto	l1055
	
l1056:	
	
l1055:	
	btfsc	(41/8),(41)&7
	goto	u161
	goto	u160
u161:
	goto	l1055
u160:
	goto	l1671
	
l1057:	
	line	82
	
l1671:	
;keypadled.c: 82: PORTC=0XFF;
	movlw	(0FFh)
	movwf	(7)	;volatile
	line	83
	
l1673:	
;keypadled.c: 83: RD0=1;RD1=1;RD2=1;RD3=1;RD4=1;RD5=1;RD6=1;
	bsf	(64/8),(64)&7
	
l1675:	
	bsf	(65/8),(65)&7
	
l1677:	
	bsf	(66/8),(66)&7
	
l1679:	
	bsf	(67/8),(67)&7
	
l1681:	
	bsf	(68/8),(68)&7
	
l1683:	
	bsf	(69/8),(69)&7
	
l1685:	
	bsf	(70/8),(70)&7
	line	84
	
l1687:	
;keypadled.c: 84: RD7=1;RE0=0;RE1=0;
	bsf	(71/8),(71)&7
	
l1689:	
	bcf	(72/8),(72)&7
	
l1691:	
	bcf	(73/8),(73)&7
	goto	l1693
	line	85
	
l1054:	
	line	86
	
l1693:	
;keypadled.c: 85: }
;keypadled.c: 86: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u171
	goto	u170
u171:
	goto	l1717
u170:
	goto	l1059
	line	88
	
l1695:	
;keypadled.c: 87: {
;keypadled.c: 88: while(RA2==1);
	goto	l1059
	
l1060:	
	
l1059:	
	btfsc	(42/8),(42)&7
	goto	u181
	goto	u180
u181:
	goto	l1059
u180:
	goto	l1697
	
l1061:	
	line	89
	
l1697:	
;keypadled.c: 89: PORTC=0XE7;
	movlw	(0E7h)
	movwf	(7)	;volatile
	line	90
	
l1699:	
;keypadled.c: 90: RD0=1;RD1=1;RD2=1;RD3=1;RD4=1;RD5=1;RD6=1;
	bsf	(64/8),(64)&7
	
l1701:	
	bsf	(65/8),(65)&7
	
l1703:	
	bsf	(66/8),(66)&7
	
l1705:	
	bsf	(67/8),(67)&7
	
l1707:	
	bsf	(68/8),(68)&7
	
l1709:	
	bsf	(69/8),(69)&7
	
l1711:	
	bsf	(70/8),(70)&7
	line	91
	
l1713:	
;keypadled.c: 91: RD7=1;RE0=1;
	bsf	(71/8),(71)&7
	
l1715:	
	bsf	(72/8),(72)&7
	goto	l1717
	line	92
	
l1058:	
	line	93
	
l1717:	
;keypadled.c: 92: }
;keypadled.c: 93: RB0=0;
	bcf	(48/8),(48)&7
	line	94
	
l1719:	
;keypadled.c: 94: RB1=0;
	bcf	(49/8),(49)&7
	line	95
	
l1721:	
;keypadled.c: 95: RB2=0;
	bcf	(50/8),(50)&7
	line	96
	
l1723:	
;keypadled.c: 96: RB3=1;
	bsf	(51/8),(51)&7
	line	97
	
l1725:	
;keypadled.c: 97: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u191
	goto	u190
u191:
	goto	l1461
u190:
	goto	l1063
	line	99
	
l1727:	
;keypadled.c: 98: {
;keypadled.c: 99: while(RA1==1);
	goto	l1063
	
l1064:	
	
l1063:	
	btfsc	(41/8),(41)&7
	goto	u201
	goto	u200
u201:
	goto	l1063
u200:
	goto	l1729
	
l1065:	
	line	100
	
l1729:	
;keypadled.c: 100: PORTC=0XBF;
	movlw	(0BFh)
	movwf	(7)	;volatile
	line	101
	
l1731:	
;keypadled.c: 101: RD0=0;RD1=0;RD2=0;RD3=0;RD4=0;RD5=0;RD6=0;
	bcf	(64/8),(64)&7
	
l1733:	
	bcf	(65/8),(65)&7
	
l1735:	
	bcf	(66/8),(66)&7
	
l1737:	
	bcf	(67/8),(67)&7
	
l1739:	
	bcf	(68/8),(68)&7
	
l1741:	
	bcf	(69/8),(69)&7
	
l1743:	
	bcf	(70/8),(70)&7
	line	102
	
l1745:	
;keypadled.c: 102: RD7=0;RE0=0;RE1=0;
	bcf	(71/8),(71)&7
	
l1747:	
	bcf	(72/8),(72)&7
	
l1749:	
	bcf	(73/8),(73)&7
	goto	l1461
	line	103
	
l1062:	
	goto	l1461
	line	104
	
l1066:	
	line	16
	goto	l1461
	
l1067:	
	line	105
	
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
