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
	FNCALL	_main,_address
	FNCALL	_main,_display
	FNCALL	_display,_pulse
	FNCALL	_address,_pulse
	FNCALL	_type,_pulse
	FNCALL	_on,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	main@F1609
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
	line	54

;initializer for main@F1609
	retlw	073h
	retlw	061h
	retlw	062h
	retlw	069h
	retlw	06Eh
	retlw	0
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"lcdinterface.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
main@F1609:
       ds      6

; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
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
	global	??_main
??_main:	; 0 bytes @ 0x3
	global	main@data
main@data:	; 6 bytes @ 0x3
	ds	6
	global	main@i
main@i:	; 2 bytes @ 0x9
	ds	2
;;Data sizes: Strings 0, constant 0, data 6, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      11
;; BANK0           80      0       6
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_address
;;   _main->_display
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
;; (0) _main                                                 8     8      0     247
;;                                              3 COMMON     8     8      0
;;                                 _on
;;                               _type
;;                            _address
;;                            _display
;; ---------------------------------------------------------------------------------
;; (1) _display                                              1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _address                                              1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _type                                                 0     0      0      22
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _on                                                   0     0      0      22
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) _pulse                                                0     0      0      22
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _on
;;     _pulse
;;       _delay
;;   _type
;;     _pulse
;;       _delay
;;   _address
;;     _pulse
;;       _delay
;;   _display
;;     _pulse
;;       _delay
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
;;DATA                 0      0      14      12        0.0%
;;ABS                  0      0      11       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      0       6       5        7.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      B       B       1       78.6%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 45 in file "E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            6    3[COMMON] unsigned char [6]
;;  i               2    9[COMMON] int 
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
;;      Locals:         8       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_on
;;		_type
;;		_address
;;		_display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
	line	45
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	46
	
l2275:	
;lcdinterface.c: 46: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	47
;lcdinterface.c: 47: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	48
;lcdinterface.c: 48: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	49
;lcdinterface.c: 49: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	50
;lcdinterface.c: 50: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	51
;lcdinterface.c: 51: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	52
	
l2277:	
;lcdinterface.c: 52: on();
	fcall	_on
	line	53
	
l2279:	
;lcdinterface.c: 53: type();
	fcall	_type
	line	54
	
l2281:	
;lcdinterface.c: 54: char data[6]="sabin";
	movlw	(main@data)&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@F1609),w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1609)+1,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1609)+2,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1609)+3,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1609)+4,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1609)+5,w
	movwf	indf
	goto	l2283
	line	56
;lcdinterface.c: 55: int i;
;lcdinterface.c: 56: while(1)
	
l1048:	
	line	58
	
