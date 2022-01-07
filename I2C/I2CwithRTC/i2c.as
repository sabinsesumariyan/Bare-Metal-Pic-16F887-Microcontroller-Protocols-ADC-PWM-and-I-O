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
	FNCALL	_main,_word
	FNCALL	_main,_delay
	FNCALL	_main,_I2C_Start
	FNCALL	_main,_I2C_Send
	FNCALL	_main,_I2C_Restart
	FNCALL	_main,_I2C_Read
	FNCALL	_main,_I2C_Stop
	FNCALL	_main,_conv
	FNCALL	_conv,_disp
	FNCALL	_conv,_data
	FNCALL	_word,_pulse
	FNCALL	_data,_pulse
	FNCALL	_disp,_pulse
	FNCALL	_I2C_Restart,_wait
	FNCALL	_I2C_Send,_wait
	FNCALL	_I2C_Stop,_wait
	FNCALL	_I2C_Start,_wait
	FNROOT	_main
	global	_PORTA
psect	text198,local,class=CODE,delta=2
global __ptext198
__ptext198:
_PORTA	set	5
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RA0
_RA0	set	40
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
	global	_TRISA
_TRISA	set	133
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
	
STR_1:	
	retlw	32	;' '
	retlw	114	;'r'
	retlw	116	;'t'
	retlw	99	;'c'
	retlw	32	;' '
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	107	;'k'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"i2c.as"
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
	global	main@read
main@read:	; 3 bytes @ 0x7
	ds	3
	global	main@i
main@i:	; 1 bytes @ 0xA
	ds	1
;;Data sizes: Strings 12, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      11
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; conv@i	PTR unsigned char  size(1) Largest target is 3
;;		 -> main@read(COMMON[3]), 
;;
;; word@s	PTR const unsigned char  size(1) Largest target is 12
;;		 -> STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_conv
;;   _conv->_disp
;;   _conv->_data
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
;; (0) _main                                                 5     5      0     345
;;                                              6 COMMON     5     5      0
;;                               _init
;;                               _disp
;;                               _word
;;                              _delay
;;                          _I2C_Start
;;                           _I2C_Send
;;                        _I2C_Restart
;;                           _I2C_Read
;;                           _I2C_Stop
;;                               _conv
;; ---------------------------------------------------------------------------------
;; (1) _conv                                                 2     2      0     150
;;                                              4 COMMON     2     2      0
;;                               _disp
;;                               _data
;; ---------------------------------------------------------------------------------
;; (1) _word                                                 2     2      0      30
;;                                              2 COMMON     2     2      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) _data                                                 2     0      2      15
;;                                              2 COMMON     2     0      2
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) _disp                                                 2     0      2      15
;;                                              2 COMMON     2     0      2
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Restart                                          0     0      0       0
;;                               _wait
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Send                                             1     1      0      15
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
;; (1) _I2C_Read                                             3     3      0      30
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; (2) _wait                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      15
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
;;   _word
;;     _pulse
;;   _delay
;;   _I2C_Start
;;     _wait
;;   _I2C_Send
;;     _wait
;;   _I2C_Restart
;;     _wait
;;   _I2C_Read
;;   _I2C_Stop
;;     _wait
;;   _conv
;;     _disp
;;       _pulse
;;     _data
;;       _pulse
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      B       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
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
;;		line 140 in file "E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  read            3    7[COMMON] unsigned char [3]
;;  i               1   10[COMMON] unsigned char 
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
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_init
;;		_disp
;;		_word
;;		_delay
;;		_I2C_Start
;;		_I2C_Send
;;		_I2C_Restart
;;		_I2C_Read
;;		_I2C_Stop
;;		_conv
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
	line	140
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	142
	
l2321:	
;i2c.c: 141: unsigned char i,read[3];
;i2c.c: 142: init();
	fcall	_init
	line	143
;i2c.c: 143: disp(0x38);
	movlw	low(038h)
	movwf	(?_disp)
	movlw	high(038h)
	movwf	((?_disp))+1
	fcall	_disp
	line	144
