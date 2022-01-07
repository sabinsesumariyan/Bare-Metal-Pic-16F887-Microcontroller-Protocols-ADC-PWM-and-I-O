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
	FNCALL	_main,_sabin
	FNROOT	_main
	global	main@F1606
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\KTU\Softwares\mplab\Doublesegment\doublesegment.c"
	line	25

;initializer for main@F1606
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
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RB0
_RB0	set	48
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"doublesegment.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\KTU\Softwares\mplab\Doublesegment\doublesegment.c"
main@F1606:
       ds      10

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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_sabin
?_sabin:	; 2 bytes @ 0x0
	global	sabin@i
sabin@i:	; 2 bytes @ 0x0
	ds	2
	global	??_sabin
??_sabin:	; 0 bytes @ 0x2
	global	sabin@count
sabin@count:	; 2 bytes @ 0x2
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x4
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@arr
main@arr:	; 10 bytes @ 0x0
	ds	10
	global	main@count
main@count:	; 2 bytes @ 0xA
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0xC
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0xE
	ds	2
;;Data sizes: Strings 0, constant 0, data 10, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80     16      26
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_sabin
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
;; (0) _main                                                20    20      0     255
;;                                              4 COMMON     4     4      0
;;                                              0 BANK0     16    16      0
;;                              _sabin
;; ---------------------------------------------------------------------------------
;; (1) _sabin                                                4     2      2      47
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _sabin
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
;;DATA                 0      0      23      12        0.0%
;;ABS                  0      0      22       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50     10      1A       5       32.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      8       8       1       57.1%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "E:\KTU\Softwares\mplab\Doublesegment\doublesegment.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  arr            10    0[BANK0 ] unsigned char [10]
;;  i               2   14[BANK0 ] int 
;;  j               2   12[BANK0 ] int 
;;  count           2   10[BANK0 ] int 
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
;;      Locals:         0      16       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      16       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_sabin
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Doublesegment\doublesegment.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	16
	
l2241:	
;doublesegment.c: 16: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	17
;doublesegment.c: 17: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	18
;doublesegment.c: 18: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	19
;doublesegment.c: 19: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	20
;doublesegment.c: 20: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	21
;doublesegment.c: 21: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	22
;doublesegment.c: 22: int count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	25
	
l2243:	
;doublesegment.c: 23: int j;
;doublesegment.c: 24: int i;
;doublesegment.c: 25: char arr[]= {0XBF,0X06,0X5B,0X4F,0X66,0X6D,0X7C,0X07,0XFF,0XE7};
	movlw	(main@arr)&0ffh
	movwf	fsr0
	movlw	low(main@F1606)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	10
	movwf	((??_main+0)+0+2)
u2230:
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
	goto	u2230
	goto	l2245
	line	26
;doublesegment.c: 26: while(1)
	
l1033:	
	line	29
	
l2245:	
;doublesegment.c: 27: {
;doublesegment.c: 29: for(i=0;i<10;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l2247:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2245
	movlw	low(0Ah)
	subwf	(main@i),w
u2245:

	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l2251
u2240:
	goto	l2245
	
l2249:	
	goto	l2245
	line	30
	
l1034:	
	line	32
	
l2251:	
;doublesegment.c: 30: {
;doublesegment.c: 32: for(j=0;j<10;)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@j)
	clrf	(main@j+1)
	
l2253:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2255
	movlw	low(0Ah)
	subwf	(main@j),w
u2255:

	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l1036
u2250:
	goto	l2275
	
l2255:	
	goto	l2275
	line	33
	
l1036:	
	line	34
;doublesegment.c: 33: {
;doublesegment.c: 34: if(RB0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l2273
u2260:
	line	36
	
l2257:	
;doublesegment.c: 35: {
;doublesegment.c: 36: sabin(arr[i]);
	movf	(main@i),w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_sabin)
	movf	1+(??_main+0)+0,w
	movwf	(?_sabin+1)
	fcall	_sabin
	line	37
	
l2259:	
;doublesegment.c: 37: RA0=1;RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	
l2261:	
	bcf	(41/8),(41)&7
	line	38
;doublesegment.c: 38: while(count<30000)
	goto	l2267
	
l1040:	
	line	40
	
l2263:	
;doublesegment.c: 39: {
;doublesegment.c: 40: PORTC=arr[j];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@arr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	41
	
l2265:	
;doublesegment.c: 41: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	goto	l2267
	line	42
	
l1039:	
	line	38
	
l2267:	
	movf	(main@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2275
	movlw	low(07530h)
	subwf	(main@count),w
u2275:

	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l2263
u2270:
	goto	l2269
	
l1041:	
	line	43
	
l2269:	
;doublesegment.c: 42: }
;doublesegment.c: 43: count=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@count)
	clrf	(main@count+1)
	line	44
	
l2271:	
;doublesegment.c: 44: j++;
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2273
	line	45
	
l1038:	
	line	32
	
l2273:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2285
	movlw	low(0Ah)
	subwf	(main@j),w
u2285:

	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l1036
u2280:
	goto	l2275
	
l1037:	
	line	29
	
l2275:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2277:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2295
	movlw	low(0Ah)
	subwf	(main@i),w
u2295:

	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l2251
u2290:
	goto	l2245
	
l1035:	
	goto	l2245
	line	48
	
l1042:	
	line	26
	goto	l2245
	
l1043:	
	line	49
	
l1044:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_sabin
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _sabin *****************
;; Defined at:
;;		line 3 in file "E:\KTU\Softwares\mplab\Doublesegment\doublesegment.c"
;; Parameters:    Size  Location     Type
;;  i               2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  count           2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
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
	file	"E:\KTU\Softwares\mplab\Doublesegment\doublesegment.c"
	line	3
	global	__size_of_sabin
	__size_of_sabin	equ	__end_of_sabin-_sabin
	
_sabin:	
	opt	stack 7
; Regs used in _sabin: [wreg+status,2+btemp+1]
	line	4
	
l2229:	
;doublesegment.c: 4: int count=0;
	clrf	(sabin@count)
	clrf	(sabin@count+1)
	line	5
	
l2231:	
;doublesegment.c: 5: RA0=0;RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	
l2233:	
	bsf	(41/8),(41)&7
	line	6
;doublesegment.c: 6: while(count<30000)
	goto	l2237
	
l1026:	
	line	8
	
l2235:	
;doublesegment.c: 7: {
;doublesegment.c: 8: count++;
	movlw	low(01h)
	addwf	(sabin@count),f
	skipnc
	incf	(sabin@count+1),f
	movlw	high(01h)
	addwf	(sabin@count+1),f
	line	9
;doublesegment.c: 9: PORTC=i;
	movf	(sabin@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l2237
	line	10
	
l1025:	
	line	6
	
l2237:	
	movf	(sabin@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2225
	movlw	low(07530h)
	subwf	(sabin@count),w
u2225:

	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l2235
u2220:
	goto	l2239
	
l1027:	
	line	11
	
l2239:	
;doublesegment.c: 10: }
;doublesegment.c: 11: count=0;
	clrf	(sabin@count)
	clrf	(sabin@count+1)
	line	12
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_sabin
	__end_of_sabin:
;; =============== function _sabin ends ============

	signat	_sabin,4218
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
