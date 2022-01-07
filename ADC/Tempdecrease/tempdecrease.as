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
	global	_tot
	global	_ADCON0
psect	text136,local,class=CODE,delta=2
global __ptext136
__ptext136:
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
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"tempdecrease.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_tot:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
	global	main@i
main@i:	; 2 bytes @ 0x9
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      13
;; BANK0           80      0       0
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
;; (0) _main                                                 2     2      0     645
;;                                              9 COMMON     2     2      0
;;                                 _on
;;                               _type
;;                                _adc
;;                            _address
;;                            ___awmod
;;                            _display
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) _display                                              1     1      0      30
;;                                              2 COMMON     1     1      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _address                                              1     1      0      30
;;                                              2 COMMON     1     1      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _type                                                 0     0      0      15
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _on                                                   0     0      0      15
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) _pulse                                                0     0      0      15
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     195
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     195
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _adc                                                  6     6      0     120
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
;;COMMON               E      B       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       D       3        0.0%
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
;;DATA                 0      0      10      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 64 in file "E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    9[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
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
	file	"E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
	line	64
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	65
	
l2285:	
;tempdecrease.c: 65: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	66
	
l2287:	
;tempdecrease.c: 66: TRISA=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	67
	
l2289:	
;tempdecrease.c: 67: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	68
	
l2291:	
;tempdecrease.c: 68: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	69
	
l2293:	
;tempdecrease.c: 69: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	70
	
l2295:	
;tempdecrease.c: 70: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	71
	
l2297:	
;tempdecrease.c: 71: ANSEL=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	72
;tempdecrease.c: 72: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	73
	
l2299:	
;tempdecrease.c: 73: on();
	fcall	_on
	line	74
	
l2301:	
;tempdecrease.c: 74: type();
	fcall	_type
	goto	l2303
	line	75
;tempdecrease.c: 75: while(1)
	
l1058:	
	line	77
	
