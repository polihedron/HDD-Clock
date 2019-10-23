/*############################################### 	
  ####	HDDClock driver source code  		#####
  ####	file: rtc.c							#####
  ####	date: Aug 18th, 2009				#####
  ###############################################*/

//RTC registers addresses
#define SECONDS_ADDR 	0x00
#define MINUTES_ADDR 	0x01
#define HOURS_ADDR 		0x02
#define DAY_ADDR		0x03
#define DATE_ADDR		0x04
#define MONTH_ADDR		0x05
#define YEAR_ADDR		0x06
#define CONTROL_ADDR	0x07
#define RAM_START_ADDR	0x08

void RTC_SetValue(uint8_t Address, uint8_t Value);
uint8_t RTC_ReadValue(uint8_t Address);
uint8_t BCDtoDEC(uint8_t BCDValue);
uint8_t DECtoBCD(uint8_t DecValue);
