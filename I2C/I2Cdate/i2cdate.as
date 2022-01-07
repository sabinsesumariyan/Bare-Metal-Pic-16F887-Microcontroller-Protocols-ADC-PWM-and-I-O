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
	FNCALL	_main,_init
	FNCALL	_main,_disp
	FNCALL	_main,_I2C_Start
	FNCALL	_main,_I2C_Send
	FNCALL	_main,_I2C_Stop
	FNCALL	_main,_delay
	FNCALL	_main,_I2C_Restart
	FNCALL	_main,_I2C_Read
	FNCALL	_main,_conv
	FNCALL	_conv,_disp
	FNCALL	_conv,_data
	FNCALL	_conv,_word
	FNCALL	_word,_pulse
	FNCALL	_data,_pulse
	FNCALL	_disp,_pulse
	FNCALL	_I2C_Restart,_wait
	FNCALL	_I2C_Send,_wait
	FNCALL	_I2C_Stop,_wait
	FNCALL	_I2C_Start,_wait
	FNROOT	_main
	global	_number
	global	_PORTD
psect	text354,local,class=CODE,delta=2
global __ptext354
__ptext354:
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_SSPIF
_SSPIF	set	99
	global	_SSPOV
_SSPOV	set	166
	global	_SSPCON2
_SSPCON2	set	145
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_ACKSTAT
_ACKSTAT	set	1166
	global	_BF
_BF	set	1184
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_RSEN
_RSEN	set	1161
	global	_SEN
_SEN	set	1160
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_4:	
	retlw	119	;'w'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_3:	
	retlw	116	;'t'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_6:	
	retlw	102	;'f'
	retlw	114	;'r'
	retlw	105	;'i'
	retlw	0
psect	strings
	
STR_2:	
	retlw	109	;'m'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_1:	
	retlw	115	;'s'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	0
psect	strings
	
STR_7:	
	retlw	115	;'s'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	0
psect	strings
	
STR_5:	
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	117	;'u'
	retlw	0
psect	strings
	file	"i2cdate.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_number:
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
	global	?_init
?_init:	; 0 bytes @ 0x0
	global	??_init
??_init:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_pulse
?_pulse:	; 0 bytes @ 0x0
	global	??_pulse
??_pulse:	; 0 bytes @ 0x0
	global	?_word
?_word:	; 0 bytes @ 0x0
	global	?_conv
?_conv:	; 0 bytes @ 0x0
	global	?_wait
?_wait:	; 0 bytes @ 0x0
	global	??_wait
??_wait:	; 0 bytes @ 0x0
	global	?_I2C_Start
?_I2C_Start:	; 0 bytes @ 0x0
	global	??_I2C_Start
??_I2C_Start:	; 0 bytes @ 0x0
	global	?_I2C_Stop
?_I2C_Stop:	; 0 bytes @ 0x0
	global	??_I2C_Stop
??_I2C_Stop:	; 0 bytes @ 0x0
	global	?_I2C_Send
?_I2C_Send:	; 0 bytes @ 0x0
	global	??_I2C_Send
??_I2C_Send:	; 0 bytes @ 0x0
	global	?_I2C_Restart
?_I2C_Restart:	; 0 bytes @ 0x0
	global	??_I2C_Restart
??_I2C_Restart:	; 0 bytes @ 0x0
	global	??_I2C_Read
??_I2C_Read:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_I2C_Read
?_I2C_Read:	; 1 bytes @ 0x0
	global	I2C_Send@send
I2C_Send@send:	; 1 bytes @ 0x0
	global	delay@d
delay@d:	; 2 bytes @ 0x0
	ds	1
	global	I2C_Read@i
I2C_Read@i:	; 1 bytes @ 0x1
	ds	1
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	?_disp
?_disp:	; 0 bytes @ 0x2
	global	?_data
?_data:	; 0 bytes @ 0x2
	global	??_word
??_word:	; 0 bytes @ 0x2
	global	I2C_Read@read
I2C_Read@read:	; 1 bytes @ 0x2
	global	disp@a
