#include<pic.h>
int j=0;
char ch[10];
char data;
void delay(int temp)
{
	while(temp--);
}
void tx(char c)
{	
	TXREG=c;
	while(TXIF==0);
	TXIF=0;
}
void rx()
{
	int i;
	char x='a';
	
	for(i=0;x!=0X0D;i++)
	{
		while(RCIF==0);
		x=RCREG;
		ch[i]=x;
		tx(x);
		RCIF=0;
		j++;
	}
}
void master(char *ch)
{
	for(int i=0;i<j-1;i++)
	{
		SSPBUF = *ch++;
		delay(1000);
		while(SSPIF==0);
		SSPIF=0;
	}
}
void main()
{
	PORTC=0X00;
	TRISC=0X80;
	ANSEL=0X00;
	ANSELH=0X00;
	SSPSTAT = 0x00;
	SSPCON = 0x20;
	TXSTA=0X26;
	RCSTA=0X90;
	SPBRG=25;
	while(1)
	{
		rx();
		master(&ch[0]);
		delay(1000);
	}
}
