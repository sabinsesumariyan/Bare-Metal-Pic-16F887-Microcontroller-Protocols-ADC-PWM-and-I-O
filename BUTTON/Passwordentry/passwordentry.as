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
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"passwordentry.as"
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
	ds	6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@count
main@count:	; 2 bytes @ 0x0
	ds	2
	global	main@arr
main@arr:	; 6 bytes @ 0x2
	ds	6
	global	main@mat
main@mat:	; 6 bytes @ 0x8
	ds	6
	global	main@enter
main@enter:	; 2 bytes @ 0xE
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x10
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x12
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80     20      20
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
;;Main: autosize = 0, tempsize = 6, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                26    26      0     852
;;                                              0 COMMON     6     6      0
;;                                              0 BANK0     20    20      0
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
;;COMMON               E      6       6       1       42.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     14      14       5       25.0%
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
;;		line 3 in file "E:\KTU\Softwares\mplab\Passwordentry\passwordentry.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  mat             6    8[BANK0 ] int [3]
;;  arr             6    2[BANK0 ] int [3]
;;  i               2   18[BANK0 ] int 
;;  j               2   16[BANK0 ] int 
;;  enter           2   14[BANK0 ] int 
;;  count           2    0[BANK0 ] int 
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
;;      Locals:         0      20       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         6      20       0       0       0
;;Total ram usage:       26 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Passwordentry\passwordentry.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	4
	
l2325:	
;passwordentry.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
	
l2327:	
;passwordentry.c: 5: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	6
	
l2329:	
;passwordentry.c: 6: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	7
	
l2331:	
;passwordentry.c: 7: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	8
	
l2333:	
;passwordentry.c: 8: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	9
	
l2335:	
;passwordentry.c: 9: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	10
	
l2337:	
;passwordentry.c: 10: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	11
	
l2339:	
;passwordentry.c: 11: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	12
	
l2341:	
;passwordentry.c: 12: int i=0, j=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l2343:	
	clrf	(main@j)
	clrf	(main@j+1)
	line	15
	
l2345:	
;passwordentry.c: 13: int arr[3];
;passwordentry.c: 14: int mat[3];
;passwordentry.c: 15: int enter=1;
	movlw	low(01h)
	movwf	(main@enter)
	movlw	high(01h)
	movwf	((main@enter))+1
	line	16
;passwordentry.c: 16: int count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	goto	l2347
	line	17
;passwordentry.c: 17: while(1)
	
l1025:	
	line	19
	
