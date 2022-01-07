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
	global	main@F1608
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\KTU\Softwares\mplab\Continuousseg\continuousseg.c"
	line	20

;initializer for main@F1608
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
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_RA6
_RA6	set	46
	global	_RA7
_RA7	set	47
	global	_RB7
_RB7	set	55
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
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
	file	"continuousseg.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\KTU\Softwares\mplab\Continuousseg\continuousseg.c"
main@F1608:
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
	global	main@ans1
main@ans1:	; 2 bytes @ 0x0
	ds	2
	global	main@ans2
main@ans2:	; 2 bytes @ 0x2
	ds	2
	global	main@ans3
main@ans3:	; 2 bytes @ 0x4
	ds	2
	global	main@ans4
main@ans4:	; 2 bytes @ 0x6
	ds	2
	global	main@arr
main@arr:	; 20 bytes @ 0x8
	ds	20
	global	main@addition
main@addition:	; 2 bytes @ 0x1C
	ds	2
	global	main@mainseg
main@mainseg:	; 2 bytes @ 0x1E
	ds	2
	global	main@subseg
main@subseg:	; 2 bytes @ 0x20
	ds	2
	global	main@seg1
main@seg1:	; 2 bytes @ 0x22
	ds	2
	global	main@seg2
main@seg2:	; 2 bytes @ 0x24
	ds	2
	global	main@segg1
main@segg1:	; 2 bytes @ 0x26
	ds	2
	global	main@segg2
main@segg2:	; 2 bytes @ 0x28
	ds	2
	global	main@seg0
main@seg0:	; 2 bytes @ 0x2A
	ds	2
	global	main@segg0
main@segg0:	; 2 bytes @ 0x2C
	ds	2
	global	main@temp
main@temp:	; 2 bytes @ 0x2E
	ds	2
	global	main@count
main@count:	; 2 bytes @ 0x30
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80     50      70
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
;; (0) _main                                                54    54      0    1764
;;                                              9 COMMON     4     4      0
;;                                              0 BANK0     50    50      0
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
;;DATA                 0      0      54      12        0.0%
;;ABS                  0      0      53       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50     32      46       5       87.5%
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
;;		line 3 in file "E:\KTU\Softwares\mplab\Continuousseg\continuousseg.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  arr            20    8[BANK0 ] int [10]
;;  count           2   48[BANK0 ] int 
;;  temp            2   46[BANK0 ] int 
;;  segg0           2   44[BANK0 ] int 
;;  seg0            2   42[BANK0 ] int 
;;  segg2           2   40[BANK0 ] int 
;;  segg1           2   38[BANK0 ] int 
;;  seg2            2   36[BANK0 ] int 
;;  seg1            2   34[BANK0 ] int 
;;  subseg          2   32[BANK0 ] int 
;;  mainseg         2   30[BANK0 ] int 
;;  addition        2   28[BANK0 ] int 
;;  ans4            2    6[BANK0 ] int 
;;  ans3            2    4[BANK0 ] int 
;;  ans2            2    2[BANK0 ] int 
;;  ans1            2    0[BANK0 ] int 
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
;;      Locals:         0      50       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      50       0       0       0
;;Total ram usage:       54 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;;		___awdiv
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Continuousseg\continuousseg.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	4
	
l2697:	
;continuousseg.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
	
l2699:	
;continuousseg.c: 5: TRISA=0X43;
	movlw	(043h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	6
	
l2701:	
;continuousseg.c: 6: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	7
	
l2703:	
;continuousseg.c: 7: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	8
	
l2705:	
;continuousseg.c: 8: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	9
	
l2707:	
;continuousseg.c: 9: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	10
	
l2709:	
;continuousseg.c: 10: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	11
	
l2711:	
;continuousseg.c: 11: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	12
	
l2713:	
;continuousseg.c: 12: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	13
	
l2715:	
;continuousseg.c: 13: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	14
	
l2717:	
;continuousseg.c: 14: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	15
	
l2719:	
;continuousseg.c: 15: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	16
	
l2721:	
;continuousseg.c: 16: int seg0=0,seg1=0,seg2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@seg0)
	clrf	(main@seg0+1)
	
