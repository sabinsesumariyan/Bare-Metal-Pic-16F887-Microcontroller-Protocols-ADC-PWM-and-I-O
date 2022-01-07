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
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
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
	file	"keypad.as"
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
;;		line 3 in file "E:\KTU\Softwares\mplab\Keypad\keypad.c"
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
	file	"E:\KTU\Softwares\mplab\Keypad\keypad.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	4
	
l1437:	
;keypad.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
	
l1439:	
;keypad.c: 5: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	6
	
l1441:	
;keypad.c: 6: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	7
	
l1443:	
;keypad.c: 7: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	8
	
l1445:	
;keypad.c: 8: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	9
	
l1447:	
;keypad.c: 9: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	10
	
l1449:	
;keypad.c: 10: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	11
	
l1451:	
;keypad.c: 11: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	goto	l1453
	line	12
;keypad.c: 12: while(1)
	
l1025:	
	line	14
	
l1453:	
;keypad.c: 13: {
;keypad.c: 14: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	15
	
l1455:	
;keypad.c: 15: RB1=0;
	bcf	(49/8),(49)&7
	line	16
	
l1457:	
;keypad.c: 16: RB2=0;
	bcf	(50/8),(50)&7
	line	17
	
l1459:	
;keypad.c: 17: RB3=0;
	bcf	(51/8),(51)&7
	line	18
	
l1461:	
;keypad.c: 18: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u11
	goto	u10
u11:
	goto	l1467
u10:
	goto	l1027
	line	20
	
l1463:	
;keypad.c: 19: {
;keypad.c: 20: while(RA0==1);
	goto	l1027
	
l1028:	
	
l1027:	
	btfsc	(40/8),(40)&7
	goto	u21
	goto	u20
u21:
	goto	l1027
u20:
	goto	l1465
	
l1029:	
	line	21
	
l1465:	
;keypad.c: 21: PORTC=0X06;
	movlw	(06h)
	movwf	(7)	;volatile
	goto	l1467
	line	22
	
l1026:	
	line	23
	
l1467:	
;keypad.c: 22: }
;keypad.c: 23: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u31
	goto	u30
u31:
	goto	l1473
u30:
	goto	l1031
	line	25
	
l1469:	
;keypad.c: 24: {
;keypad.c: 25: while(RA1==1);
	goto	l1031
	
l1032:	
	
l1031:	
	btfsc	(41/8),(41)&7
	goto	u41
	goto	u40
u41:
	goto	l1031
u40:
	goto	l1471
	
l1033:	
	line	26
	
l1471:	
;keypad.c: 26: PORTC=0X5B;
	movlw	(05Bh)
	movwf	(7)	;volatile
	goto	l1473
	line	27
	
l1030:	
	line	28
	
l1473:	
;keypad.c: 27: }
;keypad.c: 28: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u51
	goto	u50
u51:
	goto	l1479
u50:
	goto	l1035
	line	30
	
l1475:	
;keypad.c: 29: {
;keypad.c: 30: while(RA2==1);
	goto	l1035
	
l1036:	
	
l1035:	
	btfsc	(42/8),(42)&7
	goto	u61
	goto	u60
u61:
	goto	l1035
u60:
	goto	l1477
	
l1037:	
	line	31
	
l1477:	
;keypad.c: 31: PORTC=0X4F;
	movlw	(04Fh)
	movwf	(7)	;volatile
	goto	l1479
	line	32
	
l1034:	
	line	33
	
l1479:	
;keypad.c: 32: }
;keypad.c: 33: RB0=0;
	bcf	(48/8),(48)&7
	line	34
	
l1481:	
;keypad.c: 34: RB1=1;
	bsf	(49/8),(49)&7
	line	35
	
l1483:	
;keypad.c: 35: RB2=0;
	bcf	(50/8),(50)&7
	line	36
	
l1485:	
;keypad.c: 36: RB3=0;
	bcf	(51/8),(51)&7
	line	37
	
l1487:	
;keypad.c: 37: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u71
	goto	u70
u71:
	goto	l1493
u70:
	goto	l1039
	line	39
	
l1489:	
;keypad.c: 38: {
;keypad.c: 39: while(RA0==1);
	goto	l1039
	
l1040:	
	
l1039:	
	btfsc	(40/8),(40)&7
	goto	u81
	goto	u80
u81:
	goto	l1039
u80:
	goto	l1491
	
l1041:	
	line	40
	
l1491:	
;keypad.c: 40: PORTC=0X66;
	movlw	(066h)
	movwf	(7)	;volatile
	goto	l1493
	line	41
	
l1038:	
	line	42
	
l1493:	
;keypad.c: 41: }
;keypad.c: 42: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u91
	goto	u90
u91:
	goto	l1499
u90:
	goto	l1043
	line	44
	
l1495:	
;keypad.c: 43: {
;keypad.c: 44: while(RA1==1);
	goto	l1043
	
l1044:	
	
l1043:	
	btfsc	(41/8),(41)&7
	goto	u101
	goto	u100
u101:
	goto	l1043
u100:
	goto	l1497
	
l1045:	
	line	45
	
l1497:	
;keypad.c: 45: PORTC=0X6D;
	movlw	(06Dh)
	movwf	(7)	;volatile
	goto	l1499
	line	46
	
l1042:	
	line	47
	
l1499:	
;keypad.c: 46: }
;keypad.c: 47: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u111
	goto	u110
u111:
	goto	l1505
u110:
	goto	l1047
	line	49
	
l1501:	
;keypad.c: 48: {
;keypad.c: 49: while(RA2==1);
	goto	l1047
	
l1048:	
	
l1047:	
	btfsc	(42/8),(42)&7
	goto	u121
	goto	u120
u121:
	goto	l1047
u120:
	goto	l1503
	
l1049:	
	line	50
	
l1503:	
;keypad.c: 50: PORTC=0X7C;
	movlw	(07Ch)
	movwf	(7)	;volatile
	goto	l1505
	line	51
	
l1046:	
	line	52
	
l1505:	
;keypad.c: 51: }
;keypad.c: 52: RB0=0;
	bcf	(48/8),(48)&7
	line	53
	
l1507:	
;keypad.c: 53: RB1=0;
	bcf	(49/8),(49)&7
	line	54
	
l1509:	
;keypad.c: 54: RB2=1;
	bsf	(50/8),(50)&7
	line	55
	
l1511:	
;keypad.c: 55: RB3=0;
	bcf	(51/8),(51)&7
	line	56
	
l1513:	
;keypad.c: 56: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u131
	goto	u130
u131:
	goto	l1519
u130:
	goto	l1051
	line	58
	
l1515:	
;keypad.c: 57: {
;keypad.c: 58: while(RA0==1);
	goto	l1051
	
l1052:	
	
l1051:	
	btfsc	(40/8),(40)&7
	goto	u141
	goto	u140
u141:
	goto	l1051
u140:
	goto	l1517
	
l1053:	
	line	59
	
l1517:	
;keypad.c: 59: PORTC=0X07;
	movlw	(07h)
	movwf	(7)	;volatile
	goto	l1519
	line	60
	
l1050:	
	line	61
	
l1519:	
;keypad.c: 60: }
;keypad.c: 61: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u151
	goto	u150
u151:
	goto	l1525
u150:
	goto	l1055
	line	63
	
l1521:	
;keypad.c: 62: {
;keypad.c: 63: while(RA1==1);
	goto	l1055
	
l1056:	
	
l1055:	
	btfsc	(41/8),(41)&7
	goto	u161
	goto	u160
u161:
	goto	l1055
u160:
	goto	l1523
	
l1057:	
	line	64
	
l1523:	
;keypad.c: 64: PORTC=0XFF;
	movlw	(0FFh)
	movwf	(7)	;volatile
	goto	l1525
	line	65
	
l1054:	
	line	66
	
l1525:	
;keypad.c: 65: }
;keypad.c: 66: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u171
	goto	u170
u171:
	goto	l1531
u170:
	goto	l1059
	line	68
	
l1527:	
;keypad.c: 67: {
;keypad.c: 68: while(RA2==1);
	goto	l1059
	
l1060:	
	
l1059:	
	btfsc	(42/8),(42)&7
	goto	u181
	goto	u180
u181:
	goto	l1059
u180:
	goto	l1529
	
l1061:	
	line	69
	
l1529:	
;keypad.c: 69: PORTC=0XE7;
	movlw	(0E7h)
	movwf	(7)	;volatile
	goto	l1531
	line	70
	
l1058:	
	line	71
	
l1531:	
;keypad.c: 70: }
;keypad.c: 71: RB0=0;
	bcf	(48/8),(48)&7
	line	72
	
l1533:	
;keypad.c: 72: RB1=0;
	bcf	(49/8),(49)&7
	line	73
	
l1535:	
;keypad.c: 73: RB2=0;
	bcf	(50/8),(50)&7
	line	74
	
l1537:	
;keypad.c: 74: RB3=1;
	bsf	(51/8),(51)&7
	line	75
	
l1539:	
;keypad.c: 75: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u191
	goto	u190
u191:
	goto	l1453
u190:
	goto	l1063
	line	77
	
l1541:	
;keypad.c: 76: {
;keypad.c: 77: while(RA1==1);
	goto	l1063
	
l1064:	
	
l1063:	
	btfsc	(41/8),(41)&7
	goto	u201
	goto	u200
u201:
	goto	l1063
u200:
	goto	l1543
	
l1065:	
	line	78
	
l1543:	
;keypad.c: 78: PORTC=0XBF;
	movlw	(0BFh)
	movwf	(7)	;volatile
	goto	l1453
	line	79
	
l1062:	
	goto	l1453
	line	80
	
l1066:	
	line	12
	goto	l1453
	
l1067:	
	line	81
	
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