l2283:	
;lcdinterface.c: 57: {
;lcdinterface.c: 58: for(i=0;data[i]!='\0';i++)
	clrf	(main@i)
	clrf	(main@i+1)
	goto	l2291
	line	59
	
l1050:	
	line	60
	
l2285:	
;lcdinterface.c: 59: {
;lcdinterface.c: 60: address(0X80+i);
	movf	(main@i),w
	addlw	080h
	fcall	_address
	line	61
	
l2287:	
;lcdinterface.c: 61: display(data[i]);
	movf	(main@i),w
	addlw	main@data&0ffh
	movwf	fsr0
	movf	indf,w
	fcall	_display
	line	58
	
l2289:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l2291
	
l1049:	
	
l2291:	
	movf	(main@i),w
	addlw	main@data&0ffh
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u2171
	goto	u2170
u2171:
	goto	l2285
u2170:
	goto	l2283
	
l1051:	
	goto	l2283
	line	63
	
l1052:	
	line	56
	goto	l2283
	
l1053:	
	line	64
	
l1054:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_display
psect	text193,local,class=CODE,delta=2
global __ptext193
__ptext193:

;; *************** function _display *****************
;; Defined at:
;;		line 38 in file "E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text193
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
	line	38
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@data stored from wreg
	movwf	(display@data)
	line	39
	
l2269:	
;lcdinterface.c: 39: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	40
;lcdinterface.c: 40: RB1=0;
	bcf	(49/8),(49)&7
	line	41
	
l2271:	
;lcdinterface.c: 41: PORTC=data;
	movf	(display@data),w
	movwf	(7)	;volatile
	line	42
	
l2273:	
;lcdinterface.c: 42: pulse();
	fcall	_pulse
	line	43
	
l1043:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_address
psect	text194,local,class=CODE,delta=2
global __ptext194
__ptext194:

;; *************** function _address *****************
;; Defined at:
;;		line 31 in file "E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text194
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
	line	31
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 5
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
;address@data stored from wreg
	movwf	(address@data)
	line	32
	
l2263:	
;lcdinterface.c: 32: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	33
;lcdinterface.c: 33: RB1=0;
	bcf	(49/8),(49)&7
	line	34
	
l2265:	
;lcdinterface.c: 34: PORTC= data;
	movf	(address@data),w
	movwf	(7)	;volatile
	line	35
	
l2267:	
;lcdinterface.c: 35: pulse();
	fcall	_pulse
	line	36
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_address
	__end_of_address:
;; =============== function _address ends ============

	signat	_address,4216
	global	_type
psect	text195,local,class=CODE,delta=2
global __ptext195
__ptext195:

;; *************** function _type *****************
;; Defined at:
;;		line 24 in file "E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
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
psect	text195
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
	line	24
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 5
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	25
	
l2257:	
;lcdinterface.c: 25: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	26
;lcdinterface.c: 26: RB1=0;
	bcf	(49/8),(49)&7
	line	27
	
l2259:	
;lcdinterface.c: 27: PORTC=0X38;
	movlw	(038h)
	movwf	(7)	;volatile
	line	28
	
l2261:	
;lcdinterface.c: 28: pulse();
	fcall	_pulse
	line	29
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of_type
	__end_of_type:
;; =============== function _type ends ============

	signat	_type,88
	global	_on
psect	text196,local,class=CODE,delta=2
global __ptext196
__ptext196:

;; *************** function _on *****************
;; Defined at:
;;		line 17 in file "E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
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
psect	text196
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
	line	17
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 5
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l2251:	
;lcdinterface.c: 18: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	19
;lcdinterface.c: 19: RB1=0;
	bcf	(49/8),(49)&7
	line	20
	
l2253:	
;lcdinterface.c: 20: PORTC=0X0E;
	movlw	(0Eh)
	movwf	(7)	;volatile
	line	21
	
l2255:	
;lcdinterface.c: 21: pulse();
	fcall	_pulse
	line	22
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_on
	__end_of_on:
;; =============== function _on ends ============

	signat	_on,88
	global	_pulse
psect	text197,local,class=CODE,delta=2
global __ptext197
__ptext197:

;; *************** function _pulse *****************
;; Defined at:
;;		line 10 in file "E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
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
psect	text197
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
	line	10
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	11
	
l2245:	
;lcdinterface.c: 11: RB2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	line	12
	
l2247:	
;lcdinterface.c: 12: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	13
	
l2249:	
;lcdinterface.c: 13: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	14
;lcdinterface.c: 14: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	15
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	_delay
psect	text198,local,class=CODE,delta=2
global __ptext198
__ptext198:

;; *************** function _delay *****************
;; Defined at:
;;		line 6 in file "E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
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
psect	text198
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\LCD\Lcdinterface\lcdinterface.c"
	line	6
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	7
	
l2241:	
;lcdinterface.c: 7: while(del--);
	goto	l2243
	
l1026:	
	goto	l2243
	
l1025:	
	
l2243:	
	movlw	low(-1)
	addwf	(delay@del),f
	skipnc
	incf	(delay@del+1),f
	movlw	high(-1)
	addwf	(delay@del+1),f
	movlw	high(-1)
	xorwf	((delay@del+1)),w
	skipz
	goto	u2165
	movlw	low(-1)
	xorwf	((delay@del)),w
u2165:

	skipz
	goto	u2161
	goto	u2160
u2161:
	goto	l2243
u2160:
	goto	l1028
	
l1027:	
	line	8
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text199,local,class=CODE,delta=2
global __ptext199
__ptext199:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
