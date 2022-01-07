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
	FNCALL	_main,_pwm
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
	global	_tot
	global	_ADCON0
psect	text262,local,class=CODE,delta=2
global __ptext262
__ptext262:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_T2CON
_T2CON	set	18
	global	_GO
_GO	set	249
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
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
	file	"adcpwm.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_tot:
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
	global	??_adc
??_adc:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_pwm
?_pwm:	; 0 bytes @ 0x0
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
	global	?_adc
?_adc:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	delay@a
delay@a:	; 2 bytes @ 0x0
	global	pwm@a
pwm@a:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_pwm
??_pwm:	; 0 bytes @ 0x2
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
	global	adc@high
adc@high:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	adc@low
adc@low:	; 2 bytes @ 0x4
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
	global	main@count
main@count:	; 2 bytes @ 0x9
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
;; ?_adc	int  size(1) Largest target is 0
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
;; (0) _main                                                 4     4      0    1019
;;                                              9 COMMON     4     4      0
;;                                 _on
;;                               _type
;;                                _adc
;;                                _pwm
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
;; (1) _pwm                                                  4     2      2      44
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _adc                                                  6     6      0     178
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
;;   _adc
;;   _pwm
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
;;		line 73 in file "E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   11[COMMON] int 
;;  count           2    9[COMMON] int 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_on
;;		_type
;;		_adc
;;		_pwm
;;		_address
;;		___awmod
;;		_display
;;		___awdiv
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
	line	73
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	74
	
l2459:	
;adcpwm.c: 74: int count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	75
;adcpwm.c: 75: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	76
;adcpwm.c: 76: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	77
;adcpwm.c: 77: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	78
	
l2461:	
;adcpwm.c: 78: TRISB=0X02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	79
	
l2463:	
;adcpwm.c: 79: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	80
	
l2465:	
;adcpwm.c: 80: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	81
	
l2467:	
;adcpwm.c: 81: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	82
;adcpwm.c: 82: ANSELH=0X04;
	movlw	(04h)
	movwf	(393)^0180h	;volatile
	line	83
	
l2469:	
;adcpwm.c: 83: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	84
	
l2471:	
;adcpwm.c: 84: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	85
	
l2473:	
;adcpwm.c: 85: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	86
	
l2475:	
;adcpwm.c: 86: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	87
;adcpwm.c: 87: T2CON=0X07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	90
;adcpwm.c: 90: CCP1CON=0X0D;
	movlw	(0Dh)
	movwf	(23)	;volatile
	line	91
	
l2477:	
;adcpwm.c: 91: on();
	fcall	_on
	line	92
	
l2479:	
;adcpwm.c: 92: type();
	fcall	_type
	goto	l2481
	line	93
;adcpwm.c: 93: while(1)
	
l1061:	
	line	95
	
l2481:	
;adcpwm.c: 94: {
;adcpwm.c: 95: adc();
	fcall	_adc
	line	97
	
l2483:	
;adcpwm.c: 97: pwm(tot);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tot+1),w
	clrf	(?_pwm+1)
	addwf	(?_pwm+1)
	movf	(_tot),w
	clrf	(?_pwm)
	addwf	(?_pwm)

	fcall	_pwm
	line	98
;adcpwm.c: 98: for(int i=3;i>=0;i--)
	movlw	low(03h)
	movwf	(main@i)
	movlw	high(03h)
	movwf	((main@i))+1
	
l2485:	
	btfss	(main@i+1),7
	goto	u2491
	goto	u2490
u2491:
	goto	l2489
u2490:
	goto	l2481
	
l2487:	
	goto	l2481
	line	99
	
l1062:	
	line	100
	
l2489:	
;adcpwm.c: 99: {
;adcpwm.c: 100: address(0X80+i);
	movf	(main@i),w
	addlw	080h
	fcall	_address
	line	101
;adcpwm.c: 101: display(0X30+(tot%10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tot+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_tot),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	fcall	_display
	line	102
;adcpwm.c: 102: tot=tot/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_tot+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_tot),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_tot+1)
	addwf	(_tot+1)
	movf	(0+(?___awdiv)),w
	clrf	(_tot)
	addwf	(_tot)

	line	98
	