;i2c.c: 144: disp(0x0e);
	movlw	low(0Eh)
	movwf	(?_disp)
	movlw	high(0Eh)
	movwf	((?_disp))+1
	fcall	_disp
	line	145
;i2c.c: 145: disp(0x80);
	movlw	low(080h)
	movwf	(?_disp)
	movlw	high(080h)
	movwf	((?_disp))+1
	fcall	_disp
	line	146
	
l2323:	
;i2c.c: 146: word(" rtc check ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_word
	line	147
	
l2325:	
;i2c.c: 147: delay(65500);
	movlw	low(0FFDCh)
	movwf	(?_delay)
	movlw	high(0FFDCh)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l2327
	line	148
;i2c.c: 148: while(1)
	
l1085:	
	line	151
	
l2327:	
;i2c.c: 149: {
;i2c.c: 151: I2C_Start();
	fcall	_I2C_Start
	line	152
	
l2329:	
;i2c.c: 152: I2C_Send(0xD0);
	movlw	(0D0h)
	fcall	_I2C_Send
	line	153
	
l2331:	
;i2c.c: 153: I2C_Send(0x00);
	movlw	(0)
	fcall	_I2C_Send
	line	154
	
l2333:	
;i2c.c: 154: I2C_Restart();
	fcall	_I2C_Restart
	line	155
	
l2335:	
;i2c.c: 155: I2C_Send(0xD1);
	movlw	(0D1h)
	fcall	_I2C_Send
	line	157
	
l2337:	
;i2c.c: 157: for(i=0;i<3;i++)
	clrf	(main@i)
	
l2339:	
	movlw	(03h)
	subwf	(main@i),w
	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l1086
u2250:
	goto	l2349
	
l2341:	
	goto	l2349
	line	158
	
l1086:	
	line	159
;i2c.c: 158: {
;i2c.c: 159: RCEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	160
	
l2343:	
;i2c.c: 160: read[i]=I2C_Read(i);
	movf	(main@i),w
	fcall	_I2C_Read
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@read&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	movwf	indf
	line	157
	
l2345:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2347:	
	movlw	(03h)
	subwf	(main@i),w
	skipc
	goto	u2261
	goto	u2260
u2261:
	goto	l1086
u2260:
	goto	l2349
	
l1087:	
	line	162
	
l2349:	
;i2c.c: 161: }
;i2c.c: 162: I2C_Stop();
	fcall	_I2C_Stop
	line	163
	
l2351:	
;i2c.c: 163: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	164
	
l2353:	
;i2c.c: 164: conv(read);
	movlw	(main@read)&0ffh
	fcall	_conv
	goto	l2327
	line	165
	
l1088:	
	line	148
	goto	l2327
	
l1089:	
	line	166
	
l1090:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_conv
psect	text199,local,class=CODE,delta=2
global __ptext199
__ptext199:

;; *************** function _conv *****************
;; Defined at:
;;		line 66 in file "E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
;; Parameters:    Size  Location     Type
;;  i               1    wreg     PTR unsigned char 
;;		 -> main@read(3), 
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMMON] PTR unsigned char 
;;		 -> main@read(3), 
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
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text199
	file	"E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
	line	66
	global	__size_of_conv
	__size_of_conv	equ	__end_of_conv-_conv
	
_conv:	
	opt	stack 5
; Regs used in _conv: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;conv@i stored from wreg
	line	68
	movwf	(conv@i)
	
l2301:	
;i2c.c: 68: disp(0xc0);
	movlw	low(0C0h)
	movwf	(?_disp)
	movlw	high(0C0h)
	movwf	((?_disp))+1
	fcall	_disp
	line	69
	
l2303:	
;i2c.c: 69: data(((i[2] & 0X30)>> 4)+0x30);
	movf	(conv@i),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	movwf	(??_conv+0)+0
	movlw	04h
u2205:
	clrc
	rrf	(??_conv+0)+0,f
	addlw	-1
	skipz
	goto	u2205
	movf	0+(??_conv+0)+0,w
	andlw	03h
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	70
	
l2305:	
;i2c.c: 70: data((i[2] & 0x0F) + 0x30);
	movf	(conv@i),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	andlw	0Fh
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	71
;i2c.c: 71: data(':');
	movlw	low(03Ah)
	movwf	(?_data)
	movlw	high(03Ah)
	movwf	((?_data))+1
	fcall	_data
	line	73
	
l2307:	
;i2c.c: 73: data(((i[1] & 0x70) >> 4)+0x30);
	movf	(conv@i),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	movwf	(??_conv+0)+0
	movlw	04h
u2215:
	clrc
	rrf	(??_conv+0)+0,f
	addlw	-1
	skipz
	goto	u2215
	movf	0+(??_conv+0)+0,w
	andlw	07h
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	74
	
l2309:	
;i2c.c: 74: data((i[1] & 0x0F) + 0x30);
	movf	(conv@i),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	andlw	0Fh
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	75
;i2c.c: 75: data(':');
	movlw	low(03Ah)
	movwf	(?_data)
	movlw	high(03Ah)
	movwf	((?_data))+1
	fcall	_data
	line	76
	
l2311:	
;i2c.c: 76: data(((i[0] & 0x70) >> 4)+0x30);
	movf	(conv@i),w
	movwf	fsr0
	movf	indf,w
	movwf	(??_conv+0)+0
	movlw	04h
u2225:
	clrc
	rrf	(??_conv+0)+0,f
	addlw	-1
	skipz
	goto	u2225
	movf	0+(??_conv+0)+0,w
	andlw	07h
	addlw	low(030h)
	movwf	(?_data)
	movlw	high(030h)
	skipnc
	movlw	(high(030h)+1)&0ffh
	movwf	((?_data))+1
	fcall	_data
	line	77
	
l2313:	
;i2c.c: 77: data((i[0] & 0x0F) + 0x30);
	movf	(conv@i),w
	movwf	fsr0
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
	
l2315:	
;i2c.c: 78: if(i[1]>=3 && i[1]<=4)
	movf	(conv@i),w
	addlw	01h
	movwf	fsr0
	movlw	(03h)
	subwf	indf,w
	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l1051
u2230:
	
l2317:	
	movf	(conv@i),w
	addlw	01h
	movwf	fsr0
	movlw	(05h)
	subwf	indf,w
	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l1051
u2240:
	line	80
	
l2319:	
;i2c.c: 79: {
;i2c.c: 80: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	81
;i2c.c: 81: }
	goto	l1053
	line	82
	
l1051:	
	line	84
;i2c.c: 82: else
;i2c.c: 83: {
;i2c.c: 84: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	goto	l1053
	line	85
	
l1052:	
	line	87
	
l1053:	
	return
	opt stack 0
GLOBAL	__end_of_conv
	__end_of_conv:
;; =============== function _conv ends ============

	signat	_conv,4216
	global	_word
psect	text200,local,class=CODE,delta=2
global __ptext200
__ptext200:

;; *************** function _word *****************
;; Defined at:
;;		line 54 in file "E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  s               1    3[COMMON] PTR const unsigned char 
;;		 -> STR_1(12), 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text200
	file	"E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
	line	54
	global	__size_of_word
	__size_of_word	equ	__end_of_word-_word
	
_word:	
	opt	stack 6
; Regs used in _word: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;word@s stored from wreg
	movwf	(word@s)
	line	55
	
l2291:	
;i2c.c: 55: while(*s)
	goto	l2299
	
l1046:	
	line	57
;i2c.c: 56: {
;i2c.c: 57: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	58
;i2c.c: 58: RE1=0;
	bcf	(73/8),(73)&7
	line	59
	
l2293:	
;i2c.c: 59: PORTD=*s;
	movf	(word@s),w
	movwf	fsr0
	fcall	stringdir
	movwf	(8)	;volatile
	line	60
	
l2295:	
;i2c.c: 60: pulse();
	fcall	_pulse
	line	61
	
l2297:	
;i2c.c: 61: *s++;
	movlw	(01h)
	movwf	(??_word+0)+0
	movf	(??_word+0)+0,w
	addwf	(word@s),f
	goto	l2299
	line	62
	
l1045:	
	line	55
	
l2299:	
	movf	(word@s),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l1046
u2190:
	goto	l1048
	
l1047:	
	line	63
	
l1048:	
	return
	opt stack 0
GLOBAL	__end_of_word
	__end_of_word:
;; =============== function _word ends ============

	signat	_word,4216
	global	_data
psect	text201,local,class=CODE,delta=2
global __ptext201
__ptext201:

;; *************** function _data *****************
;; Defined at:
;;		line 47 in file "E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
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
psect	text201
	file	"E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
	line	47
	global	__size_of_data
	__size_of_data	equ	__end_of_data-_data
	
_data:	
	opt	stack 5
; Regs used in _data: [wreg+status,2+status,0+pclath+cstack]
	line	48
	
l2285:	
;i2c.c: 48: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	49
;i2c.c: 49: RE1=0;
	bcf	(73/8),(73)&7
	line	50
	
l2287:	
;i2c.c: 50: PORTD=x;
	movf	(data@x),w
	movwf	(8)	;volatile
	line	51
	
l2289:	
;i2c.c: 51: pulse();
	fcall	_pulse
	line	52
	
l1042:	
	return
	opt stack 0
GLOBAL	__end_of_data
	__end_of_data:
;; =============== function _data ends ============

	signat	_data,4216
	global	_disp
psect	text202,local,class=CODE,delta=2
global __ptext202
__ptext202:

;; *************** function _disp *****************
;; Defined at:
;;		line 40 in file "E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
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
psect	text202
	file	"E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
	line	40
	global	__size_of_disp
	__size_of_disp	equ	__end_of_disp-_disp
	
_disp:	
	opt	stack 5
; Regs used in _disp: [wreg+status,2+status,0+pclath+cstack]
	line	41
	
l2279:	
;i2c.c: 41: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	42
;i2c.c: 42: RE1=0;
	bcf	(73/8),(73)&7
	line	43
	
l2281:	
;i2c.c: 43: PORTD=a;
	movf	(disp@a),w
	movwf	(8)	;volatile
	line	44
	
l2283:	
;i2c.c: 44: pulse();
	fcall	_pulse
	line	45
	
l1039:	
	return
	opt stack 0
GLOBAL	__end_of_disp
	__end_of_disp:
;; =============== function _disp ends ============

	signat	_disp,4216
	global	_I2C_Restart
psect	text203,local,class=CODE,delta=2
global __ptext203
__ptext203:

;; *************** function _I2C_Restart *****************
;; Defined at:
;;		line 117 in file "E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
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
psect	text203
	file	"E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
	line	117
	global	__size_of_I2C_Restart
	__size_of_I2C_Restart	equ	__end_of_I2C_Restart-_I2C_Restart
	
_I2C_Restart:	
	opt	stack 6
; Regs used in _I2C_Restart: [status,2+status,0+pclath+cstack]
	line	118
	
l2275:	
;i2c.c: 118: RSEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7
	line	119
	
l2277:	
;i2c.c: 119: wait();
	fcall	_wait
	line	120
	
l1074:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Restart
	__end_of_I2C_Restart:
;; =============== function _I2C_Restart ends ============

	signat	_I2C_Restart,88
	global	_I2C_Send
psect	text204,local,class=CODE,delta=2
global __ptext204
__ptext204:

;; *************** function _I2C_Send *****************
;; Defined at:
;;		line 109 in file "E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
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
psect	text204
	file	"E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
	line	109
	global	__size_of_I2C_Send
	__size_of_I2C_Send	equ	__end_of_I2C_Send-_I2C_Send
	
_I2C_Send:	
	opt	stack 6
; Regs used in _I2C_Send: [wreg+status,2+status,0+pclath+cstack]
;I2C_Send@send stored from wreg
	movwf	(I2C_Send@send)
	line	110
	
l2269:	
;i2c.c: 110: ACKSTAT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1166/8)^080h,(1166)&7
	line	111
	
l2271:	
;i2c.c: 111: SSPBUF=send;
	movf	(I2C_Send@send),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	112
;i2c.c: 112: while(ACKSTAT==1);
	goto	l1068
	
l1069:	
	
l1068:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l1068
u2180:
	goto	l2273
	
l1070:	
	line	113
	
l2273:	
;i2c.c: 113: wait();
	fcall	_wait
	line	114
	
l1071:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Send
	__end_of_I2C_Send:
;; =============== function _I2C_Send ends ============

	signat	_I2C_Send,4216
	global	_I2C_Stop
psect	text205,local,class=CODE,delta=2
global __ptext205
__ptext205:

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 103 in file "E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
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
psect	text205
	file	"E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
	line	103
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
	opt	stack 6
; Regs used in _I2C_Stop: [status,2+status,0+pclath+cstack]
	line	104
	
l2265:	
;i2c.c: 104: PEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	105
	
l2267:	
;i2c.c: 105: wait();
	fcall	_wait
	line	106
	
l1065:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
;; =============== function _I2C_Stop ends ============

	signat	_I2C_Stop,88
	global	_I2C_Start
psect	text206,local,class=CODE,delta=2
global __ptext206
__ptext206:

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 97 in file "E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
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
psect	text206
	file	"E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
	line	97
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
	opt	stack 6
; Regs used in _I2C_Start: [status,2+status,0+pclath+cstack]
	line	98
	
l2261:	
;i2c.c: 98: SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	99
	
l2263:	
;i2c.c: 99: wait();
	fcall	_wait
	line	100
	
l1062:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
;; =============== function _I2C_Start ends ============

	signat	_I2C_Start,88
	global	_pulse
psect	text207,local,class=CODE,delta=2
global __ptext207
__ptext207:

;; *************** function _pulse *****************
;; Defined at:
;;		line 32 in file "E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
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
psect	text207
	file	"E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
	line	32
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg]
	line	33
	
l2255:	
;i2c.c: 33: RE2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	line	34
	
l2257:	
;i2c.c: 34: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_pulse+0)+0+1),f
	movlw	251
