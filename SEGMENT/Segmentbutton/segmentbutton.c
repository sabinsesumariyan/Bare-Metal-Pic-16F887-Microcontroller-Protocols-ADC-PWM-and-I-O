#include<pic.h>
void main()
{
	PORTA=0X00;
	PORTB=0X00;
	PORTC=0X00;
	TRISA=0XFF;
	TRISB=0X00;
	TRISC=0X03;
	ANSEL=0X00;
	ANSELH=0X00;
	int count=0;
	while(1)
	{
		if(RA0==1)
		{
			while(count<30000)
			{
				PORTB=0XBF;
				count++;
			}
			count=0;
			PORTB=0X00;
		}
		if(RA1==1)
		{
			while(count<30000)
			{
				PORTB=0X06;
				count++;
			}
			count=0;
			PORTB=0X00;
		}
		if(RA2==1)
		{
			while(count<30000)
			{
				PORTB=0X5B;
				count++;
			}
			count=0;
			PORTB=0X00;
		}
		if(RA3==1)
		{
			while(count<30000)
			{
				PORTB=0X4F;
				count++;
			}
			count=0;
			PORTB=0X00;
		}
		if(RA4==1)
		{
			while(count<30000)
			{
				PORTB=0X66;
				count++;
			}
			count=0;
			PORTB=0X00;
		}
		if(RA5==1)
		{
			while(count<30000)
			{
				PORTB=0X6D;
				count++;
			}
			count=0;
			PORTB=0X00;
		}
		if(RA6==1)
		{
			while(count<30000)
			{
				PORTB=0X7C;
				count++;
			}
			count=0;
			PORTB=0X00;
		}
		if(RA7==1)
		{
			while(count<30000)
			{
				PORTB=0X07;
				count++;
			}
			count=0;
			PORTB=0X00;
		}
		if(RC0==1)
		{
			while(count<30000)
			{
				PORTB=0XFF;
				count++;
			}
			count=0;
			PORTB=0X00;
		}
		if(RC1==1)
		{
			while(count<30000)
			{
				PORTB=0XE7;
				count++;
			}
			count=0;
			PORTB=0X00;
		}
	}
}