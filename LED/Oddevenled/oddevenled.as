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
	FNCALL	_main,_led1
	FNCALL	_main,_led2
	FNCALL	_main,_led3
	FNCALL	_main,_led4
	FNCALL	_main,_led5
	FNCALL	_main,_led6
	FNCALL	_main,_led7
	FNCALL	_main,_led8
	FNROOT	_main
	global	_PORTA
psect	text144,local,class=CODE,delta=2
global __ptext144
__ptext144:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"oddevenled.as"
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
	global	?_led1
?_led1:	; 0 bytes @ 0x0
	global	??_led1
??_led1:	; 0 bytes @ 0x0
	global	?_led2
?_led2:	; 0 bytes @ 0x0
	global	??_led2
??_led2:	; 0 bytes @ 0x0
	global	?_led3
?_led3:	; 0 bytes @ 0x0
	global	??_led3
??_led3:	; 0 bytes @ 0x0
	global	?_led4
?_led4:	; 0 bytes @ 0x0
	global	??_led4
??_led4:	; 0 bytes @ 0x0
	global	?_led5
?_led5:	; 0 bytes @ 0x0
	global	??_led5
??_led5:	; 0 bytes @ 0x0
	global	?_led6
?_led6:	; 0 bytes @ 0x0
	global	??_led6
??_led6:	; 0 bytes @ 0x0
	global	?_led7
?_led7:	; 0 bytes @ 0x0
	global	??_led7
??_led7:	; 0 bytes @ 0x0
	global	?_led8
?_led8:	; 0 bytes @ 0x0
	global	??_led8
??_led8:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	led1@count
led1@count:	; 2 bytes @ 0x0
	global	led2@count
led2@count:	; 2 bytes @ 0x0
	global	led3@count
led3@count:	; 2 bytes @ 0x0
	global	led4@count
led4@count:	; 2 bytes @ 0x0
	global	led5@count
led5@count:	; 2 bytes @ 0x0
	global	led6@count
led6@count:	; 2 bytes @ 0x0
	global	led7@count
led7@count:	; 2 bytes @ 0x0
	global	led8@count
led8@count:	; 2 bytes @ 0x0
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x2
	global	main@m
main@m:	; 2 bytes @ 0x2
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
;;   _main->_led1
;;   _main->_led2
;;   _main->_led3
;;   _main->_led4
;;   _main->_led5
;;   _main->_led6
;;   _main->_led7
;;   _main->_led8
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
;; (0) _main                                                 2     2      0     135
;;                                              2 COMMON     2     2      0
;;                               _led1
;;                               _led2
;;                               _led3
;;                               _led4
;;                               _led5
;;                               _led6
;;                               _led7
;;                               _led8
;; ---------------------------------------------------------------------------------
;; (1) _led8                                                 2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _led7                                                 2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _led6                                                 2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _led5                                                 2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _led4                                                 2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _led3                                                 2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _led2                                                 2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _led1                                                 2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _led1
;;   _led2
;;   _led3
;;   _led4
;;   _led5
;;   _led6
;;   _led7
;;   _led8
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
;;STACK                0      0       1       2        0.0%
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
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 75 in file "E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  m               2    2[COMMON] int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_led1
;;		_led2
;;		_led3
;;		_led4
;;		_led5
;;		_led6
;;		_led7
;;		_led8
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
	line	75
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	76
	
l2260:	
;oddevenled.c: 76: int m=1;
	movlw	low(01h)
	movwf	(main@m)
	movlw	high(01h)
	movwf	((main@m))+1
	line	77
	
l2262:	
;oddevenled.c: 77: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	78
	
l2264:	
;oddevenled.c: 78: PORTB=0X00;
	clrf	(6)	;volatile
	line	79
	
l2266:	
;oddevenled.c: 79: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	80
	
l2268:	
;oddevenled.c: 80: TRISB=0X00;
	clrf	(134)^080h	;volatile
	line	81
	
l2270:	
;oddevenled.c: 81: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	82
	
l2272:	
;oddevenled.c: 82: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	83
;oddevenled.c: 83: while(1)
	
l1073:	
	line	85
