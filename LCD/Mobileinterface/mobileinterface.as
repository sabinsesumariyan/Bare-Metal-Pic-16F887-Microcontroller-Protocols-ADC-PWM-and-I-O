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
	global	main@F1610
	global	main@F1612
	global	main@F1614
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
	line	57

;initializer for main@F1610
	retlw	052h
	retlw	069h
	retlw	06Eh
	retlw	067h
	retlw	069h
	retlw	06Eh
	retlw	067h
	retlw	0
	retlw	0
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	58

;initializer for main@F1612
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
	line	59

;initializer for main@F1614
	retlw	048h
	retlw	061h
	retlw	06Eh
	retlw	067h
	retlw	020h
	retlw	075h
	retlw	070h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
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
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
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
	file	"mobileinterface.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
	line	57
main@F1610:
       ds      10

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
	line	58
main@F1612:
       ds      15

psect	dataBANK1
	file	"E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
	line	59
main@F1614:
       ds      15

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
	movlw low(__pdataBANK1+30)
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
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@wrong
main@wrong:	; 15 bytes @ 0x0
	ds	15
	global	main@hang
main@hang:	; 15 bytes @ 0xF
	ds	15
	global	main@ring
main@ring:	; 10 bytes @ 0x1E
	ds	10
	global	main@control
main@control:	; 2 bytes @ 0x28
	ds	2
	global	main@number
main@number:	; 10 bytes @ 0x2A
	ds	10
	global	main@i
main@i:	; 2 bytes @ 0x34
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x36
	ds	2
;;Data sizes: Strings 0, constant 0, data 40, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80     56      66
;; BANK1           80      0      30
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                60    60      0    1664
;;                                              3 COMMON     4     4      0
;;                                              0 BANK0     56    56      0
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
;;BANK1               50      0      1E       7       37.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      6A      12        0.0%
;;ABS                  0      0      67       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50     38      42       5       82.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      7       7       1       50.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 45 in file "E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  hang           15   15[BANK0 ] unsigned char [15]
;;  wrong          15    0[BANK0 ] unsigned char [15]
;;  number         10   42[BANK0 ] unsigned char [10]
;;  ring           10   30[BANK0 ] unsigned char [10]
;;  j               2   54[BANK0 ] int 
;;  i               2   52[BANK0 ] int 
;;  control         2   40[BANK0 ] int 
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
;;      Locals:         0      56       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      56       0       0       0
;;Total ram usage:       60 bytes
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
	file	"E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
	line	45
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	46
	
l2538:	
;mobileinterface.c: 46: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	47
	
l2540:	
;mobileinterface.c: 47: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	48
	
l2542:	
;mobileinterface.c: 48: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	49
	
l2544:	
;mobileinterface.c: 49: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	50
	
l2546:	
;mobileinterface.c: 50: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	51
	
l2548:	
;mobileinterface.c: 51: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	52
	
l2550:	
;mobileinterface.c: 52: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	53
	
l2552:	
;mobileinterface.c: 53: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	54
	
l2554:	
;mobileinterface.c: 54: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	55
	
l2556:	
;mobileinterface.c: 55: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	57
	
l2558:	
;mobileinterface.c: 56: char number[10];
;mobileinterface.c: 57: char ring[10]="Ringing";
	movlw	(main@ring)&0ffh
	movwf	fsr0
	movlw	low(main@F1610)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2480:
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
	goto	u2480
	line	58
	
l2560:	
;mobileinterface.c: 58: char wrong[15]="Wrong number";
	movlw	(main@wrong)&0ffh
	movwf	fsr0
	movlw	low(main@F1612)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	15
	movwf	((??_main+0)+0+2)
u2490:
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
	goto	u2490
	line	59
	
l2562:	
;mobileinterface.c: 59: char hang[15]="Hang up";
	movlw	(main@hang)&0ffh
	movwf	fsr0
	movlw	low(main@F1614)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	15
	movwf	((??_main+0)+0+2)
u2500:
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
	goto	u2500
	line	60
	
l2564:	
;mobileinterface.c: 60: int i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	line	61
	
l2566:	
;mobileinterface.c: 61: int j=0;
	clrf	(main@j)
	clrf	(main@j+1)
	line	62
	
l2568:	
;mobileinterface.c: 62: int control=1;
	movlw	low(01h)
	movwf	(main@control)
	movlw	high(01h)
	movwf	((main@control))+1
	line	63
	
l2570:	
;mobileinterface.c: 63: on();
	fcall	_on
	line	64
	
