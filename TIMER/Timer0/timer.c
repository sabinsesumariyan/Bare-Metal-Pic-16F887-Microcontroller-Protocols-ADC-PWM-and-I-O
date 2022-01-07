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
	ANSEL=0X00;
	ANSELH=0X00;
	OPTION_REG=0X07;
	while(1)
	{
		timer0();
		if(count>=0 && count<=30)
		{
			RA0=1;
		}
		if(count>=30 && count<=45)
		{
			RA0=0;
		}
	}
}
			