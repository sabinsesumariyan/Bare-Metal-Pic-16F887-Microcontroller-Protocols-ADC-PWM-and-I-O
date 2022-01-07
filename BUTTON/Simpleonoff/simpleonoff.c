#include<pic.h>
void main()
{
	PORTA=0X00;
	PORTB=0X00;
	TRISA=0X01;
	TRISB=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	int x=0;
	int count;
	while(1)
	{
		if(RA0==1)
		{
		x++;
		if(x==1)
		{
			while(count<30000)
			{
				RB0=1;
				count++;
			}
			RB0=0;
			count=0;
			while(RA0==1);
			x=x-1;
			}
		}
	}
}
