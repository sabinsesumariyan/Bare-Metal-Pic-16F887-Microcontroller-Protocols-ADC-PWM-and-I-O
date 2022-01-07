#include<pic.h>
#include<string.h>
void main()
{
	PORTA=0X00
	TRISA=0XFF;
	PORTB=0X00;
	TRISB=0X00;
	PORTC=0X00;
	TRISC=0X80;
	PORTD=0X00;
	TRISD=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	int i=0, j=0;
	int arr[10];
	int mat[10];
	int enter=1;
	int count=0;
	int temp=0;
	while(1)
	{
		if(enter==1)
		{
			if(RA6==1)
			{
				while(RA6==1);
				arr[i]=	1;
				if(arr[0]==1)
				{
				PORTD=0X06;
				}
				i++;
			}
			if(RA7==1)
			{
				while(RA7==1);
				arr[i]=	2;
				if(arr[1]==2)
				{
				PORTD=0X5B;
				}
				i++;
			}
			if(RC7==1)
			{
				while(RC7==1);
				arr[i]=	3;
				if(arr[2]==3)
				{
				PORTD=0X4F;
				}
				i++;
			}
			if(i==3)
			{
				enter=2;
				//i=0;
				//arr[3]='\0';
			}
		}
		if(enter==2)
		{
			if(RA6==1)
			{	
				mat[j]=	1;
				j++;
				while(RA6==1);
				if(mat[0]==1)
				{
				PORTD=0X06;
				}
			}
			if(RA7==1)
			{
				
				mat[j]=	2;
				j++;
				while(RA7==1);
				if(mat[1]==2)
				{
				PORTD=0X5B;
				}
			}
			if(RC7==1)
			{	
				mat[j]=	3;
				j++;
				while(RC7==1);
				if(mat[2]==3)
				{
				PORTD=0X4F;
				}
			}
			if(j==3)
			{
				//j=0;
				enter=3;
				//mat[3]='\0';
			}
		}
		if(enter==3)
		{
			for(i=0;i<3;i++)
			{
				if(mat[i]==arr[i])
					{
						count++;
					}
			if(count==3)
			{
				enter=4;
				PORTC=0X06;
			}			
		}
		}
		if(enter==4)
		{
		//Lift forward operation
		if(RA0==1 && temp==0)
		{
			while(RA0==1);
			RB0=0;
			RB1=0;
		}
	
		if(RA3==1 && temp==0)
		{
			RB0=0;
			RB1=0;
			PORTC=0X06;
		}
		
		if(RA1==1 && temp==0)
		{
			while(RA1==1);
			RB0=1;
			temp=1;
		}
		if(RA4==1 && temp==1 )
		{
		RB0=0;
		PORTC=0X5B;
		temp=11;
		}
		if(RA0==1 && temp==11)
		{
			RB1=1;
			temp=20;
		}
		if(RA3==1 && temp==20)
		{
			PORTC=0X06;
			temp=0;
		}
		if(RA2==1 && temp==0)
		{
			while(RA1==1);
			RB0=1;
			temp=2;
		}
		if(RA5==1 && temp==2)
		{
		RB0=0;
		PORTC=0X4F;
		temp=12;
		}
		if(RA2==1 && temp==11)
		{
			while(RA1==1);
			RB0=1;
			temp=3;
		}
		if(RA5==1 && temp==3)
		{
		RB0=0;
		PORTC=0X4F;
		temp=13;
		}
		//Lift Reverse operation
		if(RA1==1 && temp==12)
		{
			while(RA1==1);
			RB1=1;
			temp=9;
		}
		if(RA1==1 && temp==9)
		{
			PORTC=0X5B;
			RB1=0;
			temp=21;
		}
		if(RA1==1 && temp==13)
		{
			while(RA1==1);
			RB1=1;
			temp=4;
		}
		if(RA4==1 && temp==4)
		{
			PORTC=0X5B;
			RB1=0;
			temp=14;
		}
		if(RA0==1 && temp==13)
		{
			while(RA0==1);
			RB1=1;
			temp=5;
		}
		if(RA3==1 && temp==5)
		{
			RB1=0;
			temp=0;
			PORTC=0X06;
		}
		if(RA0==1 && temp==12)
		{
			while(RA0==1);
			RB1=1;
			temp=8;
		}
		if(RA3==1 && temp==8)
		{
			RB1=0;
			temp=0;
			PORTC=0X06;
		}
		if(RA0==1 && temp==14)
		{
			while(RA0==1);
			RB1=1;
			temp=6;
		}
		if(RA3==1 && temp==6)
		{
			RB1=0;
			PORTC=0X06;
			temp=0;
		}	
	}
	}
}	