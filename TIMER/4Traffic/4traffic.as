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
	FNCALL	_main,_timer1
	FNROOT	_main
	global	_count
	global	_PORTA
psect	text60,local,class=CODE,delta=2
global __ptext60
__ptext60:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_T1CON
_T1CON	set	16
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_TMR1IF
_TMR1IF	set	96
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
	file	"4traffic.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_count:
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
	global	?_timer1
?_timer1:	; 0 bytes @ 0x0
	global	??_timer1
??_timer1:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0       2
;; BANK0           80      0       0
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0       0
;;                             _timer1
;; ---------------------------------------------------------------------------------
;; (1) _timer1                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _timer1
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      0       2       1       14.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       2       3        0.0%
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
;;DATA                 0      0       3      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 14 in file "E:\KTU\Softwares\MP lab\TIMER\4Traffic\4traffic.c"
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
;;		_timer1
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\TIMER\4Traffic\4traffic.c"
	line	14
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	15
	
l2184:	
;4traffic.c: 15: TRISA=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	16
;4traffic.c: 16: PORTA=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	17
;4traffic.c: 17: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	18
;4traffic.c: 18: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	19
;4traffic.c: 19: TRISD=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	20
;4traffic.c: 20: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	21
;4traffic.c: 21: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	22
;4traffic.c: 22: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	23
;4traffic.c: 23: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	24
;4traffic.c: 24: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	26
	
l2186:	
;4traffic.c: 26: T1CON=0x31;
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	goto	l2188
	line	27
;4traffic.c: 27: while(1)
	
l1031:	
	line	29
	
