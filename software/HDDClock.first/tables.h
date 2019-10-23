/*############################################### 	
  ####	HDDClock driver source code  		#####
  ####	file: tablec.h						#####
  ####	date: Aug 18th, 2009				#####
  ###############################################*/
  
//this file contains tables with background patterns and hands' designs
//color indexing: RED = 0, GREEN = 1, BLUE = 2
//PWM values: 0x00 -> full brightness, 0x27 = PWM_TOP -> LED turn off

extern uint8_t __attribute__ ((progmem)) g_background[/*mode*/][/*color*/3][240] = {

//########################## MODE 0 BACKGROUND ####################
	{{0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00},
	
	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}, 
	
	{0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00}}, 

//########################## MODE 1 BACKGROUND ####################
  {{0x27, 0x26, 0x25, 0x24, 0x23, 0x22, 0x21, 0x20, 0x1f, 0x1e, 
	0x1d, 0x1c, 0x1b, 0x1a, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 
	0x13, 0x12, 0x11, 0x10, 0x0f, 0x0e, 0x0d, 0x0c, 0x0b, 0x0a, 
	0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01, 0x00, 
	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 
	0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 
	0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 
	0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 
	0x27, 0x26, 0x25, 0x24, 0x23, 0x22, 0x21, 0x20, 0x1f, 0x1e, 
	0x1d, 0x1c, 0x1b, 0x1a, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 
	0x13, 0x12, 0x11, 0x10, 0x0f, 0x0e, 0x0d, 0x0c, 0x0b, 0x0a, 
	0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01, 0x00, 
	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 
	0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 
	0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 
	0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 
	0x27, 0x26, 0x25, 0x24, 0x23, 0x22, 0x21, 0x20, 0x1f, 0x1e, 
	0x1d, 0x1c, 0x1b, 0x1a, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 
	0x13, 0x12, 0x11, 0x10, 0x0f, 0x0e, 0x0d, 0x0c, 0x0b, 0x0a, 
	0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01, 0x00, 
	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 
	0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 
	0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 
	0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27},

	{0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 
	0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 
	0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 
	0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x26, 0x25, 0x24, 0x23, 0x22, 0x21, 0x20, 0x1f, 0x1e, 
	0x1d, 0x1c, 0x1b, 0x1a, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 
	0x13, 0x12, 0x11, 0x10, 0x0f, 0x0e, 0x0d, 0x0c, 0x0b, 0x0a, 
	0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 
	0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 
	0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 
	0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 
	0x27, 0x26, 0x25, 0x24, 0x23, 0x22, 0x21, 0x20, 0x1f, 0x1e, 
	0x1d, 0x1c, 0x1b, 0x1a, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 
	0x13, 0x12, 0x11, 0x10, 0x0f, 0x0e, 0x0d, 0x0c, 0x0b, 0x0a, 
	0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01, 0x00},

	{0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 
	0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 
	0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 
	0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x26, 0x25, 0x24, 0x23, 0x22, 0x21, 0x20, 0x1f, 0x1e, 
	0x1d, 0x1c, 0x1b, 0x1a, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 
	0x13, 0x12, 0x11, 0x10, 0x0f, 0x0e, 0x0d, 0x0c, 0x0b, 0x0a, 
	0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01, 0x00}},
	
//########################## MODE 2 BACKGROUND ####################	
  {{0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 
	0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 
	0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 
	0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x26, 0x25, 0x24, 0x23, 0x22, 0x21, 0x20, 0x1f, 0x1e, 
	0x1d, 0x1c, 0x1b, 0x1a, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 
	0x13, 0x12, 0x11, 0x10, 0x0f, 0x0e, 0x0d, 0x0c, 0x0b, 0x0a, 
	0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 },

	{0x27, 0x26, 0x25, 0x24, 0x23, 0x22, 0x21, 0x20, 0x1f, 0x1e, 
	0x1d, 0x1c, 0x1b, 0x1a, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 
	0x13, 0x12, 0x11, 0x10, 0x0f, 0x0e, 0x0d, 0x0c, 0x0b, 0x0a, 
	0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 
	0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 
	0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 
	0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27},

	{0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x26, 0x25, 0x24, 0x23, 0x22, 0x21, 0x20, 0x1f, 0x1e, 
	0x1d, 0x1c, 0x1b, 0x1a, 0x19, 0x18, 0x17, 0x16, 0x15, 0x14, 
	0x13, 0x12, 0x11, 0x10, 0x0f, 0x0e, 0x0d, 0x0c, 0x0b, 0x0a, 
	0x09, 0x08, 0x07, 0x06, 0x05, 0x04, 0x03, 0x02, 0x01, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 
	0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 
	0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x1a, 0x1b, 0x1c, 0x1d, 
	0x1e, 0x1f, 0x20, 0x21, 0x22, 0x23, 0x24, 0x25, 0x26, 0x27 }},
	
