#include<pic.h>
void main()
{
	PORTA=0X00;
	PORTB=0X00;
	TRISA=0X3F;
	TRISB=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	int x=0;
	while(1)
	{ 
		if(RA1==1 && x<1 && RB0==0 && RB1==0)
		{
			x=1;
			RB0=1;
		}
		if(RA4==1 && x==1)
		{
			RB0=0;
		}
    	if(RA2==1 && x<1 && RB0==0 &&RB1==0 || RA2==1 && x<2 && RB0==0 && RB1==0)
		{
			x=2;
			RB0=1;
		}
		if(RA5==1 && x==2)
		{
			RB0=0;
		}
		//Lift down operation 
		if(RA1==1 && x>1 && RB1==0 && RB0==0)
		{
			RB1=1;
			x=3;
		}
		if(RA4==1 && x==3)
		{
			RB1=0;
			x=1;
		}
	    if(RA0==1 && x>1 && RB1==0 &&RB0==0 || RA0==1 && x>0 && RB1==0 && RB0==0)
		{
			RB1=1;
			x=4;
		}
		if(RA3==1 && x==4)
		{
			RB1=0;
			x=0;
		}
	}  
}










