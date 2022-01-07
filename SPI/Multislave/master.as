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
	FNCALL	_main,_master
	FNCALL	_main,_delay
	FNCALL	_master,_delay
	FNROOT	_main
	global	main@F1605
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"E:\KTU\Softwares\MP lab\SPI\Multislave\master.c"
	line	26

;initializer for main@F1605
	retlw	073h
	retlw	061h
	retlw	062h
	retlw	069h
	retlw	06Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_SSPIF
_SSPIF	set	99
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"master.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"E:\KTU\Softwares\MP lab\SPI\Multislave\master.c"
main@F1605:
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
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_master
?_master:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@temp
delay@temp:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_master
??_master:	; 0 bytes @ 0x2
	ds	1
	global	master@data
master@data:	; 1 bytes @ 0x3
	ds	1
	global	master@i
master@i:	; 2 bytes @ 0x4
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x6
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@data
main@data:	; 10 bytes @ 0x0
	ds	10
;;Data sizes: Strings 0, constant 0, data 10, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80     10      20
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; master@data	PTR unsigned char  size(1) Largest target is 10
;;		 -> main@data(BANK0[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_master
;;   _master->_delay
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
;; (0) _main                                                14    14      0     159
;;                                              6 COMMON     4     4      0
;;                                              0 BANK0     10    10      0
;;                             _master
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _master                                               4     4      0      91
;;                                              2 COMMON     4     4      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _master
;;     _delay
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
;;DATA                 0      0      20      12        0.0%
;;ABS                  0      0      1E       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      A      14       5       25.0%
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
;;		line 17 in file "E:\KTU\Softwares\MP lab\SPI\Multislave\master.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data           10    0[BANK0 ] unsigned char [10]
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
;;      Locals:         0      10       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_master
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\SPI\Multislave\master.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l2245:	
;master.c: 18: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	19
;master.c: 19: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	20
;master.c: 20: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	21
;master.c: 21: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	22
;master.c: 22: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	23
;master.c: 23: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	24
;master.c: 24: SSPSTAT = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(148)^080h	;volatile
	line	25
	
l2247:	
;master.c: 25: SSPCON = 0x20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	26
	
l2249:	
;master.c: 26: char data[10]="sabin";
	movlw	(main@data)&0ffh
	movwf	fsr0
	movlw	low(main@F1605)
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
	goto	l2251
	line	27
;master.c: 27: while(1)
	
l1041:	
	line	29
	
l2251:	
;master.c: 28: {
;master.c: 29: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	30
	
l2253:	
;master.c: 30: RA1=1;
	bsf	(41/8),(41)&7
	line	31
	
l2255:	
;master.c: 31: master(&data);
	movlw	(main@data)&0ffh
	fcall	_master
	line	32
	
l2257:	
;master.c: 32: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	33
	
l2259:	
;master.c: 33: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	34
	
l2261:	
;master.c: 34: RA1=0;
	bcf	(41/8),(41)&7
	line	35
	
l2263:	
;master.c: 35: master(&data);
	movlw	(main@data)&0ffh
	fcall	_master
	line	36
	
l2265:	
;master.c: 36: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l2251
	line	37
	
l1042:	
	line	27
	goto	l2251
	
l1043:	
	line	38
	
l1044:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_master
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _master *****************
;; Defined at:
;;		line 7 in file "E:\KTU\Softwares\MP lab\SPI\Multislave\master.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     PTR unsigned char 
;;		 -> main@data(10), 
;; Auto vars:     Size  Location     Type
;;  data            1    3[COMMON] PTR unsigned char 
;;		 -> main@data(10), 
;;  i               2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text97
	file	"E:\KTU\Softwares\MP lab\SPI\Multislave\master.c"
	line	7
	global	__size_of_master
	__size_of_master	equ	__end_of_master-_master
	
_master:	
	opt	stack 6
; Regs used in _master: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;master@data stored from wreg
	movwf	(master@data)
	line	8
	
l2229:	
;master.c: 8: for(int i=0;i<5;i++)
	clrf	(master@i)
	clrf	(master@i+1)
	
l2231:	
	movf	(master@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2205
	movlw	low(05h)
	subwf	(master@i),w
u2205:

	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l2235
u2200:
	goto	l1036
	
l2233:	
	goto	l1036
	line	9
	
l1031:	
	line	10
	
l2235:	
;master.c: 9: {
;master.c: 10: SSPBUF =*data++ ;
	movf	(master@data),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	
l2237:	
	movlw	(01h)
	movwf	(??_master+0)+0
	movf	(??_master+0)+0,w
	addwf	(master@data),f
	line	11
	
l2239:	
;master.c: 11: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	12
;master.c: 12: while(SSPIF==0);
	goto	l1033
	
l1034:	
	
l1033:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l1033
u2210:
	
l1035:	
	line	13
;master.c: 13: SSPIF=0;
	bcf	(99/8),(99)&7
	line	8
	
l2241:	
	movlw	low(01h)
	addwf	(master@i),f
	skipnc
	incf	(master@i+1),f
	movlw	high(01h)
	addwf	(master@i+1),f
	
l2243:	
	movf	(master@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2225
	movlw	low(05h)
	subwf	(master@i),w
u2225:

	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l2235
u2220:
	goto	l1036
	
l1032:	
	line	15
	
l1036:	
	return
	opt stack 0
GLOBAL	__end_of_master
	__end_of_master:
;; =============== function _master ends ============

	signat	_master,4216
	global	_delay
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:

;; *************** function _delay *****************
;; Defined at:
;;		line 3 in file "E:\KTU\Softwares\MP lab\SPI\Multislave\master.c"
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
psect	text98
	file	"E:\KTU\Softwares\MP lab\SPI\Multislave\master.c"
	line	3
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	4
	
l2225:	
;master.c: 4: while(temp--);
	goto	l2227
	
l1026:	
	goto	l2227
	
l1025:	
	
l2227:	
	movlw	low(-1)
	addwf	(delay@temp),f
	skipnc
	incf	(delay@temp+1),f
	movlw	high(-1)
	addwf	(delay@temp+1),f
	movlw	high(-1)
	xorwf	((delay@temp+1)),w
	skipz
	goto	u2195
	movlw	low(-1)
	xorwf	((delay@temp)),w
u2195:

	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l2227
u2190:
	goto	l1028
	
l1027:	
	line	5
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
