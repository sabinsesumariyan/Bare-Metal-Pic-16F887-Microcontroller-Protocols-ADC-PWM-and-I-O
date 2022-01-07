#include<pic.h>
int tot;
int adc()
{
	int high,low;
	ADCON0=0X83; //contol reg
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
		if(tot>=0 && tot<=200)
		{
			RA2=0;
			RA1=1;
		}
		if(tot>=200 && tot<=700)
		{
			RA1=0;
			RA2=0;
		}
		if(tot>=700 && tot<=1023)
		{
			RA1=0;
			RA2=1;
		}
		for(int i=3;i>=0;i--)
		{
			address(0X80+i);
			display(0X30+(tot%10)); //int to string conversion.
			tot=tot/10;
		}
		
	}
}
		