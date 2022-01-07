#include<pic.h>
void main()
{
PORTA=0X00;
PORTB=0X00;
TRISA=0X03;
TRISB=0X00;
ANSEL=0X00;
ANSELH=0X00;
int count1;
int count2;
int temp=0;
int x=0;
int y=0;
while(1)
{
	if(RA0==1 && y<1)
	{
		x++;
		if(x==1)
			{
				while(count1<30000)
				{
					RB0=1;
					count1++;
				}
				RB0=0;
				count1=0;
				while(RA0==1);
				}
			while(RA0==1);
}
if(RA0==1 && y>=1)
{
y--;
if(y==0)
{
while(count1<30000)
{
count1++;
RB1=1;
}
count1=0;
RB1=0;
}
while(RA0==1);
}
if(RA1==1 && x<1)
{
y++;
if(y==1)
{
while(count2<30000)
{
RB0=1;
count2++;
}
RB0=0;
count2=0;
}
while(RA1==1);
}
if(RA1==1 && x>=1)
{
x--;
if(x==0)
{
while(count2<30000)
{
count2++;
RB1=1;
}
RB1=0;
count2=0;
}
while(RA1==1);
}
}
}




