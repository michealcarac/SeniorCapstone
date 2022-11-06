# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/cekp/Desktop/GitHub/SeniorCapstone/VitisPrjs/Zybo_LCD/Zybo_LCD/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/cekp/Desktop/GitHub/SeniorCapstone/VitisPrjs/Zybo_LCD/Zybo_LCD/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Zybo_LCD}\
-hw {/home/cekp/Desktop/GitHub/SeniorCapstone/VivadoPrjs/Zybo_Imp/Zybo_LCD.xsa}\
-out {/home/cekp/Desktop/GitHub/SeniorCapstone/VitisPrjs/Zybo_LCD}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {Zybo_LCD}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/VivadoPrjs/Zybo_Imp/Zybo_LCD.xsa}
platform generate -domains 
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/VivadoPrjs/Zybo_Imp/Zybo_LCD.xsa}
platform generate -domains 
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {Zybo_LCD}
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone_ZyboDev/VivadoPrjs/Zybo_LCD/Zybo_LCD.xsa}
platform generate -domains 