disp@a:	; 2 bytes @ 0x2
	global	data@x
data@x:	; 2 bytes @ 0x2
	ds	1
	global	word@s
word@s:	; 1 bytes @ 0x3
	ds	1
	global	??_disp
??_disp:	; 0 bytes @ 0x4
	global	??_data
??_data:	; 0 bytes @ 0x4
	global	??_conv
??_conv:	; 0 bytes @ 0x4
	ds	1
	global	conv@i
conv@i:	; 1 bytes @ 0x5
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x6
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@read
main@read:	; 7 bytes @ 0x0
	ds	7
	global	main@i
main@i:	; 1 bytes @ 0x7
	ds	1
;;Data sizes: Strings 28, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       9
;; BANK0           80      8       8
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; conv@i	PTR unsigned char  size(1) Largest target is 7
;;		 -> main@read(BANK0[7]), 
;;
;; word@s	PTR const unsigned char  size(1) Largest target is 4
;;		 -> STR_7(CODE[4]), STR_6(CODE[4]), STR_5(CODE[4]), STR_4(CODE[4]), 
;;		 -> STR_3(CODE[4]), STR_2(CODE[4]), STR_1(CODE[4]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_conv
;;   _conv->_disp
;;   _conv->_data
;;   _conv->_word
;;   _word->_pulse
;;   _data->_pulse
;;   _disp->_pulse
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
;; (0) _main                                                 9     9      0     636
;;                                              6 COMMON     1     1      0
;;                                              0 BANK0      8     8      0
;;                               _init
;;                               _disp
;;                          _I2C_Start
;;                           _I2C_Send
;;                           _I2C_Stop
;;                              _delay
;;                        _I2C_Restart
;;                           _I2C_Read
;;                               _conv
;; ---------------------------------------------------------------------------------
;; (1) _conv                                                 2     2      0     375
;;                                              4 COMMON     2     2      0
;;                               _disp
;;                               _data
;;                               _word
;; ---------------------------------------------------------------------------------
;; (2) _word                                                 2     2      0      45
;;                                              2 COMMON     2     2      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) _data                                                 2     0      2      22
;;                                              2 COMMON     2     0      2
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) _disp                                                 2     0      2      22
;;                                              2 COMMON     2     0      2
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Restart                                          0     0      0       0
;;                               _wait
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Send                                             1     1      0      22
;;                                              0 COMMON     1     1      0
;;                               _wait
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Stop                                             0     0      0       0
;;                               _wait
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Start                                            0     0      0       0
;;                               _wait
;; ---------------------------------------------------------------------------------
;; (3) _pulse                                                2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Read                                             3     3      0      45
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _wait                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _init                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _init
;;   _disp
;;     _pulse
;;   _I2C_Start
;;     _wait
;;   _I2C_Send
;;     _wait
;;   _I2C_Stop
;;     _wait
;;   _delay
;;   _I2C_Restart
;;     _wait
;;   _I2C_Read
;;   _conv
;;     _disp
;;       _pulse
;;     _data
;;       _pulse
;;     _word
;;       _pulse
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
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      11       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      8       8       5       10.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      14      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 156 in file "E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  read            7    0[BANK0 ] unsigned char [7]
;;  i               1    7[BANK0 ] unsigned char 
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
;;      Locals:         0       8       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       8       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_init
;;		_disp
;;		_I2C_Start
;;		_I2C_Send
;;		_I2C_Stop
;;		_delay
;;		_I2C_Restart
;;		_I2C_Read
;;		_conv
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
	line	156
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	158
	
l2510:	
;i2cdate.c: 157: unsigned char i,read[7];
;i2cdate.c: 158: init();
	fcall	_init
	line	159
;i2cdate.c: 159: disp(0x38);
	movlw	low(038h)
	movwf	(?_disp)
	movlw	high(038h)
	movwf	((?_disp))+1
	fcall	_disp
	line	160
;i2cdate.c: 160: disp(0x0e);
	movlw	low(0Eh)
	movwf	(?_disp)
	movlw	high(0Eh)
	movwf	((?_disp))+1
	fcall	_disp
	line	163
	
