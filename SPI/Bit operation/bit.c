#include<pic.h>
void main()
{
	PORTB=0X00;
	TRISB=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	int a=255;
	while(1)
	{
		PORTB=a;
	}
}