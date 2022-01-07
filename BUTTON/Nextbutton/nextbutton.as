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
	file	"nextbutton.as"
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
	global	main@m
main@m:	; 2 bytes @ 0x0
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x2
	ds	2
	global	main@x
main@x:	; 4 bytes @ 0x4
	ds	4
	global	main@count
main@count:	; 2 bytes @ 0x8
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
;; (0) _main                                                10    10      0     165
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
;;		line 3 in file "E:\KTU\Softwares\mplab\Nextbutton\nextbutton.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               4    4[COMMON] int [2]
;;  count           2    8[COMMON] int 
;;  i               2    2[COMMON] int 
;;  m               2    0[COMMON] int 
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
	file	"E:\KTU\Softwares\mplab\Nextbutton\nextbutton.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+btemp+1]
	line	4
	
l1424:	
;nextbutton.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
;nextbutton.c: 5: PORTB=0X00;
	clrf	(6)	;volatile
	line	6
;nextbutton.c: 6: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	7
	
l1426:	
;nextbutton.c: 7: TRISB=0X03;
	movlw	(03h)
	movwf	(134)^080h	;volatile
	line	8
	
l1428:	
;nextbutton.c: 8: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	9
	
l1430:	
;nextbutton.c: 9: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	11
	
l1432:	
;nextbutton.c: 10: int x[2];
;nextbutton.c: 11: int count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	12
;nextbutton.c: 12: int m=1;
	movlw	low(01h)
	movwf	(main@m)
	movlw	high(01h)
	movwf	((main@m))+1
	line	14
;nextbutton.c: 13: int i;
;nextbutton.c: 14: while(1)
	
l1025:	
	line	16
