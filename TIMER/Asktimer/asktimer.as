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
# 2 "E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	dw 0X2CE4 ;#
	FNCALL	_main,_on
	FNCALL	_main,_type
	FNCALL	_main,_address
	FNCALL	_main,_display
	FNCALL	_main,_clear
	FNCALL	_main,_timer0
	FNCALL	_main,___wmul
	FNCALL	_clear,_pulse
	FNCALL	_display,_pulse
	FNCALL	_address,_pulse
	FNCALL	_type,_pulse
	FNCALL	_on,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	main@F1616
	global	main@F1612
	global	main@F1614
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	line	76

;initializer for main@F1616
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
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	74

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
	line	75

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
	global	_count
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
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
	file	"asktimer.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_count:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	line	76
main@F1616:
       ds      10

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	line	74
main@F1612:
       ds      20

psect	dataBANK1
	file	"E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	line	75
main@F1614:
       ds      20

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
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
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+40)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
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
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	delay@del
delay@del:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
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
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	2
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x6
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@first
main@first:	; 20 bytes @ 0x0
	ds	20
	global	main@second
main@second:	; 20 bytes @ 0x14
	ds	20
	global	main@process
main@process:	; 10 bytes @ 0x28
	ds	10
	global	main@j
main@j:	; 2 bytes @ 0x32
	ds	2
	global	main@val2
main@val2:	; 2 bytes @ 0x34
	ds	2
	global	main@val1
main@val1:	; 2 bytes @ 0x36
	ds	2
	global	main@arr1
main@arr1:	; 1 bytes @ 0x38
	ds	1
	global	main@arr2
main@arr2:	; 1 bytes @ 0x39
	ds	1
	global	main@control
main@control:	; 2 bytes @ 0x3A
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x3C
	ds	2
;;Data sizes: Strings 0, constant 0, data 50, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80     62      74
;; BANK1           80      0      40
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___wmul
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
;; (0) _main                                                66    66      0     993
;;                                              6 COMMON     4     4      0
;;                                              0 BANK0     62    62      0
;;                                 _on
;;                               _type
;;                            _address
;;                            _display
;;                              _clear
;;                             _timer0
;;                             ___wmul
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
;; (1) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _timer0                                               0     0      0       0
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
;;   _timer0
;;   ___wmul
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
;;BANK1               50      0      28       7       50.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      7F      12        0.0%
;;ABS                  0      0      7C       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50     3E      4A       5       92.5%
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
;;		line 62 in file "E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  second         20   20[BANK0 ] unsigned char [20]
;;  first          20    0[BANK0 ] unsigned char [20]
;;  process        10   40[BANK0 ] unsigned char [10]
;;  i               2   60[BANK0 ] int 
;;  control         2   58[BANK0 ] int 
;;  val1            2   54[BANK0 ] int 
;;  val2            2   52[BANK0 ] int 
;;  j               2   50[BANK0 ] int 
;;  arr2            1   57[BANK0 ] unsigned char 
;;  arr1            1   56[BANK0 ] unsigned char 
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
;;      Locals:         0      62       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      62       0       0       0
;;Total ram usage:       66 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_on
;;		_type
;;		_address
;;		_display
;;		_clear
;;		_timer0
;;		___wmul
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	line	62
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	63
	
l2777:	
;asktimer.c: 63: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	64
;asktimer.c: 64: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	65
;asktimer.c: 65: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	66
;asktimer.c: 66: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	67
;asktimer.c: 67: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	68
;asktimer.c: 68: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	69
;asktimer.c: 69: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	70
	
l2779:	
;asktimer.c: 70: TRISD=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	71
	
l2781:	
;asktimer.c: 71: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	72
	
l2783:	
;asktimer.c: 72: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	73
	
l2785:	
;asktimer.c: 73: OPTION_REG=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	line	74
	
l2787:	
;asktimer.c: 74: char first[20]="1st led duration";
	movlw	(main@first)&0ffh
	movwf	fsr0
	movlw	low(main@F1612)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2850:
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
	goto	u2850
	line	75
	
l2789:	
;asktimer.c: 75: char second[20]="2nd led duration";
	movlw	(main@second)&0ffh
	movwf	fsr0
	movlw	low(main@F1614)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2860:
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
	goto	u2860
	line	76
	
l2791:	
;asktimer.c: 76: char process[10]="Processing";
	movlw	(main@process)&0ffh
	movwf	fsr0
	movlw	low(main@F1616)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2870:
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
	goto	u2870
	line	77
	
l2793:	
;asktimer.c: 77: int control=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@control)
	movlw	high(01h)
	movwf	((main@control))+1
	line	78
	
