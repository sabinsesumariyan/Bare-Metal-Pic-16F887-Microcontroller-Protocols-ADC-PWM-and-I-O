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
# 4 "E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
	psect config,class=CONFIG,delta=2 ;#
# 4 "E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
	dw 0X2CE2 ;#
	FNCALL	_main,_pulse
	FNCALL	_main,_type
	FNCALL	_main,_on
	FNCALL	_main,_address
	FNCALL	_main,_tx
	FNCALL	_main,_display1
	FNCALL	_main,_rx
	FNCALL	_rx,_tx
	FNCALL	_rx,_display1
	FNCALL	_display1,_pulse
	FNCALL	_address,_pulse
	FNCALL	_on,_pulse
	FNCALL	_type,_pulse
	FNROOT	_main
	global	_ch
	global	_data
	global	_PORTA
psect	text232,local,class=CODE,delta=2
global __ptext232
__ptext232:
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
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	117	;'u'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	0
psect	strings
	file	"receivestring.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_ch:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_data:
       ds      10

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
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
	global	?_display1
?_display1:	; 0 bytes @ 0x2
	global	address@x
address@x:	; 1 bytes @ 0x2
	global	display1@p
display1@p:	; 2 bytes @ 0x2
	ds	2
	global	??_display1
??_display1:	; 0 bytes @ 0x4
	global	??_rx
??_rx:	; 0 bytes @ 0x4
	ds	1
	global	rx@i