;nextbutton.c: 15: {
;nextbutton.c: 16: if(m==1)
	movlw	01h
	xorwf	(main@m),w
	iorwf	(main@m+1),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l1454
u10:
	line	18
	
l1434:	
;nextbutton.c: 17: {
;nextbutton.c: 18: if(RB0==1 || RB1==1 )
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u21
	goto	u20
u21:
	goto	l1438
u20:
	
l1436:	
	btfss	(49/8),(49)&7
	goto	u31
	goto	u30
u31:
	goto	l1442
u30:
	goto	l1438
	
l1029:	
	line	20
	
l1438:	
;nextbutton.c: 19: {
;nextbutton.c: 20: x[0]=1;
	movlw	low(01h)
	movwf	(main@x)
	movlw	high(01h)
	movwf	((main@x))+1
	line	21
;nextbutton.c: 21: while(RB0==1 || RB1==1);
	goto	l1030
	
l1031:	
	
l1030:	
	btfsc	(48/8),(48)&7
	goto	u41
	goto	u40
u41:
	goto	l1030
u40:
	
l1440:	
	btfsc	(49/8),(49)&7
	goto	u51
	goto	u50
u51:
	goto	l1030
u50:
	goto	l1442
	
l1032:	
	goto	l1442
	line	22
	
l1027:	
	line	23
	
l1442:	
;nextbutton.c: 22: }
;nextbutton.c: 23: if(x[0]==1)
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u61
	goto	u60
u61:
	goto	l1454
u60:
	line	25
	
l1444:	
;nextbutton.c: 24: {
;nextbutton.c: 25: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	26
;nextbutton.c: 26: while(count<30000)
	goto	l1448
	
l1035:	
	line	28
;nextbutton.c: 27: {
;nextbutton.c: 28: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	29
	
l1446:	
;nextbutton.c: 29: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l1448
	line	30
	
l1034:	
	line	26
	
l1448:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u75
	movlw	low(07530h)
	subwf	(main@count),w
u75:

	skipc
	goto	u71
	goto	u70
u71:
	goto	l1035
u70:
	
l1036:	
	line	31
;nextbutton.c: 30: }
;nextbutton.c: 31: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	32
	
l1450:	
;nextbutton.c: 32: m=2;
	movlw	low(02h)
	movwf	(main@m)
	movlw	high(02h)
	movwf	((main@m))+1
	line	33
	
l1452:	
;nextbutton.c: 33: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l1454
	line	34
	
l1033:	
	goto	l1454
	line	35
	
l1026:	
	line	36
	
l1454:	
;nextbutton.c: 34: }
;nextbutton.c: 35: }
;nextbutton.c: 36: if(m==2)
	movlw	02h
	xorwf	(main@m),w
	iorwf	(main@m+1),w
	skipz
	goto	u81
	goto	u80
u81:
	goto	l1025
u80:
	line	38
	
l1456:	
;nextbutton.c: 37: {
;nextbutton.c: 38: if(RB0==1 || RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u91
	goto	u90
u91:
	goto	l1460
u90:
	
l1458:	
	btfss	(49/8),(49)&7
	goto	u101
	goto	u100
u101:
	goto	l1464
u100:
	goto	l1460
	
l1040:	
	line	40
	
l1460:	
;nextbutton.c: 39: {
;nextbutton.c: 40: x[1]=2;
	movlw	low(02h)
	movwf	0+(main@x)+02h
	movlw	high(02h)
	movwf	(0+(main@x)+02h)+1
	line	41
;nextbutton.c: 41: while(RB0==1 || RB1==1);
	goto	l1041
	
l1042:	
	
l1041:	
	btfsc	(48/8),(48)&7
	goto	u111
	goto	u110
u111:
	goto	l1041
u110:
	
l1462:	
	btfsc	(49/8),(49)&7
	goto	u121
	goto	u120
u121:
	goto	l1041
u120:
	goto	l1464
	
l1043:	
	goto	l1464
	line	42
	
l1038:	
	line	43
	
l1464:	
;nextbutton.c: 42: }
;nextbutton.c: 43: if(x[1]==2)
	movlw	02h
	xorwf	0+(main@x)+02h,w
	iorwf	1+(main@x)+02h,w
	skipz
	goto	u131
	goto	u130
u131:
	goto	l1025
u130:
	line	45
	
l1466:	
;nextbutton.c: 44: {
;nextbutton.c: 45: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	46
;nextbutton.c: 46: for(i=0;i<2;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l1468:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u145
	movlw	low(02h)
	subwf	(main@i),w
u145:

	skipc
	goto	u141
	goto	u140
u141:
	goto	l1474
u140:
	goto	l1484
	
l1470:	
	goto	l1484
	line	47
	
l1045:	
	line	48
;nextbutton.c: 47: {
;nextbutton.c: 48: while(count<30000)
	goto	l1474
	
l1048:	
	line	50
;nextbutton.c: 49: {
;nextbutton.c: 50: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	51
	
l1472:	
;nextbutton.c: 51: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l1474
	line	52
	
l1047:	
	line	48
	
l1474:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u155
	movlw	low(07530h)
	subwf	(main@count),w
u155:

	skipc
	goto	u151
	goto	u150
u151:
	goto	l1048
u150:
	goto	l1478
	
l1049:	
	line	53
;nextbutton.c: 52: }
;nextbutton.c: 53: while(count>0)
	goto	l1478
	
l1051:	
	line	55
;nextbutton.c: 54: {
;nextbutton.c: 55: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	56
	
l1476:	
;nextbutton.c: 56: count--;
	movlw	low(-1)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(-1)
	addwf	(main@count+1),f
	goto	l1478
	line	57
	
l1050:	
	line	53
	
l1478:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u165
	movlw	low(01h)
	subwf	(main@count),w
u165:

	skipnc
	goto	u161
	goto	u160
u161:
	goto	l1051
u160:
	goto	l1480
	
l1052:	
	line	46
	
l1480:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1482:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u175
	movlw	low(02h)
	subwf	(main@i),w
u175:

	skipc
	goto	u171
	goto	u170
u171:
	goto	l1474
u170:
	goto	l1484
	
l1046:	
	line	59
	
l1484:	
;nextbutton.c: 57: }
;nextbutton.c: 58: }
;nextbutton.c: 59: x[1]=0;
	clrf	0+(main@x)+02h
	clrf	1+(main@x)+02h
	line	60
;nextbutton.c: 60: x[0]=0;
	clrf	(main@x)
	clrf	(main@x+1)
	goto	l1025
	line	61
	
l1044:	
	goto	l1025
	line	62
	
l1037:	
	goto	l1025
	line	63
	
l1053:	
	line	14
	goto	l1025
	
l1054:	
	line	64
	
l1055:	
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
