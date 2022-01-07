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
	FNCALL	_main,_on
	FNCALL	_main,_type
	FNCALL	_main,_slave
	FNCALL	_slave,_delay
	FNCALL	_slave,_address
	FNCALL	_slave,_display
	FNCALL	_display,_pulse
	FNCALL	_address,_pulse
	FNCALL	_type,_pulse
	FNCALL	_on,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_data
	global	_PORTB
psect	text126,local,class=CODE,delta=2
global __ptext126
__ptext126:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_SSPIF
_SSPIF	set	99
	global	_SSPSTAT
_SSPSTAT	set	148
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
	file	"slave.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_data:
       ds      5

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
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
	global	?_address
?_address:	; 0 bytes @ 0x0
	global	?_display
?_display:	; 0 bytes @ 0x0
	global	?_slave
?_slave:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@del
delay@del:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_pulse
??_pulse:	; 0 bytes @ 0x2
	global	??_on
??_on:	; 0 bytes @ 0x2
	global	??_type
??_type:	; 0 bytes @ 0x2
	global	??_address
??_address:	; 0 bytes @ 0x2
	global	??_display
??_display:	; 0 bytes @ 0x2
	global	address@data
address@data:	; 1 bytes @ 0x2
	global	display@data
display@data:	; 1 bytes @ 0x2
	ds	1
	global	??_slave
??_slave:	; 0 bytes @ 0x3
	ds	1
	global	slave@i
slave@i:	; 2 bytes @ 0x4
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x6
;;Data sizes: Strings 0, constant 0, data 0, bss 5, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      11
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_slave
;;   _slave->_address
;;   _slave->_display
;;   _pulse->_delay
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
;; (0) _main                                                 0     0      0     180
;;                                 _on
;;                               _type
;;                              _slave
;; ---------------------------------------------------------------------------------
;; (1) _slave                                                3     3      0     150
;;                                              3 COMMON     3     3      0
;;                              _delay
;;                            _address
;;                            _display
;; ---------------------------------------------------------------------------------
;; (2) _display                                              1     1      0      30
;;                                              2 COMMON     1     1      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) _address                                              1     1      0      30
;;                                              2 COMMON     1     1      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _type                                                 0     0      0      15
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _on                                                   0     0      0      15
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (3) _pulse                                                0     0      0      15
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (4) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _on
;;     _pulse
;;       _delay
;;   _type
;;     _pulse
;;       _delay
;;   _slave
;;     _delay
;;     _address
;;       _pulse
;;         _delay
;;     _display
;;       _pulse
;;         _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0       B       3        0.0%
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
;;DATA                 0      0       F      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 58 in file "E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_on
;;		_type
;;		_slave
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
	line	58
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	59
	
l2248:	
;slave.c: 59: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	60
;slave.c: 60: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	61
;slave.c: 61: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	62
;slave.c: 62: PORTD=0X00;
	clrf	(8)	;volatile
	line	63
	
