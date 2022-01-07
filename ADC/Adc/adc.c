#include<pic.h>
int x;
void adc()
{
	ADCON0=0X83; //contol reg
	ADCON1=0X80; //justification
	while(GO==1);
	x=ADRESL|(ADRESH<<8);
}
#define RS RD0
#define RW RD1
#define EN RD2
void delay(int del)
{
	while(del--);
}
void pulse()
{
	EN=1;
	delay(100);
	EN=0;
	delay(100);
}
void on()
{
	RS=0;
	RW=0;
	PORTC=0X0E;
	pulse();
}
void type()
{
	RS=0;
	RW=0;
	PORTC=0X38;
	pulse();
}
void address(char data)
{
	RS=0;
	RW=0;
	PORTC= data;
	pulse();
}
void display(char data)
{
	RS=1;
	RW=0;
	PORTC=data;
	pulse();
}
void main()
{
	PORTA=0X00;
	TRISA=0X01;   // input ah sollanum
	PORTC=0X00;
	TRISC=0X00; 
	PORTD=0X00;
	TRISD=0X00;
	ANSEL=0X01;  // 0 to 9 vara ansel la
	ANSELH=0X00;
	on();
	type();
	while(1)
	{
		adc();
		int t=x;
		for(int i=3;i>=0;i--)
		{
			address(0X80+i);
			display(0X30+(t%10));
			t=t/10;
		}
		if(x==1023)
		{
			RA1=1;
		}
		else
		{
			RA1=0;
		}
	}
}
		