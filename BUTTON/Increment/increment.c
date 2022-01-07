#include<pic.h>
void main()
{
	PORTA=0X00;
	TRISA=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	int count=0;
	while(1)
	{
		if(RB0==1)
		{
			while(1)
			{
			while(count<30000)
			{
				RA0=1;
				RA1=0;
				count++;
			}
			while(count>0)
			{
				RA1=1;
				RA0=0;
				count--;
			}
			}
		}
	}
}
				