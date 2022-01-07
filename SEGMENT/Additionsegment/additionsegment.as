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
	FNCALL	_main,___awmod
	FNCALL	_main,___awdiv
	FNROOT	_main
	global	main@F1612
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\KTU\Softwares\mplab\Additionsegment\additionsegment.c"
	line	20

;initializer for main@F1612
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
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_RA6
_RA6	set	46
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"additionsegment.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\KTU\Softwares\mplab\Additionsegment\additionsegment.c"
main@F1612:
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
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@i
main@i:	; 2 bytes @ 0x0
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x2
	ds	2
	global	main@m
main@m:	; 2 bytes @ 0x4
	ds	2
	global	main@n
main@n:	; 2 bytes @ 0x6
	ds	2
	global	main@arr
main@arr:	; 20 bytes @ 0x8
	ds	20
	global	main@mainseg
main@mainseg:	; 2 bytes @ 0x1C
	ds	2
	global	main@subseg
main@subseg:	; 2 bytes @ 0x1E
	ds	2
	global	main@seg1
main@seg1:	; 2 bytes @ 0x20
	ds	2
	global	main@seg2
main@seg2:	; 2 bytes @ 0x22
	ds	2
	global	main@segg1
main@segg1:	; 2 bytes @ 0x24
	ds	2
	global	main@segg2
main@segg2:	; 2 bytes @ 0x26
	ds	2
	global	main@seg0
main@seg0:	; 2 bytes @ 0x28
	ds	2
	global	main@segg0
main@segg0:	; 2 bytes @ 0x2A
	ds	2
	global	main@count
main@count:	; 2 bytes @ 0x2C
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80     46      66
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
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
;; (0) _main                                                50    50      0    1250
;;                                              9 COMMON     4     4      0
;;                                              0 BANK0     46    46      0
;;                            ___awmod
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   ___awmod
;;   ___awdiv
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
;;DATA                 0      0      50      12        0.0%
;;ABS                  0      0      4F       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50     2E      42       5       82.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 3 in file "E:\KTU\Softwares\mplab\Additionsegment\additionsegment.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  arr            20    8[BANK0 ] int [10]
;;  count           2   44[BANK0 ] int 
;;  segg0           2   42[BANK0 ] int 
;;  seg0            2   40[BANK0 ] int 
;;  segg2           2   38[BANK0 ] int 
;;  segg1           2   36[BANK0 ] int 
;;  seg2            2   34[BANK0 ] int 
;;  seg1            2   32[BANK0 ] int 
;;  subseg          2   30[BANK0 ] int 
;;  mainseg         2   28[BANK0 ] int 
;;  n               2    6[BANK0 ] int 
;;  m               2    4[BANK0 ] int 
;;  j               2    2[BANK0 ] int 
;;  i               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      46       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      46       0       0       0
;;Total ram usage:       50 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Additionsegment\additionsegment.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	4
	
l2481:	
;additionsegment.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
	
l2483:	
;additionsegment.c: 5: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	6
	
l2485:	
;additionsegment.c: 6: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	7
	
l2487:	
;additionsegment.c: 7: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	8
	
l2489:	
;additionsegment.c: 8: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	9
	
l2491:	
;additionsegment.c: 9: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	10
	
l2493:	
;additionsegment.c: 10: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	11
	
l2495:	
;additionsegment.c: 11: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	12
	
l2497:	
;additionsegment.c: 12: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	13
	
l2499:	
;additionsegment.c: 13: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	14
	
l2501:	
;additionsegment.c: 14: int i=0,j=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l2503:	
	clrf	(main@j)
	clrf	(main@j+1)
	line	15
	
l2505:	
;additionsegment.c: 15: int m=0,n=0;
	clrf	(main@m)
	clrf	(main@m+1)
	
l2507:	
	clrf	(main@n)
	clrf	(main@n+1)
	line	16
	
l2509:	
;additionsegment.c: 16: int seg0=0,seg1=0,seg2=0;
	clrf	(main@seg0)
	clrf	(main@seg0+1)
	
l2511:	
	clrf	(main@seg1)
	clrf	(main@seg1+1)
	
l2513:	
	clrf	(main@seg2)
	clrf	(main@seg2+1)
	line	19
	
l2515:	
;additionsegment.c: 17: int mainseg;
;additionsegment.c: 18: int subseg;
;additionsegment.c: 19: int segg0=0,segg1=0,segg2=0;
	clrf	(main@segg0)
	clrf	(main@segg0+1)
	
