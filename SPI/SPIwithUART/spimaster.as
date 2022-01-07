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
	FNCALL	_main,_rx
	FNCALL	_main,_master
	FNCALL	_main,_delay
	FNCALL	_master,_delay
	FNCALL	_rx,_tx
	FNROOT	_main
	global	_j
	global	_data
	global	_ch
	global	_PORTC
psect	text144,local,class=CODE,delta=2
global __ptext144
__ptext144:
_PORTC	set	7
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_TXREG
_TXREG	set	25
	global	_RCIF
_RCIF	set	101
	global	_SSPIF
_SSPIF	set	99
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISC
_TRISC	set	135
	global	_TXSTA
_TXSTA	set	152
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"spimaster.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_j:
       ds      2

_data:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_ch:
       ds      10

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
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
	global	?_tx
?_tx:	; 0 bytes @ 0x0
	global	??_tx
??_tx:	; 0 bytes @ 0x0
	global	?_rx
?_rx:	; 0 bytes @ 0x0
	global	?_master
?_master:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	tx@c
tx@c:	; 1 bytes @ 0x0
	global	delay@temp
delay@temp:	; 2 bytes @ 0x0
	ds	1
	global	??_rx
??_rx:	; 0 bytes @ 0x1
	ds	1
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_master
??_master:	; 0 bytes @ 0x2
	global	rx@i
rx@i:	; 2 bytes @ 0x2
	ds	2
	global	rx@x
rx@x:	; 1 bytes @ 0x4
	ds	1
	global	master@i
master@i:	; 2 bytes @ 0x5
	ds	2
	global	master@ch
