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
	FNCALL	_main,_pulse
	FNCALL	_main,_type
	FNCALL	_main,_on
	FNCALL	_main,_rx
	FNCALL	_rx,_display1
	FNCALL	_rx,_strcmp
	FNCALL	_display1,_pulse
	FNCALL	_type,_pulse
	FNCALL	_on,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	rx@F1705
	global	rx@F1707
	global	rx@F1709
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
	line	69

;initializer for rx@F1705
	retlw	066h
	retlw	06Fh
	retlw	072h
	retlw	077h
	retlw	061h
	retlw	072h
	retlw	064h
	retlw	0
	retlw	0
	retlw	0
	line	70

;initializer for rx@F1707
	retlw	072h
	retlw	065h
	retlw	076h
	retlw	065h
	retlw	072h
	retlw	073h
	retlw	065h
	retlw	0
	retlw	0
	retlw	0
	line	71

;initializer for rx@F1709
	retlw	073h
	retlw	074h
	retlw	06Fh
	retlw	070h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_value
	global	_ans
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RCIF
_RCIF	set	101
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_TXSTA
_TXSTA	set	152
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"forwardrev.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_value:
       ds      1

_ans:
       ds      10

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
	line	69
rx@F1705:
       ds      10

psect	dataBANK0
	file	"E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
	line	70
rx@F1707:
       ds      10

psect	dataBANK0
	file	"E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
	line	71
rx@F1709:
       ds      10

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
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
	movlw low(__pdataBANK0+30)
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
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_pulse
?_pulse:	; 0 bytes @ 0x0
	global	?_on
?_on:	; 0 bytes @ 0x0
	global	?_type
?_type:	; 0 bytes @ 0x0
	global	?_display1
?_display1:	; 0 bytes @ 0x0
	global	?_rx
?_rx:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x0
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x0
	global	delay@del
delay@del:	; 2 bytes @ 0x0
	ds	2
	global	??_strcmp
??_strcmp:	; 0 bytes @ 0x2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_pulse
??_pulse:	; 0 bytes @ 0x2
	global	??_on
??_on:	; 0 bytes @ 0x2
	global	??_type
??_type:	; 0 bytes @ 0x2
	global	??_display1
??_display1:	; 0 bytes @ 0x2
	ds	1
	global	display1@data
display1@data:	; 1 bytes @ 0x3
	ds	1
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x4
	ds	1
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x5
	ds	1
	global	??_rx
??_rx:	; 0 bytes @ 0x6
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0xA
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	rx@forward
rx@forward:	; 10 bytes @ 0x0
	ds	10
	global	rx@reverse
rx@reverse:	; 10 bytes @ 0xA
	ds	10
	global	rx@stop
rx@stop:	; 10 bytes @ 0x14
	ds	10
	global	rx@check1
rx@check1:	; 2 bytes @ 0x1E
	ds	2
	global	rx@check2
rx@check2:	; 2 bytes @ 0x20
	ds	2
	global	rx@check3
rx@check3:	; 2 bytes @ 0x22
	ds	2
	global	rx@i
rx@i:	; 2 bytes @ 0x24
	ds	2
