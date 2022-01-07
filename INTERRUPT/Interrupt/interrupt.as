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
	FNCALL	_exe,_delay
	FNCALL	intlevel1,_exe
	global	intlevel1
	FNROOT	intlevel1
	global	main@F1605
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\KTU\Softwares\MP lab\INTERRUPT\Interrupt\interrupt.c"
	line	29

;initializer for main@F1605
	retlw	0BFh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Ch
	retlw	07h
	retlw	0FFh
	retlw	0E7h
	global	_res
	global	_INTCON
_INTCON	set	11
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_INTF
_INTF	set	89
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
	file	"interrupt.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_res:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\KTU\Softwares\MP lab\INTERRUPT\Interrupt\interrupt.c"
main@F1605:
       ds      10

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
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
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
	global	?_exe
?_exe:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@val
delay@val:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_exe
??_exe:	; 0 bytes @ 0x2
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	4
	global	main@arr
main@arr:	; 10 bytes @ 0x4
	ds	10
	global	main@count
main@count:	; 4 bytes @ 0xE
	ds	4
	global	main@i
main@i:	; 2 bytes @ 0x12
	ds	2
;;Data sizes: Strings 0, constant 0, data 10, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80     20      32
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _exe in COMMON
;;
;;   _exe->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _exe in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _exe in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _exe in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _exe in BANK2
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
;; (0) _main                                                20    20      0     117
;;                                              0 BANK0     20    20      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (1) _exe                                                  4     4      0      15
;;                                              2 COMMON     4     4      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;
;; _exe (ROOT)
;;   _delay
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
;;DATA                 0      0      2A      12        0.0%
;;ABS                  0      0      26       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       4       2        0.0%
;;BANK0               50     14      20       5       40.0%
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
;;		line 17 in file "E:\KTU\Softwares\MP lab\INTERRUPT\Interrupt\interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  arr            10    4[BANK0 ] unsigned char [10]
;;  count           4   14[BANK0 ] long 
;;  i               2   18[BANK0 ] int 
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
;;      Locals:         0      16       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      20       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\INTERRUPT\Interrupt\interrupt.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	18
	
l2223:	
;interrupt.c: 18: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	19
;interrupt.c: 19: PORTB=0X00;
	clrf	(6)	;volatile
	line	20
;interrupt.c: 20: PORTC=0X00;
	clrf	(7)	;volatile
	line	21
;interrupt.c: 21: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	22
;interrupt.c: 22: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	23
;interrupt.c: 23: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	24
;interrupt.c: 24: TRISA=0X00;
	clrf	(133)^080h	;volatile
	line	25
	
l2225:	
;interrupt.c: 25: TRISB=0X01;
	movlw	(01h)
	movwf	(134)^080h	;volatile
	line	26
	
l2227:	
;interrupt.c: 26: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	27
	
l2229:	
;interrupt.c: 27: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	28
	
l2231:	
;interrupt.c: 28: INTCON=0xD0;
	movlw	(0D0h)
	movwf	(11)	;volatile
	line	29
	
l2233:	
;interrupt.c: 29: char arr[10]={ 0XBF,0X06,0X5B,0X4F,0X66,0X6D,0X7C,0X07,0XFF,0XE7};
	movlw	(main@arr)&0ffh
	movwf	fsr0
	movlw	low(main@F1605)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2190:
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
	goto	u2190
	line	30
	
l2235:	
;interrupt.c: 30: long count=0;
	movlw	0
	movwf	(main@count+3)
	movlw	0
	movwf	(main@count+2)
	movlw	0
	movwf	(main@count+1)
	movlw	0
	movwf	(main@count)

	goto	l2237
	line	32
;interrupt.c: 31: int i;
;interrupt.c: 32: while(1)
	
l1038:	
	line	38
	
