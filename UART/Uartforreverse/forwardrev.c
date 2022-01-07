#include<pic.h>
#include<string.h>
#define RS RB0
#define RW RB1
#define EN RB2
char value;
char ans[10];
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
	PORTD=0X0E;
	pulse();
}
void type()
{
	RS=0;
	RW=0;
	PORTD=0X38;
	pulse();
}
void address(char data)
{
	RS=0;
	RW=0;
	PORTC= data;
	pulse();
}
void display(char data)
{
	RS=1;
	RW=0;
	PORTD=data;
	pulse();
}
void display1(char *data)
{
	while(*data)
	{
		RS=1;
		RW=0;
		PORTD=*data++;
		pulse();
	}
}	
//void tx(unsigned char p)
//{
//	TXREG=p;
//	while(TXIF==0);
//	TXIF=0;
//}	
void rx()
{
	int check1;
	int check2;
	int check3;
	int i;
	char forward[10]="forward";
	char reverse[10]="reverse";
	char stop[10]="stop";
	value='A';
	for(i=0;value!=0x0D;i++)
	{
		while(RCIF==0);
		value=RCREG;
		//tx(value);
		ans[i]=value;
		RCIF=0;
	}
	ans[i-1]='\0';
	display1(&ans[0]);
	check1=strcmp(ans,forward);
	check2=strcmp(ans,reverse);
	check3=strcmp(ans,stop);
	if(check1==0)
	{
		RE0=1;
	}
	if(check2==0)
	{
		RE1=1;
	}
	if(check3==0)
	{
		RE2=1;
	}
}	
	
void main()
{
	PORTA=0X00;
   	TRISA=0X00;
 	PORTB=0X00;
	TRISB=0X00;
    PORTC=0X00;
	TRISC=0X80;
	PORTD=0X00;
	TRISD=0X00;
	PORTE=0X00;
	TRISE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
    TXSTA=0X26;
	RCSTA=0X90;
	SPBRG=25;
 	pulse();
 	type();
 	on();
	while(1)
	{
		
		rx();
	}	
}