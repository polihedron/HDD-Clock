/*############################################### 	
  ####	HDDClock driver source code  		#####
  ####	file: main.c						#####
  ####	date: may 18th, 2015				#####
  ###############################################*/
	
#include <avr/io.h>
#include <inttypes.h>
#include <util/delay.h>  
#include <avr/interrupt.h>
#include <stdio.h>
#include <string.h> 
#include <avr/pgmspace.h>
#include <avr/wdt.h> 
#include <setjmp.h>

#include <stdlib.h> 
#include <avr/boot.h>

#include "twi.h"
#include "rtc.h"
#include "tables.h"

//############### UART definitions #########################################
#define BAUD 38400
#define MYUBRR ((F_CPU / (16 * BAUD)) - 1)

//############### General purpose definitions ##############################
#define MOTDDR DDRA
#define MOTPORT PORTA
#define MOTPIN PA0

#define LEDDDR DDRB
#define RED_LED	PB5
#define GREEN_LED PB6
#define BLUE_LED PB7

#define MOT_ON() (MOTPORT |= (1 << MOTPIN))
#define MOT_OFF() (MOTPORT &= ~(1 << MOTPIN))

#define RED 0			
#define GREEN 1
#define BLUE 2

#define RESOLUTION 240		//the number of steps the circle is divided into
#define NUMBER_OF_MODES 62	//the number of diffrent displaying background modes
#define NUMBER_OF_MH_MODES 11	//the number of diffrent displaying clock's hands modes
#define NUMBER_OF_HH_MODES 11	//the number of diffrent displaying clock's hands modes

#define PWM_TOP 39			//PWM top value
#define PWM_RED OCR1A		//red diode output compare register 
#define PWM_GREEN OCR1B		//green diode output compare register 	
#define PWM_BLUE OCR1C		//blue diode output compare register 	

//############### Remote control feature definitions ########################
#define HALF_BIT 3			//duration of a half of a RC5 code bit 	}		
#define ONE_BIT 7			//duration of a RC5 code bit 			} in Timer2 ticks (f=4096Hz)	
#define DELTA 1				//time measurement error				}

#define RC_IN PE5			//input of the receiver

#define DEVICE_ADDRESS 0x00	//address of the clock (same as Philips' TV)
#define RC_POWER 0x0C		//POWER button code (same as POWER on Philips' RC)
#define RC_SET 0x0D			//SET button code (MUTE on Philips' RC)
#define RC_PLUS 0x20		//PLUS button code (CHANNEL+ on Philips' RC)
#define RC_MINUS 0x21		//MINUS button code (CHANNEL- on Philips' RC)
#define RC_SET2 0x38		//SET button code (AV/TV on Philips' RC)
#define RC_VPLUS 0x10		//VPLUS button code (VOLUME+ on Philips' RC)
#define RC_VMINUS 0x11		//VMINUS button code (VOLUME- on Philips' RC)

#define STATE_NORMAL 0x00	
#define STATE_SETTING 0x01	
#define STATE_DEMO 0x02	




//########### General purpose global variables' declaration #####################
uint8_t g_position;					//the position of the disc
uint8_t g_data_rtc[8];			//rtc data buffer
uint8_t g_timer2_ovf;			//Timer2 overflows counter
uint8_t g_timer2_speed2;			//Timer2 overflows various speed counter
uint8_t g_timer2_speed3;			//Timer2 overflows various speed counter
uint8_t g_timer2_speed6;			//Timer2 overflows various speed counter
uint8_t g_timer2_speed7;			//Timer2 overflows various speed counter
uint8_t g_timer2_speed8;			//Timer2 overflows various speed counter
uint8_t g_timer2_speed9;			//Timer2 overflows various speed counter
uint8_t g_timer2_speed12;			//Timer2 overflows various speed counter
uint8_t g_timer2_speedrandom1;			//Timer2 overflows various speed counter
uint8_t g_timer2_speedrandom2;			//Timer2 overflows various speed counter
uint8_t g_timer2_speeddemo1;			//Timer2 overflows various speed counter
uint8_t g_timer2_speeddemo2;			//Timer2 overflows various speed counter



uint8_t c_timer2_ovf;			//Timer2 overflows change mode
uint8_t g_reminder;				//see below
uint8_t g_speed12;					//	position changing slow 
uint8_t g_speed12rev;					//	position changing slow 
uint8_t g_speed9;					//	position changing slow 
uint8_t g_speed9rev;					//	position changing slow 
uint8_t g_speed8;					//	position changing slow 
uint8_t g_speed8rev;					//	position changing slow 
uint8_t g_speed7;					//	position changing slow 
uint8_t g_speed7rev;					//	position changing slow 
uint8_t g_speed6;					//	position changing slow 
uint8_t g_speed6rev;					//	position changing slow 
uint8_t g_speed2;					//	position changing fast 
uint8_t g_speed2rev;					//	position changing fast 
uint8_t g_speed3;					//	position changing fast 
uint8_t g_speed3rev;					//	position changing fast 
uint8_t g_speedrandom;					//	position changing random, radioactivity	
uint8_t g_speeddemo = 2;	
uint8_t timer2tmp;						//  timer2 tmp buffer, for changing background.
uint8_t g_mark;
uint8_t g_mark1;
uint8_t radioactivity;
uint8_t seconds_hand;


uint8_t g_seconds;				//seconds register	}
uint8_t g_minutes;				//minutes register	}	already preprocessed to RESOLUTIONsteps/cicrle
uint8_t g_hours;				//hours register	}

uint8_t g_uart_buffer[10];
uint8_t g_uart_counter;			//received chars counter

uint8_t g_mode;					//current displaying background mode
uint8_t g_temp_mode;					//current displaying background mode
uint8_t g_mh_mode;				//current displaying hands mode 
uint8_t g_hh_mode;				//current displaying hands mode 
uint8_t g_power_on;				//power on indicator

//########### Remote control feature global variables' declaration ###############
uint8_t g_rc_bit_counter;		//number of received bits
uint8_t g_rc_command;			//received command (bit 7 is toogle bit)
uint8_t g_rc_idle_counter;	
uint8_t  c_rc_idle_counter;	

uint8_t g_rc_state = STATE_NORMAL;	//initial state
uint8_t g_s_rc_state = STATE_DEMO;	//initial state DEMO
uint8_t g_rc_hold_counter;			//for hold-button feature




void USART1_Init( unsigned int ubrr );
unsigned char USART1_Receive( void );
void USART1_Transmit( unsigned char data );
void USART1_Transmit( unsigned char data );
void send_str( unsigned char *str );
void rc_process_command(uint8_t command);

//############# UART functions, useful for debugging ##########
void USART1_Init( unsigned int ubrr )
{
	/* Set baud rate */
	UBRR1H = (unsigned char)(ubrr>>8);
	UBRR1L = (unsigned char)ubrr;
	/* Enable receiver and transmitter */
	UCSR1B = (1<<RXEN1) | (1<<TXEN1) | _BV(RXCIE1);
	/* Set frame format: 8data, 1stop bit */
	UCSR1C =  (1<<UCSZ11) | (1<<UCSZ10);
}

unsigned char USART1_Receive( void )
{
	/* Wait for data to be received */
	while ( !(UCSR1A & (1<<RXC1)) )
	;
	/* Get and return received data from buffer */
	return UDR1;
}

void USART1_Transmit( unsigned char data )
{
	/* Wait for empty transmit buffer */
	while ( !( UCSR1A & (1<<UDRE1)) )
	;
	/* Put data into buffer, sends the data */
	UDR1 = data;
}

void send_str( unsigned char *str )
{
	while(*str)
	{
		USART1_Transmit(*str);
		str++;
	}
}