l2512:	
;i2cdate.c: 163: I2C_Start();
	fcall	_I2C_Start
	line	164
	
l2514:	
;i2cdate.c: 164: I2C_Send(0xD0);
	movlw	(0D0h)
	fcall	_I2C_Send
	line	165
	
l2516:	
;i2cdate.c: 165: I2C_Send(0x00);
	movlw	(0)
	fcall	_I2C_Send
	line	166
	
l2518:	
;i2cdate.c: 166: I2C_Send(0x30);
	movlw	(030h)
	fcall	_I2C_Send
	line	167
	
l2520:	
;i2cdate.c: 167: I2C_Send(0x45);
	movlw	(045h)
	fcall	_I2C_Send
	line	168
	
l2522:	
;i2cdate.c: 168: I2C_Send(0x09);
	movlw	(09h)
	fcall	_I2C_Send
	line	169
;i2cdate.c: 169: I2C_Stop();
	fcall	_I2C_Stop
	line	170
	
l2524:	
;i2cdate.c: 170: delay(65500);
	movlw	low(0FFDCh)
	movwf	(?_delay)
	movlw	high(0FFDCh)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l2526
	line	171
;i2cdate.c: 171: while(1)
	
l1094:	
	line	174
	
l2526:	
;i2cdate.c: 172: {
;i2cdate.c: 174: I2C_Start();
	fcall	_I2C_Start
	line	175
;i2cdate.c: 175: I2C_Send(0xD0);
	movlw	(0D0h)
	fcall	_I2C_Send
	line	176
;i2cdate.c: 176: I2C_Send(0x00);
	movlw	(0)
	fcall	_I2C_Send
	line	177
	
l2528:	
;i2cdate.c: 177: I2C_Restart();
	fcall	_I2C_Restart
	line	178
	
l2530:	
;i2cdate.c: 178: I2C_Send(0xD1);
	movlw	(0D1h)
	fcall	_I2C_Send
	line	180
	
l2532:	
;i2cdate.c: 180: for(i=0;i<7;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	
l2534:	
	movlw	(07h)
	subwf	(main@i),w
	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l1095
u2400:
	goto	l2544
	
l2536:	
	goto	l2544
	line	181
	
l1095:	
	line	182
;i2cdate.c: 181: {
;i2cdate.c: 182: RCEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	183
	
l2538:	
;i2cdate.c: 183: read[i]=I2C_Read(i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	fcall	_I2C_Read
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@read&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	180
	
l2540:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2542:	
	movlw	(07h)
	subwf	(main@i),w
	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l1095
u2410:
	goto	l2544
	
l1096:	
	line	185
	
l2544:	
;i2cdate.c: 184: }
;i2cdate.c: 185: I2C_Stop();
	fcall	_I2C_Stop
	line	186
	
l2546:	
;i2cdate.c: 186: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	187
	
l2548:	
;i2cdate.c: 187: conv(read);
	movlw	(main@read)&0ffh
	fcall	_conv
	goto	l2526
	line	188
	
l1097:	
	line	171
	goto	l2526
	
l1098:	
	line	189
	
l1099:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_conv
psect	text355,local,class=CODE,delta=2
global __ptext355
__ptext355:

;; *************** function _conv *****************
;; Defined at:
;;		line 64 in file "E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
;; Parameters:    Size  Location     Type
;;  i               1    wreg     PTR unsigned char 
;;		 -> main@read(7), 
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] PTR unsigned char 
;;		 -> main@read(7), 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_disp
;;		_data
;;		_word
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text355
	file	"E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
	line	64
	global	__size_of_conv
	__size_of_conv	equ	__end_of_conv-_conv
	
_conv:	
	opt	stack 5
; Regs used in _conv: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;conv@i stored from wreg
	line	66
	movwf	(conv@i)
	
l2466:	
;i2cdate.c: 66: disp(0x80);
	movlw	low(080h)
	movwf	(?_disp)
	movlw	high(080h)
	movwf	((?_disp))+1
	fcall	_disp
	line	67
	
l2468:	
;i2cdate.c: 67: data(((i[2] & 0X30)>> 4)+0x30);
	movf	(conv@i),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conv+0)+0
	movlw	04h
u2345:
	clrc
	rrf	(??_conv+0)+0,f
	addlw	-1
	skipz
	goto	u2345
	movf	0+(??_conv+0)+0,w
	andlw	03h
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	68
	
l2470:	
;i2cdate.c: 68: data((i[2] & 0x0F) + 0x30);
	movf	(conv@i),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	69
;i2cdate.c: 69: data(':');
	movlw	low(03Ah)
	movwf	(?_data)
	movlw	high(03Ah)
	movwf	((?_data))+1
	fcall	_data
	line	71
	
l2472:	
;i2cdate.c: 71: data(((i[1] & 0x70) >> 4)+0x30);
	movf	(conv@i),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conv+0)+0
	movlw	04h
