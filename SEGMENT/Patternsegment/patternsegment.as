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
	global	_PORTA
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:
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
	file	"patternsegment.as"
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
	global	?_sabin
?_sabin:	; 2 bytes @ 0x0
	global	sabin@x
sabin@x:	; 2 bytes @ 0x0
	ds	2
	global	sabin@y
sabin@y:	; 2 bytes @ 0x2
	ds	2
	global	sabin@z
sabin@z:	; 2 bytes @ 0x4
	ds	2
	global	??_sabin
??_sabin:	; 0 bytes @ 0x6
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x7
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	sabin@i
sabin@i:	; 2 bytes @ 0x0
	ds	2
	global	sabin@j
sabin@j:	; 2 bytes @ 0x2
	ds	2
	global	sabin@odd
sabin@odd:	; 2 bytes @ 0x4
	ds	2
	global	sabin@even
sabin@even:	; 2 bytes @ 0x6
	ds	2
	global	sabin@count
sabin@count:	; 2 bytes @ 0x8
	ds	2
	global	main@temp
main@temp:	; 2 bytes @ 0xA
	ds	2
	global	main@y
main@y:	; 2 bytes @ 0xC
	ds	2
	global	main@z
main@z:	; 2 bytes @ 0xE
	ds	2
	global	main@x
main@x:	; 2 bytes @ 0x10
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80     18      18
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
;;   _main->_sabin
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
;; (0) _main                                                 8     8      0    1314
;;                                             10 BANK0      8     8      0
;;                              _sabin
;; ---------------------------------------------------------------------------------
;; (1) _sabin                                               17    11      6     545
;;                                              0 COMMON     7     1      6
;;                                              0 BANK0     10    10      0
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
;;COMMON               E      7       7       1       50.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     12      12       5       22.5%
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
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 59 in file "E:\KTU\Softwares\mplab\Patternsegment\patternsegment.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2   16[BANK0 ] int 
;;  z               2   14[BANK0 ] int 
;;  y               2   12[BANK0 ] int 
;;  temp            2   10[BANK0 ] int 
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
;;      Locals:         0       8       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_sabin
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Patternsegment\patternsegment.c"
	line	59
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	60
	
l2451:	
;patternsegment.c: 60: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	61
	
l2453:	
;patternsegment.c: 61: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	62
	
l2455:	
;patternsegment.c: 62: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	63
	
l2457:	
;patternsegment.c: 63: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	64
	
l2459:	
;patternsegment.c: 64: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	65
	
l2461:	
;patternsegment.c: 65: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	66
	
l2463:	
;patternsegment.c: 66: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	67
	
l2465:	
;patternsegment.c: 67: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	68
	
l2467:	
;patternsegment.c: 68: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	69
	
l2469:	
;patternsegment.c: 69: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	70
	
l2471:	
;patternsegment.c: 70: int x=0,y=0,z=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@x)
	clrf	(main@x+1)
	
l2473:	
	clrf	(main@y)
	clrf	(main@y+1)
	
l2475:	
	clrf	(main@z)
	clrf	(main@z+1)
	line	71
	
l2477:	
;patternsegment.c: 71: int temp=0;
	clrf	(main@temp)
	clrf	(main@temp+1)
	goto	l2479
	line	72
;patternsegment.c: 72: while(1)
	
l1052:	
	line	74
	
