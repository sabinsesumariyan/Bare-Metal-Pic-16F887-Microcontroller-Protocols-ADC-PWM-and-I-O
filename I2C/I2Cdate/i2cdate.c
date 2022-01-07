#include<htc.h>
#ifndef _XTAL_FREQ
#define _XTAL_FREQ 4000000
#endif
#define rs RE0
#define rw RE1
#define en RE2
int number;
void init()
{
    TRISE=0x00;
	TRISD=0X00;
	//ADCON1=0XFF;
	PORTE=0x00;
	PORTD=0x00;	

	SSPSTAT=0X80;   // (OR)       SMP=1;
	SSPCON=0x28;
	SSPCON2=0x00;     
	ANSEL=0X00;
	ANSELH=0X00;
}

void delay(unsigned int d)
{
	while(d--);
}

void pulse()
{
	en=1;
	__delay_ms(10);
	en=0;
	__delay_ms(10);
}

void disp(unsigned int a)
{
	rs=0;
	rw=0;
	PORTD=a;
	pulse();
}
void data(unsigned int x)
{
	rs=1;
	rw=0;
	PORTD=x;
	pulse();
}
void word(const char *s)
{
	while(*s)
	{
		rs=1;
		rw=0;
		PORTD=*s;
		pulse();
		*s++;
	}
}

void conv(unsigned char i[])
{
	
		disp(0x80);
		data(((i[2] & 0X30)>> 4)+0x30);
		data((i[2] & 0x0F) + 0x30);
		data(':');

		data(((i[1] & 0x70) >> 4)+0x30);
		data((i[1] & 0x0F) + 0x30);
		data(':');

		data(((i[0] & 0x70) >> 4)+0x30);
		data((i[0] & 0x0F) + 0x30);

		disp(0xC0);
		data(((i[4] & 0X30)>> 4)+0x30);
		data((i[4] & 0x0F) + 0x30);
		data(':');

		data(((i[5] & 0X30)>>4)+0x30);
		data((i[5] & 0x0F) + 0x30);
		data(':');

		data(((i[6] & 0XF0)>>4)+0x30);// both are going above 9
		data((i[6] & 0x0F) + 0x30);
		
		switch(i[3])
		{
			case 1: word("sun");break;
			case 2: word("mon");break;
			case 3: word("tue");break;
			case 4: word("wed");break;
			case 5: word("thu");break;
			case 6: word("fri");break;
			case 7: word("sat");break;
		}
	
		
		
}
void wait()
{

	while(SSPIF==0);
	SSPIF=0;

}

void I2C_Start()
{
	SEN=1;
	wait();	
}

void I2C_Stop()
{
	PEN=1;
	wait();
}

void I2C_Send(unsigned char send)
{
	ACKSTAT=1;
	SSPBUF=send;
	while(ACKSTAT==1);
	wait();
}

void I2C_Restart()
{
	RSEN=1;
	wait();
}

unsigned char I2C_Read(unsigned char i)
{
	unsigned char read;	
	if(i==6)
		ACKDT=1;	
	else
		ACKDT=0;


	while(BF==0);
	read=SSPBUF;
	SSPOV=0;
	SSPIF=0;
	ACKEN=1;	
	return(read);
}	

void main()
{
	unsigned char i,read[7];
	init();
	disp(0x38);
	disp(0x0e);
	//disp(0x80);
	//word(" rtc check ");
	I2C_Start();//09:45:30 time set
	I2C_Send(0xD0);
	I2C_Send(0x00);
	I2C_Send(0x30);
	I2C_Send(0x45);
	I2C_Send(0x09);
	I2C_Stop();
	delay(65500);
	while(1)
	{
	
		I2C_Start();
		I2C_Send(0xD0);//address of ds1307
		I2C_Send(0x00);
		I2C_Restart();
		I2C_Send(0xD1);
		
		for(i=0;i<7;i++)
		{
			RCEN=1;
			read[i]=I2C_Read(i);
		}
		I2C_Stop();
		delay(10000);
		conv(read);
	}
}	



	