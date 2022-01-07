#include<pic.h>
__CONFIG(0X2CE4);
int count=0,sec=0;
void timer0()
{
	if(T0IF==1)
	{
		count++;
	}
	if(count==15)
	{
		sec++;
		count==0;
	}
	T0IF=0;
}
void main()
{
	PORTA=0X00;
	TRISA=0X00;
	PORTC=0X00;
	TRISC=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	OPTION_REG=0X07;
	while(1)
	{
		timer0();
		if(count>=0 && count<=75)
		{
			RC0=1;RC1=0;RC2=0;
			RA0=0;RA1=0;RA2=1;
		}
		if(count>=75 && count<=105)
		{	
			RC0=1;RC1=0;RC2=0;
			RA0=0;RA1=1;RA2=0;
		}
		if(count>=105 && count<=180)
		{	
			RC0=0;RC1=0;RC2=1;
			RA0=1;RA1=0;RA2=0;
		}
		if(count>=180 && count<=210)
		{	
			RC0=0;RC1=1;RC2=0;
			RA0=1;RA1=0;RA2=0;
		}
		if(count>=210)
		{
			count=0;
		}
	}
}
			