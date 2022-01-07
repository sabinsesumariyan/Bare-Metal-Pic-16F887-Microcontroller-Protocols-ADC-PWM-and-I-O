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
	global	_RA3
_RA3	set	43
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"fourbutton.as"
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
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0       0
;; BANK0           80      0       0
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0       0
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
;;COMMON               E      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       0       3        0.0%
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
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 3 in file "E:\KTU\Softwares\Embedded Systems\Pic Controller\BUTTON\fourbutton\fourbutton.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\Embedded Systems\Pic Controller\BUTTON\fourbutton\fourbutton.c"
	line	3
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	4
	
l1417:	
;fourbutton.c: 4: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	5
;fourbutton.c: 5: PORTB=0X00;
	clrf	(6)	;volatile
	line	6
;fourbutton.c: 6: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	7
	
l1419:	
;fourbutton.c: 7: TRISB=0X0F;
	movlw	(0Fh)
	movwf	(134)^080h	;volatile
	line	8
	
l1421:	
;fourbutton.c: 8: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	9
	
l1423:	
;fourbutton.c: 9: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	goto	l1425
	line	10
;fourbutton.c: 10: while(1)
	
l1025:	
	line	13
	
l1425:	
;fourbutton.c: 11: {
;fourbutton.c: 13: if(RB0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7
	goto	u11
	goto	u10
u11:
	goto	l1026
u10:
	line	15
	
l1427:	
;fourbutton.c: 14: {
;fourbutton.c: 15: RA0=1;
	bsf	(40/8),(40)&7
	line	16
;fourbutton.c: 16: while(RB0==1);
	goto	l1027
	
l1028:	
	
l1027:	
	btfsc	(48/8),(48)&7
	goto	u21
	goto	u20
u21:
	goto	l1027
u20:
	goto	l1030
	
l1029:	
	line	17
;fourbutton.c: 17: }
	goto	l1030
	line	18
	
l1026:	
	line	20
;fourbutton.c: 18: else
;fourbutton.c: 19: {
;fourbutton.c: 20: RA0=0;
	bcf	(40/8),(40)&7
	line	21
	
l1030:	
	line	23
;fourbutton.c: 21: }
;fourbutton.c: 23: if(RB1==1)
	btfss	(49/8),(49)&7
	goto	u31
	goto	u30
u31:
	goto	l1031
u30:
	line	25
	
l1429:	
;fourbutton.c: 24: {
;fourbutton.c: 25: RA1=1;
	bsf	(41/8),(41)&7
	line	26
;fourbutton.c: 26: while(RB1==1);
	goto	l1032
	
l1033:	
	
l1032:	
	btfsc	(49/8),(49)&7
	goto	u41
	goto	u40
u41:
	goto	l1032
u40:
	goto	l1035
	
l1034:	
	line	27
;fourbutton.c: 27: }
	goto	l1035
	line	28
	
l1031:	
	line	30
;fourbutton.c: 28: else
;fourbutton.c: 29: {
;fourbutton.c: 30: RA1=0;
	bcf	(41/8),(41)&7
	line	31
	
l1035:	
	line	33
;fourbutton.c: 31: }
;fourbutton.c: 33: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u51
	goto	u50
u51:
	goto	l1036
u50:
	line	35
	
l1431:	
;fourbutton.c: 34: {
;fourbutton.c: 35: RA2=1;
	bsf	(42/8),(42)&7
	line	36
;fourbutton.c: 36: while(RB2==1);
	goto	l1037
	
l1038:	
	
l1037:	
	btfsc	(50/8),(50)&7
	goto	u61
	goto	u60
u61:
	goto	l1037
u60:
	goto	l1040
	
l1039:	
	line	37
;fourbutton.c: 37: }
	goto	l1040
	line	38
	
l1036:	
	line	40
;fourbutton.c: 38: else
;fourbutton.c: 39: {
;fourbutton.c: 40: RA2=0;
	bcf	(42/8),(42)&7
	line	41
	
l1040:	
	line	43
;fourbutton.c: 41: }
;fourbutton.c: 43: if(RB3==1)
	btfss	(51/8),(51)&7
	goto	u71
	goto	u70
u71:
	goto	l1041
u70:
	line	45
	
l1433:	
;fourbutton.c: 44: {
;fourbutton.c: 45: RA3=1;
	bsf	(43/8),(43)&7
	line	46
;fourbutton.c: 46: while(RB3==1);
	goto	l1042
	
l1043:	
	
l1042:	
	btfsc	(51/8),(51)&7
	goto	u81
	goto	u80
u81:
	goto	l1042
u80:
	goto	l1425
	
l1044:	
	line	47
;fourbutton.c: 47: }
	goto	l1425
	line	48
	
l1041:	
	line	50
;fourbutton.c: 48: else
;fourbutton.c: 49: {
;fourbutton.c: 50: RA3=0;
	bcf	(43/8),(43)&7
	goto	l1425
	line	51
	
l1045:	
	goto	l1425
	line	52
	
l1046:	
	line	10
	goto	l1425
	
l1047:	
	line	53
	
l1048:	
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
