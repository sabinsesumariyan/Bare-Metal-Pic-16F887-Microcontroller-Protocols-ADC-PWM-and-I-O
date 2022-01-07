#include<pic.h>
void main()
{
	PORTA=0X00;
	TRISA=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	char arr[10]={	0XBF,0X06,0X5B,0X4F,0X66,0X6D,0X7C,0X07,0XFF,0XE7};
	int i;
	int count;
	while(1)
	{
		for(i=0;i<10;i++)
		{
				while(count<30000)
				{
					count++;
					PORTA=arr[i];
				}
				count=0;
		}
	}
}
		
		