l2517:	
	clrf	(main@segg1)
	clrf	(main@segg1+1)
	
l2519:	
	clrf	(main@segg2)
	clrf	(main@segg2+1)
	line	20
	
l2521:	
;additionsegment.c: 20: int arr[]= {0XBF,0X06,0X5B,0X4F,0X66,0X6D,0X7C,0X07,0XFF,0XE7};
	movlw	(main@arr)&0ffh
	movwf	fsr0
	movlw	low(main@F1612)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2460:
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
	goto	u2460
	line	21
	
l2523:	
;additionsegment.c: 21: int count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l2525
	line	22
;additionsegment.c: 22: while(1)
	
l1027:	
	line	24
	
l2525:	
;additionsegment.c: 23: {
;additionsegment.c: 24: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l1028
u2470:
	goto	l1029
	line	26
	
l2527:	
;additionsegment.c: 25: {
;additionsegment.c: 26: while(RA0==1);
	goto	l1029
	
l1030:	
	
l1029:	
	btfsc	(40/8),(40)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l1029
u2480:
	goto	l2529
	
l1031:	
	line	27
	
l2529:	
;additionsegment.c: 27: mainseg++;
	movlw	low(01h)
	addwf	(main@mainseg),f
	skipnc
	incf	(main@mainseg+1),f
	movlw	high(01h)
	addwf	(main@mainseg+1),f
	line	28
	
l2531:	
;additionsegment.c: 28: seg0=mainseg;
	movf	(main@mainseg+1),w
	clrf	(main@seg0+1)
	addwf	(main@seg0+1)
	movf	(main@mainseg),w
	clrf	(main@seg0)
	addwf	(main@seg0)

	line	29
	
l2533:	
;additionsegment.c: 29: seg1=seg0%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@seg0+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@seg0),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@seg1+1)
	addwf	(main@seg1+1)
	movf	(0+(?___awmod)),w
	clrf	(main@seg1)
	addwf	(main@seg1)

	line	30
	
l2535:	
;additionsegment.c: 30: seg0=seg0/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@seg0+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@seg0),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@seg0+1)
	addwf	(main@seg0+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@seg0)
	addwf	(main@seg0)

	line	31
	
l2537:	
;additionsegment.c: 31: seg2=seg0%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@seg0+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@seg0),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@seg2+1)
	addwf	(main@seg2+1)
	movf	(0+(?___awmod)),w
	clrf	(main@seg2)
	addwf	(main@seg2)

	line	32
;additionsegment.c: 32: while(RA0!=1)
	goto	l1032
	
l1033:	
	line	34