l2572:	
;mobileinterface.c: 64: type();
	fcall	_type
	goto	l2574
	line	65
;mobileinterface.c: 65: while(1)
	
l1052:	
	line	67
	
l2574:	
;mobileinterface.c: 66: {
;mobileinterface.c: 67: if(control==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@control),w
	iorwf	(main@control+1),w
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l2574
u2510:
	line	69
	
l2576:	
;mobileinterface.c: 68: {
;mobileinterface.c: 69: RB0=1;RB1=0;RB2=0;RB3=0;
	bsf	(48/8),(48)&7
	bcf	(49/8),(49)&7
	bcf	(50/8),(50)&7
	bcf	(51/8),(51)&7
	line	70
;mobileinterface.c: 70: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l2588
u2520:
	goto	l1055
	line	72
	
l2578:	
;mobileinterface.c: 71: {
;mobileinterface.c: 72: while(RA0==1);
	goto	l1055
	
l1056:	
	
l1055:	
	btfsc	(40/8),(40)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l1055
u2530:
	goto	l2580
	
l1057:	
	line	73
	
l2580:	
;mobileinterface.c: 73: number[j]='1';
	movlw	(031h)
	movwf	(??_main+0)+0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	74
	
l2582:	
;mobileinterface.c: 74: address(0X80+j);
	movf	(main@j),w
	addlw	080h
	fcall	_address
	line	75
	
l2584:	
;mobileinterface.c: 75: display(number[j]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	76
	
l2586:	
;mobileinterface.c: 76: j++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2588
	line	77
	
l1054:	
	line	78
	
l2588:	
;mobileinterface.c: 77: }
;mobileinterface.c: 78: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l2600
u2540:
	goto	l1059
	line	80
	
l2590:	
;mobileinterface.c: 79: {
;mobileinterface.c: 80: while(RA1==1);
	goto	l1059
	
l1060:	
	
l1059:	
	btfsc	(41/8),(41)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l1059
u2550:
	goto	l2592
	
l1061:	
	line	81
	
l2592:	
;mobileinterface.c: 81: number[j]='2';
	movlw	(032h)
	movwf	(??_main+0)+0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	82
	
l2594:	
;mobileinterface.c: 82: address(0X80+j);
	movf	(main@j),w
	addlw	080h
	fcall	_address
	line	83
	
l2596:	
;mobileinterface.c: 83: display(number[j]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	84
	
l2598:	
;mobileinterface.c: 84: j++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2600
	line	85
	
l1058:	
	line	86
	
l2600:	
;mobileinterface.c: 85: }
;mobileinterface.c: 86: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l2612
u2560:
	goto	l1063
	line	88
	
l2602:	
;mobileinterface.c: 87: {
;mobileinterface.c: 88: while(RA2==1);
	goto	l1063
	
l1064:	
	
l1063:	
	btfsc	(42/8),(42)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l1063
u2570:
	goto	l2604
	
l1065:	
	line	89
	
l2604:	
;mobileinterface.c: 89: number[j]='3';
	movlw	(033h)
	movwf	(??_main+0)+0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	90
	
l2606:	
;mobileinterface.c: 90: address(0X80+j);
	movf	(main@j),w
	addlw	080h
	fcall	_address
	line	91
	
l2608:	
;mobileinterface.c: 91: display(number[j]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	92
	
l2610:	
;mobileinterface.c: 92: j++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2612
	line	93
	
l1062:	
	line	94
	
l2612:	
;mobileinterface.c: 93: }
;mobileinterface.c: 94: RB0=0;RB1=1;RB2=0;RB3=0;
	bcf	(48/8),(48)&7
	
l2614:	
	bsf	(49/8),(49)&7
	
l2616:	
	bcf	(50/8),(50)&7
	
l2618:	
	bcf	(51/8),(51)&7
	line	95
	
l2620:	
;mobileinterface.c: 95: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l2632
u2580:
	goto	l1067
	line	97
	
l2622:	
;mobileinterface.c: 96: {
;mobileinterface.c: 97: while(RA0==1);
	goto	l1067
	
l1068:	
	
l1067:	
	btfsc	(40/8),(40)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l1067
u2590:
	goto	l2624
	
l1069:	
	line	98
	
l2624:	
;mobileinterface.c: 98: number[j]='4';
	movlw	(034h)
	movwf	(??_main+0)+0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	99
	
l2626:	
;mobileinterface.c: 99: address(0X80+j);
	movf	(main@j),w
	addlw	080h
	fcall	_address
	line	100
	
l2628:	
;mobileinterface.c: 100: display(number[j]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	101
	
l2630:	
;mobileinterface.c: 101: j++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2632
	line	102
	
l1066:	
	line	103
	
l2632:	
;mobileinterface.c: 102: }
;mobileinterface.c: 103: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l2644
u2600:
	goto	l1071
	line	105
	
l2634:	
;mobileinterface.c: 104: {
;mobileinterface.c: 105: while(RA1==1);
	goto	l1071
	
l1072:	
	
l1071:	
	btfsc	(41/8),(41)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l1071
u2610:
	goto	l2636
	
l1073:	
	line	106
	
l2636:	
;mobileinterface.c: 106: number[j]='5';
	movlw	(035h)
	movwf	(??_main+0)+0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	107
	
l2638:	
;mobileinterface.c: 107: address(0X80+j);
	movf	(main@j),w
	addlw	080h
	fcall	_address
	line	108
	
l2640:	
;mobileinterface.c: 108: display(number[j]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	109
	
l2642:	
;mobileinterface.c: 109: j++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2644
	line	110
	
l1070:	
	line	111
	
l2644:	
;mobileinterface.c: 110: }
;mobileinterface.c: 111: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l2656
u2620:
	goto	l1075
	line	113
	
l2646:	
;mobileinterface.c: 112: {
;mobileinterface.c: 113: while(RA2==1);
	goto	l1075
	
l1076:	
	
l1075:	
	btfsc	(42/8),(42)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l1075
u2630:
	goto	l2648
	
l1077:	
	line	114
	
l2648:	
;mobileinterface.c: 114: number[j]='6';
	movlw	(036h)
	movwf	(??_main+0)+0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	115
	
l2650:	
;mobileinterface.c: 115: address(0X80+j);
	movf	(main@j),w
	addlw	080h
	fcall	_address
	line	116
	
l2652:	
;mobileinterface.c: 116: display(number[j]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	117
	
l2654:	
;mobileinterface.c: 117: j++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2656
	line	118
	
l1074:	
	line	119
	
l2656:	
;mobileinterface.c: 118: }
;mobileinterface.c: 119: RB0=0;RB1=0;RB2=1;RB3=0;
	bcf	(48/8),(48)&7
	
l2658:	
	bcf	(49/8),(49)&7
	
l2660:	
	bsf	(50/8),(50)&7
	
l2662:	
	bcf	(51/8),(51)&7
	line	120
	
l2664:	
;mobileinterface.c: 120: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l2676
u2640:
	goto	l1079
	line	122
	
l2666:	
;mobileinterface.c: 121: {
;mobileinterface.c: 122: while(RA0==1);
	goto	l1079
	
l1080:	
	
l1079:	
	btfsc	(40/8),(40)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l1079
u2650:
	goto	l2668
	
l1081:	
	line	123
	
l2668:	
;mobileinterface.c: 123: number[j]='7';
	movlw	(037h)
	movwf	(??_main+0)+0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	124
	
l2670:	
;mobileinterface.c: 124: address(0X80+j);
	movf	(main@j),w
	addlw	080h
	fcall	_address
	line	125
	
l2672:	
;mobileinterface.c: 125: display(number[j]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	126
	
l2674:	
;mobileinterface.c: 126: j++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2676
	line	127
	
l1078:	
	line	128
	
l2676:	
;mobileinterface.c: 127: }
;mobileinterface.c: 128: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l2688
u2660:
	goto	l1083
	line	130
	
l2678:	
;mobileinterface.c: 129: {
;mobileinterface.c: 130: while(RA1==1);
	goto	l1083
	
l1084:	
	
l1083:	
	btfsc	(41/8),(41)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l1083
u2670:
	goto	l2680
	
l1085:	
	line	131
	
l2680:	
;mobileinterface.c: 131: number[j]='8';
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	132
	
l2682:	
;mobileinterface.c: 132: address(0X80+j);
	movf	(main@j),w
	addlw	080h
	fcall	_address
	line	133
	
l2684:	
;mobileinterface.c: 133: display(number[j]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	134
	
l2686:	
;mobileinterface.c: 134: j++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2688
	line	135
	
l1082:	
	line	136
	
l2688:	
;mobileinterface.c: 135: }
;mobileinterface.c: 136: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l2700
u2680:
	goto	l1087
	line	138
	
l2690:	
;mobileinterface.c: 137: {
;mobileinterface.c: 138: while(RA2==1);
	goto	l1087
	
l1088:	
	
l1087:	
	btfsc	(42/8),(42)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l1087
u2690:
	goto	l2692
	
l1089:	
	line	139
	
l2692:	
;mobileinterface.c: 139: number[j]='9';
	movlw	(039h)
	movwf	(??_main+0)+0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	140
	
l2694:	
;mobileinterface.c: 140: address(0X80+j);
	movf	(main@j),w
	addlw	080h
	fcall	_address
	line	141
	
l2696:	
;mobileinterface.c: 141: display(number[j]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	142
	
l2698:	
;mobileinterface.c: 142: j++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2700
	line	143
	
l1086:	
	line	144
	
l2700:	
;mobileinterface.c: 143: }
;mobileinterface.c: 144: RB0=0;RB1=0;RB2=0;RB3=1;
	bcf	(48/8),(48)&7
	
l2702:	
	bcf	(49/8),(49)&7
	
l2704:	
	bcf	(50/8),(50)&7
	
l2706:	
	bsf	(51/8),(51)&7
	line	145
	
l2708:	
;mobileinterface.c: 145: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l1090
u2700:
	goto	l1091
	line	147
	
l2710:	
;mobileinterface.c: 146: {
;mobileinterface.c: 147: while(RA0==1);
	goto	l1091
	
l1092:	
	
l1091:	
	btfsc	(40/8),(40)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l1091
u2710:
	goto	l2712
	
l1093:	
	line	148
	
l2712:	
;mobileinterface.c: 148: if(j==10)
	movlw	0Ah
	xorwf	(main@j),w
	iorwf	(main@j+1),w
	skipz
	goto	u2721
	goto	u2720
u2721:
	goto	l2724
u2720:
	line	150
	
l2714:	
;mobileinterface.c: 149: {
;mobileinterface.c: 150: for(i=0;ring[i]!='\0';i++)
	clrf	(main@i)
	clrf	(main@i+1)
	goto	l2722
	line	151
	
l1096:	
	line	152
	
l2716:	
;mobileinterface.c: 151: {
;mobileinterface.c: 152: address(0XC0+i);
	movf	(main@i),w
	addlw	0C0h
	fcall	_address
	line	153
	
l2718:	
;mobileinterface.c: 153: display(ring[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@ring&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	150
	
l2720:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l2722
	
l1095:	
	
l2722:	
	movf	(main@i),w
	addlw	main@ring&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l2716
u2730:
	goto	l1090
	
l1097:	
	line	155
;mobileinterface.c: 154: }
;mobileinterface.c: 155: }
	goto	l1090
	line	156
	
l1094:	
	line	158
	
l2724:	
;mobileinterface.c: 156: else
;mobileinterface.c: 157: {
;mobileinterface.c: 158: for(i=0;wrong[i]!='\0';i++)
	clrf	(main@i)
	clrf	(main@i+1)
	goto	l2732
	line	159
	
l1100:	
	line	160
	
l2726:	
;mobileinterface.c: 159: {
;mobileinterface.c: 160: address(0XC0+i);
	movf	(main@i),w
	addlw	0C0h
	fcall	_address
	line	161
	
l2728:	
;mobileinterface.c: 161: display(wrong[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@wrong&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	158
	
l2730:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l2732
	
l1099:	
	
l2732:	
	movf	(main@i),w
	addlw	main@wrong&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l2726
u2740:
	goto	l1090
	
l1101:	
	goto	l1090
	line	163
	
l1098:	
	line	164
	
l1090:	
	line	165
;mobileinterface.c: 162: }
;mobileinterface.c: 163: }
;mobileinterface.c: 164: }
;mobileinterface.c: 165: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l2744
u2750:
	goto	l1103
	line	167
	
l2734:	
;mobileinterface.c: 166: {
;mobileinterface.c: 167: while(RA1==1);
	goto	l1103
	
l1104:	
	
l1103:	
	btfsc	(41/8),(41)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l1103
u2760:
	goto	l2736
	
l1105:	
	line	168
	
l2736:	
;mobileinterface.c: 168: number[j]='0';
	movlw	(030h)
	movwf	(??_main+0)+0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	169
	
l2738:	
;mobileinterface.c: 169: address(0X80+j);
	movf	(main@j),w
	addlw	080h
	fcall	_address
	line	170
	
l2740:	
;mobileinterface.c: 170: display(number[j]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@number&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	171
	
l2742:	
;mobileinterface.c: 171: j++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2744
	line	172
	
l1102:	
	line	173
	
l2744:	
;mobileinterface.c: 172: }
;mobileinterface.c: 173: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l2574
u2770:
	goto	l1107
	line	175
	
l2746:	
;mobileinterface.c: 174: {
;mobileinterface.c: 175: while(RA2==1);
	goto	l1107
	
l1108:	
	
l1107:	
	btfsc	(42/8),(42)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l1107
u2780:
	goto	l2748
	
l1109:	
	line	176
	
l2748:	
;mobileinterface.c: 176: for(i=0;hang[i]!='\0';i++)
	clrf	(main@i)
	clrf	(main@i+1)
	goto	l2756
	line	177
	
l1111:	
	line	178
	
l2750:	
;mobileinterface.c: 177: {
;mobileinterface.c: 178: address(0XC0+i);
	movf	(main@i),w
	addlw	0C0h
	fcall	_address
	line	179
	
l2752:	
;mobileinterface.c: 179: display(hang[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@hang&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_display
	line	176
	
l2754:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l2756
	
l1110:	
	
l2756:	
	movf	(main@i),w
	addlw	main@hang&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l2750
u2790:
	goto	l2574
	
l1112:	
	goto	l2574
	line	181
	
l1106:	
	goto	l2574
	line	182
	
l1053:	
	goto	l2574
	line	183
	
l1113:	
	line	65
	goto	l2574
	
l1114:	
	line	184
	
l1115:	
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
;;		line 38 in file "E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
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
	file	"E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
	line	38
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@data stored from wreg
	movwf	(display@data)
	line	39
	
l2532:	
;mobileinterface.c: 39: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	40
;mobileinterface.c: 40: RD1=0;
	bcf	(65/8),(65)&7
	line	41
	
l2534:	
;mobileinterface.c: 41: PORTC=data;
	movf	(display@data),w
	movwf	(7)	;volatile
	line	42
	
l2536:	
;mobileinterface.c: 42: pulse();
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
;;		line 31 in file "E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
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
	file	"E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
	line	31
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 5
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
;address@data stored from wreg
	movwf	(address@data)
	line	32
	
l2526:	
;mobileinterface.c: 32: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	33
;mobileinterface.c: 33: RD1=0;
	bcf	(65/8),(65)&7
	line	34
	
l2528:	
;mobileinterface.c: 34: PORTC=data;
	movf	(address@data),w
	movwf	(7)	;volatile
	line	35
	
l2530:	
;mobileinterface.c: 35: pulse();
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
;;		line 24 in file "E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
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
	file	"E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
	line	24
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 5
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	25
	
l2520:	
;mobileinterface.c: 25: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	26
;mobileinterface.c: 26: RD1=0;
	bcf	(65/8),(65)&7
	line	27
	
l2522:	
;mobileinterface.c: 27: PORTC=0X38;
	movlw	(038h)
	movwf	(7)	;volatile
	line	28
	
l2524:	
;mobileinterface.c: 28: pulse();
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
;;		line 17 in file "E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
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
	file	"E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
	line	17
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 5
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l2514:	
;mobileinterface.c: 18: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	19
;mobileinterface.c: 19: RD1=0;
	bcf	(65/8),(65)&7
	line	20
	
l2516:	
;mobileinterface.c: 20: PORTC=0X0E;
	movlw	(0Eh)
	movwf	(7)	;volatile
	line	21
	
l2518:	
;mobileinterface.c: 21: pulse();
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
;;		line 10 in file "E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
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
	file	"E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
	line	10
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	11
	
l2508:	
;mobileinterface.c: 11: RD2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	line	12
	
l2510:	
;mobileinterface.c: 12: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	13
	
l2512:	
;mobileinterface.c: 13: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	14
;mobileinterface.c: 14: delay(100);
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
;;		line 6 in file "E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
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
	file	"E:\KTU\Softwares\MP lab\Mobileinterface\mobileinterface.c"
	line	6
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	7
	
l2504:	
;mobileinterface.c: 7: while(del--);
	goto	l2506
	
l1026:	
	goto	l2506
	
l1025:	
	
l2506:	
	movlw	low(-1)
	addwf	(delay@del),f
	skipnc
	incf	(delay@del+1),f
	movlw	high(-1)
	addwf	(delay@del+1),f
	movlw	high(-1)
	xorwf	((delay@del+1)),w
	skipz
	goto	u2475
	movlw	low(-1)
	xorwf	((delay@del)),w
u2475:

	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l2506
u2470:
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
