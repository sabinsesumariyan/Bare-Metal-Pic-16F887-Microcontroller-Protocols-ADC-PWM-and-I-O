#include<pic.h>
void delay(unsigned int a)
{
	while(a--);
}
void pwm(unsigned int a)
{
	CCPR1L=a>>2;
	CCP1CON=a&0x30|CCP1CON;
}
void main()
{
	int count=0;
	PORTC=0X00;
	TRISC=0X00;
	PORTD=0X00;
	TRISD=0X00;
	T2CON=0X07;
	PR2=0Xff;
	//CCP1CON=0Xce;
	CCP1CON=0X0D;
	while(1)
	{
		for(count=0;count<=511;count++)
		{
			pwm(count);
		}
		delay(60000);
		for(count=511;count>=0;count--)
		{
			pwm(count);	
		}
		delay(60000);
	}
}