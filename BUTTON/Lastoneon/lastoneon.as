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
	FNCALL	_main,_led1
	FNCALL	_main,_led2
	FNCALL	_main,_led3
	FNCALL	_main,_led4
	FNROOT	_main
	global	_PORTA
psect	text96,local,class=CODE,delta=2
global __ptext96
__ptext96:
_PORTA	set	5
	global	_TRISA
_TRISA	set	133
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"lastoneon.as"
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
	global	?_led1
?_led1:	; 0 bytes @ 0x0
	global	??_led1
??_led1:	; 0 bytes @ 0x0
	global	?_led2
?_led2:	; 0 bytes @ 0x0
	global	??_led2
??_led2:	; 0 bytes @ 0x0
	global	?_led3
?_led3:	; 0 bytes @ 0x0
	global	??_led3
??_led3:	; 0 bytes @ 0x0
	global	?_led4
?_led4:	; 0 bytes @ 0x0
	global	??_led4
??_led4:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	led1@count
led1@count:	; 2 bytes @ 0x0
	global	led2@count
led2@count:	; 2 bytes @ 0x0
	global	led3@count
led3@count:	; 2 bytes @ 0x0
	global	led4@count
led4@count:	; 2 bytes @ 0x0
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x2
	global	main@stop
main@stop:	; 2 bytes @ 0x2
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_led1
;;   _main->_led2
;;   _main->_led3
;;   _main->_led4
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
;; (0) _main                                                 2     2      0      60
;;                                              2 COMMON     2     2      0
;;                               _led1
;;                               _led2
;;                               _led3
;;                               _led4
;; ---------------------------------------------------------------------------------
;; (1) _led4                                                 2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _led3                                                 2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _led2                                                 2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _led1                                                 2     2      0      15
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _led1
;;   _led2
;;   _led3
;;   _led4
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
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
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 39 in file "E:\KTU\Softwares\mplab\Lastoneon\lastoneon.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  stop            2    2[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_led1
;;		_led2
;;		_led3
;;		_led4
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\mplab\Lastoneon\lastoneon.c"
	line	39
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	40
	
l2210:	
;lastoneon.c: 40: int stop=1;
	movlw	low(01h)
	movwf	(main@stop)
	movlw	high(01h)
	movwf	((main@stop))+1
	line	41
	
l2212:	
;lastoneon.c: 41: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	42
	
l2214:	
;lastoneon.c: 42: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	43
	
l2216:	
;lastoneon.c: 43: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	44
	
l2218:	
;lastoneon.c: 44: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	45
;lastoneon.c: 45: while(1)
	
l1049:	
	line	47
