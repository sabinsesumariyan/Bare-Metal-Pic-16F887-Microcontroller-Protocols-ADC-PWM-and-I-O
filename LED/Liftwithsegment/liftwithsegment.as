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
	global	_RA5
_RA5	set	45
	global	_RA6
_RA6	set	46
	global	_RA7
_RA7	set	47
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RC7
_RC7	set	63
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
	file	"liftwithsegment.as"
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
	global	main@arr
main@arr:	; 20 bytes @ 0x0
	ds	20
	global	main@mat
main@mat:	; 20 bytes @ 0x14
	ds	20
	global	main@count
main@count:	; 2 bytes @ 0x28
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x2A
	ds	2
	global	main@enter
main@enter:	; 2 bytes @ 0x2C
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x2E
	ds	2
	global	main@temp
main@temp:	; 2 bytes @ 0x30
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80     50      50
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
;; (0) _main                                                56    56      0    1175
;;                                              0 COMMON     6     6      0
;;                                              0 BANK0     50    50      0
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
;;BANK0               50     32      32       5       62.5%
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
;;		line 4 in file "E:\KTU\Softwares\MP lab\LED\Liftwithsegment\liftwithsegment.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  mat            20   20[BANK0 ] int [10]
;;  arr            20    0[BANK0 ] int [10]
;;  temp            2   48[BANK0 ] int 
;;  i               2   46[BANK0 ] int 
;;  enter           2   44[BANK0 ] int 
;;  j               2   42[BANK0 ] int 
;;  count           2   40[BANK0 ] int 
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
;;      Locals:         0      50       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         6      50       0       0       0
;;Total ram usage:       56 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\LED\Liftwithsegment\liftwithsegment.c"
	line	4
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	5
	
l2518:	
;liftwithsegment.c: 5: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	6
	
l2520:	
;liftwithsegment.c: 6: TRISA=0XFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	7
	
l2522:	
;liftwithsegment.c: 7: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	8
	
l2524:	
;liftwithsegment.c: 8: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	9
	
l2526:	
;liftwithsegment.c: 9: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	10
;liftwithsegment.c: 10: TRISC=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	11
	
l2528:	
;liftwithsegment.c: 11: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	12
	
l2530:	
;liftwithsegment.c: 12: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	13
	
l2532:	
;liftwithsegment.c: 13: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	14
	
l2534:	
;liftwithsegment.c: 14: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	15
	
l2536:	
;liftwithsegment.c: 15: int i=0, j=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l2538:	
	clrf	(main@j)
	clrf	(main@j+1)
	line	18
;liftwithsegment.c: 16: int arr[10];
;liftwithsegment.c: 17: int mat[10];
;liftwithsegment.c: 18: int enter=1;
	movlw	low(01h)
	movwf	(main@enter)
	movlw	high(01h)
	movwf	((main@enter))+1
	line	19
	
l2540:	
;liftwithsegment.c: 19: int count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	20
	
l2542:	
;liftwithsegment.c: 20: int temp=0;
	clrf	(main@temp)
	clrf	(main@temp+1)
	line	21
;liftwithsegment.c: 21: while(1)
	
l1025:	
	line	23