u2355:
	clrc
	rrf	(??_conv+0)+0,f
	addlw	-1
	skipz
	goto	u2355
	movf	0+(??_conv+0)+0,w
	andlw	07h
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	72
	
l2474:	
;i2cdate.c: 72: data((i[1] & 0x0F) + 0x30);
	movf	(conv@i),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	73
;i2cdate.c: 73: data(':');
	movlw	low(03Ah)
	movwf	(?_data)
	movlw	high(03Ah)
	movwf	((?_data))+1
	fcall	_data
	line	75
	
l2476:	
;i2cdate.c: 75: data(((i[0] & 0x70) >> 4)+0x30);
	movf	(conv@i),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conv+0)+0
	movlw	04h
u2365:
	clrc
	rrf	(??_conv+0)+0,f
	addlw	-1
	skipz
	goto	u2365
	movf	0+(??_conv+0)+0,w
	andlw	07h
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	76
	
l2478:	
;i2cdate.c: 76: data((i[0] & 0x0F) + 0x30);
	movf	(conv@i),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	78
;i2cdate.c: 78: disp(0xC0);
	movlw	low(0C0h)
	movwf	(?_disp)
	movlw	high(0C0h)
	movwf	((?_disp))+1
	fcall	_disp
	line	79
	
l2480:	
;i2cdate.c: 79: data(((i[4] & 0X30)>> 4)+0x30);
	movf	(conv@i),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conv+0)+0
	movlw	04h
u2375:
	clrc
	rrf	(??_conv+0)+0,f
	addlw	-1
	skipz
	goto	u2375
	movf	0+(??_conv+0)+0,w
	andlw	03h
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	80
	
l2482:	
;i2cdate.c: 80: data((i[4] & 0x0F) + 0x30);
	movf	(conv@i),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	81
;i2cdate.c: 81: data(':');
	movlw	low(03Ah)
	movwf	(?_data)
	movlw	high(03Ah)
	movwf	((?_data))+1
	fcall	_data
	line	83
	
l2484:	
;i2cdate.c: 83: data(((i[5] & 0X30)>>4)+0x30);
	movf	(conv@i),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conv+0)+0
	movlw	04h
u2385:
	clrc
	rrf	(??_conv+0)+0,f
	addlw	-1
	skipz
	goto	u2385
	movf	0+(??_conv+0)+0,w
	andlw	03h
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	84
	
l2486:	
;i2cdate.c: 84: data((i[5] & 0x0F) + 0x30);
	movf	(conv@i),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	85
;i2cdate.c: 85: data(':');
	movlw	low(03Ah)
	movwf	(?_data)
	movlw	high(03Ah)
	movwf	((?_data))+1
	fcall	_data
	line	87
	
l2488:	
;i2cdate.c: 87: data(((i[6] & 0XF0)>>4)+0x30);
	movf	(conv@i),w
	addlw	06h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conv+0)+0
	movlw	04h
u2395:
	clrc
	rrf	(??_conv+0)+0,f
	addlw	-1
	skipz
	goto	u2395
	movf	0+(??_conv+0)+0,w
	andlw	0Fh
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	88
	
