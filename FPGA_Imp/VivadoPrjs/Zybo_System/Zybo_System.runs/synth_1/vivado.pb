
>
Refreshing IP repositories
234*coregenZ19-234h px? 
?
 Loaded user IP repository '%s'.
1135*coregen2i
Uc:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/02_IPRepository2default:defaultZ19-1700h px? 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
F:/Xilinx/Vivado/2022.1/data/ip2default:defaultZ19-2313h px? 
?
?The host OS only allows 260 characters in a normal path. The IP cache path is more than 80 characters. If you experience issues with IP caching, please consider changing the IP cache to a location with a shorter path. Alternately consider using the OS subst command to map part of the path to a drive letter. 
Current IP cache path is %s 2293*coregen2z
fc:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.cache/ip2default:defaultZ19-4995h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.srcs/utils_1/imports/synth_1/System_wrapper.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
?C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.srcs/utils_1/imports/synth_1/System_wrapper.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
{
Command: %s
53*	vivadotcl2J
6synth_design -top System_wrapper -part xc7z020clg400-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
186602default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:07 . Memory (MB): peak = 1284.742 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2"
System_wrapper2default:default2?
?C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/hdl/System_wrapper.vhd2default:default2
522default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
System2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
13542default:default2
System_i2default:default2
System2default:default2?
?C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/hdl/System_wrapper.vhd2default:default2
912default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
System2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
13962default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys23
System_AXI_I2C_LCD_Transmit_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_AXI_I2C_LCD_Transmit_0_0/synth/System_AXI_I2C_LCD_Transmit_0_0.vhd2default:default2
562default:default2*
AXI_I2C_LCD_Transmit_02default:default23
System_AXI_I2C_LCD_Transmit_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
17802default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys23
System_AXI_I2C_LCD_Transmit_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_AXI_I2C_LCD_Transmit_0_0/synth/System_AXI_I2C_LCD_Transmit_0_0.vhd2default:default2
852default:default8@Z8-638h px? 
j
%s
*synth2R
>	Parameter C_S00_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S00_AXI_ADDR_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter LCD_CLK bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter LCD_I2C_BUS_CLK bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys20
AXI_I2C_LCD_Transmitter_v1_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/hdl/AXI_I2C_LCD_Transmitter_v1_0.vhd2default:default2
52default:default2
U02default:default20
AXI_I2C_LCD_Transmitter_v1_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_AXI_I2C_LCD_Transmit_0_0/synth/System_AXI_I2C_LCD_Transmit_0_0.vhd2default:default2
1542default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys20
AXI_I2C_LCD_Transmitter_v1_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/hdl/AXI_I2C_LCD_Transmitter_v1_0.vhd2default:default2
522default:default8@Z8-638h px? 
h
%s
*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 6 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys28
$AXI_I2C_LCD_Transmitter_v1_0_S00_AXI2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/hdl/AXI_I2C_LCD_Transmitter_v1_0_S00_AXI.vhd2default:default2
52default:default2=
)AXI_I2C_LCD_Transmitter_v1_0_S00_AXI_inst2default:default28
$AXI_I2C_LCD_Transmitter_v1_0_S00_AXI2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/hdl/AXI_I2C_LCD_Transmitter_v1_0.vhd2default:default2
972default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys28
$AXI_I2C_LCD_Transmitter_v1_0_S00_AXI2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/hdl/AXI_I2C_LCD_Transmitter_v1_0_S00_AXI.vhd2default:default2
892default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
i2c_user_lcd2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/src/i2c_user_lcd.vhd2default:default2
62default:default2
lcd2default:default2 
i2c_user_lcd2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/hdl/AXI_I2C_LCD_Transmitter_v1_0_S00_AXI.vhd2default:default2
4792default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
i2c_user_lcd2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/src/i2c_user_lcd.vhd2default:default2
232default:default8@Z8-638h px? 
f
%s
*synth2N
:	Parameter input_clk bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter bus_clk bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

i2c_master2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/src/I2C_Master.vhd2default:default2
362default:default2#
Inst_i2c_master2default:default2

i2c_master2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/src/i2c_user_lcd.vhd2default:default2
712default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2

i2c_master2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/src/I2C_Master.vhd2default:default2
542default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

i2c_master2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/src/I2C_Master.vhd2default:default2
542default:default8@Z8-256h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