l2723:	
	clrf	(main@seg1)
	clrf	(main@seg1+1)
	
l2725:	
	clrf	(main@seg2)
	clrf	(main@seg2+1)
	line	19
	
l2727:	
;continuousseg.c: 17: int mainseg;
;continuousseg.c: 18: int subseg;
;continuousseg.c: 19: int segg0=0,segg1=0,segg2=0;
	clrf	(main@segg0)
	clrf	(main@segg0+1)
	
l2729:	
	clrf	(main@segg1)
	clrf	(main@segg1+1)
	
l2731:	
	clrf	(main@segg2)
	clrf	(main@segg2+1)
	line	20
	
l2733:	
;continuousseg.c: 20: int arr[]= {0XBF,0X06,0X5B,0X4F,0X66,0X6D,0X7C,0X07,0XFF,0XE7};
	movlw	(main@arr)&0ffh
	movwf	fsr0
	movlw	low(main@F1608)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2620:
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
	goto	u2620
	line	21
	
l2735:	
;continuousseg.c: 21: int count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	22
	
l2737:	
;continuousseg.c: 22: int addition=0,temp=0;
	clrf	(main@addition)
	clrf	(main@addition+1)
	
l2739:	
	clrf	(main@temp)
	clrf	(main@temp+1)
	line	23
	
l2741:	
;continuousseg.c: 23: int ans1=0,ans2=0,ans3=0,ans4=0;
	clrf	(main@ans1)
	clrf	(main@ans1+1)
	
l2743:	
	clrf	(main@ans2)
	clrf	(main@ans2+1)
	
l2745:	
	clrf	(main@ans3)
	clrf	(main@ans3+1)
	
l2747:	
	clrf	(main@ans4)
	clrf	(main@ans4+1)
	goto	l2749
	line	24
;continuousseg.c: 24: while(1)
	
l1027:	
	line	26
	