//######################## RC command processing function ############
void rc_process_command(uint8_t command)
{
	static uint8_t last_command = 0;
	uint8_t i;
	
	if(last_command == command)		//if last command was the same
	{
		g_rc_hold_counter++;			//increase the counter
		if(g_rc_hold_counter > 20)		//and don't let it overflow
			g_rc_hold_counter = 20;
	}
	else
		g_rc_hold_counter = 0;
	
	last_command = command;	
		
	switch(command & 0b01111111)		//mask the toggle bit
	{
	case RC_POWER:						//POWER button is pressed
		if(g_power_on == 1)
		{
			g_power_on = 0;			
			MOT_OFF();					//stop the motor
		}
		else
		{
			g_power_on = 1;
			MOT_ON();					//start the motor
		}
		g_rc_state = STATE_NORMAL;		//set state as NORMAL
		g_s_rc_state = STATE_DEMO;		//set state as DEMO
		EIMSK &= ~_BV(RC_IN);			//disable RC feature for a while
		break;
	
	case RC_SET:						//SET button is pressed
		if(g_power_on)					//react only if power is on (motor spins)
		{
			switch(g_rc_state)			//reaction depends on current state
			{
			case STATE_NORMAL:						//in normal state
				g_rc_state = STATE_SETTING;			
				g_seconds = 0;						//clear seconds register
				g_minutes = (g_minutes / 4) * 4; 	//adjust minute hand
				break;
			case STATE_SETTING:						//in time setting state
				g_rc_state = STATE_NORMAL;
				g_data_rtc[SECONDS_ADDR] = 0;				//prepare
				g_data_rtc[MINUTES_ADDR] = g_minutes / 4;	//data before
				g_data_rtc[HOURS_ADDR] = g_hours / 20;		//sending it to RTC
				
				if(g_data_rtc[HOURS_ADDR] == 0)			//RTC is working in 1-12 am/pm
					g_data_rtc[HOURS_ADDR] = 12;

				for(i = 0; i < 3; i++)
					g_data_rtc[i] = DECtoBCD(g_data_rtc[i]);	//convert to RCD format
				
				g_data_rtc[HOURS_ADDR] |= 0b00100000;		//set am/pm mode bit
	
				WriteBufI2C(0x00, g_data_rtc, 7);			//send it to RTC
				break;
			}	
			EIMSK &= ~_BV(RC_IN);							//disable RC feature for a while
			break;
		}
	
	case RC_SET2:						//SET button is pressed
		if(g_power_on)					//react only if power is on (motor spins)
		{
			switch(g_s_rc_state)			//reaction depends on current state
			{
			case STATE_DEMO:						//in time demo state
				g_s_rc_state = STATE_NORMAL;
				g_seconds = 0;
				g_mode=g_temp_mode ;
				break;	
			case STATE_NORMAL:						//in normal state
				g_s_rc_state = STATE_SETTING;
				g_seconds = 0;
				//g_mode=g_temp_mode ;
				break;
			case STATE_SETTING:						//clock seconds hand step by 1s
				g_s_rc_state = STATE_DEMO;
				//g_mode=g_temp_mode ;
				break;
			}	
			
			EIMSK &= ~_BV(RC_IN);							//disable RC feature for a while
			break;
		}
	
	case RC_PLUS:						//PLUS button is pressed
		if(g_power_on)					//react only if power is on (motor spins)
		{
			switch(g_rc_state)			//reaction depends on current state
			{
			case STATE_NORMAL:			//in normal state change displaying mode
				if(g_mode == NUMBER_OF_MODES - 1)
					g_mode = 0;
				else
					g_mode++;
				g_rc_idle_counter = 2;	
				EIMSK &= ~_BV(RC_IN);			//disable RC feature for a while	
				break;
			case STATE_SETTING:				//in time setting mode
				if(g_rc_hold_counter < 20)	//if PLUS button is not held for a long time
				{
					g_minutes += 4;			//move second hand 4 steps forward	
					if(g_minutes == RESOLUTION)	
						g_minutes = 0;
					if(g_minutes % 12 == 0) //if divisible
					{
						g_hours++;			//move hour hand one step forward
						if(g_hours == RESOLUTION)
							g_hours = 0;
					}
				}
				else		//PLUS button is held for a long time
				{
					if(g_minutes % 24)		//while not divisible do the same as above
					{
						g_minutes += 4;
						if(g_minutes == RESOLUTION)
							g_minutes = 0;
						if(g_minutes % 12 == 0)
						{
							g_hours++;
							if(g_hours == RESOLUTION)
							g_hours = 0;
						}					
					}
					else
					{
						g_minutes += 24;		//move minute hand 24 step forward
						if(g_minutes == RESOLUTION)
							g_minutes = 0;
						g_hours += 2;			//move hour hand 	
						if(g_hours == RESOLUTION)
							g_hours = 0;						
					}
				}
				break;
			}
		}
		break;
	
	case RC_MINUS:						//MINUS button is pressed
		if(g_power_on)					//react only if power is on (motor spins)
		{
			switch(g_rc_state)
			{
			case STATE_NORMAL:			//in normal state change displaying mode
				if(g_mode == 0)
					g_mode = NUMBER_OF_MODES - 1;
				else
					g_mode--;
				g_rc_idle_counter = 2;
				EIMSK &= ~_BV(RC_IN);		//disable RC feature for a while
				break;

			case STATE_SETTING:				//in time setting mode
				if(g_rc_hold_counter < 20)	//if MINUS button is not held for a long time
				{
					if(g_minutes == 0)
						g_minutes = RESOLUTION;
						
					g_minutes -= 4;				//move minute hand 4 steps back
						
					if(g_minutes % 12 == 0)	//if divisible
					{
						if(g_hours == 0)
							g_hours = RESOLUTION;
						g_hours--;				//move hour hand one step back
					}
				}
				else			//MINUS button is held for a long time
				{
					if(g_minutes % 24)	//while not divisible do the same as above
					{
						if(g_minutes == 0)
							g_minutes = RESOLUTION;
						g_minutes -= 4;
							
						if(g_minutes % 12 == 0)
						{
							if(g_hours == 0)
								g_hours = RESOLUTION;	
							g_hours--;		
						}					
					}
					else
					{
						if(g_minutes == 0)
							g_minutes = RESOLUTION;
						g_minutes -= 24;	//move minute hand 24 steps back
						
						if(g_hours == 0)
							g_hours = RESOLUTION;	
					 	
						g_hours -= 2;		//move hour hand 2 steps back
					}
				}			
				break;
			}	
			break;
		}
	
	case RC_VPLUS:						//PLUS button is pressed
		if(g_power_on)					//react only if power is on (motor spins)
		{
				if(g_hh_mode == NUMBER_OF_HH_MODES - 1)
					g_hh_mode = 0;
				else
					g_hh_mode++;
				g_rc_idle_counter = 2;	
				EIMSK &= ~_BV(RC_IN);			//disable RC feature for a while	
		}
		break;
	
	case RC_VMINUS:						//MINUS button is pressed
		if(g_power_on)					//react only if power is on (motor spins)
		{
				if(g_mh_mode == 0)
					g_mh_mode = NUMBER_OF_MH_MODES - 1;
				else
					g_mh_mode--;
				g_rc_idle_counter = 2;
				EIMSK &= ~_BV(RC_IN);		//disable RC feature for a while
		}
		break;
	}
}

//################## UART receive completed interrupt routine ###############
ISR(USART1_RX_vect)
{
	g_uart_buffer[g_uart_counter] = UDR1;
	g_uart_counter++;
	
	//if string 'RESET' is received enable the watchdog and wait for the chip reset
	//this feature is used to programm ATMEGA via bootloader
	//bootloader used in this project (MegaLoad) can be downloaded from http://www.microsyl.com/
	if(g_uart_counter == 5)
	{
		if( g_uart_buffer[0] == 'R' &&
			g_uart_buffer[1] == 'E' &&
			g_uart_buffer[2] == 'S' &&
			g_uart_buffer[3] == 'E' &&
			g_uart_buffer[4] == 'T')
		{
			wdt_enable(WDTO_120MS);
			while(1);
		}
	}
}
 

//################# TIMER3 input capture interrupt routine #######################
//when the slit in the disc comes next to the detector this interrupt is called
ISR(TIMER3_CAPT_vect)
{
	TCNT3 = 0;	//clear timer
	
	if(((ICR3 > 34000) || (ETIFR & _BV(TOV3))) || !g_power_on) //if the disc spins to slow 
	{
		ETIFR |= _BV(TOV3);						//clear overflow flag
		
		PWM_RED = PWM_TOP;						//}
		PWM_GREEN = PWM_TOP;					//}	and turn off all of the diodes
		PWM_BLUE = PWM_TOP;						//}
		return;								//leave this routine
	}
	
	OCR0 = ICR3/RESOLUTION;						//compute time for one step
	g_reminder = ICR3 - (OCR0*RESOLUTION);		//compute reminder
	//g_position = 3*RESOLUTION/4;						//set proper position (12 o'clock=0, 6 o'clock = RESOLUTION/2)
	g_position = RESOLUTION/4;						//set proper position (12 o'clock=0, 6 o'clock = RESOLUTION/2)
	TCNT0 = OCR0 - 2;							//timer0 compare interrupt must be called as soon as possible
	TIMSK |= _BV(OCIE0);						//enable timer0 compare interrupt
}

