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
	global	main@F1601
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\KTU\Softwares\MP lab\Keypadcount\keypadcount.c"
	line	17

;initializer for main@F1601
	retlw	0BFh
	retlw	0

	retlw	06h
	retlw	0

	retlw	05Bh
	retlw	0

	retlw	04Fh
	retlw	0

	retlw	066h
	retlw	0

	retlw	06Dh
	retlw	0

	retlw	07Ch
	retlw	0

	retlw	07h
	retlw	0

	retlw	0FFh
	retlw	0

	retlw	0E7h
	retlw	0

	global	_PORTA
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
	global	_RA3
_RA3	set	43
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
	file	"keypadcount.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\KTU\Softwares\MP lab\Keypadcount\keypadcount.c"
main@F1601:
       ds      20

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+20)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
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
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@segment
main@segment:	; 20 bytes @ 0x0
	ds	20
	global	main@set
main@set:	; 2 bytes @ 0x14
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x16
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x18
	ds	2
	global	main@control
main@control:	; 2 bytes @ 0x1A
	ds	2
	global	main@arr
main@arr:	; 2 bytes @ 0x1C
	ds	2
	global	main@count
main@count:	; 2 bytes @ 0x1E
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80     32      52
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                36    36      0     319
;;                                              0 COMMON     4     4      0
;;                                              0 BANK0     32    32      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      38      12        0.0%
;;ABS                  0      0      38       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50     20      34       5       65.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 3 in file "E:\KTU\Softwares\MP lab\Keypadcount\keypadcount.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  segment        20    0[BANK0 ] int [10]
;;  count           2   30[BANK0 ] int 
;;  arr             2   28[BANK0 ] int 
;;  control         2   26[BANK0 ] int 
;;  j               2   24[BANK0 ] int 
;;  i               2   22[BANK0 ] int 
;;  set             2   20[BANK0 ] int 
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
;;      Locals:         0      32       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      32       0       0       0
;;Total ram usage:       36 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\Keypadcount\keypadcount.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	4
	
l2365:	
;keypadcount.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
	
l2367:	
;keypadcount.c: 5: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	6
	
l2369:	
;keypadcount.c: 6: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	7
	
l2371:	
;keypadcount.c: 7: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	8
	
l2373:	
;keypadcount.c: 8: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	9
	
l2375:	
;keypadcount.c: 9: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	10
	
l2377:	
;keypadcount.c: 10: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	11
	
l2379:	
;keypadcount.c: 11: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	12
	
l2381:	
;keypadcount.c: 12: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	13
	
l2383:	
;keypadcount.c: 13: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	14
	
l2385:	
;keypadcount.c: 14: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	15
	
l2387:	
;keypadcount.c: 15: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	16
	
l2389:	
;keypadcount.c: 16: int control=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@control)
	movlw	high(01h)
	movwf	((main@control))+1
	line	17
	
l2391:	
;keypadcount.c: 17: int segment[]={0XBF,0X06,0X5B,0X4F,0X66,0X6D,0X7C,0X07,0XFF,0XE7};
	movlw	(main@segment)&0ffh
	movwf	fsr0
	movlw	low(main@F1601)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2470:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2470
	line	18
	
l2393:	
;keypadcount.c: 18: int arr=0;
	clrf	(main@arr)
	clrf	(main@arr+1)
	line	19
	
l2395:	
;keypadcount.c: 19: int count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	20
	
l2397:	
;keypadcount.c: 20: int i=0,j=0;
	clrf	(main@i)
	clrf	(main@i+1)
	
l2399:	
	clrf	(main@j)
	clrf	(main@j+1)
	line	21
	
l2401:	
;keypadcount.c: 21: int set=0;
	clrf	(main@set)
	clrf	(main@set+1)
	goto	l2403
	line	22
;keypadcount.c: 22: while(1)
	
l1027:	
	line	24
	
