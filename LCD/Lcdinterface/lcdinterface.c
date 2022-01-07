#include<pic.h>
#define RS RB0
#define RW RB1
#define EN RB2
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
	PORTC=0X00;
	TRISC=0X00;
	PORTB=0X00;
	TRISB=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	on();
	type();
	char data[6]="sabin";
	int i;
	while(1)
	{
		for(i=0;data[i]!='\0';i++)
		{
			address(0X80+i);
			display(data[i]);
		}
	}
}