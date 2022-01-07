#include<pic.h>
void main()
{
	PORTA=0X00;
	TRISA=0X02;
	PORTB=0X00;
	TRISB=0X00;
	PORTC=0X00;
	TRISC=0X00;
	PORTD=0X00;
	TRISD=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	int x=0;
	while(1)
	{
		if(RA0==1)
		{
			//PORTB=0X00;
			PORTC=0X00;
			PORTD=0X00;
			while(RA0==1);
			x++;
		}
		if(x==1)
		{
		PORTB=0XBF;
		}
		if(x==2)
		{
		PORTB=0X06;
		}
		if(x==3)
		{
		PORTB=0X5B;
		}
		if(x==4)
		{
		PORTB=0X4F;
		}
		if(x==5)
		{
		PORTB=0X66;
		}
		if(x==6)
		{
		PORTB=0X6D;
		}
		if(x==7)
		{
		PORTB=0X7C;
		}
		if(x==8)
		{
		PORTB=0X07;
		}
		if(x==9)
		{
		PORTB=0XFF;
		}
		if(x==10)
		{
		PORTB=0XE7;
		x=0;
		}
		if(x==1 && RA1==1)
		{
			PORTB=0XBF;
			RC0=1;
		}
		if(x==2 && RA1==1)
		{
			PORTB=0X06;
			RC1=1;
		}
		if(x==3 && RA1==1)
		{
			PORTB=0X5B;
			RC2=1;
		}
		if(x==4 && RA1==1)
		{
			PORTB=0X4F;
			RC3=1;
		}
		if(x==5 && RA1==1)
		{
			PORTB=0X66;
			RC4=1;
		}
		if(x==6 && RA1==1)
		{
			PORTB=0X6D;
			RC5=1;
		}
		if(x==7 && RA1==1)
		{
			PORTB=0X7C;
			RC6=1;
		}
		if(x==8 && RA1==1)
		{
			PORTB=0X07;
			RC7=1;
		}
		if(x==9 && RA1==1)
		{
			PORTB=0XFF;
			RD0=1;
		}
		if(x==10 && RA1==1)
		{
			PORTB=0XE7;
			RD1=1;
			x=0;
		}
	}
}