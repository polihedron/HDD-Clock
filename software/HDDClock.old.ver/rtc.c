/*############################################### 	
  ####	HDDClock driver source code  		#####
  ####	file: rtc.c							#####
  ####	date: Aug 18th, 2009				#####
  ###############################################*/

#include <avr/io.h>
#include <inttypes.h>
#include <util/delay.h>  
#include <stdio.h>
#include <string.h>
#include <avr/pgmspace.h>
#include "twi.h"

//I2C handling procedures
void RTC_SetValue(uint8_t Address, uint8_t Value)
{
	WriteI2C(Address, Value);
}

uint8_t RTC_ReadValue(uint8_t Address)
{
	SetPointer(Address);
	return ReadI2C();
}

//Binary-coded-decimal to decimal converting procedure
uint8_t BCDtoDEC(uint8_t BCDValue)
{
	return ((BCDValue & 0x0f) + (10 * ((BCDValue >> 4) & 0x0f)));
}
//Decimal to binary-coded-decimal to converting procedure
uint8_t DECtoBCD(uint8_t DecValue)
{
	return ((DecValue % 10) | ((DecValue / 10) << 4));
}