;additionsegment.c: 33: {
;additionsegment.c: 34: while(count<300)
	goto	l2547
	
l1035:	
	line	36
;additionsegment.c: 35: {
;additionsegment.c: 36: RA3=1;RA4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	bcf	(44/8),(44)&7
	line	37
	
l2539:	
;additionsegment.c: 37: PORTC=arr[seg1];
	movf	(main@seg1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	38
	
l2541:	
;additionsegment.c: 38: RA5=1;RA6=0;
	bsf	(45/8),(45)&7
	
l2543:	
	bcf	(46/8),(46)&7
	line	39
;additionsegment.c: 39: PORTD=arr[segg1];
	movf	(main@segg1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(8)	;volatile
	line	40
	
l2545:	
;additionsegment.c: 40: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2547
	line	41
	
l1034:	
	line	34
	
l2547:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(012Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2495
	movlw	low(012Ch)
	subwf	(main@count),w
u2495:

	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l1035
u2490:
	goto	l2549
	
l1036:	
	line	42
	
l2549:	
;additionsegment.c: 41: }
;additionsegment.c: 42: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	43
;additionsegment.c: 43: while(count<300)
	goto	l2559
	
l1038:	
	line	45
;additionsegment.c: 44: {
;additionsegment.c: 45: RA3=0;RA4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(43/8),(43)&7
	bsf	(44/8),(44)&7
	line	46
	
l2551:	
;additionsegment.c: 46: PORTC=arr[seg2];
	movf	(main@seg2),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	47
	
l2553:	
;additionsegment.c: 47: RA5=0;RA6=1;
	bcf	(45/8),(45)&7
	
l2555:	
	bsf	(46/8),(46)&7
	line	48
;additionsegment.c: 48: PORTD=arr[segg2];
	movf	(main@segg2),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(8)	;volatile
	line	49
	
l2557:	
;additionsegment.c: 49: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2559
	line	50
	
l1037:	
	line	43
	
l2559:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(012Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2505
	movlw	low(012Ch)
	subwf	(main@count),w
u2505:

	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l1038
u2500:
	goto	l2561
	
l1039:	
	line	51
	
l2561:	
;additionsegment.c: 50: }
;additionsegment.c: 51: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	52
	
l2563:	
;additionsegment.c: 52: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l1032
u2510:
	goto	l1028
	line	54
	
l2565:	
;additionsegment.c: 53: {
;additionsegment.c: 54: break;
	goto	l1028
	line	55
	
l1040:	
	line	56
	
l1032:	
	line	32
	btfss	(40/8),(40)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l2547
u2520:
	goto	l1028
	
l1041:	
	line	57
	
l1028:	
	line	58
;additionsegment.c: 55: }
;additionsegment.c: 56: }
;additionsegment.c: 57: }
;additionsegment.c: 58: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l2525
u2530:
	goto	l1043
	line	60
	
l2567:	
;additionsegment.c: 59: {
;additionsegment.c: 60: while(RA1==1);
	goto	l1043
	
l1044:	
	
l1043:	
	btfsc	(41/8),(41)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l1043
u2540:
	goto	l2569
	
l1045:	
	line	61
	
l2569:	
;additionsegment.c: 61: subseg++;
	movlw	low(01h)
	addwf	(main@subseg),f
	skipnc
	incf	(main@subseg+1),f
	movlw	high(01h)
	addwf	(main@subseg+1),f
	line	62
	
l2571:	
;additionsegment.c: 62: segg0=subseg;
	movf	(main@subseg+1),w
	clrf	(main@segg0+1)
	addwf	(main@segg0+1)
	movf	(main@subseg),w
	clrf	(main@segg0)
	addwf	(main@segg0)

	line	63
	
l2573:	
;additionsegment.c: 63: segg1=segg0%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@segg0+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@segg0),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@segg1+1)
	addwf	(main@segg1+1)
	movf	(0+(?___awmod)),w
	clrf	(main@segg1)
	addwf	(main@segg1)

	line	64
	
l2575:	
;additionsegment.c: 64: segg0=segg0/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@segg0+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@segg0),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@segg0+1)
	addwf	(main@segg0+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@segg0)
	addwf	(main@segg0)

	line	65
	
l2577:	
;additionsegment.c: 65: segg2=segg0%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@segg0+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@segg0),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@segg2+1)
	addwf	(main@segg2+1)
	movf	(0+(?___awmod)),w
	clrf	(main@segg2)
	addwf	(main@segg2)

	line	66
;additionsegment.c: 66: while(RA1!=1)
	goto	l1046
	
l1047:	
	line	68
