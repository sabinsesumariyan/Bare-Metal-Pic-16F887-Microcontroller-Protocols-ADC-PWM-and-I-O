#include<pic.h>
void main()
{
	PORTA=0X00;
	TRISA=0X43;
	PORTB=0X00;
	TRISB=0X00;
	PORTC=0X00;
	TRISC=0X00;
	PORTD=0X00;
	TRISD=0X00;
	PORTE=0X00;
	TRISE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	int seg0=0,seg1=0,seg2=0;
	int mainseg;
	int subseg;
	int segg0=0,segg1=0,segg2=0;
	int arr[]= {0XBF,0X06,0X5B,0X4F,0X66,0X6D,0X7C,0X07,0XFF,0XE7};
	int count=0;
	int addition=0,temp=0;
	int ans1=0,ans2=0,ans3=0,ans4=0;
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
				while(count<3000)
				{
					RA2=1;RA3=0;
					PORTC=arr[seg1];
					RA4=1;RA5=0;
					PORTD=arr[segg1];
					count++;
				}
				count=0;
				while(count<3000)
				{
					RA2=0;RA3=1;
					PORTC=arr[seg2];
					RA4=0;RA5=1;
					PORTD=arr[segg2];
					count++;
				}
				count=0;
				if(RA1==1 || RA6==1)
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
				while(count<3000)
				{
					RA4=1;RA5=0;
					PORTD=arr[segg1];
					RA2=1;RA3=0;
					PORTC=arr[seg1];
					count++;
				}
				count=0;
				while(count<3000)
				{
					RA4=0;RA5=1;
					PORTD=arr[segg2];
					RA2=0;RA3=1;
					PORTC=arr[seg2];
					count++;
				}
				count=0;
				if(RA0==1 || RA6==1)
				{
					break;
				}
			}
		}
		if(RA6==1)
		{
			while(RA2==1);
			addition=mainseg+subseg;
			temp=addition;
			ans4=temp%10;
			temp=temp/10;
			ans3=temp%10;
			temp=temp/10;
			ans2=temp%10;
			temp=temp/10;
			ans1=temp%10;
			while(RA0!=1 || RA1!=1)
			{
				while(count<3000)
				{
					RA7=0;RE2=1;RE0=1;RE1=1;
					PORTB=arr[0];
					count++;
				}
				count=0;
				while(count<3000)
				{
					count++;
				}
				count=0;
				while(count<3000)
				{
					RA7=1;RE2=0;RE0=1;RE1=1;
					PORTB=arr[1];
					count++;
				}
				count=0;
				while(count<3000)
				{
					RB7=1;
					count++;
				}
				count=0;
				while(count<3000)
				{
					RA7=1;RE2=1;RE0=0;RE1=1;
					PORTB=arr[2];
					count++;
				}
				count=0;
				while(count<3000)
				{
					count++;
				}
				count=0;
				while(count<3000)
				{
					RA7=1;RE2=1;RE0=1;RE1=0;
					PORTB=arr[3];
					count++;
				}
				count=0;
				while(count<3000)
				{
					count++;
				}
				count=0;
				if(RA0==1 || RA1==1)
				{
					break;
				}
			}
		}		
	}
}					