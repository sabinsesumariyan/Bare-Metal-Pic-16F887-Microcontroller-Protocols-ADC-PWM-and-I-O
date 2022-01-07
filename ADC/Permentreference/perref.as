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
	FNCALL	_main,_on
	FNCALL	_main,_type
	FNCALL	_main,_adc1
	FNCALL	_main,_adc2
	FNCALL	_main,_address
	FNCALL	_main,___awmod
	FNCALL	_main,_display
	FNCALL	_main,___awdiv
	FNCALL	_display,_pulse
	FNCALL	_address,_pulse
	FNCALL	_type,_pulse
	FNCALL	_on,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_tot1
	global	_tot2
	global	_ADCON0
psect	text262,local,class=CODE,delta=2
global __ptext262
__ptext262:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_GO
_GO	set	249
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
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
	file	"perref.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_tot1:
       ds      2

_tot2:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_adc1
??_adc1:	; 0 bytes @ 0x0
	global	??_adc2
??_adc2:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_pulse
?_pulse:	; 0 bytes @ 0x0
	global	?_on
?_on:	; 0 bytes @ 0x0
	global	?_type
?_type:	; 0 bytes @ 0x0
	global	?_address
?_address:	; 0 bytes @ 0x0
	global	?_display
?_display:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_adc1
?_adc1:	; 2 bytes @ 0x0
	global	?_adc2
?_adc2:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	delay@del
delay@del:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_pulse
??_pulse:	; 0 bytes @ 0x2
	global	??_on
??_on:	; 0 bytes @ 0x2
	global	??_type
??_type:	; 0 bytes @ 0x2
	global	??_address
??_address:	; 0 bytes @ 0x2
	global	??_display
??_display:	; 0 bytes @ 0x2
	global	address@data
address@data:	; 1 bytes @ 0x2
	global	display@data
display@data:	; 1 bytes @ 0x2
	global	adc1@high
adc1@high:	; 2 bytes @ 0x2
	global	adc2@high
adc2@high:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	adc1@low
adc1@low:	; 2 bytes @ 0x4
	global	adc2@low
adc2@low:	; 2 bytes @ 0x4
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
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0xA
	ds	2
	global	main@i_1797
