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
	FNCALL	_main,_pwm
	FNCALL	_main,_delay
	FNROOT	_main
	global	_CCP1CON
psect	text66,local,class=CODE,delta=2
global __ptext66
__ptext66:
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_T2CON
_T2CON	set	18
	global	_PR2
_PR2	set	146
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"pwm.as"
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
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_pwm
?_pwm:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@a
delay@a:	; 2 bytes @ 0x0
	global	pwm@a
pwm@a:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_pwm
??_pwm:	; 0 bytes @ 0x2
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x4
	global	main@count
main@count:	; 2 bytes @ 0x4
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_pwm
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
;;                                              4 COMMON     2     2      0
;;                                _pwm
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _pwm                                                  4     2      2      30
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _pwm
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       6       1       42.9%
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
;;		line 12 in file "E:\KTU\Softwares\MP lab\PWM\pwm\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    4[COMMON] int 
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
;;		_pwm
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\PWM\pwm\pwm.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	13
	
l2182:	
;pwm.c: 13: int count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	14
;pwm.c: 14: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	15
;pwm.c: 15: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	16
;pwm.c: 16: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	17
;pwm.c: 17: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	18
	
l2184:	
;pwm.c: 18: T2CON=0X07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	19
	
l2186:	
;pwm.c: 19: PR2=0Xff;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	21
	
l2188:	
;pwm.c: 21: CCP1CON=0X0D;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	goto	l2190
	line	22
;pwm.c: 22: while(1)
	
l1034:	
	line	24
	
l2190:	
;pwm.c: 23: {
;pwm.c: 24: for(count=0;count<=511;count++)
	clrf	(main@count)
	clrf	(main@count+1)
	
l2192:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0200h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2165
	movlw	low(0200h)
	subwf	(main@count),w
u2165:

	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l2196
u2160:
	goto	l2202
	
l2194:	
	goto	l2202
	line	25
	
l1035:	
	line	26
	
l2196:	
;pwm.c: 25: {
;pwm.c: 26: pwm(count);
	movf	(main@count+1),w
	clrf	(?_pwm+1)
	addwf	(?_pwm+1)
	movf	(main@count),w
	clrf	(?_pwm)
	addwf	(?_pwm)

	fcall	_pwm
	line	24
	
l2198:	
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	
l2200:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0200h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2175
	movlw	low(0200h)
	subwf	(main@count),w
u2175:

	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l2196
u2170:
	goto	l2202
	
l1036:	
	line	28
	
l2202:	
;pwm.c: 27: }
;pwm.c: 28: delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	29
	
l2204:	
;pwm.c: 29: for(count=511;count>=0;count--)
	movlw	low(01FFh)
	movwf	(main@count)
	movlw	high(01FFh)
	movwf	((main@count))+1
	
l2206:	
	btfss	(main@count+1),7
	goto	u2181
	goto	u2180
u2181:
	goto	l2210
u2180:
	goto	l2216
	
l2208:	
	goto	l2216
	line	30
	
l1037:	
	line	31
	
l2210:	
;pwm.c: 30: {
;pwm.c: 31: pwm(count);
	movf	(main@count+1),w
	clrf	(?_pwm+1)
	addwf	(?_pwm+1)
	movf	(main@count),w
	clrf	(?_pwm)
	addwf	(?_pwm)

	fcall	_pwm
	line	29
	
l2212:	
	movlw	low(-1)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(-1)
	addwf	(main@count+1),f
	
l2214:	
	btfss	(main@count+1),7
	goto	u2191
	goto	u2190
u2191:
	goto	l2210
u2190:
	goto	l2216
	
l1038:	
	line	33
	
l2216:	
;pwm.c: 32: }
;pwm.c: 33: delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l2190
	line	34
	
l1039:	
	line	22
	goto	l2190
	
l1040:	
	line	35
	
l1041:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_pwm
psect	text67,local,class=CODE,delta=2
global __ptext67
__ptext67:

;; *************** function _pwm *****************
;; Defined at:
;;		line 7 in file "E:\KTU\Softwares\MP lab\PWM\pwm\pwm.c"
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
psect	text67
	file	"E:\KTU\Softwares\MP lab\PWM\pwm\pwm.c"
	line	7
	global	__size_of_pwm
	__size_of_pwm	equ	__end_of_pwm-_pwm
	
_pwm:	
	opt	stack 7
; Regs used in _pwm: [wreg+status,2+status,0]
	line	8
	
l1414:	
;pwm.c: 8: CCPR1L=a>>2;
	movf	(pwm@a+1),w
	movwf	(??_pwm+0)+0+1
	movf	(pwm@a),w
	movwf	(??_pwm+0)+0
	movlw	02h
u25:
	clrc
	rrf	(??_pwm+0)+1,f
	rrf	(??_pwm+0)+0,f
	addlw	-1
	skipz
	goto	u25
	movf	0+(??_pwm+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	9
;pwm.c: 9: CCP1CON=a&0x30|CCP1CON;
	movf	(pwm@a),w
	andlw	030h
	iorwf	(23),w
	movwf	(23)	;volatile
	line	10
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_pwm
	__end_of_pwm:
;; =============== function _pwm ends ============

	signat	_pwm,4216
	global	_delay
psect	text68,local,class=CODE,delta=2
global __ptext68
__ptext68:

;; *************** function _delay *****************
;; Defined at:
;;		line 3 in file "E:\KTU\Softwares\MP lab\PWM\pwm\pwm.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text68
	file	"E:\KTU\Softwares\MP lab\PWM\pwm\pwm.c"
	line	3
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	4
	
l1410:	
;pwm.c: 4: while(a--);
	goto	l1412
	
l1026:	
	goto	l1412
	
l1025:	
	
l1412:	
	movlw	low(01h)
	subwf	(delay@a),f
	movlw	high(01h)
	skipc
	decf	(delay@a+1),f
	subwf	(delay@a+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@a+1)),w
	skipz
	goto	u15
	movlw	low(0FFFFh)
	xorwf	((delay@a)),w
u15:

	skipz
	goto	u11
	goto	u10
u11:
	goto	l1412
u10:
	goto	l1028
	
l1027:	
	line	5
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text69,local,class=CODE,delta=2
global __ptext69
__ptext69:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