movwf	((??_pulse+0)+0),f
u2277:
	decfsz	((??_pulse+0)+0),f
	goto	u2277
	decfsz	((??_pulse+0)+0+1),f
	goto	u2277
	nop2
opt asmopt_on

	line	35
	
l2259:	
;i2c.c: 35: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	36
;i2c.c: 36: _delay((unsigned long)((10)*(4000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_pulse+0)+0+1),f
	movlw	251
movwf	((??_pulse+0)+0),f
u2287:
	decfsz	((??_pulse+0)+0),f
	goto	u2287
	decfsz	((??_pulse+0)+0+1),f
	goto	u2287
	nop2
opt asmopt_on

	line	37
	
l1036:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	_I2C_Read
psect	text208,local,class=CODE,delta=2
global __ptext208
__ptext208:

;; *************** function _I2C_Read *****************
;; Defined at:
;;		line 123 in file "E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
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
psect	text208
	file	"E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
	line	123
	global	__size_of_I2C_Read
	__size_of_I2C_Read	equ	__end_of_I2C_Read-_I2C_Read
	
_I2C_Read:	
	opt	stack 7
; Regs used in _I2C_Read: [wreg]
;I2C_Read@i stored from wreg
	line	125
	movwf	(I2C_Read@i)
	
l1475:	
;i2c.c: 124: unsigned char read;
;i2c.c: 125: if(i==2)
	movf	(I2C_Read@i),w
	xorlw	02h
	skipz
	goto	u31
	goto	u30
u31:
	goto	l1077
u30:
	line	126
	
l1477:	
;i2c.c: 126: ACKDT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	goto	l1079
	line	127
	
l1077:	
	line	128
;i2c.c: 127: else
;i2c.c: 128: ACKDT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	goto	l1079
	
l1078:	
	line	131
;i2c.c: 131: while(BF==0);
	goto	l1079
	
l1080:	
	
l1079:	
	btfss	(1184/8)^080h,(1184)&7
	goto	u41
	goto	u40
u41:
	goto	l1079
u40:
	goto	l1479
	
l1081:	
	line	132
	
l1479:	
;i2c.c: 132: read=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_I2C_Read+0)+0
	movf	(??_I2C_Read+0)+0,w
	movwf	(I2C_Read@read)
	line	133
	