;;Data sizes: Strings 0, constant 0, data 30, bss 11, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80     38      79
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_strcmp	int  size(1) Largest target is 0
;;
;; strcmp@s2	PTR const unsigned char  size(1) Largest target is 10
;;		 -> rx@stop(BANK0[10]), rx@reverse(BANK0[10]), rx@forward(BANK0[10]), 
;;
;; strcmp@s1	PTR const unsigned char  size(1) Largest target is 10
;;		 -> ans(BANK0[10]), 
;;
;; display1@data	PTR unsigned char  size(1) Largest target is 10
;;		 -> ans(BANK0[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_rx
;;   _rx->_strcmp
;;   _pulse->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_rx
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
;; (0) _main                                                 0     0      0     409
;;                              _pulse
;;                               _type
;;                                 _on
;;                                 _rx
;; ---------------------------------------------------------------------------------
;; (1) _rx                                                  42    42      0     343
;;                                              6 COMMON     4     4      0
;;                                              0 BANK0     38    38      0
;;                           _display1
;;                             _strcmp
;; ---------------------------------------------------------------------------------
;; (2) _display1                                             2     2      0      67
;;                                              2 COMMON     2     2      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _type                                                 0     0      0      22
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _on                                                   0     0      0      22
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (3) _pulse                                                0     0      0      22
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _strcmp                                               6     4      2      89
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (4) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _pulse
;;     _delay
;;   _type
;;     _pulse
;;       _delay
;;   _on
;;     _pulse
;;       _delay
;;   _rx
;;     _display1
;;       _pulse
;;         _delay
;;     _strcmp
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
;;DATA                 0      0      5D      12        0.0%
;;ABS                  0      0      59       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50     26      4F       5       98.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      A       A       1       71.4%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 101 in file "E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_pulse
;;		_type
;;		_on
;;		_rx
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
	line	101
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	102
	
l2447:	
;forwardrev.c: 102: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	103
;forwardrev.c: 103: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	104
;forwardrev.c: 104: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	105
;forwardrev.c: 105: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	106
;forwardrev.c: 106: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	107
	
l2449:	
;forwardrev.c: 107: TRISC=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	108
	
l2451:	
;forwardrev.c: 108: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	109
	
l2453:	
;forwardrev.c: 109: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	110
	
l2455:	
;forwardrev.c: 110: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	111
	
l2457:	
;forwardrev.c: 111: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	112
	
l2459:	
;forwardrev.c: 112: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	113
	
l2461:	
;forwardrev.c: 113: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	114
	
l2463:	
;forwardrev.c: 114: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	115
	
l2465:	
;forwardrev.c: 115: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	116
	
l2467:	
;forwardrev.c: 116: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	117
	
l2469:	
;forwardrev.c: 117: pulse();
	fcall	_pulse
	line	118
	
l2471:	
;forwardrev.c: 118: type();
	fcall	_type
	line	119
	
l2473:	
;forwardrev.c: 119: on();
	fcall	_on
	goto	l2475
	line	120
;forwardrev.c: 120: while(1)
	
l1075:	
	line	122
	
l2475:	
;forwardrev.c: 121: {
;forwardrev.c: 122: rx();
	fcall	_rx
	goto	l2475
	line	123
	
l1076:	
	line	120
	goto	l2475
	
l1077:	
	line	124
	
l1078:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_rx
psect	text231,local,class=CODE,delta=2
global __ptext231
__ptext231:

;; *************** function _rx *****************
;; Defined at:
;;		line 64 in file "E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  stop           10   20[BANK0 ] unsigned char [10]
;;  reverse        10   10[BANK0 ] unsigned char [10]
;;  forward        10    0[BANK0 ] unsigned char [10]
;;  i               2   36[BANK0 ] int 
;;  check3          2   34[BANK0 ] int 
;;  check2          2   32[BANK0 ] int 
;;  check1          2   30[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      38       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      38       0       0       0
;;Total ram usage:       42 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_display1
;;		_strcmp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text231
	file	"E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
	line	64
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 4
; Regs used in _rx: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	69
	
l2405:	
;forwardrev.c: 65: int check1;
;forwardrev.c: 66: int check2;
;forwardrev.c: 67: int check3;
;forwardrev.c: 68: int i;
;forwardrev.c: 69: char forward[10]="forward";
	movlw	(rx@forward)&0ffh
	movwf	fsr0
	movlw	low(rx@F1705)
	movwf	(??_rx+0)+0
	movf	fsr0,w
	movwf	((??_rx+0)+0+1)
	movlw	10
	movwf	((??_rx+0)+0+2)
u2310:
	movf	(??_rx+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_rx+0)+0+3)
	incf	(??_rx+0)+0,f
	movf	((??_rx+0)+0+1),w
	movwf	fsr0
	
	movf	((??_rx+0)+0+3),w
	movwf	indf
	incf	((??_rx+0)+0+1),f
	decfsz	((??_rx+0)+0+2),f
	goto	u2310
	line	70
;forwardrev.c: 70: char reverse[10]="reverse";
	movlw	(rx@reverse)&0ffh
	movwf	fsr0
	movlw	low(rx@F1707)
	movwf	(??_rx+0)+0
	movf	fsr0,w
	movwf	((??_rx+0)+0+1)
	movlw	10
	movwf	((??_rx+0)+0+2)
u2320:
	movf	(??_rx+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_rx+0)+0+3)
	incf	(??_rx+0)+0,f
	movf	((??_rx+0)+0+1),w
	movwf	fsr0
	
	movf	((??_rx+0)+0+3),w
	movwf	indf
	incf	((??_rx+0)+0+1),f
	decfsz	((??_rx+0)+0+2),f
	goto	u2320
	line	71
;forwardrev.c: 71: char stop[10]="stop";
	movlw	(rx@stop)&0ffh
	movwf	fsr0
	movlw	low(rx@F1709)
	movwf	(??_rx+0)+0
	movf	fsr0,w
	movwf	((??_rx+0)+0+1)
	movlw	10
	movwf	((??_rx+0)+0+2)
u2330:
	movf	(??_rx+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_rx+0)+0+3)
	incf	(??_rx+0)+0,f
	movf	((??_rx+0)+0+1),w
	movwf	fsr0
	
	movf	((??_rx+0)+0+3),w
	movwf	indf
	incf	((??_rx+0)+0+1),f
	decfsz	((??_rx+0)+0+2),f
	goto	u2330
	line	72
	
l2407:	
;forwardrev.c: 72: value='A';
	movlw	(041h)
	movwf	(??_rx+0)+0
	movf	(??_rx+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_value)
	line	73
	
l2409:	
;forwardrev.c: 73: for(i=0;value!=0x0D;i++)
	clrf	(rx@i)
	clrf	(rx@i+1)
	
l2411:	
	movf	(_value),w
	xorlw	0Dh
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l1066
u2340:
	goto	l2425
	
l2413:	
	goto	l2425
	line	74
	
l1064:	
	line	75
;forwardrev.c: 74: {
;forwardrev.c: 75: while(RCIF==0);
	goto	l1066
	
l1067:	
	
l1066:	
	btfss	(101/8),(101)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l1066
u2350:
	goto	l2415
	
l1068:	
	line	76
	
l2415:	
;forwardrev.c: 76: value=RCREG;
	movf	(26),w	;volatile
	movwf	(??_rx+0)+0
	movf	(??_rx+0)+0,w
	movwf	(_value)
	line	78
	
l2417:	
;forwardrev.c: 78: ans[i]=value;
	movf	(_value),w
	movwf	(??_rx+0)+0
	movf	(rx@i),w
	addlw	_ans&0ffh
	movwf	fsr0
	movf	(??_rx+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	79
	
l2419:	
;forwardrev.c: 79: RCIF=0;
	bcf	(101/8),(101)&7
	line	73
	
l2421:	
	movlw	low(01h)
	addwf	(rx@i),f
	skipnc
	incf	(rx@i+1),f
	movlw	high(01h)
	addwf	(rx@i+1),f
	
l2423:	
	movf	(_value),w
	xorlw	0Dh
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l1066
u2360:
	goto	l2425
	
l1065:	
	line	81
	
l2425:	
;forwardrev.c: 80: }
;forwardrev.c: 81: ans[i-1]='\0';
	movf	(rx@i),w
	addlw	0FFh
	addlw	_ans&0ffh
	movwf	fsr0
	clrf	indf
	line	82
	
l2427:	
;forwardrev.c: 82: display1(&ans[0]);
	movlw	(_ans)&0ffh
	fcall	_display1
	line	83
	
l2429:	
;forwardrev.c: 83: check1=strcmp(ans,forward);
	movlw	(rx@forward)&0ffh
	movwf	(??_rx+0)+0
	movf	(??_rx+0)+0,w
	movwf	(?_strcmp)
	movlw	(_ans)&0ffh
	fcall	_strcmp
	movf	(1+(?_strcmp)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(rx@check1+1)
	addwf	(rx@check1+1)
	movf	(0+(?_strcmp)),w
	clrf	(rx@check1)
	addwf	(rx@check1)

	line	84
	
l2431:	
;forwardrev.c: 84: check2=strcmp(ans,reverse);
	movlw	(rx@reverse)&0ffh
	movwf	(??_rx+0)+0
	movf	(??_rx+0)+0,w
	movwf	(?_strcmp)
	movlw	(_ans)&0ffh
	fcall	_strcmp
	movf	(1+(?_strcmp)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(rx@check2+1)
	addwf	(rx@check2+1)
	movf	(0+(?_strcmp)),w
	clrf	(rx@check2)
	addwf	(rx@check2)

	line	85
	
l2433:	
;forwardrev.c: 85: check3=strcmp(ans,stop);
	movlw	(rx@stop)&0ffh
	movwf	(??_rx+0)+0
	movf	(??_rx+0)+0,w
	movwf	(?_strcmp)
	movlw	(_ans)&0ffh
	fcall	_strcmp
	movf	(1+(?_strcmp)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(rx@check3+1)
	addwf	(rx@check3+1)
	movf	(0+(?_strcmp)),w
	clrf	(rx@check3)
	addwf	(rx@check3)

	line	86
	
l2435:	
;forwardrev.c: 86: if(check1==0)
	movf	((rx@check1+1)),w
	iorwf	((rx@check1)),w
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l2439
u2370:
	line	88
	
l2437:	
;forwardrev.c: 87: {
;forwardrev.c: 88: RE0=1;
	bsf	(72/8),(72)&7
	goto	l2439
	line	89
	
l1069:	
	line	90
	
l2439:	
;forwardrev.c: 89: }
;forwardrev.c: 90: if(check2==0)
	movf	((rx@check2+1)),w
	iorwf	((rx@check2)),w
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l2443
u2380:
	line	92
	
l2441:	
;forwardrev.c: 91: {
;forwardrev.c: 92: RE1=1;
	bsf	(73/8),(73)&7
	goto	l2443
	line	93
	
l1070:	
	line	94
	
l2443:	
;forwardrev.c: 93: }
;forwardrev.c: 94: if(check3==0)
	movf	((rx@check3+1)),w
	iorwf	((rx@check3)),w
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l1072
u2390:
	line	96
	
l2445:	
;forwardrev.c: 95: {
;forwardrev.c: 96: RE2=1;
	bsf	(74/8),(74)&7
	goto	l1072
	line	97
	
l1071:	
	line	98
	
l1072:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_display1
psect	text232,local,class=CODE,delta=2
global __ptext232
__ptext232:

;; *************** function _display1 *****************
;; Defined at:
;;		line 48 in file "E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     PTR unsigned char 
;;		 -> ans(10), 
;; Auto vars:     Size  Location     Type
;;  data            1    3[COMMON] PTR unsigned char 
;;		 -> ans(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_rx
;; This function uses a non-reentrant model
;;
psect	text232
	file	"E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
	line	48
	global	__size_of_display1
	__size_of_display1	equ	__end_of_display1-_display1
	
_display1:	
	opt	stack 4
; Regs used in _display1: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;display1@data stored from wreg
	movwf	(display1@data)
	line	49
	
l2395:	
;forwardrev.c: 49: while(*data)
	goto	l2403
	
l1053:	
	line	51
;forwardrev.c: 50: {
;forwardrev.c: 51: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	52
;forwardrev.c: 52: RB1=0;
	bcf	(49/8),(49)&7
	line	53
	
l2397:	
;forwardrev.c: 53: PORTD=*data++;
	movf	(display1@data),w
	movwf	fsr0
	movf	indf,w
	movwf	(8)	;volatile
	
l2399:	
	movlw	(01h)
	movwf	(??_display1+0)+0
	movf	(??_display1+0)+0,w
	addwf	(display1@data),f
	line	54
	
l2401:	
;forwardrev.c: 54: pulse();
	fcall	_pulse
	goto	l2403
	line	55
	
l1052:	
	line	49
	
l2403:	
	movf	(display1@data),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2301
	goto	u2300
u2301:
	goto	l1053
u2300:
	goto	l1055
	
l1054:	
	line	56
	
l1055:	
	return
	opt stack 0
GLOBAL	__end_of_display1
	__end_of_display1:
;; =============== function _display1 ends ============

	signat	_display1,4216
	global	_type
psect	text233,local,class=CODE,delta=2
global __ptext233
__ptext233:

;; *************** function _type *****************
;; Defined at:
;;		line 27 in file "E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
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
psect	text233
	file	"E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
	line	27
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 5
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	28
	
l2389:	
;forwardrev.c: 28: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	29
;forwardrev.c: 29: RB1=0;
	bcf	(49/8),(49)&7
	line	30
	
l2391:	
;forwardrev.c: 30: PORTD=0X38;
	movlw	(038h)
	movwf	(8)	;volatile
	line	31
	
l2393:	
;forwardrev.c: 31: pulse();
	fcall	_pulse
	line	32
	
l1043:	
	return
	opt stack 0
GLOBAL	__end_of_type
	__end_of_type:
;; =============== function _type ends ============

	signat	_type,88
	global	_on
psect	text234,local,class=CODE,delta=2
global __ptext234
__ptext234:

;; *************** function _on *****************
;; Defined at:
;;		line 20 in file "E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
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
psect	text234
	file	"E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
	line	20
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 5
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	21
	
l2383:	
;forwardrev.c: 21: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	22
;forwardrev.c: 22: RB1=0;
	bcf	(49/8),(49)&7
	line	23
	
l2385:	
;forwardrev.c: 23: PORTD=0X0E;
	movlw	(0Eh)
	movwf	(8)	;volatile
	line	24
	
l2387:	
;forwardrev.c: 24: pulse();
	fcall	_pulse
	line	25
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_on
	__end_of_on:
;; =============== function _on ends ============

	signat	_on,88
	global	_pulse
psect	text235,local,class=CODE,delta=2
global __ptext235
__ptext235:

;; *************** function _pulse *****************
;; Defined at:
;;		line 13 in file "E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
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
;;		_display1
;;		_main
;;		_address
;;		_display
;; This function uses a non-reentrant model
;;
psect	text235
	file	"E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
	line	13
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 4
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l2377:	
;forwardrev.c: 14: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	15
	
l2379:	
;forwardrev.c: 15: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	16
	
l2381:	
;forwardrev.c: 16: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	17
;forwardrev.c: 17: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	18
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	_strcmp
psect	text236,local,class=CODE,delta=2
global __ptext236
__ptext236:

;; *************** function _strcmp *****************
;; Defined at:
;;		line 34 in file "../../common/strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> ans(10), 
;;  s2              1    0[COMMON] PTR const unsigned char 
;;		 -> rx@stop(10), rx@reverse(10), rx@forward(10), 
;; Auto vars:     Size  Location     Type
;;  s1              1    5[COMMON] PTR const unsigned char 
;;		 -> ans(10), 
;;  r               1    4[COMMON] char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rx
;; This function uses a non-reentrant model
;;
psect	text236
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\strcmp.c"
	line	34
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:	
	opt	stack 6
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0]
;strcmp@s1 stored from wreg
	movwf	(strcmp@s1)
	line	37
	
l2367:	
	goto	l2369
	
l1082:	
	line	38
	goto	l2369
	
l1081:	
	line	37
	
l2369:	
	movf	(strcmp@s1),w
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcmp+0)+0
	movf	(strcmp@s2),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@s2),f
	decf	indf,w
	xorlw	0ffh
	addwf	(??_strcmp+0)+0,w
	movwf	(??_strcmp+1)+0
	movf	(??_strcmp+1)+0,w
	movwf	(strcmp@r)
	movf	((strcmp@r)),f
	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l2373
u2280:
	
l2371:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@s1),f
	movf	indf,f
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l2369
u2290:
	goto	l2373
	
l1084:	
	goto	l2373
	
l1085:	
	line	39
	
l2373:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	l1086
	
l2375:	
	line	40
	
l1086:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
	global	_delay
psect	text237,local,class=CODE,delta=2
global __ptext237
__ptext237:

;; *************** function _delay *****************
;; Defined at:
;;		line 9 in file "E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
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
psect	text237
	file	"E:\KTU\Softwares\MP lab\UART\Uartforreverse\forwardrev.c"
	line	9
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 4
; Regs used in _delay: [wreg]
	line	10
	
l2351:	
;forwardrev.c: 10: while(del--);
	goto	l2353
	
l1032:	
	goto	l2353
	
l1031:	
	
l2353:	
	movlw	low(-1)
	addwf	(delay@del),f
	skipnc
	incf	(delay@del+1),f
	movlw	high(-1)
	addwf	(delay@del+1),f
	movlw	high(-1)
	xorwf	((delay@del+1)),w
	skipz
	goto	u2275
	movlw	low(-1)
	xorwf	((delay@del)),w
u2275:

	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l2353
u2270:
	goto	l1034
	
l1033:	
	line	11
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text238,local,class=CODE,delta=2
global __ptext238
__ptext238:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
