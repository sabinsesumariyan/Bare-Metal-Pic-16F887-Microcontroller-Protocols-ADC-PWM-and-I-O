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
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"singlebuttonsegment.as"
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
;;		line 3 in file "E:\KTU\Softwares\mplab\Siglebuttonsegment\singlebuttonsegment.c"
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
	file	"E:\KTU\Softwares\mplab\Siglebuttonsegment\singlebuttonsegment.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	4
	
l1411:	
;singlebuttonsegment.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
;singlebuttonsegment.c: 5: PORTB=0X00;
	clrf	(6)	;volatile
	line	6
	
l1413:	
;singlebuttonsegment.c: 6: TRISA=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	7
	
l1415:	
;singlebuttonsegment.c: 7: TRISB=0X00;
	clrf	(134)^080h	;volatile
	line	8
	
l1417:	
;singlebuttonsegment.c: 8: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	9
	
l1419:	
;singlebuttonsegment.c: 9: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	10
	
l1421:	
;singlebuttonsegment.c: 10: int x=0;
	clrf	(main@x)
	clrf	(main@x+1)
	goto	l1423
	line	11
;singlebuttonsegment.c: 11: while(1)
	
l1025:	
	line	13
	
l1423:	
;singlebuttonsegment.c: 12: {
;singlebuttonsegment.c: 13: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u11
	goto	u10
u11:
	goto	l1026
u10:
	line	15
	
l1425:	
;singlebuttonsegment.c: 14: {
;singlebuttonsegment.c: 15: PORTB=0X00;
	clrf	(6)	;volatile
	line	16
;singlebuttonsegment.c: 16: while(RA0==1);
	goto	l1027
	
l1028:	
	
l1027:	
	btfsc	(40/8),(40)&7
	goto	u21
	goto	u20
u21:
	goto	l1027
u20:
	goto	l1427
	
l1029:	
	line	17
	
l1427:	
;singlebuttonsegment.c: 17: x++;
	movlw	low(01h)
	addwf	(main@x),f
	skipnc
	incf	(main@x+1),f
	movlw	high(01h)
	addwf	(main@x+1),f
	line	18
	
l1026:	
	line	19
;singlebuttonsegment.c: 18: }
;singlebuttonsegment.c: 19: if(x==1)
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l1030
u30:
	line	21
	
l1429:	
;singlebuttonsegment.c: 20: {
;singlebuttonsegment.c: 21: PORTB=0XBF;
	movlw	(0BFh)
	movwf	(6)	;volatile
	line	22
	
l1030:	
	line	23
;singlebuttonsegment.c: 22: }
;singlebuttonsegment.c: 23: if(x==2)
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l1031
u40:
	line	25
	
l1431:	
;singlebuttonsegment.c: 24: {
;singlebuttonsegment.c: 25: PORTB=0X06;
	movlw	(06h)
	movwf	(6)	;volatile
	line	26
	
l1031:	
	line	27
;singlebuttonsegment.c: 26: }
;singlebuttonsegment.c: 27: if(x==3)
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l1032
u50:
	line	29
	
l1433:	
;singlebuttonsegment.c: 28: {
;singlebuttonsegment.c: 29: PORTB=0X5B;
	movlw	(05Bh)
	movwf	(6)	;volatile
	line	30
	
l1032:	
	line	31
;singlebuttonsegment.c: 30: }
;singlebuttonsegment.c: 31: if(x==4)
	movlw	04h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u61
	goto	u60
u61:
	goto	l1033
u60:
	line	33
	
l1435:	
;singlebuttonsegment.c: 32: {
;singlebuttonsegment.c: 33: PORTB=0X4F;
	movlw	(04Fh)
	movwf	(6)	;volatile
	line	34
	
l1033:	
	line	35
;singlebuttonsegment.c: 34: }
;singlebuttonsegment.c: 35: if(x==5)
	movlw	05h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u71
	goto	u70
u71:
	goto	l1034
u70:
	line	37
	
l1437:	
;singlebuttonsegment.c: 36: {
;singlebuttonsegment.c: 37: PORTB=0X66;
	movlw	(066h)
	movwf	(6)	;volatile
	line	38
	
l1034:	
	line	39
;singlebuttonsegment.c: 38: }
;singlebuttonsegment.c: 39: if(x==6)
	movlw	06h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u81
	goto	u80
u81:
	goto	l1035
u80:
	line	41
	
l1439:	
;singlebuttonsegment.c: 40: {
;singlebuttonsegment.c: 41: PORTB=0X6D;
	movlw	(06Dh)
	movwf	(6)	;volatile
	line	42
	
l1035:	
	line	43
;singlebuttonsegment.c: 42: }
;singlebuttonsegment.c: 43: if(x==7)
	movlw	07h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u91
	goto	u90
u91:
	goto	l1036
u90:
	line	45
	
l1441:	
;singlebuttonsegment.c: 44: {
;singlebuttonsegment.c: 45: PORTB=0X7C;
	movlw	(07Ch)
	movwf	(6)	;volatile
	line	46
	
l1036:	
	line	47
;singlebuttonsegment.c: 46: }
;singlebuttonsegment.c: 47: if(x==8)
	movlw	08h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u101
	goto	u100
u101:
	goto	l1037
u100:
	line	49
	
l1443:	
;singlebuttonsegment.c: 48: {
;singlebuttonsegment.c: 49: PORTB=0X07;
	movlw	(07h)
	movwf	(6)	;volatile
	line	50
	
l1037:	
	line	51
;singlebuttonsegment.c: 50: }
;singlebuttonsegment.c: 51: if(x==9)
	movlw	09h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u111
	goto	u110
u111:
	goto	l1038
u110:
	line	53
	
l1445:	
;singlebuttonsegment.c: 52: {
;singlebuttonsegment.c: 53: PORTB=0XFF;
	movlw	(0FFh)
	movwf	(6)	;volatile
	line	54
	
l1038:	
	line	55
;singlebuttonsegment.c: 54: }
;singlebuttonsegment.c: 55: if(x==10)
	movlw	0Ah
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u121
	goto	u120
u121:
	goto	l1423
u120:
	line	57
	
l1447:	
;singlebuttonsegment.c: 56: {
;singlebuttonsegment.c: 57: PORTB=0XE7;
	movlw	(0E7h)
	movwf	(6)	;volatile
	line	58
	
l1449:	
;singlebuttonsegment.c: 58: x=0;
	clrf	(main@x)
	clrf	(main@x+1)
	goto	l1423
	line	59
	
l1039:	
	goto	l1423
	line	60
	
l1040:	
	line	11
	goto	l1423
	
l1041:	
	line	61
	
l1042:	
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
