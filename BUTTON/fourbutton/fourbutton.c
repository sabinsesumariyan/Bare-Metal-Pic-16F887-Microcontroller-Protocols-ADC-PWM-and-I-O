#include<pic.h>
void main()
{
PORTA=0X00;
PORTB=0X00;
TRISA=0X00;
TRISB=0X0F;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
//TRISB=0X01;
if(RB0==1)
{
RA0=1;
while(RB0==1);
}
else
{
RA0=0;
}
//TRISB=0X02;
if(RB1==1)
{
RA1=1;
while(RB1==1);
}
else
{
RA1=0;
}
//TRISB=0X04;
if(RB2==1)
{
RA2=1;
while(RB2==1);
}
else
{
RA2=0;
}
//TRISB=0X08;
if(RB3==1)
{
RA3=1;
while(RB3==1);
}
else
{
RA3=0;
}
}
}