;additionsegment.c: 67: {
;additionsegment.c: 68: while(count<300)
	goto	l2587
	
l1049:	
	line	70
;additionsegment.c: 69: {
;additionsegment.c: 70: RA5=1;RA6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(45/8),(45)&7
	bcf	(46/8),(46)&7
	line	71
	
l2579:	
;additionsegment.c: 71: PORTD=arr[segg1];
	movf	(main@segg1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	72
	
l2581:	
;additionsegment.c: 72: RA3=1;RA4=0;
	bsf	(43/8),(43)&7
	
l2583:	
	bcf	(44/8),(44)&7
	line	73
;additionsegment.c: 73: PORTC=arr[seg1];
	movf	(main@seg1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(7)	;volatile
	line	74
	
l2585:	
;additionsegment.c: 74: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2587
	line	75
	
l1048:	
	line	68
	
l2587:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(012Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2555
	movlw	low(012Ch)
	subwf	(main@count),w
u2555:

	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l1049
u2550:
	goto	l2589
	
l1050:	
	line	76
	
l2589:	
;additionsegment.c: 75: }
;additionsegment.c: 76: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	77
;additionsegment.c: 77: while(count<300)
	goto	l2599
	
l1052:	
	line	79
;additionsegment.c: 78: {
;additionsegment.c: 79: RA5=0;RA6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(45/8),(45)&7
	bsf	(46/8),(46)&7
	line	80
	
l2591:	
;additionsegment.c: 80: PORTD=arr[segg2];
	movf	(main@segg2),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	81
	
l2593:	
;additionsegment.c: 81: RA3=0;RA4=1;
	bcf	(43/8),(43)&7
	
l2595:	
	bsf	(44/8),(44)&7
	line	82
;additionsegment.c: 82: PORTC=arr[seg2];
	movf	(main@seg2),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(7)	;volatile
	line	83
	
l2597:	
;additionsegment.c: 83: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2599
	line	84
	
l1051:	
	line	77
	
l2599:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(012Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2565
	movlw	low(012Ch)
	subwf	(main@count),w
u2565:

	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l1052
u2560:
	goto	l2601
	
l1053:	
	line	85
	
l2601:	
;additionsegment.c: 84: }
;additionsegment.c: 85: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	86
	
l2603:	
;additionsegment.c: 86: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l1046
u2570:
	goto	l2525
	line	88
	
l2605:	
;additionsegment.c: 87: {
;additionsegment.c: 88: break;
	goto	l2525
	line	89
	
l1054:	
	line	90
	
l1046:	
	line	66
	btfss	(41/8),(41)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l2587
u2580:
	goto	l2525
	
l1055:	
	goto	l2525
	line	91
	
l1042:	
	goto	l2525
	line	92
	
l1056:	
	line	22
	goto	l2525
	
l1057:	
	line	93
	
l1058:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___awmod
psect	text83,local,class=CODE,delta=2
global __ptext83
__ptext83:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text83
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2447:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2371
	goto	u2370
u2371:
	goto	l2451
u2370:
	line	10
	
l2449:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2451
	line	12
	
l1275:	
	line	13
	
l2451:	
	btfss	(___awmod@divisor+1),7
	goto	u2381
	goto	u2380
u2381:
	goto	l2455
u2380:
	line	14
	
l2453:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2455
	
l1276:	
	line	15
	
l2455:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2391
	goto	u2390
u2391:
	goto	l2473
u2390:
	line	16
	
l2457:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2463
	
l1279:	
	line	18
	
l2459:	
	movlw	01h
	
u2405:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2405
	line	19
	
l2461:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2463
	line	20
	
l1278:	
	line	17
	
l2463:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l2459
u2410:
	goto	l2465
	
l1280:	
	goto	l2465
	line	21
	
l1281:	
	line	22
	
l2465:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2425
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2425:
	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l2469
u2420:
	line	23
	
l2467:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2469
	
l1282:	
	line	24
	
l2469:	
	movlw	01h
	
u2435:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2435
	line	25
	
l2471:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l2465
u2440:
	goto	l2473
	
l1283:	
	goto	l2473
	line	26
	
l1277:	
	line	27
	
l2473:	
	movf	(___awmod@sign),w
	skipz
	goto	u2450
	goto	l2477
u2450:
	line	28
	
l2475:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2477
	
l1284:	
	line	29
	
l2477:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1285
	
l2479:	
	line	30
	
l1285:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text84
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2407:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2271
	goto	u2270
u2271:
	goto	l2411
u2270:
	line	11
	
l2409:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2411
	line	13
	
l1207:	
	line	14
	
l2411:	
	btfss	(___awdiv@dividend+1),7
	goto	u2281
	goto	u2280
u2281:
	goto	l2417
u2280:
	line	15
	
l2413:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2415:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2417
	line	17
	
l1208:	
	line	18
	
l2417:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2419:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2291
	goto	u2290
u2291:
	goto	l2439
u2290:
	line	20
	
l2421:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2427
	
l1211:	
	line	22
	
l2423:	
	movlw	01h
	
u2305:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2305
	line	23
	
l2425:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2427
	line	24
	
l1210:	
	line	21
	
l2427:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l2423
u2310:
	goto	l2429
	
l1212:	
	goto	l2429
	line	25
	
l1213:	
	line	26
	
l2429:	
	movlw	01h
	
u2325:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2325
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2335
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2335:
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l2435
u2330:
	line	28
	
l2431:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2433:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2435
	line	30
	
l1214:	
	line	31
	
l2435:	
	movlw	01h
	
u2345:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2345
	line	32
	
l2437:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l2429
u2350:
	goto	l2439
	
l1215:	
	goto	l2439
	line	33
	
l1209:	
	line	34
	
l2439:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2360
	goto	l2443
u2360:
	line	35
	
l2441:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2443
	
l1216:	
	line	36
	
l2443:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1217
	
l2445:	
	line	37
	
l1217:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