l2188:	
;4traffic.c: 28: {
;4traffic.c: 29: timer1();
	fcall	_timer1
	line	30
	
l2190:	
;4traffic.c: 30: if(count>=0 && count<=10)
	btfsc	(_count+1),7
	goto	u2151
	goto	u2150
u2151:
	goto	l2196
u2150:
	
l2192:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2165
	movlw	low(0Bh)
	subwf	(_count),w
u2165:

	skipnc
	goto	u2161
	goto	u2160
u2161:
	goto	l2196
u2160:
	line	32
	
l2194:	
;4traffic.c: 31: {
;4traffic.c: 32: RA2=1;RA1=0;RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	bcf	(41/8),(41)&7
	bcf	(40/8),(40)&7
	line	33
;4traffic.c: 33: RB2=0;RB1=0;RB0=1;
	bcf	(50/8),(50)&7
	bcf	(49/8),(49)&7
	bsf	(48/8),(48)&7
	line	34
;4traffic.c: 34: RC2=0;RC1=0;RC0=1;
	bcf	(58/8),(58)&7
	bcf	(57/8),(57)&7
	bsf	(56/8),(56)&7
	line	35
;4traffic.c: 35: RD2=0;RD1=0;RD0=1;
	bcf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	bsf	(64/8),(64)&7
	goto	l2196
	line	36
	
l1032:	
	line	37
	
l2196:	
;4traffic.c: 36: }
;4traffic.c: 37: if(count>=10 && count<=14)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2175
	movlw	low(0Ah)
	subwf	(_count),w
u2175:

	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l2202
u2170:
	
l2198:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2185
	movlw	low(0Fh)
	subwf	(_count),w
u2185:

	skipnc
	goto	u2181
	goto	u2180
u2181:
	goto	l2202
u2180:
	line	39
	
l2200:	
;4traffic.c: 38: {
;4traffic.c: 39: RA2=0;RA1=1;RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	bsf	(41/8),(41)&7
	bcf	(40/8),(40)&7
	line	40
;4traffic.c: 40: RB2=0;RB1=0;RB0=1;
	bcf	(50/8),(50)&7
	bcf	(49/8),(49)&7
	bsf	(48/8),(48)&7
	line	41
;4traffic.c: 41: RC2=0;RC1=0;RC0=1;
	bcf	(58/8),(58)&7
	bcf	(57/8),(57)&7
	bsf	(56/8),(56)&7
	line	42
;4traffic.c: 42: RD2=0;RD1=0;RD0=1;
	bcf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	bsf	(64/8),(64)&7
	goto	l2202
	line	43
	
l1033:	
	line	44
	
l2202:	
;4traffic.c: 43: }
;4traffic.c: 44: if(count>=14 && count<=24)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2195
	movlw	low(0Eh)
	subwf	(_count),w
u2195:

	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l2208
u2190:
	
l2204:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(019h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2205
	movlw	low(019h)
	subwf	(_count),w
u2205:

	skipnc
	goto	u2201
	goto	u2200
u2201:
	goto	l2208
u2200:
	line	46
	
l2206:	
;4traffic.c: 45: {
;4traffic.c: 46: RA2=0;RA1=0;RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	bcf	(41/8),(41)&7
	bsf	(40/8),(40)&7
	line	47
;4traffic.c: 47: RB2=1;RB1=0;RB0=0;
	bsf	(50/8),(50)&7
	bcf	(49/8),(49)&7
	bcf	(48/8),(48)&7
	line	48
;4traffic.c: 48: RC2=0;RC1=0;RC0=1;
	bcf	(58/8),(58)&7
	bcf	(57/8),(57)&7
	bsf	(56/8),(56)&7
	line	49
;4traffic.c: 49: RD2=0;RD1=0;RD0=1;
	bcf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	bsf	(64/8),(64)&7
	goto	l2208
	line	50
	
l1034:	
	line	51
	
l2208:	
;4traffic.c: 50: }
;4traffic.c: 51: if(count>=24 && count<=28)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(018h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2215
	movlw	low(018h)
	subwf	(_count),w
u2215:

	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l2214
u2210:
	
l2210:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2225
	movlw	low(01Dh)
	subwf	(_count),w
u2225:

	skipnc
	goto	u2221
	goto	u2220
u2221:
	goto	l2214
u2220:
	line	53
	
l2212:	
;4traffic.c: 52: {
;4traffic.c: 53: RA2=0;RA1=0;RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	bcf	(41/8),(41)&7
	bsf	(40/8),(40)&7
	line	54
;4traffic.c: 54: RB2=0;RB1=1;RB0=0;
	bcf	(50/8),(50)&7
	bsf	(49/8),(49)&7
	bcf	(48/8),(48)&7
	line	55
;4traffic.c: 55: RC2=0;RC1=0;RC0=1;
	bcf	(58/8),(58)&7
	bcf	(57/8),(57)&7
	bsf	(56/8),(56)&7
	line	56
;4traffic.c: 56: RD2=0;RD1=0;RD0=1;
	bcf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	bsf	(64/8),(64)&7
	goto	l2214
	line	57
	
l1035:	
	line	58
	
l2214:	
;4traffic.c: 57: }
;4traffic.c: 58: if(count>=28 && count<=38)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2235
	movlw	low(01Ch)
	subwf	(_count),w
u2235:

	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l2220
u2230:
	
l2216:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(027h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2245
	movlw	low(027h)
	subwf	(_count),w
u2245:

	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l2220
u2240:
	line	60
	
l2218:	
;4traffic.c: 59: {
;4traffic.c: 60: RA2=0;RA1=0;RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	bcf	(41/8),(41)&7
	bsf	(40/8),(40)&7
	line	61
;4traffic.c: 61: RB2=0;RB1=0;RB0=1;
	bcf	(50/8),(50)&7
	bcf	(49/8),(49)&7
	bsf	(48/8),(48)&7
	line	62
;4traffic.c: 62: RC2=1;RC1=0;RC0=0;
	bsf	(58/8),(58)&7
	bcf	(57/8),(57)&7
	bcf	(56/8),(56)&7
	line	63
;4traffic.c: 63: RD2=0;RD1=0;RD0=1;
	bcf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	bsf	(64/8),(64)&7
	goto	l2220
	line	64
	
l1036:	
	line	65
	
l2220:	
;4traffic.c: 64: }
;4traffic.c: 65: if(count>=38 && count<=44)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(026h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2255
	movlw	low(026h)
	subwf	(_count),w
u2255:

	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l2226
u2250:
	
l2222:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2265
	movlw	low(02Dh)
	subwf	(_count),w
u2265:

	skipnc
	goto	u2261
	goto	u2260
u2261:
	goto	l2226
u2260:
	line	67
	
l2224:	
;4traffic.c: 66: {
;4traffic.c: 67: RA2=0;RA1=0;RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	bcf	(41/8),(41)&7
	bsf	(40/8),(40)&7
	line	68
;4traffic.c: 68: RB2=0;RB1=0;RB0=1;
	bcf	(50/8),(50)&7
	bcf	(49/8),(49)&7
	bsf	(48/8),(48)&7
	line	69
;4traffic.c: 69: RC2=0;RC1=1;RC0=0;
	bcf	(58/8),(58)&7
	bsf	(57/8),(57)&7
	bcf	(56/8),(56)&7
	line	70
;4traffic.c: 70: RD2=0;RD1=0;RD0=1;
	bcf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	bsf	(64/8),(64)&7
	goto	l2226
	line	71
	
l1037:	
	line	72
	
l2226:	
;4traffic.c: 71: }
;4traffic.c: 72: if(count>=44 && count<=54)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2275
	movlw	low(02Ch)
	subwf	(_count),w
u2275:

	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l2232
u2270:
	
l2228:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(037h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2285
	movlw	low(037h)
	subwf	(_count),w
u2285:

	skipnc
	goto	u2281
	goto	u2280
u2281:
	goto	l2232
u2280:
	line	74
	
l2230:	
;4traffic.c: 73: {
;4traffic.c: 74: RA2=0;RA1=0;RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	bcf	(41/8),(41)&7
	bsf	(40/8),(40)&7
	line	75
;4traffic.c: 75: RB2=0;RB1=0;RB0=1;
	bcf	(50/8),(50)&7
	bcf	(49/8),(49)&7
	bsf	(48/8),(48)&7
	line	76
;4traffic.c: 76: RC2=0;RC1=0;RC0=1;
	bcf	(58/8),(58)&7
	bcf	(57/8),(57)&7
	bsf	(56/8),(56)&7
	line	77
;4traffic.c: 77: RD2=1;RD1=0;RD0=0;
	bsf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	bcf	(64/8),(64)&7
	goto	l2232
	line	78
	
l1038:	
	line	79
	
l2232:	
;4traffic.c: 78: }
;4traffic.c: 79: if(count>=54 && count<=60)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(036h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2295
	movlw	low(036h)
	subwf	(_count),w
u2295:

	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l2238
u2290:
	
l2234:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2305
	movlw	low(03Dh)
	subwf	(_count),w
u2305:

	skipnc
	goto	u2301
	goto	u2300
u2301:
	goto	l2238
u2300:
	line	81
	
l2236:	
;4traffic.c: 80: {
;4traffic.c: 81: RA2=0;RA1=0;RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	bcf	(41/8),(41)&7
	bsf	(40/8),(40)&7
	line	82
;4traffic.c: 82: RB2=0;RB1=0;RB0=1;
	bcf	(50/8),(50)&7
	bcf	(49/8),(49)&7
	bsf	(48/8),(48)&7
	line	83
;4traffic.c: 83: RC2=0;RC1=0;RC0=1;
	bcf	(58/8),(58)&7
	bcf	(57/8),(57)&7
	bsf	(56/8),(56)&7
	line	84
;4traffic.c: 84: RD2=0;RD1=1;RD0=0;
	bcf	(66/8),(66)&7
	bsf	(65/8),(65)&7
	bcf	(64/8),(64)&7
	goto	l2238
	line	85
	
l1039:	
	line	86
	
l2238:	
;4traffic.c: 85: }
;4traffic.c: 86: if(count>=60)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2315
	movlw	low(03Ch)
	subwf	(_count),w
u2315:

	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l2188
u2310:
	line	88
	
l2240:	
;4traffic.c: 87: {
;4traffic.c: 88: count=0;
	clrf	(_count)
	clrf	(_count+1)
	goto	l2188
	line	93
	
l1040:	
	goto	l2188
	line	94
	
l1041:	
	line	27
	goto	l2188
	
l1042:	
	line	95
	
l1043:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_timer1
psect	text61,local,class=CODE,delta=2
global __ptext61
__ptext61:

;; *************** function _timer1 *****************
;; Defined at:
;;		line 5 in file "E:\KTU\Softwares\MP lab\TIMER\4Traffic\4traffic.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text61
	file	"E:\KTU\Softwares\MP lab\TIMER\4Traffic\4traffic.c"
	line	5
	global	__size_of_timer1
	__size_of_timer1	equ	__end_of_timer1-_timer1
	
_timer1:	
	opt	stack 7
; Regs used in _timer1: [wreg]
	line	6
	
l1412:	
;4traffic.c: 6: if(TMR1IF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u11
	goto	u10
u11:
	goto	l1028
u10:
	line	8
	
l1414:	
;4traffic.c: 7: {
;4traffic.c: 8: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	9
	
l1416:	
;4traffic.c: 9: TMR1IF=0;
	bcf	(96/8),(96)&7
	goto	l1028
	line	10
	
l1027:	
	line	12
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_timer1
	__end_of_timer1:
;; =============== function _timer1 ends ============

	signat	_timer1,88
psect	text62,local,class=CODE,delta=2
global __ptext62
__ptext62:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
