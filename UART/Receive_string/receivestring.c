
#include<pic.h>
#define _XTAL_FREQ 4000000
__CONFIG(0X2CE2);
#define EN RE0
#define RS RE2
#define RW RE1
#define LCD PORTD
unsigned char ch,data[10];
void pulse() 
{  
	EN=1;     		//Enable the EN Pin   
	__delay_ms(10); //Delay for Data Fetch to LCD  
	EN=0;   		//Disable the EN Pin 
	__delay_ms(10); 
} 
void type() 
{  
	RW=0;  		//Disable the RW Pin  
	RS=0;   	//Disable the RS Pin  
	LCD=0X38; 	//Send Display Type  
	pulse();  	//Pulse for Data fetching 
} 
void on() 
{  
	RW=0;   	//Disable the RW Pin  
	RS=0;   	//Disable the RS Pin  
	LCD=0x0C;  	//Send Display ON  
	pulse();   	//Pulse for Data fetching 
} 
void address(unsigned char x) 
{  
	RW=0;   	//Disable the RW Pin  
	RS=0;   	//Disable the RS Pin  
	LCD=x;  	//Send Display Address  
	pulse();   	//Pulse for Data fetching 
} 
void display(unsigned char x) 
{
	RW=0;   	//Disable the RW Pin  
	RS=1;   	//Enable the RS Pin
	LCD=x;   	//Send Display Data  
   	pulse();   	//Pulse for Data fetching 
	
} 
void  display1(char *p)
{
	while(*p)
	{
	RW=0;   	//Disable the RW Pin  
	RS=1;   	//Enable the RS Pin
	LCD=*p++;   	//Send Display Data  
   	pulse();   	//Pulse for Data fetching 
	}
}
void tx(unsigned char p)
{
	TXREG=p;
	while(TXIF==0);
	TXIF=0;
}	
void rx()
{
	int i;
	ch='a';
	for(i=0;ch!=0x0D;i++)
	{
		while(RCIF==0);
		ch=RCREG;
		//display(ch);
		tx(ch);
		data[i]=ch;
		RCIF=0;
	}
	data[i-1]='\0';
	display1(data);
}	

	
void main()
{
	PORTA=0X00;
   	TRISA=0X00;
 	PORTB=0X00;
	TRISB=0X00;
    PORTC=0X00;
	TRISC=0X80;
	PORTD=0X00;
	TRISD=0X00;
	PORTE=0X00;
	TRISE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
    TXSTA=0X26;
	RCSTA=0X90;
	SPBRG=25;
 	pulse();
 	type();
 	on();
	address(0X80);
	tx('a');
	display1("uart");
	while(1)
	{
		address(0X80);
		rx();
	}	
}