l2491:	
	movlw	low(-1)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(-1)
	addwf	(main@i+1),f
	
l2493:	
	btfss	(main@i+1),7
	goto	u2501
	goto	u2500
u2501:
	goto	l2489
u2500:
	goto	l2481
	
l1063:	
	goto	l2481
	line	105
	
l1064:	
	line	93
	goto	l2481
	
l1065:	
	line	106
	
l1066:	
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
;;		line 64 in file "E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
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
	file	"E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
	line	64
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@data stored from wreg
	movwf	(display@data)
	line	65
	
l2453:	
;adcpwm.c: 65: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	66
;adcpwm.c: 66: RA1=0;
	bcf	(41/8),(41)&7
	line	67
	
l2455:	
;adcpwm.c: 67: PORTD=data;
	movf	(display@data),w
	movwf	(8)	;volatile
	line	68
	
l2457:	
;adcpwm.c: 68: pulse();
	fcall	_pulse
	line	69
	
l1058:	
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
;;		line 57 in file "E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
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
	file	"E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
	line	57
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 5
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
;address@data stored from wreg
	movwf	(address@data)
	line	58
	
l2447:	
;adcpwm.c: 58: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	59
;adcpwm.c: 59: RA1=0;
	bcf	(41/8),(41)&7
	line	60
	
l2449:	
;adcpwm.c: 60: PORTD= data;
	movf	(address@data),w
	movwf	(8)	;volatile
	line	61
	
l2451:	
;adcpwm.c: 61: pulse();
	fcall	_pulse
	line	62
	
l1055:	
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
;;		line 50 in file "E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
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
	file	"E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
	line	50
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 5
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	51
	
l2441:	
;adcpwm.c: 51: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	52
;adcpwm.c: 52: RA1=0;
	bcf	(41/8),(41)&7
	line	53
	
l2443:	
;adcpwm.c: 53: PORTD=0X38;
	movlw	(038h)
	movwf	(8)	;volatile
	line	54
	
l2445:	
;adcpwm.c: 54: pulse();
	fcall	_pulse
	line	55
	
l1052:	
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
;;		line 43 in file "E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
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
	file	"E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
	line	43
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 5
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l2435:	
;adcpwm.c: 44: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	45
;adcpwm.c: 45: RA1=0;
	bcf	(41/8),(41)&7
	line	46
	
l2437:	
;adcpwm.c: 46: PORTD=0X0E;
	movlw	(0Eh)
	movwf	(8)	;volatile
	line	47
	
l2439:	
;adcpwm.c: 47: pulse();
	fcall	_pulse
	line	48
	
l1049:	
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
;;		line 36 in file "E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
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
	file	"E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
	line	36
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	37
	
l2429:	
;adcpwm.c: 37: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	line	38
	
l2431:	
;adcpwm.c: 38: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	39
	
l2433:	
;adcpwm.c: 39: RA2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	40
;adcpwm.c: 40: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	41
	
l1046:	
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
	
l2395:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2401
	goto	u2400
u2401:
	goto	l2399
u2400:
	line	10
	
l2397:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2399
	line	12
	
l1283:	
	line	13
	
l2399:	
	btfss	(___awmod@divisor+1),7
	goto	u2411
	goto	u2410
u2411:
	goto	l2403
u2410:
	line	14
	
l2401:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2403
	
l1284:	
	line	15
	
l2403:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2421
	goto	u2420
u2421:
	goto	l2421
u2420:
	line	16
	
l2405:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2411
	
l1287:	
	line	18
	
l2407:	
	movlw	01h
	
u2435:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2435
	line	19
	
l2409:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2411
	line	20
	
l1286:	
	line	17
	
l2411:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l2407
u2440:
	goto	l2413
	
l1288:	
	goto	l2413
	line	21
	
l1289:	
	line	22
	