;liftwithsegment.c: 22: {
;liftwithsegment.c: 23: if(enter==1)
	movlw	01h
	xorwf	(main@enter),w
	iorwf	(main@enter+1),w
	skipz
	goto	u2911
	goto	u2910
u2911:
	goto	l1026
u2910:
	line	25
	
l2544:	
;liftwithsegment.c: 24: {
;liftwithsegment.c: 25: if(RA6==1)
	btfss	(46/8),(46)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l2554
u2920:
	goto	l1028
	line	27
	
l2546:	
;liftwithsegment.c: 26: {
;liftwithsegment.c: 27: while(RA6==1);
	goto	l1028
	
l1029:	
	
l1028:	
	btfsc	(46/8),(46)&7
	goto	u2931
	goto	u2930
u2931:
	goto	l1028
u2930:
	goto	l2548
	
l1030:	
	line	28
	
l2548:	
;liftwithsegment.c: 28: arr[i]= 1;
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
	line	29
	
l2550:	
;liftwithsegment.c: 29: if(arr[0]==1)
	movlw	01h
	xorwf	(main@arr),w
	iorwf	(main@arr+1),w
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l1031
u2940:
	line	31
	
l2552:	
;liftwithsegment.c: 30: {
;liftwithsegment.c: 31: PORTD=0X06;
	movlw	(06h)
	movwf	(8)	;volatile
	line	32
	
l1031:	
	line	33
;liftwithsegment.c: 32: }
;liftwithsegment.c: 33: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l2554
	line	34
	
l1027:	
	line	35
	
l2554:	
;liftwithsegment.c: 34: }
;liftwithsegment.c: 35: if(RA7==1)
	btfss	(47/8),(47)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l2564
u2950:
	goto	l1033
	line	37
	
l2556:	
;liftwithsegment.c: 36: {
;liftwithsegment.c: 37: while(RA7==1);
	goto	l1033
	
l1034:	
	
l1033:	
	btfsc	(47/8),(47)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l1033
u2960:
	goto	l2558
	
l1035:	
	line	38
	
l2558:	
;liftwithsegment.c: 38: arr[i]= 2;
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
	line	39
	
l2560:	
;liftwithsegment.c: 39: if(arr[1]==2)
	movlw	02h
	xorwf	0+(main@arr)+02h,w
	iorwf	1+(main@arr)+02h,w
	skipz
	goto	u2971
	goto	u2970
u2971:
	goto	l1036
u2970:
	line	41
	
l2562:	
;liftwithsegment.c: 40: {
;liftwithsegment.c: 41: PORTD=0X5B;
	movlw	(05Bh)
	movwf	(8)	;volatile
	line	42
	
l1036:	
	line	43
;liftwithsegment.c: 42: }
;liftwithsegment.c: 43: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l2564
	line	44
	
l1032:	
	line	45
	
l2564:	
;liftwithsegment.c: 44: }
;liftwithsegment.c: 45: if(RC7==1)
	btfss	(63/8),(63)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l1037
u2980:
	goto	l1038
	line	47
	
l2566:	
;liftwithsegment.c: 46: {
;liftwithsegment.c: 47: while(RC7==1);
	goto	l1038
	
l1039:	
	
l1038:	
	btfsc	(63/8),(63)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l1038
u2990:
	goto	l2568
	
l1040:	
	line	48
	
l2568:	
;liftwithsegment.c: 48: arr[i]= 3;
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
	line	49
	
l2570:	
;liftwithsegment.c: 49: if(arr[2]==3)
	movlw	03h
	xorwf	0+(main@arr)+04h,w
	iorwf	1+(main@arr)+04h,w
	skipz
	goto	u3001
	goto	u3000
u3001:
	goto	l1041
u3000:
	line	51
	
l2572:	
;liftwithsegment.c: 50: {
;liftwithsegment.c: 51: PORTD=0X4F;
	movlw	(04Fh)
	movwf	(8)	;volatile
	line	52
	
l1041:	
	line	53
;liftwithsegment.c: 52: }
;liftwithsegment.c: 53: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	54
	
l1037:	
	line	55
;liftwithsegment.c: 54: }
;liftwithsegment.c: 55: if(i==3)
	movlw	03h
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l1026
u3010:
	line	57
	
l2574:	
;liftwithsegment.c: 56: {
;liftwithsegment.c: 57: enter=2;
	movlw	low(02h)
	movwf	(main@enter)
	movlw	high(02h)
	movwf	((main@enter))+1
	goto	l1026
	line	60
	
l1042:	
	line	61
	
l1026:	
	line	62
;liftwithsegment.c: 60: }
;liftwithsegment.c: 61: }
;liftwithsegment.c: 62: if(enter==2)
	movlw	02h
	xorwf	(main@enter),w
	iorwf	(main@enter+1),w
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l1043
u3020:
	line	64
	
l2576:	
;liftwithsegment.c: 63: {
;liftwithsegment.c: 64: if(RA6==1)
	btfss	(46/8),(46)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l2586
u3030:
	line	66
	
l2578:	
;liftwithsegment.c: 65: {
;liftwithsegment.c: 66: mat[j]= 1;
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
	line	67
	
l2580:	
;liftwithsegment.c: 67: j++;
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	line	68
;liftwithsegment.c: 68: while(RA6==1);
	goto	l1045
	
l1046:	
	
l1045:	
	btfsc	(46/8),(46)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l1045
u3040:
	goto	l2582
	
l1047:	
	line	69
	
l2582:	
;liftwithsegment.c: 69: if(mat[0]==1)
	movlw	01h
	xorwf	(main@mat),w
	iorwf	(main@mat+1),w
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l2586
u3050:
	line	71
	
l2584:	
;liftwithsegment.c: 70: {
;liftwithsegment.c: 71: PORTD=0X06;
	movlw	(06h)
	movwf	(8)	;volatile
	goto	l2586
	line	72
	
l1048:	
	goto	l2586
	line	73
	
l1044:	
	line	74
	
l2586:	
;liftwithsegment.c: 72: }
;liftwithsegment.c: 73: }
;liftwithsegment.c: 74: if(RA7==1)
	btfss	(47/8),(47)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l2596
u3060:
	line	77
	
l2588:	
;liftwithsegment.c: 75: {
;liftwithsegment.c: 77: mat[j]= 2;
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
	line	78
	
l2590:	
;liftwithsegment.c: 78: j++;
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	line	79
;liftwithsegment.c: 79: while(RA7==1);
	goto	l1050
	
l1051:	
	
l1050:	
	btfsc	(47/8),(47)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l1050
u3070:
	goto	l2592
	
l1052:	
	line	80
	
l2592:	
;liftwithsegment.c: 80: if(mat[1]==2)
	movlw	02h
	xorwf	0+(main@mat)+02h,w
	iorwf	1+(main@mat)+02h,w
	skipz
	goto	u3081
	goto	u3080
u3081:
	goto	l2596
u3080:
	line	82
	
l2594:	
;liftwithsegment.c: 81: {
;liftwithsegment.c: 82: PORTD=0X5B;
	movlw	(05Bh)
	movwf	(8)	;volatile
	goto	l2596
	line	83
	
l1053:	
	goto	l2596
	line	84
	
l1049:	
	line	85
	
l2596:	
;liftwithsegment.c: 83: }
;liftwithsegment.c: 84: }
;liftwithsegment.c: 85: if(RC7==1)
	btfss	(63/8),(63)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l1054
u3090:
	line	87
	
l2598:	
;liftwithsegment.c: 86: {
;liftwithsegment.c: 87: mat[j]= 3;
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
	line	88
	
l2600:	
;liftwithsegment.c: 88: j++;
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	line	89
;liftwithsegment.c: 89: while(RC7==1);
	goto	l1055
	
l1056:	
	
l1055:	
	btfsc	(63/8),(63)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l1055
u3100:
	goto	l2602
	
l1057:	
	line	90
	
l2602:	
;liftwithsegment.c: 90: if(mat[2]==3)
	movlw	03h
	xorwf	0+(main@mat)+04h,w
	iorwf	1+(main@mat)+04h,w
	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l1054
u3110:
	line	92
	
l2604:	
;liftwithsegment.c: 91: {
;liftwithsegment.c: 92: PORTD=0X4F;
	movlw	(04Fh)
	movwf	(8)	;volatile
	goto	l1054
	line	93
	
l1058:	
	line	94
	
l1054:	
	line	95
;liftwithsegment.c: 93: }
;liftwithsegment.c: 94: }
;liftwithsegment.c: 95: if(j==3)
	movlw	03h
	xorwf	(main@j),w
	iorwf	(main@j+1),w
	skipz
	goto	u3121
	goto	u3120
u3121:
	goto	l1043
u3120:
	line	98
	
l2606:	
;liftwithsegment.c: 96: {
;liftwithsegment.c: 98: enter=3;
	movlw	low(03h)
	movwf	(main@enter)
	movlw	high(03h)
	movwf	((main@enter))+1
	goto	l1043
	line	100
	
l1059:	
	line	101
	
l1043:	
	line	102
;liftwithsegment.c: 100: }
;liftwithsegment.c: 101: }
;liftwithsegment.c: 102: if(enter==3)
	movlw	03h
	xorwf	(main@enter),w
	iorwf	(main@enter+1),w
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l2622
u3130:
	line	104
	
l2608:	
;liftwithsegment.c: 103: {
;liftwithsegment.c: 104: for(i=0;i<3;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l2610:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3145
	movlw	low(03h)
	subwf	(main@i),w
u3145:

	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l2614
u3140:
	goto	l2622
	
l2612:	
	goto	l2622
	line	105
	
l1061:	
	line	106
	
l2614:	
;liftwithsegment.c: 105: {
;liftwithsegment.c: 106: if(mat[i]==arr[i])
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
	goto	u3155
	movf	0+(??_main+1)+0,w
	xorwf	0+(??_main+4)+0,w
u3155:

	skipz
	goto	u3151
	goto	u3150
u3151:
	goto	l1063
u3150:
	line	108
	
l2616:	
;liftwithsegment.c: 107: {
;liftwithsegment.c: 108: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	109
	
l1063:	
	line	110
;liftwithsegment.c: 109: }
;liftwithsegment.c: 110: if(count==3)
	movlw	03h
	xorwf	(main@count),w
	iorwf	(main@count+1),w
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l1064
u3160:
	line	112
	
l2618:	
;liftwithsegment.c: 111: {
;liftwithsegment.c: 112: enter=4;
	movlw	low(04h)
	movwf	(main@enter)
	movlw	high(04h)
	movwf	((main@enter))+1
	line	113
;liftwithsegment.c: 113: PORTC=0X06;
	movlw	(06h)
	movwf	(7)	;volatile
	line	114
	
l1064:	
	line	104
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2620:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3175
	movlw	low(03h)
	subwf	(main@i),w
u3175:

	skipc
	goto	u3171
	goto	u3170
u3171:
	goto	l2614
u3170:
	goto	l2622
	
l1062:	
	goto	l2622
	line	116
	
l1060:	
	line	117
	
l2622:	
;liftwithsegment.c: 114: }
;liftwithsegment.c: 115: }
;liftwithsegment.c: 116: }
;liftwithsegment.c: 117: if(enter==4)
	movlw	04h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@enter),w
	iorwf	(main@enter+1),w
	skipz
	goto	u3181
	goto	u3180
u3181:
	goto	l1025
u3180:
	line	120
	
l2624:	
;liftwithsegment.c: 118: {
;liftwithsegment.c: 120: if(RA0==1 && temp==0)
	btfss	(40/8),(40)&7
	goto	u3191
	goto	u3190
u3191:
	goto	l1066
u3190:
	
l2626:	
	movf	((main@temp+1)),w
	iorwf	((main@temp)),w
	skipz
	goto	u3201
	goto	u3200
u3201:
	goto	l1066
u3200:
	goto	l1067
	line	122
	
l2628:	
;liftwithsegment.c: 121: {
;liftwithsegment.c: 122: while(RA0==1);
	goto	l1067
	
l1068:	
	
l1067:	
	btfsc	(40/8),(40)&7
	goto	u3211
	goto	u3210
u3211:
	goto	l1067
u3210:
	
l1069:	
	line	123
;liftwithsegment.c: 123: RB0=0;
	bcf	(48/8),(48)&7
	line	124
;liftwithsegment.c: 124: RB1=0;
	bcf	(49/8),(49)&7
	line	125
	
l1066:	
	line	127
;liftwithsegment.c: 125: }
;liftwithsegment.c: 127: if(RA3==1 && temp==0)
	btfss	(43/8),(43)&7
	goto	u3221
	goto	u3220
u3221:
	goto	l2636
u3220:
	
l2630:	
	movf	((main@temp+1)),w
	iorwf	((main@temp)),w
	skipz
	goto	u3231
	goto	u3230
u3231:
	goto	l2636
u3230:
	line	129
	
l2632:	
;liftwithsegment.c: 128: {
;liftwithsegment.c: 129: RB0=0;
	bcf	(48/8),(48)&7
	line	130
;liftwithsegment.c: 130: RB1=0;
	bcf	(49/8),(49)&7
	line	131
	
l2634:	
;liftwithsegment.c: 131: PORTC=0X06;
	movlw	(06h)
	movwf	(7)	;volatile
	goto	l2636
	line	132
	
l1070:	
	line	134
	
l2636:	
;liftwithsegment.c: 132: }
;liftwithsegment.c: 134: if(RA1==1 && temp==0)
	btfss	(41/8),(41)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l2644
u3240:
	
l2638:	
	movf	((main@temp+1)),w
	iorwf	((main@temp)),w
	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l2644
u3250:
	goto	l1072
	line	136
	
l2640:	
;liftwithsegment.c: 135: {
;liftwithsegment.c: 136: while(RA1==1);
	goto	l1072
	
l1073:	
	
l1072:	
	btfsc	(41/8),(41)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l1072
u3260:
	
l1074:	
	line	137
;liftwithsegment.c: 137: RB0=1;
	bsf	(48/8),(48)&7
	line	138
	
l2642:	
;liftwithsegment.c: 138: temp=1;
	movlw	low(01h)
	movwf	(main@temp)
	movlw	high(01h)
	movwf	((main@temp))+1
	goto	l2644
	line	139
	
l1071:	
	line	140
	
l2644:	
;liftwithsegment.c: 139: }
;liftwithsegment.c: 140: if(RA4==1 && temp==1 )
	btfss	(44/8),(44)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l2652
u3270:
	
l2646:	
	movlw	01h
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3281
	goto	u3280
u3281:
	goto	l2652
u3280:
	line	142
	
l2648:	
;liftwithsegment.c: 141: {
;liftwithsegment.c: 142: RB0=0;
	bcf	(48/8),(48)&7
	line	143
	
l2650:	
;liftwithsegment.c: 143: PORTC=0X5B;
	movlw	(05Bh)
	movwf	(7)	;volatile
	line	144
;liftwithsegment.c: 144: temp=11;
	movlw	low(0Bh)
	movwf	(main@temp)
	movlw	high(0Bh)
	movwf	((main@temp))+1
	goto	l2652
	line	145
	
l1075:	
	line	146
	
l2652:	
;liftwithsegment.c: 145: }
;liftwithsegment.c: 146: if(RA0==1 && temp==11)
	btfss	(40/8),(40)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l2660
u3290:
	
l2654:	
	movlw	0Bh
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3301
	goto	u3300
u3301:
	goto	l2660
u3300:
	line	148
	
l2656:	
;liftwithsegment.c: 147: {
;liftwithsegment.c: 148: RB1=1;
	bsf	(49/8),(49)&7
	line	149
	
l2658:	
;liftwithsegment.c: 149: temp=20;
	movlw	low(014h)
	movwf	(main@temp)
	movlw	high(014h)
	movwf	((main@temp))+1
	goto	l2660
	line	150
	
l1076:	
	line	151
	
l2660:	
;liftwithsegment.c: 150: }
;liftwithsegment.c: 151: if(RA3==1 && temp==20)
	btfss	(43/8),(43)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l2668
u3310:
	
l2662:	
	movlw	014h
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3321
	goto	u3320
u3321:
	goto	l2668
u3320:
	line	153
	
l2664:	
;liftwithsegment.c: 152: {
;liftwithsegment.c: 153: PORTC=0X06;
	movlw	(06h)
	movwf	(7)	;volatile
	line	154
	
l2666:	
;liftwithsegment.c: 154: temp=0;
	clrf	(main@temp)
	clrf	(main@temp+1)
	goto	l2668
	line	155
	
l1077:	
	line	156
	
l2668:	
;liftwithsegment.c: 155: }
;liftwithsegment.c: 156: if(RA2==1 && temp==0)
	btfss	(42/8),(42)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l2676
u3330:
	
l2670:	
	movf	((main@temp+1)),w
	iorwf	((main@temp)),w
	skipz
	goto	u3341
	goto	u3340
u3341:
	goto	l2676
u3340:
	goto	l1079
	line	158
	
l2672:	
;liftwithsegment.c: 157: {
;liftwithsegment.c: 158: while(RA1==1);
	goto	l1079
	
l1080:	
	
l1079:	
	btfsc	(41/8),(41)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l1079
u3350:
	
l1081:	
	line	159
;liftwithsegment.c: 159: RB0=1;
	bsf	(48/8),(48)&7
	line	160
	
l2674:	
;liftwithsegment.c: 160: temp=2;
	movlw	low(02h)
	movwf	(main@temp)
	movlw	high(02h)
	movwf	((main@temp))+1
	goto	l2676
	line	161
	
l1078:	
	line	162
	
l2676:	
;liftwithsegment.c: 161: }
;liftwithsegment.c: 162: if(RA5==1 && temp==2)
	btfss	(45/8),(45)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l2684
u3360:
	
l2678:	
	movlw	02h
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3371
	goto	u3370
u3371:
	goto	l2684
u3370:
	line	164
	
l2680:	
;liftwithsegment.c: 163: {
;liftwithsegment.c: 164: RB0=0;
	bcf	(48/8),(48)&7
	line	165
	
l2682:	
;liftwithsegment.c: 165: PORTC=0X4F;
	movlw	(04Fh)
	movwf	(7)	;volatile
	line	166
;liftwithsegment.c: 166: temp=12;
	movlw	low(0Ch)
	movwf	(main@temp)
	movlw	high(0Ch)
	movwf	((main@temp))+1
	goto	l2684
	line	167
	
l1082:	
	line	168
	
l2684:	
;liftwithsegment.c: 167: }
;liftwithsegment.c: 168: if(RA2==1 && temp==11)
	btfss	(42/8),(42)&7
	goto	u3381
	goto	u3380
u3381:
	goto	l2692
u3380:
	
l2686:	
	movlw	0Bh
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3391
	goto	u3390
u3391:
	goto	l2692
u3390:
	goto	l1084
	line	170
	
l2688:	
;liftwithsegment.c: 169: {
;liftwithsegment.c: 170: while(RA1==1);
	goto	l1084
	
l1085:	
	
l1084:	
	btfsc	(41/8),(41)&7
	goto	u3401
	goto	u3400
u3401:
	goto	l1084
u3400:
	
l1086:	
	line	171
;liftwithsegment.c: 171: RB0=1;
	bsf	(48/8),(48)&7
	line	172
	
l2690:	
;liftwithsegment.c: 172: temp=3;
	movlw	low(03h)
	movwf	(main@temp)
	movlw	high(03h)
	movwf	((main@temp))+1
	goto	l2692
	line	173
	
l1083:	
	line	174
	
l2692:	
;liftwithsegment.c: 173: }
;liftwithsegment.c: 174: if(RA5==1 && temp==3)
	btfss	(45/8),(45)&7
	goto	u3411
	goto	u3410
u3411:
	goto	l2700
u3410:
	
l2694:	
	movlw	03h
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3421
	goto	u3420
u3421:
	goto	l2700
u3420:
	line	176
	
l2696:	
;liftwithsegment.c: 175: {
;liftwithsegment.c: 176: RB0=0;
	bcf	(48/8),(48)&7
	line	177
	
l2698:	
;liftwithsegment.c: 177: PORTC=0X4F;
	movlw	(04Fh)
	movwf	(7)	;volatile
	line	178
;liftwithsegment.c: 178: temp=13;
	movlw	low(0Dh)
	movwf	(main@temp)
	movlw	high(0Dh)
	movwf	((main@temp))+1
	goto	l2700
	line	179
	
l1087:	
	line	181
	
l2700:	
;liftwithsegment.c: 179: }
;liftwithsegment.c: 181: if(RA1==1 && temp==12)
	btfss	(41/8),(41)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l2708
u3430:
	
l2702:	
	movlw	0Ch
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3441
	goto	u3440
u3441:
	goto	l2708
u3440:
	goto	l1089
	line	183
	
l2704:	
;liftwithsegment.c: 182: {
;liftwithsegment.c: 183: while(RA1==1);
	goto	l1089
	
l1090:	
	
l1089:	
	btfsc	(41/8),(41)&7
	goto	u3451
	goto	u3450
u3451:
	goto	l1089
u3450:
	
l1091:	
	line	184
;liftwithsegment.c: 184: RB1=1;
	bsf	(49/8),(49)&7
	line	185
	
l2706:	
;liftwithsegment.c: 185: temp=9;
	movlw	low(09h)
	movwf	(main@temp)
	movlw	high(09h)
	movwf	((main@temp))+1
	goto	l2708
	line	186
	
l1088:	
	line	187
	
l2708:	
;liftwithsegment.c: 186: }
;liftwithsegment.c: 187: if(RA1==1 && temp==9)
	btfss	(41/8),(41)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l2716
u3460:
	
l2710:	
	movlw	09h
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3471
	goto	u3470
u3471:
	goto	l2716
u3470:
	line	189
	
l2712:	
;liftwithsegment.c: 188: {
;liftwithsegment.c: 189: PORTC=0X5B;
	movlw	(05Bh)
	movwf	(7)	;volatile
	line	190
	
l2714:	
;liftwithsegment.c: 190: RB1=0;
	bcf	(49/8),(49)&7
	line	191
;liftwithsegment.c: 191: temp=21;
	movlw	low(015h)
	movwf	(main@temp)
	movlw	high(015h)
	movwf	((main@temp))+1
	goto	l2716
	line	192
	
l1092:	
	line	193
	
l2716:	
;liftwithsegment.c: 192: }
;liftwithsegment.c: 193: if(RA1==1 && temp==13)
	btfss	(41/8),(41)&7
	goto	u3481
	goto	u3480
u3481:
	goto	l2724
u3480:
	
l2718:	
	movlw	0Dh
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3491
	goto	u3490
u3491:
	goto	l2724
u3490:
	goto	l1094
	line	195
	
l2720:	
;liftwithsegment.c: 194: {
;liftwithsegment.c: 195: while(RA1==1);
	goto	l1094
	
l1095:	
	
l1094:	
	btfsc	(41/8),(41)&7
	goto	u3501
	goto	u3500
u3501:
	goto	l1094
u3500:
	
l1096:	
	line	196
;liftwithsegment.c: 196: RB1=1;
	bsf	(49/8),(49)&7
	line	197
	
l2722:	
;liftwithsegment.c: 197: temp=4;
	movlw	low(04h)
	movwf	(main@temp)
	movlw	high(04h)
	movwf	((main@temp))+1
	goto	l2724
	line	198
	
l1093:	
	line	199
	
l2724:	
;liftwithsegment.c: 198: }
;liftwithsegment.c: 199: if(RA4==1 && temp==4)
	btfss	(44/8),(44)&7
	goto	u3511
	goto	u3510
u3511:
	goto	l2732
u3510:
	
l2726:	
	movlw	04h
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3521
	goto	u3520
u3521:
	goto	l2732
u3520:
	line	201
	
l2728:	
;liftwithsegment.c: 200: {
;liftwithsegment.c: 201: PORTC=0X5B;
	movlw	(05Bh)
	movwf	(7)	;volatile
	line	202
	
l2730:	
;liftwithsegment.c: 202: RB1=0;
	bcf	(49/8),(49)&7
	line	203
;liftwithsegment.c: 203: temp=14;
	movlw	low(0Eh)
	movwf	(main@temp)
	movlw	high(0Eh)
	movwf	((main@temp))+1
	goto	l2732
	line	204
	
l1097:	
	line	205
	
l2732:	
;liftwithsegment.c: 204: }
;liftwithsegment.c: 205: if(RA0==1 && temp==13)
	btfss	(40/8),(40)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l2740
u3530:
	
l2734:	
	movlw	0Dh
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3541
	goto	u3540
u3541:
	goto	l2740
u3540:
	goto	l1099
	line	207
	
l2736:	
;liftwithsegment.c: 206: {
;liftwithsegment.c: 207: while(RA0==1);
	goto	l1099
	
l1100:	
	
l1099:	
	btfsc	(40/8),(40)&7
	goto	u3551
	goto	u3550
u3551:
	goto	l1099
u3550:
	
l1101:	
	line	208
;liftwithsegment.c: 208: RB1=1;
	bsf	(49/8),(49)&7
	line	209
	
l2738:	
;liftwithsegment.c: 209: temp=5;
	movlw	low(05h)
	movwf	(main@temp)
	movlw	high(05h)
	movwf	((main@temp))+1
	goto	l2740
	line	210
	
l1098:	
	line	211
	
l2740:	
;liftwithsegment.c: 210: }
;liftwithsegment.c: 211: if(RA3==1 && temp==5)
	btfss	(43/8),(43)&7
	goto	u3561
	goto	u3560
u3561:
	goto	l2750
u3560:
	
l2742:	
	movlw	05h
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l2750
u3570:
	line	213
	
l2744:	
;liftwithsegment.c: 212: {
;liftwithsegment.c: 213: RB1=0;
	bcf	(49/8),(49)&7
	line	214
	
l2746:	
;liftwithsegment.c: 214: temp=0;
	clrf	(main@temp)
	clrf	(main@temp+1)
	line	215
	
l2748:	
;liftwithsegment.c: 215: PORTC=0X06;
	movlw	(06h)
	movwf	(7)	;volatile
	goto	l2750
	line	216
	
l1102:	
	line	217
	
l2750:	
;liftwithsegment.c: 216: }
;liftwithsegment.c: 217: if(RA0==1 && temp==12)
	btfss	(40/8),(40)&7
	goto	u3581
	goto	u3580
u3581:
	goto	l2758
u3580:
	
l2752:	
	movlw	0Ch
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l2758
u3590:
	goto	l1104
	line	219
	
l2754:	
;liftwithsegment.c: 218: {
;liftwithsegment.c: 219: while(RA0==1);
	goto	l1104
	
l1105:	
	
l1104:	
	btfsc	(40/8),(40)&7
	goto	u3601
	goto	u3600
u3601:
	goto	l1104
u3600:
	
l1106:	
	line	220
;liftwithsegment.c: 220: RB1=1;
	bsf	(49/8),(49)&7
	line	221
	
l2756:	
;liftwithsegment.c: 221: temp=8;
	movlw	low(08h)
	movwf	(main@temp)
	movlw	high(08h)
	movwf	((main@temp))+1
	goto	l2758
	line	222
	
l1103:	
	line	223
	
l2758:	
;liftwithsegment.c: 222: }
;liftwithsegment.c: 223: if(RA3==1 && temp==8)
	btfss	(43/8),(43)&7
	goto	u3611
	goto	u3610
u3611:
	goto	l2768
u3610:
	
l2760:	
	movlw	08h
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3621
	goto	u3620
u3621:
	goto	l2768
u3620:
	line	225
	
l2762:	
;liftwithsegment.c: 224: {
;liftwithsegment.c: 225: RB1=0;
	bcf	(49/8),(49)&7
	line	226
	
l2764:	
;liftwithsegment.c: 226: temp=0;
	clrf	(main@temp)
	clrf	(main@temp+1)
	line	227
	
l2766:	
;liftwithsegment.c: 227: PORTC=0X06;
	movlw	(06h)
	movwf	(7)	;volatile
	goto	l2768
	line	228
	
l1107:	
	line	229
	
l2768:	
;liftwithsegment.c: 228: }
;liftwithsegment.c: 229: if(RA0==1 && temp==14)
	btfss	(40/8),(40)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l2776
u3630:
	
l2770:	
	movlw	0Eh
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3641
	goto	u3640
u3641:
	goto	l2776
u3640:
	goto	l1109
	line	231
	
l2772:	
;liftwithsegment.c: 230: {
;liftwithsegment.c: 231: while(RA0==1);
	goto	l1109
	
l1110:	
	
l1109:	
	btfsc	(40/8),(40)&7
	goto	u3651
	goto	u3650
u3651:
	goto	l1109
u3650:
	
l1111:	
	line	232
;liftwithsegment.c: 232: RB1=1;
	bsf	(49/8),(49)&7
	line	233
	
l2774:	
;liftwithsegment.c: 233: temp=6;
	movlw	low(06h)
	movwf	(main@temp)
	movlw	high(06h)
	movwf	((main@temp))+1
	goto	l2776
	line	234
	
l1108:	
	line	235
	
l2776:	
;liftwithsegment.c: 234: }
;liftwithsegment.c: 235: if(RA3==1 && temp==6)
	btfss	(43/8),(43)&7
	goto	u3661
	goto	u3660
u3661:
	goto	l1025
u3660:
	
l2778:	
	movlw	06h
	xorwf	(main@temp),w
	iorwf	(main@temp+1),w
	skipz
	goto	u3671
	goto	u3670
u3671:
	goto	l1025
u3670:
	line	237
	
l2780:	
;liftwithsegment.c: 236: {
;liftwithsegment.c: 237: RB1=0;
	bcf	(49/8),(49)&7
	line	238
	
l2782:	
;liftwithsegment.c: 238: PORTC=0X06;
	movlw	(06h)
	movwf	(7)	;volatile
	line	239
	
l2784:	
;liftwithsegment.c: 239: temp=0;
	clrf	(main@temp)
	clrf	(main@temp+1)
	goto	l1025
	line	240
	
l1112:	
	goto	l1025
	line	241
	
l1065:	
	goto	l1025
	line	242
	
l1113:	
	line	21
	goto	l1025
	
l1114:	
	line	243
	
l1115:	
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