l2795:	
;asktimer.c: 78: int i,j=0;
	clrf	(main@j)
	clrf	(main@j+1)
	line	81
	
l2797:	
;asktimer.c: 79: char arr1,arr2;
;asktimer.c: 80: int val1,val2;
;asktimer.c: 81: on();
	fcall	_on
	line	82
	
l2799:	
;asktimer.c: 82: type();
	fcall	_type
	goto	l2801
	line	83
;asktimer.c: 83: while(1)
	
l1061:	
	line	85
	
l2801:	
;asktimer.c: 84: {
;asktimer.c: 85: if(control==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@control),w
	iorwf	(main@control+1),w
	skipz
	goto	u2881
	goto	u2880
u2881:
	goto	l1062
u2880:
	line	87
	
l2803:	
;asktimer.c: 86: {
;asktimer.c: 87: for(i=0;i<15;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l2805:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2895
	movlw	low(0Fh)
	subwf	(main@i),w
u2895:

	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l2809
u2890:
	goto	l2817
	
l2807:	
	goto	l2817
	line	88
	
l1063:	
	line	89
	
l2809:	
;asktimer.c: 88: {
;asktimer.c: 89: address(0X80+i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	080h
	fcall	_address
	line	90
	
l2811:	
;asktimer.c: 90: display(first[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@first&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	87
	
l2813:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2815:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2905
	movlw	low(0Fh)
	subwf	(main@i),w
u2905:

	skipc
	goto	u2901
	goto	u2900
u2901:
	goto	l2809
u2900:
	goto	l2817
	
l1064:	
	line	92
	
l2817:	
;asktimer.c: 91: }
;asktimer.c: 92: control=2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@control)
	movlw	high(02h)
	movwf	((main@control))+1
	line	93
	
l1062:	
	line	94
;asktimer.c: 93: }
;asktimer.c: 94: if(control==2)
	movlw	02h
	xorwf	(main@control),w
	iorwf	(main@control+1),w
	skipz
	goto	u2911
	goto	u2910
u2911:
	goto	l2917
u2910:
	line	96
	
l2819:	
;asktimer.c: 95: {
;asktimer.c: 96: address(0XC0+0);
	movlw	(0C0h)
	fcall	_address
	line	97
;asktimer.c: 97: display(arr1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@arr1),w
	fcall	_display
	line	98
	
l2821:	
;asktimer.c: 98: RD3=1;RD4=0;RD5=0;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	
l2823:	
	bcf	(68/8),(68)&7
	
l2825:	
	bcf	(69/8),(69)&7
	
l2827:	
	bcf	(70/8),(70)&7
	line	99
	
l2829:	
;asktimer.c: 99: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l2835
u2920:
	goto	l1067
	line	101
	
l2831:	
;asktimer.c: 100: {
;asktimer.c: 101: while(RD0==1);
	goto	l1067
	
l1068:	
	
l1067:	
	btfsc	(64/8),(64)&7
	goto	u2931
	goto	u2930
u2931:
	goto	l1067
u2930:
	goto	l2833
	
l1069:	
	line	102
	
l2833:	
;asktimer.c: 102: arr1='1';
	movlw	(031h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l2835
	line	103
	
l1066:	
	line	104
	
l2835:	
;asktimer.c: 103: }
;asktimer.c: 104: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l2841
u2940:
	goto	l1071
	line	106
	
l2837:	
;asktimer.c: 105: {
;asktimer.c: 106: while(RD1==1);
	goto	l1071
	
l1072:	
	
l1071:	
	btfsc	(65/8),(65)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l1071
u2950:
	goto	l2839
	
l1073:	
	line	107
	
l2839:	
;asktimer.c: 107: arr1='2';
	movlw	(032h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l2841
	line	108
	
l1070:	
	line	109
	
l2841:	
;asktimer.c: 108: }
;asktimer.c: 109: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l2847
u2960:
	goto	l1075
	line	111
	
l2843:	
;asktimer.c: 110: {
;asktimer.c: 111: while(RD2==1);
	goto	l1075
	
l1076:	
	
l1075:	
	btfsc	(66/8),(66)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l1075
u2970:
	goto	l2845
	
l1077:	
	line	112
	
l2845:	
;asktimer.c: 112: arr1='3';
	movlw	(033h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l2847
	line	113
	
l1074:	
	line	114
	
l2847:	
;asktimer.c: 113: }
;asktimer.c: 114: RD3=0;RD4=1;RD5=0;RD6=0;
	bcf	(67/8),(67)&7
	
l2849:	
	bsf	(68/8),(68)&7
	
l2851:	
	bcf	(69/8),(69)&7
	
l2853:	
	bcf	(70/8),(70)&7
	line	115
	
l2855:	
;asktimer.c: 115: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l2861
u2980:
	goto	l1079
	line	117
	
l2857:	
;asktimer.c: 116: {
;asktimer.c: 117: while(RD0==1);
	goto	l1079
	
l1080:	
	
l1079:	
	btfsc	(64/8),(64)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l1079
u2990:
	goto	l2859
	
l1081:	
	line	118
	
l2859:	
;asktimer.c: 118: arr1='4';
	movlw	(034h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l2861
	line	119
	
l1078:	
	line	120
	
l2861:	
;asktimer.c: 119: }
;asktimer.c: 120: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l2867
u3000:
	goto	l1083
	line	122
	
l2863:	
;asktimer.c: 121: {
;asktimer.c: 122: while(RD1==1);
	goto	l1083
	
l1084:	
	
l1083:	
	btfsc	(65/8),(65)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l1083
u3010:
	goto	l2865
	
l1085:	
	line	123
	
l2865:	
;asktimer.c: 123: arr1='5';
	movlw	(035h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l2867
	line	124
	
l1082:	
	line	125
	
l2867:	
;asktimer.c: 124: }
;asktimer.c: 125: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l2873
u3020:
	goto	l1087
	line	127
	
l2869:	
;asktimer.c: 126: {
;asktimer.c: 127: while(RD2==1);
	goto	l1087
	
l1088:	
	
l1087:	
	btfsc	(66/8),(66)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l1087
u3030:
	goto	l2871
	
l1089:	
	line	128
	
l2871:	
;asktimer.c: 128: arr1='6';
	movlw	(036h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l2873
	line	129
	
l1086:	
	line	130
	
l2873:	
;asktimer.c: 129: }
;asktimer.c: 130: RD3=0;RD4=0;RD5=1;RD6=0;
	bcf	(67/8),(67)&7
	
l2875:	
	bcf	(68/8),(68)&7
	
l2877:	
	bsf	(69/8),(69)&7
	
l2879:	
	bcf	(70/8),(70)&7
	line	131
	
l2881:	
;asktimer.c: 131: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l2887
u3040:
	goto	l1091
	line	133
	
l2883:	
;asktimer.c: 132: {
;asktimer.c: 133: while(RD0==1);
	goto	l1091
	
l1092:	
	
l1091:	
	btfsc	(64/8),(64)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l1091
u3050:
	goto	l2885
	
l1093:	
	line	134
	
l2885:	
;asktimer.c: 134: arr1='7';
	movlw	(037h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l2887
	line	135
	
l1090:	
	line	136
	
l2887:	
;asktimer.c: 135: }
;asktimer.c: 136: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l2893
u3060:
	goto	l1095
	line	138
	
l2889:	
;asktimer.c: 137: {
;asktimer.c: 138: while(RD1==1);
	goto	l1095
	
l1096:	
	
l1095:	
	btfsc	(65/8),(65)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l1095
u3070:
	goto	l2891
	
l1097:	
	line	139
	
l2891:	
;asktimer.c: 139: arr1='8';
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l2893
	line	140
	
l1094:	
	line	141
	
l2893:	
;asktimer.c: 140: }
;asktimer.c: 141: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u3081
	goto	u3080
u3081:
	goto	l2899
u3080:
	goto	l1099
	line	143
	
l2895:	
;asktimer.c: 142: {
;asktimer.c: 143: while(RD2==1);
	goto	l1099
	
l1100:	
	
l1099:	
	btfsc	(66/8),(66)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l1099
u3090:
	goto	l2897
	
l1101:	
	line	144
	
l2897:	
;asktimer.c: 144: arr1='9';
	movlw	(039h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr1)
	goto	l2899
	line	145
	
l1098:	
	line	146
	
l2899:	
;asktimer.c: 145: }
;asktimer.c: 146: RD3=0;RD4=0;RD5=0;RD6=1;
	bcf	(67/8),(67)&7
	
l2901:	
	bcf	(68/8),(68)&7
	
l2903:	
	bcf	(69/8),(69)&7
	
l2905:	
	bsf	(70/8),(70)&7
	line	147
	
l2907:	
;asktimer.c: 147: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l2915
u3100:
	goto	l1103
	line	149
	
l2909:	
;asktimer.c: 148: {
;asktimer.c: 149: while(RD0==1);
	goto	l1103
	
l1104:	
	
l1103:	
	btfsc	(64/8),(64)&7
	goto	u3111
	goto	u3110
u3111:
	goto	l1103
u3110:
	goto	l2911
	
l1105:	
	line	150
	
l2911:	
;asktimer.c: 150: control=3;
	movlw	low(03h)
	movwf	(main@control)
	movlw	high(03h)
	movwf	((main@control))+1
	line	151
	
l2913:	
;asktimer.c: 151: clear();
	fcall	_clear
	goto	l2915
	line	152
	
l1102:	
	line	155
	
l2915:	
;asktimer.c: 152: }
;asktimer.c: 155: val1= arr1-'0';
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@arr1),w
	addlw	low(0FFD0h)
	movwf	(main@val1)
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((main@val1))+1
	goto	l2917
	line	156
	
l1065:	
	line	157
	
l2917:	
;asktimer.c: 156: }
;asktimer.c: 157: if(control==10)
	movlw	0Ah
	xorwf	(main@control),w
	iorwf	(main@control+1),w
	skipz
	goto	u3121
	goto	u3120
u3121:
	goto	l2921
u3120:
	line	159
	
l2919:	
;asktimer.c: 158: {
;asktimer.c: 159: address(0X80+0);
	movlw	(080h)
	fcall	_address
	line	160
;asktimer.c: 160: display(val1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@val1),w
	fcall	_display
	goto	l2921
	line	161
	
l1106:	
	line	162
	
l2921:	
;asktimer.c: 161: }
;asktimer.c: 162: if(control==3)
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@control),w
	iorwf	(main@control+1),w
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l1107
u3130:
	line	164
	
l2923:	
;asktimer.c: 163: {
;asktimer.c: 164: clear();
	fcall	_clear
	line	165
	
l2925:	
;asktimer.c: 165: for(i=0;i<15;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l2927:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3145
	movlw	low(0Fh)
	subwf	(main@i),w
u3145:

	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l2931
u3140:
	goto	l2939
	
l2929:	
	goto	l2939
	line	166
	
l1108:	
	line	167
	
l2931:	
;asktimer.c: 166: {
;asktimer.c: 167: address(0X80+i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	080h
	fcall	_address
	line	168
	
l2933:	
;asktimer.c: 168: display(second[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@second&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	165
	
l2935:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2937:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3155
	movlw	low(0Fh)
	subwf	(main@i),w
u3155:

	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l2931
u3150:
	goto	l2939
	
l1109:	
	line	170
	
l2939:	
;asktimer.c: 169: }
;asktimer.c: 170: control=4;
	movlw	low(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@control)
	movlw	high(04h)
	movwf	((main@control))+1
	line	171
	
l1107:	
	line	172
;asktimer.c: 171: }
;asktimer.c: 172: if(control==4)
	movlw	04h
	xorwf	(main@control),w
	iorwf	(main@control+1),w
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l1110
u3160:
	line	175
	
l2941:	
;asktimer.c: 173: {
;asktimer.c: 175: address(0XC0+0);
	movlw	(0C0h)
	fcall	_address
	line	176
;asktimer.c: 176: display(arr2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@arr2),w
	fcall	_display
	line	177
	
l2943:	
;asktimer.c: 177: RD3=1;RD4=0;RD5=0;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	
l2945:	
	bcf	(68/8),(68)&7
	
l2947:	
	bcf	(69/8),(69)&7
	
l2949:	
	bcf	(70/8),(70)&7
	line	178
	
l2951:	
;asktimer.c: 178: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l2957
u3170:
	goto	l1112
	line	180
	
l2953:	
;asktimer.c: 179: {
;asktimer.c: 180: while(RD0==1);
	goto	l1112
	
l1113:	
	
l1112:	
	btfsc	(64/8),(64)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l1112
u3180:
	goto	l2955
	
l1114:	
	line	181
	
l2955:	
;asktimer.c: 181: arr2='1';
	movlw	(031h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr2)
	goto	l2957
	line	182
	
l1111:	
	line	183
	
l2957:	
;asktimer.c: 182: }
;asktimer.c: 183: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l2963
u3190:
	goto	l1116
	line	185
	
l2959:	
;asktimer.c: 184: {
;asktimer.c: 185: while(RD1==1);
	goto	l1116
	
l1117:	
	
l1116:	
	btfsc	(65/8),(65)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l1116
u3200:
	goto	l2961
	
l1118:	
	line	186
	
l2961:	
;asktimer.c: 186: arr2='2';
	movlw	(032h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr2)
	goto	l2963
	line	187
	
l1115:	
	line	188
	
l2963:	
;asktimer.c: 187: }
;asktimer.c: 188: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l2969
u3210:
	goto	l1120
	line	190
	
l2965:	
;asktimer.c: 189: {
;asktimer.c: 190: while(RD2==1);
	goto	l1120
	
l1121:	
	
l1120:	
	btfsc	(66/8),(66)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l1120
u3220:
	goto	l2967
	
l1122:	
	line	191
	
l2967:	
;asktimer.c: 191: arr2='3';
	movlw	(033h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr2)
	goto	l2969
	line	192
	
l1119:	
	line	193
	
l2969:	
;asktimer.c: 192: }
;asktimer.c: 193: RD3=0;RD4=1;RD5=0;RD6=0;
	bcf	(67/8),(67)&7
	
l2971:	
	bsf	(68/8),(68)&7
	
l2973:	
	bcf	(69/8),(69)&7
	
l2975:	
	bcf	(70/8),(70)&7
	line	194
	
l2977:	
;asktimer.c: 194: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l2983
u3230:
	goto	l1124
	line	196
	
l2979:	
;asktimer.c: 195: {
;asktimer.c: 196: while(RD0==1);
	goto	l1124
	
l1125:	
	
l1124:	
	btfsc	(64/8),(64)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l1124
u3240:
	goto	l2981
	
l1126:	
	line	197
	
l2981:	
;asktimer.c: 197: arr2='4';
	movlw	(034h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr2)
	goto	l2983
	line	198
	
l1123:	
	line	199
	
l2983:	
;asktimer.c: 198: }
;asktimer.c: 199: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l2989
u3250:
	goto	l1128
	line	201
	
l2985:	
;asktimer.c: 200: {
;asktimer.c: 201: while(RD1==1);
	goto	l1128
	
l1129:	
	
l1128:	
	btfsc	(65/8),(65)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l1128
u3260:
	goto	l2987
	
l1130:	
	line	202
	
l2987:	
;asktimer.c: 202: arr2='5';
	movlw	(035h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr2)
	goto	l2989
	line	203
	
l1127:	
	line	204
	
l2989:	
;asktimer.c: 203: }
;asktimer.c: 204: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l2995
u3270:
	goto	l1132
	line	206
	
l2991:	
;asktimer.c: 205: {
;asktimer.c: 206: while(RD2==1);
	goto	l1132
	
l1133:	
	
l1132:	
	btfsc	(66/8),(66)&7
	goto	u3281
	goto	u3280
u3281:
	goto	l1132
u3280:
	goto	l2993
	
l1134:	
	line	207
	
l2993:	
;asktimer.c: 207: arr2='6';
	movlw	(036h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr2)
	goto	l2995
	line	208
	
l1131:	
	line	209
	
l2995:	
;asktimer.c: 208: }
;asktimer.c: 209: RD3=0;RD4=0;RD5=1;RD6=0;
	bcf	(67/8),(67)&7
	
l2997:	
	bcf	(68/8),(68)&7
	
l2999:	
	bsf	(69/8),(69)&7
	
l3001:	
	bcf	(70/8),(70)&7
	line	210
	
l3003:	
;asktimer.c: 210: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l3009
u3290:
	goto	l1136
	line	212
	
l3005:	
;asktimer.c: 211: {
;asktimer.c: 212: while(RD0==1);
	goto	l1136
	
l1137:	
	
l1136:	
	btfsc	(64/8),(64)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l1136
u3300:
	goto	l3007
	
l1138:	
	line	213
	
l3007:	
;asktimer.c: 213: arr2='7';
	movlw	(037h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr2)
	goto	l3009
	line	214
	
l1135:	
	line	215
	
l3009:	
;asktimer.c: 214: }
;asktimer.c: 215: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l3015
u3310:
	goto	l1140
	line	217
	
l3011:	
;asktimer.c: 216: {
;asktimer.c: 217: while(RD1==1);
	goto	l1140
	
l1141:	
	
l1140:	
	btfsc	(65/8),(65)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l1140
u3320:
	goto	l3013
	
l1142:	
	line	218
	
l3013:	
;asktimer.c: 218: arr2='8';
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr2)
	goto	l3015
	line	219
	
l1139:	
	line	220
	
l3015:	
;asktimer.c: 219: }
;asktimer.c: 220: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l3021
u3330:
	goto	l1144
	line	222
	
l3017:	
;asktimer.c: 221: {
;asktimer.c: 222: while(RD2==1);
	goto	l1144
	
l1145:	
	
l1144:	
	btfsc	(66/8),(66)&7
	goto	u3341
	goto	u3340
u3341:
	goto	l1144
u3340:
	goto	l3019
	
l1146:	
	line	223
	
l3019:	
;asktimer.c: 223: arr2='9';
	movlw	(039h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@arr2)
	goto	l3021
	line	224
	
l1143:	
	line	225
	
l3021:	
;asktimer.c: 224: }
;asktimer.c: 225: RD3=0;RD4=0;RD5=0;RD6=1;
	bcf	(67/8),(67)&7
	
l3023:	
	bcf	(68/8),(68)&7
	
l3025:	
	bcf	(69/8),(69)&7
	
l3027:	
	bsf	(70/8),(70)&7
	line	226
	
l3029:	
;asktimer.c: 226: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l1147
u3350:
	goto	l1148
	line	228
	
l3031:	
;asktimer.c: 227: {
;asktimer.c: 228: while(RD0==1);
	goto	l1148
	
l1149:	
	
l1148:	
	btfsc	(64/8),(64)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l1148
u3360:
	goto	l3033
	
l1150:	
	line	229
	
l3033:	
;asktimer.c: 229: control=5;
	movlw	low(05h)
	movwf	(main@control)
	movlw	high(05h)
	movwf	((main@control))+1
	line	230
	
l1147:	
	line	232
;asktimer.c: 230: }
;asktimer.c: 232: val2= arr2-'0';
	movf	(main@arr2),w
	addlw	low(0FFD0h)
	movwf	(main@val2)
	movlw	high(0FFD0h)
	skipnc
	movlw	(high(0FFD0h)+1)&0ffh
	movwf	((main@val2))+1
	line	233
	
l1110:	
	line	234
;asktimer.c: 233: }
;asktimer.c: 234: if(control==5)
	movlw	05h
	xorwf	(main@control),w
	iorwf	(main@control+1),w
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l1151
u3370:
	line	236
	
l3035:	
;asktimer.c: 235: {
;asktimer.c: 236: clear();
	fcall	_clear
	line	237
	
l3037:	
;asktimer.c: 237: for(i=0;i<10;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l3039:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3385
	movlw	low(0Ah)
	subwf	(main@i),w
u3385:

	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l3043
u3380:
	goto	l3051
	
l3041:	
	goto	l3051
	line	238
	
l1152:	
	line	239
	
l3043:	
;asktimer.c: 238: {
;asktimer.c: 239: address(0XC0+i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	0C0h
	fcall	_address
	line	240
	
l3045:	
;asktimer.c: 240: display(process[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@process&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	237
	
l3047:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l3049:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3395
	movlw	low(0Ah)
	subwf	(main@i),w
u3395:

	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l3043
u3390:
	goto	l3051
	
l1153:	
	line	242
	
l3051:	
;asktimer.c: 241: }
;asktimer.c: 242: control=6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@control)
	movlw	high(06h)
	movwf	((main@control))+1
	line	243
	
l1151:	
	line	244
;asktimer.c: 243: }
;asktimer.c: 244: if(control==6)
	movlw	06h
	xorwf	(main@control),w
	iorwf	(main@control+1),w
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l3069
u3400:
	line	246
	
l3053:	
;asktimer.c: 245: {
;asktimer.c: 246: timer0();
	fcall	_timer0
	line	247
	
l3055:	
;asktimer.c: 247: if(count>=0 && count<=val1*15)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_count+1),7
	goto	u3411
	goto	u3410
u3411:
	goto	l3061
u3410:
	
l3057:	
	movf	(main@val1+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@val1),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Fh)
	movwf	0+(?___wmul)+02h
	movlw	high(0Fh)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	xorlw	80h
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_count+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3425
	movf	(_count),w
	subwf	(0+(?___wmul)),w
u3425:

	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l3061
u3420:
	line	249
	
l3059:	
;asktimer.c: 248: {
;asktimer.c: 249: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	l3061
	line	250
	
l1155:	
	line	251
	
l3061:	
;asktimer.c: 250: }
;asktimer.c: 251: if(count>val1*15)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@val1+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@val1),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Fh)
	movwf	0+(?___wmul)+02h
	movlw	high(0Fh)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	xorlw	80h
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_count+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3435
	movf	(_count),w
	subwf	(0+(?___wmul)),w
u3435:

	skipnc
	goto	u3431
	goto	u3430
u3431:
	goto	l3069
u3430:
	line	253
	
l3063:	
;asktimer.c: 252: {
;asktimer.c: 253: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	254
	
l3065:	
;asktimer.c: 254: control=7;
	movlw	low(07h)
	movwf	(main@control)
	movlw	high(07h)
	movwf	((main@control))+1
	line	255
	
l3067:	
;asktimer.c: 255: count=0;
	clrf	(_count)
	clrf	(_count+1)
	goto	l3069
	line	256
	
l1156:	
	goto	l3069
	line	258
	
l1154:	
	line	259
	
l3069:	
;asktimer.c: 256: }
;asktimer.c: 258: }
;asktimer.c: 259: if(control==7)
	movlw	07h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@control),w
	iorwf	(main@control+1),w
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l2801
u3440:
	line	261
	
l3071:	
;asktimer.c: 260: {
;asktimer.c: 261: timer0();
	fcall	_timer0
	line	262
	
l3073:	
;asktimer.c: 262: if(count>=0 && count<=val2*15)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_count+1),7
	goto	u3451
	goto	u3450
u3451:
	goto	l3079
u3450:
	
l3075:	
	movf	(main@val2+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@val2),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Fh)
	movwf	0+(?___wmul)+02h
	movlw	high(0Fh)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	xorlw	80h
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_count+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3465
	movf	(_count),w
	subwf	(0+(?___wmul)),w
u3465:

	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l3079
u3460:
	line	264
	
l3077:	
;asktimer.c: 263: {
;asktimer.c: 264: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	l3079
	line	265
	
l1158:	
	line	266
	
l3079:	
;asktimer.c: 265: }
;asktimer.c: 266: if(count>val2*15)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@val2+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(main@val2),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movlw	low(0Fh)
	movwf	0+(?___wmul)+02h
	movlw	high(0Fh)
	movwf	(0+(?___wmul)+02h)+1
	fcall	___wmul
	movf	(1+(?___wmul)),w
	xorlw	80h
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_count+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u3475
	movf	(_count),w
	subwf	(0+(?___wmul)),w
u3475:

	skipnc
	goto	u3471
	goto	u3470
u3471:
	goto	l2801
u3470:
	line	268
	
l3081:	
;asktimer.c: 267: {
;asktimer.c: 268: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	269
	
l3083:	
;asktimer.c: 269: control=1;
	movlw	low(01h)
	movwf	(main@control)
	movlw	high(01h)
	movwf	((main@control))+1
	line	270
	
l3085:	
;asktimer.c: 270: count=0;
	clrf	(_count)
	clrf	(_count+1)
	line	271
	
l3087:	
;asktimer.c: 271: clear();
	fcall	_clear
	line	272
	
l3089:	
;asktimer.c: 272: arr1='\0';
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@arr1)
	line	273
	
l3091:	
;asktimer.c: 273: arr2='\0';
	clrf	(main@arr2)
	goto	l2801
	line	274
	
l1159:	
	goto	l2801
	line	275
	
l1157:	
	goto	l2801
	line	276
	
l1160:	
	line	83
	goto	l2801
	
l1161:	
	line	277
	
l1162:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_clear
psect	text246,local,class=CODE,delta=2
global __ptext246
__ptext246:

;; *************** function _clear *****************
;; Defined at:
;;		line 55 in file "E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
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
psect	text246
	file	"E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	line	55
	global	__size_of_clear
	__size_of_clear	equ	__end_of_clear-_clear
	
_clear:	
	opt	stack 5
; Regs used in _clear: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l2771:	
;asktimer.c: 56: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	57
;asktimer.c: 57: RA1=0;
	bcf	(41/8),(41)&7
	line	58
	
l2773:	
;asktimer.c: 58: PORTB=0X01;
	movlw	(01h)
	movwf	(6)	;volatile
	line	59
	
l2775:	
;asktimer.c: 59: pulse();
	fcall	_pulse
	line	60
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_clear
	__end_of_clear:
;; =============== function _clear ends ============

	signat	_clear,88
	global	_display
psect	text247,local,class=CODE,delta=2
global __ptext247
__ptext247:

;; *************** function _display *****************
;; Defined at:
;;		line 48 in file "E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
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
psect	text247
	file	"E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	line	48
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@data stored from wreg
	movwf	(display@data)
	line	49
	
l2765:	
;asktimer.c: 49: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	50
;asktimer.c: 50: RA1=0;
	bcf	(41/8),(41)&7
	line	51
	
l2767:	
;asktimer.c: 51: PORTB=data;
	movf	(display@data),w
	movwf	(6)	;volatile
	line	52
	
l2769:	
;asktimer.c: 52: pulse();
	fcall	_pulse
	line	53
	
l1049:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_address
psect	text248,local,class=CODE,delta=2
global __ptext248
__ptext248:

;; *************** function _address *****************
;; Defined at:
;;		line 41 in file "E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
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
psect	text248
	file	"E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	line	41
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 5
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
;address@data stored from wreg
	movwf	(address@data)
	line	42
	
l2759:	
;asktimer.c: 42: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	43
;asktimer.c: 43: RA1=0;
	bcf	(41/8),(41)&7
	line	44
	
l2761:	
;asktimer.c: 44: PORTB=data;
	movf	(address@data),w
	movwf	(6)	;volatile
	line	45
	
l2763:	
;asktimer.c: 45: pulse();
	fcall	_pulse
	line	46
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_address
	__end_of_address:
;; =============== function _address ends ============

	signat	_address,4216
	global	_type
psect	text249,local,class=CODE,delta=2
global __ptext249
__ptext249:

;; *************** function _type *****************
;; Defined at:
;;		line 34 in file "E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
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
psect	text249
	file	"E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	line	34
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 5
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	35
	
l2753:	
;asktimer.c: 35: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	36
;asktimer.c: 36: RA1=0;
	bcf	(41/8),(41)&7
	line	37
	
l2755:	
;asktimer.c: 37: PORTB=0X38;
	movlw	(038h)
	movwf	(6)	;volatile
	line	38
	
l2757:	
;asktimer.c: 38: pulse();
	fcall	_pulse
	line	39
	
l1043:	
	return
	opt stack 0
GLOBAL	__end_of_type
	__end_of_type:
;; =============== function _type ends ============

	signat	_type,88
	global	_on
psect	text250,local,class=CODE,delta=2
global __ptext250
__ptext250:

;; *************** function _on *****************
;; Defined at:
;;		line 27 in file "E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
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
psect	text250
	file	"E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	line	27
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 5
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	28
	
l2747:	
;asktimer.c: 28: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	29
;asktimer.c: 29: RA1=0;
	bcf	(41/8),(41)&7
	line	30
	
l2749:	
;asktimer.c: 30: PORTB=0X0E;
	movlw	(0Eh)
	movwf	(6)	;volatile
	line	31
	
l2751:	
;asktimer.c: 31: pulse();
	fcall	_pulse
	line	32
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_on
	__end_of_on:
;; =============== function _on ends ============

	signat	_on,88
	global	_pulse
psect	text251,local,class=CODE,delta=2
global __ptext251
__ptext251:

;; *************** function _pulse *****************
;; Defined at:
;;		line 20 in file "E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
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
psect	text251
	file	"E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	line	20
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	21
	
l2741:	
;asktimer.c: 21: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	line	22
	
l2743:	
;asktimer.c: 22: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	23
	
l2745:	
;asktimer.c: 23: RA2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	24
;asktimer.c: 24: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	25
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	___wmul
psect	text252,local,class=CODE,delta=2
global __ptext252
__ptext252:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text252
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.81\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 7
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l2729:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2731
	line	6
	
l1171:	
	line	7
	
l2731:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l1172
u2810:
	line	8
	
l2733:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1172:	
	line	9
	movlw	01h
	
u2825:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2825
	line	10
	
l2735:	
	movlw	01h
	
u2835:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2835
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l2731
u2840:
	goto	l2737
	
l1173:	
	line	12
	
l2737:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1174
	
l2739:	
	line	13
	
l1174:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_delay
psect	text253,local,class=CODE,delta=2
global __ptext253
__ptext253:

;; *************** function _delay *****************
;; Defined at:
;;		line 16 in file "E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
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
psect	text253
	file	"E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	line	16
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	17
	
l2725:	
;asktimer.c: 17: while(del--);
	goto	l2727
	
l1032:	
	goto	l2727
	
l1031:	
	
l2727:	
	movlw	low(-1)
	addwf	(delay@del),f
	skipnc
	incf	(delay@del+1),f
	movlw	high(-1)
	addwf	(delay@del+1),f
	movlw	high(-1)
	xorwf	((delay@del+1)),w
	skipz
	goto	u2805
	movlw	low(-1)
	xorwf	((delay@del)),w
u2805:

	skipz
	goto	u2801
	goto	u2800
u2801:
	goto	l2727
u2800:
	goto	l1034
	
l1033:	
	line	18
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_timer0
psect	text254,local,class=CODE,delta=2
global __ptext254
__ptext254:

;; *************** function _timer0 *****************
;; Defined at:
;;		line 8 in file "E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
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
psect	text254
	file	"E:\KTU\Softwares\MP lab\Asktimer\asktimer.c"
	line	8
	global	__size_of_timer0
	__size_of_timer0	equ	__end_of_timer0-_timer0
	
_timer0:	
	opt	stack 7
; Regs used in _timer0: [wreg]
	line	9
	
l2719:	
;asktimer.c: 9: if(T0IF==1)
	btfss	(90/8),(90)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l2723
u2790:
	line	11
	
l2721:	
;asktimer.c: 10: {
;asktimer.c: 11: count++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l2723
	line	12
	
l1027:	
	line	13
	
l2723:	
;asktimer.c: 12: }
;asktimer.c: 13: T0IF=0;
	bcf	(90/8),(90)&7
	line	14
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_timer0
	__end_of_timer0:
;; =============== function _timer0 ends ============

	signat	_timer0,88
psect	text255,local,class=CODE,delta=2
global __ptext255
__ptext255:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
