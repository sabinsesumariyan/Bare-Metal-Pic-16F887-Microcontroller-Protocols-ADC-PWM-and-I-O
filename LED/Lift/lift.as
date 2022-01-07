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
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
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
	file	"lift.as"
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
;;		line 3 in file "E:\KTU\Softwares\mplab\Lift\lift.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2    0[COMMON] int 
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
	file	"E:\KTU\Softwares\mplab\Lift\lift.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+btemp+1]
	line	4
	
l1413:	
;lift.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
;lift.c: 5: PORTB=0X00;
	clrf	(6)	;volatile
	line	6
	
l1415:	
;lift.c: 6: TRISA=0X3F;
	movlw	(03Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	7
	
l1417:	
;lift.c: 7: TRISB=0X00;
	clrf	(134)^080h	;volatile
	line	8
	
l1419:	
;lift.c: 8: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	9
	
l1421:	
;lift.c: 9: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	10
	
l1423:	
;lift.c: 10: int x=0;
	clrf	(main@x)
	clrf	(main@x+1)
	goto	l1425
	line	11
;lift.c: 11: while(1)
	
l1025:	
	line	13
	
l1425:	
;lift.c: 12: {
;lift.c: 13: if(RA1==1 && x<1 && RB0==0 && RB1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7
	goto	u11
	goto	u10
u11:
	goto	l1437
u10:
	
l1427:	
	movf	(main@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(01h)
	subwf	(main@x),w
u25:

	skipnc
	goto	u21
	goto	u20
u21:
	goto	l1437
u20:
	
l1429:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u31
	goto	u30
u31:
	goto	l1437
u30:
	
l1431:	
	btfsc	(49/8),(49)&7
	goto	u41
	goto	u40
u41:
	goto	l1437
u40:
	line	15
	
l1433:	
;lift.c: 14: {
;lift.c: 15: x=1;
	movlw	low(01h)
	movwf	(main@x)
	movlw	high(01h)
	movwf	((main@x))+1
	line	16
	
l1435:	
;lift.c: 16: RB0=1;
	bsf	(48/8),(48)&7
	goto	l1437
	line	17
	
l1026:	
	line	18
	
l1437:	
;lift.c: 17: }
;lift.c: 18: if(RA4==1 && x==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(44/8),(44)&7
	goto	u51
	goto	u50
u51:
	goto	l1027
u50:
	
l1439:	
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u61
	goto	u60
u61:
	goto	l1027
u60:
	line	20
	
l1441:	
;lift.c: 19: {
;lift.c: 20: RB0=0;
	bcf	(48/8),(48)&7
	line	21
	
l1027:	
	line	22
;lift.c: 21: }
;lift.c: 22: if(RA2==1 && x<1 && RB0==0 &&RB1==0 || RA2==1 && x<2 && RB0==0 && RB1==0)
	btfss	(42/8),(42)&7
	goto	u71
	goto	u70
u71:
	goto	l1032
u70:
	
l1443:	
	movf	(main@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u85
	movlw	low(01h)
	subwf	(main@x),w
u85:

	skipnc
	goto	u81
	goto	u80
u81:
	goto	l1032
u80:
	
l1445:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u91
	goto	u90
u91:
	goto	l1032
u90:
	
l1447:	
	btfss	(49/8),(49)&7
	goto	u101
	goto	u100
u101:
	goto	l1455
u100:
	
l1032:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u111
	goto	u110
u111:
	goto	l1459
u110:
	
l1449:	
	movf	(main@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u125
	movlw	low(02h)
	subwf	(main@x),w
u125:

	skipnc
	goto	u121
	goto	u120
u121:
	goto	l1459
u120:
	
l1451:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u131
	goto	u130
u131:
	goto	l1459
u130:
	
l1453:	
	btfsc	(49/8),(49)&7
	goto	u141
	goto	u140
u141:
	goto	l1459
u140:
	goto	l1455
	
l1030:	
	line	24
	
l1455:	
;lift.c: 23: {
;lift.c: 24: x=2;
	movlw	low(02h)
	movwf	(main@x)
	movlw	high(02h)
	movwf	((main@x))+1
	line	25
	
l1457:	
;lift.c: 25: RB0=1;
	bsf	(48/8),(48)&7
	goto	l1459
	line	26
	
l1028:	
	line	27
	
l1459:	
;lift.c: 26: }
;lift.c: 27: if(RA5==1 && x==2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7
	goto	u151
	goto	u150
u151:
	goto	l1033
u150:
	
l1461:	
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u161
	goto	u160
u161:
	goto	l1033
u160:
	line	29
	
l1463:	
;lift.c: 28: {
;lift.c: 29: RB0=0;
	bcf	(48/8),(48)&7
	line	30
	
l1033:	
	line	32
;lift.c: 30: }
;lift.c: 32: if(RA1==1 && x>1 && RB1==0 && RB0==0)
	btfss	(41/8),(41)&7
	goto	u171
	goto	u170
u171:
	goto	l1475
u170:
	
l1465:	
	movf	(main@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u185
	movlw	low(02h)
	subwf	(main@x),w
u185:

	skipc
	goto	u181
	goto	u180
u181:
	goto	l1475
u180:
	
l1467:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u191
	goto	u190
u191:
	goto	l1475
u190:
	
l1469:	
	btfsc	(48/8),(48)&7
	goto	u201
	goto	u200
u201:
	goto	l1475
u200:
	line	34
	
l1471:	
;lift.c: 33: {
;lift.c: 34: RB1=1;
	bsf	(49/8),(49)&7
	line	35
	
l1473:	
;lift.c: 35: x=3;
	movlw	low(03h)
	movwf	(main@x)
	movlw	high(03h)
	movwf	((main@x))+1
	goto	l1475
	line	36
	
l1034:	
	line	37
	
l1475:	
;lift.c: 36: }
;lift.c: 37: if(RA4==1 && x==3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(44/8),(44)&7
	goto	u211
	goto	u210
u211:
	goto	l1483
u210:
	
l1477:	
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u221
	goto	u220
u221:
	goto	l1483
u220:
	line	39
	
l1479:	
;lift.c: 38: {
;lift.c: 39: RB1=0;
	bcf	(49/8),(49)&7
	line	40
	
l1481:	
;lift.c: 40: x=1;
	movlw	low(01h)
	movwf	(main@x)
	movlw	high(01h)
	movwf	((main@x))+1
	goto	l1483
	line	41
	
l1035:	
	line	42
	
l1483:	
;lift.c: 41: }
;lift.c: 42: if(RA0==1 && x>1 && RB1==0 &&RB0==0 || RA0==1 && x>0 && RB1==0 && RB0==0)
	btfss	(40/8),(40)&7
	goto	u231
	goto	u230
u231:
	goto	l1040
u230:
	
l1485:	
	movf	(main@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u245
	movlw	low(02h)
	subwf	(main@x),w
u245:

	skipc
	goto	u241
	goto	u240
u241:
	goto	l1040
u240:
	
l1487:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u251
	goto	u250
u251:
	goto	l1040
u250:
	
l1489:	
	btfss	(48/8),(48)&7
	goto	u261
	goto	u260
u261:
	goto	l1038
u260:
	
l1040:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u271
	goto	u270
u271:
	goto	l1499
u270:
	
l1491:	
	movf	(main@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u285
	movlw	low(01h)
	subwf	(main@x),w
u285:

	skipc
	goto	u281
	goto	u280
u281:
	goto	l1499
u280:
	
l1493:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7
	goto	u291
	goto	u290
u291:
	goto	l1499
u290:
	
l1495:	
	btfsc	(48/8),(48)&7
	goto	u301
	goto	u300
u301:
	goto	l1499
u300:
	
l1038:	
	line	44
;lift.c: 43: {
;lift.c: 44: RB1=1;
	bsf	(49/8),(49)&7
	line	45
	
l1497:	
;lift.c: 45: x=4;
	movlw	low(04h)
	movwf	(main@x)
	movlw	high(04h)
	movwf	((main@x))+1
	goto	l1499
	line	46
	
l1036:	
	line	47
	
l1499:	
;lift.c: 46: }
;lift.c: 47: if(RA3==1 && x==4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7
	goto	u311
	goto	u310
u311:
	goto	l1425
u310:
	
l1501:	
	movlw	04h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u321
	goto	u320
u321:
	goto	l1425
u320:
	line	49
	
l1503:	
;lift.c: 48: {
;lift.c: 49: RB1=0;
	bcf	(49/8),(49)&7
	line	50
	
l1505:	
;lift.c: 50: x=0;
	clrf	(main@x)
	clrf	(main@x+1)
	goto	l1425
	line	51
	
l1041:	
	goto	l1425
	line	52
	
l1042:	
	line	11
	goto	l1425
	
l1043:	
	line	53
	
l1044:	
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
