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
	FNROOT	_main
	global	main@F1601
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"E:\KTU\Softwares\mplab\Keypadpassword\keypadpassword.c"
	line	15

;initializer for main@F1601
	retlw	0BFh
	retlw	0

	retlw	06h
	retlw	0

	retlw	05Bh
	retlw	0

	retlw	04Fh
	retlw	0

	retlw	066h
	retlw	0

	retlw	06Dh
	retlw	0

	retlw	07Ch
	retlw	0

	retlw	07h
	retlw	0

	retlw	0FFh
	retlw	0

	retlw	0E7h
	retlw	0

	global	main@F1603
	global	main@F1605
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
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
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
	global	_RD3
_RD3	set	67
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
	file	"keypadpassword.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
main@F1603:
       ds      8

main@F1605:
       ds      8

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"E:\KTU\Softwares\mplab\Keypadpassword\keypadpassword.c"
main@F1601:
       ds      20

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

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+010h)
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
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	movlw low(__pdataBANK1+20)
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
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@count1
main@count1:	; 2 bytes @ 0x0
	ds	2
	global	main@wrong
main@wrong:	; 2 bytes @ 0x2
	ds	2
	global	main@segment
main@segment:	; 20 bytes @ 0x4
	ds	20
	global	main@check
main@check:	; 2 bytes @ 0x18
	ds	2
	global	main@correct
main@correct:	; 2 bytes @ 0x1A
	ds	2
	global	main@control
main@control:	; 2 bytes @ 0x1C
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x1E
	ds	2
	global	main@arr
main@arr:	; 8 bytes @ 0x20
	ds	8
	global	main@mat
main@mat:	; 8 bytes @ 0x28
	ds	8
	global	main@temp
main@temp:	; 2 bytes @ 0x30
	ds	2
	global	main@dump
main@dump:	; 2 bytes @ 0x32
	ds	2
	global	main@count
main@count:	; 2 bytes @ 0x34
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 16, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80     54      70
;; BANK1           80      0      20
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
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
;; (0) _main                                                60    60      0    2053
;;                                              0 COMMON     6     6      0
;;                                              0 BANK0     54    54      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
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
;;BANK1               50      0      14       7       25.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      60      12        0.0%
;;ABS                  0      0      60       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50     36      46       5       87.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      6       6       1       42.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 3 in file "E:\KTU\Softwares\mplab\Keypadpassword\keypadpassword.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  segment        20    4[BANK0 ] int [10]
;;  mat             8   40[BANK0 ] int [4]
;;  arr             8   32[BANK0 ] int [4]
;;  count           2   52[BANK0 ] int 
;;  dump            2   50[BANK0 ] int 
;;  temp            2   48[BANK0 ] int 
;;  i               2   30[BANK0 ] int 
;;  control         2   28[BANK0 ] int 
;;  correct         2   26[BANK0 ] int 
;;  check           2   24[BANK0 ] int 
;;  wrong           2    2[BANK0 ] int 
;;  count1          2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      54       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         6      54       0       0       0
;;Total ram usage:       60 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Keypadpassword\keypadpassword.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	4
	
l2629:	
;keypadpassword.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
	
l2631:	
;keypadpassword.c: 5: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	6
	
l2633:	
;keypadpassword.c: 6: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	7
	
l2635:	
;keypadpassword.c: 7: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	8
	
l2637:	
;keypadpassword.c: 8: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	9
	
l2639:	
;keypadpassword.c: 9: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	10
	
l2641:	
;keypadpassword.c: 10: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	11
	
l2643:	
;keypadpassword.c: 11: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	12
	
l2645:	
;keypadpassword.c: 12: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	13
	
l2647:	
;keypadpassword.c: 13: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	14
	
l2649:	
;keypadpassword.c: 14: int control=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@control)
	movlw	high(01h)
	movwf	((main@control))+1
	line	15
	
l2651:	
;keypadpassword.c: 15: int segment[]={0XBF,0X06,0X5B,0X4F,0X66,0X6D,0X7C,0X07,0XFF,0XE7};
	movlw	(main@segment)&0ffh
	movwf	fsr0
	movlw	low(main@F1601)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2830:
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
	goto	u2830
	line	16
	
l2653:	
;keypadpassword.c: 16: int arr[4]={0,0,0,0};
	movlw	(main@arr)&0ffh
	movwf	fsr0
	movlw	low(main@F1603)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	8
	movwf	((??_main+0)+0+2)
u2840:
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
	goto	u2840
	line	17
	
l2655:	
;keypadpassword.c: 17: int mat[4]={0,0,0,0};
	movlw	(main@mat)&0ffh
	movwf	fsr0
	movlw	low(main@F1605)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	8
	movwf	((??_main+0)+0+2)
u2850:
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
	goto	u2850
	line	18
	
l2657:	
;keypadpassword.c: 18: int temp=0;
	clrf	(main@temp)
	clrf	(main@temp+1)
	line	19
	
l2659:	
;keypadpassword.c: 19: int dump=0;
	clrf	(main@dump)
	clrf	(main@dump+1)
	line	20
	
l2661:	
;keypadpassword.c: 20: int count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	21
	
l2663:	
;keypadpassword.c: 21: int count1=0;
	clrf	(main@count1)
	clrf	(main@count1+1)
	line	23
	
l2665:	
;keypadpassword.c: 22: int i;
;keypadpassword.c: 23: int check=0,correct=0,wrong=0;
	clrf	(main@check)
	clrf	(main@check+1)
	
l2667:	
	clrf	(main@correct)
	clrf	(main@correct+1)
	
l2669:	
	clrf	(main@wrong)
	clrf	(main@wrong+1)
	goto	l2671
	line	24
;keypadpassword.c: 24: while(1)
	
l1031:	
	line	26
	
