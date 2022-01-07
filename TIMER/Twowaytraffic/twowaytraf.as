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
# 2 "E:\KTU\Softwares\MP lab\TIMER\Twowaytraffic\twowaytraf.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\KTU\Softwares\MP lab\TIMER\Twowaytraffic\twowaytraf.c"
	dw 0X2CE4 ;#
	FNCALL	_main,_timer0
	FNROOT	_main
	global	_count
	global	_PORTA
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_T0IF
_T0IF	set	90
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"twowaytraf.as"
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
	global	?_timer0
?_timer0:	; 0 bytes @ 0x0
	global	??_timer0
??_timer0:	; 0 bytes @ 0x0
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
;;                             _timer0
;; ---------------------------------------------------------------------------------
;; (1) _timer0                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _timer0
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "E:\KTU\Softwares\MP lab\TIMER\Twowaytraffic\twowaytraf.c"
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
;;		_timer0
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\TIMER\Twowaytraffic\twowaytraf.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	14
	
l2180:	
;twowaytraf.c: 14: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	15
;twowaytraf.c: 15: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	16
;twowaytraf.c: 16: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	17
;twowaytraf.c: 17: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	18
;twowaytraf.c: 18: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	19
;twowaytraf.c: 19: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	20
	
l2182:	
;twowaytraf.c: 20: OPTION_REG=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	goto	l2184
	line	21
;twowaytraf.c: 21: while(1)
	
l1031:	
	line	23
	
l2184:	
;twowaytraf.c: 22: {
;twowaytraf.c: 23: timer0();
	fcall	_timer0
	line	24
	
l2186:	
;twowaytraf.c: 24: if(count>=0 && count<=75)
	btfsc	(_count+1),7
	goto	u2151
	goto	u2150
u2151:
	goto	l2192
u2150:
	
l2188:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2165
	movlw	low(04Ch)
	subwf	(_count),w
u2165:

	skipnc
	goto	u2161
	goto	u2160
u2161:
	goto	l2192
u2160:
	line	26
	
l2190:	
;twowaytraf.c: 25: {
;twowaytraf.c: 26: RC0=1;RC1=0;RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	bcf	(57/8),(57)&7
	bcf	(58/8),(58)&7
	line	27
;twowaytraf.c: 27: RA0=0;RA1=0;RA2=1;
	bcf	(40/8),(40)&7
	bcf	(41/8),(41)&7
	bsf	(42/8),(42)&7
	goto	l2192
	line	28
	
l1032:	
	line	29
	
l2192:	
;twowaytraf.c: 28: }
;twowaytraf.c: 29: if(count>=75 && count<=105)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2175
	movlw	low(04Bh)
	subwf	(_count),w
u2175:

	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l2198
u2170:
	
l2194:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2185
	movlw	low(06Ah)
	subwf	(_count),w
u2185:

	skipnc
	goto	u2181
	goto	u2180
u2181:
	goto	l2198
u2180:
	line	31
	
l2196:	
;twowaytraf.c: 30: {
;twowaytraf.c: 31: RC0=1;RC1=0;RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	bcf	(57/8),(57)&7
	bcf	(58/8),(58)&7
	line	32
;twowaytraf.c: 32: RA0=0;RA1=1;RA2=0;
	bcf	(40/8),(40)&7
	bsf	(41/8),(41)&7
	bcf	(42/8),(42)&7
	goto	l2198
	line	33
	
l1033:	
	line	34
	
l2198:	
;twowaytraf.c: 33: }
;twowaytraf.c: 34: if(count>=105 && count<=180)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(069h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2195
	movlw	low(069h)
	subwf	(_count),w
u2195:

	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l2204
u2190:
	
l2200:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0B5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2205
	movlw	low(0B5h)
	subwf	(_count),w
u2205:

	skipnc
	goto	u2201
	goto	u2200
u2201:
	goto	l2204
u2200:
	line	36
	
l2202:	
;twowaytraf.c: 35: {
;twowaytraf.c: 36: RC0=0;RC1=0;RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	bcf	(57/8),(57)&7
	bsf	(58/8),(58)&7
	line	37
;twowaytraf.c: 37: RA0=1;RA1=0;RA2=0;
	bsf	(40/8),(40)&7
	bcf	(41/8),(41)&7
	bcf	(42/8),(42)&7
	goto	l2204
	line	38
	
l1034:	
	line	39
	
l2204:	
;twowaytraf.c: 38: }
;twowaytraf.c: 39: if(count>=180 && count<=210)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0B4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2215
	movlw	low(0B4h)
	subwf	(_count),w
u2215:

	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l2210
u2210:
	
l2206:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0D3h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2225
	movlw	low(0D3h)
	subwf	(_count),w
u2225:

	skipnc
	goto	u2221
	goto	u2220
u2221:
	goto	l2210
u2220:
	line	41
	
l2208:	
;twowaytraf.c: 40: {
;twowaytraf.c: 41: RC0=0;RC1=1;RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	bsf	(57/8),(57)&7
	bcf	(58/8),(58)&7
	line	42
;twowaytraf.c: 42: RA0=1;RA1=0;RA2=0;
	bsf	(40/8),(40)&7
	bcf	(41/8),(41)&7
	bcf	(42/8),(42)&7
	goto	l2210
	line	43
	
l1035:	
	line	44
	
l2210:	
;twowaytraf.c: 43: }
;twowaytraf.c: 44: if(count>=210)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0D2h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2235
	movlw	low(0D2h)
	subwf	(_count),w
u2235:

	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l2184
u2230:
	line	46
	
l2212:	
;twowaytraf.c: 45: {
;twowaytraf.c: 46: count=0;
	clrf	(_count)
	clrf	(_count+1)
	goto	l2184
	line	47
	
l1036:	
	goto	l2184
	line	48
	
l1037:	
	line	21
	goto	l2184
	
l1038:	
	line	49
	
l1039:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_timer0
psect	text55,local,class=CODE,delta=2
global __ptext55
__ptext55:

;; *************** function _timer0 *****************
;; Defined at:
;;		line 5 in file "E:\KTU\Softwares\MP lab\TIMER\Twowaytraffic\twowaytraf.c"
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
psect	text55
	file	"E:\KTU\Softwares\MP lab\TIMER\Twowaytraffic\twowaytraf.c"
	line	5
	global	__size_of_timer0
	__size_of_timer0	equ	__end_of_timer0-_timer0
	
_timer0:	
	opt	stack 7
; Regs used in _timer0: [wreg]
	line	6
	
l1408:	
;twowaytraf.c: 6: if(T0IF==1)
	btfss	(90/8),(90)&7
	goto	u11
	goto	u10
u11:
	goto	l1412
u10:
	line	8
	
l1410:	
;twowaytraf.c: 7: {
;twowaytraf.c: 8: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l1412
	line	9
	
l1027:	
	line	10
	
l1412:	
;twowaytraf.c: 9: }
;twowaytraf.c: 10: T0IF=0;
	bcf	(90/8),(90)&7
	line	11
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_timer0
	__end_of_timer0:
;; =============== function _timer0 ends ============

	signat	_timer0,88
psect	text56,local,class=CODE,delta=2
global __ptext56
__ptext56:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
