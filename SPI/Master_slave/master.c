#include<pic.h>
void delay(int temp)
{
	while(temp--);
}
void master(char *data)
{
	for(int i=0;i<5;i++)
	{
	SSPBUF =*data++ ;
	delay(10000);
	while(SSPIF==0);
	SSPIF=0;
	}
}
void main()
{
	PORTC=0X00;
	TRISC=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	SSPSTAT = 0x00;
	SSPCON = 0x20;
	char data[10]="sabin";
	while(1)
	{
		master(&data);
		delay(1000);
	}
}
