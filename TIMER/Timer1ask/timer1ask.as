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
	FNCALL	_main,_clear
	FNCALL	_main,_timer1
	FNCALL	_clear,_pulse
	FNCALL	_display,_pulse
	FNCALL	_address,_pulse
	FNCALL	_type,_pulse
	FNCALL	_on,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	main@F1612
	global	main@F1614
	global	main@F1616
	global	main@F1618
	global	main@F1620
psect	idataBANK2,class=CODE,space=0,delta=2
global __pidataBANK2
__pidataBANK2:
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
	line	73

;initializer for main@F1612
	retlw	031h
	retlw	073h
	retlw	074h
	retlw	020h
	retlw	06Ch
	retlw	065h
	retlw	064h
	retlw	020h
	retlw	064h
	retlw	075h
	retlw	072h
	retlw	061h
	retlw	074h
	retlw	069h
	retlw	06Fh
	retlw	06Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	line	74

;initializer for main@F1614
	retlw	032h
	retlw	06Eh
	retlw	064h
	retlw	020h
	retlw	06Ch
	retlw	065h
	retlw	064h
	retlw	020h
	retlw	064h
	retlw	075h
	retlw	072h
	retlw	061h
	retlw	074h
	retlw	069h
	retlw	06Fh
	retlw	06Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	line	75

;initializer for main@F1616
	retlw	033h
	retlw	072h
	retlw	064h
	retlw	020h
	retlw	06Ch
	retlw	065h
	retlw	064h
	retlw	020h
	retlw	064h
	retlw	075h
	retlw	072h
	retlw	061h
	retlw	074h
	retlw	069h
	retlw	06Fh
	retlw	06Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	line	76

;initializer for main@F1618
	retlw	042h
	retlw	06Ch
	retlw	069h
	retlw	06Eh
	retlw	06Bh
	retlw	020h
	retlw	070h
	retlw	061h
	retlw	074h
	retlw	074h
	retlw	065h
	retlw	072h
	retlw	06Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	77

;initializer for main@F1620
	retlw	050h
	retlw	072h
	retlw	06Fh
	retlw	063h
	retlw	065h
	retlw	073h
	retlw	073h
	retlw	069h
	retlw	06Eh
	retlw	067h
	global	_count
	global	_PORTA
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
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
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
	file	"timer1ask.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_count:
       ds      2

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
main@F1620:
       ds      10

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
	line	74
main@F1614:
       ds      20

psect	dataBANK3
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
	line	75
main@F1616:
       ds      20

psect	dataBANK3
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
	line	76
main@F1618:
       ds      20

psect	dataBANK2,class=BANK2,space=1
global __pdataBANK2
__pdataBANK2:
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
	line	73
main@F1612:
       ds      40

; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
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
; Initialize objects allocated to BANK3
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK3
	bsf	status, 7	;select IRP bank2
	movlw low(__pdataBANK3+60)
	movwf btemp-1,f
	movlw high(__pidataBANK3)
	movwf btemp,f
	movlw low(__pidataBANK3)
	movwf btemp+1,f
	movlw low(__pdataBANK3)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK2
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK2
	movlw low(__pdataBANK2+40)
	movwf btemp-1,f
	movlw high(__pidataBANK2)
	movwf btemp,f
	movlw low(__pidataBANK2)
	movwf btemp+1,f
	movlw low(__pdataBANK2)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+10)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	main@pattern
main@pattern:	; 20 bytes @ 0x0
	ds	20
	global	main@process
main@process:	; 10 bytes @ 0x14
	ds	10
	global	main@val1
main@val1:	; 2 bytes @ 0x1E
	ds	2
	global	main@val2
main@val2:	; 2 bytes @ 0x20
	ds	2
	global	main@val3
main@val3:	; 2 bytes @ 0x22
	ds	2
	global	main@patval
main@patval:	; 6 bytes @ 0x24
	ds	6
	global	main@patt
main@patt:	; 3 bytes @ 0x2A
	ds	3
	global	main@arr2
main@arr2:	; 1 bytes @ 0x2D
	ds	1
	global	main@arr3
main@arr3:	; 1 bytes @ 0x2E
	ds	1
	global	main@control
main@control:	; 2 bytes @ 0x2F
	ds	2
	global	main@k
main@k:	; 2 bytes @ 0x31
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x33
	ds	2
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_timer1
?_timer1:	; 0 bytes @ 0x0
	global	??_timer1
??_timer1:	; 0 bytes @ 0x0
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
	global	?_clear
?_clear:	; 0 bytes @ 0x0
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
	global	??_clear
??_clear:	; 0 bytes @ 0x2
	global	address@data
address@data:	; 1 bytes @ 0x2
	global	display@data
display@data:	; 1 bytes @ 0x2
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x3
	ds	4
	global	main@j
main@j:	; 2 bytes @ 0x7
	ds	2
	global	main@arr1
main@arr1:	; 1 bytes @ 0x9
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@first
main@first:	; 40 bytes @ 0x0
	ds	40
	global	main@second
main@second:	; 20 bytes @ 0x28
	ds	20
	global	main@third
main@third:	; 20 bytes @ 0x3C
	ds	20
;;Data sizes: Strings 0, constant 0, data 110, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80     80      80
;; BANK1           80     53      65
;; BANK3           96      0      60
;; BANK2           96      0      40

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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                               140   140      0    2076
;;                                              3 COMMON     7     7      0
;;                                              0 BANK0     80    80      0
;;                                              0 BANK1     53    53      0
;;                                 _on
;;                               _type
;;                            _address
;;                            _display
;;                              _clear
;;                             _timer1
;; ---------------------------------------------------------------------------------
;; (1) _clear                                                0     0      0      22
;;                              _pulse
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
;; (1) _timer1                                               0     0      0       0
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
;;   _clear
;;     _pulse
;;       _delay
;;   _timer1
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0      3C       9       62.5%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0      28      11       41.7%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50     35      41       7       81.3%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0     102      12        0.0%
;;ABS                  0      0      FF       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50     50      50       5      100.0%
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
;;		line 61 in file "E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  first          40    0[BANK0 ] unsigned char [40]
;;  pattern        20    0[BANK1 ] unsigned char [20]
;;  third          20   60[BANK0 ] unsigned char [20]
;;  second         20   40[BANK0 ] unsigned char [20]
;;  process        10   20[BANK1 ] unsigned char [10]
;;  patval          6   36[BANK1 ] int [3]
;;  patt            3   42[BANK1 ] unsigned char [3]
;;  i               2   51[BANK1 ] int 
;;  k               2   49[BANK1 ] int 
;;  control         2   47[BANK1 ] int 
;;  val3            2   34[BANK1 ] int 
;;  val2            2   32[BANK1 ] int 
;;  val1            2   30[BANK1 ] int 
;;  j               2    7[COMMON] int 
;;  arr3            1   46[BANK1 ] unsigned char 
;;  arr2            1   45[BANK1 ] unsigned char 
;;  arr1            1    9[COMMON] unsigned char 
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
;;      Locals:         3      80      53       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         7      80      53       0       0
;;Total ram usage:      140 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_on
;;		_type
;;		_address
;;		_display
;;		_clear
;;		_timer1
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
	line	61
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	62
	
l2999:	
;timer1ask.c: 62: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	63
;timer1ask.c: 63: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	64
;timer1ask.c: 64: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	65
;timer1ask.c: 65: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	66
;timer1ask.c: 66: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	67
;timer1ask.c: 67: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	68
;timer1ask.c: 68: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	69
	
l3001:	
;timer1ask.c: 69: TRISD=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	70
	
l3003:	
;timer1ask.c: 70: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	71
	
l3005:	
;timer1ask.c: 71: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	72
	
l3007:	
;timer1ask.c: 72: T1CON=0X31;
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	73
	
l3009:	
;timer1ask.c: 73: char first[40]="1st led duration";
	movlw	(main@first)&0ffh
	movwf	fsr0
	movlw	low(main@F1612)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	40
	movwf	((??_main+0)+0+2)
u3320:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u3320
	line	74
	
l3011:	
;timer1ask.c: 74: char second[20]="2nd led duration";
	movlw	(main@second)&0ffh
	movwf	fsr0
	movlw	low(main@F1614)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u3330:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u3330
	line	75
	
l3013:	
;timer1ask.c: 75: char third[20]="3rd led duration";
	movlw	(main@third)&0ffh
	movwf	fsr0
	movlw	low(main@F1616)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u3340:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u3340
	line	76
	
l3015:	
;timer1ask.c: 76: char pattern[20]="Blink pattern";
	movlw	(main@pattern)&0ffh
	movwf	fsr0
	movlw	low(main@F1618)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u3350:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u3350
	line	77
	
