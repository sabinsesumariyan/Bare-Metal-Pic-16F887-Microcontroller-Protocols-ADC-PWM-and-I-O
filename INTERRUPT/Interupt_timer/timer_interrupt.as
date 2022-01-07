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
	FNCALL	_main,_delay
	FNROOT	_main
	FNCALL	_exe,_timer0
	FNCALL	intlevel1,_exe
	global	intlevel1
	FNROOT	intlevel1
	global	main@F1607
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\KTU\Softwares\MP lab\INTERRUPT\Interupt_timer\timer_interrupt.c"
	line	76

;initializer for main@F1607
	retlw	0BFh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Ch
	retlw	07h
	retlw	0FFh
	retlw	0E7h
	global	_count
	global	_res
	global	_INTCON
_INTCON	set	11
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_INTF
_INTF	set	89
	global	_RC0
_RC0	set	56
	global	_T0IF
_T0IF	set	90
	global	_OPTION_REG
_OPTION_REG	set	129
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
	file	"timer_interrupt.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_count:
       ds      2

_res:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\KTU\Softwares\MP lab\INTERRUPT\Interupt_timer\timer_interrupt.c"
main@F1607:
       ds      10

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+10)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
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
	global	?_exe
?_exe:	; 0 bytes @ 0x0
	global	??_exe
??_exe:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	4
	global	?_delay
?_delay:	; 0 bytes @ 0x4
	global	delay@val
delay@val:	; 2 bytes @ 0x4
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	4
	global	main@arr
main@arr:	; 10 bytes @ 0x4
	ds	10
	global	main@count
main@count:	; 4 bytes @ 0xE
	ds	4
;;Data sizes: Strings 0, constant 0, data 10, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      10
;; BANK0           80     18      28
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay
;;
;; Critical Paths under _exe in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _exe in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _exe in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _exe in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _exe in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                20    20      0      28
;;                                              0 BANK0     18    18      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      22
;;                                              4 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _exe                                                  4     4      0       0
;;                                              0 COMMON     4     4      0
;;                             _timer0
;; ---------------------------------------------------------------------------------
;; (3) _timer0                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;
;; _exe (ROOT)
;;   _timer0
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      2B      12        0.0%
;;ABS                  0      0      26       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       5       2        0.0%
;;BANK0               50     12      1C       5       35.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      6       A       1       71.4%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 62 in file "E:\KTU\Softwares\MP lab\INTERRUPT\Interupt_timer\timer_interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  arr            10    4[BANK0 ] unsigned char [10]
;;  count           4   14[BANK0 ] long 
;;  i               2    0        int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      14       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      18       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\INTERRUPT\Interupt_timer\timer_interrupt.c"
	line	62
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	63
	
l2318:	
;timer_interrupt.c: 63: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	64
;timer_interrupt.c: 64: PORTB=0X00;
	clrf	(6)	;volatile
	line	65
;timer_interrupt.c: 65: PORTC=0X00;
	clrf	(7)	;volatile
	line	66
;timer_interrupt.c: 66: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	67
;timer_interrupt.c: 67: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	68
;timer_interrupt.c: 68: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	69
;timer_interrupt.c: 69: TRISA=0X00;
	clrf	(133)^080h	;volatile
	line	70
	
l2320:	
;timer_interrupt.c: 70: TRISB=0X01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	71
	
l2322:	
;timer_interrupt.c: 71: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	72
	
l2324:	
;timer_interrupt.c: 72: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	73
	
l2326:	
;timer_interrupt.c: 73: INTCON=0xA0;
	movlw	(0A0h)
	movwf	(11)	;volatile
	line	74
	
l2328:	
;timer_interrupt.c: 74: OPTION_REG=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	76
	
l2330:	
;timer_interrupt.c: 76: char arr[10]={0XBF,0X06,0X5B,0X4F,0X66,0X6D,0X7C,0X07,0XFF,0XE7};
	movlw	(main@arr)&0ffh
	movwf	fsr0
	movlw	low(main@F1607)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2390:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2390
	line	77
	