first_line2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/src/i2c_user_lcd.vhd2default:default2
1942default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
second_line2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/src/i2c_user_lcd.vhd2default:default2
1942default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
i2c_user_lcd2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/src/i2c_user_lcd.vhd2default:default2
232default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys28
$AXI_I2C_LCD_Transmitter_v1_0_S00_AXI2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/hdl/AXI_I2C_LCD_Transmitter_v1_0_S00_AXI.vhd2default:default2
892default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys20
AXI_I2C_LCD_Transmitter_v1_02default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/e983/hdl/AXI_I2C_LCD_Transmitter_v1_0.vhd2default:default2
522default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys23
System_AXI_I2C_LCD_Transmit_0_02default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_AXI_I2C_LCD_Transmit_0_0/synth/System_AXI_I2C_LCD_Transmit_0_0.vhd2default:default2
852default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2/
System_AXI_PS2_Keyboard_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_AXI_PS2_Keyboard_0_0/synth/System_AXI_PS2_Keyboard_0_0.vhd2default:default2
562default:default2&
AXI_PS2_Keyboard_02default:default2/
System_AXI_PS2_Keyboard_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
18072default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2/
System_AXI_PS2_Keyboard_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_AXI_PS2_Keyboard_0_0/synth/System_AXI_PS2_Keyboard_0_0.vhd2default:default2
892default:default8@Z8-638h px? 
j
%s
*synth2R
>	Parameter C_S00_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter C_S00_AXI_ADDR_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	Parameter PS2_CLK_FREQ bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter PS2_DEBOUNCE_COUNTER_SIZE bound to: 2 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter TIMER_OUTPUT_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
k
%s
*synth2S
?	Parameter TIMER_CLOCK_DIVIDER bound to: 6250 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2)
AXI_PS2_Keyboard_v1_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0.vhd2default:default2
52default:default2
U02default:default2)
AXI_PS2_Keyboard_v1_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_AXI_PS2_Keyboard_0_0/synth/System_AXI_PS2_Keyboard_0_0.vhd2default:default2
1642default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2)
AXI_PS2_Keyboard_v1_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0.vhd2default:default2
592default:default8@Z8-638h px? 
h
%s
*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys21
AXI_PS2_Keyboard_v1_0_S00_AXI2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0_S00_AXI.vhd2default:default2
52default:default26
"AXI_PS2_Keyboard_v1_0_S00_AXI_inst2default:default21
AXI_PS2_Keyboard_v1_0_S00_AXI2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0.vhd2default:default2
1482default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys21
AXI_PS2_Keyboard_v1_0_S00_AXI2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0_S00_AXI.vhd2default:default2
872default:default8@Z8-638h px? 
?
default block is never used226*oasys2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0_S00_AXI.vhd2default:default2
2282default:default8@Z8-226h px? 
?
default block is never used226*oasys2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0_S00_AXI.vhd2default:default2
3582default:default8@Z8-226h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	data_reg02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0_S00_AXI.vhd2default:default2
3532default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	data_reg12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0_S00_AXI.vhd2default:default2
3532default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys21
AXI_PS2_Keyboard_v1_0_S00_AXI2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0_S00_AXI.vhd2default:default2
872default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2,
ps2_keyboard_ascii_timer2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/ps2_keyboard_ascii_timer.vhd2default:default2
282default:default2
ps22default:default2,
ps2_keyboard_ascii_timer2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0.vhd2default:default2
1862default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2,
ps2_keyboard_ascii_timer2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/ps2_keyboard_ascii_timer.vhd2default:default2
582default:default8@Z8-638h px? 
b
%s
*synth2J
6	Parameter OUTPUT_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter CLOCK_DIVIDER bound to: 5000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
timer2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/timer.vhd2default:default2
52default:default2
ps2_timer_02default:default2
timer2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/ps2_keyboard_ascii_timer.vhd2default:default2
1312default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
timer2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/timer.vhd2default:default2
162default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
timer2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/timer.vhd2default:default2
162default:default8@Z8-256h px? 
e
%s
*synth2M
9	Parameter clk_freq bound to: 100000000 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter debounce_counter_size bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
ps2_keyboard2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/ps2_keyboard.vhd2default:default2
262default:default2"
ps2_keyboard_02default:default2 
ps2_keyboard2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/ps2_keyboard_ascii_timer.vhd2default:default2
1352default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
ps2_keyboard2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/ps2_keyboard.vhd2default:default2
382default:default8@Z8-638h px? 
a
%s
*synth2I
5	Parameter counter_size bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
debounce2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/debounce.vhd2default:default2
272default:default2$
debounce_ps2_clk2default:default2
debounce2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/ps2_keyboard.vhd2default:default2
672default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
debounce2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/debounce.vhd2default:default2
362default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
debounce2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/debounce.vhd2default:default2
362default:default8@Z8-256h px? 
a
%s
*synth2I
5	Parameter counter_size bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
debounce2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/debounce.vhd2default:default2
272default:default2%
debounce_ps2_data2default:default2
debounce2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/ps2_keyboard.vhd2default:default2
702default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
ps2_keyboard2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/ps2_keyboard.vhd2default:default2
382default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2,
ps2_keyboard_ascii_timer2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/ps2_keyboard_ascii_timer.vhd2default:default2
582default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2)
AXI_PS2_Keyboard_v1_02default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0.vhd2default:default2
592default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2/
System_AXI_PS2_Keyboard_0_02default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_AXI_PS2_Keyboard_0_0/synth/System_AXI_PS2_Keyboard_0_0.vhd2default:default2
892default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
System_axi_gpio_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_axi_gpio_0_0/synth/System_axi_gpio_0_0.vhd2default:default2
592default:default2

