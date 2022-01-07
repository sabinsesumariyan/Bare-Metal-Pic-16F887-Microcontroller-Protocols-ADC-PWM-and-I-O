#include<pic.h>
void main()
{
PORTA=0X00;
PORTB=0X00;
TRISA=0X00;
TRISB=0X03;
ANSEL=0X00;
ANSELH=0X00;
int x[2];
int count=0;
int m=1;
int i;
while(1)
{
if(m==1)
{
if(RB0==1 || RB1==1 )
{
x[0]=1;
while(RB0==1 || RB1==1);
}
if(x[0]==1)
{
count=0;
while(count<30000)
{
RA0=1;
count++;
}
RA0=0;
m=2;
count=0;
}
}
if(m==2)
{
if(RB0==1 || RB1==1)
{
x[1]=2;
while(RB0==1 || RB1==1);
}
if(x[1]==2)
{
count=0;
for(i=0;i<2;i++)
{
while(count<30000)
{
RA0=1;
count++;
}
while(count>0)
{
RA0=0;
count--;
}
}
x[1]=0;
x[0]=0;
}
}
}
}







