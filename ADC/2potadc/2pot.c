#include<pic.h>
int tot1;
int tot2;
int adc1()
{
	int high,low;
	ADCON0=0X83; //contol reg
	ADCON1=0X80; //justification
	while(GO!=0);
	low=ADRESL;
	high=ADRESH;
	if(high==0)
		tot1 = low+0;         // 1    1   1   1 1   1 1 1  1 1
	if(high==1)              // 512 256 128 64 32 16 8 4  2 1
		tot1 = low+256;
	if(high==2)
		tot1 = low+512;
	if(high==3)
		tot1 = low+768;
	return tot1;
}
int adc2()
{
	int high,low;
	ADCON0=0X2B; //contol reg
	ADCON1=0X80; //justification
	while(GO!=0);
	low=ADRESL;
	high=ADRESH;
	if(high==0)
		tot2 = low+0;         // 1    1   1   1 1   1 1 1  1 1
	if(high==1)              // 512 256 128 64 32 16 8 4  2 1
		tot2 = low+256;
	if(high==2)
		tot2 = low+512;
	if(high==3)
		tot2 = low+768;
	return tot2;
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
	TRISA=0X01;
	PORTB=0X00;
	TRISB=0X02;   // input ah sollanum
	PORTC=0X00;
	TRISC=0X00; 
	PORTD=0X00;
	TRISD=0X00;
	ANSEL=0X01;  // 0 to 7 vara ansel la
	ANSELH=0X04; // 8 to 13
	on();
	type();
	while(1)
	{
		adc1();
		for(int i=3;i>=0;i--)
		{
			address(0X80+i);
			display(0X30+(tot1%10)); //int to string conversion.
			tot1=tot1/10;
		}
		adc2();
		for(int i=3;i>=0;i--)
		{
			address(0XC0+i);
			display(0X30+(tot2%10)); //int to string conversion.
			tot2=tot2/10;
		}
	}
}
		