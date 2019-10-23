	.file	"main.c"
	.arch atmega128
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__tmp_reg__ = 0
__zero_reg__ = 1
	.global __do_copy_data
	.global __do_clear_bss
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.text
.Ltext0:
.global	g_rc_state
.global	g_rc_state
	.section .bss
	.type	g_rc_state, @object
	.size	g_rc_state, 1
g_rc_state:
	.skip 1,0
.global	g_hour_hand
	.section	.progmem.data,"a",@progbits
	.type	g_hour_hand, @object
	.size	g_hour_hand, 135
g_hour_hand:
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	0
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	0
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	0
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	0
	.byte	0
	.byte	0
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	0
	.byte	0
	.byte	0
	.byte	40
	.byte	40
	.byte	40
.global	g_minute_hand
	.type	g_minute_hand, @object
	.size	g_minute_hand, 135
g_minute_hand:
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	0
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	0
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	0
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	0
	.byte	0
	.byte	0
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	0
	.byte	0
	.byte	0
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
.global	g_second_hand
	.type	g_second_hand, @object
	.size	g_second_hand, 135
g_second_hand:
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	0
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	0
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	0
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	0
	.byte	0
	.byte	0
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	0
	.byte	0
	.byte	0
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	39
	.byte	39
	.byte	39
	.byte	40
	.byte	40
	.byte	40
.global	g_background
	.type	g_background, @object
	.size	g_background, 3600
g_background:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	39
	.byte	38
	.byte	37
	.byte	36
	.byte	35
	.byte	34
	.byte	33
	.byte	32
	.byte	31
	.byte	30
	.byte	29
	.byte	28
	.byte	27
	.byte	26
	.byte	25
	.byte	24
	.byte	23
	.byte	22
	.byte	21
	.byte	20
	.byte	19
	.byte	18
	.byte	17
	.byte	16
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	39
	.byte	38
	.byte	37
	.byte	36
	.byte	35
	.byte	34
	.byte	33
	.byte	32
	.byte	31
	.byte	30
	.byte	29
	.byte	28
	.byte	27
	.byte	26
	.byte	25
	.byte	24
	.byte	23
	.byte	22
	.byte	21
	.byte	20
	.byte	19
	.byte	18
	.byte	17
	.byte	16
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	39
	.byte	38
	.byte	37
	.byte	36
	.byte	35
	.byte	34
	.byte	33
	.byte	32
	.byte	31
	.byte	30
	.byte	29
	.byte	28
	.byte	27
	.byte	26
	.byte	25
	.byte	24
	.byte	23
	.byte	22
	.byte	21
	.byte	20
	.byte	19
	.byte	18
	.byte	17
	.byte	16
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	38
	.byte	37
	.byte	36
	.byte	35
	.byte	34
	.byte	33
	.byte	32
	.byte	31
	.byte	30
	.byte	29
	.byte	28
	.byte	27
	.byte	26
	.byte	25
	.byte	24
	.byte	23
	.byte	22
	.byte	21
	.byte	20
	.byte	19
	.byte	18
	.byte	17
	.byte	16
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	39
	.byte	38
	.byte	37
	.byte	36
	.byte	35
	.byte	34
	.byte	33
	.byte	32
	.byte	31
	.byte	30
	.byte	29
	.byte	28
	.byte	27
	.byte	26
	.byte	25
	.byte	24
	.byte	23
	.byte	22
	.byte	21
	.byte	20
	.byte	19
	.byte	18
	.byte	17
	.byte	16
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	38
	.byte	37
	.byte	36
	.byte	35
	.byte	34
	.byte	33
	.byte	32
	.byte	31
	.byte	30
	.byte	29
	.byte	28
	.byte	27
	.byte	26
	.byte	25
	.byte	24
	.byte	23
	.byte	22
	.byte	21
	.byte	20
	.byte	19
	.byte	18
	.byte	17
	.byte	16
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	38
	.byte	37
	.byte	36
	.byte	35
	.byte	34
	.byte	33
	.byte	32
	.byte	31
	.byte	30
	.byte	29
	.byte	28
	.byte	27
	.byte	26
	.byte	25
	.byte	24
	.byte	23
	.byte	22
	.byte	21
	.byte	20
	.byte	19
	.byte	18
	.byte	17
	.byte	16
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	38
	.byte	37
	.byte	36
	.byte	35
	.byte	34
	.byte	33
	.byte	32
	.byte	31
	.byte	30
	.byte	29
	.byte	28
	.byte	27
	.byte	26
	.byte	25
	.byte	24
	.byte	23
	.byte	22
	.byte	21
	.byte	20
	.byte	19
	.byte	18
	.byte	17
	.byte	16
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	38
	.byte	37
	.byte	36
	.byte	35
	.byte	34
	.byte	33
	.byte	32
	.byte	31
	.byte	30
	.byte	29
	.byte	28
	.byte	27
	.byte	26
	.byte	25
	.byte	24
	.byte	23
	.byte	22
	.byte	21
	.byte	20
	.byte	19
	.byte	18
	.byte	17
	.byte	16
	.byte	15
	.byte	14
	.byte	13
	.byte	12
	.byte	11
	.byte	10
	.byte	9
	.byte	8
	.byte	7
	.byte	6
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	36
	.byte	37
	.byte	38
	.byte	39
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.byte	39
	.byte	39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	39
	.text
.global	USART1_Init
	.type	USART1_Init, @function
USART1_Init:
.LFB15:
.LM1:
/* prologue: frame size=0 */
/* prologue end (size=0) */
	movw r18,r24
.LM2:
	mov r24,r19
	clr r25
	sts 152,r24
.LM3:
	sts 153,r18
.LM4:
	ldi r24,lo8(-104)
	sts 154,r24
.LM5:
	ldi r24,lo8(6)
	sts 157,r24
/* epilogue: frame size=0 */
	ret
/* epilogue end (size=1) */
/* function USART1_Init size 14 (13) */
.LFE15:
	.size	USART1_Init, .-USART1_Init
.global	USART1_Receive
	.type	USART1_Receive, @function
USART1_Receive:
.LFB16:
.LM6:
/* prologue: frame size=0 */
/* prologue end (size=0) */
.L3:
.LM7:
	lds r24,155
	tst r24
	brge .L3
.LM8:
	lds r24,156
.LM9:
	clr r25
/* epilogue: frame size=0 */
	ret
/* epilogue end (size=1) */
/* function USART1_Receive size 9 (8) */
.LFE16:
	.size	USART1_Receive, .-USART1_Receive
.global	USART1_Transmit
	.type	USART1_Transmit, @function
USART1_Transmit:
.LFB17:
.LM10:
/* prologue: frame size=0 */
/* prologue end (size=0) */
	mov r25,r24
.L7:
.LM11:
	lds r24,155
	sbrs r24,5
	rjmp .L7
.LM12:
	sts 156,r25
/* epilogue: frame size=0 */
	ret
/* epilogue end (size=1) */
/* function USART1_Transmit size 8 (7) */
.LFE17:
	.size	USART1_Transmit, .-USART1_Transmit
.global	send_str
	.type	send_str, @function
send_str:
.LFB18:
.LM13:
/* prologue: frame size=0 */
	push r28
	push r29
/* prologue end (size=2) */
	movw r28,r24
.LM14:
	ld r24,Y
	tst r24
	breq .L15
.L13:
.LM15:
	ld r24,Y+
	call USART1_Transmit
.LM16:
	ld r24,Y
	tst r24
	brne .L13
.L15:
/* epilogue: frame size=0 */
	pop r29
	pop r28
	ret
/* epilogue end (size=3) */
/* function send_str size 15 (10) */
.LFE18:
	.size	send_str, .-send_str
	.lcomm last_command.5,1
.global	rc_process_command
	.type	rc_process_command, @function
rc_process_command:
.LFB19:
.LM17:
/* prologue: frame size=0 */
	push r17
	push r28
	push r29
/* prologue end (size=3) */
	mov r25,r24
.LM18:
	lds r24,last_command.5
	cp r24,r25
	brne .L17
.LM19:
	lds r24,g_rc_hold_counter
	subi r24,lo8(-(1))
	sts g_rc_hold_counter,r24
.LM20:
	cpi r24,lo8(21)
	brlo .L19
.LM21:
	ldi r24,lo8(20)
	sts g_rc_hold_counter,r24
	rjmp .L19
.L17:
.LM22:
	sts g_rc_hold_counter,__zero_reg__
.L19:
.LM23:
	sts last_command.5,r25
.LM24:
	mov r24,r25
	clr r25
	andi r24,lo8(127)
	andi r25,hi8(127)
	cpi r24,13
	cpc r25,__zero_reg__
	breq .L24
	cpi r24,14
	cpc r25,__zero_reg__
	brge .L72
	sbiw r24,12
	breq .L21
	rjmp .L16
.L72:
	cpi r24,16
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L34
	sbiw r24,17
	brne .+2
	rjmp .L53
	rjmp .L16
.L21:
.LM25:
	lds r24,g_power_on
	cpi r24,lo8(1)
	brne .L22
.LM26:
	sts g_power_on,__zero_reg__
.LM27:
	cbi 59-0x20,0
	rjmp .L23
.L22:
.LM28:
	ldi r24,lo8(1)
	sts g_power_on,r24
.LM29:
	sbi 59-0x20,0
.L23:
.LM30:
	sts g_rc_state,__zero_reg__
	rjmp .L26
.L24:
.LM31:
	lds r24,g_power_on
	tst r24
	brne .+2
	rjmp .L34
.LM32:
	lds r24,g_rc_state
	clr r25
	sbiw r24,0
	breq .L27
	sbiw r24,1
	breq .L28
	rjmp .L26
.L27:
.LM33:
	ldi r24,lo8(1)
	sts g_rc_state,r24
.LM34:
	sts g_seconds,__zero_reg__
.LM35:
	lds r24,g_minutes
	lsr r24
	lsr r24
	clr r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	sts g_minutes,r24
.LM36:
	rjmp .L26
.L28:
.LM37:
	sts g_rc_state,__zero_reg__
.LM38:
	sts g_data_rtc,__zero_reg__
.LM39:
	lds r24,g_minutes
	lsr r24
	lsr r24
	sts g_data_rtc+1,r24
.LM40:
	lds r24,g_hours
	ldi r22,lo8(20)
	call __udivmodqi4
	sts g_data_rtc+2,r24
.LM41:
	tst r24
	brne .L29
.LM42:
	ldi r24,lo8(12)
	sts g_data_rtc+2,r24
.L29:
	ldi r28,lo8(g_data_rtc)
	ldi r29,hi8(g_data_rtc)
	ldi r17,lo8(2)
.L33:
.LM43:
	ld r24,Y
	call DECtoBCD
	st Y+,r24
.LM44:
	subi r17,lo8(-(-1))
	sbrs r17,7
	rjmp .L33
.LM45:
	lds r24,g_data_rtc+2
	ori r24,lo8(32)
	sts g_data_rtc+2,r24
