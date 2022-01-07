#include<pic.h>
void led1()
{
int count=0;;
while(count<31500)
{
PORTA=0X01;
count++;
}
}
void led2()
{
int count=0;;
while(count<31500)
{
PORTA=0X02;
count++;
}
}
void led3()
{
int count=0;;
while(count<31500)
{
PORTA=0X04;
count++;
}
}
void led4()
{
int count=0;;
while(count<31500)
{
PORTA=0X08;
count++;
}
}
void led5()
{
int count=0;;
while(count<31500)
{
PORTB=0X01;
count++;
}
}
void led6()
{
int count=0;;
while(count<31500)
{
PORTB=0X02;
count++;
}
}
void led7()
{
int count=0;;
while(count<31500)
{
PORTB=0X04;
count++;
}
}
void led8()
{
int count=0;;
while(count<31500)
{
PORTB=0X08;
count++;
}
}

void main()
{
PORTA=0X00;
PORTB=0X00;
TRISA=0X00;
TRISB=0X00;
ANSEL=0X00;
ANSELH=0X00;
int i=0;
while(1)
{
led1();
PORTA=0X00;
led2();
PORTA=0X00;
led3();
PORTA=0X00;
led4();
PORTA=0X00;
led5();
PORTB=0X00;
led6();
PORTB=0X00;
led7();
PORTB=0X00;
led8();
PORTB=0X00;
led7();
PORTB=0X00;
led6();
PORTB=0X00;
led5();
PORTB=0X00;
led4();
PORTA=0X00;
led3();
PORTA=0X00;
led2();
PORTA=0X00;
}
}
