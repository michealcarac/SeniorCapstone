# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_Keyboard/Zybo_Keyboard_system/_ide/scripts/systemdebugger_zybo_keyboard_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_Keyboard/Zybo_Keyboard_system/_ide/scripts/systemdebugger_zybo_keyboard_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351B481DFA" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351B481DFA-23727093-0"}
fpga -file /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_Keyboard/Zybo_Keyboard_app/_ide/bitstream/Zybo_Keyboard.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_Keyboard/Zybo_Keyboard/export/Zybo_Keyboard/hw/Zybo_Keyboard.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_Keyboard/Zybo_Keyboard_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_Keyboard/Zybo_Keyboard_app/Debug/Zybo_Keyboard_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
