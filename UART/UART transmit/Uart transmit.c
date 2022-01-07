#include<pic.h>
#define _XTAL_FREQ 4000000
__CONFIG(0X2CE4);
void tx(unsigned char p)
{
	TXREG=p;
	while(TXIF==0);
	TXIF=0;	
}	
void main()
{

    PORTC=0X00;
	TRISC=0X80;
 	ANSEL=0X00;
 	ANSELH=0X00;
	TXSTA=0X26;
	RCSTA=0X90;
	SPBRG=25;
	while(1) 
    {
		tx('A');
        __delay_ms(1000);// 
    }
}