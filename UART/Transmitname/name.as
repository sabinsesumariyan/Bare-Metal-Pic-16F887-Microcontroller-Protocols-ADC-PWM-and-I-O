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
# 3 "E:\KTU\Softwares\MP lab\UART\Transmitname\name.c"
	psect config,class=CONFIG,delta=2 ;#
# 3 "E:\KTU\Softwares\MP lab\UART\Transmitname\name.c"
	dw 0X2CE4 ;#
	FNCALL	_main,_tx
	FNROOT	_main
	global	main@F1603
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\KTU\Softwares\MP lab\UART\Transmitname\name.c"
	line	28

;initializer for main@F1603
	retlw	073h
	retlw	061h
	retlw	062h
	retlw	069h
	retlw	06Eh
	retlw	0
	global	_PORTC
_PORTC	set	7
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISC
_TRISC	set	135
	global	_TXSTA
_TXSTA	set	152
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"name.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\KTU\Softwares\MP lab\UART\Transmitname\name.c"
main@F1603:
       ds      6

; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
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
	global	?_tx
?_tx:	; 0 bytes @ 0x0
	global	??_tx
??_tx:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	1
	global	tx@pointer
tx@pointer:	; 1 bytes @ 0x1
	ds	1
	global	tx@i
tx@i:	; 2 bytes @ 0x2
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	3
	global	main@name
main@name:	; 6 bytes @ 0x7
	ds	6
	global	main@pointer
main@pointer:	; 1 bytes @ 0xD
	ds	1
;;Data sizes: Strings 0, constant 0, data 6, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      0       6
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; main@pointer	PTR int  size(1) Largest target is 6
;;		 -> main@name(COMMON[6]), 
;;
;; tx@pointer	PTR PTR unsigned char  size(1) Largest target is 6
;;		 -> main@name(COMMON[6]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_tx
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                10    10      0     116
;;                                              4 COMMON    10    10      0
;;                                 _tx
;; ---------------------------------------------------------------------------------
;; (1) _tx                                                   4     4      0      69
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _tx
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
;;DATA                 0      0      15      12        0.0%
;;ABS                  0      0      14       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50      0       6       5        7.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "E:\KTU\Softwares\MP lab\UART\Transmitname\name.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  name            6    7[COMMON] unsigned char [6]
;;  pointer         1   13[COMMON] PTR int 
;;		 -> main@name(6), 
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
;;      Locals:         7       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_tx
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\UART\Transmitname\name.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	21
	
l2232:	
;name.c: 21: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	22
	
l2234:	
;name.c: 22: TRISC=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	23
	
l2236:	
;name.c: 23: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	24
	
l2238:	
;name.c: 24: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	25
	
l2240:	
;name.c: 25: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	26
	
l2242:	
;name.c: 26: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	27
	
l2244:	
;name.c: 27: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	28
	
l2246:	
;name.c: 28: char name[]="sabin";
	movlw	(main@name)&0ffh
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@F1603),w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1603)+1,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1603)+2,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1603)+3,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1603)+4,w
	movwf	indf
	incf	fsr0,f
	movf	(main@F1603)+5,w
	movwf	indf
	line	30
	
l2248:	
;name.c: 29: int *pointer;
;name.c: 30: pointer=&name;
	movlw	(main@name)&0ffh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@pointer)
	goto	l2250
	line	31
;name.c: 31: while(1)
	
l1040:	
	line	33
	
l2250:	
;name.c: 32: {
;name.c: 33: tx(pointer);
	movf	(main@pointer),w
	fcall	_tx
	line	34
	
l2252:	
;name.c: 34: _delay((unsigned long)((500)*(4000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_main+0)+0+2),f
movlw	136
movwf	((??_main+0)+0+1),f
	movlw	86
movwf	((??_main+0)+0),f
u2227:
	decfsz	((??_main+0)+0),f
	goto	u2227
	decfsz	((??_main+0)+0+1),f
	goto	u2227
	decfsz	((??_main+0)+0+2),f
	goto	u2227
opt asmopt_on

	goto	l2250
	line	35
	
l1041:	
	line	31
	goto	l2250
	
l1042:	
	line	36
	
l1043:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_tx
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _tx *****************
;; Defined at:
;;		line 5 in file "E:\KTU\Softwares\MP lab\UART\Transmitname\name.c"
;; Parameters:    Size  Location     Type
;;  pointer         1    wreg     PTR PTR unsigned char 
;;		 -> main@name(6), 
;; Auto vars:     Size  Location     Type
;;  pointer         1    1[COMMON] PTR PTR unsigned char 
;;		 -> main@name(6), 
;;  i               2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text85
	file	"E:\KTU\Softwares\MP lab\UART\Transmitname\name.c"
	line	5
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 7
; Regs used in _tx: [wreg-fsr0h+status,2+status,0+btemp+1]
;tx@pointer stored from wreg
	line	7
	movwf	(tx@pointer)
	
l2218:	
;name.c: 6: int i;
;name.c: 7: for(i=0;i<5;i++)
	clrf	(tx@i)
	clrf	(tx@i+1)
	
l2220:	
	movf	(tx@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2185
	movlw	low(05h)
	subwf	(tx@i),w
u2185:

	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l2224
u2180:
	goto	l1032
	
l2222:	
	goto	l1032
	line	8
	
l1027:	
	line	9
	
l2224:	
;name.c: 8: {
;name.c: 9: TXREG=*(pointer++);
	movf	(tx@pointer),w
	movwf	fsr0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	
l2226:	
	movlw	(01h)
	movwf	(??_tx+0)+0
	movf	(??_tx+0)+0,w
	addwf	(tx@pointer),f
	line	11
;name.c: 11: while(TXIF==0);
	goto	l1029
	
l1030:	
	
l1029:	
	btfss	(100/8),(100)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l1029
u2190:
	
l1031:	
	line	12
;name.c: 12: TXIF=0;
	bcf	(100/8),(100)&7
	line	7
	
l2228:	
	movlw	low(01h)
	addwf	(tx@i),f
	skipnc
	incf	(tx@i+1),f
	movlw	high(01h)
	addwf	(tx@i+1),f
	
l2230:	
	movf	(tx@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2205
	movlw	low(05h)
	subwf	(tx@i),w
u2205:

	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l2224
u2200:
	goto	l1032
	
l1028:	
	line	15
;name.c: 14: }
;name.c: 15: while(TXIF==0);
	goto	l1032
	
l1033:	
	
l1032:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l1032
u2210:
	
l1034:	
	line	16
;name.c: 16: TXIF=0;
	bcf	(100/8),(100)&7
	line	17
	
l1035:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,4216
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
