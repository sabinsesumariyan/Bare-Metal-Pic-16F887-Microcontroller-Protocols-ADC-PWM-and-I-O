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
	global	_count
	global	_PORTA
psect	text60,local,class=CODE,delta=2
global __ptext60
__ptext60:
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
	global	_RD0
_RD0	set	64
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
	file	"viewprocess.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_count:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_sabin
?_sabin:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	sabin@x
sabin@x:	; 2 bytes @ 0x0
	ds	2
	global	??_sabin
??_sabin:	; 0 bytes @ 0x2
	global	??_main
??_main:	; 0 bytes @ 0x2
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x3
	ds	2
	global	main@x
main@x:	; 2 bytes @ 0x5
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       9
;; BANK0           80      0       0
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 5     5      0     345
;;                                              2 COMMON     5     5      0
;;                              _sabin
;; ---------------------------------------------------------------------------------
;; (1) _sabin                                                2     0      2     150
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _sabin
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       9       1       64.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       9       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       A      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 157 in file "E:\KTU\Softwares\mplab\Viewprocess\viewprocess.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2    5[COMMON] int 
;;  i               2    3[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_sabin
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Viewprocess\viewprocess.c"
	line	157
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	158
	
l2436:	
;viewprocess.c: 158: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	159
	
l2438:	
;viewprocess.c: 159: TRISA=0X02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	160
	
l2440:	
;viewprocess.c: 160: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	161
	
l2442:	
;viewprocess.c: 161: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	162
	
l2444:	
;viewprocess.c: 162: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	163
	
l2446:	
;viewprocess.c: 163: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	164
	
l2448:	
;viewprocess.c: 164: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	165
	
l2450:	
;viewprocess.c: 165: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	166
	
l2452:	
;viewprocess.c: 166: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	167
	
l2454:	
;viewprocess.c: 167: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	168
	
l2456:	
;viewprocess.c: 168: int x=0;
	clrf	(main@x)
	clrf	(main@x+1)
	goto	l2458
	line	170
;viewprocess.c: 169: int i;
;viewprocess.c: 170: while(1)
	
l1100:	
	line	172
	
l2458:	
;viewprocess.c: 171: {
;viewprocess.c: 172: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l1101
u2440:
	goto	l1102
	line	174
	
l2460:	
;viewprocess.c: 173: {
;viewprocess.c: 174: while(RA0==1);
	goto	l1102
	
l1103:	
	
l1102:	
	btfsc	(40/8),(40)&7
	goto	u2451
	goto	u2450
u2451:
	goto	l1102
u2450:
	goto	l2462
	
l1104:	
	line	175
	
l2462:	
;viewprocess.c: 175: x++;
	movlw	low(01h)
	addwf	(main@x),f
	skipnc
	incf	(main@x+1),f
	movlw	high(01h)
	addwf	(main@x+1),f
	line	176
	
l1101:	
	line	177
;viewprocess.c: 176: }
;viewprocess.c: 177: if(x==1)
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l1105
u2460:
	line	179
	
l2464:	
;viewprocess.c: 178: {
;viewprocess.c: 179: PORTB=0XBF;
	movlw	(0BFh)
	movwf	(6)	;volatile
	line	180
	
l1105:	
	line	181
;viewprocess.c: 180: }
;viewprocess.c: 181: if(x==2)
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l1106
u2470:
	line	183
	
l2466:	
;viewprocess.c: 182: {
;viewprocess.c: 183: PORTB=0X06;
	movlw	(06h)
	movwf	(6)	;volatile
	line	184
	
l1106:	
	line	185
;viewprocess.c: 184: }
;viewprocess.c: 185: if(x==3)
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l1107
u2480:
	line	187
	
l2468:	
;viewprocess.c: 186: {
;viewprocess.c: 187: PORTB=0X5B;
	movlw	(05Bh)
	movwf	(6)	;volatile
	line	188
	
l1107:	
	line	189
;viewprocess.c: 188: }
;viewprocess.c: 189: if(x==4)
	movlw	04h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l1108
u2490:
	line	191
	
l2470:	
;viewprocess.c: 190: {
;viewprocess.c: 191: PORTB=0X4F;
	movlw	(04Fh)
	movwf	(6)	;volatile
	line	192
	
l1108:	
	line	193
;viewprocess.c: 192: }
;viewprocess.c: 193: if(x==5)
	movlw	05h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l1109
u2500:
	line	195
	
l2472:	
;viewprocess.c: 194: {
;viewprocess.c: 195: PORTB=0X66;
	movlw	(066h)
	movwf	(6)	;volatile
	line	196
	
l1109:	
	line	197
;viewprocess.c: 196: }
;viewprocess.c: 197: if(x==6)
	movlw	06h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l1110
u2510:
	line	199
	
l2474:	
;viewprocess.c: 198: {
;viewprocess.c: 199: PORTB=0X6D;
	movlw	(06Dh)
	movwf	(6)	;volatile
	line	200
	
l1110:	
	line	201
;viewprocess.c: 200: }
;viewprocess.c: 201: if(x==7)
	movlw	07h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l1111
u2520:
	line	203
	
l2476:	
;viewprocess.c: 202: {
;viewprocess.c: 203: PORTB=0X7C;
	movlw	(07Ch)
	movwf	(6)	;volatile
	line	204
	
l1111:	
	line	205
;viewprocess.c: 204: }
;viewprocess.c: 205: if(x==8)
	movlw	08h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2531
	goto	u2530
u2531:
	goto	l1112
u2530:
	line	207
	
l2478:	
;viewprocess.c: 206: {
;viewprocess.c: 207: PORTB=0X07;
	movlw	(07h)
	movwf	(6)	;volatile
	line	208
	
l1112:	
	line	209
;viewprocess.c: 208: }
;viewprocess.c: 209: if(x==9)
	movlw	09h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2541
	goto	u2540
u2541:
	goto	l1113
u2540:
	line	211
	
l2480:	
;viewprocess.c: 210: {
;viewprocess.c: 211: PORTB=0XFF;
	movlw	(0FFh)
	movwf	(6)	;volatile
	line	212
	
l1113:	
	line	213
;viewprocess.c: 212: }
;viewprocess.c: 213: if(x==10)
	movlw	0Ah
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2551
	goto	u2550
u2551:
	goto	l2486
u2550:
	line	215
	
l2482:	
;viewprocess.c: 214: {
;viewprocess.c: 215: PORTB=0XE7;
	movlw	(0E7h)
	movwf	(6)	;volatile
	line	216
	
l2484:	
;viewprocess.c: 216: x=0;
	clrf	(main@x)
	clrf	(main@x+1)
	goto	l2486
	line	217
	
l1114:	
	line	218
	
l2486:	
;viewprocess.c: 217: }
;viewprocess.c: 218: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l2458
u2560:
	line	220
	
l2488:	
;viewprocess.c: 219: {
;viewprocess.c: 220: for(i=1;i<=x;i++)
	movlw	low(01h)
	movwf	(main@i)
	movlw	high(01h)
	movwf	((main@i))+1
	goto	l2494
	line	221
	
l1117:	
	line	222
	
l2490:	
;viewprocess.c: 221: {
;viewprocess.c: 222: sabin(i);
	movf	(main@i+1),w
	clrf	(?_sabin+1)
	addwf	(?_sabin+1)
	movf	(main@i),w
	clrf	(?_sabin)
	addwf	(?_sabin)

	fcall	_sabin
	line	220
	
l2492:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l2494
	
l1116:	
	
l2494:	
	movf	(main@x+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(main@i+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2575
	movf	(main@i),w
	subwf	(main@x),w
u2575:

	skipnc
	goto	u2571
	goto	u2570
u2571:
	goto	l2490
u2570:
	goto	l2458
	
l1118:	
	goto	l2458
	line	224
	
l1115:	
	goto	l2458
	line	225
	
l1119:	
	line	170
	goto	l2458
	
l1120:	
	line	226
	
l1121:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_sabin
psect	text61,local,class=CODE,delta=2
global __ptext61
__ptext61:

;; *************** function _sabin *****************
;; Defined at:
;;		line 4 in file "E:\KTU\Softwares\mplab\Viewprocess\viewprocess.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text61
	file	"E:\KTU\Softwares\mplab\Viewprocess\viewprocess.c"
	line	4
	global	__size_of_sabin
	__size_of_sabin	equ	__end_of_sabin-_sabin
	
_sabin:	
	opt	stack 7
; Regs used in _sabin: [wreg+status,2+btemp+1]
	line	5
	
l1490:	
;viewprocess.c: 5: if(x==1)
	movlw	01h
	xorwf	(sabin@x),w
	iorwf	(sabin@x+1),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l1508
u10:
	goto	l1498
	line	7
	
l1492:	
;viewprocess.c: 6: {
;viewprocess.c: 7: while(count<30000)
	goto	l1498
	
l1029:	
	line	9
	
l1494:	
;viewprocess.c: 8: {
;viewprocess.c: 9: PORTC=0XBF;
	movlw	(0BFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	10
	
l1496:	
;viewprocess.c: 10: RD0=1;
	bsf	(64/8),(64)&7
	line	11
;viewprocess.c: 11: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l1498
	line	12
	
l1028:	
	line	7
	
l1498:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(07530h)
	subwf	(_count),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l1494
u20:
	goto	l1506
	
l1030:	
	line	13
;viewprocess.c: 12: }
;viewprocess.c: 13: while(count>0)
	goto	l1506
	
l1032:	
	line	15
	
l1500:	
;viewprocess.c: 14: {
;viewprocess.c: 15: count--;
	movlw	low(-1)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(-1)
	addwf	(_count+1),f
	line	16
	
l1502:	
;viewprocess.c: 16: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	17
	
l1504:	
;viewprocess.c: 17: PORTC=0X00;
	clrf	(7)	;volatile
	goto	l1506
	line	18
	
l1031:	
	line	13
	
l1506:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(01h)
	subwf	(_count),w
u35:

	skipnc
	goto	u31
	goto	u30
u31:
	goto	l1500
u30:
	goto	l1508
	
l1033:	
	goto	l1508
	line	19
	
l1027:	
	line	20
	
l1508:	
;viewprocess.c: 18: }
;viewprocess.c: 19: }
;viewprocess.c: 20: if(x==2)
	movlw	02h
	xorwf	(sabin@x),w
	iorwf	(sabin@x+1),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l1526
u40:
	goto	l1516
	line	22
	
l1510:	
;viewprocess.c: 21: {
;viewprocess.c: 22: while(count<30000)
	goto	l1516
	
l1036:	
	line	24
	
l1512:	
;viewprocess.c: 23: {
;viewprocess.c: 24: PORTC=0X06;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	25
	
l1514:	
;viewprocess.c: 25: RD0=1;
	bsf	(64/8),(64)&7
	line	26
;viewprocess.c: 26: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l1516
	line	27
	
l1035:	
	line	22
	
l1516:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u55
	movlw	low(07530h)
	subwf	(_count),w
u55:

	skipc
	goto	u51
	goto	u50
u51:
	goto	l1512
u50:
	goto	l1524
	
l1037:	
	line	28
;viewprocess.c: 27: }
;viewprocess.c: 28: while(count>0)
	goto	l1524
	
l1039:	
	line	30
	
l1518:	
;viewprocess.c: 29: {
;viewprocess.c: 30: count--;
	movlw	low(-1)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(-1)
	addwf	(_count+1),f
	line	31
	
l1520:	
;viewprocess.c: 31: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	32
	
l1522:	
;viewprocess.c: 32: PORTC=0X00;
	clrf	(7)	;volatile
	goto	l1524
	line	33
	
l1038:	
	line	28
	
l1524:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u65
	movlw	low(01h)
	subwf	(_count),w
u65:

	skipnc
	goto	u61
	goto	u60
u61:
	goto	l1518
u60:
	goto	l1526
	
l1040:	
	goto	l1526
	line	34
	
l1034:	
	line	35
	
l1526:	
;viewprocess.c: 33: }
;viewprocess.c: 34: }
;viewprocess.c: 35: if(x==3)
	movlw	03h
	xorwf	(sabin@x),w
	iorwf	(sabin@x+1),w
	skipz
	goto	u71
	goto	u70
u71:
	goto	l1544
u70:
	goto	l1534
	line	37
	
l1528:	
;viewprocess.c: 36: {
;viewprocess.c: 37: while(count<30000)
	goto	l1534
	
l1043:	
	line	39
	
l1530:	
;viewprocess.c: 38: {
;viewprocess.c: 39: PORTC=0X5B;
	movlw	(05Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	40
;viewprocess.c: 40: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	41
	
l1532:	
;viewprocess.c: 41: RD0=1;
	bsf	(64/8),(64)&7
	goto	l1534
	line	42
	
l1042:	
	line	37
	
l1534:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u85
	movlw	low(07530h)
	subwf	(_count),w
u85:

	skipc
	goto	u81
	goto	u80
u81:
	goto	l1530
u80:
	goto	l1542
	
l1044:	
	line	43
;viewprocess.c: 42: }
;viewprocess.c: 43: while(count>0)
	goto	l1542
	
l1046:	
	line	45
	
l1536:	
;viewprocess.c: 44: {
;viewprocess.c: 45: count--;
	movlw	low(-1)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(-1)
	addwf	(_count+1),f
	line	46
	
l1538:	
;viewprocess.c: 46: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	47
	
l1540:	
;viewprocess.c: 47: PORTC=0X00;
	clrf	(7)	;volatile
	goto	l1542
	line	48
	
l1045:	
	line	43
	
l1542:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u95
	movlw	low(01h)
	subwf	(_count),w
u95:

	skipnc
	goto	u91
	goto	u90
u91:
	goto	l1536
u90:
	goto	l1544
	
l1047:	
	goto	l1544
	line	49
	
l1041:	
	line	50
	
l1544:	
;viewprocess.c: 48: }
;viewprocess.c: 49: }
;viewprocess.c: 50: if(x==4)
	movlw	04h
	xorwf	(sabin@x),w
	iorwf	(sabin@x+1),w
	skipz
	goto	u101
	goto	u100
u101:
	goto	l1562
u100:
	goto	l1552
	line	52
	
l1546:	
;viewprocess.c: 51: {
;viewprocess.c: 52: while(count<30000)
	goto	l1552
	
l1050:	
	line	54
	
l1548:	
;viewprocess.c: 53: {
;viewprocess.c: 54: PORTC=0X4F;
	movlw	(04Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	55
;viewprocess.c: 55: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	56
	
l1550:	
;viewprocess.c: 56: RD0=1;
	bsf	(64/8),(64)&7
	goto	l1552
	line	57
	
l1049:	
	line	52
	
l1552:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u115
	movlw	low(07530h)
	subwf	(_count),w
u115:

	skipc
	goto	u111
	goto	u110
u111:
	goto	l1548
u110:
	goto	l1560
	
l1051:	
	line	58
;viewprocess.c: 57: }
;viewprocess.c: 58: while(count>0)
	goto	l1560
	
l1053:	
	line	60
	
l1554:	
;viewprocess.c: 59: {
;viewprocess.c: 60: count--;
	movlw	low(-1)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(-1)
	addwf	(_count+1),f
	line	61
	
l1556:	
;viewprocess.c: 61: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	62
	
l1558:	
;viewprocess.c: 62: PORTC=0X00;
	clrf	(7)	;volatile
	goto	l1560
	line	63
	
l1052:	
	line	58
	
l1560:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u125
	movlw	low(01h)
	subwf	(_count),w
u125:

	skipnc
	goto	u121
	goto	u120
u121:
	goto	l1554
u120:
	goto	l1562
	
l1054:	
	goto	l1562
	line	64
	
l1048:	
	line	65
	
l1562:	
;viewprocess.c: 63: }
;viewprocess.c: 64: }
;viewprocess.c: 65: if(x==5)
	movlw	05h
	xorwf	(sabin@x),w
	iorwf	(sabin@x+1),w
	skipz
	goto	u131
	goto	u130
u131:
	goto	l1580
u130:
	goto	l1570
	line	67
	
l1564:	
;viewprocess.c: 66: {
;viewprocess.c: 67: while(count<30000)
	goto	l1570
	
l1057:	
	line	69
	
l1566:	
;viewprocess.c: 68: {
;viewprocess.c: 69: PORTC=0X66;
	movlw	(066h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	70
	
l1568:	
;viewprocess.c: 70: RD0=1;
	bsf	(64/8),(64)&7
	line	71
;viewprocess.c: 71: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l1570
	line	72
	
l1056:	
	line	67
	
l1570:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u145
	movlw	low(07530h)
	subwf	(_count),w
u145:

	skipc
	goto	u141
	goto	u140
u141:
	goto	l1566
u140:
	goto	l1578
	
l1058:	
	line	73
;viewprocess.c: 72: }
;viewprocess.c: 73: while(count>0)
	goto	l1578
	
l1060:	
	line	75
	
l1572:	
;viewprocess.c: 74: {
;viewprocess.c: 75: count--;
	movlw	low(-1)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(-1)
	addwf	(_count+1),f
	line	76
	
l1574:	
;viewprocess.c: 76: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	77
	
l1576:	
;viewprocess.c: 77: PORTC=0X00;
	clrf	(7)	;volatile
	goto	l1578
	line	78
	
l1059:	
	line	73
	
l1578:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u155
	movlw	low(01h)
	subwf	(_count),w
u155:

	skipnc
	goto	u151
	goto	u150
u151:
	goto	l1572
u150:
	goto	l1580
	
l1061:	
	goto	l1580
	line	79
	
l1055:	
	line	80
	
l1580:	
;viewprocess.c: 78: }
;viewprocess.c: 79: }
;viewprocess.c: 80: if(x==6)
	movlw	06h
	xorwf	(sabin@x),w
	iorwf	(sabin@x+1),w
	skipz
	goto	u161
	goto	u160
u161:
	goto	l1598
u160:
	goto	l1588
	line	82
	
l1582:	
;viewprocess.c: 81: {
;viewprocess.c: 82: while(count<30000)
	goto	l1588
	
l1064:	
	line	84
	
l1584:	
;viewprocess.c: 83: {
;viewprocess.c: 84: PORTC=0X6D;
	movlw	(06Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	85
	
l1586:	
;viewprocess.c: 85: RD0=1;
	bsf	(64/8),(64)&7
	line	86
;viewprocess.c: 86: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l1588
	line	87
	
l1063:	
	line	82
	
l1588:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u175
	movlw	low(07530h)
	subwf	(_count),w
u175:

	skipc
	goto	u171
	goto	u170
u171:
	goto	l1584
u170:
	goto	l1596
	
l1065:	
	line	88
;viewprocess.c: 87: }
;viewprocess.c: 88: while(count>0)
	goto	l1596
	
l1067:	
	line	90
	
l1590:	
;viewprocess.c: 89: {
;viewprocess.c: 90: count--;
	movlw	low(-1)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(-1)
	addwf	(_count+1),f
	line	91
	
l1592:	
;viewprocess.c: 91: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	92
	
l1594:	
;viewprocess.c: 92: PORTC=0X00;
	clrf	(7)	;volatile
	goto	l1596
	line	93
	
l1066:	
	line	88
	
l1596:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u185
	movlw	low(01h)
	subwf	(_count),w
u185:

	skipnc
	goto	u181
	goto	u180
u181:
	goto	l1590
u180:
	goto	l1598
	
l1068:	
	goto	l1598
	line	94
	
l1062:	
	line	95
	
l1598:	
;viewprocess.c: 93: }
;viewprocess.c: 94: }
;viewprocess.c: 95: if(x==7)
	movlw	07h
	xorwf	(sabin@x),w
	iorwf	(sabin@x+1),w
	skipz
	goto	u191
	goto	u190
u191:
	goto	l1616
u190:
	goto	l1606
	line	97
	
l1600:	
;viewprocess.c: 96: {
;viewprocess.c: 97: while(count<30000)
	goto	l1606
	
l1071:	
	line	99
	
l1602:	
;viewprocess.c: 98: {
;viewprocess.c: 99: PORTC=0X7C;
	movlw	(07Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	100
	
l1604:	
;viewprocess.c: 100: RD0=1;
	bsf	(64/8),(64)&7
	line	101
;viewprocess.c: 101: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l1606
	line	102
	
l1070:	
	line	97
	
l1606:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u205
	movlw	low(07530h)
	subwf	(_count),w
u205:

	skipc
	goto	u201
	goto	u200
u201:
	goto	l1602
u200:
	goto	l1614
	
l1072:	
	line	103
;viewprocess.c: 102: }
;viewprocess.c: 103: while(count>0)
	goto	l1614
	
l1074:	
	line	105
	
l1608:	
;viewprocess.c: 104: {
;viewprocess.c: 105: count--;
	movlw	low(-1)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(-1)
	addwf	(_count+1),f
	line	106
	
l1610:	
;viewprocess.c: 106: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	107
	
l1612:	
;viewprocess.c: 107: PORTC=0X00;
	clrf	(7)	;volatile
	goto	l1614
	line	108
	
l1073:	
	line	103
	
l1614:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u215
	movlw	low(01h)
	subwf	(_count),w
u215:

	skipnc
	goto	u211
	goto	u210
u211:
	goto	l1608
u210:
	goto	l1616
	
l1075:	
	goto	l1616
	line	109
	
l1069:	
	line	110
	
l1616:	
;viewprocess.c: 108: }
;viewprocess.c: 109: }
;viewprocess.c: 110: if(x==8)
	movlw	08h
	xorwf	(sabin@x),w
	iorwf	(sabin@x+1),w
	skipz
	goto	u221
	goto	u220
u221:
	goto	l1634
u220:
	goto	l1624
	line	112
	
l1618:	
;viewprocess.c: 111: {
;viewprocess.c: 112: while(count<30000)
	goto	l1624
	
l1078:	
	line	114
	
l1620:	
;viewprocess.c: 113: {
;viewprocess.c: 114: PORTC=0X07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	115
	
l1622:	
;viewprocess.c: 115: RD0=1;
	bsf	(64/8),(64)&7
	line	116
;viewprocess.c: 116: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l1624
	line	117
	
l1077:	
	line	112
	
l1624:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u235
	movlw	low(07530h)
	subwf	(_count),w
u235:

	skipc
	goto	u231
	goto	u230
u231:
	goto	l1620
u230:
	goto	l1632
	
l1079:	
	line	118
;viewprocess.c: 117: }
;viewprocess.c: 118: while(count>0)
	goto	l1632
	
l1081:	
	line	120
	
l1626:	
;viewprocess.c: 119: {
;viewprocess.c: 120: count--;
	movlw	low(-1)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(-1)
	addwf	(_count+1),f
	line	121
	
l1628:	
;viewprocess.c: 121: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	122
	
l1630:	
;viewprocess.c: 122: PORTC=0X00;
	clrf	(7)	;volatile
	goto	l1632
	line	123
	
l1080:	
	line	118
	
l1632:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u245
	movlw	low(01h)
	subwf	(_count),w
u245:

	skipnc
	goto	u241
	goto	u240
u241:
	goto	l1626
u240:
	goto	l1634
	
l1082:	
	goto	l1634
	line	124
	
l1076:	
	line	125
	
l1634:	
;viewprocess.c: 123: }
;viewprocess.c: 124: }
;viewprocess.c: 125: if(x==9)
	movlw	09h
	xorwf	(sabin@x),w
	iorwf	(sabin@x+1),w
	skipz
	goto	u251
	goto	u250
u251:
	goto	l1652
u250:
	goto	l1642
	line	127
	
l1636:	
;viewprocess.c: 126: {
;viewprocess.c: 127: while(count<30000)
	goto	l1642
	
l1085:	
	line	129
	
l1638:	
;viewprocess.c: 128: {
;viewprocess.c: 129: PORTC=0XFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	130
	
l1640:	
;viewprocess.c: 130: RD0=1;
	bsf	(64/8),(64)&7
	line	131
;viewprocess.c: 131: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l1642
	line	132
	
l1084:	
	line	127
	
l1642:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u265
	movlw	low(07530h)
	subwf	(_count),w
u265:

	skipc
	goto	u261
	goto	u260
u261:
	goto	l1638
u260:
	goto	l1650
	
l1086:	
	line	133
;viewprocess.c: 132: }
;viewprocess.c: 133: while(count>0)
	goto	l1650
	
l1088:	
	line	135
	
l1644:	
;viewprocess.c: 134: {
;viewprocess.c: 135: count--;
	movlw	low(-1)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(-1)
	addwf	(_count+1),f
	line	136
	
l1646:	
;viewprocess.c: 136: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	137
	
l1648:	
;viewprocess.c: 137: PORTC=0X00;
	clrf	(7)	;volatile
	goto	l1650
	line	138
	
l1087:	
	line	133
	
l1650:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u275
	movlw	low(01h)
	subwf	(_count),w
u275:

	skipnc
	goto	u271
	goto	u270
u271:
	goto	l1644
u270:
	goto	l1652
	
l1089:	
	goto	l1652
	line	139
	
l1083:	
	line	140
	
l1652:	
;viewprocess.c: 138: }
;viewprocess.c: 139: }
;viewprocess.c: 140: if(x==10)
	movlw	0Ah
	xorwf	(sabin@x),w
	iorwf	(sabin@x+1),w
	skipz
	goto	u281
	goto	u280
u281:
	goto	l1097
u280:
	goto	l1660
	line	142
	
l1654:	
;viewprocess.c: 141: {
;viewprocess.c: 142: while(count<30000)
	goto	l1660
	
l1092:	
	line	144
	
l1656:	
;viewprocess.c: 143: {
;viewprocess.c: 144: PORTC=0XE7;
	movlw	(0E7h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	145
	
l1658:	
;viewprocess.c: 145: RD0=1;
	bsf	(64/8),(64)&7
	line	146
;viewprocess.c: 146: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l1660
	line	147
	
l1091:	
	line	142
	
l1660:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u295
	movlw	low(07530h)
	subwf	(_count),w
u295:

	skipc
	goto	u291
	goto	u290
u291:
	goto	l1656
u290:
	goto	l1668
	
l1093:	
	line	148
;viewprocess.c: 147: }
;viewprocess.c: 148: while(count>0)
	goto	l1668
	
l1095:	
	line	150
	
l1662:	
;viewprocess.c: 149: {
;viewprocess.c: 150: count--;
	movlw	low(-1)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(-1)
	addwf	(_count+1),f
	line	151
	
l1664:	
;viewprocess.c: 151: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	152
	
l1666:	
;viewprocess.c: 152: PORTC=0X00;
	clrf	(7)	;volatile
	goto	l1668
	line	153
	
l1094:	
	line	148
	
l1668:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u305
	movlw	low(01h)
	subwf	(_count),w
u305:

	skipnc
	goto	u301
	goto	u300
u301:
	goto	l1662
u300:
	goto	l1097
	
l1096:	
	goto	l1097
	line	154
	
l1090:	
	line	155
	
l1097:	
	return
	opt stack 0
GLOBAL	__end_of_sabin
	__end_of_sabin:
;; =============== function _sabin ends ============

	signat	_sabin,4216
psect	text62,local,class=CODE,delta=2
global __ptext62
__ptext62:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
