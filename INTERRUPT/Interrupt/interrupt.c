#include<pic.h>
int res;
void delay(unsigned int val)
{
	while(val--);
}
void interrupt exe()
{
	
		PORTD=PORTC;
		delay(65000);
		PORTD=0X00;
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
	INTCON=0xD0;
	char arr[10]={0XBF,0X06,0X5B,0X4F,0X66,0X6D,0X7C,0X07,0XFF,0XE7};
	long count=0;
	int i;
	while(1)
	{
		//RA1=1;
		//delay(65000);
		//RA1=0;
		//delay(65000);
		for(i=0;i<10;i++)
		{
				while(count<30000)
				{
					count++;
					PORTC=res;
					res=arr[i];
				}
				count=0;
		}
	}
}