#include<pic.h>
void led1()
{
int count=0;
while(count<31500)
{
PORTA=0X01;
count++;
}
}
void led2()
{
int count=0;
while(count<31500)
{
PORTB=0X01;
count++;
}
}
void led3()
{
int count=0;
while(count<31500)
{
PORTC=0X01;
count++;
}
}
void led4()
{
int count=0;
while(count<31500)
{
PORTD=0X01;
count++;
}
}
void main()
{
PORTA=0X00;
PORTB=0X00;
PORTC=0X00;
PORTD=0X00;
TRISA=0X00;
TRISB=0X00;
TRISC=0X00;
TRISD=0X00;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
led1();
PORTA=0X00;
led2();
PORTB=0X00;
led3();
PORTC=0X00;
led4();
PORTD=0X00;
}
}