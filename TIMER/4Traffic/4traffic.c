#include<pic.h>
//__CONFIG(0X2CE4);
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
	TRISA=0x00;
	PORTA=0x00;
	TRISB=0x00;
	PORTB=0x00;
	TRISD=0x00;
	PORTD=0x00;
    TRISC=0x00;
	PORTC=0x00;
	ANSEL=0X00;
	ANSELH=0X00;
	//OPTION_REG=0X07;
	T1CON=0x31;
	while(1)
	{
		timer1();
        if(count>=0 && count<=10)
        {
			RA2=1;RA1=0;RA0=0;
			RB2=0;RB1=0;RB0=1;
			RC2=0;RC1=0;RC0=1;
			RD2=0;RD1=0;RD0=1;	
        }
        if(count>=10 && count<=14)
        {
         	RA2=0;RA1=1;RA0=0;
			RB2=0;RB1=0;RB0=1;
			RC2=0;RC1=0;RC0=1;
			RD2=0;RD1=0;RD0=1;
        }
		if(count>=14 && count<=24)
        {
            RA2=0;RA1=0;RA0=1;
			RB2=1;RB1=0;RB0=0;
			RC2=0;RC1=0;RC0=1;
			RD2=0;RD1=0;RD0=1;
        }
		if(count>=24 && count<=28)
        {
            RA2=0;RA1=0;RA0=1;
			RB2=0;RB1=1;RB0=0;
			RC2=0;RC1=0;RC0=1;
			RD2=0;RD1=0;RD0=1;
        }
		if(count>=28 && count<=38)
        {
            RA2=0;RA1=0;RA0=1;
			RB2=0;RB1=0;RB0=1;
			RC2=1;RC1=0;RC0=0;
			RD2=0;RD1=0;RD0=1;
        }
		if(count>=38 && count<=44)
        {
            RA2=0;RA1=0;RA0=1;
			RB2=0;RB1=0;RB0=1;
			RC2=0;RC1=1;RC0=0;
			RD2=0;RD1=0;RD0=1;
        }
		if(count>=44 && count<=54)
        {
            RA2=0;RA1=0;RA0=1;
			RB2=0;RB1=0;RB0=1;
			RC2=0;RC1=0;RC0=1;
			RD2=1;RD1=0;RD0=0;
        }
		if(count>=54 && count<=60)
        {
            RA2=0;RA1=0;RA0=1;
			RB2=0;RB1=0;RB0=1;
			RC2=0;RC1=0;RC0=1;
			RD2=0;RD1=1;RD0=0;
        }
		if(count>=60)
        {
			count=0;
            //RA2=0;RA1=0;RA0=1;
			//RB2=0;RB1=1;RB0=0;
			//RC2=0;RC1=0;RC0=1;
			//RD2=0;RD1=0;RD0=1;
        }
    }
}