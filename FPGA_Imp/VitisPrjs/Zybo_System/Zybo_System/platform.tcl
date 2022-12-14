# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_System/Zybo_System/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_System/Zybo_System/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Zybo_System}\
-hw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.xsa}\
-out {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VitisPrjs/Zybo_System}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {Zybo_System}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.xsa}
platform generate -domains 
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.xsa}
platform generate -domains 
platform active {Zybo_System}
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.xsa}
platform generate -domains 
platform active {Zybo_System}
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.xsa}
platform generate -domains 
platform active {Zybo_System}
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.xsa}
platform generate -domains 
platform active {Zybo_System}
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.xsa}
platform generate -domains 
platform active {Zybo_System}
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.xsa}
platform generate -domains 
platform active {Zybo_System}
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.xsa}
platform generate
platform config -updatehw {/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.xsa}
platform generate -domains 
