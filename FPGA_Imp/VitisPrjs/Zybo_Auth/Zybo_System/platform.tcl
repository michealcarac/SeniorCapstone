# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\spixy\Documents\00_Github\SeniorCapstone\FPGA_Imp\VitisPrjs\Zybo_Auth\Zybo_System\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\spixy\Documents\00_Github\SeniorCapstone\FPGA_Imp\VitisPrjs\Zybo_Auth\Zybo_System\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Zybo_System}\
-hw {C:\Users\spixy\Documents\00_Github\SeniorCapstone\FPGA_Imp\VivadoPrjs\Zybo_System\Zybo_System.xsa}\
-no-boot-bsp -out {C:/Users/spixy/Documents/00_Github/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_Auth}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {Zybo_System}
platform generate -quick
platform generate