l1481:	
;i2c.c: 133: SSPOV=0;
	bcf	(166/8),(166)&7
	line	134
	
l1483:	
;i2c.c: 134: SSPIF=0;
	bcf	(99/8),(99)&7
	line	135
	
l1485:	
;i2c.c: 135: ACKEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1164/8)^080h,(1164)&7
	line	136
;i2c.c: 136: return(read);
	movf	(I2C_Read@read),w
	goto	l1082
	
l1487:	
	line	137
	
l1082:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Read
	__end_of_I2C_Read:
;; =============== function _I2C_Read ends ============

	signat	_I2C_Read,4217
	global	_wait
psect	text209,local,class=CODE,delta=2
global __ptext209
__ptext209:

;; *************** function _wait *****************
;; Defined at:
;;		line 89 in file "E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
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
psect	text209
	file	"E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
	line	89
	global	__size_of_wait
	__size_of_wait	equ	__end_of_wait-_wait
	
_wait:	
	opt	stack 6
; Regs used in _wait: []
	line	91
	
l1473:	
;i2c.c: 91: while(SSPIF==0);
	goto	l1056
	
l1057:	
	
l1056:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u21
	goto	u20
u21:
	goto	l1056
u20:
	
l1058:	
	line	92
;i2c.c: 92: SSPIF=0;
	bcf	(99/8),(99)&7
	line	94
	
