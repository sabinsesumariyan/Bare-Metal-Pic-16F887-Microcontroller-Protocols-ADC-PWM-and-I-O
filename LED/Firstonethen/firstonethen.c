#include<pic.h>
void main()
{
PORTA=0X00;
PORTB=0X00;
TRISA=0X00;
TRISB=0X03;
ANSEL=0X00;
ANSELH=0X00;
int a=0;
int b=0;
while(1)
{
if(RB0==1)
{
a=5;
}
if(a==5 && RB1==1)
{
RA0=1;
RA1=0;
a=0;
}
if(RB1==1)
{
b=5;
}
if(b==5 && RB0==1)
{
RA1=1;
RA0=0;
b=0;
}
if(RB2==1)
{
RA0=0;
RA1=0;
a=0;
b=0;
}
}
}
