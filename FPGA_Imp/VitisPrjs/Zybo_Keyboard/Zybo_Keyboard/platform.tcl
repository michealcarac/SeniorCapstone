# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_Keyboard/Zybo_Keyboard/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_Keyboard/Zybo_Keyboard/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Zybo_Keyboard}\
-hw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_Keyboard/Zybo_Keyboard.xsa}\
-out {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_Keyboard}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {Zybo_Keyboard}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform active {Zybo_Keyboard}
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_Keyboard/Zybo_Keyboard.xsa}
platform generate
platform active {Zybo_Keyboard}
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_Keyboard/Zybo_Keyboard.xsa}
platform generate -domains 
platform active {Zybo_Keyboard}
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_Keyboard/Zybo_Keyboard.xsa}
platform generate -domains 
platform active {Zybo_Keyboard}
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_Keyboard/Zybo_Keyboard.xsa}
platform generate -domains 
