#include<pic.h>
char arr[10]={0XBF,0X06,0X5B,0X4F,0X66,0X6D,0X7C,0X07,0XFF,0XE7};
int i;
void delay(unsigned int a)
{
	while(a--);
}
void main()
{
	PORTA=0X00;
	TRISA=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	i=eeprom_read(0);
	while(1)
	{
		while(i<10)
		{
			PORTA=arr[i];
			delay(65500);
			i++;
			eeprom_write(0,i);
		}
		i=0;
		eeprom_write(0,i);
	}
}