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
	FNROOT	_main
	global	_PORTA
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
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
	file	"fourled.as"
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
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x2
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
;;   _main->_led1
;;   _main->_led2
;;   _main->_led3
;;   _main->_led4
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
;; (0) _main                                                 0     0      0      60
;;                               _led1
;;                               _led2
;;                               _led3
;;                               _led4
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
;;		line 39 in file "E:\KTU\Softwares\mplab\four Led\fourled.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_led1
;;		_led2
;;		_led3
;;		_led4
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\four Led\fourled.c"
	line	39
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	40
	
l2211:	
;fourled.c: 40: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	41
;fourled.c: 41: PORTB=0X00;
	clrf	(6)	;volatile
	line	42
;fourled.c: 42: PORTC=0X00;
	clrf	(7)	;volatile
	line	43
;fourled.c: 43: PORTD=0X00;
	clrf	(8)	;volatile
	line	44
;fourled.c: 44: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	45
;fourled.c: 45: TRISB=0X00;
	clrf	(134)^080h	;volatile
	line	46
;fourled.c: 46: TRISC=0X00;
	clrf	(135)^080h	;volatile
	line	47
;fourled.c: 47: TRISD=0X00;
	clrf	(136)^080h	;volatile
	line	48
;fourled.c: 48: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	49
;fourled.c: 49: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	goto	l2213
	line	50
;fourled.c: 50: while(1)
	
l1049:	
	line	52
	
l2213:	
;fourled.c: 51: {
;fourled.c: 52: led1();
	fcall	_led1
	line	53
	
l2215:	
;fourled.c: 53: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	54
;fourled.c: 54: led2();
	fcall	_led2
	line	55
	
l2217:	
;fourled.c: 55: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	56
	
l2219:	
;fourled.c: 56: led3();
	fcall	_led3
	line	57
;fourled.c: 57: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	58
	
l2221:	
;fourled.c: 58: led4();
	fcall	_led4
	line	59
	
l2223:	
;fourled.c: 59: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	goto	l2213
	line	60
	
l1050:	
	line	50
	goto	l2213
	
l1051:	
	line	61
	
l1052:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_led4
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _led4 *****************
;; Defined at:
;;		line 30 in file "E:\KTU\Softwares\mplab\four Led\fourled.c"
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
psect	text97
	file	"E:\KTU\Softwares\mplab\four Led\fourled.c"
	line	30
	global	__size_of_led4
	__size_of_led4	equ	__end_of_led4-_led4
	
_led4:	
	opt	stack 7
; Regs used in _led4: [wreg+status,2+btemp+1]
	line	31
	
l1439:	
;fourled.c: 31: int count=0;
	clrf	(led4@count)
	clrf	(led4@count+1)
	line	32
;fourled.c: 32: while(count<31500)
	goto	l1443
	
l1044:	
	line	34
	
l1441:	
;fourled.c: 33: {
;fourled.c: 34: PORTD=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	35
;fourled.c: 35: count++;
	movlw	low(01h)
	addwf	(led4@count),f
	skipnc
	incf	(led4@count+1),f
	movlw	high(01h)
	addwf	(led4@count+1),f
	goto	l1443
	line	36
	
l1043:	
	line	32
	
l1443:	
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
	goto	l1441
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
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:

;; *************** function _led3 *****************
;; Defined at:
;;		line 21 in file "E:\KTU\Softwares\mplab\four Led\fourled.c"
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
psect	text98
	file	"E:\KTU\Softwares\mplab\four Led\fourled.c"
	line	21
	global	__size_of_led3
	__size_of_led3	equ	__end_of_led3-_led3
	
_led3:	
	opt	stack 7
; Regs used in _led3: [wreg+status,2+btemp+1]
	line	22
	
l1433:	
;fourled.c: 22: int count=0;
	clrf	(led3@count)
	clrf	(led3@count+1)
	line	23
;fourled.c: 23: while(count<31500)
	goto	l1437
	
l1038:	
	line	25
	
l1435:	
;fourled.c: 24: {
;fourled.c: 25: PORTC=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	26
;fourled.c: 26: count++;
	movlw	low(01h)
	addwf	(led3@count),f
	skipnc
	incf	(led3@count+1),f
	movlw	high(01h)
	addwf	(led3@count+1),f
	goto	l1437
	line	27
	
l1037:	
	line	23
	
l1437:	
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
	goto	l1435
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
psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:

;; *************** function _led2 *****************
;; Defined at:
;;		line 12 in file "E:\KTU\Softwares\mplab\four Led\fourled.c"
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
psect	text99
	file	"E:\KTU\Softwares\mplab\four Led\fourled.c"
	line	12
	global	__size_of_led2
	__size_of_led2	equ	__end_of_led2-_led2
	
_led2:	
	opt	stack 7
; Regs used in _led2: [wreg+status,2+btemp+1]
	line	13
	
l1427:	
;fourled.c: 13: int count=0;
	clrf	(led2@count)
	clrf	(led2@count+1)
	line	14
;fourled.c: 14: while(count<31500)
	goto	l1431
	
l1032:	
	line	16
	
l1429:	
;fourled.c: 15: {
;fourled.c: 16: PORTB=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	17
;fourled.c: 17: count++;
	movlw	low(01h)
	addwf	(led2@count),f
	skipnc
	incf	(led2@count+1),f
	movlw	high(01h)
	addwf	(led2@count+1),f
	goto	l1431
	line	18
	
l1031:	
	line	14
	
l1431:	
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
	goto	l1429
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
psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:

;; *************** function _led1 *****************
;; Defined at:
;;		line 3 in file "E:\KTU\Softwares\mplab\four Led\fourled.c"
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
psect	text100
	file	"E:\KTU\Softwares\mplab\four Led\fourled.c"
	line	3
	global	__size_of_led1
	__size_of_led1	equ	__end_of_led1-_led1
	
_led1:	
	opt	stack 7
; Regs used in _led1: [wreg+status,2+btemp+1]
	line	4
	
l1421:	
;fourled.c: 4: int count=0;
	clrf	(led1@count)
	clrf	(led1@count+1)
	line	5
;fourled.c: 5: while(count<31500)
	goto	l1425
	
l1026:	
	line	7
	
l1423:	
;fourled.c: 6: {
;fourled.c: 7: PORTA=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	line	8
;fourled.c: 8: count++;
	movlw	low(01h)
	addwf	(led1@count),f
	skipnc
	incf	(led1@count+1),f
	movlw	high(01h)
	addwf	(led1@count+1),f
	goto	l1425
	line	9
	
l1025:	
	line	5
	
l1425:	
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
	goto	l1423
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
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