.LM46:
	ldi r20,lo8(7)
	ldi r22,lo8(g_data_rtc)
	ldi r23,hi8(g_data_rtc)
	ldi r24,lo8(0)
	call WriteBufI2C
.L26:
.LM47:
	in r24,89-0x20
	andi r24,lo8(-33)
	out 89-0x20,r24
.LM48:
	rjmp .L16
.L34:
.LM49:
	lds r24,g_power_on
	tst r24
	brne .+2
	rjmp .L16
.LM50:
	lds r24,g_rc_state
	clr r25
	sbiw r24,0
	breq .L37
	sbiw r24,1
	breq .L40
	rjmp .L16
.L37:
.LM51:
	lds r24,g_mode
	cpi r24,lo8(4)
	brne .L38
.LM52:
	sts g_mode,__zero_reg__
	rjmp .L16
.L38:
.LM53:
	subi r24,lo8(-(1))
	rjmp .L76
.L40:
.LM54:
	lds r24,g_rc_hold_counter
	lds r18,g_minutes
	cpi r24,lo8(20)
	brsh .L41
.LM55:
	mov r24,r18
	subi r24,lo8(-(4))
	sts g_minutes,r24
.LM56:
	cpi r24,lo8(-16)
	brne .L42
.LM57:
	sts g_minutes,__zero_reg__
.L42:
.LM58:
	lds r24,g_minutes
	ldi r22,lo8(12)
	call __udivmodqi4
	tst r25
	breq .+2
	rjmp .L16
.LM59:
	lds r24,g_hours
	subi r24,lo8(-(1))
	sts g_hours,r24
.LM60:
	cpi r24,lo8(-16)
	breq .+2
	rjmp .L16
	rjmp .L77
.L41:
.LM61:
	mov r24,r18
	ldi r22,lo8(24)
	call __udivmodqi4
	tst r25
	breq .L46
.LM62:
	mov r24,r18
	subi r24,lo8(-(4))
	sts g_minutes,r24
.LM63:
	cpi r24,lo8(-16)
	brne .L47
.LM64:
	sts g_minutes,__zero_reg__
.L47:
.LM65:
	lds r24,g_minutes
	ldi r22,lo8(12)
	call __udivmodqi4
	tst r25
	breq .+2
	rjmp .L16
.LM66:
	lds r24,g_hours
	subi r24,lo8(-(1))
	sts g_hours,r24
.LM67:
	cpi r24,lo8(-16)
	breq .+2
	rjmp .L16
	rjmp .L77
.L46:
.LM68:
	mov r24,r18
	subi r24,lo8(-(24))
	sts g_minutes,r24
.LM69:
	cpi r24,lo8(-16)
	brne .L51
.LM70:
	sts g_minutes,r25
.L51:
.LM71:
	lds r24,g_hours
	subi r24,lo8(-(2))
	sts g_hours,r24
.LM72:
	cpi r24,lo8(-16)
	breq .+2
	rjmp .L16
.L77:
.LM73:
	sts g_hours,r25
.LM74:
	rjmp .L16
.L53:
.LM75:
	lds r24,g_power_on
	tst r24
	brne .+2
	rjmp .L16
.LM76:
	lds r24,g_rc_state
	clr r25
	sbiw r24,0
	breq .L56
	sbiw r24,1
	breq .L59
	rjmp .L16
.L56:
.LM77:
	lds r24,g_mode
	tst r24
	brne .L57
.LM78:
	ldi r24,lo8(4)
	rjmp .L76
.L57:
.LM79:
	subi r24,lo8(-(-1))
.L76:
	sts g_mode,r24
.LM80:
	rjmp .L16
.L59:
.LM81:
	lds r24,g_rc_hold_counter
	lds r18,g_minutes
	cpi r24,lo8(20)
	brsh .L60
.LM82:
	tst r18
	brne .L61
.LM83:
	ldi r24,lo8(-16)
	sts g_minutes,r24
.L61:
.LM84:
	lds r24,g_minutes
	subi r24,lo8(-(-4))
	sts g_minutes,r24
.LM85:
	ldi r22,lo8(12)
	call __udivmodqi4
	tst r25
	brne .L16
	rjmp .L79
.L60:
.LM86:
	mov r24,r18
	ldi r22,lo8(24)
	call __udivmodqi4
	tst r25
	breq .L65
.LM87:
	tst r18
	brne .L66
.LM88:
	ldi r24,lo8(-16)
	sts g_minutes,r24
.L66:
.LM89:
	lds r24,g_minutes
	subi r24,lo8(-(-4))
	sts g_minutes,r24
.LM90:
	ldi r22,lo8(12)
	call __udivmodqi4
	tst r25
	brne .L16
.L79:
.LM91:
	lds r24,g_hours
	tst r24
	brne .L68
.LM92:
	ldi r24,lo8(-16)
	sts g_hours,r24
.L68:
.LM93:
	lds r24,g_hours
	subi r24,lo8(-(-1))
	rjmp .L75
.L65:
.LM94:
	tst r18
	brne .L70
.LM95:
	ldi r24,lo8(-16)
	sts g_minutes,r24
.L70:
.LM96:
	lds r24,g_minutes
	subi r24,lo8(-(-24))
	sts g_minutes,r24
.LM97:
	lds r24,g_hours
	tst r24
	brne .L71
.LM98:
	ldi r24,lo8(-16)
	sts g_hours,r24
.L71:
.LM99:
	lds r24,g_hours
	subi r24,lo8(-(-2))
.L75:
	sts g_hours,r24
.L16:
/* epilogue: frame size=0 */
	pop r29
	pop r28
	pop r17
	ret
/* epilogue end (size=4) */
/* function rc_process_command size 347 (340) */
.LFE19:
	.size	rc_process_command, .-rc_process_command
.global	__vector_30
	.type	__vector_30, @function
__vector_30:
.LFB20:
.LM100:
/* prologue: frame size=0 */
	push __zero_reg__
	push __tmp_reg__
	in __tmp_reg__,__SREG__
	push __tmp_reg__
	clr __zero_reg__
	push r18
	push r24
	push r25
	push r30
	push r31
/* prologue end (size=10) */
.LM101:
	lds r25,g_uart_counter
	mov r30,r25
	clr r31
	subi r30,lo8(-(g_uart_buffer))
	sbci r31,hi8(-(g_uart_buffer))
	lds r24,156
	st Z,r24
.LM102:
	mov r24,r25
	subi r24,lo8(-(1))
	sts g_uart_counter,r24
.LM103:
	cpi r24,lo8(5)
	brne .L80
.LM104:
	lds r24,g_uart_buffer
	cpi r24,lo8(82)
	brne .L80
	lds r24,g_uart_buffer+1
	cpi r24,lo8(69)
	brne .L80
	lds r24,g_uart_buffer+2
	cpi r24,lo8(83)
	brne .L80
	lds r24,g_uart_buffer+3
	cpi r24,lo8(69)
	brne .L80
	lds r24,g_uart_buffer+4
	cpi r24,lo8(84)
	brne .L80
.LM105:
	ldi r24,lo8(24)
	ldi r25,hi8(24)
	ldi r18,lo8(11)
/* #APP */
	in __tmp_reg__,__SREG__
	cli
	wdr
	out 33,r24
	out __SREG__,__tmp_reg__
	out 33,r18
/* #NOAPP */
.L83:
.LM106:
	rjmp .L83
.L80:
/* epilogue: frame size=0 */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r18
	pop __tmp_reg__
	out __SREG__,__tmp_reg__
	pop __tmp_reg__
	pop __zero_reg__
	reti
/* epilogue end (size=10) */
/* function __vector_30 size 71 (51) */
.LFE20:
	.size	__vector_30, .-__vector_30
.global	__vector_25
	.type	__vector_25, @function
__vector_25:
.LFB21:
.LM107:
/* prologue: frame size=0 */
	push __zero_reg__
	push __tmp_reg__
	in __tmp_reg__,__SREG__
	push __tmp_reg__
	clr __zero_reg__
	push r18
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
/* prologue end (size=13) */
.LM108:
	sts (136)+1,__zero_reg__
	sts 136,__zero_reg__
.LM109:
	lds r24,128
	lds r25,(128)+1
	subi r24,lo8(-30535)
	sbci r25,hi8(-30535)
	brsh .L87
.LM110:
	lds r24,124
	sbrs r24,2
	rjmp .L86
.L87:
.LM111:
	lds r24,124
	ori r24,lo8(4)
	sts 124,r24
.LM112:
	ldi r24,lo8(39)
	ldi r25,hi8(39)
	out (74)+1-0x20,r25
	out 74-0x20,r24
.LM113:
	out (72)+1-0x20,r25
	out 72-0x20,r24
.LM114:
	sts (120)+1,r25
	sts 120,r24
.LM115:
	rjmp .L85
.L86:
.LM116:
	lds r24,128
	lds r25,(128)+1
	ldi r22,lo8(240)
	ldi r23,hi8(240)
	call __udivmodhi4
	out 81-0x20,r22
.LM117:
	lds r24,128
	lds r25,(128)+1
	mov r18,r24
	in r25,81-0x20
	ldi r24,lo8(-16)
	mul r25,r24
	movw r24,r0
	clr r1
	sub r18,r24
	sts g_reminder,r18
.LM118:
	ldi r24,lo8(120)
	sts g_pos,r24
.LM119:
	in r24,81-0x20
	subi r24,lo8(-(-2))
	out 82-0x20,r24
.LM120:
	in r24,87-0x20
	ori r24,lo8(2)
	out 87-0x20,r24
.L85:
/* epilogue: frame size=0 */
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r18
	pop __tmp_reg__
	out __SREG__,__tmp_reg__
	pop __tmp_reg__
	pop __zero_reg__
	reti
/* epilogue end (size=13) */
/* function __vector_25 size 89 (63) */
.LFE21:
	.size	__vector_25, .-__vector_25
.global	__vector_15
	.type	__vector_15, @function
__vector_15:
.LFB22:
.LM121:
/* prologue: frame size=0 */
	push __zero_reg__
	push __tmp_reg__
	in __tmp_reg__,__SREG__
	push __tmp_reg__
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r30
	push r31
/* prologue end (size=15) */
.LM122:
	lds r25,g_pos
	cpi r25,lo8(119)
	brne .L89
.LM123:
	in r24,87-0x20
	andi r24,lo8(-3)
	out 87-0x20,r24
.L89:
.LM124:
	lds r21,g_reminder
	tst r21
	brne .L90
.LM125:
	in r24,81-0x20
	subi r24,lo8(-(-1))
	out 81-0x20,r24
.L90:
.LM126:
	cpi r25,lo8(-16)
	brne .L91
.LM127:
	sts g_pos,__zero_reg__
.L91:
.LM128:
	lds r22,g_rc_state
	cpi r22,lo8(1)
	brne .+2
	rjmp .L175