l2332:	
;timer_interrupt.c: 77: long count=0;
	movlw	0
	movwf	(main@count+3)
	movlw	0
	movwf	(main@count+2)
	movlw	0
	movwf	(main@count+1)
	movlw	0
	movwf	(main@count)

	goto	l2334
	line	79
;timer_interrupt.c: 78: int i;
;timer_interrupt.c: 79: while(1)
	
l1054:	
	line	81
	
l2334:	
;timer_interrupt.c: 80: {
;timer_interrupt.c: 81: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	82
	
l2336:	
;timer_interrupt.c: 82: delay(35000);
	movlw	low(088B8h)
	movwf	(?_delay)
	movlw	high(088B8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	83
	
l2338:	
;timer_interrupt.c: 83: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	84
	
l2340:	
;timer_interrupt.c: 84: delay(35000);
	movlw	low(088B8h)
	movwf	(?_delay)
	movlw	high(088B8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l2334
	line	85
	
l1055:	
	line	79
	goto	l2334
	
l1056:	
	line	86
	
l1057:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay
psect	text138,local,class=CODE,delta=2
global __ptext138
__ptext138:

;; *************** function _delay *****************
;; Defined at:
;;		line 13 in file "E:\KTU\Softwares\MP lab\INTERRUPT\Interupt_timer\timer_interrupt.c"
;; Parameters:    Size  Location     Type
;;  val             2    4[COMMON] unsigned int 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text138
	file	"E:\KTU\Softwares\MP lab\INTERRUPT\Interupt_timer\timer_interrupt.c"
	line	13
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	14
	
l2290:	
;timer_interrupt.c: 14: while(val--);
	goto	l2292
	
l1034:	
	goto	l2292
	
l1033:	
	
l2292:	
	movlw	low(01h)
	subwf	(delay@val),f
	movlw	high(01h)
	skipc
	decf	(delay@val+1),f
	subwf	(delay@val+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@val+1)),w
	skipz
	goto	u2375
	movlw	low(0FFFFh)
	xorwf	((delay@val)),w
u2375:

	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l2292
u2370:
	goto	l1036
	
l1035:	
	line	15
	
l1036:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_exe
psect	text139,local,class=CODE,delta=2
global __ptext139
__ptext139:

;; *************** function _exe *****************
;; Defined at:
;;		line 17 in file "E:\KTU\Softwares\MP lab\INTERRUPT\Interupt_timer\timer_interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_timer0
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text139
	file	"E:\KTU\Softwares\MP lab\INTERRUPT\Interupt_timer\timer_interrupt.c"
	line	17
	global	__size_of_exe
	__size_of_exe	equ	__end_of_exe-_exe
	
_exe:	
	opt	stack 5
; Regs used in _exe: [wreg+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_exe+0)
	movf	fsr0,w
	movwf	(??_exe+1)
	movf	pclath,w
	movwf	(??_exe+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_exe+3)
	ljmp	_exe
psect	text139
	line	18
	
i1l1436:	
;timer_interrupt.c: 18: timer0();
	fcall	_timer0
	line	19
	
i1l1438:	
;timer_interrupt.c: 19: if(count>=0 && count<=15)
	btfsc	(_count+1),7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l1444
u3_20:
	
i1l1440:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4_25
	movlw	low(010h)
	subwf	(_count),w
u4_25:

	skipnc
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l1444
u4_20:
	line	21
	
i1l1442:	
;timer_interrupt.c: 20: {
;timer_interrupt.c: 21: PORTA=0X06;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	i1l1444
	line	22
	
i1l1039:	
	line	23
	
i1l1444:	
;timer_interrupt.c: 22: }
;timer_interrupt.c: 23: if(count>=15 && count<=30)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u5_25
	movlw	low(0Fh)
	subwf	(_count),w
u5_25:

	skipc
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l1450
u5_20:
	
i1l1446:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u6_25
	movlw	low(01Fh)
	subwf	(_count),w
u6_25:

	skipnc
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l1450
u6_20:
	line	25
	
i1l1448:	
;timer_interrupt.c: 24: {
;timer_interrupt.c: 25: PORTA=0X5B;
	movlw	(05Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	i1l1450
	line	26
	
i1l1040:	
	line	27
	
i1l1450:	
;timer_interrupt.c: 26: }
;timer_interrupt.c: 27: if(count>=30 && count<=45)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u7_25
	movlw	low(01Eh)
	subwf	(_count),w
u7_25:

	skipc
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l1456
u7_20:
	
i1l1452:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u8_25
	movlw	low(02Eh)
	subwf	(_count),w
u8_25:

	skipnc
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l1456
u8_20:
	line	29
	
i1l1454:	
;timer_interrupt.c: 28: {
;timer_interrupt.c: 29: PORTA=0X4F;
	movlw	(04Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	i1l1456
	line	30
	
i1l1041:	
	line	31
	
i1l1456:	
;timer_interrupt.c: 30: }
;timer_interrupt.c: 31: if(count>=45 && count<=60)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u9_25
	movlw	low(02Dh)
	subwf	(_count),w
u9_25:

	skipc
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l1462
u9_20:
	
i1l1458:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u10_25
	movlw	low(03Dh)
	subwf	(_count),w
u10_25:

	skipnc
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l1462
u10_20:
	line	33
	
i1l1460:	
;timer_interrupt.c: 32: {
;timer_interrupt.c: 33: PORTA=0X66;
	movlw	(066h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	i1l1462
	line	34
	
i1l1042:	
	line	35
	
i1l1462:	
;timer_interrupt.c: 34: }
;timer_interrupt.c: 35: if(count>=60 && count<=75)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u11_25
	movlw	low(03Ch)
	subwf	(_count),w
u11_25:

	skipc
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l1468
u11_20:
	
i1l1464:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u12_25
	movlw	low(04Ch)
	subwf	(_count),w
u12_25:

	skipnc
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l1468
u12_20:
	line	37
	
i1l1466:	
;timer_interrupt.c: 36: {
;timer_interrupt.c: 37: PORTA=0X6D;
	movlw	(06Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	i1l1468
	line	38
	
i1l1043:	
	line	39
	
i1l1468:	
;timer_interrupt.c: 38: }
;timer_interrupt.c: 39: if(count>=75 && count<=90)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u13_25
	movlw	low(04Bh)
	subwf	(_count),w
u13_25:

	skipc
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l1474
u13_20:
	
i1l1470:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u14_25
	movlw	low(05Bh)
	subwf	(_count),w
u14_25:

	skipnc
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l1474
u14_20:
	line	41
	
i1l1472:	
;timer_interrupt.c: 40: {
;timer_interrupt.c: 41: PORTA=0X7c;
	movlw	(07Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	i1l1474
	line	42
	
i1l1044:	
	line	43
	
i1l1474:	
;timer_interrupt.c: 42: }
;timer_interrupt.c: 43: if(count>=90 && count<=105)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u15_25
	movlw	low(05Ah)
	subwf	(_count),w
u15_25:

	skipc
	goto	u15_21
	goto	u15_20
u15_21:
	goto	i1l1480
u15_20:
	
i1l1476:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(06Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u16_25
	movlw	low(06Ah)
	subwf	(_count),w
u16_25:

	skipnc
	goto	u16_21
	goto	u16_20
u16_21:
	goto	i1l1480
u16_20:
	line	45
	
i1l1478:	
;timer_interrupt.c: 44: {
;timer_interrupt.c: 45: PORTA=0X07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	i1l1480
	line	46
	
i1l1045:	
	line	47
	
i1l1480:	
;timer_interrupt.c: 46: }
;timer_interrupt.c: 47: if(count>=105 && count<=130)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(069h))^80h
	subwf	btemp+1,w
	skipz
	goto	u17_25
	movlw	low(069h)
	subwf	(_count),w
u17_25:

	skipc
	goto	u17_21
	goto	u17_20
u17_21:
	goto	i1l1486
u17_20:
	
i1l1482:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(083h))^80h
	subwf	btemp+1,w
	skipz
	goto	u18_25
	movlw	low(083h)
	subwf	(_count),w
u18_25:

	skipnc
	goto	u18_21
	goto	u18_20
u18_21:
	goto	i1l1486
u18_20:
	line	49
	
i1l1484:	
;timer_interrupt.c: 48: {
;timer_interrupt.c: 49: PORTA=0XFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	i1l1486
	line	50
	
i1l1046:	
	line	51
	
i1l1486:	
;timer_interrupt.c: 50: }
;timer_interrupt.c: 51: if(count>=130 && count<=145)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(082h))^80h
	subwf	btemp+1,w
	skipz
	goto	u19_25
	movlw	low(082h)
	subwf	(_count),w
u19_25:

	skipc
	goto	u19_21
	goto	u19_20
u19_21:
	goto	i1l1492
u19_20:
	
i1l1488:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(092h))^80h
	subwf	btemp+1,w
	skipz
	goto	u20_25
	movlw	low(092h)
	subwf	(_count),w
u20_25:

	skipnc
	goto	u20_21
	goto	u20_20
u20_21:
	goto	i1l1492
u20_20:
	line	53
	
i1l1490:	
;timer_interrupt.c: 52: {
;timer_interrupt.c: 53: PORTA=0XE7;
	movlw	(0E7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	i1l1492
	line	54
	
i1l1047:	
	line	55
	
i1l1492:	
;timer_interrupt.c: 54: }
;timer_interrupt.c: 55: if(count>=145 && count<=160)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(091h))^80h
	subwf	btemp+1,w
	skipz
	goto	u21_25
	movlw	low(091h)
	subwf	(_count),w
u21_25:

	skipc
	goto	u21_21
	goto	u21_20
u21_21:
	goto	i1l1498
u21_20:
	
i1l1494:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0A1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u22_25
	movlw	low(0A1h)
	subwf	(_count),w
u22_25:

	skipnc
	goto	u22_21
	goto	u22_20
u22_21:
	goto	i1l1498
u22_20:
	line	57
	
i1l1496:	
;timer_interrupt.c: 56: {
;timer_interrupt.c: 57: PORTA=0XBF;
	movlw	(0BFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	i1l1498
	line	58
	
i1l1048:	
	line	59
	
i1l1498:	
;timer_interrupt.c: 58: }
;timer_interrupt.c: 59: INTF=0;
	bcf	(89/8),(89)&7
	line	60
	
i1l1049:	
	movf	(??_exe+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_exe+2),w
	movwf	pclath
	movf	(??_exe+1),w
	movwf	fsr0
	swapf	(??_exe+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_exe
	__end_of_exe:
;; =============== function _exe ends ============

	signat	_exe,88
	global	_timer0
psect	text140,local,class=CODE,delta=2
global __ptext140
__ptext140:

;; *************** function _timer0 *****************
;; Defined at:
;;		line 5 in file "E:\KTU\Softwares\MP lab\INTERRUPT\Interupt_timer\timer_interrupt.c"
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
;;		_exe
;; This function uses a non-reentrant model
;;
psect	text140
	file	"E:\KTU\Softwares\MP lab\INTERRUPT\Interupt_timer\timer_interrupt.c"
	line	5
	global	__size_of_timer0
	__size_of_timer0	equ	__end_of_timer0-_timer0
	
_timer0:	
	opt	stack 5
; Regs used in _timer0: [wreg]
	line	6
	
i1l1426:	
;timer_interrupt.c: 6: if(T0IF==1)
	btfss	(90/8),(90)&7
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l1430
u1_20:
	line	8
	
i1l1428:	
;timer_interrupt.c: 7: {
;timer_interrupt.c: 8: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	i1l1430
	line	9
	
i1l1029:	
	line	10
	
i1l1430:	
;timer_interrupt.c: 9: }
;timer_interrupt.c: 10: T0IF=0;
	bcf	(90/8),(90)&7
	line	11
	
i1l1030:	
	return
	opt stack 0
GLOBAL	__end_of_timer0
	__end_of_timer0:
;; =============== function _timer0 ends ============

	signat	_timer0,88
psect	text141,local,class=CODE,delta=2
global __ptext141
__ptext141:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