rx@i:	; 2 bytes @ 0x5
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x7
;;Data sizes: Strings 5, constant 0, data 0, bss 11, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       8
;; BANK0           80      0      10
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; display1@p	PTR unsigned char  size(2) Largest target is 10
;;		 -> STR_1(CODE[5]), data(BANK0[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_rx
;;   _rx->_display1
;;   _display1->_pulse
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
;; (0) _main                                                 0     0      0     202
;;                              _pulse
;;                               _type
;;                                 _on
;;                            _address
;;                                 _tx
;;                           _display1
;;                                 _rx
;; ---------------------------------------------------------------------------------
;; (1) _rx                                                   3     3      0     113
;;                                              4 COMMON     3     3      0
;;                                 _tx
;;                           _display1
;; ---------------------------------------------------------------------------------
;; (2) _display1                                             2     0      2      45
;;                                              2 COMMON     2     0      2
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _address                                              1     1      0      22
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
;; (2) _tx                                                   1     1      0      22
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
;;   _tx
;;   _display1
;;     _pulse
;;   _rx
;;     _tx
;;     _display1
;;       _pulse
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      12       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       A       5       12.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      15      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 81 in file "E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;;		_tx
;;		_display1
;;		_rx
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
	line	81
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	82
	
l2378:	
;receivestring.c: 82: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	83
;receivestring.c: 83: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	84
;receivestring.c: 84: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	85
;receivestring.c: 85: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	86
;receivestring.c: 86: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	87
	
l2380:	
;receivestring.c: 87: TRISC=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	88
	
l2382:	
;receivestring.c: 88: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	89
	
l2384:	
;receivestring.c: 89: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	90
	
l2386:	
;receivestring.c: 90: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	91
	
l2388:	
;receivestring.c: 91: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	92
	
l2390:	
;receivestring.c: 92: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	93
	
l2392:	
;receivestring.c: 93: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	94
	
l2394:	
;receivestring.c: 94: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	95
	
l2396:	
;receivestring.c: 95: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	96
	
l2398:	
;receivestring.c: 96: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	97
	
l2400:	
;receivestring.c: 97: pulse();
	fcall	_pulse
	line	98
	
l2402:	
;receivestring.c: 98: type();
	fcall	_type
	line	99
	
l2404:	
;receivestring.c: 99: on();
	fcall	_on
	line	100
	
l2406:	
;receivestring.c: 100: address(0X80);
	movlw	(080h)
	fcall	_address
	line	101
	
l2408:	
;receivestring.c: 101: tx('a');
	movlw	(061h)
	fcall	_tx
	line	102
	
l2410:	
;receivestring.c: 102: display1("uart");
	movlw	low((STR_1-__stringbase))
	movwf	(?_display1)
	movlw	80h
	movwf	(?_display1+1)
	fcall	_display1
	goto	l2412
	line	103
;receivestring.c: 103: while(1)
	
l1066:	
	line	105
	
l2412:	
;receivestring.c: 104: {
;receivestring.c: 105: address(0X80);
	movlw	(080h)
	fcall	_address
	line	106
	
l2414:	
;receivestring.c: 106: rx();
	fcall	_rx
	goto	l2412
	line	107
	
l1067:	
	line	103
	goto	l2412
	
l1068:	
	line	108
	
l1069:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_rx
psect	text233,local,class=CODE,delta=2
global __ptext233
__ptext233:

;; *************** function _rx *****************
;; Defined at:
;;		line 63 in file "E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    5[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_tx
;;		_display1
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text233
	file	"E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
	line	63
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 5
; Regs used in _rx: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	65
	
l2354:	
;receivestring.c: 64: int i;
;receivestring.c: 65: ch='a';
	movlw	(061h)
	movwf	(??_rx+0)+0
	movf	(??_rx+0)+0,w
	movwf	(_ch)
	line	66
	
l2356:	
;receivestring.c: 66: for(i=0;ch!=0x0D;i++)
	clrf	(rx@i)
	clrf	(rx@i+1)
	
l2358:	
	movf	(_ch),w
	xorlw	0Dh
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l1060
u2210:
	goto	l2374
	
l2360:	
	goto	l2374
	line	67
	
l1058:	
	line	68
;receivestring.c: 67: {
;receivestring.c: 68: while(RCIF==0);
	goto	l1060
	
l1061:	
	
l1060:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l1060
u2220:
	goto	l2362
	
l1062:	
	line	69
	
l2362:	
;receivestring.c: 69: ch=RCREG;
	movf	(26),w	;volatile
	movwf	(??_rx+0)+0
	movf	(??_rx+0)+0,w
	movwf	(_ch)
	line	71
	
l2364:	
;receivestring.c: 71: tx(ch);
	movf	(_ch),w
	fcall	_tx
	line	72
	
l2366:	
;receivestring.c: 72: data[i]=ch;
	movf	(_ch),w
	movwf	(??_rx+0)+0
	movf	(rx@i),w
	addlw	_data&0ffh
	movwf	fsr0
	movf	(??_rx+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	73
	
l2368:	
;receivestring.c: 73: RCIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7
	line	66
	
l2370:	
	movlw	low(01h)
	addwf	(rx@i),f
	skipnc
	incf	(rx@i+1),f
	movlw	high(01h)
	addwf	(rx@i+1),f
	
l2372:	
	movf	(_ch),w
	xorlw	0Dh
	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l1060
u2230:
	goto	l2374
	
l1059:	
	line	75
	
l2374:	
;receivestring.c: 74: }
;receivestring.c: 75: data[i-1]='\0';
	movf	(rx@i),w
	addlw	0FFh
	addlw	_data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	76
	
l2376:	
;receivestring.c: 76: display1(data);
	movlw	(_data&0ffh)
	movwf	(?_display1)
	movlw	(0x0/2)
	movwf	(?_display1+1)
	fcall	_display1
	line	77
	
l1063:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_display1
psect	text234,local,class=CODE,delta=2
global __ptext234
__ptext234:

;; *************** function _display1 *****************
;; Defined at:
;;		line 47 in file "E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
;; Parameters:    Size  Location     Type
;;  p               2    2[COMMON] PTR unsigned char 
;;		 -> STR_1(5), data(10), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_rx
;;		_main
;; This function uses a non-reentrant model
;;
psect	text234
	file	"E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
	line	47
	global	__size_of_display1
	__size_of_display1	equ	__end_of_display1-_display1
	
_display1:	
	opt	stack 5
; Regs used in _display1: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	48
	
l2344:	
;receivestring.c: 48: while(*p)
	goto	l2352
	
l1047:	
	line	50
;receivestring.c: 49: {
;receivestring.c: 50: RE1=0;
	bcf	(73/8),(73)&7
	line	51
;receivestring.c: 51: RE2=1;
	bsf	(74/8),(74)&7
	line	52
	
l2346:	
;receivestring.c: 52: PORTD=*p++;
	movf	(display1@p+1),w
	movwf	btemp+1
	movf	(display1@p),w
	movwf	fsr0
	fcall	stringtab
	movwf	(8)	;volatile
	
l2348:	
	movlw	low(01h)
	addwf	(display1@p),f
	skipnc
	incf	(display1@p+1),f
	movlw	high(01h)
	addwf	(display1@p+1),f
	line	53
	
l2350:	
;receivestring.c: 53: pulse();
	fcall	_pulse
	goto	l2352
	line	54
	
l1046:	
	line	48
	
l2352:	
	movf	(display1@p+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(display1@p),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2201
	goto	u2200
u2201:
	goto	l1047
u2200:
	goto	l1049
	
l1048:	
	line	55
	
l1049:	
	return
	opt stack 0
GLOBAL	__end_of_display1
	__end_of_display1:
;; =============== function _display1 ends ============

	signat	_display1,4216
	global	_address
psect	text235,local,class=CODE,delta=2
global __ptext235
__ptext235:

;; *************** function _address *****************
;; Defined at:
;;		line 32 in file "E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
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
psect	text235
	file	"E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
	line	32
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 6
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
;address@x stored from wreg
	movwf	(address@x)
	line	33
	
l2338:	
;receivestring.c: 33: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	34
;receivestring.c: 34: RE2=0;
	bcf	(74/8),(74)&7
	line	35
	
l2340:	
;receivestring.c: 35: PORTD=x;
	movf	(address@x),w
	movwf	(8)	;volatile
	line	36
	
l2342:	
;receivestring.c: 36: pulse();
	fcall	_pulse
	line	37
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_address
	__end_of_address:
;; =============== function _address ends ============

	signat	_address,4216
	global	_on
psect	text236,local,class=CODE,delta=2
global __ptext236
__ptext236:

;; *************** function _on *****************
;; Defined at:
;;		line 25 in file "E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
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
psect	text236
	file	"E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
	line	25
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 6
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	26
	
l2332:	
;receivestring.c: 26: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	27
;receivestring.c: 27: RE2=0;
	bcf	(74/8),(74)&7
	line	28
	
l2334:	
;receivestring.c: 28: PORTD=0x0C;
	movlw	(0Ch)
	movwf	(8)	;volatile
	line	29
	
l2336:	
;receivestring.c: 29: pulse();
	fcall	_pulse
	line	30
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of_on
	__end_of_on:
;; =============== function _on ends ============

	signat	_on,88
	global	_type
psect	text237,local,class=CODE,delta=2
global __ptext237
__ptext237:

;; *************** function _type *****************
;; Defined at:
;;		line 18 in file "E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
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
psect	text237
	file	"E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
	line	18
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 6
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
l2326:	
;receivestring.c: 19: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	20
;receivestring.c: 20: RE2=0;
	bcf	(74/8),(74)&7
	line	21
	
l2328:	
;receivestring.c: 21: PORTD=0X38;
	movlw	(038h)
	movwf	(8)	;volatile
	line	22
	
l2330:	
;receivestring.c: 22: pulse();
	fcall	_pulse
	line	23
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_type
	__end_of_type:
;; =============== function _type ends ============

	signat	_type,88
	global	_pulse
psect	text238,local,class=CODE,delta=2
global __ptext238
__ptext238:

;; *************** function _pulse *****************
;; Defined at:
;;		line 11 in file "E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
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
;;		_display1
;;		_main
;;		_display
;; This function uses a non-reentrant model
;;
psect	text238
	file	"E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
	line	11
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg]
	line	12
	
l2320:	
;receivestring.c: 12: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	13
	
l2322:	
;receivestring.c: 13: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_pulse+0)+0+1),f
	movlw	251
movwf	((??_pulse+0)+0),f
u2247:
	decfsz	((??_pulse+0)+0),f
	goto	u2247
	decfsz	((??_pulse+0)+0+1),f
	goto	u2247
	nop2
opt asmopt_on

	line	14
	
l2324:	
;receivestring.c: 14: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	15
;receivestring.c: 15: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_pulse+0)+0+1),f
	movlw	251
movwf	((??_pulse+0)+0),f
u2257:
	decfsz	((??_pulse+0)+0),f
	goto	u2257
	decfsz	((??_pulse+0)+0+1),f
	goto	u2257
	nop2
opt asmopt_on

	line	16
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	_tx
psect	text239,local,class=CODE,delta=2
global __ptext239
__ptext239:

;; *************** function _tx *****************
;; Defined at:
;;		line 57 in file "E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text239
	file	"E:\KTU\Softwares\MP lab\UART\Receive_string\receivestring.c"
	line	57
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 6
; Regs used in _tx: [wreg]
;tx@p stored from wreg
	movwf	(tx@p)
	line	58
	
l2318:	
;receivestring.c: 58: TXREG=p;
	movf	(tx@p),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	59
;receivestring.c: 59: while(TXIF==0);
	goto	l1052
	
l1053:	
	
l1052:	
	btfss	(100/8),(100)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l1052
u2190:
	
l1054:	
	line	60
;receivestring.c: 60: TXIF=0;
	bcf	(100/8),(100)&7
	line	61
	
l1055:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,4216
psect	text240,local,class=CODE,delta=2
global __ptext240
__ptext240:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