l1059:	
	return
	opt stack 0
GLOBAL	__end_of_wait
	__end_of_wait:
;; =============== function _wait ends ============

	signat	_wait,88
	global	_delay
psect	text210,local,class=CODE,delta=2
global __ptext210
__ptext210:

;; *************** function _delay *****************
;; Defined at:
;;		line 27 in file "E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
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
psect	text210
	file	"E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
	line	27
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	28
	
l1469:	
;i2c.c: 28: while(d--);
	goto	l1471
	
l1031:	
	goto	l1471
	
l1030:	
	
l1471:	
	movlw	low(01h)
	subwf	(delay@d),f
	movlw	high(01h)
	skipc
	decf	(delay@d+1),f
	subwf	(delay@d+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@d+1)),w
	skipz
	goto	u15
	movlw	low(0FFFFh)
	xorwf	((delay@d)),w
u15:

	skipz
	goto	u11
	goto	u10
u11:
	goto	l1471
u10:
	goto	l1033
	
l1032:	
	line	29
	
l1033:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_init
psect	text211,local,class=CODE,delta=2
global __ptext211
__ptext211:

;; *************** function _init *****************
;; Defined at:
;;		line 10 in file "E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
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
psect	text211
	file	"E:\KTU\Softwares\MP lab\I2C\I2CwithRTC\i2c.c"
	line	10
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
	opt	stack 7
; Regs used in _init: [wreg+status,2]
	line	11
	
l1463:	
;i2c.c: 11: TRISE=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	12
;i2c.c: 12: TRISD=0X00;
	clrf	(136)^080h	;volatile
	line	14
;i2c.c: 14: PORTE=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	15
;i2c.c: 15: PORTD=0x00;
	clrf	(8)	;volatile
	line	16
;i2c.c: 16: PORTA=0X00;
	clrf	(5)	;volatile
	line	17
;i2c.c: 17: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	19
	
l1465:	
;i2c.c: 19: SSPSTAT=0X80;
	movlw	(080h)
	movwf	(148)^080h	;volatile
	line	20
	
l1467:	
;i2c.c: 20: SSPCON=0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	21
;i2c.c: 21: SSPCON2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	22
;i2c.c: 22: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	23
;i2c.c: 23: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	24
	
l1027:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
;; =============== function _init ends ============

	signat	_init,88
psect	text212,local,class=CODE,delta=2
global __ptext212
__ptext212:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
