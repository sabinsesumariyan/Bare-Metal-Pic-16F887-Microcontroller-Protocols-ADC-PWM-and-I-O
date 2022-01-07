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
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"malldoor.as"
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
	global	main@temp
main@temp:	; 2 bytes @ 0x0
	ds	2
	global	main@count1
main@count1:	; 2 bytes @ 0x2
	ds	2
	global	main@count2
main@count2:	; 2 bytes @ 0x4
	ds	2
	global	main@x
main@x:	; 2 bytes @ 0x6
	ds	2
	global	main@y
main@y:	; 2 bytes @ 0x8
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
;; (0) _main                                                10    10      0     180
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
;;		line 3 in file "E:\KTU\Softwares\mplab\Malldoor\malldoor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  y               2    8[COMMON] int 
;;  x               2    6[COMMON] int 
;;  count2          2    4[COMMON] int 
;;  count1          2    2[COMMON] int 
;;  temp            2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
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
	file	"E:\KTU\Softwares\mplab\Malldoor\malldoor.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0+btemp+1]
	line	4
	
l1429:	
;malldoor.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
;malldoor.c: 5: PORTB=0X00;
	clrf	(6)	;volatile
	line	6
	
l1431:	
;malldoor.c: 6: TRISA=0X03;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	7
	
l1433:	
;malldoor.c: 7: TRISB=0X00;
	clrf	(134)^080h	;volatile
	line	8
	
l1435:	
;malldoor.c: 8: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	9
	
l1437:	
;malldoor.c: 9: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	12
	
l1439:	
;malldoor.c: 10: int count1;
;malldoor.c: 11: int count2;
;malldoor.c: 12: int temp=0;
	clrf	(main@temp)
	clrf	(main@temp+1)
	line	13
	
l1441:	
;malldoor.c: 13: int x=0;
	clrf	(main@x)
	clrf	(main@x+1)
	line	14
	
l1443:	
;malldoor.c: 14: int y=0;
	clrf	(main@y)
	clrf	(main@y+1)
	goto	l1445
	line	15
;malldoor.c: 15: while(1)
	
l1025:	
	line	17
	
