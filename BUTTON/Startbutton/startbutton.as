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
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"startbutton.as"
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
	ds	1
	global	main@j
main@j:	; 2 bytes @ 0x1
	ds	2
	global	main@x
main@x:	; 2 bytes @ 0x3
	ds	2
	global	main@arr
main@arr:	; 3 bytes @ 0x5
	ds	3
	global	main@count
main@count:	; 2 bytes @ 0x8
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0xA
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                12    12      0     330
;;                                              0 COMMON    12    12      0
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
;;COMMON               E      C       C       1       85.7%
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
;;		line 3 in file "E:\KTU\Softwares\mplab\Startbutton\startbutton.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  arr             3    5[COMMON] unsigned char [3]
;;  i               2   10[COMMON] int 
;;  count           2    8[COMMON] int 
;;  x               2    3[COMMON] int 
;;  j               2    1[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:        11       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Startbutton\startbutton.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	4
	
l1435:	
;startbutton.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
;startbutton.c: 5: PORTB=0X00;
	clrf	(6)	;volatile
	line	6
	
l1437:	
;startbutton.c: 6: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	7
	
l1439:	
;startbutton.c: 7: TRISB=0X00;
	clrf	(134)^080h	;volatile
	line	8
	
l1441:	
;startbutton.c: 8: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	9
	
l1443:	
;startbutton.c: 9: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	12
	
l1445:	
;startbutton.c: 10: char arr[3];
;startbutton.c: 11: int i;
;startbutton.c: 12: int j=0;
	clrf	(main@j)
	clrf	(main@j+1)
	line	13
	
l1447:	
;startbutton.c: 13: int x=1;
	movlw	low(01h)
	movwf	(main@x)
	movlw	high(01h)
	movwf	((main@x))+1
	line	14
;startbutton.c: 14: int count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l1449
	line	15
;startbutton.c: 15: while(1)
	
l1025:	
	line	17
	
l1449:	
;startbutton.c: 16: {
;startbutton.c: 17: if(x==1)
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l1469
u10:
	line	19
	
l1451:	
;startbutton.c: 18: {
;startbutton.c: 19: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u21
	goto	u20
u21:
	goto	l1457
u20:
	line	21
	
l1453:	
;startbutton.c: 20: {
;startbutton.c: 21: arr[i]='a';
	movlw	(061h)
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	line	22
;startbutton.c: 22: while(RA0==1);
	goto	l1028
	
l1029:	
	
l1028:	
	btfsc	(40/8),(40)&7
	goto	u31
	goto	u30
u31:
	goto	l1028
u30:
	goto	l1455
	
l1030:	
	line	23
	
l1455:	
;startbutton.c: 23: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l1457
	line	24
	
l1027:	
	line	25
	
l1457:	
;startbutton.c: 24: }
;startbutton.c: 25: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u41
	goto	u40
u41:
	goto	l1463
u40:
	line	27
	
l1459:	
;startbutton.c: 26: {
;startbutton.c: 27: arr[i]='b';
	movlw	(062h)
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	line	28
;startbutton.c: 28: while(RA1==1);
	goto	l1032
	
l1033:	
	
l1032:	
	btfsc	(41/8),(41)&7
	goto	u51
	goto	u50
u51:
	goto	l1032
u50:
	goto	l1461
	
l1034:	
	line	29
	
l1461:	
;startbutton.c: 29: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l1463
	line	30
	
l1031:	
	line	31
	
l1463:	
;startbutton.c: 30: }
;startbutton.c: 31: if(RA2==1 )
	btfss	(42/8),(42)&7
	goto	u61
	goto	u60
u61:
	goto	l1469
u60:
	line	33
	
l1465:	
;startbutton.c: 32: {
;startbutton.c: 33: arr[i]='c';
	movlw	(063h)
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	line	34
;startbutton.c: 34: while(RA2==1);
	goto	l1036
	
l1037:	
	
l1036:	
	btfsc	(42/8),(42)&7
	goto	u71
	goto	u70
u71:
	goto	l1036
u70:
	goto	l1467
	
l1038:	
	line	35
	
l1467:	
;startbutton.c: 35: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l1469
	line	36
	
l1035:	
	goto	l1469
	line	37
	
l1026:	
	line	38
	
l1469:	
;startbutton.c: 36: }
;startbutton.c: 37: }
;startbutton.c: 38: if(RA3==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7
	goto	u81
	goto	u80
u81:
	goto	l1039
u80:
	line	40
	
l1471:	
;startbutton.c: 39: {
;startbutton.c: 40: x=2;
	movlw	low(02h)
	movwf	(main@x)
	movlw	high(02h)
	movwf	((main@x))+1
	line	41
	
l1039:	
	line	42
;startbutton.c: 41: }
;startbutton.c: 42: if(x==2)
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u91
	goto	u90
u91:
	goto	l1449
u90:
	line	44
	
l1473:	
;startbutton.c: 43: {
;startbutton.c: 44: for(i=0;i<3;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l1475:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u105
	movlw	low(03h)
	subwf	(main@i),w
u105:

	skipc
	goto	u101
	goto	u100
u101:
	goto	l1479
u100:
	goto	l1449
	
l1477:	
	goto	l1449
	line	45
	
l1041:	
	line	46
	
l1479:	
;startbutton.c: 45: {
;startbutton.c: 46: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	47
	
l1481:	
;startbutton.c: 47: if(arr[i]=='a')
	movf	(main@i),w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	061h
	skipz
	goto	u111
	goto	u110
u111:
	goto	l1493
u110:
	goto	l1489
	line	49
	
l1483:	
;startbutton.c: 48: {
;startbutton.c: 49: while(count<30000)
	goto	l1489
	
l1045:	
	line	51
;startbutton.c: 50: {
;startbutton.c: 51: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	52
	
l1485:	
;startbutton.c: 52: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	53
;startbutton.c: 53: while(i==2);
	goto	l1487
	
l1047:	
	goto	l1487
	
l1046:	
	
l1487:	
	movlw	02h
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipnz
	goto	u121
	goto	u120
u121:
	goto	l1487
u120:
	goto	l1489
	
l1048:	
	goto	l1489
	line	54
	
l1044:	
	line	49
	
l1489:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u135
	movlw	low(07530h)
	subwf	(main@count),w
u135:

	skipc
	goto	u131
	goto	u130
u131:
	goto	l1045
u130:
	
l1049:	
	line	55
;startbutton.c: 54: }
;startbutton.c: 55: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	56
	
l1491:	
;startbutton.c: 56: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l1493
	line	57
	
l1043:	
	line	58
	
l1493:	
;startbutton.c: 57: }
;startbutton.c: 58: if(arr[i]=='b')
	movf	(main@i),w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	062h
	skipz
	goto	u141
	goto	u140
u141:
	goto	l1505
u140:
	goto	l1501
	line	60
	
l1495:	
;startbutton.c: 59: {
;startbutton.c: 60: while(count<30000)
	goto	l1501
	
l1052:	
	line	62
;startbutton.c: 61: {
;startbutton.c: 62: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	63
	
l1497:	
;startbutton.c: 63: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	64
;startbutton.c: 64: while(i==2);
	goto	l1499
	
l1054:	
	goto	l1499
	
l1053:	
	
l1499:	
	movlw	02h
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipnz
	goto	u151
	goto	u150
u151:
	goto	l1499
u150:
	goto	l1501
	
l1055:	
	goto	l1501
	line	65
	
l1051:	
	line	60
	
l1501:	
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
	goto	l1052
u160:
	
l1056:	
	line	66
;startbutton.c: 65: }
;startbutton.c: 66: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	67
	
l1503:	
;startbutton.c: 67: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l1505
	line	68
	
l1050:	
	line	69
	
l1505:	
;startbutton.c: 68: }
;startbutton.c: 69: if(arr[i]=='c')
	movf	(main@i),w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	063h
	skipz
	goto	u171
	goto	u170
u171:
	goto	l1517
u170:
	goto	l1513
	line	71
	
l1507:	
;startbutton.c: 70: {
;startbutton.c: 71: while(count<30000)
	goto	l1513
	
l1059:	
	line	73
;startbutton.c: 72: {
;startbutton.c: 73: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	74
	
l1509:	
;startbutton.c: 74: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	75
;startbutton.c: 75: while(i==2);
	goto	l1511
	
l1061:	
	goto	l1511
	
l1060:	
	
l1511:	
	movlw	02h
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipnz
	goto	u181
	goto	u180
u181:
	goto	l1511
u180:
	goto	l1513
	
l1062:	
	goto	l1513
	line	76
	
l1058:	
	line	71
	
l1513:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u195
	movlw	low(07530h)
	subwf	(main@count),w
u195:

	skipc
	goto	u191
	goto	u190
u191:
	goto	l1059
u190:
	
l1063:	
	line	77
;startbutton.c: 76: }
;startbutton.c: 77: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	78
	
l1515:	
;startbutton.c: 78: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l1517
	line	79
	
l1057:	
	line	44
	
l1517:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1519:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u205
	movlw	low(03h)
	subwf	(main@i),w
u205:

	skipc
	goto	u201
	goto	u200
u201:
	goto	l1479
u200:
	goto	l1449
	
l1042:	
	goto	l1449
	line	81
	
l1040:	
	goto	l1449
	line	82
	
l1064:	
	line	15
	goto	l1449
	
l1065:	
	line	83
	
l1066:	
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
