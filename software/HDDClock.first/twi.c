/*############################################### 	
  ####	HDDClock driver source code  		#####
  ####	file: twi.c							#####
  ####	date: Aug 18th, 2009				#####
  ###############################################*/
  
#include "twi.h"
#include <inttypes.h>
#include <util/delay.h>  

#define SLA_W 0b11010000
#define SLA_R 0b11010001

#define SCL_CLOCK 100000

//###################################################################
void init_i2c(void)
{
	TWBR = 72;
	TWSR = 0; 
}
//###################################################################
uint8_t SetPointer(uint8_t Address)
{
	TWCR = TW_MT_SEND_START;
	while(!(TWCR & _BV(TWINT)));
	
	if(!(TWSR & TW_START))
		return 0;

	TWDR = SLA_W;
	TWCR = _BV(TWINT) | _BV(TWEN);
	while(!(TWCR & _BV(TWINT)));

	if(!(TWSR & TW_MT_SLA_ACK))
		return 0;
		
	TWDR = Address;
	TWCR = _BV(TWINT) | _BV(TWEN);	
	while(!(TWCR & _BV(TWINT)));
			 
	if(!(TWSR & TW_MT_DATA_ACK))
		return 0;
		
	TWCR = TW_MT_SEND_STOP;
	_delay_ms(1);
	return 1;
}
//###################################################################
uint8_t WriteI2C(uint8_t Address, uint8_t Data)
{
	TWCR = TW_MT_SEND_START;
	while(!(TWCR & _BV(TWINT)));
	
	if(!(TWSR & TW_START))
		return 0;
	

	TWDR = SLA_W;
	TWCR = _BV(TWINT) | _BV(TWEN);
	while(!(TWCR & _BV(TWINT)));

	if(!(TWSR & TW_MT_SLA_ACK))
		return 0;
		
	TWDR = Address;
	TWCR = _BV(TWINT) | _BV(TWEN);	
	while(!(TWCR & _BV(TWINT)));
			
	if(!(TWSR & TW_MT_DATA_ACK))
		return 0;
		
	TWDR = Data;
	TWCR = _BV(TWINT) | _BV(TWEN);	
	while(!(TWCR & _BV(TWINT)));	

	if(!(TWSR & TW_MT_DATA_ACK))
		return 0;
	
	TWCR = TW_MT_SEND_STOP;
	_delay_ms(1);
	return 1;
}
//###################################################################
uint8_t WriteBufI2C(uint8_t Address, uint8_t *Data, uint8_t Len)
{
	uint8_t Poz;
	TWCR = TW_MT_SEND_START;
	while(!(TWCR & _BV(TWINT)));
	
	if(!(TWSR & TW_START))
		return 0;

	TWDR = SLA_W;
	TWCR = _BV(TWINT) | _BV(TWEN);
	while(!(TWCR & _BV(TWINT)));

	if(!(TWSR & TW_MT_SLA_ACK))
		return 0;
		
	TWDR = Address;
	TWCR = _BV(TWINT) | _BV(TWEN);	
	while(!(TWCR & _BV(TWINT)));
			
	if(!(TWSR & TW_MT_DATA_ACK))
		return 0;
	
	for(Poz = 0; Poz < Len; Poz++)
	{
		TWDR = Data[Poz];
		TWCR = _BV(TWINT) | _BV(TWEN);	
		while(!(TWCR & _BV(TWINT)));	
	
		if(!(TWSR & TW_MT_DATA_ACK))
			return 0;
	}
	
	TWCR = TW_MT_SEND_STOP;
	_delay_ms(1);
	return 1;
}
//###################################################################
uint8_t ReadI2C(void)
{
	uint8_t Result = 0x01;
	TWCR = TW_MR_SEND_START;
	while(!(TWCR & _BV(TWINT)));
	
	if(TWSR & TW_START)
	{
		Result = 0xf0;
		TWDR = SLA_R;
		TWCR = _BV(TWINT) | _BV(TWEN);
		while(!(TWCR & _BV(TWINT)));	
		
		if(TWSR & TW_MR_SLA_ACK)
		{
			TWCR = _BV(TWINT) | _BV(TWEN);
			
			while(!(TWCR & _BV(TWINT)));
			
			Result = TWDR;
			TWCR = TW_MR_SEND_STOP;
			
		}
	}
	_delay_ms(1);
	return Result;
}
//###################################################################
void ReadBufI2C(uint8_t *Buf, uint8_t Len)
{
	uint8_t Poz;
	TWCR = TW_MR_SEND_START;
	while(!(TWCR & _BV(TWINT)));
	
	if(TWSR & TW_START)
	{
		TWDR = SLA_R;
		TWCR = _BV(TWINT) | _BV(TWEN);
		while(!(TWCR & _BV(TWINT)));	
		
		if(TWSR & TW_MR_SLA_ACK)
		{
			
			for(Poz = 0; Poz < Len - 1; Poz++)
			{	
				TWCR = _BV(TWINT) | _BV(TWEN) | _BV(TWEA);
				while(!(TWCR & _BV(TWINT)));
			
				Buf[Poz] = TWDR;
			}
			
			TWCR = _BV(TWINT) | _BV(TWEN);
			while(!(TWCR & _BV(TWINT)));
			
			Buf[Poz] = TWDR;
			TWCR = TW_MR_SEND_STOP;
		}
		
	}
	_delay_ms(1);
}
//###################################################################
