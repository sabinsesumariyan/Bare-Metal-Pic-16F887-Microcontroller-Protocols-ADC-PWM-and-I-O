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
	FNCALL	_clear,_pulse
	FNCALL	_display,_pulse
	FNCALL	_address,_pulse
	FNCALL	_type,_pulse
	FNCALL	_on,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	main@F1624
	global	main@F1618
	global	main@F1620
	global	main@F1634
	global	main@F1632
	global	main@F1610
psect	idataBANK2,class=CODE,space=0,delta=2
global __pidataBANK2
__pidataBANK2:
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	75

;initializer for main@F1624
	retlw	06Eh
	retlw	065h
	retlw	077h
	retlw	020h
	retlw	069h
	retlw	074h
	retlw	065h
	retlw	06Dh
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
	line	71

;initializer for main@F1618
	retlw	052h
	retlw	065h
	retlw	067h
	retlw	069h
	retlw	073h
	retlw	074h
	retlw	065h
	retlw	072h
	retlw	065h
	retlw	064h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	line	72

;initializer for main@F1620
	retlw	057h
	retlw	072h
	retlw	06Fh
	retlw	06Eh
	retlw	067h
	retlw	020h
	retlw	06Eh
	retlw	075h
	retlw	06Dh
	retlw	062h
	retlw	065h
	retlw	072h
	retlw	0
	retlw	0
	retlw	0
	line	83

;initializer for main@F1634
	retlw	046h
	retlw	072h
	retlw	065h
	retlw	065h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	line	82

;initializer for main@F1632
	retlw	04Eh
	retlw	065h
	retlw	061h
	retlw	072h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	line	65

;initializer for main@F1610
	retlw	057h
	retlw	065h
	retlw	06Ch
	retlw	063h
	retlw	06Fh
	retlw	06Dh
	retlw	065h
	retlw	0
	global	main@F1615
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
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
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
	global	_RE0
_RE0	set	72
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
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"carparking.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK3,class=BANK3,space=1
global __pbssBANK3
__pbssBANK3:
main@F1615:
       ds      16

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	71
main@F1618:
       ds      15

psect	dataBANK3
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	72
main@F1620:
       ds      15

psect	dataBANK3
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	83
main@F1634:
       ds      12

psect	dataBANK3
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	82
main@F1632:
       ds      10

psect	dataBANK3
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	65
main@F1610:
       ds      8

psect	dataBANK2,class=BANK2,space=1
global __pdataBANK2
__pdataBANK2:
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	75
main@F1624:
       ds      15

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2
	bsf	status, 7	;select IRP bank2
	movlw	low(__pbssBANK3)
	movwf	fsr
	movlw	low((__pbssBANK3)+010h)
	fcall	clear_ram
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
	movlw low(__pdataBANK2+15)
	movwf btemp-1,f
	movlw high(__pidataBANK2)
	movwf btemp,f
	movlw low(__pidataBANK2)
	movwf btemp+1,f
	movlw low(__pdataBANK2)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1
global __pcstackBANK3
__pcstackBANK3:
	global	main@e
main@e:	; 2 bytes @ 0x0
	ds	2
	global	main@control
main@control:	; 2 bytes @ 0x2
	ds	2
	global	main@k
main@k:	; 2 bytes @ 0x4
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x6
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x8
	ds	2
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	global	main@empty
main@empty:	; 30 bytes @ 0x0
	ds	30
	global	main@val
main@val:	; 16 bytes @ 0x1E
	ds	16
	global	main@sensor
main@sensor:	; 16 bytes @ 0x2E
	ds	16
	global	main@arr
main@arr:	; 15 bytes @ 0x3E
	ds	15
	global	main@count
main@count:	; 2 bytes @ 0x4D
	ds	2
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
	ds	6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@new
main@new:	; 15 bytes @ 0x0
	ds	15
	global	main@welcome
main@welcome:	; 8 bytes @ 0xF
	ds	8
	global	main@regi
main@regi:	; 15 bytes @ 0x17
	ds	15
	global	main@wrong
main@wrong:	; 15 bytes @ 0x26
	ds	15
	global	main@free
main@free:	; 12 bytes @ 0x35
	ds	12
	global	main@nearer
main@nearer:	; 10 bytes @ 0x41
	ds	10
	global	main@temp
main@temp:	; 2 bytes @ 0x4B
	ds	2
	global	main@state
main@state:	; 2 bytes @ 0x4D
	ds	2
;;Data sizes: Strings 0, constant 0, data 75, bss 16, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9       9
;; BANK0           80     79      79
;; BANK1           80     79      79
;; BANK3           96     10      86
;; BANK2           96      0      15

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
;;Main: autosize = 0, tempsize = 6, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                               176   176      0    2855
;;                                              3 COMMON     6     6      0
;;                                              0 BANK0     79    79      0
;;                                              0 BANK1     79    79      0
;;                                              0 BANK3     10    10      0
;;                                 _on
;;                               _type
;;                            _address
;;                            _display
;;                              _clear
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
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      A      56       9       89.6%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       F      11       15.6%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50     4F      4F       7       98.8%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0     10F      12        0.0%
;;ABS                  0      0     10C       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50     4F      4F       5       98.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      9       9       1       64.3%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 52 in file "E:\KTU\Softwares\MP lab\Carparking\carparking.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  empty          30    0[BANK1 ] int [15]
;;  sensor         16   46[BANK1 ] int [8]
;;  val            16   30[BANK1 ] int [8]
;;  arr            15   62[BANK1 ] unsigned char [15]
;;  wrong          15   38[BANK0 ] unsigned char [15]
;;  regi           15   23[BANK0 ] unsigned char [15]
;;  new            15    0[BANK0 ] unsigned char [15]
;;  free           12   53[BANK0 ] unsigned char [12]
;;  nearer         10   65[BANK0 ] unsigned char [10]
;;  welcome         8   15[BANK0 ] unsigned char [8]
;;  j               2    8[BANK3 ] int 
;;  i               2    6[BANK3 ] int 
;;  k               2    4[BANK3 ] int 
;;  control         2    2[BANK3 ] int 
;;  e               2    0[BANK3 ] int 
;;  count           2   77[BANK1 ] int 
;;  state           2   77[BANK0 ] int 
;;  temp            2   75[BANK0 ] int 
;;  l               2    0        int 
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
;;      Locals:         0      79      79      10       0
;;      Temps:          6       0       0       0       0
;;      Totals:         6      79      79      10       0
;;Total ram usage:      174 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_on
;;		_type
;;		_address
;;		_display
;;		_clear
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	52
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	53
	
l2981:	
;carparking.c: 53: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	54
;carparking.c: 54: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	55
;carparking.c: 55: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	56
;carparking.c: 56: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	57
;carparking.c: 57: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	58
	
l2983:	
;carparking.c: 58: TRISC=0XFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	59
	
l2985:	
;carparking.c: 59: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	60
;carparking.c: 60: TRISD=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	61
	
l2987:	
;carparking.c: 61: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	62
	
l2989:	
;carparking.c: 62: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	63
	
l2991:	
;carparking.c: 63: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	64
	
l2993:	
;carparking.c: 64: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	65
	
l2995:	
;carparking.c: 65: char welcome[8]="Welcome";
	movlw	(main@welcome)&0ffh
	movwf	fsr0
	movlw	low(main@F1610)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	8
	movwf	((??_main+0)+0+2)
u3060:
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
	goto	u3060
	line	66
	
l2997:	
;carparking.c: 66: int control=1;
	movlw	low(01h)
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	67
	
l2999:	
;carparking.c: 67: int j=0;
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	line	68
	
