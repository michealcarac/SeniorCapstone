
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/utils_1/imports/synth_1/top_level.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/utils_1/imports/synth_1/top_level.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
v
Command: %s
53*	vivadotcl2E
1synth_design -top top_level -part xc7z020clg400-12default:defaultZ4-113h px? 
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
42default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
a
#Helper process launched with PID %s4824*oasys2
5237572default:defaultZ8-7075h px? 
?
%s*synth2?
?Starting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 2903.387 ; gain = 0.000 ; free physical = 1114 ; free virtual = 2581
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
	top_level2default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/top_level.vhd2default:default2
162default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2)
ps2_keyboard_to_ascii2default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/ps2_keyboard_to_ascii.vhd2default:default2
262default:default2!
Inst_keyboard2default:default2)
ps2_keyboard_to_ascii2default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/top_level.vhd2default:default2
672default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2)
ps2_keyboard_to_ascii2default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/ps2_keyboard_to_ascii.vhd2default:default2
382default:default8@Z8-638h px? 
e
%s
*synth2M
9	Parameter clk_freq bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter ps2_debounce_counter_size bound to: 2 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter clk_freq bound to: 125000000 - type: integer 
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
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/ps2_keyboard.vhd2default:default2
262default:default2"
ps2_keyboard_02default:default2 
ps2_keyboard2default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/ps2_keyboard_to_ascii.vhd2default:default2
692default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
ps2_keyboard2default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/ps2_keyboard.vhd2default:default2
382default:default8@Z8-638h px? 
e
%s
*synth2M
9	Parameter clk_freq bound to: 125000000 - type: integer 
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
/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/debounce.vhd2default:default2
272default:default2$
debounce_ps2_clk2default:default2
debounce2default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/ps2_keyboard.vhd2default:default2
672default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
debounce2default:default2?
/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/debounce.vhd2default:default2
362default:default8@Z8-638h px? 
a
%s
*synth2I
5	Parameter counter_size bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
debounce2default:default2
02default:default2
12default:default2?
/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/debounce.vhd2default:default2
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
/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/debounce.vhd2default:default2
272default:default2%
debounce_ps2_data2default:default2
debounce2default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/ps2_keyboard.vhd2default:default2
702default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
ps2_keyboard2default:default2
02default:default2
12default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/ps2_keyboard.vhd2default:default2
382default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2)
ps2_keyboard_to_ascii2default:default2
02default:default2
12default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/ps2_keyboard_to_ascii.vhd2default:default2
382default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	uart_user2default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/uart_user.vhd2default:default2
42default:default2
	Inst_Uart2default:default2
	Uart_User2default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/top_level.vhd2default:default2
762default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	uart_user2default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/uart_user.vhd2default:default2
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
]
%s
*synth2E
1	Parameter os_rate bound to: 16 - type: integer 
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
]
%s
*synth2E
1	Parameter os_rate bound to: 16 - type: integer 
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
{/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/uart.vhd2default:default2
282default:default2$
Inst_uart_master2default:default2
uart2default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/uart_user.vhd2default:default2
682default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
uart2default:default2?
{/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/uart.vhd2default:default2
492default:default8@Z8-638h px? 
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
]
%s
*synth2E
1	Parameter os_rate bound to: 16 - type: integer 
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
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
os_pulse2default:default2?
{/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/uart.vhd2default:default2
952default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
uart2default:default2
02default:default2
12default:default2?
{/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/uart.vhd2default:default2
492default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	uart_user2default:default2
02default:default2
12default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/uart_user.vhd2default:default2
262default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	top_level2default:default2
02default:default2
12default:default2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/sources_1/imports/test/top_level.vhd2default:default2
162default:default8@Z8-256h px? 
?
%s*synth2?
?Finished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 2903.387 ; gain = 0.000 ; free physical = 1243 ; free virtual = 2711
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2903.387 ; gain = 0.000 ; free physical = 1245 ; free virtual = 2713
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 2903.387 ; gain = 0.000 ; free physical = 1245 ; free virtual = 2713
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:002default:default2
2903.3872default:default2
0.0002default:default2
12422default:default2
27102default:defaultZ17-722h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/constrs_1/imports/new/Zybo_System.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/constrs_1/imports/new/Zybo_System.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
?/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.srcs/constrs_1/imports/new/Zybo_System.xdc2default:default2/
.Xil/top_level_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2967.4182default:default2
0.0002default:default2
11552default:default2
26232default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2
00:00:00.012default:default2
2967.4182default:default2
0.0002default:default2
11552default:default2
26232default:defaultZ17-722h px? 
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
?Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1222 ; free virtual = 2690
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1222 ; free virtual = 2690
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:12 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1222 ; free virtual = 2690
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
	state_reg2default:default2)
ps2_keyboard_to_ascii2default:defaultZ8-802h px? 
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
_                   ready |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                new_code |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_               translate |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                  output |                               11 |                               11
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

sequential2default:default2)
ps2_keyboard_to_ascii2default:defaultZ8-3354h px? 
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
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1211 ; free virtual = 2680
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
,	   2 Input   11 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 2     
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
.	   2 Input      1 Bit         XORs := 2     
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
.	               11 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 25    
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
,	   2 Input    9 Bit        Muxes := 1     
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
,	   2 Input    8 Bit        Muxes := 12    
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
,	   4 Input    8 Bit        Muxes := 2     
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
,	   2 Input    4 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    3 Bit        Muxes := 1     
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
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 4     
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
,	   5 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 22    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 6     
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1192 ; free virtual = 2665
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:19 ; elapsed = 00:00:21 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1075 ; free virtual = 2548
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
?Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1067 ; free virtual = 2540
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:00:20 ; elapsed = 00:00:21 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1066 ; free virtual = 2539
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
?Finished IO Insertion : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1079 ; free virtual = 2552
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1079 ; free virtual = 2552
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1079 ; free virtual = 2552
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1079 ; free virtual = 2552
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1079 ; free virtual = 2552
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1079 ; free virtual = 2552
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
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |     4|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     3|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    10|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    14|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    27|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |    18|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |    81|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |    15|
2default:defaulth px? 
D
%s*synth2,
|10    |MUXF8  |     2|
2default:defaulth px? 
D
%s*synth2,
|11    |FDCE   |    17|
2default:defaulth px? 
D
%s*synth2,
|12    |FDPE   |     2|
2default:defaulth px? 
D
%s*synth2,
|13    |FDRE   |    88|
2default:defaulth px? 
D
%s*synth2,
|14    |IBUF   |     4|
2default:defaulth px? 
D
%s*synth2,
|15    |OBUF   |     1|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1079 ; free virtual = 2552
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 2967.418 ; gain = 0.000 ; free physical = 1137 ; free virtual = 2611
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 2967.418 ; gain = 64.031 ; free physical = 1137 ; free virtual = 2611
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2967.4182default:default2
0.0002default:default2
12232default:default2
26962default:defaultZ17-722h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
212default:defaultZ29-17h px? 
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
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2967.4182default:default2
0.0002default:default2
11692default:default2
26432default:defaultZ17-722h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
6034f6cc2default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
432default:default2
22default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:312default:default2
00:00:292default:default2
2967.4182default:default2
64.0312default:default2
13772default:default2
28502default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
q/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/KeyboardUart/KeyboardUart.runs/synth_1/top_level.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2|
hExecuting : report_utilization -file top_level_utilization_synth.rpt -pb top_level_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Nov 26 07:53:26 20222default:defaultZ17-206h px? 


End Record