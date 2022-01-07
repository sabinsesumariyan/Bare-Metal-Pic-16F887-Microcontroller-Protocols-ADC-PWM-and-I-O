#include<pic.h>
void main()
{
	PORTA=0X00;
	TRISA=0X07;
	PORTB=0X00;
	TRISB=0X00;
	PORTC=0X00;
	TRISC=0X00;
	PORTD=0X00;
	TRISD=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	int i=0,j=0;
	int m=0,n=0;
	int seg0=0,seg1=0,seg2=0;
	int mainseg;
	int subseg;
	int segg0=0,segg1=0,segg2=0;
	int arr[]= {0XBF,0X06,0X5B,0X4F,0X66,0X6D,0X7C,0X07,0XFF,0XE7};
	int count=0;
	while(1)
	{	
		if(RA0==1)
		{
			while(RA0==1);
			mainseg++;
			seg0=mainseg;
			seg1=seg0%10;
			seg0=seg0/10;
			seg2=seg0%10;
			while(RA0!=1)
			{	
				while(count<300)
				{
					RA3=1;RA4=0;
					PORTC=arr[seg1];
					RA5=1;RA6=0;
					PORTD=arr[segg1];
					count++;
				}
				count=0;
				while(count<300)
				{
					RA3=0;RA4=1;
					PORTC=arr[seg2];
					RA5=0;RA6=1;
					PORTD=arr[segg2];
					count++;
				}
				count=0;
				if(RA1==1)
				{
					break;
				}
			}
		}			
		if(RA1==1)
		{
			while(RA1==1);
			subseg++;
			segg0=subseg;
			segg1=segg0%10;
			segg0=segg0/10;
			segg2=segg0%10;
			while(RA1!=1)
				{	
				while(count<300)
				{
					RA5=1;RA6=0;
					PORTD=arr[segg1];
					RA3=1;RA4=0;
					PORTC=arr[seg1];
					count++;
				}
				count=0;
				while(count<300)
				{
					RA5=0;RA6=1;
					PORTD=arr[segg2];
					RA3=0;RA4=1;
					PORTC=arr[seg2];
					count++;
				}
				count=0;
				if(RA0==1)
				{
					break;
				}
			}
		}
	}
}					