l2413:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2455
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2455:
	skipc
	goto	u2451
	goto	u2450
u2451:
	goto	l2417
u2450:
	line	23
	
l2415:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2417
	
l1290:	
	line	24
	
l2417:	
	movlw	01h
	
u2465:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2465
	line	25
	
l2419:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l2413
u2470:
	goto	l2421
	
l1291:	
	goto	l2421
	line	26
	
l1285:	
	line	27
	
l2421:	
	movf	(___awmod@sign),w
	skipz
	goto	u2480
	goto	l2425
u2480:
	line	28
	
l2423:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2425
	
l1292:	
	line	29
	
l2425:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1293
	
l2427:	
	line	30
	
l1293:	
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
	
l2355:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l2359
u2300:
	line	11
	
l2357:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2359
	line	13
	
l1215:	
	line	14
	
l2359:	
	btfss	(___awdiv@dividend+1),7
	goto	u2311
	goto	u2310
u2311:
	goto	l2365
u2310:
	line	15
	
l2361:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2363:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2365
	line	17
	
l1216:	
	line	18
	
l2365:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2367:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2321
	goto	u2320
u2321:
	goto	l2387
u2320:
	line	20
	
l2369:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2375
	
l1219:	
	line	22
	
l2371:	
	movlw	01h
	
u2335:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2335
	line	23
	
l2373:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2375
	line	24
	
l1218:	
	line	21
	
l2375:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l2371
u2340:
	goto	l2377
	
l1220:	
	goto	l2377
	line	25
	
l1221:	
	line	26
	
l2377:	
	movlw	01h
	
u2355:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2355
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2365
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2365:
	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l2383
u2360:
	line	28
	
l2379:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2381:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2383
	line	30
	
l1222:	
	line	31
	
l2383:	
	movlw	01h
	
u2375:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2375
	line	32
	
l2385:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2381
	goto	u2380
u2381:
	goto	l2377
u2380:
	goto	l2387
	
l1223:	
	goto	l2387
	line	33
	
l1217:	
	line	34
	
l2387:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2390
	goto	l2391
u2390:
	line	35
	
l2389:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2391
	
l1224:	
	line	36
	
l2391:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1225
	
l2393:	
	line	37
	
l1225:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_pwm
psect	text270,local,class=CODE,delta=2
global __ptext270
__ptext270:

;; *************** function _pwm *****************
;; Defined at:
;;		line 29 in file "E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text270
	file	"E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
	line	29
	global	__size_of_pwm
	__size_of_pwm	equ	__end_of_pwm-_pwm
	
_pwm:	
	opt	stack 7
; Regs used in _pwm: [wreg+status,2+status,0]
	line	30
	
l2353:	
;adcpwm.c: 30: CCPR1L=a>>2;
	movf	(pwm@a+1),w
	movwf	(??_pwm+0)+0+1
	movf	(pwm@a),w
	movwf	(??_pwm+0)+0
	movlw	02h
u2295:
	clrc
	rrf	(??_pwm+0)+1,f
	rrf	(??_pwm+0)+0,f
	addlw	-1
	skipz
	goto	u2295
	movf	0+(??_pwm+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	31
;adcpwm.c: 31: CCP1CON=a&0x30|CCP1CON;
	movf	(pwm@a),w
	andlw	030h
	iorwf	(23),w
	movwf	(23)	;volatile
	line	32
	
l1043:	
	return
	opt stack 0
GLOBAL	__end_of_pwm
	__end_of_pwm:
;; =============== function _pwm ends ============

	signat	_pwm,4216
	global	_delay
psect	text271,local,class=CODE,delta=2
global __ptext271
__ptext271:

;; *************** function _delay *****************
;; Defined at:
;;		line 25 in file "E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[COMMON] unsigned int 
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
psect	text271
	file	"E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
	line	25
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	26
	
l2349:	
;adcpwm.c: 26: while(a--);
	goto	l2351
	
l1038:	
	goto	l2351
	
l1037:	
	
l2351:	
	movlw	low(01h)
	subwf	(delay@a),f
	movlw	high(01h)
	skipc
	decf	(delay@a+1),f
	subwf	(delay@a+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@a+1)),w
	skipz
	goto	u2285
	movlw	low(0FFFFh)
	xorwf	((delay@a)),w