l3001:	
;carparking.c: 68: int k=0;
	clrf	(main@k)^0180h
	clrf	(main@k+1)^0180h
	line	69
;carparking.c: 69: int sensor[8]={0,0,0,0,0,0,0,0};
	movlw	(main@sensor)&0ffh
	movwf	fsr0
	movlw	low(main@F1615)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	16
	movwf	((??_main+0)+0+2)
u3070:
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
	goto	u3070
	line	71
;carparking.c: 70: char arr[15];
;carparking.c: 71: char regi[15]="Registered";
	movlw	(main@regi)&0ffh
	movwf	fsr0
	movlw	low(main@F1618)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	15
	movwf	((??_main+0)+0+2)
u3080:
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
	goto	u3080
	line	72
;carparking.c: 72: char wrong[15]="Wrong number";
	movlw	(main@wrong)&0ffh
	movwf	fsr0
	movlw	low(main@F1620)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	15
	movwf	((??_main+0)+0+2)
u3090:
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
	goto	u3090
	line	73
	
l3003:	
;carparking.c: 73: int count=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@count)^080h
	clrf	(main@count+1)^080h
	line	74
	
l3005:	
;carparking.c: 74: int state=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@state)
	clrf	(main@state+1)
	line	75
;carparking.c: 75: char new[15]="new item";
	movlw	(main@new)&0ffh
	movwf	fsr0
	movlw	low(main@F1624)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	15
	movwf	((??_main+0)+0+2)
u3100:
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
	goto	u3100
	line	79
	
l3007:	
;carparking.c: 76: int temp;
;carparking.c: 77: int i;
;carparking.c: 78: int l;
;carparking.c: 79: int e=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@e)^0180h
	clrf	(main@e+1)^0180h
	line	82
	
l3009:	
;carparking.c: 80: int val[8];
;carparking.c: 81: int empty[15];
;carparking.c: 82: char nearer[10]="Near";
	movlw	(main@nearer)&0ffh
	movwf	fsr0
	movlw	low(main@F1632)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u3110:
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
	goto	u3110
	line	83
	
l3011:	
;carparking.c: 83: char free[12]="Free";
	movlw	(main@free)&0ffh
	movwf	fsr0
	movlw	low(main@F1634)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	12
	movwf	((??_main+0)+0+2)
u3120:
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
	goto	u3120
	line	84
	
l3013:	
;carparking.c: 84: on();
	fcall	_on
	line	85
	
l3015:	
;carparking.c: 85: type();
	fcall	_type
	goto	l3017
	line	86
;carparking.c: 86: while(1)
	
l1063:	
	line	88
	