l2303:	
;tempdecrease.c: 76: {
;tempdecrease.c: 77: adc();
	fcall	_adc
	line	78
	
l2305:	
;tempdecrease.c: 78: if(tot>=0 && tot<=200)
	btfsc	(_tot+1),7
	goto	u2201
	goto	u2200
u2201:
	goto	l2311
u2200:
	
l2307:	
	movf	(_tot+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0C9h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2215
	movlw	low(0C9h)
	subwf	(_tot),w
u2215:

	skipnc
	goto	u2211
	goto	u2210
u2211:
	goto	l2311
u2210:
	line	80
	
l2309:	
;tempdecrease.c: 79: {
;tempdecrease.c: 80: RA2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	81
;tempdecrease.c: 81: RA1=1;
	bsf	(41/8),(41)&7
	goto	l2311
	line	82
	
l1059:	
	line	83
	
l2311:	
;tempdecrease.c: 82: }
;tempdecrease.c: 83: if(tot>=200 && tot<=700)
	movf	(_tot+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0C8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2225
	movlw	low(0C8h)
	subwf	(_tot),w
u2225:

	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l2317
u2220:
	
l2313:	
	movf	(_tot+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02BDh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2235
	movlw	low(02BDh)
	subwf	(_tot),w
u2235:

	skipnc
	goto	u2231
	goto	u2230
u2231:
	goto	l2317
u2230:
	line	85
	
l2315:	
;tempdecrease.c: 84: {
;tempdecrease.c: 85: RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	86
;tempdecrease.c: 86: RA2=0;
	bcf	(42/8),(42)&7
	goto	l2317
	line	87
	
l1060:	
	line	88
	
l2317:	
;tempdecrease.c: 87: }
;tempdecrease.c: 88: if(tot>=700 && tot<=1023)
	movf	(_tot+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02BCh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2245
	movlw	low(02BCh)
	subwf	(_tot),w
u2245:

	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l2323
u2240:
	
l2319:	
	movf	(_tot+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0400h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2255
	movlw	low(0400h)
	subwf	(_tot),w
u2255:

	skipnc
	goto	u2251
	goto	u2250
u2251:
	goto	l2323
u2250:
	line	90
	
l2321:	
;tempdecrease.c: 89: {
;tempdecrease.c: 90: RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	91
;tempdecrease.c: 91: RA2=1;
	bsf	(42/8),(42)&7
	goto	l2323
	line	92
	
l1061:	
	line	93
	
l2323:	
;tempdecrease.c: 92: }
;tempdecrease.c: 93: for(int i=3;i>=0;i--)
	movlw	low(03h)
	movwf	(main@i)
	movlw	high(03h)
	movwf	((main@i))+1
	
l2325:	
	btfss	(main@i+1),7
	goto	u2261
	goto	u2260
u2261:
	goto	l2329
u2260:
	goto	l2303
	
l2327:	
	goto	l2303
	line	94
	
l1062:	
	line	95
	
l2329:	
;tempdecrease.c: 94: {
;tempdecrease.c: 95: address(0X80+i);
	movf	(main@i),w
	addlw	080h
	fcall	_address
	line	96
;tempdecrease.c: 96: display(0X30+(tot%10));
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
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
	line	97
;tempdecrease.c: 97: tot=tot/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_tot+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_tot),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	(_tot+1)
	addwf	(_tot+1)
	movf	(0+(?___awdiv)),w
	clrf	(_tot)
	addwf	(_tot)

	line	93
	
l2331:	
	movlw	low(-1)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(-1)
	addwf	(main@i+1),f
	
l2333:	
	btfss	(main@i+1),7
	goto	u2271
	goto	u2270
u2271:
	goto	l2329
u2270:
	goto	l2303
	
l1063:	
	goto	l2303
	line	100
	
l1064:	
	line	75
	goto	l2303
	
l1065:	
	line	101
	
l1066:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_display
psect	text137,local,class=CODE,delta=2
global __ptext137
__ptext137:

;; *************** function _display *****************
;; Defined at:
;;		line 57 in file "E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
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
psect	text137
	file	"E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
	line	57
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@data stored from wreg
	movwf	(display@data)
	line	58
	
l2279:	
;tempdecrease.c: 58: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	59
;tempdecrease.c: 59: RD1=0;
	bcf	(65/8),(65)&7
	line	60
	
l2281:	
;tempdecrease.c: 60: PORTC=data;
	movf	(display@data),w
	movwf	(7)	;volatile
	line	61
	
l2283:	
;tempdecrease.c: 61: pulse();
	fcall	_pulse
	line	62
	
l1055:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_address
psect	text138,local,class=CODE,delta=2
global __ptext138
__ptext138:

;; *************** function _address *****************
;; Defined at:
;;		line 50 in file "E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
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
psect	text138
	file	"E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
	line	50
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 5
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
;address@data stored from wreg
	movwf	(address@data)
	line	51
	
l2273:	
;tempdecrease.c: 51: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	52
;tempdecrease.c: 52: RD1=0;
	bcf	(65/8),(65)&7
	line	53
	
l2275:	
;tempdecrease.c: 53: PORTC= data;
	movf	(address@data),w
	movwf	(7)	;volatile
	line	54
	
l2277:	
;tempdecrease.c: 54: pulse();
	fcall	_pulse
	line	55
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_address
	__end_of_address:
;; =============== function _address ends ============

	signat	_address,4216
	global	_type
psect	text139,local,class=CODE,delta=2
global __ptext139
__ptext139:

;; *************** function _type *****************
;; Defined at:
;;		line 43 in file "E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
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
psect	text139
	file	"E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
	line	43
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 5
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	44
	
l2267:	
;tempdecrease.c: 44: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	45
;tempdecrease.c: 45: RD1=0;
	bcf	(65/8),(65)&7
	line	46
	
l2269:	
;tempdecrease.c: 46: PORTC=0X38;
	movlw	(038h)
	movwf	(7)	;volatile
	line	47
	
l2271:	
;tempdecrease.c: 47: pulse();
	fcall	_pulse
	line	48
	
l1049:	
	return
	opt stack 0
GLOBAL	__end_of_type
	__end_of_type:
;; =============== function _type ends ============

	signat	_type,88
	global	_on
psect	text140,local,class=CODE,delta=2
global __ptext140
__ptext140:

;; *************** function _on *****************
;; Defined at:
;;		line 36 in file "E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
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
psect	text140
	file	"E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
	line	36
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 5
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	37
	
l2261:	
;tempdecrease.c: 37: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	38
;tempdecrease.c: 38: RD1=0;
	bcf	(65/8),(65)&7
	line	39
	
l2263:	
;tempdecrease.c: 39: PORTC=0X0E;
	movlw	(0Eh)
	movwf	(7)	;volatile
	line	40
	
l2265:	
;tempdecrease.c: 40: pulse();
	fcall	_pulse
	line	41
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_on
	__end_of_on:
;; =============== function _on ends ============

	signat	_on,88
	global	_pulse
psect	text141,local,class=CODE,delta=2
global __ptext141
__ptext141:

;; *************** function _pulse *****************
;; Defined at:
;;		line 29 in file "E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
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
psect	text141
	file	"E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
	line	29
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2255:	
;tempdecrease.c: 30: RD2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	line	31
	
l2257:	
;tempdecrease.c: 31: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	32
	
l2259:	
;tempdecrease.c: 32: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	33
;tempdecrease.c: 33: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	34
	
l1043:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	___awmod
psect	text142,local,class=CODE,delta=2
global __ptext142
__ptext142:

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
psect	text142
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l1993:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u1541
	goto	u1540
u1541:
	goto	l1997
u1540:
	line	10
	
l1995:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l1997
	line	12
	
l1283:	
	line	13
	
l1997:	
	btfss	(___awmod@divisor+1),7
	goto	u1551
	goto	u1550
u1551:
	goto	l2001
u1550:
	line	14
	
l1999:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2001
	
l1284:	
	line	15
	
l2001:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u1561
	goto	u1560
u1561:
	goto	l2019
u1560:
	line	16
	
l2003:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2009
	
l1287:	
	line	18
	
l2005:	
	movlw	01h
	
u1575:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u1575
	line	19
	
l2007:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2009
	line	20
	
l1286:	
	line	17
	
l2009:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u1581
	goto	u1580
u1581:
	goto	l2005
u1580:
	goto	l2011
	
l1288:	
	goto	l2011
	line	21
	
l1289:	
	line	22
	
l2011:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u1595
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u1595:
	skipc
	goto	u1591
	goto	u1590
u1591:
	goto	l2015
u1590:
	line	23
	
l2013:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2015
	
l1290:	
	line	24
	
l2015:	
	movlw	01h
	
u1605:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u1605
	line	25
	
l2017:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u1611
	goto	u1610
u1611:
	goto	l2011
u1610:
	goto	l2019
	
l1291:	
	goto	l2019
	line	26
	
l1285:	
	line	27
	
l2019:	
	movf	(___awmod@sign),w
	skipz
	goto	u1620
	goto	l2023
u1620:
	line	28
	
l2021:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2023
	
l1292:	
	line	29
	
l2023:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1293
	
l2025:	
	line	30
	
l1293:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text143,local,class=CODE,delta=2
global __ptext143
__ptext143:

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
psect	text143
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l1829:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u1071
	goto	u1070
u1071:
	goto	l1833
u1070:
	line	11
	
l1831:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l1833
	line	13
	
l1215:	
	line	14
	
l1833:	
	btfss	(___awdiv@dividend+1),7
	goto	u1081
	goto	u1080
u1081:
	goto	l1839
u1080:
	line	15
	
l1835:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l1837:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1839
	line	17
	
l1216:	
	line	18
	
l1839:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l1841:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u1091
	goto	u1090
u1091:
	goto	l1861
u1090:
	line	20
	
l1843:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l1849
	
l1219:	
	line	22
	
l1845:	
	movlw	01h
	
u1105:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u1105
	line	23
	
l1847:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1849
	line	24
	
l1218:	
	line	21
	
l1849:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u1111
	goto	u1110
u1111:
	goto	l1845
u1110:
	goto	l1851
	
l1220:	
	goto	l1851
	line	25
	
l1221:	
	line	26
	
l1851:	
	movlw	01h
	
u1125:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u1125
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u1135
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u1135:
	skipc
	goto	u1131
	goto	u1130
u1131:
	goto	l1857
u1130:
	line	28
	
l1853:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l1855:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1857
	line	30
	
l1222:	
	line	31
	
l1857:	
	movlw	01h
	
u1145:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u1145
	line	32
	
l1859:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u1151
	goto	u1150
u1151:
	goto	l1851
u1150:
	goto	l1861
	
l1223:	
	goto	l1861
	line	33
	
l1217:	
	line	34
	
l1861:	
	movf	(___awdiv@sign),w
	skipz
	goto	u1160
	goto	l1865
u1160:
	line	35
	
l1863:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1865
	
l1224:	
	line	36
	
l1865:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1225
	
l1867:	
	line	37
	
l1225:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text144,local,class=CODE,delta=2
global __ptext144
__ptext144:

;; *************** function _delay *****************
;; Defined at:
;;		line 25 in file "E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
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
psect	text144
	file	"E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
	line	25
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	26
	
l1481:	
;tempdecrease.c: 26: while(del--);
	goto	l1483
	
l1038:	
	goto	l1483
	
l1037:	
	
l1483:	
	movlw	low(-1)
	addwf	(delay@del),f
	skipnc
	incf	(delay@del+1),f
	movlw	high(-1)
	addwf	(delay@del+1),f
	movlw	high(-1)
	xorwf	((delay@del+1)),w
	skipz
	goto	u65
	movlw	low(-1)
	xorwf	((delay@del)),w
u65:

	skipz
	goto	u61
	goto	u60
u61:
	goto	l1483
u60:
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
psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:

;; *************** function _adc *****************
;; Defined at:
;;		line 4 in file "E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
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
psect	text145
	file	"E:\KTU\Softwares\MP lab\ADC\Tempdecrease\tempdecrease.c"
	line	4
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
	
_adc:	
	opt	stack 7
; Regs used in _adc: [wreg+status,2+status,0]
	line	6
	
l1459:	
;tempdecrease.c: 5: int high,low;
;tempdecrease.c: 6: ADCON0=0X83;
	movlw	(083h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	7
;tempdecrease.c: 7: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	8
;tempdecrease.c: 8: while(GO!=0);
	goto	l1027
	
l1028:	
	
l1027:	
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(249/8),(249)&7
	goto	u11
	goto	u10
u11:
	goto	l1027
u10:
	goto	l1461
	
l1029:	
	line	9
	
l1461:	
;tempdecrease.c: 9: low=ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(adc@low)
	movf	1+(??_adc+0)+0,w
	movwf	(adc@low+1)
	line	10
;tempdecrease.c: 10: high=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(adc@high)
	movf	1+(??_adc+0)+0,w
	movwf	(adc@high+1)
	line	11
	
l1463:	
;tempdecrease.c: 11: if(high==0)
	movf	((adc@high+1)),w
	iorwf	((adc@high)),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l1467
u20:
	line	12
	
l1465:	
;tempdecrease.c: 12: tot = low+0;
	movf	(adc@low+1),w
	clrf	(_tot+1)
	addwf	(_tot+1)
	movf	(adc@low),w
	clrf	(_tot)
	addwf	(_tot)

	goto	l1467
	
l1030:	
	line	13
	
l1467:	
;tempdecrease.c: 13: if(high==1)
	movlw	01h
	xorwf	(adc@high),w
	iorwf	(adc@high+1),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l1471
u30:
	line	14
	
l1469:	
;tempdecrease.c: 14: tot = low+256;
	movf	(adc@low),w
	addlw	low(0100h)
	movwf	(_tot)
	movf	(adc@low+1),w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(_tot)
	goto	l1471
	
l1031:	
	line	15
	
l1471:	
;tempdecrease.c: 15: if(high==2)
	movlw	02h
	xorwf	(adc@high),w
	iorwf	(adc@high+1),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l1475
u40:
	line	16
	
l1473:	
;tempdecrease.c: 16: tot = low+512;
	movf	(adc@low),w
	addlw	low(0200h)
	movwf	(_tot)
	movf	(adc@low+1),w
	skipnc
	addlw	1
	addlw	high(0200h)
	movwf	1+(_tot)
	goto	l1475
	
l1032:	
	line	17
	
l1475:	
;tempdecrease.c: 17: if(high==3)
	movlw	03h
	xorwf	(adc@high),w
	iorwf	(adc@high+1),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l1034
u50:
	line	18
	
l1477:	
;tempdecrease.c: 18: tot = low+768;
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
	line	19
	
l1479:	
	line	20
;tempdecrease.c: 19: return tot;
;	Return value of _adc is never used
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
;; =============== function _adc ends ============

	signat	_adc,90
psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