l2490:	
;i2cdate.c: 88: data((i[6] & 0x0F) + 0x30);
	movf	(conv@i),w
	addlw	06h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	90
;i2cdate.c: 90: switch(i[3])
	goto	l2508
	line	92
;i2cdate.c: 91: {
;i2cdate.c: 92: case 1: word("sun");break;
	
l1054:	
	
l2492:	
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_word
	goto	l1062
	line	93
;i2cdate.c: 93: case 2: word("mon");break;
	
l1056:	
	
l2494:	
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_word
	goto	l1062
	line	94
;i2cdate.c: 94: case 3: word("tue");break;
	
l1057:	
	
l2496:	
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_word
	goto	l1062
	line	95
;i2cdate.c: 95: case 4: word("wed");break;
	
l1058:	
	
l2498:	
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_word
	goto	l1062
	line	96
;i2cdate.c: 96: case 5: word("thu");break;
	
l1059:	
	
l2500:	
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_word
	goto	l1062
	line	97
;i2cdate.c: 97: case 6: word("fri");break;
	
l1060:	
	
l2502:	
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_word
	goto	l1062
	line	98
;i2cdate.c: 98: case 7: word("sat");break;
	
l1061:	
	
l2504:	
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_word
	goto	l1062
	line	99
	
l2506:	
;i2cdate.c: 99: }
	goto	l1062
	line	90
	
l1053:	
	
l2508:	
	movf	(conv@i),w
	addlw	03h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 1 to 7
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           22    12 (average)
; direct_byte           32    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l2492
	xorlw	2^1	; case 2
	skipnz
	goto	l2494
	xorlw	3^2	; case 3
	skipnz
	goto	l2496
	xorlw	4^3	; case 4
	skipnz
	goto	l2498
	xorlw	5^4	; case 5
	skipnz
	goto	l2500
	xorlw	6^5	; case 6
	skipnz
	goto	l2502
	xorlw	7^6	; case 7
	skipnz
	goto	l2504
	goto	l1062
	opt asmopt_on

	line	99
	
l1055:	
	line	103
	
l1062:	
	return
	opt stack 0
GLOBAL	__end_of_conv
	__end_of_conv:
;; =============== function _conv ends ============

	signat	_conv,4216
	global	_word
psect	text356,local,class=CODE,delta=2
global __ptext356
__ptext356:

;; *************** function _word *****************
;; Defined at:
;;		line 52 in file "E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_7(4), STR_6(4), STR_5(4), STR_4(4), 
;;		 -> STR_3(4), STR_2(4), STR_1(4), 
;; Auto vars:     Size  Location     Type
;;  s               1    3[COMMON] PTR const unsigned char 
;;		 -> STR_7(4), STR_6(4), STR_5(4), STR_4(4), 
;;		 -> STR_3(4), STR_2(4), STR_1(4), 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_conv
;; This function uses a non-reentrant model
;;
psect	text356
	file	"E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
	line	52
	global	__size_of_word
	__size_of_word	equ	__end_of_word-_word
	
_word:	
	opt	stack 5
; Regs used in _word: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;word@s stored from wreg
	movwf	(word@s)
	line	53
	
l2456:	
;i2cdate.c: 53: while(*s)
	goto	l2464
	
l1048:	
	line	55
