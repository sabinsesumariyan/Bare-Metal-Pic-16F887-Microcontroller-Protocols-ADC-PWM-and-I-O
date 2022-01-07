#include<pic.h>
void led1()
{
int count=0;
while(count<31500)
{
count++;
PORTA=0X01;
}
}
void led2()
{
int count =0;
while(count<31500)
{
count++;
PORTA=0X03;
}
}
void led3()
{
int count=0;
while(count<31500)
{
count++;
PORTA=0X07;
}
}
void led4()
{
int count=0;
while(count<31500)
{
count++;
PORTA=0X0F;
}
}
void led5()
{
int count=0;
while(count<31500)
{
count++;
PORTB=0X01;
}
}
void led6()
{
int count=0;
while(count<31500)
{
count++;
PORTB=0X03;
}
}
void led7()
{
int count=0;
while(count<31500)
{
count++;
PORTB=0X07;
}
}
void led8()
{
int count=0;
while(count<31500)
{
count++;
PORTB=0X0F;
}
}
void main()
{
int m=1;
PORTA=0X00;
PORTB=0X00;
TRISA=0X00;
TRISB=0X00;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
if(m==1)
{
led1();
led2();
led3();
led4();
PORTA=0X00;
led5();
led6();
led7();
led8();
PORTB=0X00;
m=2;
}
}
}