l2403:	
;keypadcount.c: 23: {
;keypadcount.c: 24: if(control==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@control),w
	iorwf	(main@control+1),w
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l2443
u2480:
	line	26
	
l2405:	
;keypadcount.c: 25: {
;keypadcount.c: 26: RB0=1;
	bsf	(48/8),(48)&7
	line	27
;keypadcount.c: 27: RB1=0;
	bcf	(49/8),(49)&7
	line	28
;keypadcount.c: 28: RB2=0;
	bcf	(50/8),(50)&7
	line	29
;keypadcount.c: 29: RB3=0;
	bcf	(51/8),(51)&7
	line	30
;keypadcount.c: 30: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l1029
u2490:
	line	32
	
l2407:	
;keypadcount.c: 31: {
;keypadcount.c: 32: arr=1;
	movlw	low(01h)
	movwf	(main@arr)
	movlw	high(01h)
	movwf	((main@arr))+1
	line	33
;keypadcount.c: 33: while(RA0==1);
	goto	l1030
	
l1031:	
	
l1030:	
	btfsc	(40/8),(40)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l1030
u2500:
	goto	l1029
	
l1032:	
	line	34
	
l1029:	
	line	35
;keypadcount.c: 34: }
;keypadcount.c: 35: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l1033
u2510:
	line	37
	
l2409:	
;keypadcount.c: 36: {
;keypadcount.c: 37: arr=2;
	movlw	low(02h)
	movwf	(main@arr)
	movlw	high(02h)
	movwf	((main@arr))+1
	line	38
;keypadcount.c: 38: while(RA0==1);
	goto	l1034
	
l1035:	
	
l1034:	
	btfsc	(40/8),(40)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l1034
u2520:
	goto	l1033
	
l1036:	
	line	39
	
l1033:	
	line	40
;keypadcount.c: 39: }
;keypadcount.c: 40: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l1037
u2530:
	line	42
	
l2411:	
;keypadcount.c: 41: {
;keypadcount.c: 42: arr=3;
	movlw	low(03h)
	movwf	(main@arr)
	movlw	high(03h)
	movwf	((main@arr))+1
	line	43
;keypadcount.c: 43: while(RA0==1);
	goto	l1038
	
l1039:	
	
l1038:	
	btfsc	(40/8),(40)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l1038
u2540:
	goto	l1037
	
l1040:	
	line	44
	
l1037:	
	line	45
;keypadcount.c: 44: }
;keypadcount.c: 45: RB0=0;
	bcf	(48/8),(48)&7
	line	46
;keypadcount.c: 46: RB1=1;
	bsf	(49/8),(49)&7
	line	47
;keypadcount.c: 47: RB2=0;
	bcf	(50/8),(50)&7
	line	48
;keypadcount.c: 48: RB3=0;
	bcf	(51/8),(51)&7
	line	49
;keypadcount.c: 49: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l1041
u2550:
	line	51
	
l2413:	
;keypadcount.c: 50: {
;keypadcount.c: 51: arr=4;
	movlw	low(04h)
	movwf	(main@arr)
	movlw	high(04h)
	movwf	((main@arr))+1
	line	52
;keypadcount.c: 52: while(RA0==1);
	goto	l1042
	
l1043:	
	
l1042:	
	btfsc	(40/8),(40)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l1042
u2560:
	goto	l1041
	
l1044:	
	line	53
	
l1041:	
	line	54
;keypadcount.c: 53: }
;keypadcount.c: 54: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l1045
u2570:
	line	56
	
l2415:	
;keypadcount.c: 55: {
;keypadcount.c: 56: arr=5;
	movlw	low(05h)
	movwf	(main@arr)
	movlw	high(05h)
	movwf	((main@arr))+1
	line	57
;keypadcount.c: 57: while(RA0==1);
	goto	l1046
	
l1047:	
	
l1046:	
	btfsc	(40/8),(40)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l1046
u2580:
	goto	l1045
	
l1048:	
	line	58
	
l1045:	
	line	59
;keypadcount.c: 58: }
;keypadcount.c: 59: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l1049
u2590:
	line	61
	
l2417:	
;keypadcount.c: 60: {
;keypadcount.c: 61: arr=6;
	movlw	low(06h)
	movwf	(main@arr)
	movlw	high(06h)
	movwf	((main@arr))+1
	line	62
;keypadcount.c: 62: while(RA0==1);
	goto	l1050
	
l1051:	
	
l1050:	
	btfsc	(40/8),(40)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l1050
u2600:
	goto	l1049
	
l1052:	
	line	63
	
l1049:	
	line	64
;keypadcount.c: 63: }
;keypadcount.c: 64: RB0=0;
	bcf	(48/8),(48)&7
	line	65
;keypadcount.c: 65: RB1=0;
	bcf	(49/8),(49)&7
	line	66
;keypadcount.c: 66: RB2=1;
	bsf	(50/8),(50)&7
	line	67
;keypadcount.c: 67: RB3=0;
	bcf	(51/8),(51)&7
	line	68
;keypadcount.c: 68: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l1053
u2610:
	line	70
	
l2419:	
;keypadcount.c: 69: {
;keypadcount.c: 70: arr=7;
	movlw	low(07h)
	movwf	(main@arr)
	movlw	high(07h)
	movwf	((main@arr))+1
	line	71
;keypadcount.c: 71: while(RA0==1);
	goto	l1054
	
l1055:	
	
l1054:	
	btfsc	(40/8),(40)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l1054
u2620:
	goto	l1053
	
l1056:	
	line	72
	
l1053:	
	line	74
;keypadcount.c: 72: }
;keypadcount.c: 74: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l1057
u2630:
	line	76
	
l2421:	
;keypadcount.c: 75: {
;keypadcount.c: 76: arr=8;
	movlw	low(08h)
	movwf	(main@arr)
	movlw	high(08h)
	movwf	((main@arr))+1
	line	77
;keypadcount.c: 77: while(RA0==1);
	goto	l1058
	
l1059:	
	
l1058:	
	btfsc	(40/8),(40)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l1058
u2640:
	goto	l1057
	
l1060:	
	line	78
	
l1057:	
	line	79
;keypadcount.c: 78: }
;keypadcount.c: 79: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l1061
u2650:
	line	81
	
l2423:	
;keypadcount.c: 80: {
;keypadcount.c: 81: arr=9;
	movlw	low(09h)
	movwf	(main@arr)
	movlw	high(09h)
	movwf	((main@arr))+1
	line	82
;keypadcount.c: 82: while(RA0==1);
	goto	l1062
	
l1063:	
	
l1062:	
	btfsc	(40/8),(40)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l1062
u2660:
	goto	l1061
	
l1064:	
	line	83
	
l1061:	
	line	84
;keypadcount.c: 83: }
;keypadcount.c: 84: RB0=0;
	bcf	(48/8),(48)&7
	line	85
;keypadcount.c: 85: RB1=0;
	bcf	(49/8),(49)&7
	line	86
;keypadcount.c: 86: RB2=0;
	bcf	(50/8),(50)&7
	line	87
;keypadcount.c: 87: RB3=1;
	bsf	(51/8),(51)&7
	line	88
;keypadcount.c: 88: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l2433
u2670:
	goto	l1066
	line	90
	
l2425:	
;keypadcount.c: 89: {
;keypadcount.c: 90: while(RA0==1);
	goto	l1066
	
l1067:	
	
l1066:	
	btfsc	(40/8),(40)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l1066
u2680:
	goto	l2427
	
l1068:	
	line	91
	
l2427:	
;keypadcount.c: 91: control=2;
	movlw	low(02h)
	movwf	(main@control)
	movlw	high(02h)
	movwf	((main@control))+1
	goto	l2433
	line	92
	
l1065:	
	line	93
;keypadcount.c: 92: }
;keypadcount.c: 93: while(count<3000)
	goto	l2433
	
l1070:	
	line	95
;keypadcount.c: 94: {
;keypadcount.c: 95: RD0=0;RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	line	96
	
l2429:	
;keypadcount.c: 96: PORTC=segment[arr];
	movf	(main@arr),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@segment&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	97
	
l2431:	
;keypadcount.c: 97: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2433
	line	98
	
l1069:	
	line	93
	
l2433:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2695
	movlw	low(0BB8h)
	subwf	(main@count),w
u2695:

	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l1070
u2690:
	goto	l2435
	
l1071:	
	line	99
	
l2435:	
;keypadcount.c: 98: }
;keypadcount.c: 99: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	100
;keypadcount.c: 100: while(count<3000)
	goto	l2439
	
l1073:	
	line	102
;keypadcount.c: 101: {
;keypadcount.c: 102: RD0=1;RD1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bcf	(65/8),(65)&7
	line	103
	
l2437:	
;keypadcount.c: 103: PORTC=segment[5];
	movf	0+(main@segment)+0Ah,w
	movwf	(7)	;volatile
	line	104
;keypadcount.c: 104: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2439
	line	105
	
l1072:	
	line	100
	
l2439:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2705
	movlw	low(0BB8h)
	subwf	(main@count),w
u2705:

	skipc
	goto	u2701
	goto	u2700
u2701:
	goto	l1073
u2700:
	goto	l2441
	
l1074:	
	line	106
	
l2441:	
;keypadcount.c: 105: }
;keypadcount.c: 106: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l2443
	line	107
	
l1028:	
	line	108
	
l2443:	
;keypadcount.c: 107: }
;keypadcount.c: 108: if(control==2)
	movlw	02h
	xorwf	(main@control),w
	iorwf	(main@control+1),w
	skipz
	goto	u2711
	goto	u2710
u2711:
	goto	l2403
u2710:
	line	110
	
l2445:	
;keypadcount.c: 109: {
;keypadcount.c: 110: for(i=0;i<arr;)
	clrf	(main@i)
	clrf	(main@i+1)
	goto	l2469
	line	111
	
l1077:	
	line	112
;keypadcount.c: 111: {
;keypadcount.c: 112: while(count<20000)
	goto	l2463
	
l1079:	
	line	114
;keypadcount.c: 113: {
;keypadcount.c: 114: RA3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	115
	
l2447:	
;keypadcount.c: 115: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	116
	
l2449:	
;keypadcount.c: 116: RB0=0;
	bcf	(48/8),(48)&7
	line	117
	
l2451:	
;keypadcount.c: 117: RB1=0;
	bcf	(49/8),(49)&7
	line	118
	
l2453:	
;keypadcount.c: 118: RB2=0;
	bcf	(50/8),(50)&7
	line	119
	
l2455:	
;keypadcount.c: 119: RB3=1;
	bsf	(51/8),(51)&7
	line	120
	
l2457:	
;keypadcount.c: 120: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l2463
u2720:
	goto	l1081
	line	122
	
l2459:	
;keypadcount.c: 121: {
;keypadcount.c: 122: while(RA0==1);
	goto	l1081
	
l1082:	
	
l1081:	
	btfsc	(40/8),(40)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l1081
u2730:
	goto	l2461
	
l1083:	
	line	123
	
l2461:	
;keypadcount.c: 123: control=1;
	movlw	low(01h)
	movwf	(main@control)
	movlw	high(01h)
	movwf	((main@control))+1
	goto	l2463
	line	124
	
l1080:	
	goto	l2463
	line	125
	
l1078:	
	line	112
	
l2463:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04E20h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2745
	movlw	low(04E20h)
	subwf	(main@count),w
u2745:

	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l1079
u2740:
	goto	l2465
	
l1084:	
	line	126
	
l2465:	
;keypadcount.c: 124: }
;keypadcount.c: 125: }
;keypadcount.c: 126: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	127
	
l2467:	
;keypadcount.c: 127: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l2469
	line	110
	
l1076:	
	
l2469:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(main@arr+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2755
	movf	(main@arr),w
	subwf	(main@i),w
u2755:

	skipc
	goto	u2751
	goto	u2750
u2751:
	goto	l2463
u2750:
	goto	l2471
	
l1085:	
	line	129
	
l2471:	
;keypadcount.c: 128: }
;keypadcount.c: 129: for(j=0;j<arr;)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@j)
	clrf	(main@j+1)
	goto	l2495
	line	130
	
l1087:	
	line	131
;keypadcount.c: 130: {
;keypadcount.c: 131: while(count<20000)
	goto	l2489
	
l1089:	
	line	133
;keypadcount.c: 132: {
;keypadcount.c: 133: RA3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(43/8),(43)&7
	line	134
	
l2473:	
;keypadcount.c: 134: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	135
	
l2475:	
;keypadcount.c: 135: RB0=0;
	bcf	(48/8),(48)&7
	line	136
	
l2477:	
;keypadcount.c: 136: RB1=0;
	bcf	(49/8),(49)&7
	line	137
	
l2479:	
;keypadcount.c: 137: RB2=0;
	bcf	(50/8),(50)&7
	line	138
	
l2481:	
;keypadcount.c: 138: RB3=1;
	bsf	(51/8),(51)&7
	line	139
	
l2483:	
;keypadcount.c: 139: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l2489
u2760:
	goto	l1091
	line	141
	
l2485:	
;keypadcount.c: 140: {
;keypadcount.c: 141: while(RA0==1);
	goto	l1091
	
l1092:	
	
l1091:	
	btfsc	(40/8),(40)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l1091
u2770:
	goto	l2487
	
l1093:	
	line	142
	
l2487:	
;keypadcount.c: 142: control=1;
	movlw	low(01h)
	movwf	(main@control)
	movlw	high(01h)
	movwf	((main@control))+1
	goto	l2489
	line	143
	
l1090:	
	goto	l2489
	line	144
	
l1088:	
	line	131
	
l2489:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04E20h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2785
	movlw	low(04E20h)
	subwf	(main@count),w
u2785:

	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l1089
u2780:
	goto	l2491
	
l1094:	
	line	145
	
l2491:	
;keypadcount.c: 143: }
;keypadcount.c: 144: }
;keypadcount.c: 145: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	146
	
l2493:	
;keypadcount.c: 146: j++;
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2495
	line	129
	
l1086:	
	
l2495:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(main@arr+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2795
	movf	(main@arr),w
	subwf	(main@j),w
u2795:

	skipc
	goto	u2791
	goto	u2790
u2791:
	goto	l2489
u2790:
	goto	l2403
	
l1095:	
	goto	l2403
	line	148
	
l1075:	
	goto	l2403
	line	149
	
l1096:	
	line	22
	goto	l2403
	
l1097:	
	line	150
	
l1098:	
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