l2250:	
;slave.c: 63: TRISC=0X18;
	movlw	(018h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	64
	
l2252:	
;slave.c: 64: TRISD=0X00;
	clrf	(136)^080h	;volatile
	line	65
	
l2254:	
;slave.c: 65: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	66
	
l2256:	
;slave.c: 66: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	67
	
l2258:	
;slave.c: 67: SSPSTAT=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(148)^080h	;volatile
	line	68
	
l2260:	
;slave.c: 68: SSPCON=0x25;
	movlw	(025h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	69
	
l2262:	
;slave.c: 69: on();
	fcall	_on
	line	70
	
l2264:	
;slave.c: 70: type();
	fcall	_type
	goto	l2266
	line	71
;slave.c: 71: while(1)
	
l1056:	
	line	73
	
l2266:	
;slave.c: 72: {
;slave.c: 73: slave();
	fcall	_slave
	goto	l2266
	line	74
	
l1057:	
	line	71
	goto	l2266
	
l1058:	
	line	75
	
l1059:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_slave
psect	text127,local,class=CODE,delta=2
global __ptext127
__ptext127:

;; *************** function _slave *****************
;; Defined at:
;;		line 46 in file "E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    4[COMMON] int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay
;;		_address
;;		_display
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text127
	file	"E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
	line	46
	global	__size_of_slave
	__size_of_slave	equ	__end_of_slave-_slave
	
_slave:	
	opt	stack 4
; Regs used in _slave: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	47
	
l2228:	
;slave.c: 47: for(int i=0;i<5;i++)
	clrf	(slave@i)
	clrf	(slave@i+1)
	
l2230:	
	movf	(slave@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2155
	movlw	low(05h)
	subwf	(slave@i),w
u2155:

	skipc
	goto	u2151
	goto	u2150
u2151:
	goto	l1050
u2150:
	goto	l1053
	
l2232:	
	goto	l1053
	line	48
	
l1048:	
	line	49
;slave.c: 48: {
;slave.c: 49: while(SSPIF==0);
	goto	l1050
	
l1051:	
	
l1050:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l1050
u2160:
	goto	l2234
	
l1052:	
	line	50
	
l2234:	
;slave.c: 50: data[i] = SSPBUF;
	movf	(19),w	;volatile
	movwf	(??_slave+0)+0
	movf	(slave@i),w
	addlw	_data&0ffh
	movwf	fsr0
	movf	(??_slave+0)+0,w
	movwf	indf
	line	51
	
l2236:	
;slave.c: 51: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	52
	
l2238:	
;slave.c: 52: SSPIF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(99/8),(99)&7
	line	53
	
l2240:	
;slave.c: 53: address(0x80+i);
	movf	(slave@i),w
	addlw	080h
	fcall	_address
	line	54
	
l2242:	
;slave.c: 54: display(data[i]);
	movf	(slave@i),w
	addlw	_data&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_display
	line	47
	
l2244:	
	movlw	low(01h)
	addwf	(slave@i),f
	skipnc
	incf	(slave@i+1),f
	movlw	high(01h)
	addwf	(slave@i+1),f
	
l2246:	
	movf	(slave@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2175
	movlw	low(05h)
	subwf	(slave@i),w
u2175:

	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l1050
u2170:
	goto	l1053
	
l1049:	
	line	56
	
l1053:	
	return
	opt stack 0
GLOBAL	__end_of_slave
	__end_of_slave:
;; =============== function _slave ends ============

	signat	_slave,88
	global	_display
psect	text128,local,class=CODE,delta=2
global __ptext128
__ptext128:

;; *************** function _display *****************
;; Defined at:
;;		line 39 in file "E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_slave
;; This function uses a non-reentrant model
;;
psect	text128
	file	"E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
	line	39
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 4
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@data stored from wreg
	movwf	(display@data)
	line	40
	
l2222:	
;slave.c: 40: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	41
;slave.c: 41: RB1=0;
	bcf	(49/8),(49)&7
	line	42
	
l2224:	
;slave.c: 42: PORTD=data;
	movf	(display@data),w
	movwf	(8)	;volatile
	line	43
	
l2226:	
;slave.c: 43: pulse();
	fcall	_pulse
	line	44
	
l1045:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_address
psect	text129,local,class=CODE,delta=2
global __ptext129
__ptext129:

;; *************** function _address *****************
;; Defined at:
;;		line 32 in file "E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_slave
;; This function uses a non-reentrant model
;;
psect	text129
	file	"E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
	line	32
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 4
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
;address@data stored from wreg
	movwf	(address@data)
	line	33
	
l2216:	
;slave.c: 33: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	34
;slave.c: 34: RB1=0;
	bcf	(49/8),(49)&7
	line	35
	
l2218:	
;slave.c: 35: PORTD= data;
	movf	(address@data),w
	movwf	(8)	;volatile
	line	36
	
l2220:	
;slave.c: 36: pulse();
	fcall	_pulse
	line	37
	
l1042:	
	return
	opt stack 0
GLOBAL	__end_of_address
	__end_of_address:
;; =============== function _address ends ============

	signat	_address,4216
	global	_type
psect	text130,local,class=CODE,delta=2
global __ptext130
__ptext130:

;; *************** function _type *****************
;; Defined at:
;;		line 25 in file "E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
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
psect	text130
	file	"E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
	line	25
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 5
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	26
	
l2210:	
;slave.c: 26: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	27
;slave.c: 27: RB1=0;
	bcf	(49/8),(49)&7
	line	28
	
l2212:	
;slave.c: 28: PORTD=0X38;
	movlw	(038h)
	movwf	(8)	;volatile
	line	29
	
l2214:	
;slave.c: 29: pulse();
	fcall	_pulse
	line	30
	
l1039:	
	return
	opt stack 0
GLOBAL	__end_of_type
	__end_of_type:
;; =============== function _type ends ============

	signat	_type,88
	global	_on
psect	text131,local,class=CODE,delta=2
global __ptext131
__ptext131:

;; *************** function _on *****************
;; Defined at:
;;		line 18 in file "E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
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
psect	text131
	file	"E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
	line	18
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 5
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
l2204:	
;slave.c: 19: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	20
;slave.c: 20: RB1=0;
	bcf	(49/8),(49)&7
	line	21
	
l2206:	
;slave.c: 21: PORTD=0X0E;
	movlw	(0Eh)
	movwf	(8)	;volatile
	line	22
	
l2208:	
;slave.c: 22: pulse();
	fcall	_pulse
	line	23
	
l1036:	
	return
	opt stack 0
GLOBAL	__end_of_on
	__end_of_on:
;; =============== function _on ends ============

	signat	_on,88
	global	_pulse
psect	text132,local,class=CODE,delta=2
global __ptext132
__ptext132:

;; *************** function _pulse *****************
;; Defined at:
;;		line 11 in file "E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
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
;;		_address
;;		_display
;; This function uses a non-reentrant model
;;
psect	text132
	file	"E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
	line	11
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 4
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l2198:	
;slave.c: 12: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	13
	
l2200:	
;slave.c: 13: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	14
	
l2202:	
;slave.c: 14: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	15
;slave.c: 15: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	16
	
l1033:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	_delay
psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:

;; *************** function _delay *****************
;; Defined at:
;;		line 7 in file "E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
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
;;		_slave
;; This function uses a non-reentrant model
;;
psect	text133
	file	"E:\KTU\Softwares\MP lab\SPI\Master_slave\slave.c"
	line	7
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 4
; Regs used in _delay: [wreg]
	line	8
	
l1428:	
;slave.c: 8: while(del--);
	goto	l1430
	
l1028:	
	goto	l1430
	
l1027:	
	
l1430:	
	movlw	low(-1)
	addwf	(delay@del),f
	skipnc
	incf	(delay@del+1),f
	movlw	high(-1)
	addwf	(delay@del+1),f
	movlw	high(-1)
	xorwf	((delay@del+1)),w
	skipz
	goto	u15
	movlw	low(-1)
	xorwf	((delay@del)),w
u15:

	skipz
	goto	u11
	goto	u10
u11:
	goto	l1430
u10:
	goto	l1030
	
l1029:	
	line	9
	
l1030:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