l2671:	
;keypadpassword.c: 25: {
;keypadpassword.c: 26: if(control==1)
	movlw	01h
	xorwf	(main@control),w
	iorwf	(main@control+1),w
	skipz
	goto	u2861
	goto	u2860
u2861:
	goto	l2747
u2860:
	line	28
	
l2673:	
;keypadpassword.c: 27: {
;keypadpassword.c: 28: RB0=1;
	bsf	(48/8),(48)&7
	line	29
;keypadpassword.c: 29: RB1=0;
	bcf	(49/8),(49)&7
	line	30
;keypadpassword.c: 30: RB2=0;
	bcf	(50/8),(50)&7
	line	31
;keypadpassword.c: 31: RB3=0;
	bcf	(51/8),(51)&7
	line	32
;keypadpassword.c: 32: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l1033
u2870:
	line	34
	
l2675:	
;keypadpassword.c: 33: {
;keypadpassword.c: 34: arr[temp]=1;
	movf	(main@temp),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movlw	low(01h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(01h)
	movwf	indf
	line	35
	
l2677:	
;keypadpassword.c: 35: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	36
;keypadpassword.c: 36: while(RA0==1);
	goto	l1034
	
l1035:	
	
l1034:	
	btfsc	(40/8),(40)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l1034
u2880:
	goto	l1033
	
l1036:	
	line	37
	
l1033:	
	line	38
;keypadpassword.c: 37: }
;keypadpassword.c: 38: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l1037
u2890:
	line	40
	
l2679:	
;keypadpassword.c: 39: {
;keypadpassword.c: 40: arr[temp]=2;
	movf	(main@temp),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movlw	low(02h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(02h)
	movwf	indf
	line	41
	
l2681:	
;keypadpassword.c: 41: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	42
;keypadpassword.c: 42: while(RA0==1);
	goto	l1038
	
l1039:	
	
l1038:	
	btfsc	(40/8),(40)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l1038
u2900:
	goto	l1037
	
l1040:	
	line	43
	
l1037:	
	line	44
;keypadpassword.c: 43: }
;keypadpassword.c: 44: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l1041
u2910:
	line	46
	
l2683:	
;keypadpassword.c: 45: {
;keypadpassword.c: 46: arr[temp]=3;
	movf	(main@temp),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movlw	low(03h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(03h)
	movwf	indf
	line	47
	
l2685:	
;keypadpassword.c: 47: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	48
;keypadpassword.c: 48: while(RA0==1);
	goto	l1042
	
l1043:	
	
l1042:	
	btfsc	(40/8),(40)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l1042
u2920:
	goto	l1041
	
l1044:	
	line	49
	
l1041:	
	line	50
;keypadpassword.c: 49: }
;keypadpassword.c: 50: RB0=0;
	bcf	(48/8),(48)&7
	line	51
;keypadpassword.c: 51: RB1=1;
	bsf	(49/8),(49)&7
	line	52
;keypadpassword.c: 52: RB2=0;
	bcf	(50/8),(50)&7
	line	53
;keypadpassword.c: 53: RB3=0;
	bcf	(51/8),(51)&7
	line	54
;keypadpassword.c: 54: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2931
	goto	u2930
u2931:
	goto	l1045
u2930:
	line	56
	
l2687:	
;keypadpassword.c: 55: {
;keypadpassword.c: 56: arr[temp]=4;
	movf	(main@temp),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movlw	low(04h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(04h)
	movwf	indf
	line	57
	
l2689:	
;keypadpassword.c: 57: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	58
;keypadpassword.c: 58: while(RA0==1);
	goto	l1046
	
l1047:	
	
l1046:	
	btfsc	(40/8),(40)&7
	goto	u2941
	goto	u2940
u2941:
	goto	l1046
u2940:
	goto	l1045
	
l1048:	
	line	59
	
l1045:	
	line	60
;keypadpassword.c: 59: }
;keypadpassword.c: 60: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l1049
u2950:
	line	62
	
l2691:	
;keypadpassword.c: 61: {
;keypadpassword.c: 62: arr[temp]=5;
	movf	(main@temp),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movlw	low(05h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(05h)
	movwf	indf
	line	63
	
l2693:	
;keypadpassword.c: 63: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	64
;keypadpassword.c: 64: while(RA0==1);
	goto	l1050
	
l1051:	
	
l1050:	
	btfsc	(40/8),(40)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l1050
u2960:
	goto	l1049
	
l1052:	
	line	65
	
l1049:	
	line	66
;keypadpassword.c: 65: }
;keypadpassword.c: 66: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l1053
u2970:
	line	68
	
l2695:	
;keypadpassword.c: 67: {
;keypadpassword.c: 68: arr[temp]=6;
	movf	(main@temp),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movlw	low(06h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(06h)
	movwf	indf
	line	69
	
l2697:	
;keypadpassword.c: 69: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	70
;keypadpassword.c: 70: while(RA0==1);
	goto	l1054
	
l1055:	
	
l1054:	
	btfsc	(40/8),(40)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l1054
u2980:
	goto	l1053
	
l1056:	
	line	71
	
l1053:	
	line	72
;keypadpassword.c: 71: }
;keypadpassword.c: 72: RB0=0;
	bcf	(48/8),(48)&7
	line	73
;keypadpassword.c: 73: RB1=0;
	bcf	(49/8),(49)&7
	line	74
;keypadpassword.c: 74: RB2=1;
	bsf	(50/8),(50)&7
	line	75
;keypadpassword.c: 75: RB3=0;
	bcf	(51/8),(51)&7
	line	76
;keypadpassword.c: 76: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l1057
u2990:
	line	78
	
l2699:	
;keypadpassword.c: 77: {
;keypadpassword.c: 78: arr[temp]=7;
	movf	(main@temp),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movlw	low(07h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(07h)
	movwf	indf
	line	79
	
l2701:	
;keypadpassword.c: 79: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	80
;keypadpassword.c: 80: while(RA0==1);
	goto	l1058
	
l1059:	
	
l1058:	
	btfsc	(40/8),(40)&7
	goto	u3001
	goto	u3000
u3001:
	goto	l1058
u3000:
	goto	l1057
	
l1060:	
	line	81
	
l1057:	
	line	83
;keypadpassword.c: 81: }
;keypadpassword.c: 83: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l1061
u3010:
	line	85
	
l2703:	
;keypadpassword.c: 84: {
;keypadpassword.c: 85: arr[temp]=8;
	movf	(main@temp),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movlw	low(08h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(08h)
	movwf	indf
	line	86
	
l2705:	
;keypadpassword.c: 86: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	87
;keypadpassword.c: 87: while(RA0==1);
	goto	l1062
	
l1063:	
	
l1062:	
	btfsc	(40/8),(40)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l1062
u3020:
	goto	l1061
	
l1064:	
	line	88
	
l1061:	
	line	89
;keypadpassword.c: 88: }
;keypadpassword.c: 89: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l1065
u3030:
	line	91
	
l2707:	
;keypadpassword.c: 90: {
;keypadpassword.c: 91: arr[temp]=9;
	movf	(main@temp),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movlw	low(09h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(09h)
	movwf	indf
	line	92
	
l2709:	
;keypadpassword.c: 92: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	93
;keypadpassword.c: 93: while(RA0==1);
	goto	l1066
	
l1067:	
	
l1066:	
	btfsc	(40/8),(40)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l1066
u3040:
	goto	l1065
	
l1068:	
	line	94
	
l1065:	
	line	95
;keypadpassword.c: 94: }
;keypadpassword.c: 95: RB0=0;
	bcf	(48/8),(48)&7
	line	96
;keypadpassword.c: 96: RB1=0;
	bcf	(49/8),(49)&7
	line	97
;keypadpassword.c: 97: RB2=0;
	bcf	(50/8),(50)&7
	line	98
;keypadpassword.c: 98: RB3=1;
	bsf	(51/8),(51)&7
	line	99
;keypadpassword.c: 99: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l2719
u3050:
	goto	l1070
	line	101
	
l2711:	
;keypadpassword.c: 100: {
;keypadpassword.c: 101: while(RA0==1);
	goto	l1070
	
l1071:	
	
l1070:	
	btfsc	(40/8),(40)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l1070
u3060:
	goto	l2713
	
l1072:	
	line	102
	
l2713:	
;keypadpassword.c: 102: control=2;
	movlw	low(02h)
	movwf	(main@control)
	movlw	high(02h)
	movwf	((main@control))+1
	goto	l2719
	line	103
	
l1069:	
	line	104
;keypadpassword.c: 103: }
;keypadpassword.c: 104: while(count<3000)
	goto	l2719
	
l1074:	
	line	106
;keypadpassword.c: 105: {
;keypadpassword.c: 106: RD0=0;RD1=1;RD2=1;RD3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	bsf	(66/8),(66)&7
	bsf	(67/8),(67)&7
	line	107
	
l2715:	
;keypadpassword.c: 107: PORTC=segment[arr[0]];
	movf	(main@arr),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@segment&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	108
	
l2717:	
;keypadpassword.c: 108: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2719
	line	109
	
l1073:	
	line	104
	
l2719:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3075
	movlw	low(0BB8h)
	subwf	(main@count),w
u3075:

	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l1074
u3070:
	goto	l2721
	
l1075:	
	line	110
	
l2721:	
;keypadpassword.c: 109: }
;keypadpassword.c: 110: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	111
;keypadpassword.c: 111: while(count<3000)
	goto	l2727
	
l1077:	
	line	113
;keypadpassword.c: 112: {
;keypadpassword.c: 113: RD0=1;RD1=0;RD2=1;RD3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bcf	(65/8),(65)&7
	bsf	(66/8),(66)&7
	bsf	(67/8),(67)&7
	line	114
	
l2723:	
;keypadpassword.c: 114: PORTC=segment[arr[1]];
	movf	0+(main@arr)+02h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@segment&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	115
	
l2725:	
;keypadpassword.c: 115: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2727
	line	116
	
l1076:	
	line	111
	
l2727:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3085
	movlw	low(0BB8h)
	subwf	(main@count),w
u3085:

	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l1077
u3080:
	goto	l2729
	
l1078:	
	line	117
	
l2729:	
;keypadpassword.c: 116: }
;keypadpassword.c: 117: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	118
;keypadpassword.c: 118: while(count<3000)
	goto	l2735
	
l1080:	
	line	120
;keypadpassword.c: 119: {
;keypadpassword.c: 120: RD0=1;RD1=1;RD2=0;RD3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	bcf	(66/8),(66)&7
	bsf	(67/8),(67)&7
	line	121
	
l2731:	
;keypadpassword.c: 121: PORTC=segment[arr[2]];
	movf	0+(main@arr)+04h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@segment&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	122
	
l2733:	
;keypadpassword.c: 122: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2735
	line	123
	
l1079:	
	line	118
	
l2735:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3095
	movlw	low(0BB8h)
	subwf	(main@count),w
u3095:

	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l1080
u3090:
	goto	l2737
	
l1081:	
	line	124
	
l2737:	
;keypadpassword.c: 123: }
;keypadpassword.c: 124: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	125
;keypadpassword.c: 125: while(count<3000)
	goto	l2743
	
l1083:	
	line	127
;keypadpassword.c: 126: {
;keypadpassword.c: 127: RD0=1;RD1=1;RD2=1;RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	bsf	(66/8),(66)&7
	bcf	(67/8),(67)&7
	line	128
	
l2739:	
;keypadpassword.c: 128: PORTC=segment[arr[3]];
	movf	0+(main@arr)+06h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@segment&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	129
	
l2741:	
;keypadpassword.c: 129: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2743
	line	130
	
l1082:	
	line	125
	
l2743:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3105
	movlw	low(0BB8h)
	subwf	(main@count),w
u3105:

	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l1083
u3100:
	goto	l2745
	
l1084:	
	line	131
	
l2745:	
;keypadpassword.c: 130: }
;keypadpassword.c: 131: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l2747
	line	132
	
l1032:	
	line	133
	
l2747:	
;keypadpassword.c: 132: }
;keypadpassword.c: 133: if(control==2)
	movlw	02h
	xorwf	(main@control),w
	iorwf	(main@control+1),w
	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l2823
u3110:
	line	135
	
l2749:	
;keypadpassword.c: 134: {
;keypadpassword.c: 135: RB0=1;
	bsf	(48/8),(48)&7
	line	136
;keypadpassword.c: 136: RB1=0;
	bcf	(49/8),(49)&7
	line	137
;keypadpassword.c: 137: RB2=0;
	bcf	(50/8),(50)&7
	line	138
;keypadpassword.c: 138: RB3=0;
	bcf	(51/8),(51)&7
	line	139
;keypadpassword.c: 139: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l1086
u3120:
	line	141
	
l2751:	
;keypadpassword.c: 140: {
;keypadpassword.c: 141: mat[dump]=1;
	movf	(main@dump),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@mat&0ffh
	movwf	fsr0
	movlw	low(01h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(01h)
	movwf	indf
	line	142
	
l2753:	
;keypadpassword.c: 142: dump++;
	movlw	low(01h)
	addwf	(main@dump),f
	skipnc
	incf	(main@dump+1),f
	movlw	high(01h)
	addwf	(main@dump+1),f
	line	143
;keypadpassword.c: 143: while(RA0==1);
	goto	l1087
	
l1088:	
	
l1087:	
	btfsc	(40/8),(40)&7
	goto	u3131
	goto	u3130
u3131:
	goto	l1087
u3130:
	goto	l1086
	
l1089:	
	line	144
	
l1086:	
	line	145
;keypadpassword.c: 144: }
;keypadpassword.c: 145: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l1090
u3140:
	line	147
	
l2755:	
;keypadpassword.c: 146: {
;keypadpassword.c: 147: mat[dump]=2;
	movf	(main@dump),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@mat&0ffh
	movwf	fsr0
	movlw	low(02h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(02h)
	movwf	indf
	line	148
	
l2757:	
;keypadpassword.c: 148: dump++;
	movlw	low(01h)
	addwf	(main@dump),f
	skipnc
	incf	(main@dump+1),f
	movlw	high(01h)
	addwf	(main@dump+1),f
	line	149
;keypadpassword.c: 149: while(RA0==1);
	goto	l1091
	
l1092:	
	
l1091:	
	btfsc	(40/8),(40)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l1091
u3150:
	goto	l1090
	
l1093:	
	line	150
	
l1090:	
	line	151
;keypadpassword.c: 150: }
;keypadpassword.c: 151: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l1094
u3160:
	line	153
	
l2759:	
;keypadpassword.c: 152: {
;keypadpassword.c: 153: mat[dump]=3;
	movf	(main@dump),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@mat&0ffh
	movwf	fsr0
	movlw	low(03h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(03h)
	movwf	indf
	line	154
	
l2761:	
;keypadpassword.c: 154: dump++;
	movlw	low(01h)
	addwf	(main@dump),f
	skipnc
	incf	(main@dump+1),f
	movlw	high(01h)
	addwf	(main@dump+1),f
	line	155
;keypadpassword.c: 155: while(RA0==1);
	goto	l1095
	
l1096:	
	
l1095:	
	btfsc	(40/8),(40)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l1095
u3170:
	goto	l1094
	
l1097:	
	line	156
	
l1094:	
	line	157
;keypadpassword.c: 156: }
;keypadpassword.c: 157: RB0=0;
	bcf	(48/8),(48)&7
	line	158
;keypadpassword.c: 158: RB1=1;
	bsf	(49/8),(49)&7
	line	159
;keypadpassword.c: 159: RB2=0;
	bcf	(50/8),(50)&7
	line	160
;keypadpassword.c: 160: RB3=0;
	bcf	(51/8),(51)&7
	line	161
;keypadpassword.c: 161: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l1098
u3180:
	line	163
	
l2763:	
;keypadpassword.c: 162: {
;keypadpassword.c: 163: mat[dump]=4;
	movf	(main@dump),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@mat&0ffh
	movwf	fsr0
	movlw	low(04h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(04h)
	movwf	indf
	line	164
	
l2765:	
;keypadpassword.c: 164: dump++;
	movlw	low(01h)
	addwf	(main@dump),f
	skipnc
	incf	(main@dump+1),f
	movlw	high(01h)
	addwf	(main@dump+1),f
	line	165
;keypadpassword.c: 165: while(RA0==1);
	goto	l1099
	
l1100:	
	
l1099:	
	btfsc	(40/8),(40)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l1099
u3190:
	goto	l1098
	
l1101:	
	line	166
	
l1098:	
	line	167
;keypadpassword.c: 166: }
;keypadpassword.c: 167: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u3201
	goto	u3200
u3201:
	goto	l1102
u3200:
	line	169
	
l2767:	
;keypadpassword.c: 168: {
;keypadpassword.c: 169: mat[dump]=5;
	movf	(main@dump),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@mat&0ffh
	movwf	fsr0
	movlw	low(05h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(05h)
	movwf	indf
	line	170
	
l2769:	
;keypadpassword.c: 170: dump++;
	movlw	low(01h)
	addwf	(main@dump),f
	skipnc
	incf	(main@dump+1),f
	movlw	high(01h)
	addwf	(main@dump+1),f
	line	171
;keypadpassword.c: 171: while(RA0==1);
	goto	l1103
	
l1104:	
	
l1103:	
	btfsc	(40/8),(40)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l1103
u3210:
	goto	l1102
	
l1105:	
	line	172
	
l1102:	
	line	173
;keypadpassword.c: 172: }
;keypadpassword.c: 173: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l1106
u3220:
	line	175
	
l2771:	
;keypadpassword.c: 174: {
;keypadpassword.c: 175: mat[dump]=6;
	movf	(main@dump),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@mat&0ffh
	movwf	fsr0
	movlw	low(06h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(06h)
	movwf	indf
	line	176
	
l2773:	
;keypadpassword.c: 176: dump++;
	movlw	low(01h)
	addwf	(main@dump),f
	skipnc
	incf	(main@dump+1),f
	movlw	high(01h)
	addwf	(main@dump+1),f
	line	177
;keypadpassword.c: 177: while(RA0==1);
	goto	l1107
	
l1108:	
	
l1107:	
	btfsc	(40/8),(40)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l1107
u3230:
	goto	l1106
	
l1109:	
	line	178
	
l1106:	
	line	179
;keypadpassword.c: 178: }
;keypadpassword.c: 179: RB0=0;
	bcf	(48/8),(48)&7
	line	180
;keypadpassword.c: 180: RB1=0;
	bcf	(49/8),(49)&7
	line	181
;keypadpassword.c: 181: RB2=1;
	bsf	(50/8),(50)&7
	line	182
;keypadpassword.c: 182: RB3=0;
	bcf	(51/8),(51)&7
	line	183
;keypadpassword.c: 183: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l1110
u3240:
	line	185
	
l2775:	
;keypadpassword.c: 184: {
;keypadpassword.c: 185: mat[dump]=7;
	movf	(main@dump),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@mat&0ffh
	movwf	fsr0
	movlw	low(07h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(07h)
	movwf	indf
	line	186
	
l2777:	
;keypadpassword.c: 186: dump++;
	movlw	low(01h)
	addwf	(main@dump),f
	skipnc
	incf	(main@dump+1),f
	movlw	high(01h)
	addwf	(main@dump+1),f
	line	187
;keypadpassword.c: 187: while(RA0==1);
	goto	l1111
	
l1112:	
	
l1111:	
	btfsc	(40/8),(40)&7
	goto	u3251
	goto	u3250
u3251:
	goto	l1111
u3250:
	goto	l1110
	
l1113:	
	line	188
	
l1110:	
	line	189
;keypadpassword.c: 188: }
;keypadpassword.c: 189: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l1114
u3260:
	line	191
	
l2779:	
;keypadpassword.c: 190: {
;keypadpassword.c: 191: mat[dump]=8;
	movf	(main@dump),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@mat&0ffh
	movwf	fsr0
	movlw	low(08h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(08h)
	movwf	indf
	line	192
	
l2781:	
;keypadpassword.c: 192: dump++;
	movlw	low(01h)
	addwf	(main@dump),f
	skipnc
	incf	(main@dump+1),f
	movlw	high(01h)
	addwf	(main@dump+1),f
	line	193
;keypadpassword.c: 193: while(RA0==1);
	goto	l1115
	
l1116:	
	
l1115:	
	btfsc	(40/8),(40)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l1115
u3270:
	goto	l1114
	
l1117:	
	line	194
	
l1114:	
	line	195
;keypadpassword.c: 194: }
;keypadpassword.c: 195: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u3281
	goto	u3280
u3281:
	goto	l1118
u3280:
	line	197
	
l2783:	
;keypadpassword.c: 196: {
;keypadpassword.c: 197: mat[dump]=9;
	movf	(main@dump),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@mat&0ffh
	movwf	fsr0
	movlw	low(09h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(09h)
	movwf	indf
	line	198
	
l2785:	
;keypadpassword.c: 198: dump++;
	movlw	low(01h)
	addwf	(main@dump),f
	skipnc
	incf	(main@dump+1),f
	movlw	high(01h)
	addwf	(main@dump+1),f
	line	199
;keypadpassword.c: 199: while(RA0==1);
	goto	l1119
	
l1120:	
	
l1119:	
	btfsc	(40/8),(40)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l1119
u3290:
	goto	l1118
	
l1121:	
	line	200
	
l1118:	
	line	201
;keypadpassword.c: 200: }
;keypadpassword.c: 201: RB0=0;
	bcf	(48/8),(48)&7
	line	202
;keypadpassword.c: 202: RB1=0;
	bcf	(49/8),(49)&7
	line	203
;keypadpassword.c: 203: RB2=0;
	bcf	(50/8),(50)&7
	line	204
;keypadpassword.c: 204: RB3=1;
	bsf	(51/8),(51)&7
	line	205
;keypadpassword.c: 205: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l2795
u3300:
	goto	l1123
	line	207
	
l2787:	
;keypadpassword.c: 206: {
;keypadpassword.c: 207: while(RA0==1);
	goto	l1123
	
l1124:	
	
l1123:	
	btfsc	(40/8),(40)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l1123
u3310:
	goto	l2789
	
l1125:	
	line	208
	
l2789:	
;keypadpassword.c: 208: control=3;
	movlw	low(03h)
	movwf	(main@control)
	movlw	high(03h)
	movwf	((main@control))+1
	goto	l2795
	line	209
	
l1122:	
	line	210
;keypadpassword.c: 209: }
;keypadpassword.c: 210: while(count<3000)
	goto	l2795
	
l1127:	
	line	212
;keypadpassword.c: 211: {
;keypadpassword.c: 212: RD0=0;RD1=1;RD2=1;RD3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	bsf	(66/8),(66)&7
	bsf	(67/8),(67)&7
	line	213
	
l2791:	
;keypadpassword.c: 213: PORTC=segment[mat[0]];
	movf	(main@mat),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@segment&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	214
	
l2793:	
;keypadpassword.c: 214: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2795
	line	215
	
l1126:	
	line	210
	
l2795:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3325
	movlw	low(0BB8h)
	subwf	(main@count),w
u3325:

	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l1127
u3320:
	goto	l2797
	
l1128:	
	line	216
	
l2797:	
;keypadpassword.c: 215: }
;keypadpassword.c: 216: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	217
;keypadpassword.c: 217: while(count<3000)
	goto	l2803
	
l1130:	
	line	219
;keypadpassword.c: 218: {
;keypadpassword.c: 219: RD0=1;RD1=0;RD2=1;RD3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bcf	(65/8),(65)&7
	bsf	(66/8),(66)&7
	bsf	(67/8),(67)&7
	line	220
	
l2799:	
;keypadpassword.c: 220: PORTC=segment[mat[1]];
	movf	0+(main@mat)+02h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@segment&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	221
	
l2801:	
;keypadpassword.c: 221: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2803
	line	222
	
l1129:	
	line	217
	
l2803:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3335
	movlw	low(0BB8h)
	subwf	(main@count),w
u3335:

	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l1130
u3330:
	goto	l2805
	
l1131:	
	line	223
	
l2805:	
;keypadpassword.c: 222: }
;keypadpassword.c: 223: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	224
;keypadpassword.c: 224: while(count<3000)
	goto	l2811
	
l1133:	
	line	226
;keypadpassword.c: 225: {
;keypadpassword.c: 226: RD0=1;RD1=1;RD2=0;RD3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	bcf	(66/8),(66)&7
	bsf	(67/8),(67)&7
	line	227
	
l2807:	
;keypadpassword.c: 227: PORTC=segment[mat[2]];
	movf	0+(main@mat)+04h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@segment&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	228
	
l2809:	
;keypadpassword.c: 228: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2811
	line	229
	
l1132:	
	line	224
	
l2811:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3345
	movlw	low(0BB8h)
	subwf	(main@count),w
u3345:

	skipc
	goto	u3341
	goto	u3340
u3341:
	goto	l1133
u3340:
	goto	l2813
	
l1134:	
	line	230
	
l2813:	
;keypadpassword.c: 229: }
;keypadpassword.c: 230: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	231
;keypadpassword.c: 231: while(count<3000)
	goto	l2819
	
l1136:	
	line	233
;keypadpassword.c: 232: {
;keypadpassword.c: 233: RD0=1;RD1=1;RD2=1;RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	bsf	(66/8),(66)&7
	bcf	(67/8),(67)&7
	line	234
	
l2815:	
;keypadpassword.c: 234: PORTC=segment[mat[3]];
	movf	0+(main@mat)+06h,w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@segment&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	235
	
l2817:	
;keypadpassword.c: 235: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2819
	line	236
	
l1135:	
	line	231
	
l2819:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3355
	movlw	low(0BB8h)
	subwf	(main@count),w
u3355:

	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l1136
u3350:
	goto	l2821
	
l1137:	
	line	237
	
l2821:	
;keypadpassword.c: 236: }
;keypadpassword.c: 237: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l2823
	line	238
	
l1085:	
	line	239
	
l2823:	
;keypadpassword.c: 238: }
;keypadpassword.c: 239: if(control==3)
	movlw	03h
	xorwf	(main@control),w
	iorwf	(main@control+1),w
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l2671
u3360:
	line	241
	
l2825:	
;keypadpassword.c: 240: {
;keypadpassword.c: 241: for(i=0;i<4;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l2827:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3375
	movlw	low(04h)
	subwf	(main@i),w
u3375:

	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l2831
u3370:
	goto	l2841
	
l2829:	
	goto	l2841
	line	242
	
l1139:	
	line	243
	
l2831:	
;keypadpassword.c: 242: {
;keypadpassword.c: 243: check++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@check),f
	skipnc
	incf	(main@check+1),f
	movlw	high(01h)
	addwf	(main@check+1),f
	line	244
	
l2833:	
;keypadpassword.c: 244: if(arr[i]==mat[i])
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@mat&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movf	(main@i),w
	movwf	(??_main+3)+0
	addwf	(??_main+3)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+4)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+4)+0+1
	movf	1+(??_main+1)+0,w
	xorwf	1+(??_main+4)+0,w
	skipz
	goto	u3385
	movf	0+(??_main+1)+0,w
	xorwf	0+(??_main+4)+0,w
u3385:

	skipz
	goto	u3381
	goto	u3380
u3381:
	goto	l2837
u3380:
	line	246
	
l2835:	
;keypadpassword.c: 245: {
;keypadpassword.c: 246: correct++;
	movlw	low(01h)
	addwf	(main@correct),f
	skipnc
	incf	(main@correct+1),f
	movlw	high(01h)
	addwf	(main@correct+1),f
	line	247
;keypadpassword.c: 247: }
	goto	l1142
	line	248
	
l1141:	
	line	250
	
l2837:	
;keypadpassword.c: 248: else
;keypadpassword.c: 249: {
;keypadpassword.c: 250: wrong++;
	movlw	low(01h)
	addwf	(main@wrong),f
	skipnc
	incf	(main@wrong+1),f
	movlw	high(01h)
	addwf	(main@wrong+1),f
	line	251
	
l1142:	
	line	241
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2839:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3395
	movlw	low(04h)
	subwf	(main@i),w
u3395:

	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l2831
u3390:
	goto	l2841
	
l1140:	
	line	253
	
l2841:	
;keypadpassword.c: 251: }
;keypadpassword.c: 252: }
;keypadpassword.c: 253: if(check==correct)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@correct+1),w
	xorwf	(main@check+1),w
	skipz
	goto	u3405
	movf	(main@correct),w
	xorwf	(main@check),w
u3405:

	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l2881
u3400:
	goto	l2849
	line	255
	
l2843:	
;keypadpassword.c: 254: {
;keypadpassword.c: 255: while(count<3000)
	goto	l2849
	
l1145:	
	line	257
;keypadpassword.c: 256: {
;keypadpassword.c: 257: RD0=0;RD1=1;RD2=1;RD3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	bsf	(66/8),(66)&7
	bsf	(67/8),(67)&7
	line	258
	
l2845:	
;keypadpassword.c: 258: PORTC=0X5E;
	movlw	(05Eh)
	movwf	(7)	;volatile
	line	259
	
l2847:	
;keypadpassword.c: 259: RA3=1;
	bsf	(43/8),(43)&7
	line	260
;keypadpassword.c: 260: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2849
	line	261
	
l1144:	
	line	255
	
l2849:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3415
	movlw	low(0BB8h)
	subwf	(main@count),w
u3415:

	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l1145
u3410:
	goto	l2851
	
l1146:	
	line	262
	
l2851:	
;keypadpassword.c: 261: }
;keypadpassword.c: 262: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	263
;keypadpassword.c: 263: while(count<3000)
	goto	l2857
	
l1148:	
	line	265
;keypadpassword.c: 264: {
;keypadpassword.c: 265: RD0=1;RD1=0;RD2=1;RD3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bcf	(65/8),(65)&7
	bsf	(66/8),(66)&7
	bsf	(67/8),(67)&7
	line	266
	
l2853:	
;keypadpassword.c: 266: PORTC=0XBF;
	movlw	(0BFh)
	movwf	(7)	;volatile
	line	267
	
l2855:	
;keypadpassword.c: 267: RA3=1;
	bsf	(43/8),(43)&7
	line	268
;keypadpassword.c: 268: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2857
	line	269
	
l1147:	
	line	263
	
l2857:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3425
	movlw	low(0BB8h)
	subwf	(main@count),w
u3425:

	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l1148
u3420:
	goto	l2859
	
l1149:	
	line	270
	
l2859:	
;keypadpassword.c: 269: }
;keypadpassword.c: 270: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	271
;keypadpassword.c: 271: while(count<3000)
	goto	l2865
	
l1151:	
	line	273
;keypadpassword.c: 272: {
;keypadpassword.c: 273: RD0=1;RD1=1;RD2=0;RD3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	bcf	(66/8),(66)&7
	bsf	(67/8),(67)&7
	line	274
	
l2861:	
;keypadpassword.c: 274: PORTC=0X37;
	movlw	(037h)
	movwf	(7)	;volatile
	line	275
	
l2863:	
;keypadpassword.c: 275: RA3=1;
	bsf	(43/8),(43)&7
	line	276
;keypadpassword.c: 276: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2865
	line	277
	
l1150:	
	line	271
	
l2865:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3435
	movlw	low(0BB8h)
	subwf	(main@count),w
u3435:

	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l1151
u3430:
	goto	l2867
	
l1152:	
	line	278
	
l2867:	
;keypadpassword.c: 277: }
;keypadpassword.c: 278: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	279
;keypadpassword.c: 279: while(count<3000)
	goto	l2873
	
l1154:	
	line	281
;keypadpassword.c: 280: {
;keypadpassword.c: 281: RD0=1;RD1=1;RD2=1;RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	bsf	(66/8),(66)&7
	bcf	(67/8),(67)&7
	line	282
	
l2869:	
;keypadpassword.c: 282: PORTC=0XF9;
	movlw	(0F9h)
	movwf	(7)	;volatile
	line	283
	
l2871:	
;keypadpassword.c: 283: RA3=1;
	bsf	(43/8),(43)&7
	line	284
;keypadpassword.c: 284: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2873
	line	285
	
l1153:	
	line	279
	
l2873:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3445
	movlw	low(0BB8h)
	subwf	(main@count),w
u3445:

	skipc
	goto	u3441
	goto	u3440
u3441:
	goto	l1154
u3440:
	goto	l2875
	
l1155:	
	line	286
	
l2875:	
;keypadpassword.c: 285: }
;keypadpassword.c: 286: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	287
;keypadpassword.c: 287: }
	goto	l2909
	line	288
	
l1143:	
	line	290
;keypadpassword.c: 288: else
;keypadpassword.c: 289: {
;keypadpassword.c: 290: while(count<3000)
	goto	l2881
	
l1158:	
	line	292
;keypadpassword.c: 291: {
;keypadpassword.c: 292: RD0=0;RD1=1;RD2=1;RD3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	bsf	(66/8),(66)&7
	bsf	(67/8),(67)&7
	line	293
	
l2877:	
;keypadpassword.c: 293: PORTC=0X37;
	movlw	(037h)
	movwf	(7)	;volatile
	line	294
	
l2879:	
;keypadpassword.c: 294: RA4=1;
	bsf	(44/8),(44)&7
	line	295
;keypadpassword.c: 295: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2881
	line	296
	
l1157:	
	line	290
	
l2881:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3455
	movlw	low(0BB8h)
	subwf	(main@count),w
u3455:

	skipc
	goto	u3451
	goto	u3450
u3451:
	goto	l1158
u3450:
	goto	l2883
	
l1159:	
	line	297
	
l2883:	
;keypadpassword.c: 296: }
;keypadpassword.c: 297: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	298
;keypadpassword.c: 298: while(count<3000)
	goto	l2889
	
l1161:	
	line	300
;keypadpassword.c: 299: {
;keypadpassword.c: 300: RD0=1;RD1=0;RD2=1;RD3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bcf	(65/8),(65)&7
	bsf	(66/8),(66)&7
	bsf	(67/8),(67)&7
	line	301
	
l2885:	
;keypadpassword.c: 301: PORTC=0XBF;
	movlw	(0BFh)
	movwf	(7)	;volatile
	line	302
	
l2887:	
;keypadpassword.c: 302: RA4=1;
	bsf	(44/8),(44)&7
	line	303
;keypadpassword.c: 303: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2889
	line	304
	
l1160:	
	line	298
	
l2889:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3465
	movlw	low(0BB8h)
	subwf	(main@count),w
u3465:

	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l1161
u3460:
	goto	l2891
	
l1162:	
	line	305
	
l2891:	
;keypadpassword.c: 304: }
;keypadpassword.c: 305: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	306
;keypadpassword.c: 306: while(count<3000)
	goto	l2897
	
l1164:	
	line	308
;keypadpassword.c: 307: {
;keypadpassword.c: 308: RD0=1;RD1=1;RD2=0;RD3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	bcf	(66/8),(66)&7
	bsf	(67/8),(67)&7
	line	309
	
l2893:	
;keypadpassword.c: 309: PORTC=0XBF;
	movlw	(0BFh)
	movwf	(7)	;volatile
	line	310
	
l2895:	
;keypadpassword.c: 310: RA4=1;
	bsf	(44/8),(44)&7
	line	311
;keypadpassword.c: 311: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2897
	line	312
	
l1163:	
	line	306
	
l2897:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3475
	movlw	low(0BB8h)
	subwf	(main@count),w
u3475:

	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l1164
u3470:
	goto	l2899
	
l1165:	
	line	313
	
l2899:	
;keypadpassword.c: 312: }
;keypadpassword.c: 313: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	314
;keypadpassword.c: 314: while(count<3000)
	goto	l2905
	
l1167:	
	line	316
;keypadpassword.c: 315: {
;keypadpassword.c: 316: RD0=1;RD1=1;RD2=1;RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	bsf	(65/8),(65)&7
	bsf	(66/8),(66)&7
	bcf	(67/8),(67)&7
	line	317
	
l2901:	
;keypadpassword.c: 317: PORTC=0XBF;
	movlw	(0BFh)
	movwf	(7)	;volatile
	line	318
	
l2903:	
;keypadpassword.c: 318: RA4=1;
	bsf	(44/8),(44)&7
	line	319
;keypadpassword.c: 319: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2905
	line	320
	
l1166:	
	line	314
	
l2905:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0BB8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3485
	movlw	low(0BB8h)
	subwf	(main@count),w
u3485:

	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l1167
u3480:
	goto	l2907
	
l1168:	
	line	321
	
l2907:	
;keypadpassword.c: 320: }
;keypadpassword.c: 321: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l2909
	line	322
	
l1156:	
	line	323
	
l2909:	
;keypadpassword.c: 322: }
;keypadpassword.c: 323: RB0=1;
	bsf	(48/8),(48)&7
	line	324
	
l2911:	
;keypadpassword.c: 324: RB1=0;
	bcf	(49/8),(49)&7
	line	325
	
l2913:	
;keypadpassword.c: 325: RB2=0;
	bcf	(50/8),(50)&7
	line	326
	
l2915:	
;keypadpassword.c: 326: RB3=0;
	bcf	(51/8),(51)&7
	line	327
	
l2917:	
;keypadpassword.c: 327: if(RA0==1 || RA1==1 || RA2==1)
	btfsc	(40/8),(40)&7
	goto	u3491
	goto	u3490
u3491:
	goto	l2923
u3490:
	
l2919:	
	btfsc	(41/8),(41)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l2923
u3500:
	
l2921:	
	btfss	(42/8),(42)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l2671
u3510:
	goto	l2923
	
l1171:	
	line	329
	
l2923:	
;keypadpassword.c: 328: {
;keypadpassword.c: 329: control=1;
	movlw	low(01h)
	movwf	(main@control)
	movlw	high(01h)
	movwf	((main@control))+1
	line	330
	
l2925:	
;keypadpassword.c: 330: RA3=0;
	bcf	(43/8),(43)&7
	line	331
	
l2927:	
;keypadpassword.c: 331: RA4=0;
	bcf	(44/8),(44)&7
	line	332
	
l2929:	
;keypadpassword.c: 332: arr[4]=0;
	clrf	0+(main@arr)+08h
	clrf	1+(main@arr)+08h
	line	333
	
l2931:	
;keypadpassword.c: 333: mat[4]=0;
	clrf	0+(main@mat)+08h
	clrf	1+(main@mat)+08h
	line	334
	
l2933:	
;keypadpassword.c: 334: arr[3]=0;
	clrf	0+(main@arr)+06h
	clrf	1+(main@arr)+06h
	line	335
	
l2935:	
;keypadpassword.c: 335: mat[3]=0;
	clrf	0+(main@mat)+06h
	clrf	1+(main@mat)+06h
	line	336
	
l2937:	
;keypadpassword.c: 336: arr[2]=0;
	clrf	0+(main@arr)+04h
	clrf	1+(main@arr)+04h
	line	337
	
l2939:	
;keypadpassword.c: 337: mat[2]=0;
	clrf	0+(main@mat)+04h
	clrf	1+(main@mat)+04h
	line	338
	
l2941:	
;keypadpassword.c: 338: arr[1]=0;
	clrf	0+(main@arr)+02h
	clrf	1+(main@arr)+02h
	line	339
	
l2943:	
;keypadpassword.c: 339: mat[1]=0;
	clrf	0+(main@mat)+02h
	clrf	1+(main@mat)+02h
	line	340
	
l2945:	
;keypadpassword.c: 340: temp=0;
	clrf	(main@temp)
	clrf	(main@temp+1)
	line	341
	
l2947:	
;keypadpassword.c: 341: dump=0;
	clrf	(main@dump)
	clrf	(main@dump+1)
	goto	l2671
	line	342
	
l1169:	
	goto	l2671
	line	343
	
l1138:	
	goto	l2671
	line	344
	
l1172:	
	line	24
	goto	l2671
	
l1173:	
	line	345
	
l1174:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
