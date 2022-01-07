#include<pic.h>
int count;
void timer1()
{
	if(TMR1IF==1)
	{
		count++;	
        TMR1IF=0;
                    }
	}	
void main()
{
	TRISD=0x00;
	PORTD=0x00;
    TRISC=0x00;
	PORTC=0x00;
	T1CON=0x31;
	while(1)
	{
		timer1();
        if(count<=2)
        {
			RC0=1;
        }
        if(count>2)
        {
         	RC0=0;
        }
		if(count>=4)
        {
            count=0;
        }
    }
}