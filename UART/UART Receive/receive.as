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
# 4 "E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
	dw 0X2CE2 ;#
	FNCALL	_main,_pulse
	FNCALL	_main,_type
	FNCALL	_main,_on
	FNCALL	_main,_address
	FNCALL	_main,_rx
	FNCALL	_rx,_display
	FNCALL	_rx,_tx
	FNCALL	_display,_pulse
	FNCALL	_address,_pulse
	FNCALL	_on,_pulse
	FNCALL	_type,_pulse
	FNROOT	_main
	global	_ch
	global	_PORTA
psect	text132,local,class=CODE,delta=2
global __ptext132
__ptext132:
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
	global	_TXREG
_TXREG	set	25
	global	_RCIF
_RCIF	set	101
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_TXIF
_TXIF	set	100
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
	file	"receive.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_ch:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_pulse
?_pulse:	; 0 bytes @ 0x0
	global	??_pulse
??_pulse:	; 0 bytes @ 0x0
	global	?_type
?_type:	; 0 bytes @ 0x0
	global	?_on
?_on:	; 0 bytes @ 0x0
	global	?_address
?_address:	; 0 bytes @ 0x0
	global	?_display
?_display:	; 0 bytes @ 0x0
	global	?_tx
?_tx:	; 0 bytes @ 0x0
	global	??_tx
??_tx:	; 0 bytes @ 0x0
	global	?_rx
?_rx:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	tx@p
tx@p:	; 1 bytes @ 0x0
	ds	2
	global	??_type
??_type:	; 0 bytes @ 0x2
	global	??_on
??_on:	; 0 bytes @ 0x2
	global	??_address
??_address:	; 0 bytes @ 0x2
	global	??_display
??_display:	; 0 bytes @ 0x2
	global	address@x
address@x:	; 1 bytes @ 0x2
	global	display@x
display@x:	; 1 bytes @ 0x2
	ds	1
	global	??_rx
??_rx:	; 0 bytes @ 0x3
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x4
;;Data sizes: Strings 0, constant 0, data 0, bss 1, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       5
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_rx
;;   _rx->_display
;;   _display->_pulse
;;   _address->_pulse
;;   _on->_pulse
;;   _type->_pulse
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
;; (0) _main                                                 0     0      0      45
;;                              _pulse
;;                               _type
;;                                 _on
;;                            _address
;;                                 _rx
;; ---------------------------------------------------------------------------------
;; (1) _rx                                                   1     1      0      30
;;                                              3 COMMON     1     1      0
;;                            _display
;;                                 _tx
;; ---------------------------------------------------------------------------------
;; (2) _display                                              1     1      0      15
;;                                              2 COMMON     1     1      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _address                                              1     1      0      15
;;                                              2 COMMON     1     1      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _on                                                   0     0      0       0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _type                                                 0     0      0       0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (3) _pulse                                                2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _tx                                                   1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _pulse
;;   _type
;;     _pulse
;;   _on
;;     _pulse
;;   _address
;;     _pulse
;;   _rx
;;     _display
;;       _pulse
;;     _tx
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       5       1       35.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       5       3        0.0%
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
;;DATA                 0      0       8      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 64 in file "E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_pulse
;;		_type
;;		_on
;;		_address
;;		_rx
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
	line	64
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	65
	
l2236:	
;receive.c: 65: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	66
;receive.c: 66: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	67
;receive.c: 67: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	68
;receive.c: 68: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	69
;receive.c: 69: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	70
	
l2238:	
;receive.c: 70: TRISC=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	71
	
l2240:	
;receive.c: 71: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	72
	
l2242:	
;receive.c: 72: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	73
	
l2244:	
;receive.c: 73: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	74
	
l2246:	
;receive.c: 74: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	75
	
l2248:	
;receive.c: 75: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	76
	
l2250:	
;receive.c: 76: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	77
	
l2252:	
;receive.c: 77: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	78
	
l2254:	
;receive.c: 78: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	79
	
l2256:	
;receive.c: 79: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	80
	
l2258:	
;receive.c: 80: pulse();
	fcall	_pulse
	line	81
	
l2260:	
;receive.c: 81: type();
	fcall	_type
	line	82
	
l2262:	
;receive.c: 82: on();
	fcall	_on
	goto	l2264
	line	83
;receive.c: 83: while(1)
	
l1056:	
	line	85
	
