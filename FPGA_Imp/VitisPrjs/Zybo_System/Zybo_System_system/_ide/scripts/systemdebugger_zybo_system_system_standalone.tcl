# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\spixy\Documents\00_Github\SeniorCapstone\FPGA_Imp\VitisPrjs\Zybo_System\Zybo_System_system\_ide\scripts\systemdebugger_zybo_system_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\spixy\Documents\00_Github\SeniorCapstone\FPGA_Imp\VitisPrjs\Zybo_System\Zybo_System_system\_ide\scripts\systemdebugger_zybo_system_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351B481DFA" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351B481DFA-23727093-0"}
fpga -file C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_System/Zybo_System_app/_ide/bitstream/Zybo_System.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_System/Zybo_System/export/Zybo_System/hw/Zybo_System.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_System/Zybo_System_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_System/Zybo_System_app/Debug/Zybo_System_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
