#include<pic.h>
#define RS RB0
#define RW RB1
#define EN RB2
char data[10];	
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
void slave()
{
	for(int i=0;i<10;i++)
	{
		while(SSPIF==0);
		data[i] = SSPBUF;
		SSPIF = 0;
		delay(1000);
		address(0x80+i);
		display(data[i]);
	}
}
void main()
{
	PORTB=0X00;
	TRISB=0X00;
	PORTC=0X00;
	TRISC=0X00;
	PORTD=0X00;
	TRISC=0X18;
	TRISD=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	SSPSTAT=0x00;
	SSPCON=0x25;
	on();
	type();
	while(1)
	{
		slave();
		delay(1000);
	}
}
			
	
	
