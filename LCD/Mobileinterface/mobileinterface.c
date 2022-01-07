#include<pic.h>
#define RS RD0
#define RW RD1
#define EN RD2
void delay(int del)
{
	while(del--);
}
void pulse()
{
	EN=1;
	delay(100);
	EN=0;
	delay(100);
}
void on()
{
	RS=0;
	RW=0;
	PORTC=0X0E;
	pulse();
}
void type()
{
	RS=0;
	RW=0;
	PORTC=0X38;
	pulse();
}
void address(char data)
{
	RS=0;
	RW=0;
	PORTC=data;
	pulse();
}
void display(char data)
{
	RS=1;
	RW=0;
	PORTC=data;
	pulse();
}
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
	char number[10];
	char ring[10]="Ringing";
	char wrong[15]="Wrong number";
	char hang[15]="Hang up";
	int i=0;
	int j=0;
	int control=1;
	on();
	type();
	while(1)
	{
		if(control==1)
		{
			RB0=1;RB1=0;RB2=0;RB3=0;
			if(RA0==1)
			{
				while(RA0==1);
				number[j]='1';
				address(0X80+j);
				display(number[j]);	
				j++;
			}
			if(RA1==1)
			{
				while(RA1==1);
				number[j]='2';
				address(0X80+j);
				display(number[j]);	
				j++;
			}
			if(RA2==1)
			{
				while(RA2==1);
				number[j]='3';
				address(0X80+j);
				display(number[j]);	
				j++;
			}
			RB0=0;RB1=1;RB2=0;RB3=0;
			if(RA0==1)
			{
				while(RA0==1);
				number[j]='4';
				address(0X80+j);
				display(number[j]);	
				j++;
			}
			if(RA1==1)
			{
				while(RA1==1);
				number[j]='5';
				address(0X80+j);
				display(number[j]);	
				j++;
			}
			if(RA2==1)
			{
				while(RA2==1);
				number[j]='6';
				address(0X80+j);
				display(number[j]);	
				j++;
			}
			RB0=0;RB1=0;RB2=1;RB3=0;
			if(RA0==1)
			{
				while(RA0==1);
				number[j]='7';
				address(0X80+j);
				display(number[j]);	
				j++;
			}
			if(RA1==1)
			{
				while(RA1==1);
				number[j]='8';
				address(0X80+j);
				display(number[j]);	
				j++;
			}
			if(RA2==1)
			{
				while(RA2==1);
				number[j]='9';
				address(0X80+j);
				display(number[j]);	
				j++;
			}
			RB0=0;RB1=0;RB2=0;RB3=1;
			if(RA0==1)
			{
				while(RA0==1);
				if(j==10)
				{
					for(i=0;ring[i]!='\0';i++)
					{
						address(0XC0+i);
						display(ring[i]);	
					}
				}
				else
				{
					for(i=0;wrong[i]!='\0';i++)
					{
						address(0XC0+i);
						display(wrong[i]);
					}
				}
			}
			if(RA1==1)
			{
				while(RA1==1);
				number[j]='0';
				address(0X80+j);
				display(number[j]);	
				j++;
			}
			if(RA2==1)
			{
				while(RA2==1);
				for(i=0;hang[i]!='\0';i++)
				{
					address(0XC0+i);
					display(hang[i]);
				}
			}
		}
	}
}
		
		
			