l2264:	
;receive.c: 84: {
;receive.c: 85: address(0X80);
	movlw	(080h)
	fcall	_address
	line	86
	
l2266:	
;receive.c: 86: rx();
	fcall	_rx
	goto	l2264
	line	87
	
l1057:	
	line	83
	goto	l2264
	
l1058:	
	line	88
	
l1059:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_rx
psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:

;; *************** function _rx *****************
;; Defined at:
;;		line 54 in file "E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_display
;;		_tx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text133
	file	"E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
	line	54
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 5
; Regs used in _rx: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l2226:	
;receive.c: 55: while(RCIF==0);
	goto	l1050
	
l1051:	
	
l1050:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l1050
u2150:
	goto	l2228
	
l1052:	
	line	56
	
l2228:	
;receive.c: 56: ch=RCREG;
	movf	(26),w	;volatile
	movwf	(??_rx+0)+0
	movf	(??_rx+0)+0,w
	movwf	(_ch)
	line	57
	
l2230:	
;receive.c: 57: display(ch);
	movf	(_ch),w
	fcall	_display
	line	58
	
l2232:	
;receive.c: 58: tx(ch);
	movf	(_ch),w
	fcall	_tx
	line	59
	
l2234:	
;receive.c: 59: RCIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7
	line	60
	
l1053:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_display
psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:

;; *************** function _display *****************
;; Defined at:
;;		line 39 in file "E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    2[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_rx
;; This function uses a non-reentrant model
;;
psect	text134
	file	"E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
	line	39
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@x stored from wreg
	movwf	(display@x)
	line	40
	
l2220:	
;receive.c: 40: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	41
;receive.c: 41: RE2=1;
	bsf	(74/8),(74)&7
	line	42
	
l2222:	
;receive.c: 42: PORTD=x;
	movf	(display@x),w
	movwf	(8)	;volatile
	line	43
	
l2224:	
;receive.c: 43: pulse();
	fcall	_pulse
	line	45
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_address
psect	text135,local,class=CODE,delta=2
global __ptext135
__ptext135:

;; *************** function _address *****************
;; Defined at:
;;		line 32 in file "E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    2[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text135
	file	"E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
	line	32
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 6
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
;address@x stored from wreg
	movwf	(address@x)
	line	33
	
l2214:	
;receive.c: 33: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	34
;receive.c: 34: RE2=0;
	bcf	(74/8),(74)&7
	line	35
	
l2216:	
;receive.c: 35: PORTD=x;
	movf	(address@x),w
	movwf	(8)	;volatile
	line	36
	
l2218:	
;receive.c: 36: pulse();
	fcall	_pulse
	line	37
	
l1038:	
	return
	opt stack 0
GLOBAL	__end_of_address
	__end_of_address:
;; =============== function _address ends ============

	signat	_address,4216
	global	_on
psect	text136,local,class=CODE,delta=2
global __ptext136
__ptext136:

;; *************** function _on *****************
;; Defined at:
;;		line 25 in file "E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
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
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text136
	file	"E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
	line	25
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 6
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	26
	
l2208:	
;receive.c: 26: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	27
;receive.c: 27: RE2=0;
	bcf	(74/8),(74)&7
	line	28
	
l2210:	
;receive.c: 28: PORTD=0x0C;
	movlw	(0Ch)
	movwf	(8)	;volatile
	line	29
	
l2212:	
;receive.c: 29: pulse();
	fcall	_pulse
	line	30
	
l1035:	
	return
	opt stack 0
GLOBAL	__end_of_on
	__end_of_on:
;; =============== function _on ends ============

	signat	_on,88
	global	_type
psect	text137,local,class=CODE,delta=2
global __ptext137
__ptext137:

;; *************** function _type *****************
;; Defined at:
;;		line 18 in file "E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
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
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text137
	file	"E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
	line	18
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 6
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
l2202:	
;receive.c: 19: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	20
;receive.c: 20: RE2=0;
	bcf	(74/8),(74)&7
	line	21
	
l2204:	
;receive.c: 21: PORTD=0X38;
	movlw	(038h)
	movwf	(8)	;volatile
	line	22
	
l2206:	
;receive.c: 22: pulse();
	fcall	_pulse
	line	23
	
l1032:	
	return
	opt stack 0
GLOBAL	__end_of_type
	__end_of_type:
;; =============== function _type ends ============

	signat	_type,88
	global	_pulse
psect	text138,local,class=CODE,delta=2
global __ptext138
__ptext138:

;; *************** function _pulse *****************
;; Defined at:
;;		line 11 in file "E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_type
;;		_on
;;		_address
;;		_display
;;		_main
;; This function uses a non-reentrant model
;;
psect	text138
	file	"E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
	line	11
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg]
	line	12
	
l2196:	
;receive.c: 12: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	13
	
l2198:	
;receive.c: 13: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_pulse+0)+0+1),f
	movlw	251
movwf	((??_pulse+0)+0),f
u2167:
	decfsz	((??_pulse+0)+0),f
	goto	u2167
	decfsz	((??_pulse+0)+0+1),f
	goto	u2167
	nop2
opt asmopt_on

	line	14
	
l2200:	
;receive.c: 14: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	15
;receive.c: 15: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_pulse+0)+0+1),f
	movlw	251
movwf	((??_pulse+0)+0),f
u2177:
	decfsz	((??_pulse+0)+0),f
	goto	u2177
	decfsz	((??_pulse+0)+0+1),f
	goto	u2177
	nop2
opt asmopt_on

	line	16
	
l1029:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	_tx
psect	text139,local,class=CODE,delta=2
global __ptext139
__ptext139:

;; *************** function _tx *****************
;; Defined at:
;;		line 48 in file "E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
;; Parameters:    Size  Location     Type
;;  p               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  p               1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rx
;; This function uses a non-reentrant model
;;
psect	text139
	file	"E:\KTU\Softwares\MP lab\UART\Receive\receive.c"
	line	48
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 6
; Regs used in _tx: [wreg]
;tx@p stored from wreg
	movwf	(tx@p)
	line	49
	
l1428:	
;receive.c: 49: TXREG=p;
	movf	(tx@p),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	50
;receive.c: 50: while(TXIF==0);
	goto	l1044
	
l1045:	
	
l1044:	
	btfss	(100/8),(100)&7
	goto	u11
	goto	u10
u11:
	goto	l1044
u10:
	
l1046:	
	line	51
;receive.c: 51: TXIF=0;
	bcf	(100/8),(100)&7
	line	52
	
l1047:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,4216
psect	text140,local,class=CODE,delta=2
global __ptext140
__ptext140:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