l3017:	
;timer1ask.c: 77: char process[10]="Processing";
	movlw	(main@process)&0ffh
	movwf	fsr0
	movlw	low(main@F1620)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u3360:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u3360
	line	78
	
l3019:	
;timer1ask.c: 78: int control=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control)^080h
	movlw	high(01h)
	movwf	((main@control)^080h)+1
	line	79
	
l3021:	
;timer1ask.c: 79: int i,j=0;
	clrf	(main@j)
	clrf	(main@j+1)
	line	84
	
l3023:	
;timer1ask.c: 80: char arr1,arr2,arr3;
;timer1ask.c: 81: int val1,val2,val3;
;timer1ask.c: 82: char patt[3];
;timer1ask.c: 83: int patval[3];
;timer1ask.c: 84: int k=0;
	clrf	(main@k)^080h
	clrf	(main@k+1)^080h
	line	85
	
l3025:	
;timer1ask.c: 85: on();
	fcall	_on
	line	86
	
l3027:	
;timer1ask.c: 86: type();
	fcall	_type
	goto	l3029
	line	87
;timer1ask.c: 87: while(1)
	
l1065:	
	line	89
	
l3029:	
;timer1ask.c: 88: {
;timer1ask.c: 89: if(control==1)
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(main@control)^080h,w
	iorwf	(main@control+1)^080h,w
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l1066
u3370:
	line	91
	
l3031:	
;timer1ask.c: 90: {
;timer1ask.c: 91: for(i=0;i<15;i++)
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	
l3033:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3385
	movlw	low(0Fh)
	subwf	(main@i)^080h,w
u3385:

	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l3037
u3380:
	goto	l3045
	
l3035:	
	goto	l3045
	line	92
	
l1067:	
	line	93
	
l3037:	
;timer1ask.c: 92: {
;timer1ask.c: 93: address(0X80+i);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	addlw	080h
	fcall	_address
	line	94
	
l3039:	
;timer1ask.c: 94: display(first[i]);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	addlw	main@first&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	91
	
l3041:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@i)^080h,f
	skipnc
	incf	(main@i+1)^080h,f
	movlw	high(01h)
	addwf	(main@i+1)^080h,f
	
l3043:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3395
	movlw	low(0Fh)
	subwf	(main@i)^080h,w
u3395:

	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l3037
u3390:
	goto	l3045
	
l1068:	
	line	96
	
l3045:	
;timer1ask.c: 95: }
;timer1ask.c: 96: control=2;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control)^080h
	movlw	high(02h)
	movwf	((main@control)^080h)+1
	line	97
	
l1066:	
	line	98
;timer1ask.c: 97: }
;timer1ask.c: 98: if(control==2)
	movlw	02h
	xorwf	(main@control)^080h,w
	iorwf	(main@control+1)^080h,w
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l3145
u3400:
	line	100
	