l2347:	
;passwordentry.c: 18: {
;passwordentry.c: 19: if(enter==1)
	movlw	01h
	xorwf	(main@enter),w
	iorwf	(main@enter+1),w
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l2385
u2420:
	line	21
	
l2349:	
;passwordentry.c: 20: {
;passwordentry.c: 21: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l1027
u2430:
	line	24
	
l2351:	
;passwordentry.c: 22: {
;passwordentry.c: 24: arr[i]=1;
	movf	(main@i),w
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
	line	25
	
l2353:	
;passwordentry.c: 25: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	26
	
l2355:	
;passwordentry.c: 26: if(arr[i]==1)
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movlw	01h
	xorwf	0+(??_main+1)+0,w
	iorwf	1+(??_main+1)+0,w
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l1029
u2440:
	line	28
	
l2357:	
;passwordentry.c: 27: {
;passwordentry.c: 28: PORTD=0X06;
	movlw	(06h)
	movwf	(8)	;volatile
	goto	l1029
	line	29
	
l1028:	
	line	30
;passwordentry.c: 29: }
;passwordentry.c: 30: while(RA0==1);
	goto	l1029
	
l1030:	
	
l1029:	
	btfsc	(40/8),(40)&7
	goto	u2451
	goto	u2450
u2451:
	goto	l1029
u2450:
	goto	l1027
	
l1031:	
	line	31
	
l1027:	
	line	32
;passwordentry.c: 31: }
;passwordentry.c: 32: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l2369
u2460:
	goto	l1033
	line	34
	
l2359:	
;passwordentry.c: 33: {
;passwordentry.c: 34: while(RA1==1);
	goto	l1033
	
l1034:	
	
l1033:	
	btfsc	(41/8),(41)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l1033
u2470:
	goto	l2361
	
l1035:	
	line	35
	
l2361:	
;passwordentry.c: 35: arr[i]=2;
	movf	(main@i),w
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
	line	36
	
l2363:	
;passwordentry.c: 36: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	37
	
l2365:	
;passwordentry.c: 37: if(arr[i]==2)
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movlw	02h
	xorwf	0+(??_main+1)+0,w
	iorwf	1+(??_main+1)+0,w
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l2369
u2480:
	line	39
	
l2367:	
;passwordentry.c: 38: {
;passwordentry.c: 39: PORTD=0x5B;
	movlw	(05Bh)
	movwf	(8)	;volatile
	goto	l2369
	line	40
	
l1036:	
	goto	l2369
	line	41
	
l1032:	
	line	42
	
l2369:	
;passwordentry.c: 40: }
;passwordentry.c: 41: }
;passwordentry.c: 42: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l1037
u2490:
	goto	l1038
	line	44
	
l2371:	
;passwordentry.c: 43: {
;passwordentry.c: 44: while(RA2==1);
	goto	l1038
	
l1039:	
	
l1038:	
	btfsc	(42/8),(42)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l1038
u2500:
	goto	l2373
	
l1040:	
	line	45
	
l2373:	
;passwordentry.c: 45: arr[i]=3;
	movf	(main@i),w
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
	line	46
	
l2375:	
;passwordentry.c: 46: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	47
	
l2377:	
;passwordentry.c: 47: if(arr[i]==3)
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movlw	03h
	xorwf	0+(??_main+1)+0,w
	iorwf	1+(??_main+1)+0,w
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l1037
u2510:
	line	49
	
l2379:	
;passwordentry.c: 48: {
;passwordentry.c: 49: PORTD=0X4F;
	movlw	(04Fh)
	movwf	(8)	;volatile
	goto	l1037
	line	50
	
l1041:	
	line	51
	
l1037:	
	line	52
;passwordentry.c: 50: }
;passwordentry.c: 51: }
;passwordentry.c: 52: if(i==3)
	movlw	03h
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l2385
u2520:
	line	54
	
l2381:	
;passwordentry.c: 53: {
;passwordentry.c: 54: enter=2;
	movlw	low(02h)
	movwf	(main@enter)
	movlw	high(02h)
	movwf	((main@enter))+1
	line	55
	
l2383:	
;passwordentry.c: 55: i=0;
	clrf	(main@i)
	clrf	(main@i+1)
	goto	l2385
	line	56
	
l1042:	
	goto	l2385
	line	57
	
l1026:	
	line	58
	
l2385:	
;passwordentry.c: 56: }
;passwordentry.c: 57: }
;passwordentry.c: 58: if(enter==2)
	movlw	02h
	xorwf	(main@enter),w
	iorwf	(main@enter+1),w
	skipz
	goto	u2531
	goto	u2530
u2531:
	goto	l2427
u2530:
	line	60
	
l2387:	
;passwordentry.c: 59: {
;passwordentry.c: 60: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l2399
u2540:
	goto	l1045
	line	62
	
l2389:	
;passwordentry.c: 61: {
;passwordentry.c: 62: while(RA0==1);
	goto	l1045
	
l1046:	
	
l1045:	
	btfsc	(40/8),(40)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l1045
u2550:
	goto	l2391
	
l1047:	
	line	63
	
l2391:	
;passwordentry.c: 63: mat[j]=1;
	movf	(main@j),w
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
	line	64
	
l2393:	
;passwordentry.c: 64: j++;
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	line	65
	
l2395:	
;passwordentry.c: 65: if(mat[j]==1)
	movf	(main@j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@mat&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movlw	01h
	xorwf	0+(??_main+1)+0,w
	iorwf	1+(??_main+1)+0,w
	skipz
	goto	u2561
	goto	u2560
u2561:
	goto	l2399
u2560:
	line	67
	
l2397:	
;passwordentry.c: 66: {
;passwordentry.c: 67: PORTD=0X06;
	movlw	(06h)
	movwf	(8)	;volatile
	goto	l2399
	line	68
	
l1048:	
	goto	l2399
	line	69
	
l1044:	
	line	70
	
l2399:	
;passwordentry.c: 68: }
;passwordentry.c: 69: }
;passwordentry.c: 70: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l2411
u2570:
	goto	l1050
	line	72
	
l2401:	
;passwordentry.c: 71: {
;passwordentry.c: 72: while(RA1==1);
	goto	l1050
	
l1051:	
	
l1050:	
	btfsc	(41/8),(41)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l1050
u2580:
	goto	l2403
	
l1052:	
	line	73
	
l2403:	
;passwordentry.c: 73: mat[j]=2;
	movf	(main@j),w
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
	line	74
	
l2405:	
;passwordentry.c: 74: j++;
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	line	75
	
l2407:	
;passwordentry.c: 75: if(mat[j]==2)
	movf	(main@j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@mat&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movlw	02h
	xorwf	0+(??_main+1)+0,w
	iorwf	1+(??_main+1)+0,w
	skipz
	goto	u2591
	goto	u2590
u2591:
	goto	l2411
u2590:
	line	77
	
l2409:	
;passwordentry.c: 76: {
;passwordentry.c: 77: PORTD=0X5B;
	movlw	(05Bh)
	movwf	(8)	;volatile
	goto	l2411
	line	78
	
l1053:	
	goto	l2411
	line	79
	
l1049:	
	line	80
	
l2411:	
;passwordentry.c: 78: }
;passwordentry.c: 79: }
;passwordentry.c: 80: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l1054
u2600:
	goto	l1055
	line	82
	
l2413:	
;passwordentry.c: 81: {
;passwordentry.c: 82: while(RA2==1);
	goto	l1055
	
l1056:	
	
l1055:	
	btfsc	(42/8),(42)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l1055
u2610:
	goto	l2415
	
l1057:	
	line	83
	
l2415:	
;passwordentry.c: 83: mat[j]=3;
	movf	(main@j),w
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
	line	84
	
l2417:	
;passwordentry.c: 84: j++;
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	line	85
	
l2419:	
;passwordentry.c: 85: if(mat[j]==3)
	movf	(main@j),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@mat&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+1)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+1)+0+1
	movlw	03h
	xorwf	0+(??_main+1)+0,w
	iorwf	1+(??_main+1)+0,w
	skipz
	goto	u2621
	goto	u2620
u2621:
	goto	l1054
u2620:
	line	87
	
l2421:	
;passwordentry.c: 86: {
;passwordentry.c: 87: PORTD=0X4F;
	movlw	(04Fh)
	movwf	(8)	;volatile
	goto	l1054
	line	88
	
l1058:	
	line	89
	
l1054:	
	line	90
;passwordentry.c: 88: }
;passwordentry.c: 89: }
;passwordentry.c: 90: if(j==3)
	movlw	03h
	xorwf	(main@j),w
	iorwf	(main@j+1),w
	skipz
	goto	u2631
	goto	u2630
u2631:
	goto	l2427
u2630:
	line	92
	
l2423:	
;passwordentry.c: 91: {
;passwordentry.c: 92: enter=3;
	movlw	low(03h)
	movwf	(main@enter)
	movlw	high(03h)
	movwf	((main@enter))+1
	line	93
	
l2425:	
;passwordentry.c: 93: j=0;
	clrf	(main@j)
	clrf	(main@j+1)
	goto	l2427
	line	94
	
l1059:	
	goto	l2427
	line	95
	
l1043:	
	line	96
	
l2427:	
;passwordentry.c: 94: }
;passwordentry.c: 95: }
;passwordentry.c: 96: if(enter==3)
	movlw	03h
	xorwf	(main@enter),w
	iorwf	(main@enter+1),w
	skipz
	goto	u2641
	goto	u2640
u2641:
	goto	l1060
u2640:
	line	98
	
l2429:	
;passwordentry.c: 97: {
;passwordentry.c: 98: for(i=0;i<3;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l2431:	
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
	goto	l2435
u2650:
	goto	l2441
	
l2433:	
	goto	l2441
	line	99
	
l1061:	
	line	100
	
l2435:	
;passwordentry.c: 99: {
;passwordentry.c: 100: if(mat[i]==arr[i])
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	movwf	(??_main+0)+0
	addwf	(??_main+0)+0,w
	addlw	main@arr&0ffh
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
	addlw	main@mat&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_main+4)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_main+4)+0+1
	movf	1+(??_main+1)+0,w
	xorwf	1+(??_main+4)+0,w
	skipz
	goto	u2665
	movf	0+(??_main+1)+0,w
	xorwf	0+(??_main+4)+0,w
u2665:

	skipz
	goto	u2661
	goto	u2660
u2661:
	goto	l1063
u2660:
	line	102
	
l2437:	
;passwordentry.c: 101: {
;passwordentry.c: 102: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	103
	
l1063:	
	line	98
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2439:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2675
	movlw	low(03h)
	subwf	(main@i),w
u2675:

	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l2435
u2670:
	goto	l2441
	
l1062:	
	line	105
	
l2441:	
;passwordentry.c: 103: }
;passwordentry.c: 104: }
;passwordentry.c: 105: if(count==3)
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@count),w
	iorwf	(main@count+1),w
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l1060
u2680:
	line	107
	
l2443:	
;passwordentry.c: 106: {
;passwordentry.c: 107: enter=4;
	movlw	low(04h)
	movwf	(main@enter)
	movlw	high(04h)
	movwf	((main@enter))+1
	goto	l1060
	line	108
	
l1064:	
	line	109
	
l1060:	
	line	110
;passwordentry.c: 108: }
;passwordentry.c: 109: }
;passwordentry.c: 110: if(enter==4)
	movlw	04h
	xorwf	(main@enter),w
	iorwf	(main@enter+1),w
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l2347
u2690:
	line	112
	
l2445:	
;passwordentry.c: 111: {
;passwordentry.c: 112: RB0=1;
	bsf	(48/8),(48)&7
	goto	l2347
	line	113
	
l1065:	
	goto	l2347
	line	114
	
l1066:	
	line	17
	goto	l2347
	
l1067:	
	line	115
	
l1068:	
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
