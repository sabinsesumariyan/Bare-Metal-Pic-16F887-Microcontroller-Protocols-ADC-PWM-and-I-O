#include<pic.h>
void led1()
{
int count=0;
while(count<30000)
{
count++;
PORTA=0X01;
}
}
void led2()
{
int count=0;
while(count<30000)
{
count++;
PORTA=0X02;
}
}
void led3()
{
int count=0;
while(count<30000)
{
count++;
PORTA=0X04;
}
}
void led4()
{
int count=0;
while(1)
{
//count++;
PORTA=0X08;
}
}
void main()
{
int stop=1;
PORTA=0X00;
TRISA=0X00;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
if(stop==1)
{
led1();
PORTA=0X00;
led2();
PORTA=0X00;
led3();
PORTA=0X00;
stop=2;
}
led4();
}
}