;oddevenled.c: 84: {
;oddevenled.c: 85: if(m==1)
	movlw	01h
	xorwf	(main@m),w
	iorwf	(main@m+1),w
	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l1073
u2220:
	line	87
	
l2274:	
;oddevenled.c: 86: {
;oddevenled.c: 87: led1();
	fcall	_led1
	line	88
;oddevenled.c: 88: led2();
	fcall	_led2
	line	89
;oddevenled.c: 89: led3();
	fcall	_led3
	line	90
;oddevenled.c: 90: led4();
	fcall	_led4
	line	91
	
l2276:	
;oddevenled.c: 91: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	92
	
l2278:	
;oddevenled.c: 92: led5();
	fcall	_led5
	line	93
	
l2280:	
;oddevenled.c: 93: led6();
	fcall	_led6
	line	94
	
l2282:	
;oddevenled.c: 94: led7();
	fcall	_led7
	line	95
	
l2284:	
;oddevenled.c: 95: led8();
	fcall	_led8
	line	96
	
l2286:	
;oddevenled.c: 96: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	97
	
l2288:	
;oddevenled.c: 97: m=2;
	movlw	low(02h)
	movwf	(main@m)
	movlw	high(02h)
	movwf	((main@m))+1
	goto	l1073
	line	98
	
l1074:	
	goto	l1073
	line	99
	
l1075:	
	line	83
	goto	l1073
	
l1076:	
	line	100
	
l1077:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_led8
psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:

;; *************** function _led8 *****************
;; Defined at:
;;		line 66 in file "E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text145
	file	"E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
	line	66
	global	__size_of_led8
	__size_of_led8	equ	__end_of_led8-_led8
	
_led8:	
	opt	stack 7
; Regs used in _led8: [wreg+status,2+btemp+1]
	line	67
	
l1488:	
;oddevenled.c: 67: int count=0;
	clrf	(led8@count)
	clrf	(led8@count+1)
	line	68
;oddevenled.c: 68: while(count<31500)
	goto	l1492
	
l1068:	
	line	70
	
l1490:	
;oddevenled.c: 69: {
;oddevenled.c: 70: count++;
	movlw	low(01h)
	addwf	(led8@count),f
	skipnc
	incf	(led8@count+1),f
	movlw	high(01h)
	addwf	(led8@count+1),f
	line	71
;oddevenled.c: 71: PORTB=0X0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l1492
	line	72
	
l1067:	
	line	68
	
l1492:	
	movf	(led8@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07B0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u85
	movlw	low(07B0Ch)
	subwf	(led8@count),w
u85:

	skipc
	goto	u81
	goto	u80
u81:
	goto	l1490
u80:
	goto	l1070
	
l1069:	
	line	73
	
l1070:	
	return
	opt stack 0
GLOBAL	__end_of_led8
	__end_of_led8:
;; =============== function _led8 ends ============

	signat	_led8,88
	global	_led7
psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:

;; *************** function _led7 *****************
;; Defined at:
;;		line 57 in file "E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text146
	file	"E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
	line	57
	global	__size_of_led7
	__size_of_led7	equ	__end_of_led7-_led7
	
_led7:	
	opt	stack 7
; Regs used in _led7: [wreg+status,2+btemp+1]
	line	58
	
l1482:	
;oddevenled.c: 58: int count=0;
	clrf	(led7@count)
	clrf	(led7@count+1)
	line	59
;oddevenled.c: 59: while(count<31500)
	goto	l1486
	
l1062:	
	line	61
	
l1484:	
;oddevenled.c: 60: {
;oddevenled.c: 61: count++;
	movlw	low(01h)
	addwf	(led7@count),f
	skipnc
	incf	(led7@count+1),f
	movlw	high(01h)
	addwf	(led7@count+1),f
	line	62
;oddevenled.c: 62: PORTB=0X07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l1486
	line	63
	
l1061:	
	line	59
	
l1486:	
	movf	(led7@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07B0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u75
	movlw	low(07B0Ch)
	subwf	(led7@count),w
u75:

	skipc
	goto	u71
	goto	u70
u71:
	goto	l1484
u70:
	goto	l1064
	
l1063:	
	line	64
	
l1064:	
	return
	opt stack 0
GLOBAL	__end_of_led7
	__end_of_led7:
;; =============== function _led7 ends ============

	signat	_led7,88
	global	_led6
psect	text147,local,class=CODE,delta=2
global __ptext147
__ptext147:

;; *************** function _led6 *****************
;; Defined at:
;;		line 48 in file "E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text147
	file	"E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
	line	48
	global	__size_of_led6
	__size_of_led6	equ	__end_of_led6-_led6
	
_led6:	
	opt	stack 7
; Regs used in _led6: [wreg+status,2+btemp+1]
	line	49
	
l1476:	
;oddevenled.c: 49: int count=0;
	clrf	(led6@count)
	clrf	(led6@count+1)
	line	50
;oddevenled.c: 50: while(count<31500)
	goto	l1480
	
l1056:	
	line	52
	
l1478:	
;oddevenled.c: 51: {
;oddevenled.c: 52: count++;
	movlw	low(01h)
	addwf	(led6@count),f
	skipnc
	incf	(led6@count+1),f
	movlw	high(01h)
	addwf	(led6@count+1),f
	line	53
;oddevenled.c: 53: PORTB=0X03;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l1480
	line	54
	
l1055:	
	line	50
	
l1480:	
	movf	(led6@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07B0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u65
	movlw	low(07B0Ch)
	subwf	(led6@count),w
u65:

	skipc
	goto	u61
	goto	u60
u61:
	goto	l1478
u60:
	goto	l1058
	
l1057:	
	line	55
	
l1058:	
	return
	opt stack 0
GLOBAL	__end_of_led6
	__end_of_led6:
;; =============== function _led6 ends ============

	signat	_led6,88
	global	_led5
psect	text148,local,class=CODE,delta=2
global __ptext148
__ptext148:

;; *************** function _led5 *****************
;; Defined at:
;;		line 39 in file "E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text148
	file	"E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
	line	39
	global	__size_of_led5
	__size_of_led5	equ	__end_of_led5-_led5
	
_led5:	
	opt	stack 7
; Regs used in _led5: [wreg+status,2+btemp+1]
	line	40
	
l1470:	
;oddevenled.c: 40: int count=0;
	clrf	(led5@count)
	clrf	(led5@count+1)
	line	41
;oddevenled.c: 41: while(count<31500)
	goto	l1474
	
l1050:	
	line	43
	
l1472:	
;oddevenled.c: 42: {
;oddevenled.c: 43: count++;
	movlw	low(01h)
	addwf	(led5@count),f
	skipnc
	incf	(led5@count+1),f
	movlw	high(01h)
	addwf	(led5@count+1),f
	line	44
;oddevenled.c: 44: PORTB=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l1474
	line	45
	
l1049:	
	line	41
	
l1474:	
	movf	(led5@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07B0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u55
	movlw	low(07B0Ch)
	subwf	(led5@count),w
u55:

	skipc
	goto	u51
	goto	u50
u51:
	goto	l1472
u50:
	goto	l1052
	
l1051:	
	line	46
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_led5
	__end_of_led5:
;; =============== function _led5 ends ============

	signat	_led5,88
	global	_led4
psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:

;; *************** function _led4 *****************
;; Defined at:
;;		line 30 in file "E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text149
	file	"E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
	line	30
	global	__size_of_led4
	__size_of_led4	equ	__end_of_led4-_led4
	
_led4:	
	opt	stack 7
; Regs used in _led4: [wreg+status,2+btemp+1]
	line	31
	
l1464:	
;oddevenled.c: 31: int count=0;
	clrf	(led4@count)
	clrf	(led4@count+1)
	line	32
;oddevenled.c: 32: while(count<31500)
	goto	l1468
	
l1044:	
	line	34
	
l1466:	
;oddevenled.c: 33: {
;oddevenled.c: 34: count++;
	movlw	low(01h)
	addwf	(led4@count),f
	skipnc
	incf	(led4@count+1),f
	movlw	high(01h)
	addwf	(led4@count+1),f
	line	35
;oddevenled.c: 35: PORTA=0X0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	l1468
	line	36
	
l1043:	
	line	32
	
l1468:	
	movf	(led4@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07B0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u45
	movlw	low(07B0Ch)
	subwf	(led4@count),w
u45:

	skipc
	goto	u41
	goto	u40
u41:
	goto	l1466
u40:
	goto	l1046
	
l1045:	
	line	37
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_led4
	__end_of_led4:
;; =============== function _led4 ends ============

	signat	_led4,88
	global	_led3
psect	text150,local,class=CODE,delta=2
global __ptext150
__ptext150:

;; *************** function _led3 *****************
;; Defined at:
;;		line 21 in file "E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text150
	file	"E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
	line	21
	global	__size_of_led3
	__size_of_led3	equ	__end_of_led3-_led3
	
_led3:	
	opt	stack 7
; Regs used in _led3: [wreg+status,2+btemp+1]
	line	22
	
l1458:	
;oddevenled.c: 22: int count=0;
	clrf	(led3@count)
	clrf	(led3@count+1)
	line	23
;oddevenled.c: 23: while(count<31500)
	goto	l1462
	
l1038:	
	line	25
	
l1460:	
;oddevenled.c: 24: {
;oddevenled.c: 25: count++;
	movlw	low(01h)
	addwf	(led3@count),f
	skipnc
	incf	(led3@count+1),f
	movlw	high(01h)
	addwf	(led3@count+1),f
	line	26
;oddevenled.c: 26: PORTA=0X07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	l1462
	line	27
	
l1037:	
	line	23
	
l1462:	
	movf	(led3@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07B0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(07B0Ch)
	subwf	(led3@count),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l1460
u30:
	goto	l1040
	
l1039:	
	line	28
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_led3
	__end_of_led3:
;; =============== function _led3 ends ============

	signat	_led3,88
	global	_led2
psect	text151,local,class=CODE,delta=2
global __ptext151
__ptext151:

;; *************** function _led2 *****************
;; Defined at:
;;		line 12 in file "E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text151
	file	"E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
	line	12
	global	__size_of_led2
	__size_of_led2	equ	__end_of_led2-_led2
	
_led2:	
	opt	stack 7
; Regs used in _led2: [wreg+status,2+btemp+1]
	line	13
	
l1452:	
;oddevenled.c: 13: int count =0;
	clrf	(led2@count)
	clrf	(led2@count+1)
	line	14
;oddevenled.c: 14: while(count<31500)
	goto	l1456
	
l1032:	
	line	16
	
l1454:	
;oddevenled.c: 15: {
;oddevenled.c: 16: count++;
	movlw	low(01h)
	addwf	(led2@count),f
	skipnc
	incf	(led2@count+1),f
	movlw	high(01h)
	addwf	(led2@count+1),f
	line	17
;oddevenled.c: 17: PORTA=0X03;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	l1456
	line	18
	
l1031:	
	line	14
	
l1456:	
	movf	(led2@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07B0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(07B0Ch)
	subwf	(led2@count),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l1454
u20:
	goto	l1034
	
l1033:	
	line	19
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_led2
	__end_of_led2:
;; =============== function _led2 ends ============

	signat	_led2,88
	global	_led1
psect	text152,local,class=CODE,delta=2
global __ptext152
__ptext152:

;; *************** function _led1 *****************
;; Defined at:
;;		line 3 in file "E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text152
	file	"E:\KTU\Softwares\mplab\Oddevenled\oddevenled.c"
	line	3
	global	__size_of_led1
	__size_of_led1	equ	__end_of_led1-_led1
	
_led1:	
	opt	stack 7
; Regs used in _led1: [wreg+status,2+btemp+1]
	line	4
	
l1446:	
;oddevenled.c: 4: int count=0;
	clrf	(led1@count)
	clrf	(led1@count+1)
	line	5
;oddevenled.c: 5: while(count<31500)
	goto	l1450
	
l1026:	
	line	7
	
l1448:	
;oddevenled.c: 6: {
;oddevenled.c: 7: count++;
	movlw	low(01h)
	addwf	(led1@count),f
	skipnc
	incf	(led1@count+1),f
	movlw	high(01h)
	addwf	(led1@count+1),f
	line	8
;oddevenled.c: 8: PORTA=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	l1450
	line	9
	
l1025:	
	line	5
	
l1450:	
	movf	(led1@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07B0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u15
	movlw	low(07B0Ch)
	subwf	(led1@count),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l1448
u10:
	goto	l1028
	
l1027:	
	line	10
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_led1
	__end_of_led1:
;; =============== function _led1 ends ============

	signat	_led1,88
psect	text153,local,class=CODE,delta=2
global __ptext153
__ptext153:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
