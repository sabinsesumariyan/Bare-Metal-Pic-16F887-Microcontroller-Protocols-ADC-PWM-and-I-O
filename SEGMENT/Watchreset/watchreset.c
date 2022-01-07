#include<pic.h>
void main()
{
	PORTA=0X00;
	TRISA=0X80;
	PORTB=0X00;
	TRISB=0X00;
	PORTC=0X00;
	TRISC=0X80;
	PORTD=0X00;
	TRISD=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	int x=0;
	int temp1=0;
	int temp2=0;
	int temp3=0;
	int temp4=0;
	while(1)
	{
		if(RC7==1)
		{
			while(RC7==1);
			x++;
			if(x==4)
				{
				x=0;
				}
		}
		if(RA7==1 && x==0)
		{
			while(RA7==1);
			temp1++;
		}
		if(RA7==1 && x==1)
		{
			while(RA7==1);
			temp2++;
		}
		if(RA7==1 && x==2)
		{
			while(RA7==1);
			temp3++;
		}
		if(RA7==1 && x==3)
		{
			while(RA7==1);
			temp4++;
		}


//segment operation
		if(temp1==1 && x==0)
		{
			PORTC=0XBF;
		}
		if(temp1==2 && x==0)
		{
			PORTC=0X06;
		}
		if(temp1==3 && x==0)
		{
			PORTC=0X5B;
		}
		if(temp1==4 && x==0)
		{
			PORTC=0X4F;
		}
		if(temp1==5 && x==0)
		{
			PORTC=0X66;
		}
		if(temp1==6 && x==0)
		{
			PORTC=0X6D;
		}
		if(temp1==7 && x==0)
		{
			PORTC=0X7C;
		}
		if(temp1==8 && x==0)
		{
			PORTC=0X07;
		}
		if(temp1==9 && x==0)
		{
			PORTC=0XFF;
		}
		if(temp1==10 && x==0)
		{
			PORTC=0XE7;
			temp1=0;
		}
				if(temp2==1 && x==1)
		{
			PORTD=0XBF;
		}
		if(temp2==2 && x==1)
		{
			PORTD=0X06;
		}
		if(temp2==3 && x==1)
		{
			PORTD=0X5B;
		}
		if(temp2==4 && x==1)
		{
			PORTD=0X4F;
		}
		if(temp2==5 && x==1)
		{
			PORTD=0X66;
		}
		if(temp2==6 && x==1)
		{
			PORTD=0X6D;
		}
		if(temp2==7 && x==1)
		{
			PORTD=0X7C;
		}
		if(temp2==8 && x==1)
		{
			PORTD=0X07;
		}
		if(temp2==9 && x==1)
		{
			PORTD=0XFF;
		}
		if(temp2==10 && x==1)
		{
			PORTD=0XE7;
			temp2=0;
		}
		if(temp3==1 && x==2)
		{
			PORTB=0XBF;
		}
		if(temp3==2 && x==2)
		{
			PORTB=0X06;
		}
		if(temp3==3 && x==2)
		{
			PORTB=0X5B;
		}
		if(temp3==4 && x==2)
		{
			PORTB=0X4F;
		}
		if(temp3==5 && x==2)
		{
			PORTB=0X66;
		}
		if(temp3==6 && x==2)
		{
			PORTB=0X6D;
		}
		if(temp3==7 && x==2)
		{
			PORTB=0X7C;
		}
		if(temp3==8 && x==2)
		{
			PORTB=0X07;
		}
		if(temp3==9 && x==2)
		{
			PORTB=0XFF;
		}
		if(temp3==10 && x==2)
		{
			PORTB=0XE7;
			temp3=0;
		}
		if(temp4==1 && x==3)
		{
			PORTA=0XBF;
		}
		if(temp4==2 && x==3)
		{
			PORTA=0X06;
		}
		if(temp4==3 && x==3)
		{
			PORTA=0X5B;
		}
		if(temp4==4 && x==3)
		{
			PORTA=0X4F;
		}
		if(temp4==5 && x==3)
		{
			PORTA=0X66;
		}
		if(temp4==6 && x==3)
		{
			PORTA=0X6D;
		}
		if(temp4==7 && x==3)
		{
			PORTA=0X7C;
		}
		if(temp4==8 && x==3)
		{
			PORTA=0X07;
		}
		if(temp4==9 && x==3)
		{
			PORTA=0XFF;
		}
		if(temp4==10 && x==3)
		{
			PORTA=0XE7;
			temp4=0;
		}



	
	}
}
		
		
			
		
		