.LM129:
	lds r24,g_pos
	mov r18,r24
	clr r19
	lds r24,g_seconds
	sub r18,r24
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L102
	cp __zero_reg__,r18
	cpc __zero_reg__,r19
	brlt .L111
	ldi r23,hi8(-236)
	cpi r18,lo8(-236)
	cpc r19,r23
	brne .+2
	rjmp .L110
	ldi r24,hi8(-235)
	cpi r18,lo8(-235)
	cpc r19,r24
	brge .L112
	ldi r30,hi8(-238)
	cpi r18,lo8(-238)
	cpc r19,r30
	brne .+2
	rjmp .L106
	ldi r31,hi8(-237)
	cpi r18,lo8(-237)
	cpc r19,r31
	brlt .+2
	rjmp .L108
	subi r18,lo8(-239)
	sbci r19,hi8(-239)
	brne .+2
	rjmp .L104
	rjmp .L175
.L112:
	ldi r24,hi8(-3)
	cpi r18,lo8(-3)
	cpc r19,r24
	brne .+2
	rjmp .L97
	ldi r30,hi8(-2)
	cpi r18,lo8(-2)
	cpc r19,r30
	brge .L113
	subi r18,lo8(-4)
	sbci r19,hi8(-4)
	breq .L95
	rjmp .L175
.L113:
	ldi r23,hi8(-2)
	cpi r18,lo8(-2)
	cpc r19,r23
	brne .+2
	rjmp .L99
	subi r18,lo8(-1)
	sbci r19,hi8(-1)
	brne .+2
	rjmp .L101
	rjmp .L175
.L111:
	cpi r18,4
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L110
	cpi r18,5
	cpc r19,__zero_reg__
	brge .L114
	cpi r18,2
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L106
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .+2
	rjmp .L108
	rjmp .L104
.L114:
	cpi r18,237
	cpc r19,__zero_reg__
	breq .L97
	cpi r18,238
	cpc r19,__zero_reg__
	brge .L115
	cpi r18,236
	cpc r19,__zero_reg__
	breq .L95
	rjmp .L175
.L115:
	cpi r18,238
	cpc r19,__zero_reg__
	breq .L99
	cpi r18,239
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L101
	rjmp .L175
.L95:
.LBB2:
.LM130:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_second_hand))
	sbci r31,hi8(-(g_second_hand))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE2:
.LBB3:
.LM131:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+9))
	sbci r31,hi8(-(g_second_hand+9))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE3:
.LBB4:
.LM132:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+18))
	sbci r31,hi8(-(g_second_hand+18))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE4:
.LM133:
	rjmp .L92
.L97:
.LBB5:
.LM134:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_second_hand+1))
	sbci r31,hi8(-(g_second_hand+1))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE5:
.LBB6:
.LM135:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+10))
	sbci r31,hi8(-(g_second_hand+10))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE6:
.LBB7:
.LM136:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+19))
	sbci r31,hi8(-(g_second_hand+19))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE7:
.LM137:
	rjmp .L92
.L99:
.LBB8:
.LM138:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_second_hand+2))
	sbci r31,hi8(-(g_second_hand+2))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE8:
.LBB9:
.LM139:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+11))
	sbci r31,hi8(-(g_second_hand+11))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE9:
.LBB10:
.LM140:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+20))
	sbci r31,hi8(-(g_second_hand+20))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE10:
.LM141:
	rjmp .L92
.L101:
.LBB11:
.LM142:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_second_hand+3))
	sbci r31,hi8(-(g_second_hand+3))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE11:
.LBB12:
.LM143:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+12))
	sbci r31,hi8(-(g_second_hand+12))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE12:
.LBB13:
.LM144:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+21))
	sbci r31,hi8(-(g_second_hand+21))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE13:
.LM145:
	rjmp .L92
.L102:
.LBB14:
.LM146:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_second_hand+4))
	sbci r31,hi8(-(g_second_hand+4))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE14:
.LBB15:
.LM147:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+13))
	sbci r31,hi8(-(g_second_hand+13))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE15:
.LBB16:
.LM148:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+22))
	sbci r31,hi8(-(g_second_hand+22))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE16:
.LM149:
	rjmp .L92
.L104:
.LBB17:
.LM150:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_second_hand+5))
	sbci r31,hi8(-(g_second_hand+5))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE17:
.LBB18:
.LM151:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+14))
	sbci r31,hi8(-(g_second_hand+14))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE18:
.LBB19:
.LM152:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+23))
	sbci r31,hi8(-(g_second_hand+23))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE19:
.LM153:
	rjmp .L92
.L106:
.LBB20:
.LM154:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_second_hand+6))
	sbci r31,hi8(-(g_second_hand+6))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE20:
.LBB21:
.LM155:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+15))
	sbci r31,hi8(-(g_second_hand+15))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE21:
.LBB22:
.LM156:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+24))
	sbci r31,hi8(-(g_second_hand+24))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE22:
.LM157:
	rjmp .L92
.L108:
.LBB23:
.LM158:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_second_hand+7))
	sbci r31,hi8(-(g_second_hand+7))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE23:
.LBB24:
.LM159:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+16))
	sbci r31,hi8(-(g_second_hand+16))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE24:
.LBB25:
.LM160:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+25))
	sbci r31,hi8(-(g_second_hand+25))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE25:
.LM161:
	rjmp .L92
.L110:
.LBB26:
.LM162:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_second_hand+8))
	sbci r31,hi8(-(g_second_hand+8))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE26:
.LBB27:
.LM163:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+17))
	sbci r31,hi8(-(g_second_hand+17))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE27:
.LBB28:
.LM164:
	movw r30,r24
	subi r30,lo8(-(g_second_hand+26))
	sbci r31,hi8(-(g_second_hand+26))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.L92:
.LBE28:
.LM165:
	cpi r20,lo8(40)
	breq .+2
	rjmp .L116
	cpi r19,lo8(40)
	breq .+2
	rjmp .L176
	cpi r18,lo8(40)
	breq .+2
	rjmp .L177
.L175:
.LM166:
	lds r24,g_pos
	mov r18,r24
	clr r19
	lds r24,g_minutes
	sub r18,r24
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L126
	cp __zero_reg__,r18
	cpc __zero_reg__,r19
	brlt .L135
	ldi r30,hi8(-236)
	cpi r18,lo8(-236)
	cpc r19,r30
	brne .+2
	rjmp .L134
	ldi r31,hi8(-235)
	cpi r18,lo8(-235)
	cpc r19,r31
	brge .L136
	ldi r23,hi8(-238)
	cpi r18,lo8(-238)
	cpc r19,r23
	brne .+2
	rjmp .L130
	ldi r24,hi8(-237)
	cpi r18,lo8(-237)
	cpc r19,r24
	brlt .+2
	rjmp .L132
	subi r18,lo8(-239)
	sbci r19,hi8(-239)
	brne .+2
	rjmp .L128
	rjmp .L178
.L136:
	ldi r31,hi8(-3)
	cpi r18,lo8(-3)
	cpc r19,r31
	brne .+2
	rjmp .L121
	ldi r23,hi8(-2)
	cpi r18,lo8(-2)
	cpc r19,r23
	brge .L137
	subi r18,lo8(-4)
	sbci r19,hi8(-4)
	breq .L119
	rjmp .L178
.L137:
	ldi r30,hi8(-2)
	cpi r18,lo8(-2)
	cpc r19,r30
	brne .+2
	rjmp .L123
	subi r18,lo8(-1)
	sbci r19,hi8(-1)
	brne .+2
	rjmp .L125
	rjmp .L178
.L135:
	cpi r18,4
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L134
	cpi r18,5
	cpc r19,__zero_reg__
	brge .L138
	cpi r18,2
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L130
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .+2
	rjmp .L132
	rjmp .L128
.L138:
	cpi r18,237
	cpc r19,__zero_reg__
	breq .L121
	cpi r18,238
	cpc r19,__zero_reg__
	brge .L139
	cpi r18,236
	cpc r19,__zero_reg__
	breq .L119
	rjmp .L178
.L139:
	cpi r18,238
	cpc r19,__zero_reg__
	breq .L123
	cpi r18,239
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L125
	rjmp .L178
.L119:
.LBB29:
.LM167:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_minute_hand))
	sbci r31,hi8(-(g_minute_hand))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE29:
.LBB30:
.LM168:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+9))
	sbci r31,hi8(-(g_minute_hand+9))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE30:
.LBB31:
.LM169:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+18))
	sbci r31,hi8(-(g_minute_hand+18))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE31:
.LM170:
	rjmp .L116
.L121:
.LBB32:
.LM171:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+1))
	sbci r31,hi8(-(g_minute_hand+1))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE32:
.LBB33:
.LM172:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+10))
	sbci r31,hi8(-(g_minute_hand+10))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE33:
.LBB34:
.LM173:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+19))
	sbci r31,hi8(-(g_minute_hand+19))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE34:
.LM174:
	rjmp .L116
.L123:
.LBB35:
.LM175:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+2))
	sbci r31,hi8(-(g_minute_hand+2))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE35:
.LBB36:
.LM176:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+11))
	sbci r31,hi8(-(g_minute_hand+11))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE36:
.LBB37:
.LM177:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+20))
	sbci r31,hi8(-(g_minute_hand+20))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE37:
.LM178:
	rjmp .L116
.L125:
.LBB38:
.LM179:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+3))
	sbci r31,hi8(-(g_minute_hand+3))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE38:
.LBB39:
.LM180:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+12))
	sbci r31,hi8(-(g_minute_hand+12))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE39:
.LBB40:
.LM181:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+21))
	sbci r31,hi8(-(g_minute_hand+21))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE40:
.LM182:
	rjmp .L116
.L126:
.LBB41:
.LM183:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+4))
	sbci r31,hi8(-(g_minute_hand+4))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE41:
.LBB42:
.LM184:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+13))
	sbci r31,hi8(-(g_minute_hand+13))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE42:
.LBB43:
.LM185:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+22))
	sbci r31,hi8(-(g_minute_hand+22))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE43:
.LM186:
	rjmp .L116
.L128:
.LBB44:
.LM187:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+5))
	sbci r31,hi8(-(g_minute_hand+5))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE44:
.LBB45:
.LM188:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+14))
	sbci r31,hi8(-(g_minute_hand+14))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE45:
.LBB46:
.LM189:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+23))
	sbci r31,hi8(-(g_minute_hand+23))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE46:
.LM190:
	rjmp .L116
.L130:
.LBB47:
.LM191:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+6))
	sbci r31,hi8(-(g_minute_hand+6))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE47:
.LBB48:
.LM192:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+15))
	sbci r31,hi8(-(g_minute_hand+15))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE48:
.LBB49:
.LM193:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+24))
	sbci r31,hi8(-(g_minute_hand+24))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE49:
.LM194:
	rjmp .L116
.L132:
.LBB50:
.LM195:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+7))
	sbci r31,hi8(-(g_minute_hand+7))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE50:
.LBB51:
.LM196:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+16))
	sbci r31,hi8(-(g_minute_hand+16))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE51:
.LBB52:
.LM197:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+25))
	sbci r31,hi8(-(g_minute_hand+25))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE52:
.LM198:
	rjmp .L116
.L134:
.LBB53:
.LM199:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+8))
	sbci r31,hi8(-(g_minute_hand+8))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE53:
.LBB54:
.LM200:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+17))
	sbci r31,hi8(-(g_minute_hand+17))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE54:
.LBB55:
.LM201:
	movw r30,r24
	subi r30,lo8(-(g_minute_hand+26))
	sbci r31,hi8(-(g_minute_hand+26))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.L116:
.LBE55:
.LM202:
	cpi r20,lo8(40)
	breq .+2
	rjmp .L140
.L176:
	cpi r19,lo8(40)
	breq .+2
	rjmp .L179
.L177:
	cpi r18,lo8(40)
	breq .+2
	rjmp .L180
.L178:
.LM203:
	lds r24,g_pos
	mov r18,r24
	clr r19
	lds r24,g_hours
	sub r18,r24
	sbc r19,__zero_reg__
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L150
	cp __zero_reg__,r18
	cpc __zero_reg__,r19
	brlt .L159
	ldi r23,hi8(-236)
	cpi r18,lo8(-236)
	cpc r19,r23
	brne .+2
	rjmp .L158
	ldi r24,hi8(-235)
	cpi r18,lo8(-235)
	cpc r19,r24
	brge .L160
	ldi r30,hi8(-238)
	cpi r18,lo8(-238)
	cpc r19,r30
	brne .+2
	rjmp .L154
	ldi r31,hi8(-237)
	cpi r18,lo8(-237)
	cpc r19,r31
	brlt .+2
	rjmp .L156
	subi r18,lo8(-239)
	sbci r19,hi8(-239)
	brne .+2
	rjmp .L152
	rjmp .L164
.L160:
	ldi r24,hi8(-3)
	cpi r18,lo8(-3)
	cpc r19,r24
	brne .+2
	rjmp .L145
	ldi r30,hi8(-2)
	cpi r18,lo8(-2)
	cpc r19,r30
	brge .L161
	subi r18,lo8(-4)
	sbci r19,hi8(-4)
	breq .L143
	rjmp .L164
.L161:
	ldi r23,hi8(-2)
	cpi r18,lo8(-2)
	cpc r19,r23
	brne .+2
	rjmp .L147
	subi r18,lo8(-1)
	sbci r19,hi8(-1)
	brne .+2
	rjmp .L149
	rjmp .L164
.L159:
	cpi r18,4
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L158
	cpi r18,5
	cpc r19,__zero_reg__
	brge .L162
	cpi r18,2
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L154
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .+2
	rjmp .L156
	rjmp .L152
.L162:
	cpi r18,237
	cpc r19,__zero_reg__
	breq .L145
	cpi r18,238
	cpc r19,__zero_reg__
	brge .L163
	cpi r18,236
	cpc r19,__zero_reg__
	breq .L143
	rjmp .L164
.L163:
	cpi r18,238
	cpc r19,__zero_reg__
	breq .L147
	cpi r18,239
	cpc r19,__zero_reg__
	brne .+2
	rjmp .L149
	rjmp .L164
.L143:
.LBB56:
.LM204:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_hour_hand))
	sbci r31,hi8(-(g_hour_hand))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE56:
.LBB57:
.LM205:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+9))
	sbci r31,hi8(-(g_hour_hand+9))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE57:
.LBB58:
.LM206:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+18))
	sbci r31,hi8(-(g_hour_hand+18))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE58:
.LM207:
	rjmp .L140
.L145:
.LBB59:
.LM208:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+1))
	sbci r31,hi8(-(g_hour_hand+1))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE59:
.LBB60:
.LM209:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+10))
	sbci r31,hi8(-(g_hour_hand+10))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE60:
.LBB61:
.LM210:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+19))
	sbci r31,hi8(-(g_hour_hand+19))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE61:
.LM211:
	rjmp .L140
.L147:
.LBB62:
.LM212:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+2))
	sbci r31,hi8(-(g_hour_hand+2))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE62:
.LBB63:
.LM213:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+11))
	sbci r31,hi8(-(g_hour_hand+11))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE63:
.LBB64:
.LM214:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+20))
	sbci r31,hi8(-(g_hour_hand+20))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE64:
.LM215:
	rjmp .L140
.L149:
.LBB65:
.LM216:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+3))
	sbci r31,hi8(-(g_hour_hand+3))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE65:
.LBB66:
.LM217:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+12))
	sbci r31,hi8(-(g_hour_hand+12))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE66:
.LBB67:
.LM218:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+21))
	sbci r31,hi8(-(g_hour_hand+21))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE67:
.LM219:
	rjmp .L140
.L150:
.LBB68:
.LM220:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+4))
	sbci r31,hi8(-(g_hour_hand+4))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE68:
.LBB69:
.LM221:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+13))
	sbci r31,hi8(-(g_hour_hand+13))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE69:
.LBB70:
.LM222:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+22))
	sbci r31,hi8(-(g_hour_hand+22))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE70:
.LM223:
	rjmp .L140
.L152:
.LBB71:
.LM224:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+5))
	sbci r31,hi8(-(g_hour_hand+5))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE71:
.LBB72:
.LM225:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+14))
	sbci r31,hi8(-(g_hour_hand+14))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE72:
.LBB73:
.LM226:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+23))
	sbci r31,hi8(-(g_hour_hand+23))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE73:
.LM227:
	rjmp .L140
.L154:
.LBB74:
.LM228:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+6))
	sbci r31,hi8(-(g_hour_hand+6))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE74:
.LBB75:
.LM229:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+15))
	sbci r31,hi8(-(g_hour_hand+15))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE75:
.LBB76:
.LM230:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+24))
	sbci r31,hi8(-(g_hour_hand+24))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE76:
.LM231:
	rjmp .L140
.L156:
.LBB77:
.LM232:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+7))
	sbci r31,hi8(-(g_hour_hand+7))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE77:
.LBB78:
.LM233:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+16))
	sbci r31,hi8(-(g_hour_hand+16))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE78:
.LBB79:
.LM234:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+25))
	sbci r31,hi8(-(g_hour_hand+25))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE79:
.LM235:
	rjmp .L140
.L158:
.LBB80:
.LM236:
	lds r25,g_mode
	ldi r24,lo8(27)
	mul r25,r24
	movw r24,r0
	clr r1
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+8))
	sbci r31,hi8(-(g_hour_hand+8))
/* #APP */
	lpm r20, Z
	
/* #NOAPP */
.LBE80:
.LBB81:
.LM237:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+17))
	sbci r31,hi8(-(g_hour_hand+17))
/* #APP */
	lpm r19, Z
	
/* #NOAPP */
.LBE81:
.LBB82:
.LM238:
	movw r30,r24
	subi r30,lo8(-(g_hour_hand+26))
	sbci r31,hi8(-(g_hour_hand+26))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.L140:
.LBE82:
.LM239:
	cpi r20,lo8(40)
	brne .L165
.L179:
	cpi r19,lo8(40)
	brne .L165
.L180:
	cpi r18,lo8(40)
	brne .+2
	rjmp .L164
.L165:
.LM240:
	cpi r22,lo8(1)
	brne .L166
.LM241:
	lds r24,g_timer2_ovf
	sbrc r24,1
	rjmp .L166
.LM242:
	lds r24,g_rc_hold_counter
	tst r24
	brne .L166
.LBB83:
.LM243:
	lds r24,g_mode
	mov r18,r24
	clr r19
	ldi r24,lo8(720)
	ldi r25,hi8(720)
	mul r18,r24
	movw r30,r0
	mul r18,r25
	add r31,r0
	mul r19,r24
	add r31,r0
	clr r1
	movw r24,r30
	lds r18,g_pos
	add r24,r18
	adc r25,__zero_reg__
	movw r30,r24
	subi r30,lo8(-(g_background))
	sbci r31,hi8(-(g_background))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE83:
	clr r19
	out (74)+1-0x20,r19
	out 74-0x20,r18
.LBB84:
.LM244:
	movw r30,r24
	subi r30,lo8(-(g_background+240))
	sbci r31,hi8(-(g_background+240))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE84:
	clr r19
	out (72)+1-0x20,r19
	out 72-0x20,r18
.LBB85:
.LM245:
	subi r24,lo8(-(g_background+480))
	sbci r25,hi8(-(g_background+480))
	movw r30,r24
/* #APP */
	lpm r24, Z
	
/* #NOAPP */
	rjmp .L183
.L166:
.LBE85:
.LM246:
	mov r24,r20
	clr r25
	out (74)+1-0x20,r25
	out 74-0x20,r24
.LM247:
	mov r24,r19
	clr r25
	out (72)+1-0x20,r25
	out 72-0x20,r24
.LM248:
	mov r24,r18
	clr r25
	rjmp .L181
.L164:
.LBB86:
.LM249:
	lds r24,g_mode
	mov r18,r24
	clr r19
	ldi r24,lo8(720)
	ldi r25,hi8(720)
	mul r18,r24
	movw r22,r0
	mul r18,r25
	add r23,r0
	mul r19,r24
	add r23,r0
	clr r1
	movw r24,r22
	lds r18,g_pos
	add r24,r18
	adc r25,__zero_reg__
	movw r30,r24
	subi r30,lo8(-(g_background))
	sbci r31,hi8(-(g_background))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE86:
	clr r19
	out (74)+1-0x20,r19
	out 74-0x20,r18
.LBB87:
.LM250:
	movw r30,r24
	subi r30,lo8(-(g_background+240))
	sbci r31,hi8(-(g_background+240))
/* #APP */
	lpm r18, Z
	
/* #NOAPP */
.LBE87:
	clr r19
	out (72)+1-0x20,r19
	out 72-0x20,r18
.LBB88:
.LM251:
	subi r24,lo8(-(g_background+480))
	sbci r25,hi8(-(g_background+480))
	movw r30,r24
/* #APP */
	lpm r24, Z
	
/* #NOAPP */
.L183:
.LBE88:
	clr r25
.L181:
	sts (120)+1,r25
	sts 120,r24
.LM252:
	lds r24,g_pos
	subi r24,lo8(-(1))
	sts g_pos,r24
.LM253:
	subi r21,lo8(-(-1))
	sts g_reminder,r21
/* epilogue: frame size=0 */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop __tmp_reg__
	out __SREG__,__tmp_reg__
	pop __tmp_reg__
	pop __zero_reg__
	reti
/* epilogue end (size=15) */
/* function __vector_15 size 1253 (1223) */
.LFE22:
	.size	__vector_15, .-__vector_15
.global	__vector_10
	.type	__vector_10, @function
__vector_10:
.LFB23:
.LM254:
/* prologue: frame size=0 */
	push __zero_reg__
	push __tmp_reg__
	in __tmp_reg__,__SREG__
	push __tmp_reg__
	clr __zero_reg__
	push r22
	push r23
	push r24
	push r25