l3047:	
;timer1ask.c: 99: {
;timer1ask.c: 100: address(0XC0+0);
	movlw	(0C0h)
	fcall	_address
	line	101
;timer1ask.c: 101: display(arr1);
	movf	(main@arr1),w
	fcall	_display
	line	102
	
l3049:	
;timer1ask.c: 102: RD3=1;RD4=0;RD5=0;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	
l3051:	
	bcf	(68/8),(68)&7
	
l3053:	
	bcf	(69/8),(69)&7
	
l3055:	
	bcf	(70/8),(70)&7
	line	103
	
l3057:	
;timer1ask.c: 103: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3411
	goto	u3410
u3411:
	goto	l3063
u3410:
	goto	l1071
	line	105
	
l3059:	
;timer1ask.c: 104: {
;timer1ask.c: 105: while(RD0==1);
	goto	l1071
	
l1072:	
	
l1071:	
	btfsc	(64/8),(64)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l1071
u3420:
	goto	l3061
	
l1073:	
	line	106
	
l3061:	
;timer1ask.c: 106: arr1='1';
	movlw	(031h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l3063
	line	107
	
l1070:	
	line	108
	
l3063:	
;timer1ask.c: 107: }
;timer1ask.c: 108: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l3069
u3430:
	goto	l1075
	line	110
	
l3065:	
;timer1ask.c: 109: {
;timer1ask.c: 110: while(RD1==1);
	goto	l1075
	
l1076:	
	
l1075:	
	btfsc	(65/8),(65)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l1075
u3440:
	goto	l3067
	
l1077:	
	line	111
	
l3067:	
;timer1ask.c: 111: arr1='2';
	movlw	(032h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l3069
	line	112
	
l1074:	
	line	113
	
l3069:	
;timer1ask.c: 112: }
;timer1ask.c: 113: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u3451
	goto	u3450
u3451:
	goto	l3075
u3450:
	goto	l1079
	line	115
	
l3071:	
;timer1ask.c: 114: {
;timer1ask.c: 115: while(RD2==1);
	goto	l1079
	
l1080:	
	
l1079:	
	btfsc	(66/8),(66)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l1079
u3460:
	goto	l3073
	
l1081:	
	line	116
	
l3073:	
;timer1ask.c: 116: arr1='3';
	movlw	(033h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l3075
	line	117
	
l1078:	
	line	118
	
l3075:	
;timer1ask.c: 117: }
;timer1ask.c: 118: RD3=0;RD4=1;RD5=0;RD6=0;
	bcf	(67/8),(67)&7
	
l3077:	
	bsf	(68/8),(68)&7
	
l3079:	
	bcf	(69/8),(69)&7
	
l3081:	
	bcf	(70/8),(70)&7
	line	119
	
l3083:	
;timer1ask.c: 119: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l3089
u3470:
	goto	l1083
	line	121
	
l3085:	
;timer1ask.c: 120: {
;timer1ask.c: 121: while(RD0==1);
	goto	l1083
	
l1084:	
	
l1083:	
	btfsc	(64/8),(64)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l1083
u3480:
	goto	l3087
	
l1085:	
	line	122
	
l3087:	
;timer1ask.c: 122: arr1='4';
	movlw	(034h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l3089
	line	123
	
l1082:	
	line	124
	
l3089:	
;timer1ask.c: 123: }
;timer1ask.c: 124: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u3491
	goto	u3490
u3491:
	goto	l3095
u3490:
	goto	l1087
	line	126
	
l3091:	
;timer1ask.c: 125: {
;timer1ask.c: 126: while(RD1==1);
	goto	l1087
	
l1088:	
	
l1087:	
	btfsc	(65/8),(65)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l1087
u3500:
	goto	l3093
	
l1089:	
	line	127
	
l3093:	
;timer1ask.c: 127: arr1='5';
	movlw	(035h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l3095
	line	128
	
l1086:	
	line	129
	
l3095:	
;timer1ask.c: 128: }
;timer1ask.c: 129: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l3101
u3510:
	goto	l1091
	line	131
	
l3097:	
;timer1ask.c: 130: {
;timer1ask.c: 131: while(RD2==1);
	goto	l1091
	
l1092:	
	
l1091:	
	btfsc	(66/8),(66)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l1091
u3520:
	goto	l3099
	
l1093:	
	line	132
	
l3099:	
;timer1ask.c: 132: arr1='6';
	movlw	(036h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l3101
	line	133
	
l1090:	
	line	134
	
l3101:	
;timer1ask.c: 133: }
;timer1ask.c: 134: RD3=0;RD4=0;RD5=1;RD6=0;
	bcf	(67/8),(67)&7
	
l3103:	
	bcf	(68/8),(68)&7
	
l3105:	
	bsf	(69/8),(69)&7
	
l3107:	
	bcf	(70/8),(70)&7
	line	135
	
l3109:	
;timer1ask.c: 135: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l3115
u3530:
	goto	l1095
	line	137
	
l3111:	
;timer1ask.c: 136: {
;timer1ask.c: 137: while(RD0==1);
	goto	l1095
	
l1096:	
	
l1095:	
	btfsc	(64/8),(64)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l1095
u3540:
	goto	l3113
	
l1097:	
	line	138
	
l3113:	
;timer1ask.c: 138: arr1='7';
	movlw	(037h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l3115
	line	139
	
l1094:	
	line	140
	
l3115:	
;timer1ask.c: 139: }
;timer1ask.c: 140: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u3551
	goto	u3550
u3551:
	goto	l3121
u3550:
	goto	l1099
	line	142
	
l3117:	
;timer1ask.c: 141: {
;timer1ask.c: 142: while(RD1==1);
	goto	l1099
	
l1100:	
	
l1099:	
	btfsc	(65/8),(65)&7
	goto	u3561
	goto	u3560
u3561:
	goto	l1099
u3560:
	goto	l3119
	
l1101:	
	line	143
	
l3119:	
;timer1ask.c: 143: arr1='8';
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l3121
	line	144
	
l1098:	
	line	145
	
l3121:	
;timer1ask.c: 144: }
;timer1ask.c: 145: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u3571
	goto	u3570
u3571:
	goto	l3127
u3570:
	goto	l1103
	line	147
	
l3123:	
;timer1ask.c: 146: {
;timer1ask.c: 147: while(RD2==1);
	goto	l1103
	
l1104:	
	
l1103:	
	btfsc	(66/8),(66)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l1103
u3580:
	goto	l3125
	
l1105:	
	line	148
	
l3125:	
;timer1ask.c: 148: arr1='9';
	movlw	(039h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l3127
	line	149
	
l1102:	
	line	150
	
l3127:	
;timer1ask.c: 149: }
;timer1ask.c: 150: RD3=0;RD4=0;RD5=0;RD6=1;
	bcf	(67/8),(67)&7
	
l3129:	
	bcf	(68/8),(68)&7
	
l3131:	
	bcf	(69/8),(69)&7
	
l3133:	
	bsf	(70/8),(70)&7
	line	151
	
l3135:	
;timer1ask.c: 151: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l3143
u3590:
	goto	l1107
	line	153
	
l3137:	
;timer1ask.c: 152: {
;timer1ask.c: 153: while(RD0==1);
	goto	l1107
	
l1108:	
	
l1107:	
	btfsc	(64/8),(64)&7
	goto	u3601
	goto	u3600
u3601:
	goto	l1107
u3600:
	goto	l3139
	
l1109:	
	line	154
	
l3139:	
;timer1ask.c: 154: control=3;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control)^080h
	movlw	high(03h)
	movwf	((main@control)^080h)+1
	line	155
	
l3141:	
;timer1ask.c: 155: clear();
	fcall	_clear
	goto	l3143
	line	156
	
l1106:	
	line	157
	
l3143:	
;timer1ask.c: 156: }
;timer1ask.c: 157: val1= arr1-'0';
	movf	(main@arr1),w
	addlw	low(0FFD0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@val1)^080h
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((main@val1)^080h)+1
	goto	l3145
	line	158
	
l1069:	
	line	159
	
l3145:	
;timer1ask.c: 158: }
;timer1ask.c: 159: if(control==3)
	movlw	03h
	xorwf	(main@control)^080h,w
	iorwf	(main@control+1)^080h,w
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l1110
u3610:
	line	161
	
l3147:	
;timer1ask.c: 160: {
;timer1ask.c: 161: clear();
	fcall	_clear
	line	162
	
l3149:	
;timer1ask.c: 162: for(i=0;i<15;i++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	
l3151:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3625
	movlw	low(0Fh)
	subwf	(main@i)^080h,w
u3625:

	skipc
	goto	u3621
	goto	u3620
u3621:
	goto	l3155
u3620:
	goto	l3163
	
l3153:	
	goto	l3163
	line	163
	
l1111:	
	line	164
	
l3155:	
;timer1ask.c: 163: {
;timer1ask.c: 164: address(0X80+i);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	addlw	080h
	fcall	_address
	line	165
	
l3157:	
;timer1ask.c: 165: display(second[i]);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	addlw	main@second&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	162
	
l3159:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@i)^080h,f
	skipnc
	incf	(main@i+1)^080h,f
	movlw	high(01h)
	addwf	(main@i+1)^080h,f
	
l3161:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3635
	movlw	low(0Fh)
	subwf	(main@i)^080h,w
u3635:

	skipc
	goto	u3631
	goto	u3630
u3631:
	goto	l3155
u3630:
	goto	l3163
	
l1112:	
	line	167
	
l3163:	
;timer1ask.c: 166: }
;timer1ask.c: 167: control=4;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control)^080h
	movlw	high(04h)
	movwf	((main@control)^080h)+1
	line	168
	
l1110:	
	line	169
;timer1ask.c: 168: }
;timer1ask.c: 169: if(control==4)
	movlw	04h
	xorwf	(main@control)^080h,w
	iorwf	(main@control+1)^080h,w
	skipz
	goto	u3641
	goto	u3640
u3641:
	goto	l1113
u3640:
	line	172
	
l3165:	
;timer1ask.c: 170: {
;timer1ask.c: 172: address(0XC0+0);
	movlw	(0C0h)
	fcall	_address
	line	173
;timer1ask.c: 173: display(arr2);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@arr2)^080h,w
	fcall	_display
	line	174
	
l3167:	
;timer1ask.c: 174: RD3=1;RD4=0;RD5=0;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	
l3169:	
	bcf	(68/8),(68)&7
	
l3171:	
	bcf	(69/8),(69)&7
	
l3173:	
	bcf	(70/8),(70)&7
	line	175
	
l3175:	
;timer1ask.c: 175: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3651
	goto	u3650
u3651:
	goto	l3181
u3650:
	goto	l1115
	line	177
	
l3177:	
;timer1ask.c: 176: {
;timer1ask.c: 177: while(RD0==1);
	goto	l1115
	
l1116:	
	
l1115:	
	btfsc	(64/8),(64)&7
	goto	u3661
	goto	u3660
u3661:
	goto	l1115
u3660:
	goto	l3179
	
l1117:	
	line	178
	
l3179:	
;timer1ask.c: 178: arr2='1';
	movlw	(031h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr2)^080h
	goto	l3181
	line	179
	
l1114:	
	line	180
	
l3181:	
;timer1ask.c: 179: }
;timer1ask.c: 180: if(RD1==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(65/8),(65)&7
	goto	u3671
	goto	u3670
u3671:
	goto	l3187
u3670:
	goto	l1119
	line	182
	
l3183:	
;timer1ask.c: 181: {
;timer1ask.c: 182: while(RD1==1);
	goto	l1119
	
l1120:	
	
l1119:	
	btfsc	(65/8),(65)&7
	goto	u3681
	goto	u3680
u3681:
	goto	l1119
u3680:
	goto	l3185
	
l1121:	
	line	183
	
l3185:	
;timer1ask.c: 183: arr2='2';
	movlw	(032h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr2)^080h
	goto	l3187
	line	184
	
l1118:	
	line	185
	
l3187:	
;timer1ask.c: 184: }
;timer1ask.c: 185: if(RD2==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(66/8),(66)&7
	goto	u3691
	goto	u3690
u3691:
	goto	l3193
u3690:
	goto	l1123
	line	187
	
l3189:	
;timer1ask.c: 186: {
;timer1ask.c: 187: while(RD2==1);
	goto	l1123
	
l1124:	
	
l1123:	
	btfsc	(66/8),(66)&7
	goto	u3701
	goto	u3700
u3701:
	goto	l1123
u3700:
	goto	l3191
	
l1125:	
	line	188
	
l3191:	
;timer1ask.c: 188: arr2='3';
	movlw	(033h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr2)^080h
	goto	l3193
	line	189
	
l1122:	
	line	190
	
l3193:	
;timer1ask.c: 189: }
;timer1ask.c: 190: RD3=0;RD4=1;RD5=0;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(67/8),(67)&7
	
l3195:	
	bsf	(68/8),(68)&7
	
l3197:	
	bcf	(69/8),(69)&7
	
l3199:	
	bcf	(70/8),(70)&7
	line	191
	
l3201:	
;timer1ask.c: 191: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3711
	goto	u3710
u3711:
	goto	l3207
u3710:
	goto	l1127
	line	193
	
l3203:	
;timer1ask.c: 192: {
;timer1ask.c: 193: while(RD0==1);
	goto	l1127
	
l1128:	
	
l1127:	
	btfsc	(64/8),(64)&7
	goto	u3721
	goto	u3720
u3721:
	goto	l1127
u3720:
	goto	l3205
	
l1129:	
	line	194
	
l3205:	
;timer1ask.c: 194: arr2='4';
	movlw	(034h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr2)^080h
	goto	l3207
	line	195
	
l1126:	
	line	196
	
l3207:	
;timer1ask.c: 195: }
;timer1ask.c: 196: if(RD1==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(65/8),(65)&7
	goto	u3731
	goto	u3730
u3731:
	goto	l3213
u3730:
	goto	l1131
	line	198
	
l3209:	
;timer1ask.c: 197: {
;timer1ask.c: 198: while(RD1==1);
	goto	l1131
	
l1132:	
	
l1131:	
	btfsc	(65/8),(65)&7
	goto	u3741
	goto	u3740
u3741:
	goto	l1131
u3740:
	goto	l3211
	
l1133:	
	line	199
	
l3211:	
;timer1ask.c: 199: arr2='5';
	movlw	(035h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr2)^080h
	goto	l3213
	line	200
	
l1130:	
	line	201
	
l3213:	
;timer1ask.c: 200: }
;timer1ask.c: 201: if(RD2==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(66/8),(66)&7
	goto	u3751
	goto	u3750
u3751:
	goto	l3219
u3750:
	goto	l1135
	line	203
	
l3215:	
;timer1ask.c: 202: {
;timer1ask.c: 203: while(RD2==1);
	goto	l1135
	
l1136:	
	
l1135:	
	btfsc	(66/8),(66)&7
	goto	u3761
	goto	u3760
u3761:
	goto	l1135
u3760:
	goto	l3217
	
l1137:	
	line	204
	
l3217:	
;timer1ask.c: 204: arr2='6';
	movlw	(036h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr2)^080h
	goto	l3219
	line	205
	
l1134:	
	line	206
	
l3219:	
;timer1ask.c: 205: }
;timer1ask.c: 206: RD3=0;RD4=0;RD5=1;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(67/8),(67)&7
	
l3221:	
	bcf	(68/8),(68)&7
	
l3223:	
	bsf	(69/8),(69)&7
	
l3225:	
	bcf	(70/8),(70)&7
	line	207
	
l3227:	
;timer1ask.c: 207: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l3233
u3770:
	goto	l1139
	line	209
	
l3229:	
;timer1ask.c: 208: {
;timer1ask.c: 209: while(RD0==1);
	goto	l1139
	
l1140:	
	
l1139:	
	btfsc	(64/8),(64)&7
	goto	u3781
	goto	u3780
u3781:
	goto	l1139
u3780:
	goto	l3231
	
l1141:	
	line	210
	
l3231:	
;timer1ask.c: 210: arr2='7';
	movlw	(037h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr2)^080h
	goto	l3233
	line	211
	
l1138:	
	line	212
	
l3233:	
;timer1ask.c: 211: }
;timer1ask.c: 212: if(RD1==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(65/8),(65)&7
	goto	u3791
	goto	u3790
u3791:
	goto	l3239
u3790:
	goto	l1143
	line	214
	
l3235:	
;timer1ask.c: 213: {
;timer1ask.c: 214: while(RD1==1);
	goto	l1143
	
l1144:	
	
l1143:	
	btfsc	(65/8),(65)&7
	goto	u3801
	goto	u3800
u3801:
	goto	l1143
u3800:
	goto	l3237
	
l1145:	
	line	215
	
l3237:	
;timer1ask.c: 215: arr2='8';
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr2)^080h
	goto	l3239
	line	216
	
l1142:	
	line	217
	
l3239:	
;timer1ask.c: 216: }
;timer1ask.c: 217: if(RD2==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(66/8),(66)&7
	goto	u3811
	goto	u3810
u3811:
	goto	l3245
u3810:
	goto	l1147
	line	219
	
l3241:	
;timer1ask.c: 218: {
;timer1ask.c: 219: while(RD2==1);
	goto	l1147
	
l1148:	
	
l1147:	
	btfsc	(66/8),(66)&7
	goto	u3821
	goto	u3820
u3821:
	goto	l1147
u3820:
	goto	l3243
	
l1149:	
	line	220
	
l3243:	
;timer1ask.c: 220: arr2='9';
	movlw	(039h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr2)^080h
	goto	l3245
	line	221
	
l1146:	
	line	222
	
l3245:	
;timer1ask.c: 221: }
;timer1ask.c: 222: RD3=0;RD4=0;RD5=0;RD6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(67/8),(67)&7
	
l3247:	
	bcf	(68/8),(68)&7
	
l3249:	
	bcf	(69/8),(69)&7
	
l3251:	
	bsf	(70/8),(70)&7
	line	223
	
l3253:	
;timer1ask.c: 223: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3831
	goto	u3830
u3831:
	goto	l1150
u3830:
	goto	l1151
	line	225
	
l3255:	
;timer1ask.c: 224: {
;timer1ask.c: 225: while(RD0==1);
	goto	l1151
	
l1152:	
	
l1151:	
	btfsc	(64/8),(64)&7
	goto	u3841
	goto	u3840
u3841:
	goto	l1151
u3840:
	goto	l3257
	
l1153:	
	line	226
	
l3257:	
;timer1ask.c: 226: control=5;
	movlw	low(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control)^080h
	movlw	high(05h)
	movwf	((main@control)^080h)+1
	line	227
	
l1150:	
	line	228
;timer1ask.c: 227: }
;timer1ask.c: 228: val2= arr2-'0';
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@arr2)^080h,w
	addlw	low(0FFD0h)
	movwf	(main@val2)^080h
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((main@val2)^080h)+1
	line	229
	
l1113:	
	line	230
;timer1ask.c: 229: }
;timer1ask.c: 230: if(control==5)
	movlw	05h
	xorwf	(main@control)^080h,w
	iorwf	(main@control+1)^080h,w
	skipz
	goto	u3851
	goto	u3850
u3851:
	goto	l1154
u3850:
	line	232
	
l3259:	
;timer1ask.c: 231: {
;timer1ask.c: 232: clear();
	fcall	_clear
	line	233
	
l3261:	
;timer1ask.c: 233: for(i=0;i<15;i++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	
l3263:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3865
	movlw	low(0Fh)
	subwf	(main@i)^080h,w
u3865:

	skipc
	goto	u3861
	goto	u3860
u3861:
	goto	l3267
u3860:
	goto	l3275
	
l3265:	
	goto	l3275
	line	234
	
l1155:	
	line	235
	
l3267:	
;timer1ask.c: 234: {
;timer1ask.c: 235: address(0X80+i);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	addlw	080h
	fcall	_address
	line	236
	
l3269:	
;timer1ask.c: 236: display(third[i]);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	addlw	main@third&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	233
	
l3271:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@i)^080h,f
	skipnc
	incf	(main@i+1)^080h,f
	movlw	high(01h)
	addwf	(main@i+1)^080h,f
	
l3273:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3875
	movlw	low(0Fh)
	subwf	(main@i)^080h,w
u3875:

	skipc
	goto	u3871
	goto	u3870
u3871:
	goto	l3267
u3870:
	goto	l3275
	
l1156:	
	line	238
	
l3275:	
;timer1ask.c: 237: }
;timer1ask.c: 238: control=6;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control)^080h
	movlw	high(06h)
	movwf	((main@control)^080h)+1
	line	239
	
l1154:	
	line	240
;timer1ask.c: 239: }
;timer1ask.c: 240: if(control==6)
	movlw	06h
	xorwf	(main@control)^080h,w
	iorwf	(main@control+1)^080h,w
	skipz
	goto	u3881
	goto	u3880
u3881:
	goto	l1157
u3880:
	line	242
	
l3277:	
;timer1ask.c: 241: {
;timer1ask.c: 242: address(0XC0+0);
	movlw	(0C0h)
	fcall	_address
	line	243
;timer1ask.c: 243: display(arr3);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@arr3)^080h,w
	fcall	_display
	line	244
	
l3279:	
;timer1ask.c: 244: RD3=1;RD4=0;RD5=0;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	
l3281:	
	bcf	(68/8),(68)&7
	
l3283:	
	bcf	(69/8),(69)&7
	
l3285:	
	bcf	(70/8),(70)&7
	line	245
	
l3287:	
;timer1ask.c: 245: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3891
	goto	u3890
u3891:
	goto	l3293
u3890:
	goto	l1159
	line	247
	
l3289:	
;timer1ask.c: 246: {
;timer1ask.c: 247: while(RD0==1);
	goto	l1159
	
l1160:	
	
l1159:	
	btfsc	(64/8),(64)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l1159
u3900:
	goto	l3291
	
l1161:	
	line	248
	
l3291:	
;timer1ask.c: 248: arr3='1';
	movlw	(031h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr3)^080h
	goto	l3293
	line	249
	
l1158:	
	line	250
	
l3293:	
;timer1ask.c: 249: }
;timer1ask.c: 250: if(RD1==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(65/8),(65)&7
	goto	u3911
	goto	u3910
u3911:
	goto	l3299
u3910:
	goto	l1163
	line	252
	
l3295:	
;timer1ask.c: 251: {
;timer1ask.c: 252: while(RD1==1);
	goto	l1163
	
l1164:	
	
l1163:	
	btfsc	(65/8),(65)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l1163
u3920:
	goto	l3297
	
l1165:	
	line	253
	
l3297:	
;timer1ask.c: 253: arr3='2';
	movlw	(032h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr3)^080h
	goto	l3299
	line	254
	
l1162:	
	line	255
	
l3299:	
;timer1ask.c: 254: }
;timer1ask.c: 255: if(RD2==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(66/8),(66)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l3305
u3930:
	goto	l1167
	line	257
	
l3301:	
;timer1ask.c: 256: {
;timer1ask.c: 257: while(RD2==1);
	goto	l1167
	
l1168:	
	
l1167:	
	btfsc	(66/8),(66)&7
	goto	u3941
	goto	u3940
u3941:
	goto	l1167
u3940:
	goto	l3303
	
l1169:	
	line	258
	
l3303:	
;timer1ask.c: 258: arr3='3';
	movlw	(033h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr3)^080h
	goto	l3305
	line	259
	
l1166:	
	line	260
	
l3305:	
;timer1ask.c: 259: }
;timer1ask.c: 260: RD3=0;RD4=1;RD5=0;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(67/8),(67)&7
	
l3307:	
	bsf	(68/8),(68)&7
	
l3309:	
	bcf	(69/8),(69)&7
	
l3311:	
	bcf	(70/8),(70)&7
	line	261
	
l3313:	
;timer1ask.c: 261: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3951
	goto	u3950
u3951:
	goto	l3319
u3950:
	goto	l1171
	line	263
	
l3315:	
;timer1ask.c: 262: {
;timer1ask.c: 263: while(RD0==1);
	goto	l1171
	
l1172:	
	
l1171:	
	btfsc	(64/8),(64)&7
	goto	u3961
	goto	u3960
u3961:
	goto	l1171
u3960:
	goto	l3317
	
l1173:	
	line	264
	
l3317:	
;timer1ask.c: 264: arr3='4';
	movlw	(034h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr3)^080h
	goto	l3319
	line	265
	
l1170:	
	line	266
	
l3319:	
;timer1ask.c: 265: }
;timer1ask.c: 266: if(RD1==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(65/8),(65)&7
	goto	u3971
	goto	u3970
u3971:
	goto	l3325
u3970:
	goto	l1175
	line	268
	
l3321:	
;timer1ask.c: 267: {
;timer1ask.c: 268: while(RD1==1);
	goto	l1175
	
l1176:	
	
l1175:	
	btfsc	(65/8),(65)&7
	goto	u3981
	goto	u3980
u3981:
	goto	l1175
u3980:
	goto	l3323
	
l1177:	
	line	269
	
l3323:	
;timer1ask.c: 269: arr3='5';
	movlw	(035h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr3)^080h
	goto	l3325
	line	270
	
l1174:	
	line	271
	
l3325:	
;timer1ask.c: 270: }
;timer1ask.c: 271: if(RD2==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(66/8),(66)&7
	goto	u3991
	goto	u3990
u3991:
	goto	l3331
u3990:
	goto	l1179
	line	273
	
l3327:	
;timer1ask.c: 272: {
;timer1ask.c: 273: while(RD2==1);
	goto	l1179
	
l1180:	
	
l1179:	
	btfsc	(66/8),(66)&7
	goto	u4001
	goto	u4000
u4001:
	goto	l1179
u4000:
	goto	l3329
	
l1181:	
	line	274
	
l3329:	
;timer1ask.c: 274: arr3='6';
	movlw	(036h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr3)^080h
	goto	l3331
	line	275
	
l1178:	
	line	276
	
l3331:	
;timer1ask.c: 275: }
;timer1ask.c: 276: RD3=0;RD4=0;RD5=1;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(67/8),(67)&7
	
l3333:	
	bcf	(68/8),(68)&7
	
l3335:	
	bsf	(69/8),(69)&7
	
l3337:	
	bcf	(70/8),(70)&7
	line	277
	
l3339:	
;timer1ask.c: 277: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u4011
	goto	u4010
u4011:
	goto	l3345
u4010:
	goto	l1183
	line	279
	
l3341:	
;timer1ask.c: 278: {
;timer1ask.c: 279: while(RD0==1);
	goto	l1183
	
l1184:	
	
l1183:	
	btfsc	(64/8),(64)&7
	goto	u4021
	goto	u4020
u4021:
	goto	l1183
u4020:
	goto	l3343
	
l1185:	
	line	280
	
l3343:	
;timer1ask.c: 280: arr3='7';
	movlw	(037h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr3)^080h
	goto	l3345
	line	281
	
l1182:	
	line	282
	
l3345:	
;timer1ask.c: 281: }
;timer1ask.c: 282: if(RD1==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(65/8),(65)&7
	goto	u4031
	goto	u4030
u4031:
	goto	l3351
u4030:
	goto	l1187
	line	284
	
l3347:	
;timer1ask.c: 283: {
;timer1ask.c: 284: while(RD1==1);
	goto	l1187
	
l1188:	
	
l1187:	
	btfsc	(65/8),(65)&7
	goto	u4041
	goto	u4040
u4041:
	goto	l1187
u4040:
	goto	l3349
	
l1189:	
	line	285
	
l3349:	
;timer1ask.c: 285: arr3='8';
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr3)^080h
	goto	l3351
	line	286
	
l1186:	
	line	287
	
l3351:	
;timer1ask.c: 286: }
;timer1ask.c: 287: if(RD2==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(66/8),(66)&7
	goto	u4051
	goto	u4050
u4051:
	goto	l3357
u4050:
	goto	l1191
	line	289
	
l3353:	
;timer1ask.c: 288: {
;timer1ask.c: 289: while(RD2==1);
	goto	l1191
	
l1192:	
	
l1191:	
	btfsc	(66/8),(66)&7
	goto	u4061
	goto	u4060
u4061:
	goto	l1191
u4060:
	goto	l3355
	
l1193:	
	line	290
	
l3355:	
;timer1ask.c: 290: arr3='9';
	movlw	(039h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@arr3)^080h
	goto	l3357
	line	291
	
l1190:	
	line	292
	
l3357:	
;timer1ask.c: 291: }
;timer1ask.c: 292: RD3=0;RD4=0;RD5=0;RD6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(67/8),(67)&7
	
l3359:	
	bcf	(68/8),(68)&7
	
l3361:	
	bcf	(69/8),(69)&7
	
l3363:	
	bsf	(70/8),(70)&7
	line	293
	
l3365:	
;timer1ask.c: 293: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u4071
	goto	u4070
u4071:
	goto	l1194
u4070:
	goto	l1195
	line	295
	
l3367:	
;timer1ask.c: 294: {
;timer1ask.c: 295: while(RD0==1);
	goto	l1195
	
l1196:	
	
l1195:	
	btfsc	(64/8),(64)&7
	goto	u4081
	goto	u4080
u4081:
	goto	l1195
u4080:
	goto	l3369
	
l1197:	
	line	296
	
l3369:	
;timer1ask.c: 296: control=7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control)^080h
	movlw	high(07h)
	movwf	((main@control)^080h)+1
	line	297
	
l1194:	
	line	298
;timer1ask.c: 297: }
;timer1ask.c: 298: val3= arr3-'0';
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@arr3)^080h,w
	addlw	low(0FFD0h)
	movwf	(main@val3)^080h
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((main@val3)^080h)+1
	line	299
	
l1157:	
	line	300
;timer1ask.c: 299: }
;timer1ask.c: 300: if(control==7)
	movlw	07h
	xorwf	(main@control)^080h,w
	iorwf	(main@control+1)^080h,w
	skipz
	goto	u4091
	goto	u4090
u4091:
	goto	l1198
u4090:
	line	302
	
l3371:	
;timer1ask.c: 301: {
;timer1ask.c: 302: clear();
	fcall	_clear
	line	303
	
l3373:	
;timer1ask.c: 303: for(i=0;i<15;i++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	
l3375:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u4105
	movlw	low(0Fh)
	subwf	(main@i)^080h,w
u4105:

	skipc
	goto	u4101
	goto	u4100
u4101:
	goto	l3379
u4100:
	goto	l3387
	
l3377:	
	goto	l3387
	line	304
	
l1199:	
	line	305
	
l3379:	
;timer1ask.c: 304: {
;timer1ask.c: 305: address(0X80+i);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	addlw	080h
	fcall	_address
	line	306
	
l3381:	
;timer1ask.c: 306: display(pattern[i]);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	addlw	main@pattern&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	303
	
l3383:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@i)^080h,f
	skipnc
	incf	(main@i+1)^080h,f
	movlw	high(01h)
	addwf	(main@i+1)^080h,f
	
l3385:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u4115
	movlw	low(0Fh)
	subwf	(main@i)^080h,w
u4115:

	skipc
	goto	u4111
	goto	u4110
u4111:
	goto	l3379
u4110:
	goto	l3387
	
l1200:	
	line	308
	
l3387:	
;timer1ask.c: 307: }
;timer1ask.c: 308: control=8;
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control)^080h
	movlw	high(08h)
	movwf	((main@control)^080h)+1
	line	309
	
l1198:	
	line	310
;timer1ask.c: 309: }
;timer1ask.c: 310: if(control==8)
	movlw	08h
	xorwf	(main@control)^080h,w
	iorwf	(main@control+1)^080h,w
	skipz
	goto	u4121
	goto	u4120
u4121:
	goto	l1201
u4120:
	line	312
	
l3389:	
;timer1ask.c: 311: {
;timer1ask.c: 312: RD3=1;RD4=0;RD5=0;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	bcf	(68/8),(68)&7
	bcf	(69/8),(69)&7
	bcf	(70/8),(70)&7
	line	313
;timer1ask.c: 313: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u4131
	goto	u4130
u4131:
	goto	l3401
u4130:
	goto	l1203
	line	315
	
l3391:	
;timer1ask.c: 314: {
;timer1ask.c: 315: while(RD0==1);
	goto	l1203
	
l1204:	
	
l1203:	
	btfsc	(64/8),(64)&7
	goto	u4141
	goto	u4140
u4141:
	goto	l1203
u4140:
	goto	l3393
	
l1205:	
	line	316
	
l3393:	
;timer1ask.c: 316: patt[k]='1';
	movlw	(031h)
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@k)^080h,w
	addlw	main@patt&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	317
;timer1ask.c: 317: patval[k]=patt[k]-'0';
	movf	(main@k)^080h,w
	addlw	main@patt&0ffh
	movwf	fsr0
	movf	indf,w
	addlw	low(0FFD0h)
	movwf	(??_main+0)+0
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((??_main+0)+0)+1
	movf	(main@k)^080h,w
	movwf	(??_main+2)+0
	addwf	(??_main+2)+0,w
	addlw	main@patval&0ffh
	movwf	fsr0
	movf	0+(??_main+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_main+0)+0,w
	movwf	indf
	line	318
	
l3395:	
;timer1ask.c: 318: address(0XC0+k);
	movf	(main@k)^080h,w
	addlw	0C0h
	fcall	_address
	line	319
	
l3397:	
;timer1ask.c: 319: display(patt[k]);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@k)^080h,w
	addlw	main@patt&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	320
	
l3399:	
;timer1ask.c: 320: k++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@k)^080h,f
	skipnc
	incf	(main@k+1)^080h,f
	movlw	high(01h)
	addwf	(main@k+1)^080h,f
	goto	l3401
	line	321
	
l1202:	
	line	322
	
l3401:	
;timer1ask.c: 321: }
;timer1ask.c: 322: if(RD1==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(65/8),(65)&7
	goto	u4151
	goto	u4150
u4151:
	goto	l3413
u4150:
	goto	l1207
	line	324
	
l3403:	
;timer1ask.c: 323: {
;timer1ask.c: 324: while(RD1==1);
	goto	l1207
	
l1208:	
	
l1207:	
	btfsc	(65/8),(65)&7
	goto	u4161
	goto	u4160
u4161:
	goto	l1207
u4160:
	goto	l3405
	
l1209:	
	line	325
	
l3405:	
;timer1ask.c: 325: patt[k]='2';
	movlw	(032h)
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@k)^080h,w
	addlw	main@patt&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	326
;timer1ask.c: 326: patval[k]=patt[k]-'0';
	movf	(main@k)^080h,w
	addlw	main@patt&0ffh
	movwf	fsr0
	movf	indf,w
	addlw	low(0FFD0h)
	movwf	(??_main+0)+0
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((??_main+0)+0)+1
	movf	(main@k)^080h,w
	movwf	(??_main+2)+0
	addwf	(??_main+2)+0,w
	addlw	main@patval&0ffh
	movwf	fsr0
	movf	0+(??_main+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_main+0)+0,w
	movwf	indf
	line	327
	
l3407:	
;timer1ask.c: 327: address(0XC0+k);
	movf	(main@k)^080h,w
	addlw	0C0h
	fcall	_address
	line	328
	
l3409:	
;timer1ask.c: 328: display(patt[k]);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@k)^080h,w
	addlw	main@patt&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	329
	
l3411:	
;timer1ask.c: 329: k++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@k)^080h,f
	skipnc
	incf	(main@k+1)^080h,f
	movlw	high(01h)
	addwf	(main@k+1)^080h,f
	goto	l3413
	line	330
	
l1206:	
	line	331
	
l3413:	
;timer1ask.c: 330: }
;timer1ask.c: 331: if(RD2==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(66/8),(66)&7
	goto	u4171
	goto	u4170
u4171:
	goto	l3425
u4170:
	goto	l1211
	line	333
	
l3415:	
;timer1ask.c: 332: {
;timer1ask.c: 333: while(RD2==1);
	goto	l1211
	
l1212:	
	
l1211:	
	btfsc	(66/8),(66)&7
	goto	u4181
	goto	u4180
u4181:
	goto	l1211
u4180:
	goto	l3417
	
l1213:	
	line	334
	
l3417:	
;timer1ask.c: 334: patt[k]='3';
	movlw	(033h)
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@k)^080h,w
	addlw	main@patt&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	335
;timer1ask.c: 335: patval[k]=patt[k]-'0';
	movf	(main@k)^080h,w
	addlw	main@patt&0ffh
	movwf	fsr0
	movf	indf,w
	addlw	low(0FFD0h)
	movwf	(??_main+0)+0
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((??_main+0)+0)+1
	movf	(main@k)^080h,w
	movwf	(??_main+2)+0
	addwf	(??_main+2)+0,w
	addlw	main@patval&0ffh
	movwf	fsr0
	movf	0+(??_main+0)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_main+0)+0,w
	movwf	indf
	line	336
	
l3419:	
;timer1ask.c: 336: address(0XC0+k);
	movf	(main@k)^080h,w
	addlw	0C0h
	fcall	_address
	line	337
	
l3421:	
;timer1ask.c: 337: display(patt[k]);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@k)^080h,w
	addlw	main@patt&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	338
	
l3423:	
;timer1ask.c: 338: k++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@k)^080h,f
	skipnc
	incf	(main@k+1)^080h,f
	movlw	high(01h)
	addwf	(main@k+1)^080h,f
	goto	l3425
	line	339
	
l1210:	
	line	340
	
l3425:	
;timer1ask.c: 339: }
;timer1ask.c: 340: RD3=0;RD4=0;RD5=0;RD6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(67/8),(67)&7
	
l3427:	
	bcf	(68/8),(68)&7
	
l3429:	
	bcf	(69/8),(69)&7
	
l3431:	
	bsf	(70/8),(70)&7
	line	341
	
l3433:	
;timer1ask.c: 341: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u4191
	goto	u4190
u4191:
	goto	l1201
u4190:
	goto	l1215
	line	343
	
l3435:	
;timer1ask.c: 342: {
;timer1ask.c: 343: while(RD0==1);
	goto	l1215
	
l1216:	
	
l1215:	
	btfsc	(64/8),(64)&7
	goto	u4201
	goto	u4200
u4201:
	goto	l1215
u4200:
	goto	l3437
	
l1217:	
	line	344
	
l3437:	
;timer1ask.c: 344: control=9;
	movlw	low(09h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control)^080h
	movlw	high(09h)
	movwf	((main@control)^080h)+1
	goto	l1201
	line	345
	
l1214:	
	line	346
	
l1201:	
	line	347
;timer1ask.c: 345: }
;timer1ask.c: 346: }
;timer1ask.c: 347: if(control==9)
	movlw	09h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(main@control)^080h,w
	iorwf	(main@control+1)^080h,w
	skipz
	goto	u4211
	goto	u4210
u4211:
	goto	l1218
u4210:
	line	349
	
l3439:	
;timer1ask.c: 348: {
;timer1ask.c: 349: clear();
	fcall	_clear
	line	350
	
l3441:	
;timer1ask.c: 350: for(i=0;i<10;i++)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	
l3443:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4225
	movlw	low(0Ah)
	subwf	(main@i)^080h,w
u4225:

	skipc
	goto	u4221
	goto	u4220
u4221:
	goto	l3447
u4220:
	goto	l3455
	
l3445:	
	goto	l3455
	line	351
	
l1219:	
	line	352
	
l3447:	
;timer1ask.c: 351: {
;timer1ask.c: 352: address(0XC0+i);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	addlw	0C0h
	fcall	_address
	line	353
	
l3449:	
;timer1ask.c: 353: display(process[i]);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	addlw	main@process&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	350
	
l3451:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@i)^080h,f
	skipnc
	incf	(main@i+1)^080h,f
	movlw	high(01h)
	addwf	(main@i+1)^080h,f
	
l3453:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u4235
	movlw	low(0Ah)
	subwf	(main@i)^080h,w
u4235:

	skipc
	goto	u4231
	goto	u4230
u4231:
	goto	l3447
u4230:
	goto	l3455
	
l1220:	
	line	355
	
l3455:	
;timer1ask.c: 354: }
;timer1ask.c: 355: control=10;
	movlw	low(0Ah)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control)^080h
	movlw	high(0Ah)
	movwf	((main@control)^080h)+1
	line	356
	
