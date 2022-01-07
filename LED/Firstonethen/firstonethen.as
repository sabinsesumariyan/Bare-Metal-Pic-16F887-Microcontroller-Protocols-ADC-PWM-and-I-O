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
	file	"firstonethen.as"
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
	global	main@a
main@a:	; 2 bytes @ 0x0
	ds	2
	global	main@b
main@b:	; 2 bytes @ 0x2
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
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
;; (0) _main                                                 4     4      0      30
;;                                              0 COMMON     4     4      0
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
;;COMMON               E      4       4       1       28.6%
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
;;		line 3 in file "E:\KTU\Softwares\mplab\Firstonethen\firstonethen.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  b               2    2[COMMON] int 
;;  a               2    0[COMMON] int 
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
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Firstonethen\firstonethen.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	4
	
l1402:	
;firstonethen.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
;firstonethen.c: 5: PORTB=0X00;
	clrf	(6)	;volatile
	line	6
;firstonethen.c: 6: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	7
	
l1404:	
;firstonethen.c: 7: TRISB=0X03;
	movlw	(03h)
	movwf	(134)^080h	;volatile
	line	8
	
l1406:	
;firstonethen.c: 8: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	9
	
l1408:	
;firstonethen.c: 9: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	10
	
l1410:	
;firstonethen.c: 10: int a=0;
	clrf	(main@a)
	clrf	(main@a+1)
	line	11
	
l1412:	
;firstonethen.c: 11: int b=0;
	clrf	(main@b)
	clrf	(main@b+1)
	goto	l1414
	line	12
;firstonethen.c: 12: while(1)
	
l1025:	
	line	14
	
l1414:	
;firstonethen.c: 13: {
;firstonethen.c: 14: if(RB0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u11
	goto	u10
u11:
	goto	l1026
u10:
	line	16
	
l1416:	
;firstonethen.c: 15: {
;firstonethen.c: 16: a=5;
	movlw	low(05h)
	movwf	(main@a)
	movlw	high(05h)
	movwf	((main@a))+1
	line	17
	
l1026:	
	line	18
;firstonethen.c: 17: }
;firstonethen.c: 18: if(a==5 && RB1==1)
	movlw	05h
	xorwf	(main@a),w
	iorwf	(main@a+1),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l1424
u20:
	
l1418:	
	btfss	(49/8),(49)&7
	goto	u31
	goto	u30
u31:
	goto	l1424
u30:
	line	20
	
l1420:	
;firstonethen.c: 19: {
;firstonethen.c: 20: RA0=1;
	bsf	(40/8),(40)&7
	line	21
;firstonethen.c: 21: RA1=0;
	bcf	(41/8),(41)&7
	line	22
	
l1422:	
;firstonethen.c: 22: a=0;
	clrf	(main@a)
	clrf	(main@a+1)
	goto	l1424
	line	23
	
l1027:	
	line	24
	
l1424:	
;firstonethen.c: 23: }
;firstonethen.c: 24: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u41
	goto	u40
u41:
	goto	l1028
u40:
	line	26
	
l1426:	
;firstonethen.c: 25: {
;firstonethen.c: 26: b=5;
	movlw	low(05h)
	movwf	(main@b)
	movlw	high(05h)
	movwf	((main@b))+1
	line	27
	
l1028:	
	line	28
;firstonethen.c: 27: }
;firstonethen.c: 28: if(b==5 && RB0==1)
	movlw	05h
	xorwf	(main@b),w
	iorwf	(main@b+1),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l1434
u50:
	
l1428:	
	btfss	(48/8),(48)&7
	goto	u61
	goto	u60
u61:
	goto	l1434
u60:
	line	30
	
l1430:	
;firstonethen.c: 29: {
;firstonethen.c: 30: RA1=1;
	bsf	(41/8),(41)&7
	line	31
;firstonethen.c: 31: RA0=0;
	bcf	(40/8),(40)&7
	line	32
	
l1432:	
;firstonethen.c: 32: b=0;
	clrf	(main@b)
	clrf	(main@b+1)
	goto	l1434
	line	33
	
l1029:	
	line	34
	
l1434:	
;firstonethen.c: 33: }
;firstonethen.c: 34: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u71
	goto	u70
u71:
	goto	l1414
u70:
	line	36
	
l1436:	
;firstonethen.c: 35: {
;firstonethen.c: 36: RA0=0;
	bcf	(40/8),(40)&7
	line	37
;firstonethen.c: 37: RA1=0;
	bcf	(41/8),(41)&7
	line	38
	
l1438:	
;firstonethen.c: 38: a=0;
	clrf	(main@a)
	clrf	(main@a+1)
	line	39
;firstonethen.c: 39: b=0;
	clrf	(main@b)
	clrf	(main@b+1)
	goto	l1414
	line	40
	
l1030:	
	goto	l1414
	line	41
	
l1031:	
	line	12
	goto	l1414
	
l1032:	
	line	42
	
l1033:	
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