;i2cdate.c: 54: {
;i2cdate.c: 55: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	56
;i2cdate.c: 56: RE1=0;
	bcf	(73/8),(73)&7
	line	57
	
l2458:	
;i2cdate.c: 57: PORTD=*s;
	movf	(word@s),w
	movwf	fsr0
	fcall	stringdir
	movwf	(8)	;volatile
	line	58
	
l2460:	
;i2cdate.c: 58: pulse();
	fcall	_pulse
	line	59
	
l2462:	
;i2cdate.c: 59: *s++;
	movlw	(01h)
	movwf	(??_word+0)+0
	movf	(??_word+0)+0,w
	addwf	(word@s),f
	goto	l2464
	line	60
	
l1047:	
	line	53
	
l2464:	
	movf	(word@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l1048
u2330:
	goto	l1050
	
l1049:	
	line	61
	
l1050:	
	return
	opt stack 0
GLOBAL	__end_of_word
	__end_of_word:
;; =============== function _word ends ============

	signat	_word,4216
	global	_data
psect	text357,local,class=CODE,delta=2
global __ptext357
__ptext357:

;; *************** function _data *****************
;; Defined at:
;;		line 45 in file "E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
;; Parameters:    Size  Location     Type
;;  x               2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_conv
;; This function uses a non-reentrant model
;;
psect	text357
	file	"E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
	line	45
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
	
_data:	
	opt	stack 5
; Regs used in _data: [wreg+status,2+status,0+pclath+cstack]
	line	46
	
l2450:	
;i2cdate.c: 46: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	47
;i2cdate.c: 47: RE1=0;
	bcf	(73/8),(73)&7
	line	48
	
l2452:	
;i2cdate.c: 48: PORTD=x;
	movf	(data@x),w
	movwf	(8)	;volatile
	line	49
	
l2454:	
;i2cdate.c: 49: pulse();
	fcall	_pulse
	line	50
	
l1044:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
;; =============== function _data ends ============

	signat	_data,4216
	global	_disp
psect	text358,local,class=CODE,delta=2
global __ptext358
__ptext358:

;; *************** function _disp *****************
;; Defined at:
;;		line 38 in file "E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
;; Parameters:    Size  Location     Type
;;  a               2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_conv
;;		_main
;; This function uses a non-reentrant model
;;
psect	text358
	file	"E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
	line	38
	global	__size_of_disp
	__size_of_disp	equ	__end_of_disp-_disp
	
_disp:	
	opt	stack 5
; Regs used in _disp: [wreg+status,2+status,0+pclath+cstack]
	line	39
	
l2444:	
;i2cdate.c: 39: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	40
;i2cdate.c: 40: RE1=0;
	bcf	(73/8),(73)&7
	line	41
	
l2446:	
;i2cdate.c: 41: PORTD=a;
	movf	(disp@a),w
	movwf	(8)	;volatile
	line	42
	
l2448:	
;i2cdate.c: 42: pulse();
	fcall	_pulse
	line	43
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_disp
	__end_of_disp:
;; =============== function _disp ends ============

	signat	_disp,4216
	global	_I2C_Restart
psect	text359,local,class=CODE,delta=2
global __ptext359
__ptext359:

;; *************** function _I2C_Restart *****************
;; Defined at:
;;		line 133 in file "E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text359
	file	"E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
	line	133
	global	__size_of_I2C_Restart
	__size_of_I2C_Restart	equ	__end_of_I2C_Restart-_I2C_Restart
	
_I2C_Restart:	
	opt	stack 6
; Regs used in _I2C_Restart: [status,2+status,0+pclath+cstack]
	line	134
	
l2440:	
;i2cdate.c: 134: RSEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7
	line	135
	
l2442:	
;i2cdate.c: 135: wait();
	fcall	_wait
	line	136
	
l1083:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Restart
	__end_of_I2C_Restart:
;; =============== function _I2C_Restart ends ============

	signat	_I2C_Restart,88
	global	_I2C_Send
psect	text360,local,class=CODE,delta=2
global __ptext360
__ptext360:

;; *************** function _I2C_Send *****************
;; Defined at:
;;		line 125 in file "E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
;; Parameters:    Size  Location     Type
;;  send            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  send            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text360
	file	"E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
	line	125
	global	__size_of_I2C_Send
	__size_of_I2C_Send	equ	__end_of_I2C_Send-_I2C_Send
	
_I2C_Send:	
	opt	stack 6
; Regs used in _I2C_Send: [wreg+status,2+status,0+pclath+cstack]
;I2C_Send@send stored from wreg
	movwf	(I2C_Send@send)
	line	126
	
l2434:	
;i2cdate.c: 126: ACKSTAT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1166/8)^080h,(1166)&7
	line	127
	
l2436:	
;i2cdate.c: 127: SSPBUF=send;
	movf	(I2C_Send@send),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	128
;i2cdate.c: 128: while(ACKSTAT==1);
	goto	l1077
	
l1078:	
	
l1077:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l1077
u2320:
	goto	l2438
	
l1079:	
	line	129
	
l2438:	
;i2cdate.c: 129: wait();
	fcall	_wait
	line	130
	
l1080:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Send
	__end_of_I2C_Send:
;; =============== function _I2C_Send ends ============

	signat	_I2C_Send,4216
	global	_I2C_Stop
psect	text361,local,class=CODE,delta=2
global __ptext361
__ptext361:

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 119 in file "E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text361
	file	"E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
	line	119
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
	opt	stack 6
; Regs used in _I2C_Stop: [status,2+status,0+pclath+cstack]
	line	120
	
l2430:	
;i2cdate.c: 120: PEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	121
	
l2432:	
;i2cdate.c: 121: wait();
	fcall	_wait
	line	122
	
l1074:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
;; =============== function _I2C_Stop ends ============

	signat	_I2C_Stop,88
	global	_I2C_Start
psect	text362,local,class=CODE,delta=2
global __ptext362
__ptext362:

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 113 in file "E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text362
	file	"E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
	line	113
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
	opt	stack 6
; Regs used in _I2C_Start: [status,2+status,0+pclath+cstack]
	line	114
	
l2426:	
;i2cdate.c: 114: SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	115
	
l2428:	
;i2cdate.c: 115: wait();
	fcall	_wait
	line	116
	
l1071:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
;; =============== function _I2C_Start ends ============

	signat	_I2C_Start,88
	global	_pulse
psect	text363,local,class=CODE,delta=2
global __ptext363
__ptext363:

;; *************** function _pulse *****************
;; Defined at:
;;		line 30 in file "E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_disp
;;		_data
;;		_word
;; This function uses a non-reentrant model
;;
psect	text363
	file	"E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
	line	30
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg]
	line	31
	
