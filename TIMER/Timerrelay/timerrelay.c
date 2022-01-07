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
        if(count>=0 && count<=75)
        {
			RA1=0;
			RA0=1;
        }
        if(count>=75 && count<=150)
        {
			RA0=0;
         	RA1=1;
			
        }
		if(count>=150 && count<=225)
        {
			RA0=0;
			RA1=0;
            //count=0;
        }
		if(count>225)
		{
			count=0;
		}
    }
}