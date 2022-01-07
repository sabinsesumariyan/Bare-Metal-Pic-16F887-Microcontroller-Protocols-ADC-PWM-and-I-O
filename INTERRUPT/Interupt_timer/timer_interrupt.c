#include<pic.h>
int res;
int count=0;
void timer0()
{
	if(T0IF==1)
	{
		count++;
	}
	T0IF=0;
}
void delay(unsigned int val)
{
	while(val--);
}
void interrupt exe()
{
	timer0();
	if(count>=0 && count<=15)
	{
		PORTA=0X06;
	}
	if(count>=15 && count<=30)
	{
		PORTA=0X5B;
	}
	if(count>=30 && count<=45)
	{
		PORTA=0X4F;
	}
	if(count>=45 && count<=60)
	{
		PORTA=0X66;
	}
	if(count>=60 && count<=75)
	{
		PORTA=0X6D;
	}
	if(count>=75 && count<=90)
	{
		PORTA=0X7c;
	}
	if(count>=90 && count<=105)
	{
		PORTA=0X07;
	}
	if(count>=105 && count<=130)
	{
		PORTA=0XFF;
	}
	if(count>=130 && count<=145)
	{
		PORTA=0XE7;
	}
	if(count>=145 && count<=160)
	{
		PORTA=0XBF;
	}	
	INTF=0;		
}
void main()
{
	PORTA=0X00;
	PORTB=0X00;
	PORTC=0X00;
	TRISC=0X00;
	PORTD=0X00;
	TRISD=0X00;
	TRISA=0X00;
	TRISB=0X01;
	ANSEL=0X00;
	ANSELH=0X00;
	INTCON=0xA0;
	OPTION_REG=0X07;
	
	char arr[10]={0XBF,0X06,0X5B,0X4F,0X66,0X6D,0X7C,0X07,0XFF,0XE7};
	long count=0;
	int i;
	while(1)
	{
		RC0=1;
		delay(35000);
		RC0=0;
		delay(35000);
	}
}