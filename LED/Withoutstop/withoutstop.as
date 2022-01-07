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
	global	_PORTA
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
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
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"withoutstop.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

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
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@count
main@count:	; 4 bytes @ 0x0
	ds	4
	global	main@temp
main@temp:	; 2 bytes @ 0x4
	ds	2
	global	main@blink
main@blink:	; 2 bytes @ 0x6
	ds	2
	global	main@x
main@x:	; 6 bytes @ 0x8
	ds	6
	global	main@i
main@i:	; 2 bytes @ 0xE
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       3
;; BANK0           80     16      16
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
;; (0) _main                                                19    19      0     623
;;                                              0 COMMON     3     3      0
;;                                              0 BANK0     16    16      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      3       3       1       21.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     10      10       5       20.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 3 in file "E:\KTU\Softwares\mplab\Withoutstop\withoutstop.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               6    8[BANK0 ] int [3]
;;  count           4    0[BANK0 ] long 
;;  i               2   14[BANK0 ] int 
;;  blink           2    6[BANK0 ] int 
;;  temp            2    4[BANK0 ] int 
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
;;      Temps:          3       0       0       0       0
;;      Totals:         3      16       0       0       0
;;Total ram usage:       19 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Withoutstop\withoutstop.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	4
	
l2343:	
;withoutstop.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
	
l2345:	
;withoutstop.c: 5: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	6
	
l2347:	
;withoutstop.c: 6: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	7
	
l2349:	
;withoutstop.c: 7: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	8
	
l2351:	
;withoutstop.c: 8: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	9
	
l2353:	
;withoutstop.c: 9: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	11
	
l2355:	
;withoutstop.c: 10: int x[3];
;withoutstop.c: 11: int temp=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@temp)
	movlw	high(01h)
	movwf	((main@temp))+1
	line	12
	
l2357:	
;withoutstop.c: 12: long count=0;
	movlw	0
	movwf	(main@count+3)
	movlw	0
	movwf	(main@count+2)
	movlw	0
	movwf	(main@count+1)
	movlw	0
	movwf	(main@count)

	line	13
	
l2359:	
;withoutstop.c: 13: int i=0;
	clrf	(main@i)
	clrf	(main@i+1)
	line	14
	
l2361:	
;withoutstop.c: 14: int blink=0;
	clrf	(main@blink)
	clrf	(main@blink+1)
	goto	l2363
	line	15
;withoutstop.c: 15: while(1)
	
l1025:	
	line	17
	
