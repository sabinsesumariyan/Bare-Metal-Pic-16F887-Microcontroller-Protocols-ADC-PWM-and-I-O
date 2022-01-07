#include<pic.h>
sabin(int i)
{
	int count=0;
	RA0=0;RA1=1;
	while(count<30000)
	{
		count++;
		PORTC=i;
	}
	count=0;
}

void main()
{
	PORTA=0X00;
	TRISA=0X00;
	PORTC=0X00;
	TRISC=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	int count=0;
	int j;
	int i;
	char arr[]= {0XBF,0X06,0X5B,0X4F,0X66,0X6D,0X7C,0X07,0XFF,0XE7};
	while(1)
	{	
		
		for(i=0;i<10;i++)
		{
			
			for(j=0;j<10;)
			{
				if(RB0==1)
				{
				sabin(arr[i]);
				RA0=1;RA1=0;
				while(count<30000)
				{
					PORTC=arr[j];
					count++;
				}
				count=0;
				j++;
			}
			}
		}
	}
}
