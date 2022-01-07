#include<pic.h>
int count;
void timer2()
{
	if(TMR2IF==1)
	{
		count++;	
        TMR2IF=0;
    }
}	
void main()
{
	TRISA=0x00;
	PORTA=0x00;
    TRISC=0x00;
	PORTC=0x00;
	T2CON=0x7F;
	ANSEL=0X00;
	ANSELH=0X00;
	while(1)
	{
		timer2();
        if(count<=15)
        {
			RA0=1;
        }
        if(count>15)
        {
         	RA0=0;
        }
		if(count>=30)
        {
            count=0;
        }
    }
}