l2420:	
;i2cdate.c: 31: RE2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	line	32
	
l2422:	
;i2cdate.c: 32: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_pulse+0)+0+1),f
	movlw	251
movwf	((??_pulse+0)+0),f
u2427:
	decfsz	((??_pulse+0)+0),f
	goto	u2427
	decfsz	((??_pulse+0)+0+1),f
	goto	u2427
	nop2
opt asmopt_on

	line	33
	
l2424:	
;i2cdate.c: 33: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	34
;i2cdate.c: 34: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_pulse+0)+0+1),f
	movlw	251
movwf	((??_pulse+0)+0),f
u2437:
	decfsz	((??_pulse+0)+0),f
	goto	u2437
	decfsz	((??_pulse+0)+0+1),f
	goto	u2437
	nop2
opt asmopt_on

	line	35
	
l1038:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	_I2C_Read
psect	text364,local,class=CODE,delta=2
global __ptext364
__ptext364:

;; *************** function _I2C_Read *****************
;; Defined at:
;;		line 139 in file "E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
;; Parameters:    Size  Location     Type
;;  i               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               1    1[COMMON] unsigned char 
;;  read            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text364
	file	"E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
	line	139
	global	__size_of_I2C_Read
	__size_of_I2C_Read	equ	__end_of_I2C_Read-_I2C_Read
	
_I2C_Read:	
	opt	stack 7
; Regs used in _I2C_Read: [wreg]
;I2C_Read@i stored from wreg
	line	141
	movwf	(I2C_Read@i)
	
l2406:	
;i2cdate.c: 140: unsigned char read;
;i2cdate.c: 141: if(i==6)
	movf	(I2C_Read@i),w
	xorlw	06h
	skipz
	goto	u2301
	goto	u2300
u2301:
	goto	l1086
u2300:
	line	142
	
l2408:	
;i2cdate.c: 142: ACKDT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	goto	l1088
	line	143
	
l1086:	
	line	144
;i2cdate.c: 143: else
;i2cdate.c: 144: ACKDT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	goto	l1088
	
l1087:	
	line	147