/* prologue end (size=9) */
.LM255:
	lds r24,g_timer2_ovf
	subi r24,lo8(-(1))
	sts g_timer2_ovf,r24
.LM256:
	cpi r24,lo8(4)
	breq .+2
	rjmp .L184
.LM257:
	sts g_uart_counter,__zero_reg__
.LM258:
	sts g_timer2_ovf,__zero_reg__
.LM259:
	lds r24,g_rc_idle_counter
	subi r24,lo8(-(1))
	sts g_rc_idle_counter,r24
.LM260:
	cpi r24,lo8(4)
	brne .L186
.LM261:
	sts g_rc_bit_counter,__zero_reg__
.LM262:
	sts g_rc_idle_counter,__zero_reg__
.LM263:
	in r24,89-0x20
	ori r24,lo8(32)
	out 89-0x20,r24
.LM264:
	sts g_rc_hold_counter,__zero_reg__
.L186:
.LM265:
	lds r24,g_rc_state
	cpi r24,lo8(1)
	breq .L184
.LM266:
	lds r24,g_seconds
	subi r24,lo8(-(1))
	sts g_seconds,r24
.LM267:
	cpi r24,lo8(-16)
	brne .L188
.LM268:
	sts g_seconds,__zero_reg__
.L188:
.LM269:
	lds r24,g_seconds
	ldi r22,lo8(60)
	call __udivmodqi4
	tst r25
	brne .L184
.LM270:
	lds r24,g_minutes
	subi r24,lo8(-(1))
	sts g_minutes,r24
.LM271:
	cpi r24,lo8(-16)
	brne .L190
.LM272:
	sts g_minutes,r25
.L190:
.LM273:
	lds r24,g_minutes
	ldi r22,lo8(12)
	call __udivmodqi4
	tst r25
	brne .L184
.LM274:
	lds r24,g_hours
	subi r24,lo8(-(1))
	sts g_hours,r24
.LM275:
	cpi r24,lo8(-16)
	brne .L184
.LM276:
	sts g_hours,r25
.L184:
/* epilogue: frame size=0 */
	pop r25
	pop r24
	pop r23
	pop r22
	pop __tmp_reg__
	out __SREG__,__tmp_reg__
	pop __tmp_reg__
	pop __zero_reg__
	reti
/* epilogue end (size=9) */
/* function __vector_10 size 91 (73) */
.LFE23:
	.size	__vector_10, .-__vector_10
	.lcomm timer2_buf_a.0,1
	.lcomm timer2_buf_b.1,1
	.lcomm timer2_ovf_buf.2,1
	.lcomm data_buf.3,2
	.lcomm edge_position.4,1
.global	__vector_6
	.type	__vector_6, @function
__vector_6:
.LFB24:
.LM277:
/* prologue: frame size=0 */
	push __zero_reg__
	push __tmp_reg__
	in __tmp_reg__,__SREG__
	push __tmp_reg__
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue end (size=17) */
.LM278:
	sts g_rc_idle_counter,__zero_reg__
.LM279:
	lds r18,g_rc_bit_counter
	lds r21,g_timer2_ovf
	tst r18
	brne .L194
.LM280:
	in r24,68-0x20
	sts timer2_buf_a.0,r24
.LM281:
	sts timer2_ovf_buf.2,r21
.LM282:
	sbis 33-0x20,5
	rjmp .L195
.LM283:
	sts (data_buf.3)+1,__zero_reg__
	sts data_buf.3,__zero_reg__
	rjmp .L193
.L195:
.LM284:
	ldi r24,lo8(-32768)
	ldi r25,hi8(-32768)
	sts (data_buf.3)+1,r25
	sts data_buf.3,r24
.LM285:
	ldi r24,lo8(1)
	sts g_rc_bit_counter,r24
.LM286:
	sts edge_position.4,r24
	rjmp .L193
.L194:
.LM287:
	in r25,68-0x20
	sts timer2_buf_b.1,r25
.LM288:
	lds r24,timer2_ovf_buf.2
	lds r20,timer2_buf_a.0
	cp r24,r21
	breq .L198
.LM289:
	sub r25,r20
.LM290:
	sts timer2_ovf_buf.2,r21
	rjmp .L199
.L198:
.LM291:
	sub r25,r20
.L199:
.LM292:
	lds r24,timer2_buf_b.1
	sts timer2_buf_a.0,r24
.LM293:
	mov r24,r25
	subi r24,lo8(-(-2))
	cpi r24,lo8(3)
	brsh .L200
.LM294:
	lds r24,edge_position.4
	subi r24,lo8(-(1))
	rjmp .L217
.L200:
.LM295:
	subi r25,lo8(-(-6))
	cpi r25,lo8(3)
	brsh .L204
.LM296:
	lds r24,edge_position.4
	subi r24,lo8(-(2))
.L217:
	sts edge_position.4,r24
.LM297:
	sbrs r24,0
	rjmp .L203
.LM298:
	sbic 33-0x20,5
	rjmp .L206
.LM299:
	clr r19
	sbrc r18,7
	com r19
	ldi r24,lo8(15)
	ldi r25,hi8(15)
	sub r24,r18
	sbc r25,r19
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	rjmp 2f
1:	lsl r18
	rol r19
2:	dec r24
	brpl 1b
	lds r24,data_buf.3
	lds r25,(data_buf.3)+1
	or r24,r18
	or r25,r19
	sts (data_buf.3)+1,r25
	sts data_buf.3,r24
.L206:
.LM300:
	lds r24,g_rc_bit_counter
	subi r24,lo8(-(1))
	sts g_rc_bit_counter,r24
	rjmp .L203
.L204:
.LM301:
	sts g_rc_bit_counter,__zero_reg__
.L203:
.LM302:
	lds r24,g_rc_bit_counter
	cpi r24,lo8(14)
	brne .L193
.LM303:
	lds r18,data_buf.3
	lds r19,(data_buf.3)+1
	sbrs r19,7
	rjmp .L209
	sbrs r19,6
	rjmp .L209
.LM304:
	mov r24,r19
	clr r25
	andi r24,lo8(31)
	andi r25,hi8(31)
	or r24,r25
	brne .L209
	movw r24,r18
	lsr r25
	ror r24
	lsr r25
	ror r24
.LM305:
	sbrs r19,5
	rjmp .L211
.LM306:
	andi r24,lo8(63)
	ori r24,lo8(-128)
	rjmp .L212
.L211:
.LM307:
	andi r24,lo8(63)
.L212:
.LM308:
	call rc_process_command
	rjmp .L193
.L209:
.LM309:
	sts g_rc_bit_counter,__zero_reg__
.L193:
/* epilogue: frame size=0 */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop __tmp_reg__
	out __SREG__,__tmp_reg__
	pop __tmp_reg__
	pop __zero_reg__
	reti
/* epilogue end (size=17) */
/* function __vector_6 size 171 (137) */
.LFE24:
	.size	__vector_6, .-__vector_6
.global	init_timers
	.type	init_timers, @function
init_timers:
.LFB25:
.LM310:
/* prologue: frame size=0 */
/* prologue end (size=0) */
.LM311:
	lds r24,138
	ori r24,lo8(2)
	sts 138,r24
.LM312:
	lds r24,125
	ori r24,lo8(32)
	sts 125,r24
.LM313:
	in r24,83-0x20
	ori r24,lo8(10)
	out 83-0x20,r24
.LM314:
	ldi r24,lo8(-1)
	out 81-0x20,r24
.LM315:
	in r24,69-0x20
	ori r24,lo8(6)
	out 69-0x20,r24
.LM316:
	in r24,87-0x20
	ori r24,lo8(64)
	out 87-0x20,r24
.LM317:
	in r24,79-0x20
	ori r24,lo8(-2)
	out 79-0x20,r24
.LM318:
	in r24,78-0x20
	ori r24,lo8(25)
	out 78-0x20,r24
.LM319:
	ldi r24,lo8(39)
	ldi r25,hi8(39)
	out (70)+1-0x20,r25
	out 70-0x20,r24
.LM320:
	out (74)+1-0x20,r25
	out 74-0x20,r24
.LM321:
	out (72)+1-0x20,r25
	out 72-0x20,r24
.LM322:
	sts (120)+1,r25
	sts 120,r24
/* epilogue: frame size=0 */
	ret
/* epilogue end (size=1) */
/* function init_timers size 40 (39) */
.LFE25:
	.size	init_timers, .-init_timers
.global	main
	.type	main, @function
main:
.LFB26:
.LM323:
/* prologue: frame size=0 */
	ldi r28,lo8(__stack - 0)
	ldi r29,hi8(__stack - 0)
	out __SP_H__,r29
	out __SP_L__,r28
/* prologue end (size=4) */
.LM324:
	sbi 58-0x20,0
.LM325:
	cbi 59-0x20,0
.LM326:
	call init_i2c
.LM327:
	call init_timers
.LM328:
	ldi r24,lo8(25)
	ldi r25,hi8(25)
	call USART1_Init
.LM329:
	in r24,90-0x20
	ori r24,lo8(4)
	out 90-0x20,r24
.LM330:
	in r24,89-0x20
	ori r24,lo8(32)
	out 89-0x20,r24
.LBB89:
.LBB90:
.LM331:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
.LBB91:
.LBB92:
.LM332:
	movw r30,r24
/* #APP */
	1: sbiw r30,1
	brne 1b
/* #NOAPP */
.LBE92:
.LBE91:
.LBE90:
.LBE89:
.LBB93:
.LBB94:
.LBB95:
.LBB96:
/* #APP */
	1: sbiw r24,1
	brne 1b
/* #NOAPP */
.LBE96:
.LBE95:
.LBE94:
.LBE93:
.LM333:
	ldi r22,lo8(-111)
	ldi r24,lo8(7)
	call WriteI2C
.LM334:
	ldi r24,lo8(0)
	call SetPointer
.LM335:
	ldi r22,lo8(8)
	ldi r24,lo8(g_data_rtc)
	ldi r25,hi8(g_data_rtc)
	call ReadBufI2C
.LM336:
	lds r24,g_data_rtc+2
	andi r24,lo8(31)
	sts g_data_rtc+2,r24
	ldi r28,lo8(g_data_rtc)
	ldi r29,hi8(g_data_rtc)
	ldi r17,lo8(7)
.L239:
.LM337:
	ld r24,Y
	call BCDtoDEC
	st Y+,r24
.LM338:
	subi r17,lo8(-(-1))
	sbrs r17,7
	rjmp .L239
.LM339:
	lds r19,g_data_rtc
	mov r24,r19
	clr r25
	lsl r24
	rol r25
	lsl r24
	rol r25
	sts g_seconds,r24
.LM340:
	lds r20,g_data_rtc+1
	mov r18,r20
	lsl r18
	lsl r18
	mov r24,r19
	ldi r22,lo8(15)
	call __udivmodqi4
	add r18,r24
	sts g_minutes,r18
