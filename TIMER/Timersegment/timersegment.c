#include<pic.h>
int count=0;
void timer0()
{
	if(T0IF==1)
	{
		count++;
	}
	T0IF=0;
}

void main()
{
	PORTA=0X00;
	TRISA=0X00;
	PORTB=0X00;
	TRISB=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	OPTION_REG=0X07;
	while(1)
	{
		timer0();
		if(count>=0 && count<=15)
		{
			PORTB=0X06;
		}
		if(count>=15 && count<=30)
		{
			PORTB=0X5B;
		}
		if(count>=30 && count<=45)
		{
			PORTB=0X4F;
		}
		if(count>=45 && count<=60)
		{
			PORTB=0X66;
		}
		if(count>=60 && count<=75)
		{
			PORTB=0X6D;
		}
		if(count>=75 && count<=90)
		{
			PORTB=0X7c;
		}
		if(count>=90 && count<=105)
		{
			PORTB=0X07;
		}
		if(count>=105 && count<=130)
		{
			PORTB=0XFF;
		}
		if(count>=130 && count<=145)
		{
			PORTB=0XE7;
		}
		if(count>=145 && count<=160)
		{
			PORTB=0XBF;
		}	
	}
}