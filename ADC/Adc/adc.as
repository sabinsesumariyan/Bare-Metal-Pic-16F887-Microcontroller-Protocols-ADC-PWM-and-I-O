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
	FNCALL	_main,_adc
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
	global	_x
	global	_ADCON0
psect	text238,local,class=CODE,delta=2
global __ptext238
__ptext238:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_GO
_GO	set	249
	global	_RA1
_RA1	set	41
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
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"adc.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_x:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_adc
?_adc:	; 0 bytes @ 0x0
	global	??_adc
??_adc:	; 0 bytes @ 0x0
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
	global	main@t
main@t:	; 2 bytes @ 0x9
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0xB
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      0       2
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0     842
;;                                              9 COMMON     4     4      0
;;                                 _on
;;                               _type
;;                                _adc
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
;; (1) _adc                                                  2     2      0       0
;;                                              0 COMMON     2     2      0
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
;;   _adc
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
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       F       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       2       5        2.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      12      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 53 in file "E:\KTU\Softwares\MP lab\Adc\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   11[COMMON] int 
;;  t               2    9[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_on
;;		_type
;;		_adc
;;		_address
;;		___awmod
;;		_display
;;		___awdiv
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\Adc\adc.c"
	line	53
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	54
	
l2416:	
;adc.c: 54: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	55
	
l2418:	
;adc.c: 55: TRISA=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	56
	
l2420:	
;adc.c: 56: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	57
	
l2422:	
;adc.c: 57: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	58
	
l2424:	
;adc.c: 58: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	59
	
l2426:	
;adc.c: 59: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	60
	
l2428:	
;adc.c: 60: ANSEL=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	61
;adc.c: 61: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	62
	
l2430:	
;adc.c: 62: on();
	fcall	_on
	line	63
	
l2432:	
;adc.c: 63: type();
	fcall	_type
	goto	l2434
	line	64
;adc.c: 64: while(1)
	
l1054:	
	line	66
	
l2434:	
;adc.c: 65: {
;adc.c: 66: adc();
	fcall	_adc
	line	67
	
l2436:	
;adc.c: 67: int t=x;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_x+1),w
	clrf	(main@t+1)
	addwf	(main@t+1)
	movf	(_x),w
	clrf	(main@t)
	addwf	(main@t)

	line	68
	
l2438:	
;adc.c: 68: for(int i=3;i>=0;i--)
	movlw	low(03h)
	movwf	(main@i)
	movlw	high(03h)
	movwf	((main@i))+1
	
l2440:	
	btfss	(main@i+1),7
	goto	u2401
	goto	u2400
u2401:
	goto	l2444
u2400:
	goto	l2450
	
l2442:	
	goto	l2450
	line	69
	
l1055:	
	line	70
	
l2444:	
;adc.c: 69: {
;adc.c: 70: address(0X80+i);
	movf	(main@i),w
	addlw	080h
	fcall	_address
	line	71
;adc.c: 71: display(0X30+(t%10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@t+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@t),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_display
	line	72
;adc.c: 72: t=t/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@t+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@t),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	(main@t+1)
	addwf	(main@t+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@t)
	addwf	(main@t)

	line	68
	
l2446:	
	movlw	low(-1)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(-1)
	addwf	(main@i+1),f
	
l2448:	
	btfss	(main@i+1),7
	goto	u2411
	goto	u2410
u2411:
	goto	l2444
u2410:
	goto	l2450
	
l1056:	
	line	74
	
l2450:	
;adc.c: 73: }
;adc.c: 74: if(x==1023)
	movlw	high(03FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_x+1),w
	skipz
	goto	u2425
	movlw	low(03FFh)
	xorwf	(_x),w
u2425:

	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l1057
u2420:
	line	76
	
l2452:	
;adc.c: 75: {
;adc.c: 76: RA1=1;
	bsf	(41/8),(41)&7
	line	77
;adc.c: 77: }
	goto	l2434
	line	78
	
l1057:	
	line	80
;adc.c: 78: else
;adc.c: 79: {
;adc.c: 80: RA1=0;
	bcf	(41/8),(41)&7
	goto	l2434
	line	81
	
l1058:	
	goto	l2434
	line	82
	
l1059:	
	line	64
	goto	l2434
	
l1060:	
	line	83
	
l1061:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_display
psect	text239,local,class=CODE,delta=2
global __ptext239
__ptext239:

;; *************** function _display *****************
;; Defined at:
;;		line 46 in file "E:\KTU\Softwares\MP lab\Adc\adc.c"
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
psect	text239
	file	"E:\KTU\Softwares\MP lab\Adc\adc.c"
	line	46
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@data stored from wreg
	movwf	(display@data)
	line	47
	
l2410:	
;adc.c: 47: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	48
;adc.c: 48: RD1=0;
	bcf	(65/8),(65)&7
	line	49
	
l2412:	
;adc.c: 49: PORTC=data;
	movf	(display@data),w
	movwf	(7)	;volatile
	line	50
	
l2414:	
;adc.c: 50: pulse();
	fcall	_pulse
	line	51
	
l1051:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_address
psect	text240,local,class=CODE,delta=2
global __ptext240
__ptext240:

;; *************** function _address *****************
;; Defined at:
;;		line 39 in file "E:\KTU\Softwares\MP lab\Adc\adc.c"
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
psect	text240
	file	"E:\KTU\Softwares\MP lab\Adc\adc.c"
	line	39
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 5
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
;address@data stored from wreg
	movwf	(address@data)
	line	40
	
l2404:	
;adc.c: 40: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	41
;adc.c: 41: RD1=0;
	bcf	(65/8),(65)&7
	line	42
	
l2406:	
;adc.c: 42: PORTC= data;
	movf	(address@data),w
	movwf	(7)	;volatile
	line	43
	
l2408:	
;adc.c: 43: pulse();
	fcall	_pulse
	line	44
	
l1048:	
	return
	opt stack 0
GLOBAL	__end_of_address
	__end_of_address:
;; =============== function _address ends ============

	signat	_address,4216
	global	_type
psect	text241,local,class=CODE,delta=2
global __ptext241
__ptext241:

;; *************** function _type *****************
;; Defined at:
;;		line 32 in file "E:\KTU\Softwares\MP lab\Adc\adc.c"
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
psect	text241
	file	"E:\KTU\Softwares\MP lab\Adc\adc.c"
	line	32
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 5
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l2398:	
;adc.c: 33: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	34
;adc.c: 34: RD1=0;
	bcf	(65/8),(65)&7
	line	35
	
l2400:	
;adc.c: 35: PORTC=0X38;
	movlw	(038h)
	movwf	(7)	;volatile
	line	36
	
l2402:	
;adc.c: 36: pulse();
	fcall	_pulse
	line	37
	
l1045:	
	return
	opt stack 0
GLOBAL	__end_of_type
	__end_of_type:
;; =============== function _type ends ============

	signat	_type,88
	global	_on
psect	text242,local,class=CODE,delta=2
global __ptext242
__ptext242:

;; *************** function _on *****************
;; Defined at:
;;		line 25 in file "E:\KTU\Softwares\MP lab\Adc\adc.c"
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
psect	text242
	file	"E:\KTU\Softwares\MP lab\Adc\adc.c"
	line	25
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 5
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	26
	
l2392:	
;adc.c: 26: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	27
;adc.c: 27: RD1=0;
	bcf	(65/8),(65)&7
	line	28
	
l2394:	
;adc.c: 28: PORTC=0X0E;
	movlw	(0Eh)
	movwf	(7)	;volatile
	line	29
	
l2396:	
;adc.c: 29: pulse();
	fcall	_pulse
	line	30
	
l1042:	
	return
	opt stack 0
GLOBAL	__end_of_on
	__end_of_on:
;; =============== function _on ends ============

	signat	_on,88
	global	_pulse
psect	text243,local,class=CODE,delta=2
global __ptext243
__ptext243:

;; *************** function _pulse *****************
;; Defined at:
;;		line 18 in file "E:\KTU\Softwares\MP lab\Adc\adc.c"
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
psect	text243
	file	"E:\KTU\Softwares\MP lab\Adc\adc.c"
	line	18
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
l2386:	
;adc.c: 19: RD2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	line	20
	
l2388:	
;adc.c: 20: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	21
	
l2390:	
;adc.c: 21: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	22
;adc.c: 22: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	23
	
l1039:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	___awmod
psect	text244,local,class=CODE,delta=2
global __ptext244
__ptext244:

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
psect	text244
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2352:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2311
	goto	u2310
u2311:
	goto	l2356
u2310:
	line	10
	
l2354:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2356
	line	12
	
l1278:	
	line	13
	
l2356:	
	btfss	(___awmod@divisor+1),7
	goto	u2321
	goto	u2320
u2321:
	goto	l2360
u2320:
	line	14
	
l2358:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2360
	
l1279:	
	line	15
	
l2360:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2331
	goto	u2330
u2331:
	goto	l2378
u2330:
	line	16
	
l2362:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2368
	
l1282:	
	line	18
	
l2364:	
	movlw	01h
	
u2345:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2345
	line	19
	
l2366:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2368
	line	20
	
l1281:	
	line	17
	
l2368:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l2364
u2350:
	goto	l2370
	
l1283:	
	goto	l2370
	line	21
	
l1284:	
	line	22
	
l2370:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2365
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2365:
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l2374
u2360:
	line	23
	
l2372:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2374
	
l1285:	
	line	24
	
l2374:	
	movlw	01h
	
u2375:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2375
	line	25
	
l2376:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l2370
u2380:
	goto	l2378
	
l1286:	
	goto	l2378
	line	26
	
l1280:	
	line	27
	
l2378:	
	movf	(___awmod@sign),w
	skipz
	goto	u2390
	goto	l2382
u2390:
	line	28
	
l2380:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2382
	
l1287:	
	line	29
	
l2382:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1288
	
l2384:	
	line	30
	
l1288:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text245,local,class=CODE,delta=2
global __ptext245
__ptext245:

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
psect	text245
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2312:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2211
	goto	u2210
u2211:
	goto	l2316
u2210:
	line	11
	
l2314:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2316
	line	13
	
l1210:	
	line	14
	
l2316:	
	btfss	(___awdiv@dividend+1),7
	goto	u2221
	goto	u2220
u2221:
	goto	l2322
u2220:
	line	15
	
l2318:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2320:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2322
	line	17
	
l1211:	
	line	18
	
l2322:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2324:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2231
	goto	u2230
u2231:
	goto	l2344
u2230:
	line	20
	
l2326:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2332
	
l1214:	
	line	22
	
l2328:	
	movlw	01h
	
u2245:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2245
	line	23
	
l2330:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2332
	line	24
	
l1213:	
	line	21
	
l2332:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l2328
u2250:
	goto	l2334
	
l1215:	
	goto	l2334
	line	25
	
l1216:	
	line	26
	
l2334:	
	movlw	01h
	
u2265:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2265
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2275
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2275:
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l2340
u2270:
	line	28
	
l2336:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2338:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2340
	line	30
	
l1217:	
	line	31
	
l2340:	
	movlw	01h
	
u2285:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2285
	line	32
	
l2342:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2291
	goto	u2290
u2291:
	goto	l2334
u2290:
	goto	l2344
	
l1218:	
	goto	l2344
	line	33
	
l1212:	
	line	34
	
l2344:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2300
	goto	l2348
u2300:
	line	35
	
l2346:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2348
	
l1219:	
	line	36
	
l2348:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1220
	
l2350:	
	line	37
	
l1220:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text246,local,class=CODE,delta=2
global __ptext246
__ptext246:

;; *************** function _delay *****************
;; Defined at:
;;		line 14 in file "E:\KTU\Softwares\MP lab\Adc\adc.c"
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
psect	text246
	file	"E:\KTU\Softwares\MP lab\Adc\adc.c"
	line	14
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	15
	
l2308:	
;adc.c: 15: while(del--);
	goto	l2310
	
l1034:	
	goto	l2310
	
l1033:	
	
l2310:	
	movlw	low(-1)
	addwf	(delay@del),f
	skipnc
	incf	(delay@del+1),f
	movlw	high(-1)
	addwf	(delay@del+1),f
	movlw	high(-1)
	xorwf	((delay@del+1)),w
	skipz
	goto	u2205
	movlw	low(-1)
	xorwf	((delay@del)),w
u2205:

	skipz
	goto	u2201
	goto	u2200
u2201:
	goto	l2310
u2200:
	goto	l1036
	
l1035:	
	line	16
	
l1036:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_adc
psect	text247,local,class=CODE,delta=2
global __ptext247
__ptext247:

;; *************** function _adc *****************
;; Defined at:
;;		line 4 in file "E:\KTU\Softwares\MP lab\Adc\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text247
	file	"E:\KTU\Softwares\MP lab\Adc\adc.c"
	line	4
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
	
_adc:	
	opt	stack 7
; Regs used in _adc: [wreg+btemp+1]
	line	5
	
l2304:	
;adc.c: 5: ADCON0=0X83;
	movlw	(083h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	6
;adc.c: 6: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	7
;adc.c: 7: while(GO==1);
	goto	l1027
	
l1028:	
	
l1027:	
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(249/8),(249)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l1027
u2190:
	goto	l2306
	
l1029:	
	line	8
	
l2306:	
;adc.c: 8: x=ADRESL|(ADRESH<<8);
	movf	(30),w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	(??_adc+0)+0,w
	movwf	(??_adc+0)+1
	clrf	(??_adc+0)+0
	movf	0+(??_adc+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_x)
	movf	1+(??_adc+0)+0,w
	movwf	1+(_x)
	line	9
	
l1030:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
;; =============== function _adc ends ============

	signat	_adc,88
psect	text248,local,class=CODE,delta=2
global __ptext248
__ptext248:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