main@i_1797:	; 2 bytes @ 0xC
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      0       4
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?_adc2	int  size(1) Largest target is 0
;;
;; ?_adc1	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
;;   _pulse->_delay
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
;; (0) _main                                                 5     5      0    1220
;;                                              9 COMMON     5     5      0
;;                                 _on
;;                               _type
;;                               _adc1
;;                               _adc2
;;                            _address
;;                            ___awmod
;;                            _display
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) _display                                              1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _address                                              1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _type                                                 0     0      0      22
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _on                                                   0     0      0      22
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) _pulse                                                0     0      0      22
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _adc2                                                 6     6      0     178
;;                                              0 COMMON     6     6      0
;; ---------------------------------------------------------------------------------
;; (1) _adc1                                                 6     6      0     178
;;                                              0 COMMON     6     6      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _on
;;     _pulse
;;       _delay
;;   _type
;;     _pulse
;;       _delay
;;   _adc1
;;   _adc2
;;   _address
;;     _pulse
;;       _delay
;;   ___awmod
;;   _display
;;     _pulse
;;       _delay
;;   ___awdiv
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      12       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       4       5        5.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      15      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 83 in file "E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   12[COMMON] int 
;;  i               2   10[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_on
;;		_type
;;		_adc1
;;		_adc2
;;		_address
;;		___awmod
;;		_display
;;		___awdiv
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
	line	83
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	84
	
l2556:	
;perref.c: 84: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	85
	
l2558:	
;perref.c: 85: TRISA=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	86
	
l2560:	
;perref.c: 86: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	87
;perref.c: 87: TRISB=0X02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	88
	
l2562:	
;perref.c: 88: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	89
	
l2564:	
;perref.c: 89: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	90
	
l2566:	
;perref.c: 90: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	91
	
l2568:	
;perref.c: 91: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	92
;perref.c: 92: ANSEL=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	93
;perref.c: 93: ANSELH=0X04;
	movlw	(04h)
	movwf	(393)^0180h	;volatile
	line	94
	
l2570:	
;perref.c: 94: on();
	fcall	_on
	line	95
	
l2572:	
;perref.c: 95: type();
	fcall	_type
	goto	l2574
	line	96
;perref.c: 96: while(1)
	
l1070:	
	line	98
	
l2574:	
;perref.c: 97: {
;perref.c: 98: adc1();
	fcall	_adc1
	line	99
	
l2576:	
;perref.c: 99: adc2();
	fcall	_adc2
	line	100
;perref.c: 100: if(tot2<tot1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tot2+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_tot1+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2615
	movf	(_tot1),w
	subwf	(_tot2),w
u2615:

	skipnc
	goto	u2611
	goto	u2610
u2611:
	goto	l2580
u2610:
	line	102
	
l2578:	
;perref.c: 101: {
;perref.c: 102: RA2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	103
;perref.c: 103: RA1=1;
	bsf	(41/8),(41)&7
	goto	l2580
	line	104
	
l1071:	
	line	105
	
l2580:	
;perref.c: 104: }
;perref.c: 105: if(tot2>tot1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tot1+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(_tot2+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2625
	movf	(_tot2),w
	subwf	(_tot1),w
u2625:

	skipnc
	goto	u2621
	goto	u2620
u2621:
	goto	l2584
u2620:
	line	107
	
l2582:	
;perref.c: 106: {
;perref.c: 107: RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	108
;perref.c: 108: RA2=1;
	bsf	(42/8),(42)&7
	goto	l2584
	line	109
	
l1072:	
	line	110
	
l2584:	
;perref.c: 109: }
;perref.c: 110: for(int i=3;i>=0;i--)
	movlw	low(03h)
	movwf	(main@i)
	movlw	high(03h)
	movwf	((main@i))+1
	
l2586:	
	btfss	(main@i+1),7
	goto	u2631
	goto	u2630
u2631:
	goto	l2590
u2630:
	goto	l2596
	
l2588:	
	goto	l2596
	line	111
	
l1073:	
	line	112
	
l2590:	
;perref.c: 111: {
;perref.c: 112: address(0X80+i);
	movf	(main@i),w
	addlw	080h
	fcall	_address
	line	113
;perref.c: 113: display(0X30+(tot1%10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tot1+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_tot1),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_display
	line	114
;perref.c: 114: tot1=tot1/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tot1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_tot1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_tot1+1)
	addwf	(_tot1+1)
	movf	(0+(?___awdiv)),w
	clrf	(_tot1)
	addwf	(_tot1)

	line	110
	
l2592:	
	movlw	low(-1)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(-1)
	addwf	(main@i+1),f
	
l2594:	
	btfss	(main@i+1),7
	goto	u2641
	goto	u2640
u2641:
	goto	l2590
u2640:
	goto	l2596
	
l1074:	
	line	116
	
l2596:	
;perref.c: 115: }
;perref.c: 116: for(int i=3;i>=0;i--)
	movlw	low(03h)
	movwf	(main@i_1797)
	movlw	high(03h)
	movwf	((main@i_1797))+1
	
l2598:	
	btfss	(main@i_1797+1),7
	goto	u2651
	goto	u2650
u2651:
	goto	l2602
u2650:
	goto	l2574
	
l2600:	
	goto	l2574
	line	117
	
l1075:	
	line	118
	
l2602:	
;perref.c: 117: {
;perref.c: 118: address(0XC0+i);
	movf	(main@i_1797),w
	addlw	0C0h
	fcall	_address
	line	119
;perref.c: 119: display(0X30+(tot2%10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tot2+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_tot2),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_display
	line	120
;perref.c: 120: tot2=tot2/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tot2+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_tot2),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_tot2+1)
	addwf	(_tot2+1)
	movf	(0+(?___awdiv)),w
	clrf	(_tot2)
	addwf	(_tot2)

	line	116
	
l2604:	
	movlw	low(-1)
	addwf	(main@i_1797),f
	skipnc
	incf	(main@i_1797+1),f
	movlw	high(-1)
	addwf	(main@i_1797+1),f
	
l2606:	
	btfss	(main@i_1797+1),7
	goto	u2661
	goto	u2660
u2661:
	goto	l2602
u2660:
	goto	l2574
	
l1076:	
	goto	l2574
	line	122
	
l1077:	
	line	96
	goto	l2574
	
l1078:	
	line	123
	
l1079:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_display
psect	text263,local,class=CODE,delta=2
global __ptext263
__ptext263:

;; *************** function _display *****************
;; Defined at:
;;		line 76 in file "E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text263
	file	"E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
	line	76
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@data stored from wreg
	movwf	(display@data)
	line	77
	
l2550:	
;perref.c: 77: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	78
;perref.c: 78: RD1=0;
	bcf	(65/8),(65)&7
	line	79
	
l2552:	
;perref.c: 79: PORTC=data;
	movf	(display@data),w
	movwf	(7)	;volatile
	line	80
	
l2554:	
;perref.c: 80: pulse();
	fcall	_pulse
	line	81
	
l1067:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_address
psect	text264,local,class=CODE,delta=2
global __ptext264
__ptext264:

;; *************** function _address *****************
;; Defined at:
;;		line 69 in file "E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text264
	file	"E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
	line	69
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 5
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
;address@data stored from wreg
	movwf	(address@data)
	line	70
	
l2544:	
;perref.c: 70: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	71
;perref.c: 71: RD1=0;
	bcf	(65/8),(65)&7
	line	72
	
l2546:	
;perref.c: 72: PORTC= data;
	movf	(address@data),w
	movwf	(7)	;volatile
	line	73
	
l2548:	
;perref.c: 73: pulse();
	fcall	_pulse
	line	74
	
l1064:	
	return
	opt stack 0
GLOBAL	__end_of_address
	__end_of_address:
;; =============== function _address ends ============

	signat	_address,4216
	global	_type
psect	text265,local,class=CODE,delta=2
global __ptext265
__ptext265:

;; *************** function _type *****************
;; Defined at:
;;		line 62 in file "E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text265
	file	"E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
	line	62
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 5
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	63
	
l2538:	
;perref.c: 63: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	64
;perref.c: 64: RD1=0;
	bcf	(65/8),(65)&7
	line	65
	
l2540:	
;perref.c: 65: PORTC=0X38;
	movlw	(038h)
	movwf	(7)	;volatile
	line	66
	
l2542:	
;perref.c: 66: pulse();
	fcall	_pulse
	line	67
	
l1061:	
	return
	opt stack 0
GLOBAL	__end_of_type
	__end_of_type:
;; =============== function _type ends ============

	signat	_type,88
	global	_on
psect	text266,local,class=CODE,delta=2
global __ptext266
__ptext266:

;; *************** function _on *****************
;; Defined at:
;;		line 55 in file "E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text266
	file	"E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
	line	55
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 5
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l2532:	
;perref.c: 56: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	57
;perref.c: 57: RD1=0;
	bcf	(65/8),(65)&7
	line	58
	
l2534:	
;perref.c: 58: PORTC=0X0E;
	movlw	(0Eh)
	movwf	(7)	;volatile
	line	59
	
l2536:	
;perref.c: 59: pulse();
	fcall	_pulse
	line	60
	
l1058:	
	return
	opt stack 0
GLOBAL	__end_of_on
	__end_of_on:
;; =============== function _on ends ============

	signat	_on,88
	global	_pulse
psect	text267,local,class=CODE,delta=2
global __ptext267
__ptext267:

;; *************** function _pulse *****************
;; Defined at:
;;		line 48 in file "E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_on
;;		_type
;;		_address
;;		_display
;; This function uses a non-reentrant model
;;
psect	text267
	file	"E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
	line	48
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	49
	
l2526:	
;perref.c: 49: RD2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	line	50
	
l2528:	
;perref.c: 50: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	51
	
l2530:	
;perref.c: 51: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	52
;perref.c: 52: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	53
	
l1055:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	___awmod
psect	text268,local,class=CODE,delta=2
global __ptext268
__ptext268:

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
psect	text268
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2492:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2521
	goto	u2520
u2521:
	goto	l2496
u2520:
	line	10
	
l2494:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2496
	line	12
	
l1296:	
	line	13
	
l2496:	
	btfss	(___awmod@divisor+1),7
	goto	u2531
	goto	u2530
u2531:
	goto	l2500
u2530:
	line	14
	
l2498:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2500
	
l1297:	
	line	15
	
l2500:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2541
	goto	u2540
u2541:
	goto	l2518
u2540:
	line	16
	
l2502:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2508
	
l1300:	
	line	18
	
l2504:	
	movlw	01h
	
u2555:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2555
	line	19
	
l2506:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2508
	line	20
	
l1299:	
	line	17
	
l2508:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l2504
u2560:
	goto	l2510
	
l1301:	
	goto	l2510
	line	21
	
l1302:	
	line	22
	
l2510:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2575
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2575:
	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l2514
u2570:
	line	23
	
l2512:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2514
	
l1303:	
	line	24
	
l2514:	
	movlw	01h
	
u2585:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2585
	line	25
	
l2516:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l2510
u2590:
	goto	l2518
	
l1304:	
	goto	l2518
	line	26
	
l1298:	
	line	27
	
l2518:	
	movf	(___awmod@sign),w
	skipz
	goto	u2600
	goto	l2522
u2600:
	line	28
	
l2520:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2522
	
l1305:	
	line	29
	
l2522:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1306
	
l2524:	
	line	30
	
l1306:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text269,local,class=CODE,delta=2
global __ptext269
__ptext269:

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
psect	text269
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2452:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2421
	goto	u2420
u2421:
	goto	l2456
u2420:
	line	11
	
l2454:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2456
	line	13
	
l1228:	
	line	14
	
l2456:	
	btfss	(___awdiv@dividend+1),7
	goto	u2431
	goto	u2430
u2431:
	goto	l2462
u2430:
	line	15
	
l2458:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2460:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2462
	line	17
	
l1229:	
	line	18
	
l2462:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2464:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2441
	goto	u2440
u2441:
	goto	l2484
u2440:
	line	20
	
l2466:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2472
	
l1232:	
	line	22
	
l2468:	
	movlw	01h
	
u2455:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2455
	line	23
	
l2470:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2472
	line	24
	
l1231:	
	line	21
	
l2472:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l2468
u2460:
	goto	l2474
	
l1233:	
	goto	l2474
	line	25
	
l1234:	
	line	26
	
l2474:	
	movlw	01h
	
u2475:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2475
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2485
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2485:
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l2480
u2480:
	line	28
	
l2476:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2478:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2480
	line	30
	
l1235:	
	line	31
	
l2480:	
	movlw	01h
	
u2495:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2495
	line	32
	
l2482:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l2474
u2500:
	goto	l2484
	
l1236:	
	goto	l2484
	line	33
	
l1230:	
	line	34
	
l2484:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2510
	goto	l2488
u2510:
	line	35
	
l2486:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2488
	
l1237:	
	line	36
	
l2488:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1238
	
l2490:	
	line	37
	
l1238:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text270,local,class=CODE,delta=2
global __ptext270
__ptext270:

;; *************** function _delay *****************
;; Defined at:
;;		line 44 in file "E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
;; Parameters:    Size  Location     Type
;;  del             2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pulse
;; This function uses a non-reentrant model
;;
psect	text270
	file	"E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
	line	44
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	45
	
l2448:	
;perref.c: 45: while(del--);
	goto	l2450
	
l1050:	
	goto	l2450
	
l1049:	
	
l2450:	
	movlw	low(-1)
	addwf	(delay@del),f
	skipnc
	incf	(delay@del+1),f
	movlw	high(-1)
	addwf	(delay@del+1),f
	movlw	high(-1)
	xorwf	((delay@del+1)),w
	skipz
	goto	u2415
	movlw	low(-1)
	xorwf	((delay@del)),w
u2415:

	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l2450
u2410:
	goto	l1052
	
l1051:	
	line	46
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_adc2
psect	text271,local,class=CODE,delta=2
global __ptext271
__ptext271:

;; *************** function _adc2 *****************
;; Defined at:
;;		line 23 in file "E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  low             2    4[COMMON] int 
;;  high            2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2  1038[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text271
	file	"E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
	line	23
	global	__size_of_adc2
	__size_of_adc2	equ	__end_of_adc2-_adc2
	
_adc2:	
	opt	stack 7
; Regs used in _adc2: [wreg+status,2+status,0]
	line	25
	
l2426:	
;perref.c: 24: int high,low;
;perref.c: 25: ADCON0=0X2B;
	movlw	(02Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	26
;perref.c: 26: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	27
;perref.c: 27: while(GO!=0);
	goto	l1039
	
l1040:	
	
l1039:	
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(249/8),(249)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l1039
u2360:
	goto	l2428
	
l1041:	
	line	28
	
l2428:	
;perref.c: 28: low=ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_adc2+0)+0
	clrf	(??_adc2+0)+0+1
	movf	0+(??_adc2+0)+0,w
	movwf	(adc2@low)
	movf	1+(??_adc2+0)+0,w
	movwf	(adc2@low+1)
	line	29
;perref.c: 29: high=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_adc2+0)+0
	clrf	(??_adc2+0)+0+1
	movf	0+(??_adc2+0)+0,w
	movwf	(adc2@high)
	movf	1+(??_adc2+0)+0,w
	movwf	(adc2@high+1)
	line	30
	
l2430:	
;perref.c: 30: if(high==0)
	movf	((adc2@high+1)),w
	iorwf	((adc2@high)),w
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l2434
u2370:
	line	31
	
l2432:	
;perref.c: 31: tot2 = low+0;
	movf	(adc2@low+1),w
	clrf	(_tot2+1)
	addwf	(_tot2+1)
	movf	(adc2@low),w
	clrf	(_tot2)
	addwf	(_tot2)

	goto	l2434
	
l1042:	
	line	32
	
l2434:	
;perref.c: 32: if(high==1)
	movlw	01h
	xorwf	(adc2@high),w
	iorwf	(adc2@high+1),w
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l2438
u2380:
	line	33
	
l2436:	
;perref.c: 33: tot2 = low+256;
	movf	(adc2@low),w
	addlw	low(0100h)
	movwf	(_tot2)
	movf	(adc2@low+1),w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(_tot2)
	goto	l2438
	
l1043:	
	line	34
	
l2438:	
;perref.c: 34: if(high==2)
	movlw	02h
	xorwf	(adc2@high),w
	iorwf	(adc2@high+1),w
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l2442
u2390:
	line	35
	
l2440:	
;perref.c: 35: tot2 = low+512;
	movf	(adc2@low),w
	addlw	low(0200h)
	movwf	(_tot2)
	movf	(adc2@low+1),w
	skipnc
	addlw	1
	addlw	high(0200h)
	movwf	1+(_tot2)
	goto	l2442
	
l1044:	
	line	36
	
l2442:	
;perref.c: 36: if(high==3)
	movlw	03h
	xorwf	(adc2@high),w
	iorwf	(adc2@high+1),w
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l1046
u2400:
	line	37
	
l2444:	
;perref.c: 37: tot2 = low+768;
	movf	(adc2@low),w
	addlw	low(0300h)
	movwf	(_tot2)
	movf	(adc2@low+1),w
	skipnc
	addlw	1
	addlw	high(0300h)
	movwf	1+(_tot2)
	goto	l1046
	
l1045:	
	goto	l1046
	line	38
	
l2446:	
	line	39
;perref.c: 38: return tot2;
;	Return value of _adc2 is never used
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_adc2
	__end_of_adc2:
;; =============== function _adc2 ends ============

	signat	_adc2,90
	global	_adc1
psect	text272,local,class=CODE,delta=2
global __ptext272
__ptext272:

;; *************** function _adc1 *****************
;; Defined at:
;;		line 5 in file "E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  low             2    4[COMMON] int 
;;  high            2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2  1028[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text272
	file	"E:\KTU\Softwares\MP lab\ADC\Permentreference\perref.c"
	line	5
	global	__size_of_adc1
	__size_of_adc1	equ	__end_of_adc1-_adc1
	
_adc1:	
	opt	stack 7
; Regs used in _adc1: [wreg+status,2+status,0]
	line	7
	
l2404:	
;perref.c: 6: int high,low;
;perref.c: 7: ADCON0=0X83;
	movlw	(083h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	8
;perref.c: 8: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	9
;perref.c: 9: while(GO!=0);
	goto	l1029
	
l1030:	
	
l1029:	
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(249/8),(249)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l1029
u2310:
	goto	l2406
	
l1031:	
	line	10
	
l2406:	
;perref.c: 10: low=ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_adc1+0)+0
	clrf	(??_adc1+0)+0+1
	movf	0+(??_adc1+0)+0,w
	movwf	(adc1@low)
	movf	1+(??_adc1+0)+0,w
	movwf	(adc1@low+1)
	line	11
;perref.c: 11: high=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_adc1+0)+0
	clrf	(??_adc1+0)+0+1
	movf	0+(??_adc1+0)+0,w
	movwf	(adc1@high)
	movf	1+(??_adc1+0)+0,w
	movwf	(adc1@high+1)
	line	12
	
l2408:	
;perref.c: 12: if(high==0)
	movf	((adc1@high+1)),w
	iorwf	((adc1@high)),w
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l2412
u2320:
	line	13
	
l2410:	
;perref.c: 13: tot1 = low+0;
	movf	(adc1@low+1),w
	clrf	(_tot1+1)
	addwf	(_tot1+1)
	movf	(adc1@low),w
	clrf	(_tot1)
	addwf	(_tot1)

	goto	l2412
	
l1032:	
	line	14
	
l2412:	
;perref.c: 14: if(high==1)
	movlw	01h
	xorwf	(adc1@high),w
	iorwf	(adc1@high+1),w
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l2416
u2330:
	line	15
	
l2414:	
;perref.c: 15: tot1 = low+256;
	movf	(adc1@low),w
	addlw	low(0100h)
	movwf	(_tot1)
	movf	(adc1@low+1),w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(_tot1)
	goto	l2416
	
l1033:	
	line	16
	
l2416:	
;perref.c: 16: if(high==2)
	movlw	02h
	xorwf	(adc1@high),w
	iorwf	(adc1@high+1),w
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l2420
u2340:
	line	17
	
l2418:	
;perref.c: 17: tot1 = low+512;
	movf	(adc1@low),w
	addlw	low(0200h)
	movwf	(_tot1)
	movf	(adc1@low+1),w
	skipnc
	addlw	1
	addlw	high(0200h)
	movwf	1+(_tot1)
	goto	l2420
	
l1034:	
	line	18
	
l2420:	
;perref.c: 18: if(high==3)
	movlw	03h
	xorwf	(adc1@high),w
	iorwf	(adc1@high+1),w
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l1036
u2350:
	line	19
	
l2422:	
;perref.c: 19: tot1 = low+768;
	movf	(adc1@low),w
	addlw	low(0300h)
	movwf	(_tot1)
	movf	(adc1@low+1),w
	skipnc
	addlw	1
	addlw	high(0300h)
	movwf	1+(_tot1)
	goto	l1036
	
l1035:	
	goto	l1036
	line	20
	
l2424:	
	line	21
;perref.c: 20: return tot1;
;	Return value of _adc1 is never used
	
l1036:	
	return
	opt stack 0
GLOBAL	__end_of_adc1
	__end_of_adc1:
;; =============== function _adc1 ends ============

	signat	_adc1,90
psect	text273,local,class=CODE,delta=2
global __ptext273
__ptext273:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
