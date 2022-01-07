#include<pic.h>
#define RS RA0
#define RW RA1
#define EN RA2
int tot;
int adc()
{
	int high,low;
	ADCON0=0XAB; //contol reg
	ADCON1=0X80; //justification
	while(GO!=0);
	low=ADRESL;
	high=ADRESH;
	if(high==0)
		tot = low+0;         // 1    1   1   1 1   1 1 1  1 1
	if(high==1)              // 512 256 128 64 32 16 8 4  2 1
		tot = low+256;
	if(high==2)
		tot = low+512;
	if(high==3)
	tot = low+768;
	return tot;
}
void delay(unsigned int a)
{
	while(a--);
}
void pwm(unsigned int a)
{
	CCPR1L=a>>2;
	CCP1CON=a&0x30|CCP1CON;
}


void pulse()
{
	EN=1;
	delay(1000);
	EN=0;
	delay(1000);
}
void on()
{
	RS=0;
	RW=0;
	PORTD=0X0E;
	pulse();
}
void type()
{
	RS=0;
	RW=0;
	PORTD=0X38;
	pulse();
}
void address(char data)
{
	RS=0;
	RW=0;
	PORTD= data;
	pulse();
}
void display(char data)
{
	RS=1;
	RW=0;
	PORTD=data;
	pulse();
}


void main()
{
	int count=0;
	PORTA=0X00;
	TRISA=0X00;
	PORTB=0X00;
	TRISB=0X02;
	PORTD=0X00;
	TRISD=0X00;
	ANSEL=0X00;  // 0 to 7 vara ansel la
	ANSELH=0X04;
	PORTC=0X00;
	TRISC=0X00;
	PORTD=0X00;
	TRISD=0X00;
	T2CON=0X07;
	//PR2=0Xff;
	//CCP1CON=0Xce;
	CCP1CON=0X0D;
	on();
	type();
	while(1)
	{
		adc();
		
		pwm(tot);
		for(int i=3;i>=0;i--)
		{
			address(0X80+i);
			display(0X30+(tot%10)); //int to string conversion.
			tot=tot/10;
			
		}
	}
}