;i2cdate.c: 147: while(BF==0);
	goto	l1088
	
l1089:	
	
l1088:	
	btfss	(1184/8)^080h,(1184)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l1088
u2310:
	goto	l2410
	
l1090:	
	line	148
	
l2410:	
;i2cdate.c: 148: read=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_I2C_Read+0)+0
	movf	(??_I2C_Read+0)+0,w
	movwf	(I2C_Read@read)
	line	149
	
l2412:	
;i2cdate.c: 149: SSPOV=0;
	bcf	(166/8),(166)&7
	line	150
	
l2414:	
;i2cdate.c: 150: SSPIF=0;
	bcf	(99/8),(99)&7
	line	151
	
l2416:	
;i2cdate.c: 151: ACKEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1164/8)^080h,(1164)&7
	line	152
;i2cdate.c: 152: return(read);
	movf	(I2C_Read@read),w
	goto	l1091
	
l2418:	
	line	153
	
l1091:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Read
	__end_of_I2C_Read:
;; =============== function _I2C_Read ends ============

	signat	_I2C_Read,4217
	global	_wait
psect	text365,local,class=CODE,delta=2
global __ptext365
__ptext365:

;; *************** function _wait *****************
;; Defined at:
;;		line 105 in file "E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Send
;;		_I2C_Restart
;; This function uses a non-reentrant model
;;
psect	text365
	file	"E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
	line	105
	global	__size_of_wait
	__size_of_wait	equ	__end_of_wait-_wait
	
_wait:	
	opt	stack 6
; Regs used in _wait: []
	line	107
	
l2404:	
;i2cdate.c: 107: while(SSPIF==0);
	goto	l1065
	
l1066:	
	
l1065:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l1065
u2290:
	
l1067:	
	line	108
;i2cdate.c: 108: SSPIF=0;
	bcf	(99/8),(99)&7
	line	110
	
l1068:	
	return
	opt stack 0
GLOBAL	__end_of_wait
	__end_of_wait:
;; =============== function _wait ends ============

	signat	_wait,88
	global	_delay
psect	text366,local,class=CODE,delta=2
global __ptext366
__ptext366:

;; *************** function _delay *****************
;; Defined at:
;;		line 25 in file "E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
;; Parameters:    Size  Location     Type
;;  d               2    0[COMMON] unsigned int 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text366
	file	"E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
	line	25
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	26
	
l2400:	
;i2cdate.c: 26: while(d--);
	goto	l2402
	
l1033:	
	goto	l2402
	
l1032:	
	
l2402:	
	movlw	low(01h)
	subwf	(delay@d),f
	movlw	high(01h)
	skipc
	decf	(delay@d+1),f
	subwf	(delay@d+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@d+1)),w
	skipz
	goto	u2285
	movlw	low(0FFFFh)
	xorwf	((delay@d)),w
u2285:

	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l2402
u2280:
	goto	l1035
	
l1034:	
	line	27
	
l1035:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_init
psect	text367,local,class=CODE,delta=2
global __ptext367
__ptext367:

;; *************** function _init *****************
;; Defined at:
;;		line 10 in file "E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text367
	file	"E:\KTU\Softwares\MP lab\I2C\I2Cdate\i2cdate.c"
	line	10
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 7
; Regs used in _init: [wreg+status,2]
	line	11
	
l2394:	
;i2cdate.c: 11: TRISE=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	12
;i2cdate.c: 12: TRISD=0X00;
	clrf	(136)^080h	;volatile
	line	14
;i2cdate.c: 14: PORTE=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	15
;i2cdate.c: 15: PORTD=0x00;
	clrf	(8)	;volatile
	line	17
	
l2396:	
;i2cdate.c: 17: SSPSTAT=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	line	18
	
l2398:	
;i2cdate.c: 18: SSPCON=0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	19
;i2cdate.c: 19: SSPCON2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	20
;i2cdate.c: 20: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	21
;i2cdate.c: 21: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	22
	
l1029:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
psect	text368,local,class=CODE,delta=2
global __ptext368
__ptext368:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