l2749:	
;continuousseg.c: 25: {
;continuousseg.c: 26: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l1028
u2630:
	goto	l1029
	line	28
	
l2751:	
;continuousseg.c: 27: {
;continuousseg.c: 28: while(RA0==1);
	goto	l1029
	
l1030:	
	
l1029:	
	btfsc	(40/8),(40)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l1029
u2640:
	goto	l2753
	
l1031:	
	line	29
	
l2753:	
;continuousseg.c: 29: mainseg++;
	movlw	low(01h)
	addwf	(main@mainseg),f
	skipnc
	incf	(main@mainseg+1),f
	movlw	high(01h)
	addwf	(main@mainseg+1),f
	line	30
	
l2755:	
;continuousseg.c: 30: seg0=mainseg;
	movf	(main@mainseg+1),w
	clrf	(main@seg0+1)
	addwf	(main@seg0+1)
	movf	(main@mainseg),w
	clrf	(main@seg0)
	addwf	(main@seg0)

	line	31
	
l2757:	
;continuousseg.c: 31: seg1=seg0%10;
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

	line	32
	
l2759:	
;continuousseg.c: 32: seg0=seg0/10;
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

	line	33
	
l2761:	
;continuousseg.c: 33: seg2=seg0%10;
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

	line	34
;continuousseg.c: 34: while(RA0!=1)
	goto	l1032
	
l1033:	
	line	36
;continuousseg.c: 35: {
;continuousseg.c: 36: while(count<3000)
	goto	l2771
	
l1035:	
	line	38
;continuousseg.c: 37: {
;continuousseg.c: 38: RA2=1;RA3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	bcf	(43/8),(43)&7
	line	39
	
l2763:	
;continuousseg.c: 39: PORTC=arr[seg1];
	movf	(main@seg1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	40
	
l2765:	
;continuousseg.c: 40: RA4=1;RA5=0;
	bsf	(44/8),(44)&7
	
l2767:	
	bcf	(45/8),(45)&7
	line	41
;continuousseg.c: 41: PORTD=arr[segg1];
	movf	(main@segg1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(8)	;volatile
	line	42
	
l2769:	
;continuousseg.c: 42: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2771
	line	43
	
l1034:	
	line	36
	
l2771:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2655
	movlw	low(0BB8h)
	subwf	(main@count),w
u2655:

	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l1035
u2650:
	goto	l2773
	
l1036:	
	line	44
	
l2773:	
;continuousseg.c: 43: }
;continuousseg.c: 44: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	45
;continuousseg.c: 45: while(count<3000)
	goto	l2783
	
l1038:	
	line	47
;continuousseg.c: 46: {
;continuousseg.c: 47: RA2=0;RA3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	bsf	(43/8),(43)&7
	line	48
	
l2775:	
;continuousseg.c: 48: PORTC=arr[seg2];
	movf	(main@seg2),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	49
	
l2777:	
;continuousseg.c: 49: RA4=0;RA5=1;
	bcf	(44/8),(44)&7
	
l2779:	
	bsf	(45/8),(45)&7
	line	50
;continuousseg.c: 50: PORTD=arr[segg2];
	movf	(main@segg2),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(8)	;volatile
	line	51
	
l2781:	
;continuousseg.c: 51: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2783
	line	52
	
l1037:	
	line	45
	
l2783:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2665
	movlw	low(0BB8h)
	subwf	(main@count),w
u2665:

	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l1038
u2660:
	goto	l2785
	
l1039:	
	line	53
	
l2785:	
;continuousseg.c: 52: }
;continuousseg.c: 53: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	54
	
l2787:	
;continuousseg.c: 54: if(RA1==1 || RA6==1)
	btfsc	(41/8),(41)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l1028
u2670:
	
l2789:	
	btfss	(46/8),(46)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l1032
u2680:
	goto	l1028
	
l1042:	
	line	56
;continuousseg.c: 55: {
;continuousseg.c: 56: break;
	goto	l1028
	line	57
	
l1040:	
	line	58
	
l1032:	
	line	34
	btfss	(40/8),(40)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l2771
u2690:
	goto	l1028
	
l1043:	
	line	59
	
l1028:	
	line	60
;continuousseg.c: 57: }
;continuousseg.c: 58: }
;continuousseg.c: 59: }
;continuousseg.c: 60: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l1044
u2700:
	goto	l1045
	line	62
	
l2791:	
;continuousseg.c: 61: {
;continuousseg.c: 62: while(RA1==1);
	goto	l1045
	
l1046:	
	
l1045:	
	btfsc	(41/8),(41)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l1045
u2710:
	goto	l2793
	
l1047:	
	line	63
	
l2793:	
;continuousseg.c: 63: subseg++;
	movlw	low(01h)
	addwf	(main@subseg),f
	skipnc
	incf	(main@subseg+1),f
	movlw	high(01h)
	addwf	(main@subseg+1),f
	line	64
	
l2795:	
;continuousseg.c: 64: segg0=subseg;
	movf	(main@subseg+1),w
	clrf	(main@segg0+1)
	addwf	(main@segg0+1)
	movf	(main@subseg),w
	clrf	(main@segg0)
	addwf	(main@segg0)

	line	65
	
l2797:	
;continuousseg.c: 65: segg1=segg0%10;
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

	line	66
	
l2799:	
;continuousseg.c: 66: segg0=segg0/10;
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

	line	67
	
l2801:	
;continuousseg.c: 67: segg2=segg0%10;
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

	line	68
;continuousseg.c: 68: while(RA1!=1)
	goto	l1048
	
l1049:	
	line	70
;continuousseg.c: 69: {
;continuousseg.c: 70: while(count<3000)
	goto	l2811
	
l1051:	
	line	72
;continuousseg.c: 71: {
;continuousseg.c: 72: RA4=1;RA5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(44/8),(44)&7
	bcf	(45/8),(45)&7
	line	73
	
l2803:	
;continuousseg.c: 73: PORTD=arr[segg1];
	movf	(main@segg1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	74
	
l2805:	
;continuousseg.c: 74: RA2=1;RA3=0;
	bsf	(42/8),(42)&7
	
l2807:	
	bcf	(43/8),(43)&7
	line	75
;continuousseg.c: 75: PORTC=arr[seg1];
	movf	(main@seg1),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(7)	;volatile
	line	76
	
l2809:	
;continuousseg.c: 76: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2811
	line	77
	
l1050:	
	line	70
	
l2811:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2725
	movlw	low(0BB8h)
	subwf	(main@count),w
u2725:

	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l1051
u2720:
	goto	l2813
	
l1052:	
	line	78
	
l2813:	
;continuousseg.c: 77: }
;continuousseg.c: 78: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	79
;continuousseg.c: 79: while(count<3000)
	goto	l2823
	
l1054:	
	line	81
;continuousseg.c: 80: {
;continuousseg.c: 81: RA4=0;RA5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
	bsf	(45/8),(45)&7
	line	82
	
l2815:	
;continuousseg.c: 82: PORTD=arr[segg2];
	movf	(main@segg2),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	83
	
l2817:	
;continuousseg.c: 83: RA2=0;RA3=1;
	bcf	(42/8),(42)&7
	
l2819:	
	bsf	(43/8),(43)&7
	line	84
;continuousseg.c: 84: PORTC=arr[seg2];
	movf	(main@seg2),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(7)	;volatile
	line	85
	
l2821:	
;continuousseg.c: 85: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2823
	line	86
	
l1053:	
	line	79
	
l2823:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2735
	movlw	low(0BB8h)
	subwf	(main@count),w
u2735:

	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l1054
u2730:
	goto	l2825
	
l1055:	
	line	87
	
l2825:	
;continuousseg.c: 86: }
;continuousseg.c: 87: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	88
	
l2827:	
;continuousseg.c: 88: if(RA0==1 || RA6==1)
	btfsc	(40/8),(40)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l1044
u2740:
	
l2829:	
	btfss	(46/8),(46)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l1048
u2750:
	goto	l1044
	
l1058:	
	line	90
;continuousseg.c: 89: {
;continuousseg.c: 90: break;
	goto	l1044
	line	91
	
l1056:	
	line	92
	
l1048:	
	line	68
	btfss	(41/8),(41)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l2811
u2760:
	goto	l1044
	
l1059:	
	line	93
	
l1044:	
	line	94
;continuousseg.c: 91: }
;continuousseg.c: 92: }
;continuousseg.c: 93: }
;continuousseg.c: 94: if(RA6==1)
	btfss	(46/8),(46)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l2749
u2770:
	goto	l1061
	line	96
	
l2831:	
;continuousseg.c: 95: {
;continuousseg.c: 96: while(RA2==1);
	goto	l1061
	
l1062:	
	
l1061:	
	btfsc	(42/8),(42)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l1061
u2780:
	goto	l2833
	
l1063:	
	line	97
	
l2833:	
;continuousseg.c: 97: addition=mainseg+subseg;
	movf	(main@subseg),w
	addwf	(main@mainseg),w
	movwf	(main@addition)
	movf	(main@subseg+1),w
	skipnc
	incf	(main@subseg+1),w
	addwf	(main@mainseg+1),w
	movwf	1+(main@addition)
	line	98
;continuousseg.c: 98: temp=addition;
	movf	(main@addition+1),w
	clrf	(main@temp+1)
	addwf	(main@temp+1)
	movf	(main@addition),w
	clrf	(main@temp)
	addwf	(main@temp)

	line	99
	
l2835:	
;continuousseg.c: 99: ans4=temp%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@temp+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@temp),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@ans4+1)
	addwf	(main@ans4+1)
	movf	(0+(?___awmod)),w
	clrf	(main@ans4)
	addwf	(main@ans4)

	line	100
	
l2837:	
;continuousseg.c: 100: temp=temp/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@temp+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@temp),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@temp+1)
	addwf	(main@temp+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@temp)
	addwf	(main@temp)

	line	101
	
l2839:	
;continuousseg.c: 101: ans3=temp%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@temp+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@temp),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@ans3+1)
	addwf	(main@ans3+1)
	movf	(0+(?___awmod)),w
	clrf	(main@ans3)
	addwf	(main@ans3)

	line	102
	