l1218:	
	line	357
;timer1ask.c: 356: }
;timer1ask.c: 357: if(control==10)
	movlw	0Ah
	xorwf	(main@control)^080h,w
	iorwf	(main@control+1)^080h,w
	skipz
	goto	u4241
	goto	u4240
u4241:
	goto	l1221
u4240:
	line	359
	
l3457:	
;timer1ask.c: 358: {
;timer1ask.c: 359: for(i=0;i<3;)
	clrf	(main@i)^080h
	clrf	(main@i+1)^080h
	
l3459:	
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4255
	movlw	low(03h)
	subwf	(main@i)^080h,w
u4255:

	skipc
	goto	u4251
	goto	u4250
u4251:
	goto	l3463
u4250:
	goto	l3519
	
l3461:	
	goto	l3519
	line	360
	
l1222:	
	line	362
	
l3463:	
;timer1ask.c: 360: {
;timer1ask.c: 362: if(patval[i]==1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@patval&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movlw	01h
	xorwf	0+(??_main+1)+0,w
	iorwf	1+(??_main+1)+0,w
	skipz
	goto	u4261
	goto	u4260
u4261:
	goto	l3481
u4260:
	line	364
	
l3465:	
;timer1ask.c: 363: {
;timer1ask.c: 364: timer1();
	fcall	_timer1
	line	365
	
l3467:	
;timer1ask.c: 365: if(count>=0 && count<=val1*2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(_count+1)^080h,7
	goto	u4271
	goto	u4270
u4271:
	goto	l3473
u4270:
	
l3469:	
	movf	(main@val1+1)^080h,w
	movwf	(??_main+0)+0+1
	movf	(main@val1)^080h,w
	movwf	(??_main+0)+0
	movlw	01h
	movwf	btemp+1
u4285:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+1,f
	goto	u4285
	movf	1+(??_main+0)+0,w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	(_count+1)^080h,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u4295
	movf	(_count)^080h,w
	subwf	0+(??_main+0)+0,w
u4295:

	skipc
	goto	u4291
	goto	u4290
u4291:
	goto	l3473
u4290:
	line	367
	
l3471:	
;timer1ask.c: 366: {
;timer1ask.c: 367: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	l3473
	line	368
	
l1225:	
	line	369
	
l3473:	
;timer1ask.c: 368: }
;timer1ask.c: 369: if(count>val1*2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@val1+1)^080h,w
	movwf	(??_main+0)+0+1
	movf	(main@val1)^080h,w
	movwf	(??_main+0)+0
	movlw	01h
	movwf	btemp+1
u4305:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+1,f
	goto	u4305
	movf	1+(??_main+0)+0,w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	(_count+1)^080h,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u4315
	movf	(_count)^080h,w
	subwf	0+(??_main+0)+0,w
u4315:

	skipnc
	goto	u4311
	goto	u4310
u4311:
	goto	l3481
u4310:
	line	371
	
l3475:	
;timer1ask.c: 370: {
;timer1ask.c: 371: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	372
	
l3477:	
;timer1ask.c: 372: count=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_count)^080h
	clrf	(_count+1)^080h
	line	373
	
l3479:	
;timer1ask.c: 373: i++;
	movlw	low(01h)
	addwf	(main@i)^080h,f
	skipnc
	incf	(main@i+1)^080h,f
	movlw	high(01h)
	addwf	(main@i+1)^080h,f
	goto	l3481
	line	374
	
l1226:	
	goto	l3481
	line	376
	
l1224:	
	line	377
	
l3481:	
;timer1ask.c: 374: }
;timer1ask.c: 376: }
;timer1ask.c: 377: if(patval[i]==2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@patval&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movlw	02h
	xorwf	0+(??_main+1)+0,w
	iorwf	1+(??_main+1)+0,w
	skipz
	goto	u4321
	goto	u4320
u4321:
	goto	l3499
u4320:
	line	379
	
l3483:	
;timer1ask.c: 378: {
;timer1ask.c: 379: timer1();
	fcall	_timer1
	line	380
	
l3485:	
;timer1ask.c: 380: if(count>=0 && count<=val2*2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(_count+1)^080h,7
	goto	u4331
	goto	u4330
u4331:
	goto	l3491
u4330:
	
l3487:	
	movf	(main@val2+1)^080h,w
	movwf	(??_main+0)+0+1
	movf	(main@val2)^080h,w
	movwf	(??_main+0)+0
	movlw	01h
	movwf	btemp+1
u4345:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+1,f
	goto	u4345
	movf	1+(??_main+0)+0,w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	(_count+1)^080h,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u4355
	movf	(_count)^080h,w
	subwf	0+(??_main+0)+0,w
u4355:

	skipc
	goto	u4351
	goto	u4350
u4351:
	goto	l3491
u4350:
	line	382
	
l3489:	
;timer1ask.c: 381: {
;timer1ask.c: 382: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	l3491
	line	383
	
l1228:	
	line	384
	
l3491:	
;timer1ask.c: 383: }
;timer1ask.c: 384: if(count>val2*2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@val2+1)^080h,w
	movwf	(??_main+0)+0+1
	movf	(main@val2)^080h,w
	movwf	(??_main+0)+0
	movlw	01h
	movwf	btemp+1
u4365:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+1,f
	goto	u4365
	movf	1+(??_main+0)+0,w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	(_count+1)^080h,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u4375
	movf	(_count)^080h,w
	subwf	0+(??_main+0)+0,w
u4375:

	skipnc
	goto	u4371
	goto	u4370
u4371:
	goto	l3499
u4370:
	line	386
	
l3493:	
;timer1ask.c: 385: {
;timer1ask.c: 386: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	387
	
l3495:	
;timer1ask.c: 387: count=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_count)^080h
	clrf	(_count+1)^080h
	line	388
	
l3497:	
;timer1ask.c: 388: i++;
	movlw	low(01h)
	addwf	(main@i)^080h,f
	skipnc
	incf	(main@i+1)^080h,f
	movlw	high(01h)
	addwf	(main@i+1)^080h,f
	goto	l3499
	line	389
	
l1229:	
	goto	l3499
	line	391
	
l1227:	
	line	392
	
l3499:	
;timer1ask.c: 389: }
;timer1ask.c: 391: }
;timer1ask.c: 392: if(patval[i]==3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i)^080h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@patval&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movlw	03h
	xorwf	0+(??_main+1)+0,w
	iorwf	1+(??_main+1)+0,w
	skipz
	goto	u4381
	goto	u4380
u4381:
	goto	l3517
u4380:
	line	394
	
l3501:	
;timer1ask.c: 393: {
;timer1ask.c: 394: timer1();
	fcall	_timer1
	line	395
	
l3503:	
;timer1ask.c: 395: if(count>=0 && count<=val3*2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(_count+1)^080h,7
	goto	u4391
	goto	u4390
u4391:
	goto	l3509
u4390:
	
l3505:	
	movf	(main@val3+1)^080h,w
	movwf	(??_main+0)+0+1
	movf	(main@val3)^080h,w
	movwf	(??_main+0)+0
	movlw	01h
	movwf	btemp+1
u4405:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+1,f
	goto	u4405
	movf	1+(??_main+0)+0,w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	(_count+1)^080h,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u4415
	movf	(_count)^080h,w
	subwf	0+(??_main+0)+0,w
u4415:

	skipc
	goto	u4411
	goto	u4410
u4411:
	goto	l3509
u4410:
	line	397
	
l3507:	
;timer1ask.c: 396: {
;timer1ask.c: 397: RC2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	l3509
	line	398
	
l1231:	
	line	399
	
l3509:	
;timer1ask.c: 398: }
;timer1ask.c: 399: if(count>val3*2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@val3+1)^080h,w
	movwf	(??_main+0)+0+1
	movf	(main@val3)^080h,w
	movwf	(??_main+0)+0
	movlw	01h
	movwf	btemp+1
u4425:
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	decfsz	btemp+1,f
	goto	u4425
	movf	1+(??_main+0)+0,w
	xorlw	80h
	movwf	(??_main+2)+0
	movf	(_count+1)^080h,w
	xorlw	80h
	subwf	(??_main+2)+0,w
	skipz
	goto	u4435
	movf	(_count)^080h,w
	subwf	0+(??_main+0)+0,w
u4435:

	skipnc
	goto	u4431
	goto	u4430
u4431:
	goto	l3517
u4430:
	line	401
	
l3511:	
;timer1ask.c: 400: {
;timer1ask.c: 401: RC2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	line	402
	
l3513:	
;timer1ask.c: 402: count=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_count)^080h
	clrf	(_count+1)^080h
	line	403
	
l3515:	
;timer1ask.c: 403: i++;
	movlw	low(01h)
	addwf	(main@i)^080h,f
	skipnc
	incf	(main@i+1)^080h,f
	movlw	high(01h)
	addwf	(main@i+1)^080h,f
	goto	l3517
	line	404
	
l1232:	
	goto	l3517
	line	406
	
l1230:	
	line	359
	
l3517:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@i+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4445
	movlw	low(03h)
	subwf	(main@i)^080h,w
u4445:

	skipc
	goto	u4441
	goto	u4440
u4441:
	goto	l3463
u4440:
	goto	l3519
	
l1223:	
	line	408
	
l3519:	
;timer1ask.c: 404: }
;timer1ask.c: 406: }
;timer1ask.c: 407: }
;timer1ask.c: 408: control=11;
	movlw	low(0Bh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@control)^080h
	movlw	high(0Bh)
	movwf	((main@control)^080h)+1
	line	409
	
l1221:	
	line	410
;timer1ask.c: 409: }
;timer1ask.c: 410: if(control==11)
	movlw	0Bh
	xorwf	(main@control)^080h,w
	iorwf	(main@control+1)^080h,w
	skipz
	goto	u4451
	goto	u4450
u4451:
	goto	l3029
u4450:
	line	412
	
l3521:	
;timer1ask.c: 411: {
;timer1ask.c: 412: control=1;
	movlw	low(01h)
	movwf	(main@control)^080h
	movlw	high(01h)
	movwf	((main@control)^080h)+1
	line	413
	
l3523:	
;timer1ask.c: 413: clear();
	fcall	_clear
	line	414
	
l3525:	
;timer1ask.c: 414: count=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_count)^080h
	clrf	(_count+1)^080h
	line	415
	
l3527:	
;timer1ask.c: 415: arr1='\0';
	clrf	(main@arr1)
	line	416
	
l3529:	
;timer1ask.c: 416: arr2='\0';
	clrf	(main@arr2)^080h
	line	417
	
l3531:	
;timer1ask.c: 417: arr3='\0';
	clrf	(main@arr3)^080h
	line	418
	
l3533:	
;timer1ask.c: 418: k=0;
	clrf	(main@k)^080h
	clrf	(main@k+1)^080h
	goto	l3029
	line	419
	
l1233:	
	goto	l3029
	line	420
	
l1234:	
	line	87
	goto	l3029
	
l1235:	
	line	421
	
l1236:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_clear
psect	text241,local,class=CODE,delta=2
global __ptext241
__ptext241:

;; *************** function _clear *****************
;; Defined at:
;;		line 54 in file "E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
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
psect	text241
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
	line	54
	global	__size_of_clear
	__size_of_clear	equ	__end_of_clear-_clear
	
_clear:	
	opt	stack 5
; Regs used in _clear: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l2993:	
;timer1ask.c: 55: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	56
;timer1ask.c: 56: RA1=0;
	bcf	(41/8),(41)&7
	line	57
	
l2995:	
;timer1ask.c: 57: PORTB=0X01;
	movlw	(01h)
	movwf	(6)	;volatile
	line	58
	
l2997:	
;timer1ask.c: 58: pulse();
	fcall	_pulse
	line	59
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_clear
	__end_of_clear:
;; =============== function _clear ends ============

	signat	_clear,88
	global	_display
psect	text242,local,class=CODE,delta=2
global __ptext242
__ptext242:

;; *************** function _display *****************
;; Defined at:
;;		line 47 in file "E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
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
psect	text242
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
	line	47
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@data stored from wreg
	movwf	(display@data)
	line	48
	
l2987:	
;timer1ask.c: 48: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	49
;timer1ask.c: 49: RA1=0;
	bcf	(41/8),(41)&7
	line	50
	
l2989:	
;timer1ask.c: 50: PORTB=data;
	movf	(display@data),w
	movwf	(6)	;volatile
	line	51
	
l2991:	
;timer1ask.c: 51: pulse();
	fcall	_pulse
	line	52
	
l1049:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_address
psect	text243,local,class=CODE,delta=2
global __ptext243
__ptext243:

;; *************** function _address *****************
;; Defined at:
;;		line 40 in file "E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
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
psect	text243
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
	line	40
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 5
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
;address@data stored from wreg
	movwf	(address@data)
	line	41
	
l2981:	
;timer1ask.c: 41: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	42
;timer1ask.c: 42: RA1=0;
	bcf	(41/8),(41)&7
	line	43
	
l2983:	
;timer1ask.c: 43: PORTB=data;
	movf	(address@data),w
	movwf	(6)	;volatile
	line	44
	
l2985:	
;timer1ask.c: 44: pulse();
	fcall	_pulse
	line	45
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_address
	__end_of_address:
;; =============== function _address ends ============

	signat	_address,4216
	global	_type
psect	text244,local,class=CODE,delta=2
global __ptext244
__ptext244:

;; *************** function _type *****************
;; Defined at:
;;		line 33 in file "E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
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
psect	text244
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
	line	33
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 5
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
l2975:	
;timer1ask.c: 34: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	35
;timer1ask.c: 35: RA1=0;
	bcf	(41/8),(41)&7
	line	36
	
l2977:	
;timer1ask.c: 36: PORTB=0X38;
	movlw	(038h)
	movwf	(6)	;volatile
	line	37
	
l2979:	
;timer1ask.c: 37: pulse();
	fcall	_pulse
	line	38
	
l1043:	
	return
	opt stack 0
GLOBAL	__end_of_type
	__end_of_type:
;; =============== function _type ends ============

	signat	_type,88
	global	_on
psect	text245,local,class=CODE,delta=2
global __ptext245
__ptext245:

;; *************** function _on *****************
;; Defined at:
;;		line 26 in file "E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
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
psect	text245
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
	line	26
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 5
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	27
	
l2969:	
;timer1ask.c: 27: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	28
;timer1ask.c: 28: RA1=0;
	bcf	(41/8),(41)&7
	line	29
	
l2971:	
;timer1ask.c: 29: PORTB=0X0E;
	movlw	(0Eh)
	movwf	(6)	;volatile
	line	30
	
l2973:	
;timer1ask.c: 30: pulse();
	fcall	_pulse
	line	31
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_on
	__end_of_on:
;; =============== function _on ends ============

	signat	_on,88
	global	_pulse
psect	text246,local,class=CODE,delta=2
global __ptext246
__ptext246:

;; *************** function _pulse *****************
;; Defined at:
;;		line 19 in file "E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
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
;;		_clear
;; This function uses a non-reentrant model
;;
psect	text246
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
	line	19
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	20
	
l2963:	
;timer1ask.c: 20: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	line	21
	
l2965:	
;timer1ask.c: 21: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	22
	
l2967:	
;timer1ask.c: 22: RA2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	23
;timer1ask.c: 23: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	24
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	_delay
psect	text247,local,class=CODE,delta=2
global __ptext247
__ptext247:

;; *************** function _delay *****************
;; Defined at:
;;		line 15 in file "E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
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
psect	text247
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
	line	15
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	16
	
l2959:	
;timer1ask.c: 16: while(del--);
	goto	l2961
	
l1032:	
	goto	l2961
	
l1031:	
	
l2961:	
	movlw	low(-1)
	addwf	(delay@del),f
	skipnc
	incf	(delay@del+1),f
	movlw	high(-1)
	addwf	(delay@del+1),f
	movlw	high(-1)
	xorwf	((delay@del+1)),w
	skipz
	goto	u3315
	movlw	low(-1)
	xorwf	((delay@del)),w
u3315:

	skipz
	goto	u3311
	goto	u3310
u3311:
	goto	l2961
u3310:
	goto	l1034
	
l1033:	
	line	17
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_timer1
psect	text248,local,class=CODE,delta=2
global __ptext248
__ptext248:

;; *************** function _timer1 *****************
;; Defined at:
;;		line 7 in file "E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
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
psect	text248
	file	"E:\KTU\Softwares\MP lab\Timer1ask\timer1ask.c"
	line	7
	global	__size_of_timer1
	__size_of_timer1	equ	__end_of_timer1-_timer1
	
_timer1:	
	opt	stack 7
; Regs used in _timer1: [wreg]
	line	8
	
l2953:	
;timer1ask.c: 8: if(TMR1IF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l2957
u3300:
	line	10
	
l2955:	
;timer1ask.c: 9: {
;timer1ask.c: 10: count++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(_count)^080h,f
	skipnc
	incf	(_count+1)^080h,f
	movlw	high(01h)
	addwf	(_count+1)^080h,f
	goto	l2957
	line	11
	
l1027:	
	line	12
	
l2957:	
;timer1ask.c: 11: }
;timer1ask.c: 12: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(96/8),(96)&7
	line	13
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_timer1
	__end_of_timer1:
;; =============== function _timer1 ends ============

	signat	_timer1,88
psect	text249,local,class=CODE,delta=2
global __ptext249
__ptext249:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