l2479:	
;patternsegment.c: 73: {
;patternsegment.c: 74: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l2485
u2750:
	goto	l1054
	line	76
	
l2481:	
;patternsegment.c: 75: {
;patternsegment.c: 76: while(RA0==1);
	goto	l1054
	
l1055:	
	
l1054:	
	btfsc	(40/8),(40)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l1054
u2760:
	goto	l2483
	
l1056:	
	line	77
	
l2483:	
;patternsegment.c: 77: x++;
	movlw	low(01h)
	addwf	(main@x),f
	skipnc
	incf	(main@x+1),f
	movlw	high(01h)
	addwf	(main@x+1),f
	goto	l2485
	line	78
	
l1053:	
	line	79
	
l2485:	
;patternsegment.c: 78: }
;patternsegment.c: 79: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l2491
u2770:
	goto	l1058
	line	81
	
l2487:	
;patternsegment.c: 80: {
;patternsegment.c: 81: while(RA1==1);
	goto	l1058
	
l1059:	
	
l1058:	
	btfsc	(41/8),(41)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l1058
u2780:
	goto	l2489
	
l1060:	
	line	82
	
l2489:	
;patternsegment.c: 82: y++;
	movlw	low(01h)
	addwf	(main@y),f
	skipnc
	incf	(main@y+1),f
	movlw	high(01h)
	addwf	(main@y+1),f
	goto	l2491
	line	83
	
l1057:	
	line	84
	
l2491:	
;patternsegment.c: 83: }
;patternsegment.c: 84: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l1061
u2790:
	goto	l1062
	line	86
	
l2493:	
;patternsegment.c: 85: {
;patternsegment.c: 86: while(RA2==1);
	goto	l1062
	
l1063:	
	
l1062:	
	btfsc	(42/8),(42)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l1062
u2800:
	goto	l2495
	
l1064:	
	line	87
	
l2495:	
;patternsegment.c: 87: z++;
	movlw	low(01h)
	addwf	(main@z),f
	skipnc
	incf	(main@z+1),f
	movlw	high(01h)
	addwf	(main@z+1),f
	line	88
	
l1061:	
	line	89
;patternsegment.c: 88: }
;patternsegment.c: 89: if(x==1)
	movlw	01h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2811
	goto	u2810
u2811:
	goto	l1065
u2810:
	line	91
	
l2497:	
;patternsegment.c: 90: {
;patternsegment.c: 91: PORTB=0XBF;
	movlw	(0BFh)
	movwf	(6)	;volatile
	line	92
	
l1065:	
	line	93
;patternsegment.c: 92: }
;patternsegment.c: 93: if(x==2)
	movlw	02h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l1066
u2820:
	line	95
	
l2499:	
;patternsegment.c: 94: {
;patternsegment.c: 95: PORTB=0X06;
	movlw	(06h)
	movwf	(6)	;volatile
	line	96
	
l1066:	
	line	97
;patternsegment.c: 96: }
;patternsegment.c: 97: if(x==3)
	movlw	03h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2831
	goto	u2830
u2831:
	goto	l1067
u2830:
	line	99
	
l2501:	
;patternsegment.c: 98: {
;patternsegment.c: 99: PORTB=0X5B;
	movlw	(05Bh)
	movwf	(6)	;volatile
	line	100
	
l1067:	
	line	101
;patternsegment.c: 100: }
;patternsegment.c: 101: if(x==4)
	movlw	04h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l1068
u2840:
	line	103
	
l2503:	
;patternsegment.c: 102: {
;patternsegment.c: 103: PORTB=0X4F;
	movlw	(04Fh)
	movwf	(6)	;volatile
	line	104
	
l1068:	
	line	105
;patternsegment.c: 104: }
;patternsegment.c: 105: if(x==5)
	movlw	05h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2851
	goto	u2850
u2851:
	goto	l1069
u2850:
	line	107
	
l2505:	
;patternsegment.c: 106: {
;patternsegment.c: 107: PORTB=0X66;
	movlw	(066h)
	movwf	(6)	;volatile
	line	108
	
l1069:	
	line	109
;patternsegment.c: 108: }
;patternsegment.c: 109: if(x==6)
	movlw	06h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2861
	goto	u2860
u2861:
	goto	l1070
u2860:
	line	111
	
l2507:	
;patternsegment.c: 110: {
;patternsegment.c: 111: PORTB=0X6D;
	movlw	(06Dh)
	movwf	(6)	;volatile
	line	112
	
l1070:	
	line	113
;patternsegment.c: 112: }
;patternsegment.c: 113: if(x==7)
	movlw	07h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2871
	goto	u2870
u2871:
	goto	l1071
u2870:
	line	115
	
l2509:	
;patternsegment.c: 114: {
;patternsegment.c: 115: PORTB=0X7C;
	movlw	(07Ch)
	movwf	(6)	;volatile
	line	116
	
l1071:	
	line	117
;patternsegment.c: 116: }
;patternsegment.c: 117: if(x==8)
	movlw	08h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2881
	goto	u2880
u2881:
	goto	l1072
u2880:
	line	119
	
l2511:	
;patternsegment.c: 118: {
;patternsegment.c: 119: PORTB=0X07;
	movlw	(07h)
	movwf	(6)	;volatile
	line	120
	
l1072:	
	line	121
;patternsegment.c: 120: }
;patternsegment.c: 121: if(x==9)
	movlw	09h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2891
	goto	u2890
u2891:
	goto	l1073
u2890:
	line	123
	
l2513:	
;patternsegment.c: 122: {
;patternsegment.c: 123: PORTB=0XFF;
	movlw	(0FFh)
	movwf	(6)	;volatile
	line	124
	
l1073:	
	line	125
;patternsegment.c: 124: }
;patternsegment.c: 125: if(x==10)
	movlw	0Ah
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2901
	goto	u2900
u2901:
	goto	l1074
u2900:
	line	127
	
l2515:	
;patternsegment.c: 126: {
;patternsegment.c: 127: PORTB=0XE7;
	movlw	(0E7h)
	movwf	(6)	;volatile
	line	128
	
l1074:	
	line	129
;patternsegment.c: 128: }
;patternsegment.c: 129: if(y==1)
	movlw	01h
	xorwf	(main@y),w
	iorwf	(main@y+1),w
	skipz
	goto	u2911
	goto	u2910
u2911:
	goto	l1075
u2910:
	line	131
	
l2517:	
;patternsegment.c: 130: {
;patternsegment.c: 131: PORTC=0XBF;
	movlw	(0BFh)
	movwf	(7)	;volatile
	line	132
	
l1075:	
	line	133
;patternsegment.c: 132: }
;patternsegment.c: 133: if(y==2)
	movlw	02h
	xorwf	(main@y),w
	iorwf	(main@y+1),w
	skipz
	goto	u2921
	goto	u2920
u2921:
	goto	l1076
u2920:
	line	135
	
l2519:	
;patternsegment.c: 134: {
;patternsegment.c: 135: PORTC=0X06;
	movlw	(06h)
	movwf	(7)	;volatile
	line	136
	
l1076:	
	line	137
;patternsegment.c: 136: }
;patternsegment.c: 137: if(y==3)
	movlw	03h
	xorwf	(main@y),w
	iorwf	(main@y+1),w
	skipz
	goto	u2931
	goto	u2930
u2931:
	goto	l1077
u2930:
	line	139
	
l2521:	
;patternsegment.c: 138: {
;patternsegment.c: 139: PORTC=0X5B;
	movlw	(05Bh)
	movwf	(7)	;volatile
	line	140
	
l1077:	
	line	141
;patternsegment.c: 140: }
;patternsegment.c: 141: if(x==4)
	movlw	04h
	xorwf	(main@x),w
	iorwf	(main@x+1),w
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l1078
u2940:
	line	143
	
l2523:	
;patternsegment.c: 142: {
;patternsegment.c: 143: PORTB=0X4F;
	movlw	(04Fh)
	movwf	(6)	;volatile
	line	144
	
l1078:	
	line	145
;patternsegment.c: 144: }
;patternsegment.c: 145: if(y==5)
	movlw	05h
	xorwf	(main@y),w
	iorwf	(main@y+1),w
	skipz
	goto	u2951
	goto	u2950
u2951:
	goto	l1079
u2950:
	line	147
	
l2525:	
;patternsegment.c: 146: {
;patternsegment.c: 147: PORTC=0X66;
	movlw	(066h)
	movwf	(7)	;volatile
	line	148
	
l1079:	
	line	149
;patternsegment.c: 148: }
;patternsegment.c: 149: if(y==6)
	movlw	06h
	xorwf	(main@y),w
	iorwf	(main@y+1),w
	skipz
	goto	u2961
	goto	u2960
u2961:
	goto	l1080
u2960:
	line	151
	
l2527:	
;patternsegment.c: 150: {
;patternsegment.c: 151: PORTC=0X6D;
	movlw	(06Dh)
	movwf	(7)	;volatile
	line	152
	
l1080:	
	line	153
;patternsegment.c: 152: }
;patternsegment.c: 153: if(y==7)
	movlw	07h
	xorwf	(main@y),w
	iorwf	(main@y+1),w
	skipz
	goto	u2971
	goto	u2970
u2971:
	goto	l1081
u2970:
	line	155
	
l2529:	
;patternsegment.c: 154: {
;patternsegment.c: 155: PORTC=0X7C;
	movlw	(07Ch)
	movwf	(7)	;volatile
	line	156
	
l1081:	
	line	157
;patternsegment.c: 156: }
;patternsegment.c: 157: if(y==8)
	movlw	08h
	xorwf	(main@y),w
	iorwf	(main@y+1),w
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l1082
u2980:
	line	159
	
l2531:	
;patternsegment.c: 158: {
;patternsegment.c: 159: PORTC=0X07;
	movlw	(07h)
	movwf	(7)	;volatile
	line	160
	
l1082:	
	line	161
;patternsegment.c: 160: }
;patternsegment.c: 161: if(y==9)
	movlw	09h
	xorwf	(main@y),w
	iorwf	(main@y+1),w
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l1083
u2990:
	line	163
	
l2533:	
;patternsegment.c: 162: {
;patternsegment.c: 163: PORTC=0XFF;
	movlw	(0FFh)
	movwf	(7)	;volatile
	line	164
	
l1083:	
	line	165
;patternsegment.c: 164: }
;patternsegment.c: 165: if(y==10)
	movlw	0Ah
	xorwf	(main@y),w
	iorwf	(main@y+1),w
	skipz
	goto	u3001
	goto	u3000
u3001:
	goto	l1084
u3000:
	line	167
	
l2535:	
;patternsegment.c: 166: {
;patternsegment.c: 167: PORTC=0XE7;
	movlw	(0E7h)
	movwf	(7)	;volatile
	line	168
	
l1084:	
	line	169
;patternsegment.c: 168: }
;patternsegment.c: 169: if(z==1)
	movlw	01h
	xorwf	(main@z),w
	iorwf	(main@z+1),w
	skipz
	goto	u3011
	goto	u3010
u3011:
	goto	l1085
u3010:
	line	171
	
l2537:	
;patternsegment.c: 170: {
;patternsegment.c: 171: PORTD=0XBF;
	movlw	(0BFh)
	movwf	(8)	;volatile
	line	172
;patternsegment.c: 172: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	173
	
l1085:	
	line	174
;patternsegment.c: 173: }
;patternsegment.c: 174: if(z==2)
	movlw	02h
	xorwf	(main@z),w
	iorwf	(main@z+1),w
	skipz
	goto	u3021
	goto	u3020
u3021:
	goto	l1086
u3020:
	line	176
	
l2539:	
;patternsegment.c: 175: {
;patternsegment.c: 176: PORTD=0X06;
	movlw	(06h)
	movwf	(8)	;volatile
	line	177
;patternsegment.c: 177: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	178
	
l1086:	
	line	179
;patternsegment.c: 178: }
;patternsegment.c: 179: if(z==3)
	movlw	03h
	xorwf	(main@z),w
	iorwf	(main@z+1),w
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l1087
u3030:
	line	181
	
l2541:	
;patternsegment.c: 180: {
;patternsegment.c: 181: PORTD=0X5B;
	movlw	(05Bh)
	movwf	(8)	;volatile
	line	182
;patternsegment.c: 182: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	183
	
l1087:	
	line	184
;patternsegment.c: 183: }
;patternsegment.c: 184: if(z==4)
	movlw	04h
	xorwf	(main@z),w
	iorwf	(main@z+1),w
	skipz
	goto	u3041
	goto	u3040
u3041:
	goto	l1088
u3040:
	line	186
	
l2543:	
;patternsegment.c: 185: {
;patternsegment.c: 186: PORTD=0X4F;
	movlw	(04Fh)
	movwf	(8)	;volatile
	line	187
;patternsegment.c: 187: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	188
	
l1088:	
	line	189
;patternsegment.c: 188: }
;patternsegment.c: 189: if(z==5)
	movlw	05h
	xorwf	(main@z),w
	iorwf	(main@z+1),w
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l1089
u3050:
	line	191
	
l2545:	
;patternsegment.c: 190: {
;patternsegment.c: 191: PORTD=0X66;
	movlw	(066h)
	movwf	(8)	;volatile
	line	192
;patternsegment.c: 192: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	193
	
l1089:	
	line	194
;patternsegment.c: 193: }
;patternsegment.c: 194: if(z==6)
	movlw	06h
	xorwf	(main@z),w
	iorwf	(main@z+1),w
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l1090
u3060:
	line	196
	
l2547:	
;patternsegment.c: 195: {
;patternsegment.c: 196: PORTD=0X6D;
	movlw	(06Dh)
	movwf	(8)	;volatile
	line	197
;patternsegment.c: 197: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	198
	
l1090:	
	line	199
;patternsegment.c: 198: }
;patternsegment.c: 199: if(z==7)
	movlw	07h
	xorwf	(main@z),w
	iorwf	(main@z+1),w
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l1091
u3070:
	line	201
	
l2549:	
;patternsegment.c: 200: {
;patternsegment.c: 201: PORTD=0X7C;
	movlw	(07Ch)
	movwf	(8)	;volatile
	line	202
;patternsegment.c: 202: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	203
	
l1091:	
	line	204
;patternsegment.c: 203: }
;patternsegment.c: 204: if(z==8)
	movlw	08h
	xorwf	(main@z),w
	iorwf	(main@z+1),w
	skipz
	goto	u3081
	goto	u3080
u3081:
	goto	l1092
u3080:
	line	206
	
l2551:	
;patternsegment.c: 205: {
;patternsegment.c: 206: PORTD=0X07;
	movlw	(07h)
	movwf	(8)	;volatile
	line	207
;patternsegment.c: 207: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	208
	
l1092:	
	line	209
;patternsegment.c: 208: }
;patternsegment.c: 209: if(z==9)
	movlw	09h
	xorwf	(main@z),w
	iorwf	(main@z+1),w
	skipz
	goto	u3091
	goto	u3090
u3091:
	goto	l1093
u3090:
	line	211
	
l2553:	
;patternsegment.c: 210: {
;patternsegment.c: 211: PORTD=0XFF;
	movlw	(0FFh)
	movwf	(8)	;volatile
	line	212
;patternsegment.c: 212: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	line	213
	
l1093:	
	line	214
;patternsegment.c: 213: }
;patternsegment.c: 214: if(z==10)
	movlw	0Ah
	xorwf	(main@z),w
	iorwf	(main@z+1),w
	skipz
	goto	u3101
	goto	u3100
u3101:
	goto	l2557
u3100:
	line	216
	
l2555:	
;patternsegment.c: 215: {
;patternsegment.c: 216: PORTD=0XE7;
	movlw	(0E7h)
	movwf	(8)	;volatile
	line	217
;patternsegment.c: 217: temp++;
	movlw	low(01h)
	addwf	(main@temp),f
	skipnc
	incf	(main@temp+1),f
	movlw	high(01h)
	addwf	(main@temp+1),f
	goto	l2557
	line	218
	
l1094:	
	line	219
	
l2557:	
;patternsegment.c: 218: }
;patternsegment.c: 219: if(temp>20000)
	movf	(main@temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04E21h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3115
	movlw	low(04E21h)
	subwf	(main@temp),w
u3115:

	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l2479
u3110:
	line	221
	
l2559:	
;patternsegment.c: 220: {
;patternsegment.c: 221: sabin(x,y,z);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@x+1),w
	clrf	(?_sabin+1)
	addwf	(?_sabin+1)
	movf	(main@x),w
	clrf	(?_sabin)
	addwf	(?_sabin)

	movf	(main@y+1),w
	clrf	1+(?_sabin)+02h
	addwf	1+(?_sabin)+02h
	movf	(main@y),w
	clrf	0+(?_sabin)+02h
	addwf	0+(?_sabin)+02h

	movf	(main@z+1),w
	clrf	1+(?_sabin)+04h
	addwf	1+(?_sabin)+04h
	movf	(main@z),w
	clrf	0+(?_sabin)+04h
	addwf	0+(?_sabin)+04h

	fcall	_sabin
	line	222
	
l2561:	
;patternsegment.c: 222: temp=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@temp)
	clrf	(main@temp+1)
	line	223
	
l2563:	
;patternsegment.c: 223: x=0;
	clrf	(main@x)
	clrf	(main@x+1)
	line	224
	
l2565:	
;patternsegment.c: 224: y=0;
	clrf	(main@y)
	clrf	(main@y+1)
	line	225
	
l2567:	
;patternsegment.c: 225: z=0;
	clrf	(main@z)
	clrf	(main@z+1)
	goto	l2479
	line	226
	
l1095:	
	goto	l2479
	line	227
	
l1096:	
	line	72
	goto	l2479
	
l1097:	
	line	228
	
l1098:	
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
;;		line 3 in file "E:\KTU\Softwares\mplab\Patternsegment\patternsegment.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[COMMON] int 
;;  y               2    2[COMMON] int 
;;  z               2    4[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  count           2    8[BANK0 ] int 
;;  even            2    6[BANK0 ] int 
;;  odd             2    4[BANK0 ] int 
;;  j               2    2[BANK0 ] int 
;;  i               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0      10       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7      10       0       0       0
;;Total ram usage:       17 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text85
	file	"E:\KTU\Softwares\mplab\Patternsegment\patternsegment.c"
	line	3
	global	__size_of_sabin
	__size_of_sabin	equ	__end_of_sabin-_sabin
	
_sabin:	
	opt	stack 7
; Regs used in _sabin: [wreg+status,2+status,0+btemp+1]
	line	4
	
l2401:	
;patternsegment.c: 4: int odd=0,even=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sabin@odd)
	clrf	(sabin@odd+1)
	clrf	(sabin@even)
	clrf	(sabin@even+1)
	line	5
;patternsegment.c: 5: int count=0,i,j;
	clrf	(sabin@count)
	clrf	(sabin@count+1)
	line	6
	
l2403:	
;patternsegment.c: 6: if(x%2==0)
	btfsc	(sabin@x),(0)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l2407
u2630:
	line	8
	
l2405:	
;patternsegment.c: 7: {
;patternsegment.c: 8: even=x;
	movf	(sabin@x+1),w
	clrf	(sabin@even+1)
	addwf	(sabin@even+1)
	movf	(sabin@x),w
	clrf	(sabin@even)
	addwf	(sabin@even)

	goto	l2407
	line	9
	
l1025:	
	line	10
	
l2407:	
;patternsegment.c: 9: }
;patternsegment.c: 10: if(y%2==0)
	btfsc	(sabin@y),(0)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l2411
u2640:
	line	12
	
l2409:	
;patternsegment.c: 11: {
;patternsegment.c: 12: even=even+y;
	movf	(sabin@y),w
	addwf	(sabin@even),w
	movwf	(sabin@even)
	movf	(sabin@y+1),w
	skipnc
	incf	(sabin@y+1),w
	addwf	(sabin@even+1),w
	movwf	1+(sabin@even)
	goto	l2411
	line	13
	
l1026:	
	line	14
	
l2411:	
;patternsegment.c: 13: }
;patternsegment.c: 14: if(z%2==0)
	btfsc	(sabin@z),(0)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l2415
u2650:
	line	16
	
l2413:	
;patternsegment.c: 15: {
;patternsegment.c: 16: even=even+z;
	movf	(sabin@z),w
	addwf	(sabin@even),w
	movwf	(sabin@even)
	movf	(sabin@z+1),w
	skipnc
	incf	(sabin@z+1),w
	addwf	(sabin@even+1),w
	movwf	1+(sabin@even)
	goto	l2415
	line	17
	
l1027:	
	line	18
	
l2415:	
;patternsegment.c: 17: }
;patternsegment.c: 18: if(x%2==1)
	btfss	(sabin@x),(0)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l2419
u2660:
	line	20
	
l2417:	
;patternsegment.c: 19: {
;patternsegment.c: 20: odd=x;
	movf	(sabin@x+1),w
	clrf	(sabin@odd+1)
	addwf	(sabin@odd+1)
	movf	(sabin@x),w
	clrf	(sabin@odd)
	addwf	(sabin@odd)

	goto	l2419
	line	21
	
l1028:	
	line	22
	
l2419:	
;patternsegment.c: 21: }
;patternsegment.c: 22: if(y%2==1)
	btfss	(sabin@y),(0)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l2423
u2670:
	line	24
	
l2421:	
;patternsegment.c: 23: {
;patternsegment.c: 24: odd=odd+y;
	movf	(sabin@y),w
	addwf	(sabin@odd),w
	movwf	(sabin@odd)
	movf	(sabin@y+1),w
	skipnc
	incf	(sabin@y+1),w
	addwf	(sabin@odd+1),w
	movwf	1+(sabin@odd)
	goto	l2423
	line	25
	
l1029:	
	line	26
	
l2423:	
;patternsegment.c: 25: }
;patternsegment.c: 26: if(z%2==1)
	btfss	(sabin@z),(0)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l2427
u2680:
	line	28
	
l2425:	
;patternsegment.c: 27: {
;patternsegment.c: 28: odd=odd+z;
	movf	(sabin@z),w
	addwf	(sabin@odd),w
	movwf	(sabin@odd)
	movf	(sabin@z+1),w
	skipnc
	incf	(sabin@z+1),w
	addwf	(sabin@odd+1),w
	movwf	1+(sabin@odd)
	goto	l2427
	line	29
	
l1030:	
	line	30
	
l2427:	
;patternsegment.c: 29: }
;patternsegment.c: 30: for(i=0;i<even;i++)
	clrf	(sabin@i)
	clrf	(sabin@i+1)
	goto	l1031
	line	31
	
l1032:	
	line	32
;patternsegment.c: 31: {
;patternsegment.c: 32: while(count<30000)
	goto	l2431
	
l1034:	
	line	34
;patternsegment.c: 33: {
;patternsegment.c: 34: RA3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	line	35
	
l2429:	
;patternsegment.c: 35: count++;
	movlw	low(01h)
	addwf	(sabin@count),f
	skipnc
	incf	(sabin@count+1),f
	movlw	high(01h)
	addwf	(sabin@count+1),f
	goto	l2431
	line	36
	
l1033:	
	line	32
	
l2431:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sabin@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2695
	movlw	low(07530h)
	subwf	(sabin@count),w
u2695:

	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l1034
u2690:
	goto	l2435
	
l1035:	
	line	37
;patternsegment.c: 36: }
;patternsegment.c: 37: while(count>0)
	goto	l2435
	
l1037:	
	line	39
;patternsegment.c: 38: {
;patternsegment.c: 39: RA3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(43/8),(43)&7
	line	40
	
l2433:	
;patternsegment.c: 40: count--;
	movlw	low(-1)
	addwf	(sabin@count),f
	skipnc
	incf	(sabin@count+1),f
	movlw	high(-1)
	addwf	(sabin@count+1),f
	goto	l2435
	line	41
	
l1036:	
	line	37
	
l2435:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sabin@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2705
	movlw	low(01h)
	subwf	(sabin@count),w
u2705:

	skipnc
	goto	u2701
	goto	u2700
u2701:
	goto	l1037
u2700:
	goto	l2437
	
l1038:	
	line	30
	
l2437:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sabin@i),f
	skipnc
	incf	(sabin@i+1),f
	movlw	high(01h)
	addwf	(sabin@i+1),f
	
l1031:	
	movf	(sabin@i+1),w
	xorlw	80h
	movwf	(??_sabin+0)+0
	movf	(sabin@even+1),w
	xorlw	80h
	subwf	(??_sabin+0)+0,w
	skipz
	goto	u2715
	movf	(sabin@even),w
	subwf	(sabin@i),w
u2715:

	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l2431
u2710:
	goto	l2439
	
l1039:	
	line	43
	
l2439:	
;patternsegment.c: 41: }
;patternsegment.c: 42: }
;patternsegment.c: 43: for(j=0;j<odd;j++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(sabin@j)
	clrf	(sabin@j+1)
	goto	l1040
	line	44
	
l1041:	
	line	45
;patternsegment.c: 44: {
;patternsegment.c: 45: while(count<30000)
	goto	l2443
	
l1043:	
	line	47
;patternsegment.c: 46: {
;patternsegment.c: 47: RA4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(44/8),(44)&7
	line	48
	
l2441:	
;patternsegment.c: 48: count++;
	movlw	low(01h)
	addwf	(sabin@count),f
	skipnc
	incf	(sabin@count+1),f
	movlw	high(01h)
	addwf	(sabin@count+1),f
	goto	l2443
	line	49
	
l1042:	
	line	45
	
l2443:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sabin@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2725
	movlw	low(07530h)
	subwf	(sabin@count),w
u2725:

	skipc
	goto	u2721
	goto	u2720
u2721:
	goto	l1043
u2720:
	goto	l2447
	
l1044:	
	line	50
;patternsegment.c: 49: }
;patternsegment.c: 50: while(count>0)
	goto	l2447
	
l1046:	
	line	52
;patternsegment.c: 51: {
;patternsegment.c: 52: RA4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
	line	53
	
l2445:	
;patternsegment.c: 53: count--;
	movlw	low(-1)
	addwf	(sabin@count),f
	skipnc
	incf	(sabin@count+1),f
	movlw	high(-1)
	addwf	(sabin@count+1),f
	goto	l2447
	line	54
	
l1045:	
	line	50
	
l2447:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(sabin@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2735
	movlw	low(01h)
	subwf	(sabin@count),w
u2735:

	skipnc
	goto	u2731
	goto	u2730
u2731:
	goto	l1046
u2730:
	goto	l2449
	
l1047:	
	line	43
	
l2449:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sabin@j),f
	skipnc
	incf	(sabin@j+1),f
	movlw	high(01h)
	addwf	(sabin@j+1),f
	
l1040:	
	movf	(sabin@j+1),w
	xorlw	80h
	movwf	(??_sabin+0)+0
	movf	(sabin@odd+1),w
	xorlw	80h
	subwf	(??_sabin+0)+0,w
	skipz
	goto	u2745
	movf	(sabin@odd),w
	subwf	(sabin@j),w
u2745:

	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l2443
u2740:
	goto	l1049
	
l1048:	
	line	57
	
l1049:	
	return
	opt stack 0
GLOBAL	__end_of_sabin
	__end_of_sabin:
;; =============== function _sabin ends ============

	signat	_sabin,12410
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