l2237:	
;interrupt.c: 33: {
;interrupt.c: 38: for(i=0;i<10;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l2239:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2205
	movlw	low(0Ah)
	subwf	(main@i),w
u2205:

	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l2247
u2200:
	goto	l2237
	
l2241:	
	goto	l2237
	line	39
	
l1039:	
	line	40
;interrupt.c: 39: {
;interrupt.c: 40: while(count<30000)
	goto	l2247
	
l1042:	
	line	42
	
l2243:	
;interrupt.c: 41: {
;interrupt.c: 42: count++;
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@count),f
	movlw	0
	skipnc
movlw 1
	addwf	(main@count+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(main@count+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(main@count+3),f
	line	43
;interrupt.c: 43: PORTC=res;
	movf	(_res),w
	movwf	(7)	;volatile
	line	44
	
l2245:	
;interrupt.c: 44: res=arr[i];
	movf	(main@i),w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(_res)
	movf	1+(??_main+0)+0,w
	movwf	(_res+1)
	goto	l2247
	line	45
	
l1041:	
	line	40
	
l2247:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@count+3),w
	xorlw	80h
	movwf	btemp+1
	movlw	0
	xorlw	80h
	subwf	btemp+1,w
	
	skipz
	goto	u2213
	movlw	0
	subwf	(main@count+2),w
	skipz
	goto	u2213
	movlw	075h
	subwf	(main@count+1),w
	skipz
	goto	u2213
	movlw	030h
	subwf	(main@count),w
u2213:
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l2243
u2210:
	goto	l2249
	
l1043:	
	line	46
	
l2249:	
;interrupt.c: 45: }
;interrupt.c: 46: count=0;
	movlw	0
	movwf	(main@count+3)
	movlw	0
	movwf	(main@count+2)
	movlw	0
	movwf	(main@count+1)
	movlw	0
	movwf	(main@count)

	line	38
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2251:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2225
	movlw	low(0Ah)
	subwf	(main@i),w
u2225:

	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l2247
u2220:
	goto	l2237
	
l1040:	
	goto	l2237
	line	48
	
l1044:	
	line	32
	goto	l2237
	
l1045:	
	line	49
	
l1046:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_exe
psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:

;; *************** function _exe *****************
;; Defined at:
;;		line 8 in file "E:\KTU\Softwares\MP lab\INTERRUPT\Interrupt\interrupt.c"
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
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text94
	file	"E:\KTU\Softwares\MP lab\INTERRUPT\Interrupt\interrupt.c"
	line	8
	global	__size_of_exe
	__size_of_exe	equ	__end_of_exe-_exe
	
_exe:	
	opt	stack 6
; Regs used in _exe: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_exe+0)
	movf	fsr0,w
	movwf	(??_exe+1)
	movf	pclath,w
	movwf	(??_exe+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_exe+3)
	ljmp	_exe
psect	text94
	line	10
	
i1l1419:	
;interrupt.c: 10: PORTD=PORTC;
	movf	(7),w	;volatile
	movwf	(8)	;volatile
	line	11
	
i1l1421:	
;interrupt.c: 11: delay(65000);
	movlw	low(0FDE8h)
	movwf	(?_delay)
	movlw	high(0FDE8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	12
	
i1l1423:	
;interrupt.c: 12: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	13
	
i1l1425:	
;interrupt.c: 13: INTF=0;
	bcf	(89/8),(89)&7
	line	15
	
i1l1033:	
	movf	(??_exe+3),w
	movwf	btemp+1
	movf	(??_exe+2),w
	movwf	pclath
	movf	(??_exe+1),w
	movwf	fsr0
	swapf	(??_exe+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_exe
	__end_of_exe:
;; =============== function _exe ends ============

	signat	_exe,88
	global	_delay
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:

;; *************** function _delay *****************
;; Defined at:
;;		line 4 in file "E:\KTU\Softwares\MP lab\INTERRUPT\Interrupt\interrupt.c"
;; Parameters:    Size  Location     Type
;;  val             2    0[COMMON] unsigned int 
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
;;		_exe
;; This function uses a non-reentrant model
;;
psect	text95
	file	"E:\KTU\Softwares\MP lab\INTERRUPT\Interrupt\interrupt.c"
	line	4
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	5
	
i1l1415:	
;interrupt.c: 5: while(val--);
	goto	i1l1417
	
i1l1028:	
	goto	i1l1417
	
i1l1027:	
	
i1l1417:	
	movlw	low(01h)
	subwf	(delay@val),f
	movlw	high(01h)
	skipc
	decf	(delay@val+1),f
	subwf	(delay@val+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@val+1)),w
	skipz
	goto	u1_25
	movlw	low(0FFFFh)
	xorwf	((delay@val)),w
u1_25:

	skipz
	goto	u1_21
	goto	u1_20
u1_21:
	goto	i1l1417
u1_20:
	goto	i1l1030
	
i1l1029:	
	line	6
	
i1l1030:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