.LM341:
	lds r24,g_data_rtc+2
	ldi r22,lo8(12)
	call __udivmodqi4
	ldi r24,lo8(20)
	mul r25,r24
	movw r18,r0
	clr r1
	mov r24,r20
	ldi r22,lo8(3)
	call __udivmodqi4
	add r24,r18
	sts g_hours,r24
.LM342:
	sbi 59-0x20,0
.LM343:
	ldi r24,lo8(1)
	sts g_power_on,r24
.LM344:
/* #APP */
	sei
/* #NOAPP */
.L240:
.LM345:
	rjmp .L240
/* epilogue: frame size=0 */
/* epilogue: noreturn */
/* epilogue end (size=0) */
/* function main size 103 (99) */
.LFE26:
	.size	main, .-main
	.comm g_pos,1,1
	.comm g_data_rtc,8,1
	.comm g_timer2_ovf,1,1
	.comm g_reminder,1,1
	.comm g_seconds,1,1
	.comm g_minutes,1,1
	.comm g_hours,1,1
	.comm g_uart_buffer,10,1
	.comm g_uart_counter,1,1
	.comm g_mode,1,1
	.comm g_power_on,1,1
	.comm g_rc_bit_counter,1,1
	.comm g_rc_command,1,1
	.comm g_rc_idle_counter,1,1
	.comm g_rc_hold_counter,1,1
.Letext0:
	.section	.debug_line
	.long	.LELT0-.LSLT0

.LSLT0:
	.word	2

	.long	.LELTP0-.LASLTP0

