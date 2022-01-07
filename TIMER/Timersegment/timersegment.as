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
	FNCALL	_main,_timer0
	FNROOT	_main
	global	_count
	global	_PORTA
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_T0IF
_T0IF	set	90
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"timersegment.as"
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
;;		line 12 in file "E:\KTU\Softwares\MP lab\Timersegment\timersegment.c"
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
	file	"E:\KTU\Softwares\MP lab\Timersegment\timersegment.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	13
	
l2185:	
;timersegment.c: 13: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	14
;timersegment.c: 14: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	15
;timersegment.c: 15: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	16
;timersegment.c: 16: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	17
;timersegment.c: 17: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	18
;timersegment.c: 18: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	19
	
l2187:	
;timersegment.c: 19: OPTION_REG=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	goto	l2189
	line	20
;timersegment.c: 20: while(1)
	
l1031:	
	line	22
	
l2189:	
;timersegment.c: 21: {
;timersegment.c: 22: timer0();
	fcall	_timer0
	line	23
	
l2191:	
;timersegment.c: 23: if(count>=0 && count<=15)
	btfsc	(_count+1),7
	goto	u2151
	goto	u2150
u2151:
	goto	l2197
u2150:
	
l2193:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2165
	movlw	low(010h)
	subwf	(_count),w
u2165:

	skipnc
	goto	u2161
	goto	u2160
u2161:
	goto	l2197
u2160:
	line	25
	
l2195:	
;timersegment.c: 24: {
;timersegment.c: 25: PORTB=0X06;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l2197
	line	26
	
l1032:	
	line	27
	
l2197:	
;timersegment.c: 26: }
;timersegment.c: 27: if(count>=15 && count<=30)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2175
	movlw	low(0Fh)
	subwf	(_count),w
u2175:

	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l2203
u2170:
	
l2199:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2185
	movlw	low(01Fh)
	subwf	(_count),w
u2185:

	skipnc
	goto	u2181
	goto	u2180
u2181:
	goto	l2203
u2180:
	line	29
	
l2201:	
;timersegment.c: 28: {
;timersegment.c: 29: PORTB=0X5B;
	movlw	(05Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l2203
	line	30
	
l1033:	
	line	31
	
l2203:	
;timersegment.c: 30: }
;timersegment.c: 31: if(count>=30 && count<=45)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2195
	movlw	low(01Eh)
	subwf	(_count),w
u2195:

	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l2209
u2190:
	
l2205:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2205
	movlw	low(02Eh)
	subwf	(_count),w
u2205:

	skipnc
	goto	u2201
	goto	u2200
u2201:
	goto	l2209
u2200:
	line	33
	
l2207:	
;timersegment.c: 32: {
;timersegment.c: 33: PORTB=0X4F;
	movlw	(04Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l2209
	line	34
	
l1034:	
	line	35
	
l2209:	
;timersegment.c: 34: }
;timersegment.c: 35: if(count>=45 && count<=60)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2215
	movlw	low(02Dh)
	subwf	(_count),w
u2215:

	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l2215
u2210:
	
l2211:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2225
	movlw	low(03Dh)
	subwf	(_count),w
u2225:

	skipnc
	goto	u2221
	goto	u2220
u2221:
	goto	l2215
u2220:
	line	37
	
l2213:	
;timersegment.c: 36: {
;timersegment.c: 37: PORTB=0X66;
	movlw	(066h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l2215
	line	38
	
l1035:	
	line	39
	
l2215:	
;timersegment.c: 38: }
;timersegment.c: 39: if(count>=60 && count<=75)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2235
	movlw	low(03Ch)
	subwf	(_count),w
u2235:

	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l2221
u2230:
	
l2217:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u2245
	movlw	low(04Ch)
	subwf	(_count),w
u2245:

	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l2221
u2240:
	line	41
	
l2219:	
;timersegment.c: 40: {
;timersegment.c: 41: PORTB=0X6D;
	movlw	(06Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l2221
	line	42
	
l1036:	
	line	43
	
l2221:	
;timersegment.c: 42: }
;timersegment.c: 43: if(count>=75 && count<=90)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2255
	movlw	low(04Bh)
	subwf	(_count),w
u2255:

	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l2227
u2250:
	
l2223:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2265
	movlw	low(05Bh)
	subwf	(_count),w
u2265:

	skipnc
	goto	u2261
	goto	u2260
u2261:
	goto	l2227
u2260:
	line	45
	
l2225:	
;timersegment.c: 44: {
;timersegment.c: 45: PORTB=0X7c;
	movlw	(07Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l2227
	line	46
	
l1037:	
	line	47
	
l2227:	
;timersegment.c: 46: }
;timersegment.c: 47: if(count>=90 && count<=105)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2275
	movlw	low(05Ah)
	subwf	(_count),w
u2275:

	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l2233
u2270:
	
l2229:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2285
	movlw	low(06Ah)
	subwf	(_count),w
u2285:

	skipnc
	goto	u2281
	goto	u2280
u2281:
	goto	l2233
u2280:
	line	49
	
l2231:	
;timersegment.c: 48: {
;timersegment.c: 49: PORTB=0X07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l2233
	line	50
	
l1038:	
	line	51
	
l2233:	
;timersegment.c: 50: }
;timersegment.c: 51: if(count>=105 && count<=130)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(069h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2295
	movlw	low(069h)
	subwf	(_count),w
u2295:

	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l2239
u2290:
	
l2235:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(083h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2305
	movlw	low(083h)
	subwf	(_count),w
u2305:

	skipnc
	goto	u2301
	goto	u2300
u2301:
	goto	l2239
u2300:
	line	53
	
l2237:	
;timersegment.c: 52: {
;timersegment.c: 53: PORTB=0XFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l2239
	line	54
	
l1039:	
	line	55
	
l2239:	
;timersegment.c: 54: }
;timersegment.c: 55: if(count>=130 && count<=145)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(082h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2315
	movlw	low(082h)
	subwf	(_count),w
u2315:

	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l2245
u2310:
	
l2241:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(092h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2325
	movlw	low(092h)
	subwf	(_count),w
u2325:

	skipnc
	goto	u2321
	goto	u2320
u2321:
	goto	l2245
u2320:
	line	57
	
l2243:	
;timersegment.c: 56: {
;timersegment.c: 57: PORTB=0XE7;
	movlw	(0E7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l2245
	line	58
	
l1040:	
	line	59
	
l2245:	
;timersegment.c: 58: }
;timersegment.c: 59: if(count>=145 && count<=160)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(091h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2335
	movlw	low(091h)
	subwf	(_count),w
u2335:

	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l2189
u2330:
	
l2247:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0A1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2345
	movlw	low(0A1h)
	subwf	(_count),w
u2345:

	skipnc
	goto	u2341
	goto	u2340
u2341:
	goto	l2189
u2340:
	line	61
	
l2249:	
;timersegment.c: 60: {
;timersegment.c: 61: PORTB=0XBF;
	movlw	(0BFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l2189
	line	62
	
l1041:	
	goto	l2189
	line	63
	
l1042:	
	line	20
	goto	l2189
	
l1043:	
	line	64
	
l1044:	
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
;;		line 4 in file "E:\KTU\Softwares\MP lab\Timersegment\timersegment.c"
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
	file	"E:\KTU\Softwares\MP lab\Timersegment\timersegment.c"
	line	4
	global	__size_of_timer0
	__size_of_timer0	equ	__end_of_timer0-_timer0
	
_timer0:	
	opt	stack 7
; Regs used in _timer0: [wreg]
	line	5
	
l1413:	
;timersegment.c: 5: if(T0IF==1)
	btfss	(90/8),(90)&7
	goto	u11
	goto	u10
u11:
	goto	l1417
u10:
	line	7
	
l1415:	
;timersegment.c: 6: {
;timersegment.c: 7: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l1417
	line	8
	
l1027:	
	line	9
	
l1417:	
;timersegment.c: 8: }
;timersegment.c: 9: T0IF=0;
	bcf	(90/8),(90)&7
	line	10
	
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