axi_gpio_02default:default2'
System_axi_gpio_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
18382default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2'
System_axi_gpio_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_axi_gpio_0_0/synth/System_axi_gpio_0_0.vhd2default:default2
852default:default8@Z8-638h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_S_AXI_ADDR_WIDTH bound to: 9 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_S_AXI_DATA_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_GPIO_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_GPIO2_WIDTH bound to: 32 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter C_ALL_INPUTS bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_ALL_INPUTS_2 bound to: 0 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_ALL_OUTPUTS bound to: 0 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_ALL_OUTPUTS_2 bound to: 0 - type: integer 
2default:defaulth p
x
? 
h
%s
*synth2P
<	Parameter C_INTERRUPT_PRESENT bound to: 1 - type: integer 
2default:defaulth p
x
? 
v
%s
*synth2^
J	Parameter C_DOUT_DEFAULT bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
? 
u
%s
*synth2]
I	Parameter C_TRI_DEFAULT bound to: 32'b11111111111111111111111111111111 
2default:defaulth p
x
? 
^
%s
*synth2F
2	Parameter C_IS_DUAL bound to: 0 - type: integer 
2default:defaulth p
x
? 
x
%s
*synth2`
L	Parameter C_DOUT_DEFAULT_2 bound to: 32'b00000000000000000000000000000000 
2default:defaulth p
x
? 
w
%s
*synth2_
K	Parameter C_TRI_DEFAULT_2 bound to: 32'b11111111111111111111111111111111 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
axi_gpio2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
12652default:default2
U02default:default2
axi_gpio2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_axi_gpio_0_0/synth/System_axi_gpio_0_0.vhd2default:default2
1712default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
axi_gpio2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
13512default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2!
axi_lite_ipif2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
29482default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2$
slave_attachment2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
23412default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2#
address_decoder2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
17752default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
	pselect_f2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	pselect_f2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2-
pselect_f__parameterized02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
pselect_f__parameterized02default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2-
pselect_f__parameterized12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
pselect_f__parameterized12default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2-
pselect_f__parameterized22default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
pselect_f__parameterized22default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2-
pselect_f__parameterized32default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
pselect_f__parameterized32default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2-
pselect_f__parameterized42default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
pselect_f__parameterized42default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2-
pselect_f__parameterized52default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
pselect_f__parameterized52default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2-
pselect_f__parameterized62default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
pselect_f__parameterized62default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2-
pselect_f__parameterized72default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
pselect_f__parameterized72default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2-
pselect_f__parameterized82default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
pselect_f__parameterized82default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2-
pselect_f__parameterized92default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
pselect_f__parameterized92default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2.
pselect_f__parameterized102default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2.
pselect_f__parameterized102default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2.
pselect_f__parameterized112default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2.
pselect_f__parameterized112default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2.
pselect_f__parameterized122default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2.
pselect_f__parameterized122default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2.
pselect_f__parameterized132default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2.
pselect_f__parameterized132default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2.
pselect_f__parameterized142default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2.
pselect_f__parameterized142default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2.
pselect_f__parameterized152default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2.
pselect_f__parameterized152default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2.
pselect_f__parameterized162default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2.
pselect_f__parameterized162default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2.
pselect_f__parameterized172default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2.
pselect_f__parameterized172default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2.
pselect_f__parameterized182default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2.
pselect_f__parameterized182default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2.
pselect_f__parameterized192default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2.
pselect_f__parameterized192default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2.
pselect_f__parameterized202default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2.
pselect_f__parameterized202default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
15342default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2#
address_decoder2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
17752default:default8@Z8-256h px? 
?
default block is never used226*oasys2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
25502default:default8@Z8-226h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2$
slave_attachment2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
23412default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2!
axi_lite_ipif2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd2default:default2
29482default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2%
interrupt_control2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd2default:default2
2592default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2%
interrupt_control2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd2default:default2
2592default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
	GPIO_Core2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
1782default:default8@Z8-638h px? 
?
default block is never used226*oasys2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
4432default:default8@Z8-226h px? 
?
synthesizing module '%s'638*oasys2
cdc_sync2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
1062default:default8@Z8-638h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys25
!CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7362default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d22default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7722default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d32default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
7882default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d42default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8042default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8212default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2>
*CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
8372default:default8@Z8-113h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
cdc_sync2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
1062default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	GPIO_Core2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
1782default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
axi_gpio2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
13512default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2'
System_axi_gpio_0_02default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_axi_gpio_0_0/synth/System_axi_gpio_0_0.vhd2default:default2
852default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys21
System_processing_system7_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
532default:default2(
processing_system7_02default:default21
System_processing_system7_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
18622default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys21
System_processing_system7_0_02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
532default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2>
*processing_system7_v5_5_processing_system72default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/hdl/verilog/processing_system7_v5_5_processing_system7.v2default:default2
1522default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2K
5F:/Xilinx/Vivado/2022.1/scripts/rt/data/unisim_comp.v2default:default2
10822default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
02default:default2
12default:default2K
5F:/Xilinx/Vivado/2022.1/scripts/rt/data/unisim_comp.v2default:default2
10822default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
BIBUF2default:default2
 2default:default2K
5F:/Xilinx/Vivado/2022.1/scripts/rt/data/unisim_comp.v2default:default2
7292default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BIBUF2default:default2
 2default:default2
02default:default2
12default:default2K
5F:/Xilinx/Vivado/2022.1/scripts/rt/data/unisim_comp.v2default:default2
7292default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
PS72default:default2
 2default:default2K
5F:/Xilinx/Vivado/2022.1/scripts/rt/data/unisim_comp.v2default:default2
911542default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PS72default:default2
 2default:default2
02default:default2
12default:default2K
5F:/Xilinx/Vivado/2022.1/scripts/rt/data/unisim_comp.v2default:default2
911542default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2>
*processing_system7_v5_5_processing_system72default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/hdl/verilog/processing_system7_v5_5_processing_system7.v2default:default2
1522default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
M_AXI_GP0_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
3232default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
M_AXI_GP1_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
3232default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_GP0_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
3232default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_GP1_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
3232default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_ACP_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
3232default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_HP0_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
3232default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_HP1_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
3232default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_HP2_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
3232default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2%
S_AXI_HP3_ARESETN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
3232default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA0_RSTN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
3232default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA1_RSTN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
3232default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA2_RSTN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
3232default:default8@Z8-7071h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	DMA3_RSTN2default:default2>
*processing_system7_v5_5_processing_system72default:default2
inst2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
3232default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
inst2default:default2>
*processing_system7_v5_5_processing_system72default:default2
6852default:default2
6722default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
3232default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
System_processing_system7_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/synth/System_processing_system7_0_0.v2default:default2
532default:default8@Z8-6155h px? 
?
synthesizing module '%s'638*oasys2-
System_ps7_0_axi_periph_32default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
7612default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2,
m00_couplers_imp_1F2O2QF2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
612default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2,
m00_couplers_imp_1F2O2QF2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
612default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2+
m01_couplers_imp_68KJLY2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
1722default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2+
m01_couplers_imp_68KJLY2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
1722default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2+
m02_couplers_imp_HOA56C2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
2792default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2+
m02_couplers_imp_HOA56C2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
2792default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2,
s00_couplers_imp_13UIZPI2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
4032default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2$
System_auto_pc_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_auto_pc_0/synth/System_auto_pc_0.v2default:default2
532default:default2
auto_pc2default:default2$
System_auto_pc_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
5862default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2$
System_auto_pc_02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_auto_pc_0/synth/System_auto_pc_0.v2default:default2
532default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2I
5axi_protocol_converter_v2_1_26_axi_protocol_converter2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
48072default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys26
"axi_protocol_converter_v2_1_26_b2s2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
42252default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2A
-axi_protocol_converter_v2_1_26_b2s_aw_channel2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
39702default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2E
1axi_protocol_converter_v2_1_26_b2s_cmd_translator2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
34632default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2?
+axi_protocol_converter_v2_1_26_b2s_incr_cmd2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
30912default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+axi_protocol_converter_v2_1_26_b2s_incr_cmd2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
30912default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2?
+axi_protocol_converter_v2_1_26_b2s_wrap_cmd2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
29012default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+axi_protocol_converter_v2_1_26_b2s_wrap_cmd2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
29012default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1axi_protocol_converter_v2_1_26_b2s_cmd_translator2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
34632default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-axi_protocol_converter_v2_1_26_b2s_wr_cmd_fsm2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
32232default:default8@Z8-6157h px? 
?
default block is never used226*oasys2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
32772default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axi_protocol_converter_v2_1_26_b2s_wr_cmd_fsm2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
32232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axi_protocol_converter_v2_1_26_b2s_aw_channel2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
39702default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2@
,axi_protocol_converter_v2_1_26_b2s_b_channel2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
36052default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2B
.axi_protocol_converter_v2_1_26_b2s_simple_fifo2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28152default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2B
.axi_protocol_converter_v2_1_26_b2s_simple_fifo2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28152default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_protocol_converter_v2_1_26_b2s_simple_fifo__parameterized02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28152default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_protocol_converter_v2_1_26_b2s_simple_fifo__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28152default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,axi_protocol_converter_v2_1_26_b2s_b_channel2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
36052default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-axi_protocol_converter_v2_1_26_b2s_ar_channel2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
40812default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2A
-axi_protocol_converter_v2_1_26_b2s_rd_cmd_fsm2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
33332default:default8@Z8-6157h px? 
?
default block is never used226*oasys2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
33952default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axi_protocol_converter_v2_1_26_b2s_rd_cmd_fsm2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
33332default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axi_protocol_converter_v2_1_26_b2s_ar_channel2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
40812default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2@
,axi_protocol_converter_v2_1_26_b2s_r_channel2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
38102default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_protocol_converter_v2_1_26_b2s_simple_fifo__parameterized12default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28152default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_protocol_converter_v2_1_26_b2s_simple_fifo__parameterized12default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28152default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_protocol_converter_v2_1_26_b2s_simple_fifo__parameterized22default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28152default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_protocol_converter_v2_1_26_b2s_simple_fifo__parameterized22default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
28152default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2@
,axi_protocol_converter_v2_1_26_b2s_r_channel2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
38102default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-axi_register_slice_v2_1_26_axi_register_slice2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
37252default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys28
$axi_infrastructure_v1_1_0_axi2vector2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$axi_infrastructure_v1_1_0_axi2vector2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys28
$axi_infrastructure_v1_1_0_vector2axi2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
4732default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$axi_infrastructure_v1_1_0_vector2axi2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
4732default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2B
.axi_register_slice_v2_1_26_axic_register_slice2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2B
.axi_register_slice_v2_1_26_axic_register_slice2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized12default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized12default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized22default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized22default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axi_register_slice_v2_1_26_axi_register_slice2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
37252default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2default:default2A
-axi_register_slice_v2_1_26_axi_register_slice2default:default2
SI_REG2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
43922default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
SI_REG2default:default2A
-axi_register_slice_v2_1_26_axi_register_slice2default:default2
932default:default2
922default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
43922default:default8@Z8-7023h px? 
?
synthesizing module '%s'%s4497*oasys2Q
=axi_register_slice_v2_1_26_axi_register_slice__parameterized02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
37252default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2H
4axi_infrastructure_v1_1_0_axi2vector__parameterized02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
592default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2H
4axi_infrastructure_v1_1_0_axi2vector__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
592default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2H
4axi_infrastructure_v1_1_0_vector2axi__parameterized02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
4732default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2H
4axi_infrastructure_v1_1_0_vector2axi__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v2default:default2
4732default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized32default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized32default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized42default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized42default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized52default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized52default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized62default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized62default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2Q
=axi_register_slice_v2_1_26_axi_register_slice__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
37252default:default8@Z8-6155h px? 
?
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
aclk2x2default:default2A
-axi_register_slice_v2_1_26_axi_register_slice2default:default2
MI_REG2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
46472default:default8@Z8-7071h px? 
?
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
MI_REG2default:default2A
-axi_register_slice_v2_1_26_axi_register_slice2default:default2
932default:default2
922default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
46472default:default8@Z8-7023h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"axi_protocol_converter_v2_1_26_b2s2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
42252default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2I
5axi_protocol_converter_v2_1_26_axi_protocol_converter2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
48072default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
System_auto_pc_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_auto_pc_0/synth/System_auto_pc_0.v2default:default2
532default:default8@Z8-6155h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2,
s00_couplers_imp_13UIZPI2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
4032default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2!
System_xbar_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_xbar_0/synth/System_xbar_0.v2default:default2
532default:default2
xbar2default:default2!
System_xbar_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
12682default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2!
System_xbar_02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_xbar_0/synth/System_xbar_0.v2default:default2
532default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys25
!axi_crossbar_v2_1_27_axi_crossbar2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
48832default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys26
"axi_crossbar_v2_1_27_crossbar_sasd2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
12392default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys25
!axi_crossbar_v2_1_27_addr_decoder2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
7932default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2?
+generic_baseblocks_v2_1_0_comparator_static2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21322default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys27
#generic_baseblocks_v2_1_0_carry_and2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
612default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys27
#generic_baseblocks_v2_1_0_carry_and2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
612default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2?
+generic_baseblocks_v2_1_0_comparator_static2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21322default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21322default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21322default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized12default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21322default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2O
;generic_baseblocks_v2_1_0_comparator_static__parameterized12default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
21322default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!axi_crossbar_v2_1_27_addr_decoder2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
7932default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys25
!axi_crossbar_v2_1_27_decerr_slave2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
35002default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!axi_crossbar_v2_1_27_decerr_slave2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
35002default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2:
&axi_crossbar_v2_1_27_addr_arbiter_sasd2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
642default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2:
&axi_crossbar_v2_1_27_addr_arbiter_sasd2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
642default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys21
axi_crossbar_v2_1_27_splitter2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44602default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys21
axi_crossbar_v2_1_27_splitter2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44602default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2A
-axi_crossbar_v2_1_27_splitter__parameterized02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44602default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2A
-axi_crossbar_v2_1_27_splitter__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
44602default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys25
!generic_baseblocks_v2_1_0_mux_enc2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!generic_baseblocks_v2_1_0_mux_enc2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized12default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized12default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized72default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2R
>axi_register_slice_v2_1_26_axic_register_slice__parameterized72default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
14972default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized22default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2E
1generic_baseblocks_v2_1_0_mux_enc__parameterized22default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v2default:default2
24512default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"axi_crossbar_v2_1_27_crossbar_sasd2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
12392default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!axi_crossbar_v2_1_27_axi_crossbar2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
48832default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
System_xbar_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_xbar_0/synth/System_xbar_0.v2default:default2
532default:default8@Z8-6155h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2-
System_ps7_0_axi_periph_32default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
7612default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys26
"System_rst_M_AXI_GP0_ACLK_0_100M_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_rst_M_AXI_GP0_ACLK_0_100M_0/synth/System_rst_M_AXI_GP0_ACLK_0_100M_0.vhd2default:default2
592default:default2-
rst_M_AXI_GP0_ACLK_0_100M2default:default26
"System_rst_M_AXI_GP0_ACLK_0_100M_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
20372default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys26
"System_rst_M_AXI_GP0_ACLK_0_100M_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_rst_M_AXI_GP0_ACLK_0_100M_0/synth/System_rst_M_AXI_GP0_ACLK_0_100M_0.vhd2default:default2
742default:default8@Z8-638h px? 
_
%s
*synth2G
3	Parameter C_FAMILY bound to: zynq - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_EXT_RST_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter C_AUX_RST_WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter C_EXT_RESET_HIGH bound to: 1'b0 
2default:defaulth p
x
? 
X
%s
*synth2@
,	Parameter C_AUX_RESET_HIGH bound to: 1'b0 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter C_NUM_BUS_RST bound to: 1 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter C_NUM_PERP_RST bound to: 1 - type: integer 
2default:defaulth p
x
? 
o
%s
*synth2W
C	Parameter C_NUM_INTERCONNECT_ARESETN bound to: 1 - type: integer 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter C_NUM_PERP_ARESETN bound to: 1 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2"
proc_sys_reset2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
12642default:default2
U02default:default2"
proc_sys_reset2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_rst_M_AXI_GP0_ACLK_0_100M_0/synth/System_rst_M_AXI_GP0_ACLK_0_100M_0.vhd2default:default2
1292default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2"
proc_sys_reset2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
13232default:default8@Z8-638h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b1 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2
	FDRE_inst2default:default2
FDRE2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
13922default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b1 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2
FDRE_BSR2default:default2
FDRE2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
14082default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2

FDRE_BSR_N2default:default2
FDRE2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
14342default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b1 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2
FDRE_PER2default:default2
FDRE2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
14572default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys2

FDRE_PER_N2default:default2
FDRE2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
14812default:default8@Z8-113h px? 
?
synthesizing module '%s'638*oasys2
lpf2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
8162default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
SRL162default:default2I
5F:/Xilinx/Vivado/2022.1/scripts/rt/data/unisim_comp.v2default:default2
1072322default:default2
	POR_SRL_I2default:default2
SRL162default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
8682default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2
SRL162default:default2
 2default:default2K
5F:/Xilinx/Vivado/2022.1/scripts/rt/data/unisim_comp.v2default:default2
1072322default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
SRL162default:default2
 2default:default2
02default:default2
12default:default2K
5F:/Xilinx/Vivado/2022.1/scripts/rt/data/unisim_comp.v2default:default2
1072322default:default8@Z8-6155h px? 
?
synthesizing module '%s'638*oasys2,
cdc_sync__parameterized02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
1062default:default8@Z8-638h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys24
 CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5142default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys29
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d22default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5452default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys29
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d32default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5542default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys29
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d42default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5642default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys29
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5742default:default8@Z8-113h px? 
L
%s
*synth24
 	Parameter INIT bound to: 1'b0 
2default:defaulth p
x
? 
?
,binding component instance '%s' to cell '%s'113*oasys29
%CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62default:default2
FDR2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
5842default:default8@Z8-113h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2,
cdc_sync__parameterized02default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd2default:default2
1062default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
lpf2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
8162default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2 
sequence_psr2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
3012default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
upcnt_n2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
1252default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
upcnt_n2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
1252default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
sequence_psr2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
3012default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
proc_sys_reset2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd2default:default2
13232default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys26
"System_rst_M_AXI_GP0_ACLK_0_100M_02default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_rst_M_AXI_GP0_ACLK_0_100M_0/synth/System_rst_M_AXI_GP0_ACLK_0_100M_0.vhd2default:default2
742default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2#
System_uart_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_uart_0_0/synth/System_uart_0_0.vhd2default:default2
562default:default2
uart_02default:default2#
System_uart_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
20502default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2#
System_uart_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_uart_0_0/synth/System_uart_0_0.vhd2default:default2
692default:default8@Z8-638h px? 
e
%s
*synth2M
9	Parameter clk_freq bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter baud_rate bound to: 115200 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter os_rate bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter d_width bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter parity bound to: 0 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter parity_eo bound to: 1'b0 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	uart_user2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/6307/uart_user.vhd2default:default2
42default:default2
U02default:default2
	uart_user2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_uart_0_0/synth/System_uart_0_0.vhd2default:default2
992default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	uart_user2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/6307/uart_user.vhd2default:default2
262default:default8@Z8-638h px? 
e
%s
*synth2M
9	Parameter clk_freq bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter baud_rate bound to: 115200 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter os_rate bound to: 8 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter d_width bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter parity bound to: 0 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter parity_eo bound to: 1'b0 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
uart2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/6307/uart.vhd2default:default2
282default:default2$
Inst_uart_master2default:default2
uart2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/6307/uart_user.vhd2default:default2
682default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
uart2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/6307/uart.vhd2default:default2
492default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
os_pulse2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/6307/uart.vhd2default:default2
952default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
uart2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/6307/uart.vhd2default:default2
492default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	uart_user2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/6307/uart_user.vhd2default:default2
262default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2#
System_uart_0_02default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_uart_0_0/synth/System_uart_0_0.vhd2default:default2
692default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
System_xlconcat_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_xlconcat_0_0/synth/System_xlconcat_0_0.v2default:default2
532default:default2

xlconcat_02default:default2'
System_xlconcat_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
20612default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2'
System_xlconcat_0_02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_xlconcat_0_0/synth/System_xlconcat_0_0.v2default:default2
532default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2,
xlconcat_v2_1_4_xlconcat2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v2default:default2
142default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
xlconcat_v2_1_4_xlconcat2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v2default:default2
142default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
System_xlconcat_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_xlconcat_0_0/synth/System_xlconcat_0_0.v2default:default2
532default:default8@Z8-6155h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
System_xlconcat_1_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_xlconcat_1_0/synth/System_xlconcat_1_0.v2default:default2
532default:default2

xlconcat_12default:default2'
System_xlconcat_1_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
20672default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2'
System_xlconcat_1_02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_xlconcat_1_0/synth/System_xlconcat_1_0.v2default:default2
532default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v2default:default2
142default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v2default:default2
142default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
System_xlconcat_1_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_xlconcat_1_0/synth/System_xlconcat_1_0.v2default:default2
532default:default8@Z8-6155h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2)
System_xlconstant_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_xlconstant_0_0/synth/System_xlconstant_0_0.v2default:default2
532default:default2 
xlconstant_02default:default2)
System_xlconstant_0_02default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
20732default:default8@Z8-3491h px? 
?
synthesizing module '%s'%s4497*oasys2)
System_xlconstant_0_02default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_xlconstant_0_0/synth/System_xlconstant_0_0.v2default:default2
532default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys20
xlconstant_v1_1_7_xlconstant2default:default2
 2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys20
xlconstant_v1_1_7_xlconstant2default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2)
System_xlconstant_0_02default:default2
 2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_xlconstant_0_0/synth/System_xlconstant_0_0.v2default:default2
532default:default8@Z8-6155h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
System2default:default2
02default:default2
12default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/synth/System.vhd2default:default2
13962default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2"
System_wrapper2default:default2
02default:default2
12default:default2?
?C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/hdl/System_wrapper.vhd2default:default2
522default:default8@Z8-256h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2 
slv_reg0_reg2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0_S00_AXI.vhd2default:default2
2212default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2 
slv_reg1_reg2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0_S00_AXI.vhd2default:default2
2222default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2 
slv_reg3_reg2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/hdl/AXI_PS2_Keyboard_v1_0_S00_AXI.vhd2default:default2
2242default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2F
2Not_Dual.ALLIN1_ND.READ_REG_GEN[0].GPIO_DBus_i_reg2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
3512default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2F
2Not_Dual.ALLIN1_ND.READ_REG_GEN[1].GPIO_DBus_i_reg2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
3512default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2F
2Not_Dual.ALLIN1_ND.READ_REG_GEN[2].GPIO_DBus_i_reg2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
3512default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2F
2Not_Dual.ALLIN1_ND.READ_REG_GEN[3].GPIO_DBus_i_reg2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd2default:default2
3512default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2 
state_r1_reg2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
33832default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2!
s_arlen_r_reg2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v2default:default2
33842default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2@
,gen_debug_trans_seq.debug_aw_trans_seq_i_reg2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
20562default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2@
,gen_debug_trans_seq.debug_ar_trans_seq_i_reg2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
20672default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2>
*gen_debug_trans_seq.debug_w_beat_cnt_i_reg2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
20782default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2>
*gen_debug_trans_seq.debug_r_beat_cnt_i_reg2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v2default:default2
20912default:default8@Z8-6014h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In2[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In3[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In4[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In5[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In6[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In7[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In8[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In9[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In10[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In11[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In12[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In13[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In14[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In15[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In16[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In17[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In18[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In19[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In20[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In21[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In22[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In23[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In24[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In25[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In26[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In27[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In28[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In29[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In30[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In31[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In32[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In33[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In34[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In35[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In36[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In37[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In38[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In39[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In40[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In41[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In42[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In43[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In44[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In45[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In46[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In47[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In48[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In49[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In50[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In51[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In52[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In53[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In54[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In55[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In56[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In57[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In58[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In59[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In60[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In61[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In62[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In63[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In64[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In65[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In66[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In67[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In68[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In69[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In70[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In71[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In72[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In73[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In74[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In75[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In76[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In77[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In78[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In79[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In80[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In81[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In82[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In83[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In84[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In85[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In86[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In87[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In88[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In89[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In90[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In91[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In92[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In93[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In94[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In95[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In96[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In97[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In98[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In99[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In100[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
In101[0]2default:default2<
(xlconcat_v2_1_4_xlconcat__parameterized02default:defaultZ8-7129h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:14 ; elapsed = 00:00:16 . Memory (MB): peak = 1484.484 ; gain = 199.742
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1484.484 ; gain = 199.742
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1484.484 ; gain = 199.742
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.2192default:default2
1484.4842default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
372default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/System_processing_system7_0_0.xdc2default:default28
"System_i/processing_system7_0/inst	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/System_processing_system7_0_0.xdc2default:default28
"System_i/processing_system7_0/inst	2default:default8Z20-847h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/System_processing_system7_0_0.xdc2default:default24
 .Xil/System_wrapper_propImpl.xdc2default:defaultZ1-236h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_rst_M_AXI_GP0_ACLK_0_100M_0/System_rst_M_AXI_GP0_ACLK_0_100M_0_board.xdc2default:default2;
%System_i/rst_M_AXI_GP0_ACLK_0_100M/U0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_rst_M_AXI_GP0_ACLK_0_100M_0/System_rst_M_AXI_GP0_ACLK_0_100M_0_board.xdc2default:default2;
%System_i/rst_M_AXI_GP0_ACLK_0_100M/U0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_rst_M_AXI_GP0_ACLK_0_100M_0/System_rst_M_AXI_GP0_ACLK_0_100M_0.xdc2default:default2;
%System_i/rst_M_AXI_GP0_ACLK_0_100M/U0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_rst_M_AXI_GP0_ACLK_0_100M_0/System_rst_M_AXI_GP0_ACLK_0_100M_0.xdc2default:default2;
%System_i/rst_M_AXI_GP0_ACLK_0_100M/U0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_axi_gpio_0_0/System_axi_gpio_0_0_board.xdc2default:default2,
System_i/axi_gpio_0/U0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_axi_gpio_0_0/System_axi_gpio_0_0_board.xdc2default:default2,
System_i/axi_gpio_0/U0	2default:default8Z20-847h px? 
?
$Parsing XDC File [%s] for cell '%s'
848*designutils2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_axi_gpio_0_0/System_axi_gpio_0_0.xdc2default:default2,
System_i/axi_gpio_0/U0	2default:default8Z20-848h px? 
?
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_axi_gpio_0_0/System_axi_gpio_0_0.xdc2default:default2,
System_i/axi_gpio_0/U0	2default:default8Z20-847h px? 
?
Parsing XDC File [%s]
179*designutils2?
?C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.srcs/constrs_1/new/Zybo_System.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
?C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.srcs/constrs_1/new/Zybo_System.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
?C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.srcs/constrs_1/new/Zybo_System.xdc2default:default24
 .Xil/System_wrapper_propImpl.xdc2default:defaultZ1-236h px? 
?
Parsing XDC File [%s]
179*designutils2?
yC:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.runs/synth_1/dont_touch.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
yC:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.runs/synth_1/dont_touch.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
yC:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.runs/synth_1/dont_touch.xdc2default:default24
 .Xil/System_wrapper_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1501.5592default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2{
g  A total of 37 instances were transformed.
  FDR => FDRE: 36 instances
  SRL16 => SRL16E: 1 instance 
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0382default:default2
1501.5592default:default2
0.0002default:defaultZ17-268h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 1501.559 ; gain = 216.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:24 ; elapsed = 00:00:25 . Memory (MB): peak = 1501.559 ; gain = 216.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:24 ; elapsed = 00:00:26 . Memory (MB): peak = 1501.559 ; gain = 216.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2

i2c_master2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2,
ps2_keyboard_ascii_timer2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2$
slave_attachment2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2A
-axi_protocol_converter_v2_1_26_b2s_wr_cmd_fsm2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2A
-axi_protocol_converter_v2_1_26_b2s_rd_cmd_fsm2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2"
next_state_reg2default:default2
	uart_user2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                   ready |                        000000001 |                             0000
2default:defaulth p
x
? 
?
%s
*synth2s
_                   start |                        000000010 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 command |                        000000100 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2s
_                slv_ack1 |                        000001000 |                             0011
2default:defaulth p
x
? 
?
%s
*synth2s
_                      wr |                        000010000 |                             0100
2default:defaulth p
x
? 
?
%s
*synth2s
_                slv_ack2 |                        000100000 |                             0110
2default:defaulth p
x
? 
?
%s
*synth2s
_                      rd |                        001000000 |                             0101
2default:defaulth p
x
? 
?
%s
*synth2s
_                mstr_ack |                        010000000 |                             0111
2default:defaulth p
x
? 
?
%s
*synth2s
_                    stop |                        100000000 |                             1000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2

i2c_master2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                   ready |                              000 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                new_code |                              001 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_               translate |                              010 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_          done_translate |                              011 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                  output |                              100 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2,
ps2_keyboard_ascii_timer2default:defaultZ8-3354h px? 
?
!inferring latch for variable '%s'327*oasys2!
timer_reg_reg2default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/abad/src/ps2_keyboard_ascii_timer.vhd2default:default2
1132default:default8@Z8-327h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE2 |                             0001 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                             0010 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE0 |                             0100 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                 iSTATE1 |                             1000 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2$
slave_attachment2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 SM_IDLE |                               01 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_               SM_CMD_EN |                               11 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_         SM_CMD_ACCEPTED |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_            SM_DONE_WAIT |                               00 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2A
-axi_protocol_converter_v2_1_26_b2s_wr_cmd_fsm2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                 SM_IDLE |                               01 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_               SM_CMD_EN |                               11 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_         SM_CMD_ACCEPTED |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                 SM_DONE |                               00 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2A
-axi_protocol_converter_v2_1_26_b2s_rd_cmd_fsm2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                   start |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                   ready |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                 write_0 |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
next_state_reg2default:default2

sequential2default:default2
	uart_user2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1501.559 ; gain = 216.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 3     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit         XORs := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      1 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               66 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               64 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               47 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               36 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 17    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               14 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 21    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 155   
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   66 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   64 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   47 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   36 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 25    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  10 Input   32 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   14 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   10 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    9 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 15    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 17    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  22 Input    8 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  35 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  27 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  34 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 28    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 11    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 24    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  33 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 152   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input    1 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 23    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2_
Kinst/gen_axilite.gen_b2s_conv.axilite_b2s/SI_REG/aw.aw_pipe/m_payload_i_reg2default:default2
662default:default2
622default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
17312default:default8@Z8-3936h px?
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2_
Kinst/gen_axilite.gen_b2s_conv.axilite_b2s/SI_REG/ar.ar_pipe/m_payload_i_reg2default:default2
662default:default2
622default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
17312default:default8@Z8-3936h px?
?
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2M
9inst/gen_sasd.crossbar_sasd_0/reg_slice_r/m_payload_i_reg2default:default2
362default:default2
352default:default2?
?c:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v2default:default2
17312default:default8@Z8-3936h px?
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2?
?gpio_core_1/Not_Dual.INPUT_DOUBLE_REGS3/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px?
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2?
?gpio_core_1/Not_Dual.INPUT_DOUBLE_REGS3/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px?
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2?
?gpio_core_1/Not_Dual.INPUT_DOUBLE_REGS3/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px?
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2?
?gpio_core_1/Not_Dual.INPUT_DOUBLE_REGS3/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d5[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d52default:default2
axi_gpio2default:defaultZ8-3332h px?
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2?
?gpio_core_1/Not_Dual.INPUT_DOUBLE_REGS3/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px?
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2?
?gpio_core_1/Not_Dual.INPUT_DOUBLE_REGS3/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px?
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2?
?gpio_core_1/Not_Dual.INPUT_DOUBLE_REGS3/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[2].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px?
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2?
?gpio_core_1/Not_Dual.INPUT_DOUBLE_REGS3/GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d6[3].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d62default:default2
axi_gpio2default:defaultZ8-3332h px?
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2}
iEXT_LPF/ACTIVE_LOW_EXT.ACT_LO_EXT/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52default:default2"
proc_sys_reset2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2}
iEXT_LPF/ACTIVE_LOW_EXT.ACT_LO_EXT/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62default:default2"
proc_sys_reset2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2x
dEXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_IN_cdc_to2default:default2"
proc_sys_reset2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2}
iEXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d22default:default2"
proc_sys_reset2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2}
iEXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d32default:default2"
proc_sys_reset2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2}
iEXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d42default:default2"
proc_sys_reset2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2}
iEXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d52default:default2"
proc_sys_reset2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2}
iEXT_LPF/ACTIVE_LOW_AUX.ACT_LO_AUX/GENERATE_LEVEL_P_S_CDC.SINGLE_BIT.CROSS_PLEVEL_IN2SCNDRY_s_level_out_d62default:default2"
proc_sys_reset2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
	FDRE_inst2default:default2"
proc_sys_reset2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2+
BSR_OUT_DFF[0].FDRE_BSR2default:default2"
proc_sys_reset2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys28
$ACTIVE_LOW_BSR_OUT_DFF[0].FDRE_BSR_N2default:default2"
proc_sys_reset2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
PR_OUT_DFF[0].FDRE_PER2default:default2"
proc_sys_reset2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:35 ; elapsed = 00:00:38 . Memory (MB): peak = 1501.559 ; gain = 216.816
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:41 ; elapsed = 00:00:43 . Memory (MB): peak = 1525.691 ; gain = 240.949
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:44 ; elapsed = 00:00:46 . Memory (MB): peak = 1572.020 ; gain = 287.277
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2l
XU0/AXI_I2C_LCD_Transmitter_v1_0_S00_AXI_inst/lcd/Inst_i2c_master/FSM_onehot_state_reg[7]2default:default23
System_AXI_I2C_LCD_Transmit_0_02default:defaultZ8-3332h px?
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2l
XU0/AXI_I2C_LCD_Transmitter_v1_0_S00_AXI_inst/lcd/Inst_i2c_master/FSM_onehot_state_reg[6]2default:default23
System_AXI_I2C_LCD_Transmit_0_02default:defaultZ8-3332h px?
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:45 ; elapsed = 00:00:47 . Memory (MB): peak = 1586.988 ; gain = 302.246
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:49 ; elapsed = 00:00:51 . Memory (MB): peak = 1586.988 ; gain = 302.246
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:49 ; elapsed = 00:00:51 . Memory (MB): peak = 1586.988 ; gain = 302.246
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:49 ; elapsed = 00:00:51 . Memory (MB): peak = 1586.988 ; gain = 302.246
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:49 ; elapsed = 00:00:51 . Memory (MB): peak = 1586.988 ; gain = 302.246
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:49 ; elapsed = 00:00:51 . Memory (MB): peak = 1586.988 ; gain = 302.246
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:49 ; elapsed = 00:00:51 . Memory (MB): peak = 1586.988 ; gain = 302.246
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 
Dynamic Shift Register Report:
2default:defaulth p
x
? 
?
%s
*synth2x
d+------------+----------------+--------+------------+--------+---------+--------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2y
e|Module Name | RTL Name       | Length | Data Width | SRL16E | SRLC32E | Mux F7 | Mux F8 | Mux F9 | 
2default:defaulth p
x
? 
?
%s
*synth2x
d+------------+----------------+--------+------------+--------+---------+--------+--------+--------+
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl        | memory_reg[3]  | 20     | 20         | 20     | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__1     | memory_reg[3]  | 2      | 2          | 2      | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__2     | memory_reg[31] | 34     | 34         | 0      | 34      | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__3     | memory_reg[31] | 13     | 13         | 0      | 13      | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__4     | memory_reg[3]  | 20     | 20         | 20     | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e|dsrl__5     | memory_reg[3]  | 2      | 2          | 2      | 0       | 0      | 0      | 0      | 
2default:defaulth p
x
? 
?
%s
*synth2y
e+------------+----------------+--------+------------+--------+---------+--------+--------+--------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
E
%s*synth2-
|1     |BIBUF   |   130|
2default:defaulth px? 
E
%s*synth2-
|2     |BUFG    |     4|
2default:defaulth px? 
E
%s*synth2-
|3     |CARRY4  |    50|
2default:defaulth px? 
E
%s*synth2-
|4     |LUT1    |    53|
2default:defaulth px? 
E
%s*synth2-
|5     |LUT2    |   120|
2default:defaulth px? 
E
%s*synth2-
|6     |LUT3    |   309|
2default:defaulth px? 
E
%s*synth2-
|7     |LUT4    |   184|
2default:defaulth px? 
E
%s*synth2-
|8     |LUT5    |   224|
2default:defaulth px? 
E
%s*synth2-
|9     |LUT6    |   530|
2default:defaulth px? 
E
%s*synth2-
|10    |MUXF7   |    56|
2default:defaulth px? 
E
%s*synth2-
|11    |MUXF8   |     6|
2default:defaulth px? 
E
%s*synth2-
|12    |PS7     |     1|
2default:defaulth px? 
E
%s*synth2-
|13    |SRL16   |     1|
2default:defaulth px? 
E
%s*synth2-
|14    |SRL16E  |    18|
2default:defaulth px? 
E
%s*synth2-
|15    |SRLC32E |    47|
2default:defaulth px? 
E
%s*synth2-
|16    |FDCE    |   100|
2default:defaulth px? 
E
%s*synth2-
|17    |FDPE    |     8|
2default:defaulth px? 
E
%s*synth2-
|18    |FDR     |    20|
2default:defaulth px? 
E
%s*synth2-
|19    |FDRE    |  1267|
2default:defaulth px? 
E
%s*synth2-
|20    |FDSE    |    34|
2default:defaulth px? 
E
%s*synth2-
|21    |LD      |    32|
2default:defaulth px? 
E
%s*synth2-
|22    |IBUF    |     9|
2default:defaulth px? 
E
%s*synth2-
|23    |IOBUF   |     1|
2default:defaulth px? 
E
%s*synth2-
|24    |OBUF    |     9|
2default:defaulth px? 
E
%s*synth2-
|25    |OBUFT   |     1|
2default:defaulth px? 
E
%s*synth2-
+------+--------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:49 ; elapsed = 00:00:51 . Memory (MB): peak = 1586.988 ; gain = 302.246
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 182 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:30 ; elapsed = 00:00:48 . Memory (MB): peak = 1586.988 ; gain = 285.172
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:49 ; elapsed = 00:00:52 . Memory (MB): peak = 1586.988 ; gain = 302.246
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.1212default:default2
1586.9882default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1662default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1598.3632default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 54 instances were transformed.
  FDR => FDRE: 20 instances
  IOBUF => IOBUF (IBUF, OBUFT): 1 instance 
  LD => LDCE: 32 instances
  SRL16 => SRL16E: 1 instance 
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
904862882default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
3572default:default2
1512default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:552default:default2
00:00:572default:default2
1598.3632default:default2
313.6212default:defaultZ17-268h px? 
?
4The following parameters have non-default value.
%s
395*common24
 tcl.collectionResultDisplayLimit2default:defaultZ17-600h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
}C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.runs/synth_1/System_wrapper.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
rExecuting : report_utilization -file System_wrapper_utilization_synth.rpt -pb System_wrapper_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Dec 14 21:15:53 20222default:defaultZ17-206h px? 


End Record