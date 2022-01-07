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
	FNCALL	_main,_timer2
	FNROOT	_main
	global	_count
	global	_PORTA
psect	text60,local,class=CODE,delta=2
global __ptext60
__ptext60:
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_T2CON
_T2CON	set	18
	global	_RA0
_RA0	set	40
	global	_TMR2IF
_TMR2IF	set	97
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"timer2.as"
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
	global	?_timer2
?_timer2:	; 0 bytes @ 0x0
	global	??_timer2
??_timer2:	; 0 bytes @ 0x0
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
;;                             _timer2
;; ---------------------------------------------------------------------------------
;; (1) _timer2                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _timer2
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
;;		line 12 in file "E:\KTU\Softwares\MP lab\TIMER\Timer2\timer2.c"
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
;;		_timer2
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\TIMER\Timer2\timer2.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	13
	
l2178:	
;timer2.c: 13: TRISA=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	14
;timer2.c: 14: PORTA=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	15
;timer2.c: 15: TRISC=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	16
;timer2.c: 16: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	17
	
l2180:	
;timer2.c: 17: T2CON=0x7F;
	movlw	(07Fh)
	movwf	(18)	;volatile
	line	18
	
l2182:	
;timer2.c: 18: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	19
	
l2184:	
;timer2.c: 19: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	goto	l2186
	line	20
;timer2.c: 20: while(1)
	
l1031:	
	line	22
	
l2186:	
;timer2.c: 21: {
;timer2.c: 22: timer2();
	fcall	_timer2
	line	23
	
l2188:	
;timer2.c: 23: if(count<=15)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2155
	movlw	low(010h)
	subwf	(_count),w
u2155:

	skipnc
	goto	u2151
	goto	u2150
u2151:
	goto	l2192
u2150:
	line	25
	
l2190:	
;timer2.c: 24: {
;timer2.c: 25: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	goto	l2192
	line	26
	
l1032:	
	line	27
	
l2192:	
;timer2.c: 26: }
;timer2.c: 27: if(count>15)
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

	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l2196
u2160:
	line	29
	
l2194:	
;timer2.c: 28: {
;timer2.c: 29: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	goto	l2196
	line	30
	
l1033:	
	line	31
	
l2196:	
;timer2.c: 30: }
;timer2.c: 31: if(count>=30)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2175
	movlw	low(01Eh)
	subwf	(_count),w
u2175:

	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l2186
u2170:
	line	33
	
l2198:	
;timer2.c: 32: {
;timer2.c: 33: count=0;
	clrf	(_count)
	clrf	(_count+1)
	goto	l2186
	line	34
	
l1034:	
	goto	l2186
	line	35
	
l1035:	
	line	20
	goto	l2186
	
l1036:	
	line	36
	
l1037:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_timer2
psect	text61,local,class=CODE,delta=2
global __ptext61
__ptext61:

;; *************** function _timer2 *****************
;; Defined at:
;;		line 4 in file "E:\KTU\Softwares\MP lab\TIMER\Timer2\timer2.c"
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
	file	"E:\KTU\Softwares\MP lab\TIMER\Timer2\timer2.c"
	line	4
	global	__size_of_timer2
	__size_of_timer2	equ	__end_of_timer2-_timer2
	
_timer2:	
	opt	stack 7
; Regs used in _timer2: [wreg]
	line	5
	
l1406:	
;timer2.c: 5: if(TMR2IF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7
	goto	u11
	goto	u10
u11:
	goto	l1028
u10:
	line	7
	
l1408:	
;timer2.c: 6: {
;timer2.c: 7: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	8
	
l1410:	
;timer2.c: 8: TMR2IF=0;
	bcf	(97/8),(97)&7
	goto	l1028
	line	9
	
l1027:	
	line	10
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_timer2
	__end_of_timer2:
;; =============== function _timer2 ends ============

	signat	_timer2,88
psect	text62,local,class=CODE,delta=2
global __ptext62
__ptext62:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