master@ch:	; 1 bytes @ 0x7
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x8
;;Data sizes: Strings 0, constant 0, data 0, bss 13, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      11
;; BANK0           80      0      10
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; master@ch	PTR unsigned char  size(1) Largest target is 10
;;		 -> ch(BANK0[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_master
;;   _master->_delay
;;   _rx->_tx
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
;; (0) _main                                                 0     0      0     227
;;                                 _rx
;;                             _master
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _master                                               6     6      0      69
;;                                              2 COMMON     6     6      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _rx                                                   4     4      0     136
;;                                              1 COMMON     4     4      0
;;                                 _tx
;; ---------------------------------------------------------------------------------
;; (2) _tx                                                   1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _rx
;;     _tx
;;   _master
;;     _delay
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      15       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       A       5       12.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      17      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 41 in file "E:\KTU\Softwares\Embedded Systems\Pic Controller\SPI\SPIwithUART\spimaster.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_rx
;;		_master
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\SPI\SPIwithUART\spimaster.c"
	line	41
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	42
	
l2298:	
;spimaster.c: 42: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	43
	
l2300:	
;spimaster.c: 43: TRISC=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	44
	
l2302:	
;spimaster.c: 44: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	45
	
l2304:	
;spimaster.c: 45: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	46
	
l2306:	
;spimaster.c: 46: SSPSTAT = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(148)^080h	;volatile
	line	47
;spimaster.c: 47: SSPCON = 0x20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	48
;spimaster.c: 48: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	49
;spimaster.c: 49: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	50
;spimaster.c: 50: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	goto	l2308
	line	51
;spimaster.c: 51: while(1)
	
l1060:	
	line	53
	
l2308:	
;spimaster.c: 52: {
;spimaster.c: 53: rx();
	fcall	_rx
	line	54
	
l2310:	
;spimaster.c: 54: master(&ch[0]);
	movlw	(_ch)&0ffh
	fcall	_master
	line	55
	
l2312:	
;spimaster.c: 55: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l2308
	line	56
	
l1061:	
	line	51
	goto	l2308
	
l1062:	
	line	57
	
l1063:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_master
psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:

;; *************** function _master *****************
;; Defined at:
;;		line 31 in file "E:\KTU\Softwares\Embedded Systems\Pic Controller\SPI\SPIwithUART\spimaster.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     PTR unsigned char 
;;		 -> ch(10), 
;; Auto vars:     Size  Location     Type
;;  ch              1    7[COMMON] PTR unsigned char 
;;		 -> ch(10), 
;;  i               2    5[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text145
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\SPI\SPIwithUART\spimaster.c"
	line	31
	global	__size_of_master
	__size_of_master	equ	__end_of_master-_master
	
_master:	
	opt	stack 6
; Regs used in _master: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;master@ch stored from wreg
	movwf	(master@ch)
	line	32
	
l2286:	
;spimaster.c: 32: for(int i=0;i<j-1;i++)
	clrf	(master@i)
	clrf	(master@i+1)
	goto	l2296
	line	33
	
l1052:	
	line	34
	
l2288:	
;spimaster.c: 33: {
;spimaster.c: 34: SSPBUF = *ch++;
	movf	(master@ch),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	
l2290:	
	movlw	(01h)
	movwf	(??_master+0)+0
	movf	(??_master+0)+0,w
	addwf	(master@ch),f
	line	35
	
l2292:	
;spimaster.c: 35: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	36
;spimaster.c: 36: while(SSPIF==0);
	goto	l1053
	
l1054:	
	
l1053:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l1053
u2260:
	
l1055:	
	line	37
;spimaster.c: 37: SSPIF=0;
	bcf	(99/8),(99)&7
	line	32
	
l2294:	
	movlw	low(01h)
	addwf	(master@i),f
	skipnc
	incf	(master@i+1),f
	movlw	high(01h)
	addwf	(master@i+1),f
	goto	l2296
	
l1051:	
	
l2296:	
	movf	(_j),w
	addlw	low(-1)
	movwf	(??_master+0)+0
	movf	(_j+1),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(??_master+0)+0
	movf	(master@i+1),w
	xorlw	80h
	movwf	(??_master+2)+0
	movf	1+(??_master+0)+0,w
	xorlw	80h
	subwf	(??_master+2)+0,w
	skipz
	goto	u2275
	movf	0+(??_master+0)+0,w
	subwf	(master@i),w
u2275:

	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l2288
u2270:
	goto	l1057
	
l1056:	
	line	39
	
l1057:	
	return
	opt stack 0
GLOBAL	__end_of_master
	__end_of_master:
;; =============== function _master ends ============

	signat	_master,4216
	global	_rx
psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:

;; *************** function _rx *****************
;; Defined at:
;;		line 16 in file "E:\KTU\Softwares\Embedded Systems\Pic Controller\SPI\SPIwithUART\spimaster.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] int 
;;  x               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_tx
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text146
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\SPI\SPIwithUART\spimaster.c"
	line	16
	global	__size_of_rx
	__size_of_rx	equ	__end_of_rx-_rx
	
_rx:	
	opt	stack 6
; Regs used in _rx: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	18
	
l2264:	
;spimaster.c: 17: int i;
;spimaster.c: 18: char x='a';
	movlw	(061h)
	movwf	(??_rx+0)+0
	movf	(??_rx+0)+0,w
	movwf	(rx@x)
	line	20
	
l2266:	
;spimaster.c: 20: for(i=0;x!=0X0D;i++)
	clrf	(rx@i)
	clrf	(rx@i+1)
	
l2268:	
	movf	(rx@x),w
	xorlw	0Dh
	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l1045
u2230:
	goto	l1048
	
l2270:	
	goto	l1048
	line	21
	
l1043:	
	line	22
;spimaster.c: 21: {
;spimaster.c: 22: while(RCIF==0);
	goto	l1045
	
l1046:	
	
l1045:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l1045
u2240:
	goto	l2272
	
l1047:	
	line	23
	
l2272:	
;spimaster.c: 23: x=RCREG;
	movf	(26),w	;volatile
	movwf	(??_rx+0)+0
	movf	(??_rx+0)+0,w
	movwf	(rx@x)
	line	24
	
l2274:	
;spimaster.c: 24: ch[i]=x;
	movf	(rx@x),w
	movwf	(??_rx+0)+0
	movf	(rx@i),w
	addlw	_ch&0ffh
	movwf	fsr0
	movf	(??_rx+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	25
	
l2276:	
;spimaster.c: 25: tx(x);
	movf	(rx@x),w
	fcall	_tx
	line	26
	
l2278:	
;spimaster.c: 26: RCIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7
	line	27
	
l2280:	
;spimaster.c: 27: j++;
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	line	20
	
l2282:	
	movlw	low(01h)
	addwf	(rx@i),f
	skipnc
	incf	(rx@i+1),f
	movlw	high(01h)
	addwf	(rx@i+1),f
	
l2284:	
	movf	(rx@x),w
	xorlw	0Dh
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l1045
u2250:
	goto	l1048
	
l1044:	
	line	29
	
l1048:	
	return
	opt stack 0
GLOBAL	__end_of_rx
	__end_of_rx:
;; =============== function _rx ends ============

	signat	_rx,88
	global	_tx
psect	text147,local,class=CODE,delta=2
global __ptext147
__ptext147:

;; *************** function _tx *****************
;; Defined at:
;;		line 10 in file "E:\KTU\Softwares\Embedded Systems\Pic Controller\SPI\SPIwithUART\spimaster.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rx
;; This function uses a non-reentrant model
;;
psect	text147
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\SPI\SPIwithUART\spimaster.c"
	line	10
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 6
; Regs used in _tx: [wreg]
;tx@c stored from wreg
	movwf	(tx@c)
	line	11
	
l2262:	
;spimaster.c: 11: TXREG=c;
	movf	(tx@c),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	12
;spimaster.c: 12: while(TXIF==0);
	goto	l1037
	
l1038:	
	
l1037:	
	btfss	(100/8),(100)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l1037
u2220:
	
l1039:	
	line	13
;spimaster.c: 13: TXIF=0;
	bcf	(100/8),(100)&7
	line	14
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,4216
	global	_delay
psect	text148,local,class=CODE,delta=2
global __ptext148
__ptext148:

;; *************** function _delay *****************
;; Defined at:
;;		line 6 in file "E:\KTU\Softwares\Embedded Systems\Pic Controller\SPI\SPIwithUART\spimaster.c"
;; Parameters:    Size  Location     Type
;;  temp            2    0[COMMON] int 
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
;;		_master
;;		_main
;; This function uses a non-reentrant model
;;
psect	text148
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\SPI\SPIwithUART\spimaster.c"
	line	6
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	7
	
l2258:	
;spimaster.c: 7: while(temp--);
	goto	l2260
	
l1032:	
	goto	l2260
	
l1031:	
	
l2260:	
	movlw	low(-1)
	addwf	(delay@temp),f
	skipnc
	incf	(delay@temp+1),f
	movlw	high(-1)
	addwf	(delay@temp+1),f
	movlw	high(-1)
	xorwf	((delay@temp+1)),w
	skipz
	goto	u2215
	movlw	low(-1)
	xorwf	((delay@temp)),w
u2215:

	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l2260
u2210:
	goto	l1034
	
l1033:	
	line	8
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