.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"C:/Program Files/WinAVR/avr/include"
	.byte	0
	.ascii	"c:\\program files\\winavr\\bin/../lib/gcc/avr/3.4.5/include"
	.byte	0
	.byte	0x0
	.string	"stdint.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"inttypes.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdarg.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"stddef.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdio.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/pgmspace.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"setjmp.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdlib.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"main.c"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/delay.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"tables.h"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM1

	.byte	0x4
	.uleb128 0x9
	.byte	0x77
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM2

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM3

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM4

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM5

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM6

	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM7

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM8

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM9

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM10

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM11

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM12

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM13

	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM14

	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM15

	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM16

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM17

	.byte	0x1b
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM18

	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM19

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM20

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM21

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM22

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM23

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM24

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM25

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM26

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM27

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM28

	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM29

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM30

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM31

	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM32

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM33

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM34

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM35

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM36

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM37

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM38

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM39

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM40

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM41

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM42

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM43

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM44

	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM45

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM46

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM47

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM48

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM49

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM50

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM51

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM52

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM53

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM54

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM55

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM56

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM57

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM58

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM59

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM60

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM61

	.byte	0x1a
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM62

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM63

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM64

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM65

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM66

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM67

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM68

	.byte	0x1a
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM69

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM70

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM71

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM72

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM73

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM74

	.byte	0x1a
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM75

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM76

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM77

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM78

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM79

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM80

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM81

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM82

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM83

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM84

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM85

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM86

	.byte	0x1d
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM87

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM88

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM89

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM90

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM91

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM92

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM93

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM94

	.byte	0x19
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM95

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM96

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM97

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM98

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM99

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM100

	.byte	0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM101

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM102

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM103

	.byte	0x19
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM104

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM105

	.byte	0x1a
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM106

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM107

	.byte	0x1d
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM108

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM109

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM110

	.byte	0x1
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM111

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM112

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM113

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM114

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM115

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM116

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM117

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM118

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM119

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM120

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM121

	.byte	0x1a
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM122

	.byte	0x19
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM123

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM124

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM125

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM126

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM127

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM128

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM129

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM130

	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM131

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM132

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM133

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM134

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM135

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM136

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM137

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM138

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM139

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM140

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM141

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM142

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM143

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM144

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM145

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM146

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM147

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM148

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM149

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM150

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM151

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM152

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM153

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM154

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM155

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM156

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM157

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM158

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM159

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM160

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM161

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM162

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM163

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM164

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM165

	.byte	0x1a
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM166

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM167

	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM168

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM169

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM170

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM171

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM172

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM173

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM174

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM175

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM176

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM177

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM178

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM179

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM180

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM181

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM182

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM183

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM184

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM185

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM186

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM187

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM188

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM189

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM190

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM191

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM192

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM193

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM194

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM195

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM196

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM197

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM198

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM199

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM200

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM201

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM202

	.byte	0x19
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM203

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM204

	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM205

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM206

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM207

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM208

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM209

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM210

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM211

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM212

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM213

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM214

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM215

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM216

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM217

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM218

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM219

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM220

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM221

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM222

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM223

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM224

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM225

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM226

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM227

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM228

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM229

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM230

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM231

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM232

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM233

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM234

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM235

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM236

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM237

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM238

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM239

	.byte	0x1b
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM240

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM241

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM242

	.byte	0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM243

	.byte	0x1c
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM244

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM245

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM246

	.byte	0x1a
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM247

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM248

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM249

	.byte	0x1d
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM250

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM251

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM252

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM253

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM254

	.byte	0x1b
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM255

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM256

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM257

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM258

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM259

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM260

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM261

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM262

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM263

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM264

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM265

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM266

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM267

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM268

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM269

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM270

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM271

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM272

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM273

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM274

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM275

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM276

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM277

	.byte	0x20
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM278

	.byte	0x21
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM279

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM280

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM281

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM282

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM283

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM284

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM285

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM286

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM287

	.byte	0x19
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM288

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM289

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM290

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM291

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM292

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM293

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM294

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM295

	.byte	0x1e
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM296

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM297

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM298

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM299

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM300

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM301

	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM302

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM303

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM304

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM305

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM306

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM307

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM308

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM309

	.byte	0x1a
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM310

	.byte	0x1b
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM311

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM312

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM313

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM314

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM315

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM316

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM317

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM318

	.byte	0x17
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM319

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM320

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM321

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM322

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM323

	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM324

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM325

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM326

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM327

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM328

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM329

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM330

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM331

	.byte	0x4
	.uleb128 0xa
	.byte	0x3
	.sleb128 -624
	.byte	0x1
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM332

	.byte	0x3
	.sleb128 -57
	.byte	0x1
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM333

	.byte	0x4
	.uleb128 0x9
	.byte	0x3
	.sleb128 686
	.byte	0x1
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM334

	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM335

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM336

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM337

	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM338

	.byte	0x13
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM339

	.byte	0x18
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM340

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM341

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM342

	.byte	0x16
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM343

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM344

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.LM345

	.byte	0x15
	.byte	0x0
	.uleb128 0x3
	.byte	0x2
	.word	.Letext0

	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_info
	.long	5017

	.word	2

	.long	.Ldebug_abbrev0

	.byte	0x2
	.uleb128 0x1
	.long	.Ldebug_line0

	.word	.Letext0

	.word	.Ltext0

	.long	.LASF71

	.byte	0x1
	.long	.LASF72

	.long	.LASF73

	.uleb128 0x2
	.long	.LASF0

	.byte	0x1
	.byte	0x74
	.long	44

	.uleb128 0x3
	.long	.LASF2

	.byte	0x1
	.byte	0x6
	.uleb128 0x2
	.long	.LASF1

	.byte	0x1
	.byte	0x75
	.long	62

	.uleb128 0x3
	.long	.LASF3

	.byte	0x1
	.byte	0x8
	.uleb128 0x4
	.string	"int"
	.byte	0x2
	.byte	0x5
	.uleb128 0x2
	.long	.LASF4

	.byte	0x1
	.byte	0x77
	.long	87

	.uleb128 0x3
	.long	.LASF5

	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.long	.LASF6

	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF7

	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.long	.LASF8

	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.long	.LASF9

	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF10

	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.long	.LASF10

	.byte	0x1
	.byte	0x7
	.uleb128 0x3
	.long	.LASF3

	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.long	.LASF0

	.byte	0x1
	.byte	0x5
	.uleb128 0x3
	.long	.LASF3

	.byte	0x1
	.byte	0x8
	.uleb128 0x3
	.long	.LASF11

	.byte	0x2
	.byte	0x5
	.uleb128 0x3
	.long	.LASF4

	.byte	0x2
	.byte	0x7
	.uleb128 0x3
	.long	.LASF12

	.byte	0x4
	.byte	0x5
	.uleb128 0x3
	.long	.LASF13

	.byte	0x4
	.byte	0x7
	.uleb128 0x3
	.long	.LASF14

	.byte	0x8
	.byte	0x5
	.uleb128 0x3
	.long	.LASF15

	.byte	0x8
	.byte	0x7
	.uleb128 0x3
	.long	.LASF5

	.byte	0x2
	.byte	0x7
	.uleb128 0x5
	.long	251

	.byte	0x1
	.long	.LASF16

	.byte	0x9
	.byte	0x64
	.byte	0x1
	.word	.LFB15

	.word	.LFE15

	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF18

	.byte	0x9
	.byte	0x63
	.long	87

	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF24

	.byte	0x9
	.byte	0x6f
	.byte	0x1
	.long	62

	.word	.LFB16

	.word	.LFE16

	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x5
	.long	317

	.byte	0x1
	.long	.LASF17

	.byte	0x9
	.byte	0x78
	.byte	0x1
	.word	.LFB17

	.word	.LFE17

	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF19

	.byte	0x9
	.byte	0x77
	.long	62

	.byte	0x1
	.byte	0x69
	.byte	0x0
	.uleb128 0x5
	.long	362

	.byte	0x1
	.long	.LASF20

	.byte	0x9
	.byte	0x81
	.byte	0x1
	.word	.LFB18

	.word	.LFE18

	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x8
	.string	"str"
	.byte	0x9
	.byte	0x80
	.long	362

	.byte	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x9
	.byte	0x2
	.long	62

	.uleb128 0x5
	.long	434

	.byte	0x1
	.long	.LASF21

	.byte	0x9
	.byte	0x8c
	.byte	0x1
	.word	.LFB19

	.word	.LFE19

	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF22

	.byte	0x9
	.byte	0x8b
	.long	51

	.byte	0x1
	.byte	0x69
	.uleb128 0xa
	.long	.LASF23

	.byte	0x9
	.byte	0x8d
	.long	51

	.byte	0x3
	.byte	0x3
	.word	last_command.5

	.uleb128 0xb
	.string	"i"
	.byte	0x9
	.byte	0x8e
	.long	51

	.byte	0x1
	.byte	0x61
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF25

	.byte	0x9
	.word	331

	.byte	0x1
	.word	.LFB20

	.word	.LFE20

	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xc
	.byte	0x1
	.long	.LASF26

	.byte	0x9
	.word	356

	.byte	0x1
	.word	.LFB21

	.word	.LFE21

	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xd
	.long	4111

	.byte	0x1
	.long	.LASF27

	.byte	0x9
	.word	380

	.byte	0x1
	.word	.LFB22

	.word	.LFE22

	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xe
	.long	.LASF28

	.byte	0x9
	.word	381

	.long	51

	.byte	0x1
	.byte	0x64
	.uleb128 0xe
	.long	.LASF29

	.byte	0x9
	.word	382

	.long	51

	.byte	0x1
	.byte	0x63
	.uleb128 0xe
	.long	.LASF30

	.byte	0x9
	.word	383

	.long	51

	.byte	0x1
	.byte	0x62
	.uleb128 0xf
	.long	590

	.word	.LBB2

	.word	.LBE2

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	403

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	403

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	631

	.word	.LBB3

	.word	.LBE3

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	404

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	404

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	672

	.word	.LBB4

	.word	.LBE4

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	405

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	405

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	713

	.word	.LBB5

	.word	.LBE5

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	409

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	409

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	754

	.word	.LBB6

	.word	.LBE6

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	410

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	410

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	795

	.word	.LBB7

	.word	.LBE7

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	411

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	411

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	836

	.word	.LBB8

	.word	.LBE8

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	415

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	415

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	877

	.word	.LBB9

	.word	.LBE9

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	416

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	416

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	918

	.word	.LBB10

	.word	.LBE10

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	417

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	417

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	959

	.word	.LBB11

	.word	.LBE11

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	421

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	421

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1000

	.word	.LBB12

	.word	.LBE12

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	422

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	422

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1041

	.word	.LBB13

	.word	.LBE13

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	423

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	423

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1082

	.word	.LBB14

	.word	.LBE14

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	426

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	426

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1123

	.word	.LBB15

	.word	.LBE15

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	427

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	427

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1164

	.word	.LBB16

	.word	.LBE16

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	428

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	428

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1205

	.word	.LBB17

	.word	.LBE17

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	432

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	432

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1246

	.word	.LBB18

	.word	.LBE18

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	433

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	433

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1287

	.word	.LBB19

	.word	.LBE19

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	434

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	434

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1328

	.word	.LBB20

	.word	.LBE20

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	438

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	438

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1369

	.word	.LBB21

	.word	.LBE21

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	439

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	439

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1410

	.word	.LBB22

	.word	.LBE22

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	440

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	440

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1451

	.word	.LBB23

	.word	.LBE23

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	444

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	444

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1492

	.word	.LBB24

	.word	.LBE24

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	445

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	445

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1533

	.word	.LBB25

	.word	.LBE25

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	446

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	446

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1574

	.word	.LBB26

	.word	.LBE26

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	450

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	450

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1615

	.word	.LBB27

	.word	.LBE27

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	451

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	451

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1656

	.word	.LBB28

	.word	.LBE28

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	452

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	452

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1697

	.word	.LBB29

	.word	.LBE29

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	464

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	464

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1738

	.word	.LBB30

	.word	.LBE30

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	465

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	465

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1779

	.word	.LBB31

	.word	.LBE31

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	466

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	466

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1820

	.word	.LBB32

	.word	.LBE32

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	470

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	470

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1861

	.word	.LBB33

	.word	.LBE33

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	471

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	471

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1902

	.word	.LBB34

	.word	.LBE34

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	472

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	472

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1943

	.word	.LBB35

	.word	.LBE35

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	476

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	476

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	1984

	.word	.LBB36

	.word	.LBE36

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	477

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	477

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2025

	.word	.LBB37

	.word	.LBE37

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	478

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	478

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2066

	.word	.LBB38

	.word	.LBE38

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	482

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	482

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2107

	.word	.LBB39

	.word	.LBE39

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	483

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	483

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2148

	.word	.LBB40

	.word	.LBE40

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	484

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	484

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2189

	.word	.LBB41

	.word	.LBE41

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	487

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	487

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2230

	.word	.LBB42

	.word	.LBE42

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	488

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	488

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2271

	.word	.LBB43

	.word	.LBE43

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	489

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	489

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2312

	.word	.LBB44

	.word	.LBE44

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	493

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	493

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2353

	.word	.LBB45

	.word	.LBE45

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	494

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	494

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2394

	.word	.LBB46

	.word	.LBE46

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	495

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	495

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2435

	.word	.LBB47

	.word	.LBE47

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	499

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	499

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2476

	.word	.LBB48

	.word	.LBE48

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	500

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	500

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2517

	.word	.LBB49

	.word	.LBE49

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	501

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	501

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2558

	.word	.LBB50

	.word	.LBE50

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	505

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	505

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2599

	.word	.LBB51

	.word	.LBE51

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	506

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	506

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2640

	.word	.LBB52

	.word	.LBE52

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	507

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	507

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2681

	.word	.LBB53

	.word	.LBE53

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	511

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	511

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2722

	.word	.LBB54

	.word	.LBE54

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	512

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	512

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2763

	.word	.LBB55

	.word	.LBE55

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	513

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	513

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2804

	.word	.LBB56

	.word	.LBE56

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	524

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	524

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2845

	.word	.LBB57

	.word	.LBE57

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	525

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	525

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2886

	.word	.LBB58

	.word	.LBE58

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	526

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	526

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2927

	.word	.LBB59

	.word	.LBE59

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	530

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	530

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	2968

	.word	.LBB60

	.word	.LBE60

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	531

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	531

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3009

	.word	.LBB61

	.word	.LBE61

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	532

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	532

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3050

	.word	.LBB62

	.word	.LBE62

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	536

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	536

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3091

	.word	.LBB63

	.word	.LBE63

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	537

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	537

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3132

	.word	.LBB64

	.word	.LBE64

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	538

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	538

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3173

	.word	.LBB65

	.word	.LBE65

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	542

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	542

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3214

	.word	.LBB66

	.word	.LBE66

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	543

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	543

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3255

	.word	.LBB67

	.word	.LBE67

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	544

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	544

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3296

	.word	.LBB68

	.word	.LBE68

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	547

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	547

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3337

	.word	.LBB69

	.word	.LBE69

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	548

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	548

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3378

	.word	.LBB70

	.word	.LBE70

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	549

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	549

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3419

	.word	.LBB71

	.word	.LBE71

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	553

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	553

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3460

	.word	.LBB72

	.word	.LBE72

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	554

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	554

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3501

	.word	.LBB73

	.word	.LBE73

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	555

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	555

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3542

	.word	.LBB74

	.word	.LBE74

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	559

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	559

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3583

	.word	.LBB75

	.word	.LBE75

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	560

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	560

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3624

	.word	.LBB76

	.word	.LBE76

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	561

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	561

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3665

	.word	.LBB77

	.word	.LBE77

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	565

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	565

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3706

	.word	.LBB78

	.word	.LBE78

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	566

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	566

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3747

	.word	.LBB79

	.word	.LBE79

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	567

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	567

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3788

	.word	.LBB80

	.word	.LBE80

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	571

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	571

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3829

	.word	.LBB81

	.word	.LBE81

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	572

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	572

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3870

	.word	.LBB82

	.word	.LBE82

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	573

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x10
	.long	.LASF32

	.byte	0x9
	.word	573

	.long	51

	.byte	0x0
	.uleb128 0xf
	.long	3913

	.word	.LBB83

	.word	.LBE83

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	600

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xe
	.long	.LASF32

	.byte	0x9
	.word	600

	.long	51

	.byte	0x1
	.byte	0x62
	.byte	0x0
	.uleb128 0xf
	.long	3956

	.word	.LBB84

	.word	.LBE84

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	601

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xe
	.long	.LASF32

	.byte	0x9
	.word	601

	.long	51

	.byte	0x1
	.byte	0x62
	.byte	0x0
	.uleb128 0xf
	.long	3992

	.word	.LBB85

	.word	.LBE85

	.uleb128 0x10
	.long	.LASF31

	.byte	0x9
	.word	602

	.long	76

	.uleb128 0xe
	.long	.LASF32

	.byte	0x9
	.word	602

	.long	51

	.byte	0x1
	.byte	0x68
	.byte	0x0
	.uleb128 0xf
	.long	4035

	.word	.LBB86

	.word	.LBE86

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	619

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xe
	.long	.LASF32

	.byte	0x9
	.word	619

	.long	51

	.byte	0x1
	.byte	0x62
	.byte	0x0
	.uleb128 0xf
	.long	4078

	.word	.LBB87

	.word	.LBE87

	.uleb128 0xe
	.long	.LASF31

	.byte	0x9
	.word	620

	.long	76

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xe
	.long	.LASF32

	.byte	0x9
	.word	620

	.long	51

	.byte	0x1
	.byte	0x62
	.byte	0x0
	.uleb128 0x11
	.word	.LBB88

	.word	.LBE88

	.uleb128 0x10
	.long	.LASF31

	.byte	0x9
	.word	621

	.long	76

	.uleb128 0xe
	.long	.LASF32

	.byte	0x9
	.word	621

	.long	51

	.byte	0x1
	.byte	0x68
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF33

	.byte	0x9
	.word	632

	.byte	0x1
	.word	.LFB23

	.word	.LFE23

	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xd
	.long	4270

	.byte	0x1
	.long	.LASF34

	.byte	0x9
	.word	681

	.byte	0x1
	.word	.LFB24

	.word	.LFE24

	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xe
	.long	.LASF35

	.byte	0x9
	.word	682

	.long	51

	.byte	0x3
	.byte	0x3
	.word	timer2_buf_a.0

	.uleb128 0xe
	.long	.LASF36

	.byte	0x9
	.word	683

	.long	51

	.byte	0x3
	.byte	0x3
	.word	timer2_buf_b.1

	.uleb128 0xe
	.long	.LASF37

	.byte	0x9
	.word	684

	.long	51

	.byte	0x3
	.byte	0x3
	.word	timer2_ovf_buf.2

	.uleb128 0xe
	.long	.LASF38

	.byte	0x9
	.word	685

	.long	76

	.byte	0x3
	.byte	0x3
	.word	data_buf.3

	.uleb128 0xe
	.long	.LASF39

	.byte	0x9
	.word	686

	.long	51

	.byte	0x3
	.byte	0x3
	.word	edge_position.4

	.uleb128 0xe
	.long	.LASF40

	.byte	0x9
	.word	691

	.long	51

	.byte	0x1
	.byte	0x69
	.uleb128 0xe
	.long	.LASF41

	.byte	0x9
	.word	692

	.long	51

	.byte	0x1
	.byte	0x68
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF42

	.byte	0x9
	.word	777

	.byte	0x1
	.word	.LFB25

	.word	.LFE25

	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x12
	.long	4454

	.byte	0x1
	.long	.LASF43

	.byte	0x9
	.word	799

	.byte	0x1
	.long	69

	.word	.LFB26

	.word	.LFE26

	.byte	0x8
	.byte	0x90
	.uleb128 0x20
	.byte	0x93
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x21
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x13
	.string	"i"
	.byte	0x9
	.word	821

	.long	51

	.byte	0x1
	.byte	0x61
	.uleb128 0x14
	.long	4400

	.long	4454

	.word	.LBB89

	.word	.LBE89

	.uleb128 0x15
	.long	4467

	.uleb128 0x11
	.word	.LBB90

	.word	.LBE90

	.uleb128 0x16
	.long	4478

	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x17
	.long	4489

	.uleb128 0x18
	.long	4508

	.word	.LBB91

	.word	.LBE91

	.uleb128 0x19
	.long	4521

	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.long	4454

	.word	.LBB93

	.word	.LBE93

	.uleb128 0x15
	.long	4467

	.uleb128 0x11
	.word	.LBB94

	.word	.LBE94

	.uleb128 0x17
	.long	4478

	.uleb128 0x17
	.long	4489

	.uleb128 0x18
	.long	4508

	.word	.LBB95

	.word	.LBE95

	.uleb128 0x19
	.long	4521

	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.long	4501

	.long	.LASF48

	.byte	0xa
	.byte	0xb1
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.long	.LASF44

	.byte	0xa
	.byte	0xb0
	.long	4501

	.uleb128 0x1c
	.long	.LASF45

	.byte	0xa
	.byte	0xb2
	.long	76

	.uleb128 0x1c
	.long	.LASF46

	.byte	0xa
	.byte	0xb3
	.long	4501

	.byte	0x0
	.uleb128 0x3
	.long	.LASF47

	.byte	0x4
	.byte	0x4
	.uleb128 0x1a
	.long	4533

	.long	.LASF49

	.byte	0xa
	.byte	0x7d
	.byte	0x1
	.byte	0x3
	.uleb128 0x1b
	.long	.LASF50

	.byte	0xa
	.byte	0x7c
	.long	76

	.byte	0x0
	.uleb128 0x1d
	.long	4561

	.long	51

	.uleb128 0x1e
	.long	199

	.byte	0x4
	.uleb128 0x1e
	.long	199

	.byte	0x2
	.uleb128 0x1e
	.long	199

	.byte	0xef
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF51

	.byte	0xb
	.byte	0xb
	.long	4577

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_background

	.uleb128 0x20
	.long	4533

	.uleb128 0x1d
	.long	4610

	.long	51

	.uleb128 0x1e
	.long	199

	.byte	0x4
	.uleb128 0x1e
	.long	199

	.byte	0x2
	.uleb128 0x1e
	.long	199

	.byte	0x8
	.byte	0x0
	.uleb128 0x21
	.long	.LASF52

	.byte	0xb
	.word	398

	.long	4627

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_second_hand

	.uleb128 0x20
	.long	4582

	.uleb128 0x1d
	.long	4660

	.long	51

	.uleb128 0x1e
	.long	199

	.byte	0x4
	.uleb128 0x1e
	.long	199

	.byte	0x2
	.uleb128 0x1e
	.long	199

	.byte	0x8
	.byte	0x0
	.uleb128 0x21
	.long	.LASF53

	.byte	0xb
	.word	422

	.long	4677

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_minute_hand

	.uleb128 0x20
	.long	4632

	.uleb128 0x1d
	.long	4710

	.long	51

	.uleb128 0x1e
	.long	199

	.byte	0x4
	.uleb128 0x1e
	.long	199

	.byte	0x2
	.uleb128 0x1e
	.long	199

	.byte	0x8
	.byte	0x0
	.uleb128 0x21
	.long	.LASF54

	.byte	0xb
	.word	445

	.long	4727

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_hour_hand

	.uleb128 0x20
	.long	4682

	.uleb128 0x1f
	.long	.LASF55

	.byte	0x9
	.byte	0x43
	.long	51

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_pos

	.uleb128 0x1d
	.long	4764

	.long	51

	.uleb128 0x1e
	.long	199

	.byte	0x7
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF56

	.byte	0x9
	.byte	0x44
	.long	4748

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_data_rtc

	.uleb128 0x1f
	.long	.LASF57

	.byte	0x9
	.byte	0x45
	.long	51

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_timer2_ovf

	.uleb128 0x1f
	.long	.LASF58

	.byte	0x9
	.byte	0x46
	.long	51

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_reminder

	.uleb128 0x1f
	.long	.LASF59

	.byte	0x9
	.byte	0x48
	.long	51

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_seconds

	.uleb128 0x1f
	.long	.LASF60

	.byte	0x9
	.byte	0x49
	.long	51

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_minutes

	.uleb128 0x1f
	.long	.LASF61

	.byte	0x9
	.byte	0x4a
	.long	51

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_hours

	.uleb128 0x1d
	.long	4876

	.long	51

	.uleb128 0x1e
	.long	199

	.byte	0x9
	.byte	0x0
	.uleb128 0x1f
	.long	.LASF62

	.byte	0x9
	.byte	0x4c
	.long	4860

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_uart_buffer

	.uleb128 0x1f
	.long	.LASF63

	.byte	0x9
	.byte	0x4d
	.long	51

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_uart_counter

	.uleb128 0x1f
	.long	.LASF64

	.byte	0x9
	.byte	0x4f
	.long	51

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_mode

	.uleb128 0x1f
	.long	.LASF65

	.byte	0x9
	.byte	0x50
	.long	51

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_power_on

	.uleb128 0x1f
	.long	.LASF66

	.byte	0x9
	.byte	0x53
	.long	33

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_rc_bit_counter

	.uleb128 0x1f
	.long	.LASF67

	.byte	0x9
	.byte	0x54
	.long	51

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_rc_command

	.uleb128 0x1f
	.long	.LASF68

	.byte	0x9
	.byte	0x55
	.long	51

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_rc_idle_counter

	.uleb128 0x1f
	.long	.LASF69

	.byte	0x9
	.byte	0x57
	.long	51

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_rc_state

	.uleb128 0x1f
	.long	.LASF70

	.byte	0x9
	.byte	0x58
	.long	51

	.byte	0x1
	.byte	0x3
	.byte	0x3
	.word	g_rc_hold_counter

	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	535

	.word	2

	.long	.Ldebug_info0

	.long	5021

	.long	206

	.string	"USART1_Init"
	.long	251

	.string	"USART1_Receive"
	.long	277

	.string	"USART1_Transmit"
	.long	317

	.string	"send_str"
	.long	368

	.string	"rc_process_command"
	.long	434

	.string	"__vector_30"
	.long	457

	.string	"__vector_25"
	.long	480

	.string	"__vector_15"
	.long	4111

	.string	"__vector_10"
	.long	4134

	.string	"__vector_6"
	.long	4270

	.string	"init_timers"
	.long	4293

	.string	"main"
	.long	4561

	.string	"g_background"
	.long	4610

	.string	"g_second_hand"
	.long	4660

	.string	"g_minute_hand"
	.long	4710

	.string	"g_hour_hand"
	.long	4732

	.string	"g_pos"
	.long	4764

	.string	"g_data_rtc"
	.long	4780

	.string	"g_timer2_ovf"
	.long	4796

	.string	"g_reminder"
	.long	4812

	.string	"g_seconds"
	.long	4828

	.string	"g_minutes"
	.long	4844

	.string	"g_hours"
	.long	4876

	.string	"g_uart_buffer"
	.long	4892

	.string	"g_uart_counter"
	.long	4908

	.string	"g_mode"
	.long	4924

	.string	"g_power_on"
	.long	4940

	.string	"g_rc_bit_counter"
	.long	4956

	.string	"g_rc_command"
	.long	4972

	.string	"g_rc_idle_counter"
	.long	4988

	.string	"g_rc_state"
	.long	5004

	.string	"g_rc_hold_counter"
	.long	0

	.section	.debug_aranges,"",@progbits
	.long	16

	.word	2

	.long	.Ldebug_info0

	.byte	0x2
	.byte	0x0
	.word	.Ltext0

	.word	.Letext0-.Ltext0

	.word	0

	.word	0

	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"timer2_ovf_buf"