l2841:	
;continuousseg.c: 102: temp=temp/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@temp+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@temp),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@temp+1)
	addwf	(main@temp+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@temp)
	addwf	(main@temp)

	line	103
	
l2843:	
;continuousseg.c: 103: ans2=temp%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@temp+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@temp),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@ans2+1)
	addwf	(main@ans2+1)
	movf	(0+(?___awmod)),w
	clrf	(main@ans2)
	addwf	(main@ans2)

	line	104
	
l2845:	
;continuousseg.c: 104: temp=temp/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@temp+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@temp),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@temp+1)
	addwf	(main@temp+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@temp)
	addwf	(main@temp)

	line	105
	
l2847:	
;continuousseg.c: 105: ans1=temp%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@temp+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@temp),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@ans1+1)
	addwf	(main@ans1+1)
	movf	(0+(?___awmod)),w
	clrf	(main@ans1)
	addwf	(main@ans1)

	line	106
;continuousseg.c: 106: while(RA0!=1 || RA1!=1)
	goto	l1064
	
l1065:	
	line	108
;continuousseg.c: 107: {
;continuousseg.c: 108: while(count<3000)
	goto	l2851
	
l1067:	
	line	110
;continuousseg.c: 109: {
;continuousseg.c: 110: RA7=0;RE2=1;RE0=1;RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(47/8),(47)&7
	bsf	(74/8),(74)&7
	bsf	(72/8),(72)&7
	bsf	(73/8),(73)&7
	line	111
	
l2849:	
;continuousseg.c: 111: PORTB=arr[0];
	movf	(main@arr),w
	movwf	(6)	;volatile
	line	112
;continuousseg.c: 112: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2851
	line	113
	
l1066:	
	line	108
	
l2851:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2795
	movlw	low(0BB8h)
	subwf	(main@count),w
u2795:

	skipc
	goto	u2791
	goto	u2790
u2791:
	goto	l1067
u2790:
	goto	l2853
	
l1068:	
	line	114
	
l2853:	
;continuousseg.c: 113: }
;continuousseg.c: 114: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	115
;continuousseg.c: 115: while(count<3000)
	goto	l2857
	
l1070:	
	line	117
	
l2855:	
;continuousseg.c: 116: {
;continuousseg.c: 117: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2857
	line	118
	
l1069:	
	line	115
	
l2857:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2805
	movlw	low(0BB8h)
	subwf	(main@count),w
u2805:

	skipc
	goto	u2801
	goto	u2800
u2801:
	goto	l2855
u2800:
	goto	l2859
	
l1071:	
	line	119
	
l2859:	
;continuousseg.c: 118: }
;continuousseg.c: 119: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	120
;continuousseg.c: 120: while(count<3000)
	goto	l2863
	
l1073:	
	line	122
;continuousseg.c: 121: {
;continuousseg.c: 122: RA7=1;RE2=0;RE0=1;RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(47/8),(47)&7
	bcf	(74/8),(74)&7
	bsf	(72/8),(72)&7
	bsf	(73/8),(73)&7
	line	123
	
l2861:	
;continuousseg.c: 123: PORTB=arr[1];
	movf	0+(main@arr)+02h,w
	movwf	(6)	;volatile
	line	124
;continuousseg.c: 124: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2863
	line	125
	
l1072:	
	line	120
	
l2863:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2815
	movlw	low(0BB8h)
	subwf	(main@count),w
u2815:

	skipc
	goto	u2811
	goto	u2810
u2811:
	goto	l1073
u2810:
	goto	l2865
	
l1074:	
	line	126
	
l2865:	
;continuousseg.c: 125: }
;continuousseg.c: 126: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	127
;continuousseg.c: 127: while(count<3000)
	goto	l2869
	
l1076:	
	line	129
;continuousseg.c: 128: {
;continuousseg.c: 129: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	130
	
l2867:	
;continuousseg.c: 130: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2869
	line	131
	
l1075:	
	line	127
	
l2869:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2825
	movlw	low(0BB8h)
	subwf	(main@count),w
u2825:

	skipc
	goto	u2821
	goto	u2820
u2821:
	goto	l1076
u2820:
	goto	l2871
	
l1077:	
	line	132
	
l2871:	
;continuousseg.c: 131: }
;continuousseg.c: 132: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	133
;continuousseg.c: 133: while(count<3000)
	goto	l2875
	
l1079:	
	line	135
;continuousseg.c: 134: {
;continuousseg.c: 135: RA7=1;RE2=1;RE0=0;RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(47/8),(47)&7
	bsf	(74/8),(74)&7
	bcf	(72/8),(72)&7
	bsf	(73/8),(73)&7
	line	136
	
l2873:	
;continuousseg.c: 136: PORTB=arr[2];
	movf	0+(main@arr)+04h,w
	movwf	(6)	;volatile
	line	137
;continuousseg.c: 137: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2875
	line	138
	
l1078:	
	line	133
	
l2875:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2835
	movlw	low(0BB8h)
	subwf	(main@count),w
u2835:

	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l1079
u2830:
	goto	l2877
	
l1080:	
	line	139
	
l2877:	
;continuousseg.c: 138: }
;continuousseg.c: 139: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	140
;continuousseg.c: 140: while(count<3000)
	goto	l2881
	
l1082:	
	line	142
	
l2879:	
;continuousseg.c: 141: {
;continuousseg.c: 142: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2881
	line	143
	
l1081:	
	line	140
	
l2881:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2845
	movlw	low(0BB8h)
	subwf	(main@count),w
u2845:

	skipc
	goto	u2841
	goto	u2840
u2841:
	goto	l2879
u2840:
	goto	l2883
	
l1083:	
	line	144
	
l2883:	
;continuousseg.c: 143: }
;continuousseg.c: 144: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	145
;continuousseg.c: 145: while(count<3000)
	goto	l2887
	
l1085:	
	line	147
;continuousseg.c: 146: {
;continuousseg.c: 147: RA7=1;RE2=1;RE0=1;RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(47/8),(47)&7
	bsf	(74/8),(74)&7
	bsf	(72/8),(72)&7
	bcf	(73/8),(73)&7
	line	148
	
l2885:	
;continuousseg.c: 148: PORTB=arr[3];
	movf	0+(main@arr)+06h,w
	movwf	(6)	;volatile
	line	149
;continuousseg.c: 149: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2887
	line	150
	
l1084:	
	line	145
	
l2887:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2855
	movlw	low(0BB8h)
	subwf	(main@count),w
u2855:

	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l1085
u2850:
	goto	l2889
	
l1086:	
	line	151
	
l2889:	
;continuousseg.c: 150: }
;continuousseg.c: 151: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	152
;continuousseg.c: 152: while(count<3000)
	goto	l2893
	
l1088:	
	line	154
	
l2891:	
;continuousseg.c: 153: {
;continuousseg.c: 154: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2893
	line	155
	
l1087:	
	line	152
	
l2893:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2865
	movlw	low(0BB8h)
	subwf	(main@count),w
u2865:

	skipc
	goto	u2861
	goto	u2860
u2861:
	goto	l2891
u2860:
	goto	l2895
	
l1089:	
	line	156
	
l2895:	
;continuousseg.c: 155: }
;continuousseg.c: 156: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	157
	
l2897:	
;continuousseg.c: 157: if(RA0==1 || RA1==1)
	btfsc	(40/8),(40)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l2749
u2870:
	
l2899:	
	btfss	(41/8),(41)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l1064
u2880:
	goto	l2749
	
l1092:	
	line	159
;continuousseg.c: 158: {
;continuousseg.c: 159: break;
	goto	l2749
	line	160
	
l1090:	
	line	161
	
l1064:	
	line	106
	btfss	(40/8),(40)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l2851
u2890:
	
l2901:	
	btfss	(41/8),(41)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l2851
u2900:
	goto	l2749
	
l1093:	
	goto	l2749
	line	162
	
l1060:	
	goto	l2749
	line	163
	
l1094:	
	line	24
	goto	l2749
	
l1095:	
	line	164
	
l1096:	
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
	
l2663:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2531
	goto	u2530
u2531:
	goto	l2667
u2530:
	line	10
	
l2665:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2667
	line	12
	
l1313:	
	line	13
	
l2667:	
	btfss	(___awmod@divisor+1),7
	goto	u2541
	goto	u2540
u2541:
	goto	l2671
u2540:
	line	14
	
l2669:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2671
	
l1314:	
	line	15
	
l2671:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2551
	goto	u2550
u2551:
	goto	l2689
u2550:
	line	16
	
l2673:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2679
	
l1317:	
	line	18
	
l2675:	
	movlw	01h
	
u2565:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2565
	line	19
	
l2677:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2679
	line	20
	
l1316:	
	line	17
	
l2679:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l2675
u2570:
	goto	l2681
	
l1318:	
	goto	l2681
	line	21
	
l1319:	
	line	22
	
l2681:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2585
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2585:
	skipc
	goto	u2581
	goto	u2580
u2581:
	goto	l2685
u2580:
	line	23
	
l2683:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2685
	
l1320:	
	line	24
	
l2685:	
	movlw	01h
	
u2595:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2595
	line	25
	
l2687:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l2681
u2600:
	goto	l2689
	
l1321:	
	goto	l2689
	line	26
	
l1315:	
	line	27
	
l2689:	
	movf	(___awmod@sign),w
	skipz
	goto	u2610
	goto	l2693
u2610:
	line	28
	
l2691:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2693
	
l1322:	
	line	29
	
l2693:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1323
	
l2695:	
	line	30
	
l1323:	
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
	
l2623:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2431
	goto	u2430
u2431:
	goto	l2627
u2430:
	line	11
	
l2625:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2627
	line	13
	
l1245:	
	line	14
	
l2627:	
	btfss	(___awdiv@dividend+1),7
	goto	u2441
	goto	u2440
u2441:
	goto	l2633
u2440:
	line	15
	
l2629:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2631:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2633
	line	17
	
l1246:	
	line	18
	
l2633:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2635:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2451
	goto	u2450
u2451:
	goto	l2655
u2450:
	line	20
	
l2637:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2643
	
l1249:	
	line	22
	
l2639:	
	movlw	01h
	
u2465:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2465
	line	23
	
l2641:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2643
	line	24
	
l1248:	
	line	21
	
l2643:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l2639
u2470:
	goto	l2645
	
l1250:	
	goto	l2645
	line	25
	
l1251:	
	line	26
	
l2645:	
	movlw	01h
	
u2485:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2485
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2495
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2495:
	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l2651
u2490:
	line	28
	
l2647:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2649:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2651
	line	30
	
l1252:	
	line	31
	
l2651:	
	movlw	01h
	
u2505:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2505
	line	32
	
l2653:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2511
	goto	u2510
u2511:
	goto	l2645
u2510:
	goto	l2655
	
l1253:	
	goto	l2655
	line	33
	
l1247:	
	line	34
	
l2655:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2520
	goto	l2659
u2520:
	line	35
	
l2657:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2659
	
l1254:	
	line	36
	
l2659:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1255
	
l2661:	
	line	37
	
l1255:	
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