l3017:	
;carparking.c: 87: {
;carparking.c: 88: if(control==1)
	movlw	01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	(main@control)^0180h,w
	iorwf	(main@control+1)^0180h,w
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l3207
u3130:
	line	90
	
l3019:	
;carparking.c: 89: {
;carparking.c: 90: RD3=1;RD4=0;RD5=0;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	bcf	(68/8),(68)&7
	bcf	(69/8),(69)&7
	bcf	(70/8),(70)&7
	line	91
;carparking.c: 91: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l3031
u3140:
	goto	l1066
	line	93
	
l3021:	
;carparking.c: 92: {
;carparking.c: 93: while(RD0==1);
	goto	l1066
	
l1067:	
	
l1066:	
	btfsc	(64/8),(64)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l1066
u3150:
	goto	l3023
	
l1068:	
	line	94
	
l3023:	
;carparking.c: 94: arr[j]='1';
	movlw	(031h)
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	95
	
l3025:	
;carparking.c: 95: address(0X80+j);
	movf	(main@j)^0180h,w
	addlw	080h
	fcall	_address
	line	96
	
l3027:	
;carparking.c: 96: display(arr[j]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	97
	
l3029:	
;carparking.c: 97: j++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@j)^0180h,f
	skipnc
	incf	(main@j+1)^0180h,f
	movlw	high(01h)
	addwf	(main@j+1)^0180h,f
	goto	l3031
	line	98
	
l1065:	
	line	99
	
l3031:	
;carparking.c: 98: }
;carparking.c: 99: if(RD1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(65/8),(65)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l3043
u3160:
	goto	l1070
	line	101
	
l3033:	
;carparking.c: 100: {
;carparking.c: 101: while(RD1==1);
	goto	l1070
	
l1071:	
	
l1070:	
	btfsc	(65/8),(65)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l1070
u3170:
	goto	l3035
	
l1072:	
	line	102
	
l3035:	
;carparking.c: 102: arr[j]='2';
	movlw	(032h)
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	103
	
l3037:	
;carparking.c: 103: address(0X80+j);
	movf	(main@j)^0180h,w
	addlw	080h
	fcall	_address
	line	104
	
l3039:	
;carparking.c: 104: display(arr[j]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	105
	
l3041:	
;carparking.c: 105: j++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@j)^0180h,f
	skipnc
	incf	(main@j+1)^0180h,f
	movlw	high(01h)
	addwf	(main@j+1)^0180h,f
	goto	l3043
	line	106
	
l1069:	
	line	107
	
l3043:	
;carparking.c: 106: }
;carparking.c: 107: if(RD2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(66/8),(66)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l3055
u3180:
	goto	l1074
	line	109
	
l3045:	
;carparking.c: 108: {
;carparking.c: 109: while(RD2==1);
	goto	l1074
	
l1075:	
	
l1074:	
	btfsc	(66/8),(66)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l1074
u3190:
	goto	l3047
	
l1076:	
	line	110
	
l3047:	
;carparking.c: 110: arr[j]='3';
	movlw	(033h)
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	111
	
l3049:	
;carparking.c: 111: address(0X80+j);
	movf	(main@j)^0180h,w
	addlw	080h
	fcall	_address
	line	112
	
l3051:	
;carparking.c: 112: display(arr[j]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	113
	
l3053:	
;carparking.c: 113: j++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@j)^0180h,f
	skipnc
	incf	(main@j+1)^0180h,f
	movlw	high(01h)
	addwf	(main@j+1)^0180h,f
	goto	l3055
	line	114
	
l1073:	
	line	115
	
l3055:	
;carparking.c: 114: }
;carparking.c: 115: RD3=0;RD4=1;RD5=0;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	
l3057:	
	bsf	(68/8),(68)&7
	
l3059:	
	bcf	(69/8),(69)&7
	
l3061:	
	bcf	(70/8),(70)&7
	line	116
	
l3063:	
;carparking.c: 116: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l3075
u3200:
	goto	l1078
	line	118
	
l3065:	
;carparking.c: 117: {
;carparking.c: 118: while(RD0==1);
	goto	l1078
	
l1079:	
	
l1078:	
	btfsc	(64/8),(64)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l1078
u3210:
	goto	l3067
	
l1080:	
	line	119
	
l3067:	
;carparking.c: 119: arr[j]='4';
	movlw	(034h)
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	120
	
l3069:	
;carparking.c: 120: address(0X80+j);
	movf	(main@j)^0180h,w
	addlw	080h
	fcall	_address
	line	121
	
l3071:	
;carparking.c: 121: display(arr[j]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	122
	
l3073:	
;carparking.c: 122: j++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@j)^0180h,f
	skipnc
	incf	(main@j+1)^0180h,f
	movlw	high(01h)
	addwf	(main@j+1)^0180h,f
	goto	l3075
	line	123
	
l1077:	
	line	124
	
l3075:	
;carparking.c: 123: }
;carparking.c: 124: if(RD1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(65/8),(65)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l3087
u3220:
	goto	l1082
	line	126
	
l3077:	
;carparking.c: 125: {
;carparking.c: 126: while(RD1==1);
	goto	l1082
	
l1083:	
	
l1082:	
	btfsc	(65/8),(65)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l1082
u3230:
	goto	l3079
	
l1084:	
	line	127
	
l3079:	
;carparking.c: 127: arr[j]='5';
	movlw	(035h)
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	128
	
l3081:	
;carparking.c: 128: address(0X80+j);
	movf	(main@j)^0180h,w
	addlw	080h
	fcall	_address
	line	129
	
l3083:	
;carparking.c: 129: display(arr[j]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	130
	
l3085:	
;carparking.c: 130: j++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@j)^0180h,f
	skipnc
	incf	(main@j+1)^0180h,f
	movlw	high(01h)
	addwf	(main@j+1)^0180h,f
	goto	l3087
	line	131
	
l1081:	
	line	132
	
l3087:	
;carparking.c: 131: }
;carparking.c: 132: if(RD2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(66/8),(66)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l3099
u3240:
	goto	l1086
	line	134
	
l3089:	
;carparking.c: 133: {
;carparking.c: 134: while(RD2==1);
	goto	l1086
	
l1087:	
	
l1086:	
	btfsc	(66/8),(66)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l1086
u3250:
	goto	l3091
	
l1088:	
	line	135
	
l3091:	
;carparking.c: 135: arr[j]='6';
	movlw	(036h)
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	136
	
l3093:	
;carparking.c: 136: address(0X80+j);
	movf	(main@j)^0180h,w
	addlw	080h
	fcall	_address
	line	137
	
l3095:	
;carparking.c: 137: display(arr[j]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	138
	
l3097:	
;carparking.c: 138: j++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@j)^0180h,f
	skipnc
	incf	(main@j+1)^0180h,f
	movlw	high(01h)
	addwf	(main@j+1)^0180h,f
	goto	l3099
	line	139
	
l1085:	
	line	140
	
l3099:	
;carparking.c: 139: }
;carparking.c: 140: RD3=0;RD4=0;RD5=1;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	
l3101:	
	bcf	(68/8),(68)&7
	
l3103:	
	bsf	(69/8),(69)&7
	
l3105:	
	bcf	(70/8),(70)&7
	line	141
	
l3107:	
;carparking.c: 141: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l3119
u3260:
	goto	l1090
	line	143
	
l3109:	
;carparking.c: 142: {
;carparking.c: 143: while(RD0==1);
	goto	l1090
	
l1091:	
	
l1090:	
	btfsc	(64/8),(64)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l1090
u3270:
	goto	l3111
	
l1092:	
	line	144
	
l3111:	
;carparking.c: 144: arr[j]='7';
	movlw	(037h)
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	145
	
l3113:	
;carparking.c: 145: address(0X80+j);
	movf	(main@j)^0180h,w
	addlw	080h
	fcall	_address
	line	146
	
l3115:	
;carparking.c: 146: display(arr[j]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	147
	
l3117:	
;carparking.c: 147: j++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@j)^0180h,f
	skipnc
	incf	(main@j+1)^0180h,f
	movlw	high(01h)
	addwf	(main@j+1)^0180h,f
	goto	l3119
	line	148
	
l1089:	
	line	149
	
l3119:	
;carparking.c: 148: }
;carparking.c: 149: if(RD1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(65/8),(65)&7
	goto	u3281
	goto	u3280
u3281:
	goto	l3131
u3280:
	goto	l1094
	line	151
	
l3121:	
;carparking.c: 150: {
;carparking.c: 151: while(RD1==1);
	goto	l1094
	
l1095:	
	
l1094:	
	btfsc	(65/8),(65)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l1094
u3290:
	goto	l3123
	
l1096:	
	line	152
	
l3123:	
;carparking.c: 152: arr[j]='8';
	movlw	(038h)
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	153
	
l3125:	
;carparking.c: 153: address(0X80+j);
	movf	(main@j)^0180h,w
	addlw	080h
	fcall	_address
	line	154
	
l3127:	
;carparking.c: 154: display(arr[j]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	155
	
l3129:	
;carparking.c: 155: j++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@j)^0180h,f
	skipnc
	incf	(main@j+1)^0180h,f
	movlw	high(01h)
	addwf	(main@j+1)^0180h,f
	goto	l3131
	line	156
	
l1093:	
	line	157
	
l3131:	
;carparking.c: 156: }
;carparking.c: 157: if(RD2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(66/8),(66)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l3143
u3300:
	goto	l1098
	line	159
	
l3133:	
;carparking.c: 158: {
;carparking.c: 159: while(RD2==1);
	goto	l1098
	
l1099:	
	
l1098:	
	btfsc	(66/8),(66)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l1098
u3310:
	goto	l3135
	
l1100:	
	line	160
	
l3135:	
;carparking.c: 160: arr[j]='9';
	movlw	(039h)
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	161
	
l3137:	
;carparking.c: 161: address(0X80+j);
	movf	(main@j)^0180h,w
	addlw	080h
	fcall	_address
	line	162
	
l3139:	
;carparking.c: 162: display(arr[j]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	163
	
l3141:	
;carparking.c: 163: j++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@j)^0180h,f
	skipnc
	incf	(main@j+1)^0180h,f
	movlw	high(01h)
	addwf	(main@j+1)^0180h,f
	goto	l3143
	line	164
	
l1097:	
	line	165
	
l3143:	
;carparking.c: 164: }
;carparking.c: 165: RD3=0;RD4=0;RD5=0;RD6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	
l3145:	
	bcf	(68/8),(68)&7
	
l3147:	
	bcf	(69/8),(69)&7
	
l3149:	
	bsf	(70/8),(70)&7
	line	166
	
l3151:	
;carparking.c: 166: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l3195
u3320:
	goto	l1102
	line	168
	
l3153:	
;carparking.c: 167: {
;carparking.c: 168: while(RD0==1);
	goto	l1102
	
l1103:	
	
l1102:	
	btfsc	(64/8),(64)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l1102
u3330:
	goto	l3155
	
l1104:	
	line	169
	
l3155:	
;carparking.c: 169: if(j==10)
	movlw	0Ah
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	(main@j)^0180h,w
	iorwf	(main@j+1)^0180h,w
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l3179
u3340:
	line	171
	
l3157:	
;carparking.c: 170: {
;carparking.c: 171: for(k=0;k<12;k++)
	clrf	(main@k)^0180h
	clrf	(main@k+1)^0180h
	
l3159:	
	movf	(main@k+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u3355
	movlw	low(0Ch)
	subwf	(main@k)^0180h,w
u3355:

	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l3163
u3350:
	goto	l3175
	
l3161:	
	goto	l3175
	line	172
	
l1106:	
	line	173
	
l3163:	
;carparking.c: 172: {
;carparking.c: 173: address(0XC0+k);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@k)^0180h,w
	addlw	0C0h
	fcall	_address
	line	174
	
l3165:	
;carparking.c: 174: display(regi[k]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@k)^0180h,w
	addlw	main@regi&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	175
	
l3167:	
;carparking.c: 175: state=2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@state)
	movlw	high(02h)
	movwf	((main@state))+1
	line	171
	
l3169:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@k)^0180h,f
	skipnc
	incf	(main@k+1)^0180h,f
	movlw	high(01h)
	addwf	(main@k+1)^0180h,f
	
l3171:	
	movf	(main@k+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u3365
	movlw	low(0Ch)
	subwf	(main@k)^0180h,w
u3365:

	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l3163
u3360:
	goto	l3175
	
l1107:	
	line	177
;carparking.c: 176: }
;carparking.c: 177: while(count<30000)
	goto	l3175
	
l1109:	
	line	179
	
l3173:	
;carparking.c: 178: {
;carparking.c: 179: count++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@count)^080h,f
	skipnc
	incf	(main@count+1)^080h,f
	movlw	high(01h)
	addwf	(main@count+1)^080h,f
	goto	l3175
	line	180
	
l1108:	
	line	177
	
l3175:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@count+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3375
	movlw	low(07530h)
	subwf	(main@count)^080h,w
u3375:

	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l3173
u3370:
	goto	l3177
	
l1110:	
	line	181
	
l3177:	
;carparking.c: 180: }
;carparking.c: 181: count=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@count)^080h
	clrf	(main@count+1)^080h
	line	182
;carparking.c: 182: }
	goto	l3189
	line	183
	
l1105:	
	line	185
	
l3179:	
;carparking.c: 183: else
;carparking.c: 184: {
;carparking.c: 185: for(k=0;k<12;k++)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@k)^0180h
	clrf	(main@k+1)^0180h
	
l3181:	
	movf	(main@k+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u3385
	movlw	low(0Ch)
	subwf	(main@k)^0180h,w
u3385:

	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l3185
u3380:
	goto	l3189
	
l3183:	
	goto	l3189
	line	186
	
l1112:	
	line	187
	
l3185:	
;carparking.c: 186: {
;carparking.c: 187: state=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@state)
	movlw	high(01h)
	movwf	((main@state))+1
	line	185
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@k)^0180h,f
	skipnc
	incf	(main@k+1)^0180h,f
	movlw	high(01h)
	addwf	(main@k+1)^0180h,f
	
l3187:	
	movf	(main@k+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u3395
	movlw	low(0Ch)
	subwf	(main@k)^0180h,w
u3395:

	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l3185
u3390:
	goto	l3189
	
l1113:	
	goto	l3189
	line	189
	
l1111:	
	line	190
	
l3189:	
;carparking.c: 188: }
;carparking.c: 189: }
;carparking.c: 190: if(state==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@state),w
	iorwf	(main@state+1),w
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l1114
u3400:
	line	192
	
l3191:	
;carparking.c: 191: {
;carparking.c: 192: control=2;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@control)^0180h
	movlw	high(02h)
	movwf	((main@control)^0180h)+1
	line	193
	
l1114:	
	line	194
;carparking.c: 193: }
;carparking.c: 194: if(state==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@state),w
	iorwf	(main@state+1),w
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l3195
u3410:
	line	196
	
l3193:	
;carparking.c: 195: {
;carparking.c: 196: control=3;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@control)^0180h
	movlw	high(03h)
	movwf	((main@control)^0180h)+1
	goto	l3195
	line	197
	
l1115:	
	goto	l3195
	line	198
	
l1101:	
	line	199
	
l3195:	
;carparking.c: 197: }
;carparking.c: 198: }
;carparking.c: 199: if(RD1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(65/8),(65)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l3207
u3420:
	goto	l1117
	line	201
	
l3197:	
;carparking.c: 200: {
;carparking.c: 201: while(RD1==1);
	goto	l1117
	
l1118:	
	
l1117:	
	btfsc	(65/8),(65)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l1117
u3430:
	goto	l3199
	
l1119:	
	line	202
	
l3199:	
;carparking.c: 202: arr[j]='0';
	movlw	(030h)
	movwf	(??_main+0)+0
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	203
	
l3201:	
;carparking.c: 203: address(0X80+j);
	movf	(main@j)^0180h,w
	addlw	080h
	fcall	_address
	line	204
	
l3203:	
;carparking.c: 204: display(arr[j]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@j)^0180h,w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	205
	
l3205:	
;carparking.c: 205: j++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@j)^0180h,f
	skipnc
	incf	(main@j+1)^0180h,f
	movlw	high(01h)
	addwf	(main@j+1)^0180h,f
	goto	l3207
	line	206
	
l1116:	
	goto	l3207
	line	207
	
l1064:	
	line	208
	
l3207:	
;carparking.c: 206: }
;carparking.c: 207: }
;carparking.c: 208: if(control==2)
	movlw	02h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	(main@control)^0180h,w
	iorwf	(main@control+1)^0180h,w
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l3293
u3440:
	line	210
	
l3209:	
;carparking.c: 209: {
;carparking.c: 210: for(k=0;k<12;k++)
	clrf	(main@k)^0180h
	clrf	(main@k+1)^0180h
	
l3211:	
	movf	(main@k+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u3455
	movlw	low(0Ch)
	subwf	(main@k)^0180h,w
u3455:

	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l3215
u3450:
	goto	l1122
	
l3213:	
	goto	l1122
	line	211
	
l1121:	
	line	212
	
l3215:	
;carparking.c: 211: {
;carparking.c: 212: address(0XC0+k);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@k)^0180h,w
	addlw	0C0h
	fcall	_address
	line	213
	
l3217:	
;carparking.c: 213: display(wrong[k]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@k)^0180h,w
	addlw	main@wrong&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	210
	
l3219:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@k)^0180h,f
	skipnc
	incf	(main@k+1)^0180h,f
	movlw	high(01h)
	addwf	(main@k+1)^0180h,f
	
l3221:	
	movf	(main@k+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u3465
	movlw	low(0Ch)
	subwf	(main@k)^0180h,w
u3465:

	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l3215
u3460:
	
l1122:	
	line	215
;carparking.c: 214: }
;carparking.c: 215: RD3=1;RD4=0;RD5=0;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	bcf	(68/8),(68)&7
	bcf	(69/8),(69)&7
	bcf	(70/8),(70)&7
	line	216
;carparking.c: 216: if(RD0==1 || RD1==1 || RD2==1)
	btfsc	(64/8),(64)&7
	goto	u3471
	goto	u3470
u3471:
	goto	l3227
u3470:
	
l3223:	
	btfsc	(65/8),(65)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l3227
u3480:
	
l3225:	
	btfss	(66/8),(66)&7
	goto	u3491
	goto	u3490
u3491:
	goto	l3233
u3490:
	goto	l3227
	
l1125:	
	line	218
	
l3227:	
;carparking.c: 217: {
;carparking.c: 218: clear();
	fcall	_clear
	line	219
	
l3229:	
;carparking.c: 219: control=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	220
	
l3231:	
;carparking.c: 220: j=0;
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	goto	l3233
	line	221
	
l1123:	
	line	222
	
l3233:	
;carparking.c: 221: }
;carparking.c: 222: RD3=0;RD4=1;RD5=0;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	
l3235:	
	bsf	(68/8),(68)&7
	
l3237:	
	bcf	(69/8),(69)&7
	
l3239:	
	bcf	(70/8),(70)&7
	line	223
	
l3241:	
;carparking.c: 223: if(RD0==1 || RD1==1 || RD2==1)
	btfsc	(64/8),(64)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l3247
u3500:
	
l3243:	
	btfsc	(65/8),(65)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l3247
u3510:
	
l3245:	
	btfss	(66/8),(66)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l3253
u3520:
	goto	l3247
	
l1128:	
	line	225
	
l3247:	
;carparking.c: 224: {
;carparking.c: 225: clear();
	fcall	_clear
	line	226
	
l3249:	
;carparking.c: 226: control=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	227
	
l3251:	
;carparking.c: 227: j=0;
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	goto	l3253
	line	228
	
l1126:	
	line	229
	
l3253:	
;carparking.c: 228: }
;carparking.c: 229: RD3=0;RD4=0;RD5=1;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	
l3255:	
	bcf	(68/8),(68)&7
	
l3257:	
	bsf	(69/8),(69)&7
	
l3259:	
	bcf	(70/8),(70)&7
	line	230
	
l3261:	
;carparking.c: 230: if(RD0==1 || RD1==1 || RD2==1)
	btfsc	(64/8),(64)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l3267
u3530:
	
l3263:	
	btfsc	(65/8),(65)&7
	goto	u3541
	goto	u3540
u3541:
	goto	l3267
u3540:
	
l3265:	
	btfss	(66/8),(66)&7
	goto	u3551
	goto	u3550
u3551:
	goto	l3273
u3550:
	goto	l3267
	
l1131:	
	line	232
	
l3267:	
;carparking.c: 231: {
;carparking.c: 232: clear();
	fcall	_clear
	line	233
	
l3269:	
;carparking.c: 233: control=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	234
	
l3271:	
;carparking.c: 234: j=0;
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	goto	l3273
	line	235
	
l1129:	
	line	236
	
l3273:	
;carparking.c: 235: }
;carparking.c: 236: RD3=0;RD4=0;RD5=0;RD6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	
l3275:	
	bcf	(68/8),(68)&7
	
l3277:	
	bcf	(69/8),(69)&7
	
l3279:	
	bsf	(70/8),(70)&7
	line	237
	
l3281:	
;carparking.c: 237: if(RD0==1 || RD1==1 || RD2==1)
	btfsc	(64/8),(64)&7
	goto	u3561
	goto	u3560
u3561:
	goto	l3287
u3560:
	
l3283:	
	btfsc	(65/8),(65)&7
	goto	u3571
	goto	u3570
u3571:
	goto	l3287
u3570:
	
l3285:	
	btfss	(66/8),(66)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l3293
u3580:
	goto	l3287
	
l1134:	
	line	239
	
l3287:	
;carparking.c: 238: {
;carparking.c: 239: clear();
	fcall	_clear
	line	240
	
l3289:	
;carparking.c: 240: control=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	241
	
l3291:	
;carparking.c: 241: j=0;
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	goto	l3293
	line	242
	
l1132:	
	goto	l3293
	line	243
	
l1120:	
	line	244
	
l3293:	
;carparking.c: 242: }
;carparking.c: 243: }
;carparking.c: 244: if(control==3)
	movlw	03h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	(main@control)^0180h,w
	iorwf	(main@control+1)^0180h,w
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l1135
u3590:
	line	246
	
l3295:	
;carparking.c: 245: {
;carparking.c: 246: for(i=0;i<8;i++)
	clrf	(main@i)^0180h
	clrf	(main@i+1)^0180h
	
l3297:	
	movf	(main@i+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3605
	movlw	low(08h)
	subwf	(main@i)^0180h,w
u3605:

	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l3301
u3600:
	goto	l1137
	
l3299:	
	goto	l1137
	line	247
	
l1136:	
	line	248
	
l3301:	
;carparking.c: 247: {
;carparking.c: 248: sensor[i]=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@i)^0180h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@sensor&0ffh
	movwf	fsr0
	movlw	low(0)
	bcf	status, 7	;select IRP bank1
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	249
;carparking.c: 249: empty[i]='\0';
	movf	(main@i)^0180h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@empty&0ffh
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	250
;carparking.c: 250: val[i]='\0';
	movf	(main@i)^0180h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@val&0ffh
	movwf	fsr0
	movlw	low(0)
	movwf	indf
	incf	fsr0,f
	movlw	high(0)
	movwf	indf
	line	246
	
l3303:	
	movlw	low(01h)
	addwf	(main@i)^0180h,f
	skipnc
	incf	(main@i+1)^0180h,f
	movlw	high(01h)
	addwf	(main@i+1)^0180h,f
	
l3305:	
	movf	(main@i+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3615
	movlw	low(08h)
	subwf	(main@i)^0180h,w
u3615:

	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l3301
u3610:
	
l1137:	
	line	252
;carparking.c: 251: }
;carparking.c: 252: if(RC0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u3621
	goto	u3620
u3621:
	goto	l3309
u3620:
	line	254
	
l3307:	
;carparking.c: 253: {
;carparking.c: 254: sensor[0]=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(main@sensor)^080h
	movlw	high(01h)
	movwf	((main@sensor)^080h)+1
	goto	l3309
	line	255
	
l1138:	
	line	256
	
l3309:	
;carparking.c: 255: }
;carparking.c: 256: if(RC1==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(57/8),(57)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l3313
u3630:
	line	258
	
l3311:	
;carparking.c: 257: {
;carparking.c: 258: sensor[1]=2;
	movlw	low(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(main@sensor)^080h+02h
	movlw	high(02h)
	movwf	(0+(main@sensor)^080h+02h)+1
	goto	l3313
	line	259
	
l1139:	
	line	260
	
l3313:	
;carparking.c: 259: }
;carparking.c: 260: if(RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(58/8),(58)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l3317
u3640:
	line	262
	
l3315:	
;carparking.c: 261: {
;carparking.c: 262: sensor[2]=3;
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(main@sensor)^080h+04h
	movlw	high(03h)
	movwf	(0+(main@sensor)^080h+04h)+1
	goto	l3317
	line	263
	
l1140:	
	line	264
	
l3317:	
;carparking.c: 263: }
;carparking.c: 264: if(RC3==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(59/8),(59)&7
	goto	u3651
	goto	u3650
u3651:
	goto	l3321
u3650:
	line	266
	
l3319:	
;carparking.c: 265: {
;carparking.c: 266: sensor[3]=4;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(main@sensor)^080h+06h
	movlw	high(04h)
	movwf	(0+(main@sensor)^080h+06h)+1
	goto	l3321
	line	267
	
l1141:	
	line	268
	
l3321:	
;carparking.c: 267: }
;carparking.c: 268: if(RC4==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(60/8),(60)&7
	goto	u3661
	goto	u3660
u3661:
	goto	l3325
u3660:
	line	270
	
l3323:	
;carparking.c: 269: {
;carparking.c: 270: sensor[4]=5;
	movlw	low(05h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(main@sensor)^080h+08h
	movlw	high(05h)
	movwf	(0+(main@sensor)^080h+08h)+1
	goto	l3325
	line	271
	
l1142:	
	line	272
	
l3325:	
;carparking.c: 271: }
;carparking.c: 272: if(RC5==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(61/8),(61)&7
	goto	u3671
	goto	u3670
u3671:
	goto	l3329
u3670:
	line	274
	
l3327:	
;carparking.c: 273: {
;carparking.c: 274: sensor[5]=6;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(main@sensor)^080h+0Ah
	movlw	high(06h)
	movwf	(0+(main@sensor)^080h+0Ah)+1
	goto	l3329
	line	275
	
l1143:	
	line	276
	
l3329:	
;carparking.c: 275: }
;carparking.c: 276: if(RC6==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(62/8),(62)&7
	goto	u3681
	goto	u3680
u3681:
	goto	l3333
u3680:
	line	278
	
l3331:	
;carparking.c: 277: {
;carparking.c: 278: sensor[6]=7;
	movlw	low(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(main@sensor)^080h+0Ch
	movlw	high(07h)
	movwf	(0+(main@sensor)^080h+0Ch)+1
	goto	l3333
	line	279
	
l1144:	
	line	280
	
l3333:	
;carparking.c: 279: }
;carparking.c: 280: if(RC7==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(63/8),(63)&7
	goto	u3691
	goto	u3690
u3691:
	goto	l3337
u3690:
	line	282
	
l3335:	
;carparking.c: 281: {
;carparking.c: 282: sensor[7]=8;
	movlw	low(08h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	0+(main@sensor)^080h+0Eh
	movlw	high(08h)
	movwf	(0+(main@sensor)^080h+0Eh)+1
	goto	l3337
	line	283
	
l1145:	
	line	284
	
l3337:	
;carparking.c: 283: }
;carparking.c: 284: for(i=0;i<8;i++)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@i)^0180h
	clrf	(main@i+1)^0180h
	
l3339:	
	movf	(main@i+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3705
	movlw	low(08h)
	subwf	(main@i)^0180h,w
u3705:

	skipc
	goto	u3701
	goto	u3700
u3701:
	goto	l3343
u3700:
	goto	l3353
	
l3341:	
	goto	l3353
	line	285
	
l1146:	
	line	286
	
l3343:	
;carparking.c: 285: {
;carparking.c: 286: if(sensor[i]==0)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@i)^0180h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@sensor&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	incf	fsr0,f
	iorwf	indf,w
	skipz
	goto	u3711
	goto	u3710
u3711:
	goto	l3349
u3710:
	line	288
	
l3345:	
;carparking.c: 287: {
;carparking.c: 288: empty[e]=i;
	movf	(main@e)^0180h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@empty&0ffh
	movwf	fsr0
	movf	(main@i)^0180h,w
	movwf	indf
	incf	fsr0,f
	movf	(main@i+1)^0180h,w
	movwf	indf
	line	289
;carparking.c: 289: val[e]=empty[e]+'1';
	movf	(main@e)^0180h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@empty&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movf	0+(??_main+1)+0,w
	addlw	low(031h)
	movwf	(??_main+3)+0
	movf	1+(??_main+1)+0,w
	skipnc
	addlw	1
	addlw	high(031h)
	movwf	1+(??_main+3)+0
	movf	(main@e)^0180h,w
	movwf	(??_main+5)+0
	addwf	(??_main+5)+0,w
	addlw	main@val&0ffh
	movwf	fsr0
	movf	0+(??_main+3)+0,w
	movwf	indf
	incf	fsr0,f
	movf	1+(??_main+3)+0,w
	movwf	indf
	line	290
	
l3347:	
;carparking.c: 290: e++;
	movlw	low(01h)
	addwf	(main@e)^0180h,f
	skipnc
	incf	(main@e+1)^0180h,f
	movlw	high(01h)
	addwf	(main@e+1)^0180h,f
	goto	l3349
	line	291
	
l1148:	
	line	284
	
l3349:	
	movlw	low(01h)
	addwf	(main@i)^0180h,f
	skipnc
	incf	(main@i+1)^0180h,f
	movlw	high(01h)
	addwf	(main@i+1)^0180h,f
	
l3351:	
	movf	(main@i+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3725
	movlw	low(08h)
	subwf	(main@i)^0180h,w
u3725:

	skipc
	goto	u3721
	goto	u3720
u3721:
	goto	l3343
u3720:
	goto	l3353
	
l1147:	
	line	293
	
l3353:	
;carparking.c: 291: }
;carparking.c: 292: }
;carparking.c: 293: temp=5;
	movlw	low(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@temp)
	movlw	high(05h)
	movwf	((main@temp))+1
	line	294
	
l3355:	
;carparking.c: 294: i=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@i)^0180h
	clrf	(main@i+1)^0180h
	line	295
	
l3357:	
;carparking.c: 295: if(temp==5)
	movlw	05h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l1135
u3730:
	line	297
	
l3359:	
;carparking.c: 296: {
;carparking.c: 297: control=4;
	movlw	low(04h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@control)^0180h
	movlw	high(04h)
	movwf	((main@control)^0180h)+1
	goto	l1135
	line	298
	
l1149:	
	line	299
	
l1135:	
	line	300
;carparking.c: 298: }
;carparking.c: 299: }
;carparking.c: 300: if(control==4)
	movlw	04h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	(main@control)^0180h,w
	iorwf	(main@control+1)^0180h,w
	skipz
	goto	u3741
	goto	u3740
u3741:
	goto	l3425
u3740:
	line	302
	
l3361:	
;carparking.c: 301: {
;carparking.c: 302: clear();
	fcall	_clear
	line	303
	
l3363:	
;carparking.c: 303: for(i=0;i<4;i++)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@i)^0180h
	clrf	(main@i+1)^0180h
	
l3365:	
	movf	(main@i+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3755
	movlw	low(04h)
	subwf	(main@i)^0180h,w
u3755:

	skipc
	goto	u3751
	goto	u3750
u3751:
	goto	l3369
u3750:
	goto	l3377
	
l3367:	
	goto	l3377
	line	304
	
l1151:	
	line	305
	
l3369:	
;carparking.c: 304: {
;carparking.c: 305: address(0X80+i);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@i)^0180h,w
	addlw	080h
	fcall	_address
	line	306
	
l3371:	
;carparking.c: 306: display(free[i]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@i)^0180h,w
	addlw	main@free&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	303
	
l3373:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@i)^0180h,f
	skipnc
	incf	(main@i+1)^0180h,f
	movlw	high(01h)
	addwf	(main@i+1)^0180h,f
	
l3375:	
	movf	(main@i+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3765
	movlw	low(04h)
	subwf	(main@i)^0180h,w
u3765:

	skipc
	goto	u3761
	goto	u3760
u3761:
	goto	l3369
u3760:
	goto	l3377
	
l1152:	
	line	309
	
l3377:	
;carparking.c: 308: }
;carparking.c: 309: for(i=0;i<8;i++)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@i)^0180h
	clrf	(main@i+1)^0180h
	
l3379:	
	movf	(main@i+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3775
	movlw	low(08h)
	subwf	(main@i)^0180h,w
u3775:

	skipc
	goto	u3771
	goto	u3770
u3771:
	goto	l3383
u3770:
	goto	l3391
	
l3381:	
	goto	l3391
	line	310
	
l1153:	
	line	311
	
l3383:	
;carparking.c: 310: {
;carparking.c: 311: address(0X80+(4+i));
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@i)^0180h,w
	addlw	084h
	fcall	_address
	line	312
	
l3385:	
;carparking.c: 312: display(val[i]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@i)^0180h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@val&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_display
	line	309
	
l3387:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@i)^0180h,f
	skipnc
	incf	(main@i+1)^0180h,f
	movlw	high(01h)
	addwf	(main@i+1)^0180h,f
	
l3389:	
	movf	(main@i+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3785
	movlw	low(08h)
	subwf	(main@i)^0180h,w
u3785:

	skipc
	goto	u3781
	goto	u3780
u3781:
	goto	l3383
u3780:
	goto	l3391
	
l1154:	
	line	314
	
l3391:	
;carparking.c: 313: }
;carparking.c: 314: for(i=0;i<4;i++)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@i)^0180h
	clrf	(main@i+1)^0180h
	
l3393:	
	movf	(main@i+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3795
	movlw	low(04h)
	subwf	(main@i)^0180h,w
u3795:

	skipc
	goto	u3791
	goto	u3790
u3791:
	goto	l3397
u3790:
	goto	l3405
	
l3395:	
	goto	l3405
	line	315
	
l1155:	
	line	316
	
l3397:	
;carparking.c: 315: {
;carparking.c: 316: address(0XC0+i);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@i)^0180h,w
	addlw	0C0h
	fcall	_address
	line	317
	
l3399:	
;carparking.c: 317: display(nearer[i]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@i)^0180h,w
	addlw	main@nearer&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	314
	
l3401:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@i)^0180h,f
	skipnc
	incf	(main@i+1)^0180h,f
	movlw	high(01h)
	addwf	(main@i+1)^0180h,f
	
l3403:	
	movf	(main@i+1)^0180h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3805
	movlw	low(04h)
	subwf	(main@i)^0180h,w
u3805:

	skipc
	goto	u3801
	goto	u3800
u3801:
	goto	l3397
u3800:
	goto	l3405
	
l1156:	
	line	319
	
l3405:	
;carparking.c: 318: }
;carparking.c: 319: address(0XC0+5);
	movlw	(0C5h)
	fcall	_address
	line	320
;carparking.c: 320: display(val[0]);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@val)^080h,w
	fcall	_display
	line	321
	
l3407:	
;carparking.c: 321: temp=6;
	movlw	low(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@temp)
	movlw	high(06h)
	movwf	((main@temp))+1
	line	322
	
l3409:	
;carparking.c: 322: e=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@e)^0180h
	clrf	(main@e+1)^0180h
	line	323
	
l3411:	
;carparking.c: 323: count=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@count)^080h
	clrf	(main@count+1)^080h
	line	324
	
l3413:	
;carparking.c: 324: if(temp==6)
	movlw	06h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3811
	goto	u3810
u3811:
	goto	l3425
u3810:
	goto	l3419
	line	326
	
l3415:	
;carparking.c: 325: {
;carparking.c: 326: while(count<30000)
	goto	l3419
	
l1159:	
	line	328
	
l3417:	
;carparking.c: 327: {
;carparking.c: 328: count++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(main@count)^080h,f
	skipnc
	incf	(main@count+1)^080h,f
	movlw	high(01h)
	addwf	(main@count+1)^080h,f
	goto	l3419
	line	329
	
l1158:	
	line	326
	
l3419:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(main@count+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3825
	movlw	low(07530h)
	subwf	(main@count)^080h,w
u3825:

	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l3417
u3820:
	goto	l3421
	
l1160:	
	line	330
	
l3421:	
;carparking.c: 329: }
;carparking.c: 330: count=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(main@count)^080h
	clrf	(main@count+1)^080h
	line	331
	
l3423:	
;carparking.c: 331: control=5;
	movlw	low(05h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@control)^0180h
	movlw	high(05h)
	movwf	((main@control)^0180h)+1
	goto	l3425
	line	332
	
l1157:	
	goto	l3425
	line	333
	
l1150:	
	line	334
	
l3425:	
;carparking.c: 332: }
;carparking.c: 333: }
;carparking.c: 334: if(control==5)
	movlw	05h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	xorwf	(main@control)^0180h,w
	iorwf	(main@control+1)^0180h,w
	skipz
	goto	u3831
	goto	u3830
u3831:
	goto	l3017
u3830:
	line	336
	
l3427:	
;carparking.c: 335: {
;carparking.c: 336: RD3=1;RD4=0;RD5=0;RD6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	bcf	(68/8),(68)&7
	bcf	(69/8),(69)&7
	bcf	(70/8),(70)&7
	line	337
;carparking.c: 337: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3841
	goto	u3840
u3841:
	goto	l3437
u3840:
	line	339
	
l3429:	
;carparking.c: 338: {
;carparking.c: 339: clear();
	fcall	_clear
	line	340
	
l3431:	
;carparking.c: 340: j=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	line	341
	
l3433:	
;carparking.c: 341: control=1;
	movlw	low(01h)
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	342
	
l3435:	
;carparking.c: 342: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	l3437
	line	343
	
l1162:	
	line	344
	
l3437:	
;carparking.c: 343: }
;carparking.c: 344: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u3851
	goto	u3850
u3851:
	goto	l3447
u3850:
	line	346
	
l3439:	
;carparking.c: 345: {
;carparking.c: 346: clear();
	fcall	_clear
	line	347
	
l3441:	
;carparking.c: 347: j=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	line	348
	
l3443:	
;carparking.c: 348: control=1;
	movlw	low(01h)
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	349
	
l3445:	
;carparking.c: 349: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	l3447
	line	350
	
l1163:	
	line	351
	
l3447:	
;carparking.c: 350: }
;carparking.c: 351: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u3861
	goto	u3860
u3861:
	goto	l3457
u3860:
	line	353
	
l3449:	
;carparking.c: 352: {
;carparking.c: 353: clear();
	fcall	_clear
	line	354
	
l3451:	
;carparking.c: 354: j=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	line	355
	
l3453:	
;carparking.c: 355: control=1;
	movlw	low(01h)
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	356
	
l3455:	
;carparking.c: 356: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	l3457
	line	357
	
l1164:	
	line	358
	
l3457:	
;carparking.c: 357: }
;carparking.c: 358: RD3=0;RD4=1;RD5=0;RD6=0;
	bcf	(67/8),(67)&7
	
l3459:	
	bsf	(68/8),(68)&7
	
l3461:	
	bcf	(69/8),(69)&7
	
l3463:	
	bcf	(70/8),(70)&7
	line	359
	
l3465:	
;carparking.c: 359: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3871
	goto	u3870
u3871:
	goto	l3475
u3870:
	line	361
	
l3467:	
;carparking.c: 360: {
;carparking.c: 361: clear();
	fcall	_clear
	line	362
	
l3469:	
;carparking.c: 362: j=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	line	363
	
l3471:	
;carparking.c: 363: control=1;
	movlw	low(01h)
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	364
	
l3473:	
;carparking.c: 364: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	l3475
	line	365
	
l1165:	
	line	366
	
l3475:	
;carparking.c: 365: }
;carparking.c: 366: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u3881
	goto	u3880
u3881:
	goto	l3485
u3880:
	line	368
	
l3477:	
;carparking.c: 367: {
;carparking.c: 368: clear();
	fcall	_clear
	line	369
	
l3479:	
;carparking.c: 369: j=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	line	370
	
l3481:	
;carparking.c: 370: control=1;
	movlw	low(01h)
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	371
	
l3483:	
;carparking.c: 371: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	l3485
	line	372
	
l1166:	
	line	373
	
l3485:	
;carparking.c: 372: }
;carparking.c: 373: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u3891
	goto	u3890
u3891:
	goto	l3495
u3890:
	line	375
	
l3487:	
;carparking.c: 374: {
;carparking.c: 375: clear();
	fcall	_clear
	line	376
	
l3489:	
;carparking.c: 376: j=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	line	377
	
l3491:	
;carparking.c: 377: control=1;
	movlw	low(01h)
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	378
	
l3493:	
;carparking.c: 378: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	l3495
	line	379
	
l1167:	
	line	380
	
l3495:	
;carparking.c: 379: }
;carparking.c: 380: RD3=0;RD4=0;RD5=1;RD6=0;
	bcf	(67/8),(67)&7
	
l3497:	
	bcf	(68/8),(68)&7
	
l3499:	
	bsf	(69/8),(69)&7
	
l3501:	
	bcf	(70/8),(70)&7
	line	381
	
l3503:	
;carparking.c: 381: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3901
	goto	u3900
u3901:
	goto	l3513
u3900:
	line	383
	
l3505:	
;carparking.c: 382: {
;carparking.c: 383: clear();
	fcall	_clear
	line	384
	
l3507:	
;carparking.c: 384: j=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	line	385
	
l3509:	
;carparking.c: 385: control=1;
	movlw	low(01h)
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	386
	
l3511:	
;carparking.c: 386: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	l3513
	line	387
	
l1168:	
	line	388
	
l3513:	
;carparking.c: 387: }
;carparking.c: 388: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u3911
	goto	u3910
u3911:
	goto	l3523
u3910:
	line	390
	
l3515:	
;carparking.c: 389: {
;carparking.c: 390: clear();
	fcall	_clear
	line	391
	
l3517:	
;carparking.c: 391: j=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	line	392
	
l3519:	
;carparking.c: 392: control=1;
	movlw	low(01h)
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	393
	
l3521:	
;carparking.c: 393: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	l3523
	line	394
	
l1169:	
	line	395
	
l3523:	
;carparking.c: 394: }
;carparking.c: 395: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u3921
	goto	u3920
u3921:
	goto	l3533
u3920:
	line	397
	
l3525:	
;carparking.c: 396: {
;carparking.c: 397: clear();
	fcall	_clear
	line	398
	
l3527:	
;carparking.c: 398: j=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	line	399
	
l3529:	
;carparking.c: 399: control=1;
	movlw	low(01h)
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	400
	
l3531:	
;carparking.c: 400: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	l3533
	line	401
	
l1170:	
	line	402
	
l3533:	
;carparking.c: 401: }
;carparking.c: 402: RD3=0;RD4=0;RD5=0;RD6=1;
	bcf	(67/8),(67)&7
	
l3535:	
	bcf	(68/8),(68)&7
	
l3537:	
	bcf	(69/8),(69)&7
	
l3539:	
	bsf	(70/8),(70)&7
	line	403
	
l3541:	
;carparking.c: 403: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l3551
u3930:
	line	405
	
l3543:	
;carparking.c: 404: {
;carparking.c: 405: clear();
	fcall	_clear
	line	406
	
l3545:	
;carparking.c: 406: j=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	line	407
	
l3547:	
;carparking.c: 407: control=1;
	movlw	low(01h)
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	408
	
l3549:	
;carparking.c: 408: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	l3551
	line	409
	
l1171:	
	line	410
	
l3551:	
;carparking.c: 409: }
;carparking.c: 410: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u3941
	goto	u3940
u3941:
	goto	l3561
u3940:
	line	412
	
l3553:	
;carparking.c: 411: {
;carparking.c: 412: clear();
	fcall	_clear
	line	413
	
l3555:	
;carparking.c: 413: j=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	line	414
	
l3557:	
;carparking.c: 414: control=1;
	movlw	low(01h)
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	415
	
l3559:	
;carparking.c: 415: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	l3561
	line	416
	
l1172:	
	line	417
	
l3561:	
;carparking.c: 416: }
;carparking.c: 417: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u3951
	goto	u3950
u3951:
	goto	l3017
u3950:
	line	419
	
l3563:	
;carparking.c: 418: {
;carparking.c: 419: clear();
	fcall	_clear
	line	420
	
l3565:	
;carparking.c: 420: j=0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@j)^0180h
	clrf	(main@j+1)^0180h
	line	421
	
l3567:	
;carparking.c: 421: control=1;
	movlw	low(01h)
	movwf	(main@control)^0180h
	movlw	high(01h)
	movwf	((main@control)^0180h)+1
	line	422
	
l3569:	
;carparking.c: 422: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	l3017
	line	423
	
l1173:	
	goto	l3017
	line	424
	
l1161:	
	goto	l3017
	line	425
	
l1174:	
	line	86
	goto	l3017
	
l1175:	
	line	426
	
l1176:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_clear
psect	text217,local,class=CODE,delta=2
global __ptext217
__ptext217:

;; *************** function _clear *****************
;; Defined at:
;;		line 45 in file "E:\KTU\Softwares\MP lab\Carparking\carparking.c"
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
psect	text217
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	45
	global	__size_of_clear
	__size_of_clear	equ	__end_of_clear-_clear
	
_clear:	
	opt	stack 5
; Regs used in _clear: [wreg+status,2+status,0+pclath+cstack]
	line	46
	
l2975:	
;carparking.c: 46: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	47
;carparking.c: 47: RA1=0;
	bcf	(41/8),(41)&7
	line	48
	
l2977:	
;carparking.c: 48: PORTB=0X01;
	movlw	(01h)
	movwf	(6)	;volatile
	line	49
	
l2979:	
;carparking.c: 49: pulse();
	fcall	_pulse
	line	50
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_clear
	__end_of_clear:
;; =============== function _clear ends ============

	signat	_clear,88
	global	_display
psect	text218,local,class=CODE,delta=2
global __ptext218
__ptext218:

;; *************** function _display *****************
;; Defined at:
;;		line 38 in file "E:\KTU\Softwares\MP lab\Carparking\carparking.c"
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
psect	text218
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	38
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@data stored from wreg
	movwf	(display@data)
	line	39
	
l2969:	
;carparking.c: 39: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	40
;carparking.c: 40: RA1=0;
	bcf	(41/8),(41)&7
	line	41
	
l2971:	
;carparking.c: 41: PORTB=data;
	movf	(display@data),w
	movwf	(6)	;volatile
	line	42
	
l2973:	
;carparking.c: 42: pulse();
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
psect	text219,local,class=CODE,delta=2
global __ptext219
__ptext219:

;; *************** function _address *****************
;; Defined at:
;;		line 31 in file "E:\KTU\Softwares\MP lab\Carparking\carparking.c"
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
psect	text219
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	31
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 5
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
;address@data stored from wreg
	movwf	(address@data)
	line	32
	
l2963:	
;carparking.c: 32: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	33
;carparking.c: 33: RA1=0;
	bcf	(41/8),(41)&7
	line	34
	
l2965:	
;carparking.c: 34: PORTB=data;
	movf	(address@data),w
	movwf	(6)	;volatile
	line	35
	
l2967:	
;carparking.c: 35: pulse();
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
psect	text220,local,class=CODE,delta=2
global __ptext220
__ptext220:

;; *************** function _type *****************
;; Defined at:
;;		line 24 in file "E:\KTU\Softwares\MP lab\Carparking\carparking.c"
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
psect	text220
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	24
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 5
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	25
	
l2957:	
;carparking.c: 25: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	26
;carparking.c: 26: RA1=0;
	bcf	(41/8),(41)&7
	line	27
	
l2959:	
;carparking.c: 27: PORTB=0X38;
	movlw	(038h)
	movwf	(6)	;volatile
	line	28
	
l2961:	
;carparking.c: 28: pulse();
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
psect	text221,local,class=CODE,delta=2
global __ptext221
__ptext221:

;; *************** function _on *****************
;; Defined at:
;;		line 17 in file "E:\KTU\Softwares\MP lab\Carparking\carparking.c"
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
psect	text221
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	17
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 5
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l2951:	
;carparking.c: 18: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	19
;carparking.c: 19: RA1=0;
	bcf	(41/8),(41)&7
	line	20
	
l2953:	
;carparking.c: 20: PORTB=0X0E;
	movlw	(0Eh)
	movwf	(6)	;volatile
	line	21
	
l2955:	
;carparking.c: 21: pulse();
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
psect	text222,local,class=CODE,delta=2
global __ptext222
__ptext222:

;; *************** function _pulse *****************
;; Defined at:
;;		line 10 in file "E:\KTU\Softwares\MP lab\Carparking\carparking.c"
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
psect	text222
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	10
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	11
	
l2945:	
;carparking.c: 11: RA2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	line	12
	
l2947:	
;carparking.c: 12: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	13
	
l2949:	
;carparking.c: 13: RA2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	14
;carparking.c: 14: delay(100);
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
psect	text223,local,class=CODE,delta=2
global __ptext223
__ptext223:

;; *************** function _delay *****************
;; Defined at:
;;		line 6 in file "E:\KTU\Softwares\MP lab\Carparking\carparking.c"
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
psect	text223
	file	"E:\KTU\Softwares\MP lab\Carparking\carparking.c"
	line	6
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	7
	
l2941:	
;carparking.c: 7: while(del--);
	goto	l2943
	
l1026:	
	goto	l2943
	
l1025:	
	
l2943:	
	movlw	low(-1)
	addwf	(delay@del),f
	skipnc
	incf	(delay@del+1),f
	movlw	high(-1)
	addwf	(delay@del+1),f
	movlw	high(-1)
	xorwf	((delay@del+1)),w
	skipz
	goto	u3055
	movlw	low(-1)
	xorwf	((delay@del)),w
u3055:

	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l2943
u3050:
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
psect	text224,local,class=CODE,delta=2
global __ptext224
__ptext224:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