u2285:

	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l2351
u2280:
	goto	l1040
	
l1039:	
	line	27
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_adc
psect	text272,local,class=CODE,delta=2
global __ptext272
__ptext272:

;; *************** function _adc *****************
;; Defined at:
;;		line 7 in file "E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  low             2    4[COMMON] int 
;;  high            2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2  1026[COMMON] int 
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
	file	"E:\KTU\Softwares\MP lab\PWM\ADCpwm\ADCpwm\adcpwm.c"
	line	7
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
	
_adc:	
	opt	stack 7
; Regs used in _adc: [wreg+status,2+status,0]
	line	9
	
l2327:	
;adcpwm.c: 8: int high,low;
;adcpwm.c: 9: ADCON0=0XAB;
	movlw	(0ABh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	10
;adcpwm.c: 10: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	11
;adcpwm.c: 11: while(GO!=0);
	goto	l1027
	
l1028:	
	
l1027:	
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(249/8),(249)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l1027
u2230:
	goto	l2329
	
l1029:	
	line	12
	
l2329:	
;adcpwm.c: 12: low=ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(adc@low)
	movf	1+(??_adc+0)+0,w
	movwf	(adc@low+1)
	line	13
;adcpwm.c: 13: high=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(adc@high)
	movf	1+(??_adc+0)+0,w
	movwf	(adc@high+1)
	line	14
	
l2331:	
;adcpwm.c: 14: if(high==0)
	movf	((adc@high+1)),w
	iorwf	((adc@high)),w
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l2335
u2240:
	line	15
	
l2333:	
;adcpwm.c: 15: tot = low+0;
	movf	(adc@low+1),w
	clrf	(_tot+1)
	addwf	(_tot+1)
	movf	(adc@low),w
	clrf	(_tot)
	addwf	(_tot)

	goto	l2335
	
l1030:	
	line	16
	
l2335:	
;adcpwm.c: 16: if(high==1)
	movlw	01h
	xorwf	(adc@high),w
	iorwf	(adc@high+1),w
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l2339
u2250:
	line	17
	
l2337:	
;adcpwm.c: 17: tot = low+256;
	movf	(adc@low),w
	addlw	low(0100h)
	movwf	(_tot)
	movf	(adc@low+1),w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(_tot)
	goto	l2339
	
l1031:	
	line	18
	
l2339:	
;adcpwm.c: 18: if(high==2)
	movlw	02h
	xorwf	(adc@high),w
	iorwf	(adc@high+1),w
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l2343
u2260:
	line	19
	
l2341:	
;adcpwm.c: 19: tot = low+512;
	movf	(adc@low),w
	addlw	low(0200h)
	movwf	(_tot)
	movf	(adc@low+1),w
	skipnc
	addlw	1
	addlw	high(0200h)
	movwf	1+(_tot)
	goto	l2343
	
l1032:	
	line	20
	
l2343:	
;adcpwm.c: 20: if(high==3)
	movlw	03h
	xorwf	(adc@high),w
	iorwf	(adc@high+1),w
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l1034
u2270:
	line	21
	
l2345:	
;adcpwm.c: 21: tot = low+768;
	movf	(adc@low),w
	addlw	low(0300h)
	movwf	(_tot)
	movf	(adc@low+1),w
	skipnc
	addlw	1
	addlw	high(0300h)
	movwf	1+(_tot)
	goto	l1034
	
l1033:	
	goto	l1034
	line	22
	
l2347:	
	line	23
;adcpwm.c: 22: return tot;
;	Return value of _adc is never used
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
;; =============== function _adc ends ============

	signat	_adc,90
psect	text273,local,class=CODE,delta=2
global __ptext273
__ptext273:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