//########################## MODE 3 BACKGROUND ####################	
	{{0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00}, 
	
	{0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00}, 
	
	{0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00, 
	0x00, 0x00, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 
	0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x00}},
	
//########################## MODE 4 BACKGROUND ####################	
	{{0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27},
	
	{0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27},

	{0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27, 
	0x27, 0x27, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x27}}		
};

//all hands are 9 steps wide
//color indexing: RED = 0, GREEN = 1, BLUE = 2
//PWM values: 0x00 -> full brightness, 0x27 = PWM_TOP -> LED turn off
//triple 0x28=PWM_TOP+1 value makes the hand transparent in current step
extern uint8_t __attribute__ ((progmem)) g_second_hand[/*mode*/][/*color*/3][9] = {
//########################## MODE 0 SECOND HAND ##################
   {{0x28, 0x28, 0x27, 0x27, 0x00, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28}},
//########################## MODE 1 SECOND HAND ##################
   {{0x28, 0x28, 0x27, 0x27, 0x00, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28}},
//########################## MODE 2 SECOND HAND ##################
   {{0x28, 0x28, 0x27, 0x27, 0x00, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28}},	
//########################## MODE 3 SECOND HAND ##################
   {{0x28, 0x28, 0x28, 0x00, 0x00, 0x00, 0x28, 0x28, 0x28},
	{0x28, 0x28, 0x28, 0x27, 0x27, 0x27, 0x28, 0x28, 0x28},
	{0x28, 0x28, 0x28, 0x27, 0x27, 0x27, 0x28, 0x28, 0x28}},
//########################## MODE 4 SECOND HAND ##################
   {{0x28, 0x28, 0x28, 0x00, 0x00, 0x00, 0x28, 0x28, 0x28},
	{0x28, 0x28, 0x28, 0x27, 0x27, 0x27, 0x28, 0x28, 0x28},
	{0x28, 0x28, 0x28, 0x27, 0x27, 0x27, 0x28, 0x28, 0x28}},
//########################## MODE 5 SECOND HAND ##################	
   {{0x28, 0x28, 0x27, 0x27, 0x00, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28}}		
};


extern uint8_t __attribute__ ((progmem)) g_minute_hand[/*mode*/][/*color*/3][9]= {
//########################## MODE 0 MINUTE HAND ##################
   {{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x00, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28}},
//########################## MODE 1 MINUTE HAND ##################
   {{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x00, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28}},
//########################## MODE 2 MINUTE HAND ##################
   {{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x00, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28}},
//########################## MODE 3 MINUTE HAND ##################
   {{0x28, 0x28, 0x28, 0x27, 0x27, 0x27, 0x28, 0x28, 0x28},
	{0x28, 0x28, 0x28, 0x00, 0x00, 0x00, 0x28, 0x28, 0x28},
	{0x28, 0x28, 0x28, 0x27, 0x27, 0x27, 0x28, 0x28, 0x28}},
//########################## MODE 4 MINUTE HAND ##################
   {{0x28, 0x28, 0x28, 0x27, 0x27, 0x27, 0x28, 0x28, 0x28},
	{0x28, 0x28, 0x28, 0x00, 0x00, 0x00, 0x28, 0x28, 0x28},
	{0x28, 0x28, 0x28, 0x27, 0x27, 0x27, 0x28, 0x28, 0x28}},
//########################## MODE 5 MINUTE HAND ##################
   {{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x00, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28}}
};

extern uint8_t __attribute__ ((progmem)) g_hour_hand[/*mode*/][/*color*/3][9] = {
//########################## MODE 0 HOUR HAND ####################
   {{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x00, 0x27, 0x27, 0x28, 0x28}},
//########################## MODE 1 HOUR HAND ####################
   {{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x00, 0x27, 0x27, 0x28, 0x28}},
//########################## MODE 2 HOUR HAND ####################
   {{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x00, 0x27, 0x27, 0x28, 0x28}},
//########################## MODE 3 HOUR HAND ####################
   {{0x28, 0x28, 0x28, 0x27, 0x27, 0x27, 0x28, 0x28, 0x28},
	{0x28, 0x28, 0x28, 0x27, 0x27, 0x27, 0x28, 0x28, 0x28},
	{0x28, 0x28, 0x28, 0x00, 0x00, 0x00, 0x28, 0x28, 0x28}},
//########################## MODE 4 HOUR HAND ####################	
   {{0x28, 0x28, 0x28, 0x27, 0x27, 0x27, 0x28, 0x28, 0x28},
	{0x28, 0x28, 0x28, 0x27, 0x27, 0x27, 0x28, 0x28, 0x28},
	{0x28, 0x28, 0x28, 0x00, 0x00, 0x00, 0x28, 0x28, 0x28}},
//########################## MODE 5 HOUR HAND ####################
   {{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x27, 0x27, 0x27, 0x28, 0x28},
	{0x28, 0x28, 0x27, 0x27, 0x00, 0x27, 0x27, 0x28, 0x28}}
};