.LASF26:
	.string	"__vector_25"
.LASF41:
	.string	"tmp_command"
.LASF18:
	.string	"ubrr"
.LASF20:
	.string	"send_str"
.LASF57:
	.string	"g_timer2_ovf"
.LASF0:
	.string	"int8_t"
.LASF23:
	.string	"last_command"
.LASF59:
	.string	"g_seconds"
.LASF67:
	.string	"g_rc_command"
.LASF15:
	.string	"uint64_t"
.LASF61:
	.string	"g_hours"
.LASF28:
	.string	"tmp_red"
.LASF40:
	.string	"tmp_time"
.LASF43:
	.string	"main"
.LASF70:
	.string	"g_rc_hold_counter"
.LASF8:
	.string	"long long int"
.LASF50:
	.string	"__count"
.LASF49:
	.string	"_delay_loop_2"
.LASF14:
	.string	"int64_t"
.LASF1:
	.string	"uint8_t"
.LASF30:
	.string	"tmp_blue"
.LASF25:
	.string	"__vector_30"
.LASF60:
	.string	"g_minutes"
.LASF69:
	.string	"g_rc_state"
.LASF31:
	.string	"__addr16"
.LASF63:
	.string	"g_uart_counter"
.LASF46:
	.string	"__tmp"
.LASF16:
	.string	"USART1_Init"
.LASF51:
	.string	"g_background"
.LASF42:
	.string	"init_timers"
.LASF6:
	.string	"long int"
.LASF52:
	.string	"g_second_hand"
.LASF68:
	.string	"g_rc_idle_counter"
.LASF64:
	.string	"g_mode"
.LASF56:
	.string	"g_data_rtc"
.LASF3:
	.string	"unsigned char"
.LASF34:
	.string	"__vector_6"
.LASF2:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF5:
	.string	"unsigned int"
.LASF4:
	.string	"uint16_t"
.LASF32:
	.string	"__result"
.LASF71:
	.string	"GNU C 3.4.5"
.LASF45:
	.string	"__ticks"
.LASF48:
	.string	"_delay_ms"
.LASF21:
	.string	"rc_process_command"
.LASF10:
	.string	"char"
.LASF12:
	.string	"int32_t"
.LASF11:
	.string	"int16_t"
.LASF19:
	.string	"data"
.LASF54:
	.string	"g_hour_hand"
.LASF29:
	.string	"tmp_green"
.LASF33:
	.string	"__vector_10"
.LASF72:
	.string	"main.c"
.LASF7:
	.string	"long unsigned int"
.LASF27:
	.string	"__vector_15"
.LASF39:
	.string	"edge_position"
.LASF73:
	.string	"D:\\AVR cuda\\Projekty\\HDDClock"
.LASF35:
	.string	"timer2_buf_a"
.LASF36:
	.string	"timer2_buf_b"
.LASF17:
	.string	"USART1_Transmit"
.LASF65:
	.string	"g_power_on"
.LASF44:
	.string	"__ms"
.LASF47:
	.string	"double"
.LASF24:
	.string	"USART1_Receive"
.LASF55:
	.string	"g_pos"
.LASF38:
	.string	"data_buf"
.LASF62:
	.string	"g_uart_buffer"
.LASF58:
	.string	"g_reminder"
.LASF22:
	.string	"command"
.LASF53:
	.string	"g_minute_hand"
.LASF66:
	.string	"g_rc_bit_counter"
/* File "main.c": code 2211 = 0x08a3 (2063), prologues  73, epilogues  75 */