//################# TIMER0 compare interupt routine #######################
//this routine is used to display all of the patterns you see
ISR(TIMER0_COMP_vect)
{
	uint8_t tmp_red = PWM_TOP + 1,
			tmp_green = PWM_TOP + 1,
			tmp_blue = PWM_TOP + 1;		//temporary color registers
			
	//if(g_position == 3*RESOLUTION/4 - 1)	  	//if it's last interrupt in the cycle
	if(g_position == RESOLUTION/4 - 1)	  	//if it's last interrupt in the cycle
		TIMSK &= ~_BV(OCIE0);			//disable this interrupt
	
	if(g_reminder == 0)	//if reminder becomes zero, decrease output compare register
		OCR0--;				//with this trick image becomes more solid, no jitter can be seen
		
	if(g_position == RESOLUTION) //clear if overflow	
		g_position = 0;
		
	//if temporary registers are not updated
	
		if ((g_rc_state == STATE_NORMAL) && (seconds_hand) && !((g_mode==40) && radioactivity) && !((pgm_read_byte(&gm_background[1][GREEN][g_speed6rev+g_position]) == 0x00) && ((g_mode == 42) || (g_mode == 43)))) //do not display second hand if time is being set
			{ 
				switch(g_position - g_seconds) 	//compute which part of second hand should be now displayed
				{							//and read color value from flash memory
				case -4:
					case RESOLUTION - 4:
					tmp_red 	= pgm_read_byte(&g_second_hand[g_mh_mode][RED][0]);
					tmp_green 	= pgm_read_byte(&g_second_hand[g_mh_mode][GREEN][0]);
					tmp_blue 	= pgm_read_byte(&g_second_hand[g_mh_mode][BLUE][0]);
					break;
				case -3:
					case RESOLUTION - 3:
					tmp_red 	= pgm_read_byte(&g_second_hand[g_mh_mode][RED][1]);
					tmp_green 	= pgm_read_byte(&g_second_hand[g_mh_mode][GREEN][1]);
					tmp_blue 	= pgm_read_byte(&g_second_hand[g_mh_mode][BLUE][1]);
					break;
				case -2:
					case RESOLUTION - 2:
					tmp_red 	= pgm_read_byte(&g_second_hand[g_mh_mode][RED][2]);
					tmp_green 	= pgm_read_byte(&g_second_hand[g_mh_mode][GREEN][2]);
					tmp_blue 	= pgm_read_byte(&g_second_hand[g_mh_mode][BLUE][2]);
					break;
				case -1:
					case RESOLUTION - 1:
					tmp_red 	= pgm_read_byte(&g_second_hand[g_mh_mode][RED][3]);
					tmp_green 	= pgm_read_byte(&g_second_hand[g_mh_mode][GREEN][3]);
					tmp_blue 	= pgm_read_byte(&g_second_hand[g_mh_mode][BLUE][3]);
					break;
				case 0:
					tmp_red 	= pgm_read_byte(&g_second_hand[g_mh_mode][RED][4]);
					tmp_green 	= pgm_read_byte(&g_second_hand[g_mh_mode][GREEN][4]);
					tmp_blue 	= pgm_read_byte(&g_second_hand[g_mh_mode][BLUE][4]);
					break;
				case 1:
					case -RESOLUTION + 1:
					tmp_red 	= pgm_read_byte(&g_second_hand[g_mh_mode][RED][5]);
					tmp_green 	= pgm_read_byte(&g_second_hand[g_mh_mode][GREEN][5]);
					tmp_blue 	= pgm_read_byte(&g_second_hand[g_mh_mode][BLUE][5]);	
					break;
				case 2:
					case -RESOLUTION + 2:
					tmp_red 	= pgm_read_byte(&g_second_hand[g_mh_mode][RED][6]);
					tmp_green 	= pgm_read_byte(&g_second_hand[g_mh_mode][GREEN][6]);
					tmp_blue 	= pgm_read_byte(&g_second_hand[g_mh_mode][BLUE][6]);	
					break;
				case 3:
					case -RESOLUTION + 3:
					tmp_red 	= pgm_read_byte(&g_second_hand[g_mh_mode][RED][7]);
					tmp_green 	= pgm_read_byte(&g_second_hand[g_mh_mode][GREEN][7]);
					tmp_blue 	= pgm_read_byte(&g_second_hand[g_mh_mode][BLUE][7]);	
					break;		
				case 4:
					case -RESOLUTION + 4:
					tmp_red 	= pgm_read_byte(&g_second_hand[g_mh_mode][RED][8]);
					tmp_green 	= pgm_read_byte(&g_second_hand[g_mh_mode][GREEN][8]);
					tmp_blue 	= pgm_read_byte(&g_second_hand[g_mh_mode][BLUE][8]);	
					break;	
				}
			}



	//if temporary registers are not updated
	if((tmp_red == PWM_TOP + 1) && (tmp_green == PWM_TOP + 1) && (tmp_blue == PWM_TOP + 1) && !((g_mode==40) && radioactivity) && !((pgm_read_byte(&gm_background[1][GREEN][g_speed6rev+g_position]) == 0x00) && ((g_mode == 42) || (g_mode == 43))))
	{
		switch(g_position - g_minutes) 	//compute which part of minute hand should be now displayed
		{							//and read color value from flash memory
			case -4:
			case RESOLUTION - 4:
				tmp_red 	= pgm_read_byte(&g_minute_hand[g_mh_mode][RED][0]);
				tmp_green 	= pgm_read_byte(&g_minute_hand[g_mh_mode][GREEN][0]);
				tmp_blue 	= pgm_read_byte(&g_minute_hand[g_mh_mode][BLUE][0]);
				break;
			case -3:
			case RESOLUTION - 3:
				tmp_red 	= pgm_read_byte(&g_minute_hand[g_mh_mode][RED][1]);
				tmp_green 	= pgm_read_byte(&g_minute_hand[g_mh_mode][GREEN][1]);
				tmp_blue 	= pgm_read_byte(&g_minute_hand[g_mh_mode][BLUE][1]);
				break;
			case -2:
			case RESOLUTION - 2:
				tmp_red 	= pgm_read_byte(&g_minute_hand[g_mh_mode][RED][2]);
				tmp_green 	= pgm_read_byte(&g_minute_hand[g_mh_mode][GREEN][2]);
				tmp_blue 	= pgm_read_byte(&g_minute_hand[g_mh_mode][BLUE][2]);
				break;
			case -1:
			case RESOLUTION - 1:
				tmp_red 	= pgm_read_byte(&g_minute_hand[g_mh_mode][RED][3]);
				tmp_green 	= pgm_read_byte(&g_minute_hand[g_mh_mode][GREEN][3]);
				tmp_blue 	= pgm_read_byte(&g_minute_hand[g_mh_mode][BLUE][3]);
				break;
			case 0:
				tmp_red 	= pgm_read_byte(&g_minute_hand[g_mh_mode][RED][4]);
				tmp_green 	= pgm_read_byte(&g_minute_hand[g_mh_mode][GREEN][4]);
				tmp_blue 	= pgm_read_byte(&g_minute_hand[g_mh_mode][BLUE][4]);
				break;
			case 1:
			case -RESOLUTION + 1:
				tmp_red 	= pgm_read_byte(&g_minute_hand[g_mh_mode][RED][5]);
				tmp_green 	= pgm_read_byte(&g_minute_hand[g_mh_mode][GREEN][5]);
				tmp_blue 	= pgm_read_byte(&g_minute_hand[g_mh_mode][BLUE][5]);	
				break;
			case 2:
			case -RESOLUTION + 2:
				tmp_red 	= pgm_read_byte(&g_minute_hand[g_mh_mode][RED][6]);
				tmp_green 	= pgm_read_byte(&g_minute_hand[g_mh_mode][GREEN][6]);
				tmp_blue 	= pgm_read_byte(&g_minute_hand[g_mh_mode][BLUE][6]);	
				break;
			case 3:
			case -RESOLUTION + 3:
				tmp_red 	= pgm_read_byte(&g_minute_hand[g_mh_mode][RED][7]);
				tmp_green 	= pgm_read_byte(&g_minute_hand[g_mh_mode][GREEN][7]);
				tmp_blue 	= pgm_read_byte(&g_minute_hand[g_mh_mode][BLUE][7]);	
				break;		
			case 4:
			case -RESOLUTION + 4:
				tmp_red 	= pgm_read_byte(&g_minute_hand[g_mh_mode][RED][8]);
				tmp_green 	= pgm_read_byte(&g_minute_hand[g_mh_mode][GREEN][8]);
				tmp_blue 	= pgm_read_byte(&g_minute_hand[g_mh_mode][BLUE][8]);	
				break;	
		}
	}
	//if temporary registers are not updated
	if((tmp_red == PWM_TOP + 1) && (tmp_green == PWM_TOP + 1) && (tmp_blue == PWM_TOP + 1) && !((g_mode==40) && radioactivity) && !((pgm_read_byte(&gm_background[1][GREEN][g_speed6rev+g_position]) == 0x00) && ((g_mode == 42) || (g_mode == 43))))	
	{
		switch(g_position - g_hours)
		{
			case -4:
			case RESOLUTION - 4:
				tmp_red 	= pgm_read_byte(&g_hour_hand[g_hh_mode][RED][0]);
				tmp_green 	= pgm_read_byte(&g_hour_hand[g_hh_mode][GREEN][0]);
				tmp_blue 	= pgm_read_byte(&g_hour_hand[g_hh_mode][BLUE][0]);
				break;
			case -3:
			case RESOLUTION - 3:
				tmp_red 	= pgm_read_byte(&g_hour_hand[g_hh_mode][RED][1]);
				tmp_green 	= pgm_read_byte(&g_hour_hand[g_hh_mode][GREEN][1]);
				tmp_blue 	= pgm_read_byte(&g_hour_hand[g_hh_mode][BLUE][1]);
				break;
			case -2:
			case RESOLUTION - 2:
				tmp_red 	= pgm_read_byte(&g_hour_hand[g_hh_mode][RED][2]);
				tmp_green 	= pgm_read_byte(&g_hour_hand[g_hh_mode][GREEN][2]);
				tmp_blue 	= pgm_read_byte(&g_hour_hand[g_hh_mode][BLUE][2]);
				break;
			case -1:
			case RESOLUTION - 1:
				tmp_red 	= pgm_read_byte(&g_hour_hand[g_hh_mode][RED][3]);
				tmp_green 	= pgm_read_byte(&g_hour_hand[g_hh_mode][GREEN][3]);
				tmp_blue 	= pgm_read_byte(&g_hour_hand[g_hh_mode][BLUE][3]);
				break;
			case 0:
				tmp_red 	= pgm_read_byte(&g_hour_hand[g_hh_mode][RED][4]);
				tmp_green 	= pgm_read_byte(&g_hour_hand[g_hh_mode][GREEN][4]);
				tmp_blue 	= pgm_read_byte(&g_hour_hand[g_hh_mode][BLUE][4]);
				break;
			case 1:
			case -RESOLUTION + 1:
				tmp_red 	= pgm_read_byte(&g_hour_hand[g_hh_mode][RED][5]);
				tmp_green 	= pgm_read_byte(&g_hour_hand[g_hh_mode][GREEN][5]);
				tmp_blue 	= pgm_read_byte(&g_hour_hand[g_hh_mode][BLUE][5]);	
				break;
			case 2:
			case -RESOLUTION + 2:
				tmp_red 	= pgm_read_byte(&g_hour_hand[g_hh_mode][RED][6]);
				tmp_green 	= pgm_read_byte(&g_hour_hand[g_hh_mode][GREEN][6]);
				tmp_blue 	= pgm_read_byte(&g_hour_hand[g_hh_mode][BLUE][6]);	
				break;
			case 3:
			case -RESOLUTION + 3:
				tmp_red 	= pgm_read_byte(&g_hour_hand[g_hh_mode][RED][7]);
				tmp_green 	= pgm_read_byte(&g_hour_hand[g_hh_mode][GREEN][7]);
				tmp_blue 	= pgm_read_byte(&g_hour_hand[g_hh_mode][BLUE][7]);	
				break;		
			case 4:
			case -RESOLUTION + 4:
				tmp_red 	= pgm_read_byte(&g_hour_hand[g_hh_mode][RED][8]);
				tmp_green 	= pgm_read_byte(&g_hour_hand[g_hh_mode][GREEN][8]);
				tmp_blue 	= pgm_read_byte(&g_hour_hand[g_hh_mode][BLUE][8]);	
				break;		
		}
	}

		
	//if temporary registers aren't updated that means the hands aren't being displayed now
	if((tmp_red != PWM_TOP + 1) || (tmp_green != PWM_TOP + 1) || (tmp_blue != PWM_TOP + 1))
	{
		if(g_rc_state == STATE_SETTING)  //if time is being set 
		{
			if(g_timer2_ovf & 0x02) 	//minute and second hand should blink
			{
				PWM_RED = tmp_red;
				PWM_GREEN = tmp_green;
				PWM_BLUE = tmp_blue;	
			}
			else
			{
				if(g_rc_hold_counter != 0) //don't blink if any button is held
				{
					PWM_RED = tmp_red;
					PWM_GREEN = tmp_green;
					PWM_BLUE = tmp_blue;
				}
			}
		}
		
		else
		{
			if (g_mode==42 || g_mode==43)
			{
			PWM_RED = tmp_red; //- pgm_read_byte(&gm_background[1][RED][g_speed6rev+g_position]) ;
			
			if ((tmp_green - pgm_read_byte(&gm_background[1][GREEN][g_speed6rev+g_position])) < 0x01)
			PWM_GREEN = tmp_green;
			else
			PWM_GREEN = tmp_green - pgm_read_byte(&gm_background[1][GREEN][g_speed6rev+g_position]);
			
			PWM_BLUE = tmp_blue; //- pgm_read_byte(&gm_background[1][BLUE][g_speed6rev+g_position]);
			}
	
			else
			{
			PWM_RED = tmp_red;
			PWM_GREEN = tmp_green;
			PWM_BLUE = tmp_blue;
			}		
		}
	}
	else  //display background, also stored in flash memomy
	{
		switch(g_mode)
		{

		case 61:				// background is changing 11 synthesis rainbow
			seconds_hand=0;

			if ((pgm_read_byte(&gm_background[10][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[10][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[0][RED][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[10][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[10][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[0][GREEN][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[10][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[10][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[0][BLUE][g_speed6rev+g_position]);
		break;	
		
		case 60:				// background is changing 11 synthesis windows
			seconds_hand=0;
			
			if ((pgm_read_byte(&gm_background[10][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[10][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[7][RED][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[10][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[10][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[7][GREEN][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[10][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[10][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[7][BLUE][g_speed6rev+g_position]);
		break;	
	
		case 59:				// background is changing 11 synthesis africa
			seconds_hand=0;
			
			if ((pgm_read_byte(&gm_background[10][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[10][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[6][RED][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[10][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[10][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[6][GREEN][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[10][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[10][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[6][BLUE][g_speed6rev+g_position]);
		break;

		case 58:				// background is changing 7 synthesis rainbow
			seconds_hand=0;

			if ((pgm_read_byte(&gm_background[9][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[9][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[0][RED][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[9][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[9][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[0][GREEN][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[9][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[9][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[0][BLUE][g_speed6rev+g_position]);
		break;	
		
		case 57:				// background is changing 7 synthesis windows
			seconds_hand=0;
			
			if ((pgm_read_byte(&gm_background[9][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[9][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[7][RED][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[9][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[9][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[7][GREEN][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[9][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[9][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[7][BLUE][g_speed6rev+g_position]);
		break;	
	
		case 56:				// background is changing 7 synthesis africa
			seconds_hand=0;
			
			if ((pgm_read_byte(&gm_background[9][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[9][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[6][RED][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[9][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[9][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[6][GREEN][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[9][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[9][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[6][BLUE][g_speed6rev+g_position]);
		break;	
		
	
		case 55:				// background is changing 5 synthesis rainbow
			seconds_hand=0;
			
			if ((pgm_read_byte(&gm_background[8][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[8][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[0][RED][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[8][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[8][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[0][GREEN][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[8][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[8][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[0][BLUE][g_speed6rev+g_position]);	
		break;	
				
		case 54:				// background is changing 5 synthesis windows
			seconds_hand=0;
			
			if ((pgm_read_byte(&gm_background[8][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[8][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[7][RED][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[8][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[8][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[7][GREEN][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[8][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[8][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[7][BLUE][g_speed6rev+g_position]);	
		break;	
			
		case 53:				// background is changing 5 synthesis africa
			seconds_hand=0;
			
			if ((pgm_read_byte(&gm_background[8][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[8][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[6][RED][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[8][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[8][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[6][GREEN][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[8][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[8][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[6][BLUE][g_speed6rev+g_position]);	
		break;	
						
				
		case 52:				// background is changing 4 synthesis rainbow
			seconds_hand=0;
			
			if ((pgm_read_byte(&gm_background[7][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[7][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[0][RED][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[7][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[7][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[0][GREEN][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[7][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[7][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[0][BLUE][g_speed6rev+g_position]);	
		break;		
			
		case 51:				// background is changing 4 synthesis windows
			seconds_hand=0;
			
			if ((pgm_read_byte(&gm_background[7][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[7][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[7][RED][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[7][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[7][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[7][GREEN][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[7][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[7][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[7][BLUE][g_speed6rev+g_position]);	
		break;		

	
	
		
		case 50:				// background is changing 4 synthesis africa
			seconds_hand=0;
			
			if ((pgm_read_byte(&gm_background[7][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[7][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[6][RED][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[7][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[7][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[6][GREEN][g_speed6rev+g_position]);
				
			if ((pgm_read_byte(&gm_background[7][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[7][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[6][BLUE][g_speed6rev+g_position]);	
		break;	

		case 49:				// background is changing 7 rainbow mask black
			seconds_hand=0;	
			
			if ((pgm_read_byte(&gm_background[6][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[6][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED =  pgm_read_byte(&gc_background[0][RED][g_speed6rev+g_position]);
			else
			PWM_RED = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[6][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[6][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN =  pgm_read_byte(&gc_background[0][GREEN][g_speed6rev+g_position]);
			else
			PWM_GREEN = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[6][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[6][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE =  pgm_read_byte(&gc_background[0][BLUE][g_speed6rev+g_position]);
			else
			PWM_BLUE  = PWM_TOP ;
		break;
		
		case 48:				// background is changing africa 7 windows mask black
			seconds_hand=0;
				
			if ((pgm_read_byte(&gm_background[6][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[6][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED =  pgm_read_byte(&gc_background[7][RED][g_speed6rev+g_position]);
			else
			PWM_RED = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[6][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[6][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN =  pgm_read_byte(&gc_background[7][GREEN][g_speed6rev+g_position]);
			else
			PWM_GREEN = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[6][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[6][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE =  pgm_read_byte(&gc_background[7][BLUE][g_speed6rev+g_position]);
			else
			PWM_BLUE  = PWM_TOP ;
		break;
		
		case 47:				// background is changing africa 7 mask black
			seconds_hand=0;
				
			if ((pgm_read_byte(&gm_background[6][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[6][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED =  pgm_read_byte(&gc_background[6][RED][g_speed6rev+g_position]);
			else
			PWM_RED = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[6][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[6][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN =  pgm_read_byte(&gc_background[6][GREEN][g_speed6rev+g_position]);
			else
			PWM_GREEN = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[6][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[6][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE =  pgm_read_byte(&gc_background[6][BLUE][g_speed6rev+g_position]);
			else
			PWM_BLUE  = PWM_TOP ;
		break;
		
		case 46:				// background is changing rainbow 5 mask black
			seconds_hand=0;
				
			if ((pgm_read_byte(&gm_background[5][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[5][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED =  pgm_read_byte(&gc_background[0][RED][g_speed6rev+g_position]);
			else
			PWM_RED = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[5][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[5][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN =  pgm_read_byte(&gc_background[0][GREEN][g_speed6rev+g_position]);
			else
			PWM_GREEN = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[5][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[5][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE =  pgm_read_byte(&gc_background[0][BLUE][g_speed6rev+g_position]);
			else
			PWM_BLUE  = PWM_TOP ;
		break;

		
		
		case 45:				// background is changing windows 5 mask black
			seconds_hand=0;
				
			if ((pgm_read_byte(&gm_background[5][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[5][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED =  pgm_read_byte(&gc_background[7][RED][g_speed6rev+g_position]);
			else
			PWM_RED = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[5][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[5][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN =  pgm_read_byte(&gc_background[7][GREEN][g_speed6rev+g_position]);
			else
			PWM_GREEN = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[5][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[5][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE =  pgm_read_byte(&gc_background[7][BLUE][g_speed6rev+g_position]);
			else
			PWM_BLUE  = PWM_TOP ;
		break;
	
		
		
		case 44:				// background is changing africa 5 mask black
			seconds_hand=0;
				
			if ((pgm_read_byte(&gm_background[5][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[5][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED =  pgm_read_byte(&gc_background[6][RED][g_speed6rev+g_position]);
			else
			PWM_RED = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[5][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[5][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN =  pgm_read_byte(&gc_background[6][GREEN][g_speed6rev+g_position]);
			else
			PWM_GREEN = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[5][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[5][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE =  pgm_read_byte(&gc_background[6][BLUE][g_speed6rev+g_position]);
			else
			PWM_BLUE  = PWM_TOP ;
		break;
			
			
		case 43:				// background is changing sonar green with black lines
			seconds_hand=1;	
			
			if (g_position % 20 == 0)
			{
				PWM_RED = PWM_TOP;
				PWM_GREEN = PWM_TOP;
				PWM_BLUE = PWM_TOP;
			}	
			else
			{	
			PWM_RED = PWM_TOP;
			if (pgm_read_byte(&gm_background[1][GREEN][g_speed6rev+g_position]) == 0x01)
			PWM_GREEN = 0x22;
			else
			PWM_GREEN = 0x22 - pgm_read_byte(&gm_background[1][GREEN][g_speed6rev+g_position]);
			PWM_BLUE = PWM_TOP;
			}
			
		break;

		case 42:				// background is changing sonar green
			seconds_hand=1;	
			
			PWM_RED = PWM_TOP;
			if (pgm_read_byte(&gm_background[1][GREEN][g_speed6rev+g_position]) == 0x01)
			PWM_GREEN = 0x22;
			else
			PWM_GREEN = 0x22 - pgm_read_byte(&gm_background[1][GREEN][g_speed6rev+g_position]);
			PWM_BLUE = PWM_TOP;
		break;		
			
		case 41:				// background is changing radioactive synthesis
			seconds_hand=1;	
			
			if ((pgm_read_byte(&gm_background[4][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[4][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED =  0x00; 
			else
			PWM_RED = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[4][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[4][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN =  0x00; 
			else
			PWM_GREEN = PWM_TOP ;
				
			PWM_BLUE  = PWM_TOP ;
		break;
			
		case 40:				// background is changing, radioactivity semi random
			seconds_hand=1;		
				//red radioactivity or black
			if ((g_speedrandom < 37) && (g_speedrandom>7) && (g_minutes%7==0))
			{
			if (pgm_read_byte(&gc_background[1][RED][g_position+100])==0x00)
			PWM_RED = 0x17;
			else
			PWM_RED = PWM_TOP ;
			//PWM_GREEN = PWM_TOP ;
			//PWM_BLUE  = PWM_TOP ;
			PWM_GREEN = pgm_read_byte(&gc_background[1][BLUE][g_position+20]);
			PWM_BLUE = pgm_read_byte(&gc_background[1][BLUE][g_position+20]);
			radioactivity=1;
			}
			else
			{
			PWM_RED = pgm_read_byte(&gc_background[1][RED][g_speedrandom+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[1][GREEN][g_speedrandom+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[1][BLUE][g_speedrandom+g_position]);
			radioactivity=0;
			}
			
		break;
				
		case 39:				// background is changing pacman
			seconds_hand=0;		
			//pacman open and shuts horizontally or vertically
			
			if (g_minutes%5 == 0)
			{
			
			//black mouth
				if ((pgm_read_byte(&gm_background[2][RED][g_speed3rev+g_position]) + pgm_read_byte(&gm_background[2][RED][g_speed3+g_position])) == 2*PWM_TOP)
				PWM_RED = PWM_TOP;
				//red lips
				//else if (( pgm_read_byte(&gm_background[2][GREEN][g_speed3rev+g_position+pacmandir]) + pgm_read_byte(&gm_background[2][RED][g_speed3+g_position+pacmandir])) == 0x4d)
				//PWM_RED = 0x00 ;
				else
				PWM_RED = 0x10 ;
				//black mouth
				if ((pgm_read_byte(&gm_background[2][RED][g_speed3rev+g_position]) + pgm_read_byte(&gm_background[2][RED][g_speed3+g_position])) == 2*PWM_TOP)
				PWM_GREEN = PWM_TOP;
				//red lips
				//else if (( pgm_read_byte(&gm_background[2][GREEN][g_speed3rev+g_position+pacmandir]) + pgm_read_byte(&gm_background[2][RED][g_speed3+g_position+pacmandir])) == 0x4d)
				//PWM_GREEN = PWM_TOP ;
				else
				PWM_GREEN = 0x10 ;
				
				PWM_BLUE = PWM_TOP;
			}
			else
			{
				//black mouth
				if ((pgm_read_byte(&gm_background[2][GREEN][g_speed3rev+g_position]) + pgm_read_byte(&gm_background[2][RED][g_speed3+g_position])) == 2*PWM_TOP)
				PWM_RED = PWM_TOP;
				//red lips
				//else if (( pgm_read_byte(&gm_background[2][GREEN][g_speed3rev+g_position+pacmandir]) + pgm_read_byte(&gm_background[2][RED][g_speed3+g_position+pacmandir])) == 0x4d)
				//PWM_RED = 0x00 ;
				else
				PWM_RED = 0x10 ;
				//black mouth
				if ((pgm_read_byte(&gm_background[2][GREEN][g_speed3rev+g_position]) + pgm_read_byte(&gm_background[2][RED][g_speed3+g_position])) == 2*PWM_TOP)
				PWM_GREEN = PWM_TOP;
				//red lips
				//else if (( pgm_read_byte(&gm_background[2][GREEN][g_speed3rev+g_position+pacmandir]) + pgm_read_byte(&gm_background[2][RED][g_speed3+g_position+pacmandir])) == 0x4d)
				//PWM_GREEN = PWM_TOP ;
				else
				PWM_GREEN = 0x10 ;
				
				PWM_BLUE = PWM_TOP;
			}
			
		break;
				
		case 38:				// background is changing, umbrella corp.
			seconds_hand=1;				
			PWM_RED = pgm_read_byte(&gc_background[5][RED][g_speedrandom+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[5][GREEN][g_speedrandom+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[5][BLUE][g_speedrandom+g_position]);
		break;
				
		case 37:				// background is changing android boot jb
			seconds_hand=0;
			if ((pgm_read_byte(&gm_background[3][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[3][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_RED =  pgm_read_byte(&gc_background[0][RED][g_speed6rev+g_position]);
			else
			PWM_RED = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[3][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[3][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_GREEN =  pgm_read_byte(&gc_background[0][GREEN][g_speed6rev+g_position]);
			else
			PWM_GREEN = PWM_TOP ;
				
			if ((pgm_read_byte(&gm_background[3][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[3][RED][g_speed6+g_position])) > PWM_TOP)
			PWM_BLUE =  pgm_read_byte(&gc_background[0][BLUE][g_speed6rev+g_position]);
			else
			PWM_BLUE  = PWM_TOP ;
		break;

		case 36:				// background is changing android loader 2 rainbow
			seconds_hand=0;		
			if ((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) == 0x27) && (pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position]) == 0x27) && ( abs(g_speed3rev-g_speed7rev)  <=1 ))
			{	
				if (abs(g_mark1-g_position)>6) 
				g_mark++;
				if(g_mark >= 2)
				g_mark =0;
				g_mark1=g_position;
			}
		
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_RED =  pgm_read_byte(&gc_background[0][RED][g_speed7+g_position]);
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_RED =  pgm_read_byte(&gc_background[0][RED][g_speed7+g_position]);
			else
			PWM_RED = PWM_TOP ;
				
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_GREEN =  pgm_read_byte(&gc_background[0][GREEN][g_speed7+g_position]);
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_GREEN =  pgm_read_byte(&gc_background[0][GREEN][g_speed7+g_position]);
			else
			PWM_GREEN = PWM_TOP ;
				
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_BLUE =  pgm_read_byte(&gc_background[0][BLUE][g_speed7+g_position]);
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_BLUE =  pgm_read_byte(&gc_background[0][BLUE][g_speed7+g_position]);
			else
			PWM_BLUE  = PWM_TOP ;
			
			
			
			
		break;	
		
		case 35:				// background is changing android loader 2 WINDOWS
			seconds_hand=0;		
			if ((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) == 0x27) && (pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position]) == 0x27) && ( abs(g_speed3rev-g_speed7rev) <=1 ))
			{
				if (abs(g_mark1-g_position)>6) 
				g_mark++;
				if(g_mark >= 2)
				g_mark =0;
				g_mark1=g_position;
			}
		
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_RED =  pgm_read_byte(&gc_background[7][RED][g_speed7+g_position]);
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_RED =  pgm_read_byte(&gc_background[7][RED][g_speed7+g_position]);
			else
			PWM_RED = PWM_TOP ;
				
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_GREEN =  pgm_read_byte(&gc_background[7][GREEN][g_speed7+g_position]);
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_GREEN =  pgm_read_byte(&gc_background[7][GREEN][g_speed7+g_position]);
			else
			PWM_GREEN = PWM_TOP ;
				
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_BLUE =  pgm_read_byte(&gc_background[7][BLUE][g_speed7+g_position]);
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_BLUE =  pgm_read_byte(&gc_background[7][BLUE][g_speed7+g_position]);
			else
			PWM_BLUE  = PWM_TOP ;
			
			
			
		break;	
		

		case 34:				// background is changing android loader 2 africa
			seconds_hand=0;		
			if ((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) == 0x27) && (pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position]) == 0x27) && (abs(g_speed3rev-g_speed7rev) <=1 ))
			{
				if (abs(g_mark1-g_position)>6) 
				g_mark++;
				if(g_mark == 2)
				g_mark =0;
				g_mark1=g_position;
			}
		
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_RED =  pgm_read_byte(&gc_background[6][RED][g_speed7+g_position]);
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_RED =  pgm_read_byte(&gc_background[6][RED][g_speed7+g_position]);
			else
			PWM_RED = PWM_TOP ;
				
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_GREEN =  pgm_read_byte(&gc_background[6][GREEN][g_speed7+g_position]);
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_GREEN =  pgm_read_byte(&gc_background[6][GREEN][g_speed7+g_position]);
			else
			PWM_GREEN = PWM_TOP ;
				
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_BLUE =  pgm_read_byte(&gc_background[6][BLUE][g_speed7+g_position]);
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_BLUE =  pgm_read_byte(&gc_background[6][BLUE][g_speed7+g_position]);
			else
			PWM_BLUE  = PWM_TOP ;
			
			
			
		break;	
	
		case 33:				// background is changing android loader 2 rainbow neg
			seconds_hand=0;		
			if ((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) == 0x27) && (pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position]) == 0x27) && ( abs(g_speed3rev-g_speed7rev) <=1 ))
			{
				if (abs(g_mark1-g_position)>6) 
				g_mark++;
				if(g_mark == 2)
				g_mark =0;
				g_mark1=g_position;
			}
		
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_RED = PWM_TOP ;
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[0][RED][g_speed7+g_position]);
				
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_GREEN = PWM_TOP ;
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[0][GREEN][g_speed7+g_position]);
				
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_BLUE  = PWM_TOP ;
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[0][BLUE][g_speed7+g_position]);
			
		break;	
		
		case 32:				// background is changing android loader 2 WINDOWS neg
			seconds_hand=0;		
			if ((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) == 0x27) && (pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position]) == 0x27) && ( abs(g_speed3rev-g_speed7rev) <=1 ))
			{
				if (abs(g_mark1-g_position)>6) 
				g_mark++;
				if(g_mark == 2)
				g_mark =0;
				g_mark1=g_position;
			}
		
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_RED = PWM_TOP ;
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[7][RED][g_speed7+g_position]);
				
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_GREEN = PWM_TOP ;
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[7][GREEN][g_speed7+g_position]);
				
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_BLUE  = PWM_TOP ;
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[7][BLUE][g_speed7+g_position]);
		
				
		break;	
		
		
		case 31:				// background is changing android loader 2 africa neg
			seconds_hand=0;		
			if ((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) == 0x27) && (pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position]) == 0x27) && ( abs(g_speed3rev-g_speed7rev) <=1 ))
			{
				if (abs(g_mark1-g_position)>6) 
				g_mark++;
				if(g_mark == 2)
				g_mark =0;
				g_mark1=g_position;
			}
		
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_RED = PWM_TOP ;
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_RED = PWM_TOP ;
			else
			PWM_RED =  pgm_read_byte(&gc_background[6][RED][g_speed7+g_position]);
				
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_GREEN = PWM_TOP ;
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_GREEN = PWM_TOP ;
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[6][GREEN][g_speed7+g_position]);
				
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_BLUE  = PWM_TOP ;
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_BLUE  = PWM_TOP ;
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[6][BLUE][g_speed7+g_position]);
		
		break;	
			
		case 30:				// background is changing android loader 2 neg grey
			seconds_hand=0;		
			if ((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) == 0x27) && (pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position]) == 0x27) && ( abs(g_speed3rev-g_speed7rev) <=1 ))
			{
				if (abs(g_mark1-g_position)>6) 
				g_mark++;
				if(g_mark == 2)
				g_mark =0;
				g_mark1=g_position;
			}
		
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_RED = PWM_TOP ;
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_RED = PWM_TOP ;//PWM_RED =  pgm_read_byte(&gc_background[2][RED][g_speed3rev+g_position]);
			else
			PWM_RED =  pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]);
				
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_GREEN = PWM_TOP ;
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_GREEN = PWM_TOP ;//PWM_GREEN =  pgm_read_byte(&gc_background[2][RED][g_speed3rev+g_position]);
			else
			PWM_GREEN =  pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]);
				
			if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
			PWM_BLUE  = PWM_TOP ;
			else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
			PWM_BLUE  = PWM_TOP ;//PWM_BLUE =  pgm_read_byte(&gc_background[2][RED][g_speed3rev+g_position]);
			else
			PWM_BLUE =  pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]);
		
			
		break;	
		
		case 29:				// background is changing grey, android loader 1 with black lines
			seconds_hand=0;				
			if (g_position % 20 == 0)
			{
				PWM_RED = PWM_TOP;
				PWM_GREEN = PWM_TOP;
				PWM_BLUE = PWM_TOP;
			}
			
			else	
			{	
				if ( (pgm_read_byte(&gm_background[0][RED][g_speed2rev+g_position]) == PWM_TOP ) || ( pgm_read_byte(&gm_background[0][GREEN][g_speed3+g_position]) == PWM_TOP)) 
				{
					PWM_RED = 0x25 ;
					PWM_GREEN = 0x25 ;
					PWM_BLUE = 0x25 ;
				}
				else
				{
					PWM_RED = pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]) ;
					PWM_GREEN =  pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]); 
					PWM_BLUE = pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]) ;
				}

			}
			
		break;
			
		case 28:				// background is changing grey, android loader 1
			seconds_hand=0;				
			if ( (pgm_read_byte(&gm_background[0][RED][g_speed2rev+g_position]) == PWM_TOP ) || (pgm_read_byte(&gm_background[0][GREEN][g_speed3+g_position]) == PWM_TOP)) 
			{
				PWM_RED = 0x25 ;
				PWM_GREEN = 0x25 ;
				PWM_BLUE = 0x25 ;
			}
			else
			{
				PWM_RED = pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]) ;
				PWM_GREEN =  pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]); 
				PWM_BLUE = pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]) ;
			}
			
		break;
		
		case 27:				// background is changing LSD, or kaleidoscope mode with pacyfic
			seconds_hand=0;
			if (pgm_read_byte(&gc_background[0][RED][g_speed3+g_position]) + pgm_read_byte(&gc_background[4][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[1][RED][g_speed7+g_position]) < PWM_TOP)
			PWM_RED = pgm_read_byte(&gc_background[0][RED][g_speed3+g_position]) + pgm_read_byte(&gc_background[4][GREEN][g_speed7+g_position]);
			//pacific sign
			else if (pgm_read_byte(&gm_background[1][RED][g_speed7+g_position]) == 0x26)
			PWM_RED = 0x22;
			else
			PWM_RED = PWM_TOP - pgm_read_byte(&gc_background[0][RED][g_speed7rev+g_position]);
				
			if (pgm_read_byte(&gc_background[0][GREEN][g_speed3+g_position]) + pgm_read_byte(&gc_background[4][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[1][RED][g_speed7+g_position]) < PWM_TOP)
			PWM_GREEN = pgm_read_byte(&gc_background[0][GREEN][g_speed3+g_position]) + pgm_read_byte(&gc_background[4][GREEN][g_speed7+g_position]);
			//pacific sign
			else if (pgm_read_byte(&gm_background[1][RED][g_speed7+g_position]) == 0x26)
			PWM_GREEN = 0x22;
			else
			PWM_GREEN = PWM_TOP - pgm_read_byte(&gc_background[0][GREEN][g_speed7rev+g_position]);
				
			if (pgm_read_byte(&gc_background[0][BLUE][g_speed3+g_position]) + pgm_read_byte(&gc_background[4][GREEN][g_speed7+g_position]) + pgm_read_byte(&gm_background[1][RED][g_speed7+g_position]) < PWM_TOP)
			PWM_BLUE = pgm_read_byte(&gc_background[0][BLUE][g_speed3+g_position]) + pgm_read_byte(&gc_background[4][GREEN][g_speed7+g_position]);
			//pacific sign
			else if (pgm_read_byte(&gm_background[1][RED][g_speed7+g_position]) == 0x26)
			PWM_BLUE = 0x22;
			else
			PWM_BLUE = PWM_TOP - pgm_read_byte(&gc_background[0][BLUE][g_speed7rev+g_position]);
			break;
			
		case 26:				// background is changing fast, with black lines grey 7x2 light
			seconds_hand=1;			
			if (g_position % 20 == 0)
			{
				PWM_RED = PWM_TOP;
				PWM_GREEN = PWM_TOP;
				PWM_BLUE = PWM_TOP;
			}
			else
			{
			PWM_RED = pgm_read_byte(&gc_background[4][RED][g_speed2+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[4][RED][g_speed2+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[4][RED][g_speed2+g_position]);
			}	
			
		break;
				
		case 25:				// background is changing fast, grey 7x2 light
			seconds_hand=1;				
			PWM_RED = pgm_read_byte(&gc_background[4][RED][g_speed2+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[4][RED][g_speed2+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[4][RED][g_speed2+g_position]);
		break;
		
		case 24:				// background is changing fast, with black lines grey 5x2 light
			seconds_hand=1;			
			if (g_position % 20 == 0)
			{
				PWM_RED = PWM_TOP;
				PWM_GREEN = PWM_TOP;
				PWM_BLUE = PWM_TOP;
			}
			else
			{
			PWM_RED = pgm_read_byte(&gc_background[3][RED][g_speed2+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[3][RED][g_speed2+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[3][RED][g_speed2+g_position]);
			}
				
		break;
				
		case 23:				// background is changing fast, grey 5x2 light
			seconds_hand=1;				
			PWM_RED = pgm_read_byte(&gc_background[3][RED][g_speed2+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[3][RED][g_speed2+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[3][RED][g_speed2+g_position]);
		break;
	
		case 22:				// background is changing fast, with black lines grey x2 light
			seconds_hand=1;			
			if (g_position % 20 == 0)
			{
				PWM_RED = PWM_TOP;
				PWM_GREEN = PWM_TOP;
				PWM_BLUE = PWM_TOP;
			}
			else
			{
			PWM_RED = pgm_read_byte(&gc_background[2][BLUE][g_speed2+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[2][BLUE][g_speed2+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[2][BLUE][g_speed2+g_position]);
			}	
			
		break;
				
		case 21:				// background is changing fast, grey x2 light
			seconds_hand=1;				
			PWM_RED = pgm_read_byte(&gc_background[2][BLUE][g_speed2+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[2][BLUE][g_speed2+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[2][BLUE][g_speed2+g_position]);
		break;
			
		case 20:				// background is changing slow, with black lines grey 7x2 light
			seconds_hand=1;				
			if (g_position % 20 == 0)
			{
				PWM_RED = PWM_TOP;
				PWM_GREEN = PWM_TOP;
				PWM_BLUE = PWM_TOP;
			}
			else
			{	
			PWM_RED = pgm_read_byte(&gc_background[4][RED][g_speed12+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[4][RED][g_speed12+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[4][RED][g_speed12+g_position]);
			}	
			
		break;
			
		case 19:				// background is changing slow, grey 7 x2 lihgt
			seconds_hand=1;				
			PWM_RED = pgm_read_byte(&gc_background[4][RED][g_speed12+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[4][RED][g_speed12+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[4][RED][g_speed12+g_position]);
		break;
				
	
			
		case 18:				// background is changing slow, with black lines grey 5x2 light
			seconds_hand=1;				
			if (g_position % 20 == 0)
			{
				PWM_RED = PWM_TOP;
				PWM_GREEN = PWM_TOP;
				PWM_BLUE = PWM_TOP;
			}
			else
			{
			PWM_RED = pgm_read_byte(&gc_background[3][RED][g_speed12+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[3][RED][g_speed12+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[3][RED][g_speed12+g_position]);
			}	
			
		break;
			
		case 17:				// background is changing slow, grey 5 x2 light
			seconds_hand=1;				
			PWM_RED = pgm_read_byte(&gc_background[3][RED][g_speed12+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[3][RED][g_speed12+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[3][RED][g_speed12+g_position]);
		break;
				
		case 16:				// background is changing slow, with black lines grey x2 light
			seconds_hand=1;			
			if (g_position % 20 == 0)
			{
				PWM_RED = PWM_TOP;
				PWM_GREEN = PWM_TOP;
				PWM_BLUE = PWM_TOP;
			}	
			else
			{
			PWM_RED = pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]);
			}	
			
		break;
			
		case 15:				// background is changing slow, grey x2 light
			seconds_hand=1;				
			PWM_RED = pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]);
		break;
		
		case 14:				// background is changing fast, with black lines africa
			seconds_hand=1;				
			if (g_position % 20 == 0)
			{
				PWM_RED = PWM_TOP;
				PWM_GREEN = PWM_TOP;
				PWM_BLUE = PWM_TOP;
			}
			else
			{	
			PWM_RED = pgm_read_byte(&gc_background[6][RED][g_speed3+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[6][GREEN][g_speed3+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[6][BLUE][g_speed3+g_position]);
			}	
			
		break;
				
		case 13:				// background is changing fast, africa
			seconds_hand=1;				
			PWM_RED = pgm_read_byte(&gc_background[6][RED][g_speed3+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[6][GREEN][g_speed3+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[6][BLUE][g_speed3+g_position]);
		break;
	
		
		
		case 12:				// background is changing fast, with black lines windows
			seconds_hand=1;			
			if (g_position % 20 == 0)
			{
				PWM_RED = PWM_TOP;
				PWM_GREEN = PWM_TOP;
				PWM_BLUE = PWM_TOP;
			}	
			else
			{
			PWM_RED = pgm_read_byte(&gc_background[7][RED][g_speed3+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[7][GREEN][g_speed3+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[7][BLUE][g_speed3+g_position]);
			}	
			
		break;
	
		case 11:				// background is changing fast, windows
			seconds_hand=1;			
			PWM_RED = pgm_read_byte(&gc_background[7][RED][g_speed3+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[7][GREEN][g_speed3+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[7][BLUE][g_speed3+g_position]);
			break;
	
		case 10:				// background is changing fast, with black lines rainbow
			seconds_hand=1;		
			if (g_position % 20 == 0)
			{
				PWM_RED = PWM_TOP;
				PWM_GREEN = PWM_TOP;
				PWM_BLUE = PWM_TOP;
			}
			else
			{
			PWM_RED = pgm_read_byte(&gc_background[0][RED][g_speed3+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[0][GREEN][g_speed3+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[0][BLUE][g_speed3+g_position]);
			}
			
			
		break;
			
		case 9:				// background is changing fast, rainbowx2
			seconds_hand=1;			
			PWM_RED = pgm_read_byte(&gc_background[0][RED][g_speed3+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[0][GREEN][g_speed3+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[0][BLUE][g_speed3+g_position]);
		break;
	
		case 8:				// background is changing slow, with black lines africa
			seconds_hand=1;			
			if (g_position % 20 == 0)
			{
				PWM_RED = PWM_TOP;
				PWM_GREEN = PWM_TOP;
				PWM_BLUE = PWM_TOP;
			}
			else	
			{
			PWM_RED = pgm_read_byte(&gc_background[6][RED][g_speed12+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[6][GREEN][g_speed12+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[6][BLUE][g_speed12+g_position]);
			}	
			
		break;
				
		case 7:				// background is changing slow, africa
			seconds_hand=1;				
			PWM_RED = pgm_read_byte(&gc_background[6][RED][g_speed12+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[6][GREEN][g_speed12+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[6][BLUE][g_speed12+g_position]);
		break;
		
		case 6:				// background is changing slow, with black lines windows
			seconds_hand=1;			
			if (g_position % 20 == 0)
			{
				PWM_RED = PWM_TOP;
				PWM_GREEN = PWM_TOP;
				PWM_BLUE = PWM_TOP;
			}	
			else
			{
			PWM_RED = pgm_read_byte(&gc_background[7][RED][g_speed12+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[7][GREEN][g_speed12+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[7][BLUE][g_speed12+g_position]);
			}	
			
		break;
		
		case 5:				// background is changing slow, windows
			seconds_hand=1;			
			PWM_RED = pgm_read_byte(&gc_background[7][RED][g_speed12+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[7][GREEN][g_speed12+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[7][BLUE][g_speed12+g_position]);
			break;



		case 4:				// background is changing slow, with black lines rainbowx2
			seconds_hand=1;					
			if (g_position % 20 == 0)
			{
				PWM_RED = PWM_TOP;
				PWM_GREEN = PWM_TOP;
				PWM_BLUE = PWM_TOP;
			}
			else
			{
			PWM_RED = pgm_read_byte(&gc_background[0][RED][g_speed12+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[0][GREEN][g_speed12+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[0][BLUE][g_speed12+g_position]);
			}
			
		break;
				
		case 3:				// background is changing slow, rainbowx2
			seconds_hand=1;				
			PWM_RED = pgm_read_byte(&gc_background[0][RED][g_speed12+g_position]);
			PWM_GREEN = pgm_read_byte(&gc_background[0][GREEN][g_speed12+g_position]);
			PWM_BLUE = pgm_read_byte(&gc_background[0][BLUE][g_speed12+g_position]);
		break;
			
		//case 4:				// background is changing, one color with black lines
		//	seconds_hand=1;					
		//	if (g_position % 20 == 0)
		//	{
		//		PWM_RED = PWM_TOP;
		//		PWM_GREEN = PWM_TOP;
		//		PWM_BLUE = PWM_TOP;
		//	}
		//	else
		//	{
		//	PWM_RED = pgm_read_byte(&g_background[3][RED][g_seconds]);
		//	PWM_GREEN = pgm_read_byte(&g_background[3][GREEN][g_seconds]);
		//	PWM_BLUE = pgm_read_byte(&g_background[3][BLUE][g_seconds]);
		//	}
			
		//break;
			
		//case 3:				// background is changing, one color 
		
				// background is changing android loader 2 neg grey
		//	seconds_hand=0;		
		//		if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) == 0x27) && (pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position]) == 0x27)) && (abs(g_speed3rev-g_speed7rev)<=1) )
		//	{
		//		if (((abs(g_mark1-g_position)>=58) && (abs(g_mark1-g_position)<=62)) || ((abs(g_mark1-g_position)>=178) && (abs(g_mark1-g_position)<=182)) || (((abs(g_mark1-g_position)>=238) && (abs(g_mark1-g_position)<=240)) && ((abs(g_mark1-g_position)>=0) && (abs(g_mark1-g_position)<=2))))
				
		//		g_mark++;
			
		//		if(g_mark == 2)
		//		g_mark =0;
		//		g_mark1=g_position;
		//		PWM_RED =0x00;
		//		PWM_GREEN =0x00;
		//		PWM_BLUE  =0x00;
		//	}
		
		//	if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0a) && !(g_mark))
		//	{
		//		PWM_RED = PWM_TOP ;
		//		PWM_GREEN = PWM_TOP ;
		//		PWM_BLUE  = PWM_TOP ;
		//	}
			
		//	else if (((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) + pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position])) == 0x0c) && (g_mark))
		//	{
		//		PWM_RED = PWM_TOP ;
		//		PWM_GREEN = PWM_TOP ;
		//		PWM_BLUE  = PWM_TOP ;
		//	}
			
		//	else
		//	{
		//		PWM_RED =  pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]);
		//		PWM_GREEN =  pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]);
		//		PWM_BLUE =  pgm_read_byte(&gc_background[2][BLUE][g_speed12+g_position]);
		//	}
		
			
			//if ((pgm_read_byte(&gm_background[11][GREEN][g_speed7rev+g_position]) == 0x27) && (pgm_read_byte(&gm_background[11][RED][g_speed3rev+g_position]) == 0x27) )
			//{
			////PWM_RED =0x00;
			//PWM_GREEN =0x00;
			//PWM_BLUE  =0x00;
		//	}
			
		//break;	
	
			//seconds_hand=1;				
		//	PWM_RED = pgm_read_byte(&g_background[3][RED][g_seconds]);
		//	PWM_GREEN = pgm_read_byte(&g_background[3][GREEN][g_seconds]);
		//	PWM_BLUE = pgm_read_byte(&g_background[3][BLUE][g_seconds]);
		//break;
			
		default:		// basic modes
			seconds_hand=1;				
			PWM_RED = pgm_read_byte(&g_background[g_mode][RED][g_position]);
			PWM_GREEN = pgm_read_byte(&g_background[g_mode][GREEN][g_position]);
			PWM_BLUE = pgm_read_byte(&g_background[g_mode][BLUE][g_position]);
		break;			
		}
	}
	
	g_position++;		//increase position
	g_reminder--;	//decrease reminder
	
	
	//demo mode
	if (g_s_rc_state == STATE_DEMO)
	{
		g_temp_mode=g_mode;
		g_mode=g_speeddemo;		
	}
	
	//	for various speed, mode background changing
	timer2tmp=TCNT2;
	if (TCNT2 % 85 == 0)	
	{
		g_timer2_speed2++;
		g_timer2_speed3++;
		g_timer2_speed6++;
		g_timer2_speed7++;
		g_timer2_speed8++;
		g_timer2_speed9++;
		g_timer2_speed12++;
		g_timer2_speeddemo1++;
		g_timer2_speedrandom1++;
		

		
		if(g_timer2_speeddemo1 == 248)		// very slow, every 15s, demo mode
		{	
			g_timer2_speeddemo2++;
			
			if(g_timer2_speeddemo2 == 14)
			{
				g_speeddemo++;
				if(g_speeddemo == NUMBER_OF_MODES)
				g_speeddemo =2;
				
				g_timer2_speeddemo2=0;
			}
			
			g_timer2_speeddemo1=0;	
		}

		if (g_timer2_speed12 == 12)		// slow background change
		{
			if(g_speed12rev == 0)
			g_speed12rev  =RESOLUTION;
			g_speed12rev --;
			
			g_speed12++;
			if(g_speed12 == RESOLUTION)
			g_speed12 =0;

			g_timer2_speed12=0;
		}
	
		if (g_timer2_speed9 == 9)		// slow background change
		{
			if(g_speed9rev == 0)
			g_speed9rev  =RESOLUTION;
			g_speed9rev --;
			
			g_speed9++;
			if(g_speed9 == RESOLUTION)
			g_speed9 =0;

			g_timer2_speed9=0;
		}
	
		if (g_timer2_speed8 == 8)		// slow background change
		{
			if(g_speed8rev == 0)
			g_speed8rev  =RESOLUTION;
			g_speed8rev --;
			
			g_speed8++;
			if(g_speed8 == RESOLUTION)
			g_speed8 =0;

			g_timer2_speed8=0;
		}
	
		if (g_timer2_speed7 == 7)		// slow background change
		{
			if(g_speed7rev == 0)
			g_speed7rev  =RESOLUTION;
			g_speed7rev --;
			
			g_speed7++;
			if(g_speed7 == RESOLUTION)
			g_speed7 =0;

			g_timer2_speed7=0;
		}
		
		if (g_timer2_speed6 == 6)		// slow1 background change
		{
			if(g_speed6rev == 0)
			g_speed6rev  =RESOLUTION;
			g_speed6rev --;
			
			g_speed6++;
			if(g_speed6 == RESOLUTION)
			g_speed6 =0;

			g_timer2_speed6=0;
		}
		
		if (g_timer2_speed3 == 3)	
		{
			g_speed3++;
			if(g_speed3 >= RESOLUTION)		// fast1 background change
			g_speed3 =0;
			
			if(g_speed3rev == 0)
			g_speed3rev  =RESOLUTION;
			g_speed3rev --;

			g_timer2_speed3=0;
		}

		if (g_timer2_speed2 == 2)	
		{
			g_speed2++;
			if(g_speed2 == RESOLUTION)		// fast background change
			g_speed2 =0;
			
			if(g_speed2rev == 0)
			g_speed2rev  =RESOLUTION;
			g_speed2rev --;

			g_timer2_speed2=0;
		}
		
		if(g_timer2_speedrandom1 == 5)		// radioactivity background change - semi random direction
		{	
			g_timer2_speedrandom2++;	
			if(g_timer2_speedrandom2 == 3)
			{
				if (TCNT2 % 33 == 0) 
				{
					if (g_speedrandom % 2 == 0)
					g_speedrandom=g_speed7;
					else
					g_speedrandom=g_speed7rev;
				}
				else	
					if (timer2tmp % 2 == 0)
					{
						g_speedrandom++;
						if(g_speedrandom == RESOLUTION)
						g_speedrandom = 0;
					}
					else
					{
						if(g_speedrandom == 0)
						g_speedrandom =RESOLUTION;
						g_speedrandom--;
					}
					
				g_timer2_speedrandom2=0;
			}
			
			g_timer2_speedrandom1=0;	
		}
	}
}

//################# TIMER2 overflow interupt routine #######################
//Timer2 is clocked using external 4096Hz generator (square wave from RTC)
//this routine updates internal time registers and clear some general purpose registers
ISR(TIMER2_OVF_vect)
{
	g_timer2_ovf++;  		//increase overflows counter
	
	static uint8_t last_rc_bit_counter = 0;
	
	if(last_rc_bit_counter == g_rc_bit_counter) 	//this indicates error, transmission was stopped
		g_rc_bit_counter = 0;						//clear remote control bit counter
	
	last_rc_bit_counter = g_rc_bit_counter;
	if(g_s_rc_state == STATE_SETTING)
	{
		c_timer2_ovf=16;
		c_rc_idle_counter=4;
	}
	else
	{
		c_timer2_ovf=4;
		c_rc_idle_counter=4;
	}

	if(g_timer2_ovf == c_timer2_ovf)	// 4*255*(1/4096Hz) = 0,25s elapsed
	{	
		g_uart_counter = 0;  //clear uart char counter
		g_timer2_ovf = 0;    //clear timer2 overflow counter	
		g_rc_idle_counter++; //increase remote control idle counter
		
		if(g_rc_idle_counter == c_rc_idle_counter)
		{	
			g_rc_idle_counter = 0;	
			g_rc_hold_counter = 0;	//clear button hold counter
			EIMSK |= _BV(RC_IN);
		}
	if(g_rc_state != STATE_SETTING) //if time is being set don't update time registers
		{
			//remember that these valuse are already preprocessed so one full circle = 240 steps
		if(g_s_rc_state == STATE_SETTING)
			g_seconds+=4;
		else
			g_seconds++;
			if(g_seconds == RESOLUTION)
				g_seconds = 0;
			if(g_seconds % 60 == 0)
			{		
				g_minutes++;
				if(g_minutes == RESOLUTION)
					g_minutes = 0;
				if(g_minutes % 12 == 0)
				{
					g_hours++;
					if(g_hours == RESOLUTION)
					g_hours = 0;
				}
			}	
		}
	}
}

//################# External interupt5 routine #######################
//Input INT5 is conntected to the IR receiver
//this routine is called either rising or falling edge comes on INT5
//Philips RC5 code is manchester linear code
ISR(INT5_vect)
{
	static uint8_t timer2_buf_a = 0;
	static uint8_t timer2_buf_b = 0;		
	static uint8_t timer2_ovf_buf = 0;
	static uint16_t data_buf = 0;			//static buffer regeisters
	static uint8_t edge_position = 0;		//edge position indicator
											//if even the edge is at the begining of a bit
											//if odd the edge is in the of a bit
											//for more details see Manchester code specification
	
	uint8_t tmp_time;	
	uint8_t tmp_command;	//helpful registers

	g_rc_idle_counter = 0; 		//something is being received so clear rc idle register
	
	if(g_rc_bit_counter == 0)	//transmission has just begun
	{
		timer2_buf_a = TCNT2;			//store timer2 data register
		timer2_ovf_buf = g_timer2_ovf;	//and timer2 overflow counter

		if(PINE & _BV(RC_IN))			//if RC_IN pin is high
			data_buf = 0x0000;			//error occured, this situation isn't correct
		else
		{
			data_buf = 0x8000;			//first start bit received
			g_rc_bit_counter++;			//increase bit counder
			edge_position = 1;			//first received egde is in the middle of the bit
		}
	}
	else
	{
		timer2_buf_b = TCNT2;		//store in register 'b'
		
		if(timer2_ovf_buf != g_timer2_ovf)	//if timer2 overflowed meanwhile
		{
			tmp_time =  255 - timer2_buf_a + timer2_buf_b + 1;	//compute time since last edge
			timer2_ovf_buf = g_timer2_ovf;
		}
		else
			tmp_time =  timer2_buf_b - timer2_buf_a;			//compute time since last edge
			
		timer2_buf_a = timer2_buf_b;							//update register 'a'
		
		//if half of a bit time elapsed
		if((tmp_time >= HALF_BIT - DELTA) && (tmp_time <= HALF_BIT + DELTA)) 
		{
			edge_position++;			//increase edge position
			if(edge_position & 0x01)	//decode if it's middle-bit edge
			{
				if(!(PINE & _BV(RC_IN)))
					data_buf |= _BV(15 - g_rc_bit_counter);
					
				g_rc_bit_counter++;	
			}
		}
		//if one bit time elapsed
		else if((tmp_time >= ONE_BIT - DELTA) && (tmp_time <= ONE_BIT + DELTA))
		{
			edge_position += 2;			//increase edge position with 2
			
			if(edge_position & 0x01)	//decode if it's middle-bit edge
			{
				if(!(PINE & _BV(RC_IN)))
					data_buf |= _BV(15 - g_rc_bit_counter);
					
				g_rc_bit_counter++;	
			}			
		}
		else
			g_rc_bit_counter = 0;		//erroc ocurred, clear bit counter register
		
		if(g_rc_bit_counter == 14)		//if 14 bits are received
		{
			//validate received data
			if((data_buf & _BV(15)) && (data_buf & _BV(14)))	//start bits are both '1'
			{
				if(((data_buf >> 8) & 0b00011111) == DEVICE_ADDRESS)  //the message is addressed to the clock
				{
					if(data_buf & _BV(13)) //toogle bit is '1'
						tmp_command = 0b10000000 | ((data_buf >> 2) & 0b00111111);
					else
						tmp_command = ((data_buf >> 2) & 0b00111111);
					
					rc_process_command(tmp_command); //process received command	
				}
			}
			
			g_rc_bit_counter = 0;
		}
		
	}
}

void init_timers(void)
{
	TCCR3B |= _BV(CS31);		//}
	ETIMSK |= _BV(TICIE3);		//}enable timer3 input capture interrupt on falling edge
	
	TCCR0 |= _BV(WGM01) | _BV(CS01);	//}
	OCR0 = 255;							//}enable timer0 output compare feature (LEDs PWM driving)
	
	TCCR2 |= _BV(CS22) | _BV(CS21); 	//}configure timer2 as a external clocked counter
	TIMSK |= _BV(TOIE2);				//}and enable overflow interupt
	
	TCCR1A |= (_BV(WGM11) | _BV(COM1A1) | _BV(COM1B1) | _BV(COM1C1)| 	//}enable timer1 
	_BV(COM1A0) | _BV(COM1B0) | _BV(COM1C0));							//}output compare
																		//}mode
	TCCR1B |= (_BV(WGM13) | _BV(WGM12) |  _BV(CS10));					//}negative polarity
																		
	ICR1 = PWM_TOP;														//set PWM top value
	PWM_RED = PWM_TOP;													//}
	PWM_GREEN = PWM_TOP;												//}turn off all leds
	PWM_BLUE = PWM_TOP;													//}
	
}

int main(void)
{
	//initialization
	MOTDDR |= _BV(MOTPIN);
	LEDDDR |= _BV(RED_LED) | _BV(GREEN_LED) | _BV(BLUE_LED) ; 
	MOT_OFF();
	init_i2c();
	init_timers();
	USART1_Init ( MYUBRR );
	
	EICRB |= _BV(ISC50);
	EIMSK |= _BV(RC_IN); //enable RC interrupt, both edges
	
	//g_mode = 42; 		//radioactivity mode at start 42
	g_mh_mode = 5;		//white hands at start
	g_hh_mode = 5;		//white hands at start
	
	_delay_ms(200);	
	_delay_ms(200);	//wait for all devices to warm up

	
	SetPointer(0x00);					//set i2c pointer to the begin
	ReadBufI2C(g_data_rtc, 8);			//read all data

	WriteI2C(SECONDS_ADDR, 0b01111111 & g_data_rtc[SECONDS_ADDR]); //enable oscilator
	WriteI2C(CONTROL_ADDR, 0b10010001); 							//enable RTC square wave output,
																	//without these lines RC will not work
																	//and all hands will stay still
	
	g_data_rtc[HOURS_ADDR] &= 0b00011111; //mask am/pm bit
	
	uint8_t i;
	for(i = 0; i < 8; i++)
		g_data_rtc[i] = BCDtoDEC(g_data_rtc[i]); //convert to decimal format
	
	//now these values must be preprocessed to RESOLUTIONsteps/cicrle format
	g_seconds = 4*g_data_rtc[SECONDS_ADDR] ;
	g_minutes = 4*g_data_rtc[MINUTES_ADDR] + (g_data_rtc[SECONDS_ADDR] / 15);
	g_hours   = 20*(g_data_rtc[HOURS_ADDR]%12) + (g_data_rtc[MINUTES_ADDR]/3);
		
	MOT_ON(); 		//start the motor
	g_power_on = 1;	//set power indicator
	sei();			//enable interrupts
	

	
	while(1);		//and let them do all the job

	return 0;
}  