l2363:	
;withoutstop.c: 16: {
;withoutstop.c: 17: if(temp==1)
	movlw	01h
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l2385
u2400:
	line	19
	
l2365:	
;withoutstop.c: 18: {
;withoutstop.c: 19: count++;
	movlw	01h
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
	line	20
	
l2367:	
;withoutstop.c: 20: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l2373
u2410:
	line	22
	
l2369:	
;withoutstop.c: 21: {
;withoutstop.c: 22: x[i]=1;
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@x&0ffh
	movwf	fsr0
	movlw	low(01h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(01h)
	movwf	indf
	line	23
;withoutstop.c: 23: while(RA0==1);
	goto	l1028
	
l1029:	
	
l1028:	
	btfsc	(40/8),(40)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l1028
u2420:
	goto	l2371
	
l1030:	
	line	24
	
l2371:	
;withoutstop.c: 24: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l2373
	line	25
	
l1027:	
	line	26
	
l2373:	
;withoutstop.c: 25: }
;withoutstop.c: 26: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l2379
u2430:
	line	28
	
l2375:	
;withoutstop.c: 27: {
;withoutstop.c: 28: x[i]=2;
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@x&0ffh
	movwf	fsr0
	movlw	low(02h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(02h)
	movwf	indf
	line	29
;withoutstop.c: 29: while(RA1==1);
	goto	l1032
	
l1033:	
	
l1032:	
	btfsc	(41/8),(41)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l1032
u2440:
	goto	l2377
	
l1034:	
	line	30
	
l2377:	
;withoutstop.c: 30: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l2379
	line	31
	
l1031:	
	line	32
	
l2379:	
;withoutstop.c: 31: }
;withoutstop.c: 32: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2451
	goto	u2450
u2451:
	goto	l2385
u2450:
	line	34
	
l2381:	
;withoutstop.c: 33: {
;withoutstop.c: 34: x[i]=3;
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@x&0ffh
	movwf	fsr0
	movlw	low(03h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movlw	high(03h)
	movwf	indf
	line	35
;withoutstop.c: 35: while(RA2==1);
	goto	l1036
	
l1037:	
	
l1036:	
	btfsc	(42/8),(42)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l1036
u2460:
	goto	l2383
	
l1038:	
	line	36
	
l2383:	
;withoutstop.c: 36: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l2385
	line	37
	
l1035:	
	goto	l2385
	line	38
	
l1026:	
	line	39
	
l2385:	
;withoutstop.c: 37: }
;withoutstop.c: 38: }
;withoutstop.c: 39: if(count>50000)
	movf	(main@count+3),w
	xorlw	80h
	movwf	btemp+1
	movlw	0
	xorlw	80h
	subwf	btemp+1,w
	
	skipz
	goto	u2473
	movlw	0
	subwf	(main@count+2),w
	skipz
	goto	u2473
	movlw	0C3h
	subwf	(main@count+1),w
	skipz
	goto	u2473
	movlw	051h
	subwf	(main@count),w
u2473:
	skipc
	goto	u2471
	goto	u2470
u2471:
	goto	l1039
u2470:
	line	41
	
l2387:	
;withoutstop.c: 40: {
;withoutstop.c: 41: temp=2;
	movlw	low(02h)
	movwf	(main@temp)
	movlw	high(02h)
	movwf	((main@temp))+1
	line	42
	
l1039:	
	line	43
;withoutstop.c: 42: }
;withoutstop.c: 43: if(temp==2)
	movlw	02h
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l2363
u2480:
	line	45
	
l2389:	
;withoutstop.c: 44: {
;withoutstop.c: 45: for(i=0;i<3;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l2391:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2495
	movlw	low(03h)
	subwf	(main@i),w
u2495:

	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l2395
u2490:
	goto	l2483
	
l2393:	
	goto	l2483
	line	46
	
l1041:	
	line	47
	
l2395:	
;withoutstop.c: 46: {
;withoutstop.c: 47: if(x[i]==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@x&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movlw	01h
	xorwf	0+(??_main+1)+0,w
	iorwf	1+(??_main+1)+0,w
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l2423
u2500:
	goto	l2419
	line	49
	
l2397:	
;withoutstop.c: 48: {
;withoutstop.c: 49: while(blink<30000)
	goto	l2419
	
l1045:	
	line	51
	
l2399:	
;withoutstop.c: 50: {
;withoutstop.c: 51: blink++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@blink),f
	skipnc
	incf	(main@blink+1),f
	movlw	high(01h)
	addwf	(main@blink+1),f
	line	52
	
l2401:	
;withoutstop.c: 52: RB0=1;
	bsf	(48/8),(48)&7
	line	53
	
l2403:	
;withoutstop.c: 53: if(RA0==1 || RA1==1 || RA2==1)
	btfsc	(40/8),(40)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l1048
u2510:
	
l2405:	
	btfsc	(41/8),(41)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l1048
u2520:
	
l2407:	
	btfss	(42/8),(42)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l2419
u2530:
	
l1048:	
	line	55
;withoutstop.c: 54: {
;withoutstop.c: 55: RB0=0;
	bcf	(48/8),(48)&7
	line	56
;withoutstop.c: 56: RB1=0;
	bcf	(49/8),(49)&7
	line	57
;withoutstop.c: 57: RB2=0;
	bcf	(50/8),(50)&7
	line	58
	
l2409:	
;withoutstop.c: 58: temp=1;
	movlw	low(01h)
	movwf	(main@temp)
	movlw	high(01h)
	movwf	((main@temp))+1
	line	59
;withoutstop.c: 59: count=0;
	movlw	0
	movwf	(main@count+3)
	movlw	0
	movwf	(main@count+2)
	movlw	0
	movwf	(main@count+1)
	movlw	0
	movwf	(main@count)

	line	60
	
l2411:	
;withoutstop.c: 60: x[0]=0;
	clrf	(main@x)
	clrf	(main@x+1)
	line	61
	
l2413:	
;withoutstop.c: 61: x[1]=0;
	clrf	0+(main@x)+02h
	clrf	1+(main@x)+02h
	line	62
	
l2415:	
;withoutstop.c: 62: x[2]=0;
	clrf	0+(main@x)+04h
	clrf	1+(main@x)+04h
	line	63
	
l2417:	
;withoutstop.c: 63: i=3;
	movlw	low(03h)
	movwf	(main@i)
	movlw	high(03h)
	movwf	((main@i))+1
	line	64
;withoutstop.c: 64: break;
	goto	l1049
	line	65
	
l1046:	
	goto	l2419
	line	66
	
l1044:	
	line	49
	
l2419:	
	movf	(main@blink+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2545
	movlw	low(07530h)
	subwf	(main@blink),w
u2545:

	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l2399
u2540:
	
l1049:	
	line	67
;withoutstop.c: 65: }
;withoutstop.c: 66: }
;withoutstop.c: 67: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	68
	
l2421:	
;withoutstop.c: 68: blink=0;
	clrf	(main@blink)
	clrf	(main@blink+1)
	goto	l2423
	line	69
	
l1043:	
	line	70
	
l2423:	
;withoutstop.c: 69: }
;withoutstop.c: 70: if(x[i]==2)
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@x&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movlw	02h
	xorwf	0+(??_main+1)+0,w
	iorwf	1+(??_main+1)+0,w
	skipz
	goto	u2551
	goto	u2550
u2551:
	goto	l2451
u2550:
	goto	l2447
	line	72
	
l2425:	
;withoutstop.c: 71: {
;withoutstop.c: 72: while(blink<30000)
	goto	l2447
	
l1052:	
	line	74
	
l2427:	
;withoutstop.c: 73: {
;withoutstop.c: 74: blink++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@blink),f
	skipnc
	incf	(main@blink+1),f
	movlw	high(01h)
	addwf	(main@blink+1),f
	line	75
	
l2429:	
;withoutstop.c: 75: RB1=1;
	bsf	(49/8),(49)&7
	line	76
	
l2431:	
;withoutstop.c: 76: if(RA0==1 || RA1==1 || RA2==1)
	btfsc	(40/8),(40)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l1055
u2560:
	
l2433:	
	btfsc	(41/8),(41)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l1055
u2570:
	
l2435:	
	btfss	(42/8),(42)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l2447
u2580:
	
l1055:	
	line	78
;withoutstop.c: 77: {
;withoutstop.c: 78: RB0=0;
	bcf	(48/8),(48)&7
	line	79
;withoutstop.c: 79: RB1=0;
	bcf	(49/8),(49)&7
	line	80
;withoutstop.c: 80: RB2=0;
	bcf	(50/8),(50)&7
	line	81
	
l2437:	
;withoutstop.c: 81: temp=1;
	movlw	low(01h)
	movwf	(main@temp)
	movlw	high(01h)
	movwf	((main@temp))+1
	line	82
;withoutstop.c: 82: count=0;
	movlw	0
	movwf	(main@count+3)
	movlw	0
	movwf	(main@count+2)
	movlw	0
	movwf	(main@count+1)
	movlw	0
	movwf	(main@count)

	line	83
	
l2439:	
;withoutstop.c: 83: x[0]=0;
	clrf	(main@x)
	clrf	(main@x+1)
	line	84
	
l2441:	
;withoutstop.c: 84: x[1]=0;
	clrf	0+(main@x)+02h
	clrf	1+(main@x)+02h
	line	85
	
l2443:	
;withoutstop.c: 85: x[2]=0;
	clrf	0+(main@x)+04h
	clrf	1+(main@x)+04h
	line	86
	
l2445:	
;withoutstop.c: 86: i=3;
	movlw	low(03h)
	movwf	(main@i)
	movlw	high(03h)
	movwf	((main@i))+1
	line	87
;withoutstop.c: 87: break;
	goto	l1056
	line	88
	
l1053:	
	goto	l2447
	line	89
	
l1051:	
	line	72
	
l2447:	
	movf	(main@blink+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2595
	movlw	low(07530h)
	subwf	(main@blink),w
u2595:

	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l2427
u2590:
	
l1056:	
	line	90
;withoutstop.c: 88: }
;withoutstop.c: 89: }
;withoutstop.c: 90: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	91
	
l2449:	
;withoutstop.c: 91: blink=0;
	clrf	(main@blink)
	clrf	(main@blink+1)
	goto	l2451
	line	92
	
l1050:	
	line	93
	
l2451:	
;withoutstop.c: 92: }
;withoutstop.c: 93: if(x[i]==3)
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@x&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movlw	03h
	xorwf	0+(??_main+1)+0,w
	iorwf	1+(??_main+1)+0,w
	skipz
	goto	u2601
	goto	u2600
u2601:
	goto	l2479
u2600:
	goto	l2475
	line	95
	
l2453:	
;withoutstop.c: 94: {
;withoutstop.c: 95: while(blink<30000)
	goto	l2475
	
l1059:	
	line	97
	
l2455:	
;withoutstop.c: 96: {
;withoutstop.c: 97: blink++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@blink),f
	skipnc
	incf	(main@blink+1),f
	movlw	high(01h)
	addwf	(main@blink+1),f
	line	98
	
l2457:	
;withoutstop.c: 98: RB2=1;
	bsf	(50/8),(50)&7
	line	99
	
l2459:	
;withoutstop.c: 99: if(RA0==1 || RA1==1 || RA2==1)
	btfsc	(40/8),(40)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l1062
u2610:
	
l2461:	
	btfsc	(41/8),(41)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l1062
u2620:
	
l2463:	
	btfss	(42/8),(42)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l2475
u2630:
	
l1062:	
	line	101
;withoutstop.c: 100: {
;withoutstop.c: 101: RB0=0;
	bcf	(48/8),(48)&7
	line	102
;withoutstop.c: 102: RB1=0;
	bcf	(49/8),(49)&7
	line	103
;withoutstop.c: 103: RB2=0;
	bcf	(50/8),(50)&7
	line	104
	
l2465:	
;withoutstop.c: 104: temp=1;
	movlw	low(01h)
	movwf	(main@temp)
	movlw	high(01h)
	movwf	((main@temp))+1
	line	105
;withoutstop.c: 105: count=0;
	movlw	0
	movwf	(main@count+3)
	movlw	0
	movwf	(main@count+2)
	movlw	0
	movwf	(main@count+1)
	movlw	0
	movwf	(main@count)

	line	106
	
l2467:	
;withoutstop.c: 106: x[0]=0;
	clrf	(main@x)
	clrf	(main@x+1)
	line	107
	
l2469:	
;withoutstop.c: 107: x[1]=0;
	clrf	0+(main@x)+02h
	clrf	1+(main@x)+02h
	line	108
	
l2471:	
;withoutstop.c: 108: x[2]=0;
	clrf	0+(main@x)+04h
	clrf	1+(main@x)+04h
	line	109
	
l2473:	
;withoutstop.c: 109: i=3;
	movlw	low(03h)
	movwf	(main@i)
	movlw	high(03h)
	movwf	((main@i))+1
	line	110
;withoutstop.c: 110: break;
	goto	l1063
	line	111
	
l1060:	
	goto	l2475
	line	112
	
l1058:	
	line	95
	
l2475:	
	movf	(main@blink+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2645
	movlw	low(07530h)
	subwf	(main@blink),w
u2645:

	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l2455
u2640:
	
l1063:	
	line	113
;withoutstop.c: 111: }
;withoutstop.c: 112: }
;withoutstop.c: 113: RB2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	line	114
	
l2477:	
;withoutstop.c: 114: blink=0;
	clrf	(main@blink)
	clrf	(main@blink+1)
	goto	l2479
	line	115
	
l1057:	
	line	45
	
l2479:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2481:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2655
	movlw	low(03h)
	subwf	(main@i),w
u2655:

	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l2395
u2650:
	goto	l2483
	
l1042:	
	line	117
	
l2483:	
;withoutstop.c: 115: }
;withoutstop.c: 116: }
;withoutstop.c: 117: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	goto	l2363
	line	118
	
l1040:	
	goto	l2363
	line	119
	
l1064:	
	line	15
	goto	l2363
	
l1065:	
	line	120
	
l1066:	
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