;lastoneon.c: 46: {
;lastoneon.c: 47: if(stop==1)
	movlw	01h
	xorwf	(main@stop),w
	iorwf	(main@stop+1),w
	skipz
	goto	u2171
	goto	u2170
u2171:
	goto	l2232
u2170:
	line	49
	
l2220:	
;lastoneon.c: 48: {
;lastoneon.c: 49: led1();
	fcall	_led1
	line	50
	
l2222:	
;lastoneon.c: 50: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	51
	
l2224:	
;lastoneon.c: 51: led2();
	fcall	_led2
	line	52
;lastoneon.c: 52: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	53
	
l2226:	
;lastoneon.c: 53: led3();
	fcall	_led3
	line	54
	
l2228:	
;lastoneon.c: 54: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	55
	
l2230:	
;lastoneon.c: 55: stop=2;
	movlw	low(02h)
	movwf	(main@stop)
	movlw	high(02h)
	movwf	((main@stop))+1
	goto	l2232
	line	56
	
l1050:	
	line	57
	
l2232:	
;lastoneon.c: 56: }
;lastoneon.c: 57: led4();
	fcall	_led4
	goto	l1049
	line	58
	
l1051:	
	line	45
	goto	l1049
	
l1052:	
	line	59
	
l1053:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_led4
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _led4 *****************
;; Defined at:
;;		line 30 in file "E:\KTU\Softwares\mplab\Lastoneon\lastoneon.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
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
psect	text97
	file	"E:\KTU\Softwares\mplab\Lastoneon\lastoneon.c"
	line	30
	global	__size_of_led4
	__size_of_led4	equ	__end_of_led4-_led4
	
_led4:	
	opt	stack 7
; Regs used in _led4: [wreg+status,2]
	line	31
	
l1440:	
;lastoneon.c: 31: int count=0;
	clrf	(led4@count)
	clrf	(led4@count+1)
	goto	l1442
	line	32
;lastoneon.c: 32: while(1)
	
l1043:	
	line	35
	
l1442:	
;lastoneon.c: 33: {
;lastoneon.c: 35: PORTA=0X08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	l1442
	line	36
	
l1044:	
	line	32
	goto	l1442
	
l1045:	
	line	37
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_led4
	__end_of_led4:
;; =============== function _led4 ends ============

	signat	_led4,88
	global	_led3
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:

;; *************** function _led3 *****************
;; Defined at:
;;		line 21 in file "E:\KTU\Softwares\mplab\Lastoneon\lastoneon.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
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
psect	text98
	file	"E:\KTU\Softwares\mplab\Lastoneon\lastoneon.c"
	line	21
	global	__size_of_led3
	__size_of_led3	equ	__end_of_led3-_led3
	
_led3:	
	opt	stack 7
; Regs used in _led3: [wreg+status,2+btemp+1]
	line	22
	
l1434:	
;lastoneon.c: 22: int count=0;
	clrf	(led3@count)
	clrf	(led3@count+1)
	line	23
;lastoneon.c: 23: while(count<30000)
	goto	l1438
	
l1038:	
	line	25
	
l1436:	
;lastoneon.c: 24: {
;lastoneon.c: 25: count++;
	movlw	low(01h)
	addwf	(led3@count),f
	skipnc
	incf	(led3@count+1),f
	movlw	high(01h)
	addwf	(led3@count+1),f
	line	26
;lastoneon.c: 26: PORTA=0X04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	l1438
	line	27
	
l1037:	
	line	23
	
l1438:	
	movf	(led3@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(07530h)
	subwf	(led3@count),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l1436
u30:
	goto	l1040
	
l1039:	
	line	28
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_led3
	__end_of_led3:
;; =============== function _led3 ends ============

	signat	_led3,88
	global	_led2
psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:

;; *************** function _led2 *****************
;; Defined at:
;;		line 12 in file "E:\KTU\Softwares\mplab\Lastoneon\lastoneon.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
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
psect	text99
	file	"E:\KTU\Softwares\mplab\Lastoneon\lastoneon.c"
	line	12
	global	__size_of_led2
	__size_of_led2	equ	__end_of_led2-_led2
	
_led2:	
	opt	stack 7
; Regs used in _led2: [wreg+status,2+btemp+1]
	line	13
	
l1428:	
;lastoneon.c: 13: int count=0;
	clrf	(led2@count)
	clrf	(led2@count+1)
	line	14
;lastoneon.c: 14: while(count<30000)
	goto	l1432
	
l1032:	
	line	16
	
l1430:	
;lastoneon.c: 15: {
;lastoneon.c: 16: count++;
	movlw	low(01h)
	addwf	(led2@count),f
	skipnc
	incf	(led2@count+1),f
	movlw	high(01h)
	addwf	(led2@count+1),f
	line	17
;lastoneon.c: 17: PORTA=0X02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	l1432
	line	18
	
l1031:	
	line	14
	
l1432:	
	movf	(led2@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(07530h)
	subwf	(led2@count),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l1430
u20:
	goto	l1034
	
l1033:	
	line	19
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_led2
	__end_of_led2:
;; =============== function _led2 ends ============

	signat	_led2,88
	global	_led1
psect	text100,local,class=CODE,delta=2
global __ptext100
__ptext100:

;; *************** function _led1 *****************
;; Defined at:
;;		line 3 in file "E:\KTU\Softwares\mplab\Lastoneon\lastoneon.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
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
psect	text100
	file	"E:\KTU\Softwares\mplab\Lastoneon\lastoneon.c"
	line	3
	global	__size_of_led1
	__size_of_led1	equ	__end_of_led1-_led1
	
_led1:	
	opt	stack 7
; Regs used in _led1: [wreg+status,2+btemp+1]
	line	4
	
l1422:	
;lastoneon.c: 4: int count=0;
	clrf	(led1@count)
	clrf	(led1@count+1)
	line	5
;lastoneon.c: 5: while(count<30000)
	goto	l1426
	
l1026:	
	line	7
	
l1424:	
;lastoneon.c: 6: {
;lastoneon.c: 7: count++;
	movlw	low(01h)
	addwf	(led1@count),f
	skipnc
	incf	(led1@count+1),f
	movlw	high(01h)
	addwf	(led1@count+1),f
	line	8
;lastoneon.c: 8: PORTA=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(5)	;volatile
	goto	l1426
	line	9
	
l1025:	
	line	5
	
l1426:	
	movf	(led1@count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07530h))^80h
	subwf	btemp+1,w
	skipz
	goto	u15
	movlw	low(07530h)
	subwf	(led1@count),w
u15:

	skipc
	goto	u11
	goto	u10
u11:
	goto	l1424
u10:
	goto	l1028
	
l1027:	
	line	10
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_led1
	__end_of_led1:
;; =============== function _led1 ends ============

	signat	_led1,88
psect	text101,local,class=CODE,delta=2
global __ptext101
__ptext101:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