l1445:	
;malldoor.c: 16: {
;malldoor.c: 17: if(RA0==1 && y<1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u11
	goto	u10
u11:
	goto	l1026
u10:
	
l1447:	
	movf	(main@y+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(01h)
	subwf	(main@y),w
u25:

	skipnc
	goto	u21
	goto	u20
u21:
	goto	l1026
u20:
	line	19
	
l1449:	
;malldoor.c: 18: {
;malldoor.c: 19: x++;
	movlw	low(01h)
	addwf	(main@x),f
	skipnc
	incf	(main@x+1),f
	movlw	high(01h)
	addwf	(main@x+1),f
	line	20
;malldoor.c: 20: if(x==1)
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l1031
u30:
	goto	l1455
	line	22
	
l1451:	
;malldoor.c: 21: {
;malldoor.c: 22: while(count1<30000)
	goto	l1455
	
l1029:	
	line	24
;malldoor.c: 23: {
;malldoor.c: 24: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	25
	
l1453:	
;malldoor.c: 25: count1++;
	movlw	low(01h)
	addwf	(main@count1),f
	skipnc
	incf	(main@count1+1),f
	movlw	high(01h)
	addwf	(main@count1+1),f
	goto	l1455
	line	26
	
l1028:	
	line	22
	
l1455:	
	movf	(main@count1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u45
	movlw	low(07530h)
	subwf	(main@count1),w
u45:

	skipc
	goto	u41
	goto	u40
u41:
	goto	l1029
u40:
	
l1030:	
	line	27
;malldoor.c: 26: }
;malldoor.c: 27: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	28
	
l1457:	
;malldoor.c: 28: count1=0;
	clrf	(main@count1)
	clrf	(main@count1+1)
	goto	l1031
	line	30
	
l1027:	
	line	31
;malldoor.c: 30: }
;malldoor.c: 31: while(RA0==1);
	goto	l1031
	
l1032:	
	
l1031:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u51
	goto	u50
u51:
	goto	l1031
u50:
	goto	l1026
	
l1033:	
	line	32
	
l1026:	
	line	33
;malldoor.c: 32: }
;malldoor.c: 33: if(RA0==1 && y>=1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u61
	goto	u60
u61:
	goto	l1034
u60:
	
l1459:	
	movf	(main@y+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u75
	movlw	low(01h)
	subwf	(main@y),w
u75:

	skipc
	goto	u71
	goto	u70
u71:
	goto	l1034
u70:
	line	35
	
l1461:	
;malldoor.c: 34: {
;malldoor.c: 35: y--;
	movlw	low(-1)
	addwf	(main@y),f
	skipnc
	incf	(main@y+1),f
	movlw	high(-1)
	addwf	(main@y+1),f
	line	36
	
l1463:	
;malldoor.c: 36: if(y==0)
	movf	((main@y+1)),w
	iorwf	((main@y)),w
	skipz
	goto	u81
	goto	u80
u81:
	goto	l1039
u80:
	goto	l1471
	line	38
	
l1465:	
;malldoor.c: 37: {
;malldoor.c: 38: while(count1<30000)
	goto	l1471
	
l1037:	
	line	40
	
l1467:	
;malldoor.c: 39: {
;malldoor.c: 40: count1++;
	movlw	low(01h)
	addwf	(main@count1),f
	skipnc
	incf	(main@count1+1),f
	movlw	high(01h)
	addwf	(main@count1+1),f
	line	41
	
l1469:	
;malldoor.c: 41: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	goto	l1471
	line	42
	
l1036:	
	line	38
	
l1471:	
	movf	(main@count1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u95
	movlw	low(07530h)
	subwf	(main@count1),w
u95:

	skipc
	goto	u91
	goto	u90
u91:
	goto	l1467
u90:
	goto	l1473
	
l1038:	
	line	43
	
l1473:	
;malldoor.c: 42: }
;malldoor.c: 43: count1=0;
	clrf	(main@count1)
	clrf	(main@count1+1)
	line	44
	
l1475:	
;malldoor.c: 44: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	goto	l1039
	line	45
	
l1035:	
	line	46
;malldoor.c: 45: }
;malldoor.c: 46: while(RA0==1);
	goto	l1039
	
l1040:	
	
l1039:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u101
	goto	u100
u101:
	goto	l1039
u100:
	goto	l1034
	
l1041:	
	line	47
	
l1034:	
	line	48
;malldoor.c: 47: }
;malldoor.c: 48: if(RA1==1 && x<1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7
	goto	u111
	goto	u110
u111:
	goto	l1042
u110:
	
l1477:	
	movf	(main@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u125
	movlw	low(01h)
	subwf	(main@x),w
u125:

	skipnc
	goto	u121
	goto	u120
u121:
	goto	l1042
u120:
	line	50
	
l1479:	
;malldoor.c: 49: {
;malldoor.c: 50: y++;
	movlw	low(01h)
	addwf	(main@y),f
	skipnc
	incf	(main@y+1),f
	movlw	high(01h)
	addwf	(main@y+1),f
	line	51
;malldoor.c: 51: if(y==1)
	movlw	01h
	xorwf	(main@y),w
	iorwf	(main@y+1),w
	skipz
	goto	u131
	goto	u130
u131:
	goto	l1047
u130:
	goto	l1485
	line	53
	
l1481:	
;malldoor.c: 52: {
;malldoor.c: 53: while(count2<30000)
	goto	l1485
	
l1045:	
	line	55
;malldoor.c: 54: {
;malldoor.c: 55: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	56
	
l1483:	
;malldoor.c: 56: count2++;
	movlw	low(01h)
	addwf	(main@count2),f
	skipnc
	incf	(main@count2+1),f
	movlw	high(01h)
	addwf	(main@count2+1),f
	goto	l1485
	line	57
	
l1044:	
	line	53
	
l1485:	
	movf	(main@count2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u145
	movlw	low(07530h)
	subwf	(main@count2),w
u145:

	skipc
	goto	u141
	goto	u140
u141:
	goto	l1045
u140:
	
l1046:	
	line	58
;malldoor.c: 57: }
;malldoor.c: 58: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	59
	
l1487:	
;malldoor.c: 59: count2=0;
	clrf	(main@count2)
	clrf	(main@count2+1)
	goto	l1047
	line	60
	
l1043:	
	line	61
;malldoor.c: 60: }
;malldoor.c: 61: while(RA1==1);
	goto	l1047
	
l1048:	
	
l1047:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u151
	goto	u150
u151:
	goto	l1047
u150:
	goto	l1042
	
l1049:	
	line	62
	
l1042:	
	line	63
;malldoor.c: 62: }
;malldoor.c: 63: if(RA1==1 && x>=1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7
	goto	u161
	goto	u160
u161:
	goto	l1445
u160:
	
l1489:	
	movf	(main@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u175
	movlw	low(01h)
	subwf	(main@x),w
u175:

	skipc
	goto	u171
	goto	u170
u171:
	goto	l1445
u170:
	line	65
	
l1491:	
;malldoor.c: 64: {
;malldoor.c: 65: x--;
	movlw	low(-1)
	addwf	(main@x),f
	skipnc
	incf	(main@x+1),f
	movlw	high(-1)
	addwf	(main@x+1),f
	line	66
	
l1493:	
;malldoor.c: 66: if(x==0)
	movf	((main@x+1)),w
	iorwf	((main@x)),w
	skipz
	goto	u181
	goto	u180
u181:
	goto	l1055
u180:
	goto	l1501
	line	68
	
l1495:	
;malldoor.c: 67: {
;malldoor.c: 68: while(count2<30000)
	goto	l1501
	
l1053:	
	line	70
	
l1497:	
;malldoor.c: 69: {
;malldoor.c: 70: count2++;
	movlw	low(01h)
	addwf	(main@count2),f
	skipnc
	incf	(main@count2+1),f
	movlw	high(01h)
	addwf	(main@count2+1),f
	line	71
	
l1499:	
;malldoor.c: 71: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	goto	l1501
	line	72
	
l1052:	
	line	68
	
l1501:	
	movf	(main@count2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u195
	movlw	low(07530h)
	subwf	(main@count2),w
u195:

	skipc
	goto	u191
	goto	u190
u191:
	goto	l1497
u190:
	
l1054:	
	line	73
;malldoor.c: 72: }
;malldoor.c: 73: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	74
	
l1503:	
;malldoor.c: 74: count2=0;
	clrf	(main@count2)
	clrf	(main@count2+1)
	goto	l1055
	line	75
	
l1051:	
	line	76
;malldoor.c: 75: }
;malldoor.c: 76: while(RA1==1);
	goto	l1055
	
l1056:	
	
l1055:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u201
	goto	u200
u201:
	goto	l1055
u200:
	goto	l1445
	
l1057:	
	goto	l1445
	line	77
	
l1050:	
	goto	l1445
	line	78
	
l1058:	
	line	15
	goto	l1445
	
l1059:	
	line	79
	
l1060:	
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
