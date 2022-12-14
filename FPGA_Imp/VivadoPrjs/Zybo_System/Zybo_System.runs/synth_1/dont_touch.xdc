# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: new/Zybo_System.xdc

# Block Designs: bd/System/System.bd
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==System || ORIG_REF_NAME==System} -quiet] -quiet

# IP: bd/System/ip/System_processing_system7_0_0/System_processing_system7_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==System_processing_system7_0_0 || ORIG_REF_NAME==System_processing_system7_0_0} -quiet] -quiet

# IP: bd/System/ip/System_xbar_0/System_xbar_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==System_xbar_0 || ORIG_REF_NAME==System_xbar_0} -quiet] -quiet

# IP: bd/System/ip/System_ps7_0_axi_periph_3/System_ps7_0_axi_periph_3.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==System_ps7_0_axi_periph_3 || ORIG_REF_NAME==System_ps7_0_axi_periph_3} -quiet] -quiet

# IP: bd/System/ip/System_rst_M_AXI_GP0_ACLK_0_100M_0/System_rst_M_AXI_GP0_ACLK_0_100M_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==System_rst_M_AXI_GP0_ACLK_0_100M_0 || ORIG_REF_NAME==System_rst_M_AXI_GP0_ACLK_0_100M_0} -quiet] -quiet

# IP: bd/System/ip/System_uart_0_0/System_uart_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==System_uart_0_0 || ORIG_REF_NAME==System_uart_0_0} -quiet] -quiet

# IP: bd/System/ip/System_xlconcat_0_0/System_xlconcat_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==System_xlconcat_0_0 || ORIG_REF_NAME==System_xlconcat_0_0} -quiet] -quiet

# IP: bd/System/ip/System_xlconstant_0_0/System_xlconstant_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==System_xlconstant_0_0 || ORIG_REF_NAME==System_xlconstant_0_0} -quiet] -quiet

# IP: bd/System/ip/System_axi_gpio_0_0/System_axi_gpio_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==System_axi_gpio_0_0 || ORIG_REF_NAME==System_axi_gpio_0_0} -quiet] -quiet

# IP: bd/System/ip/System_xlconcat_1_0/System_xlconcat_1_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==System_xlconcat_1_0 || ORIG_REF_NAME==System_xlconcat_1_0} -quiet] -quiet

# IP: bd/System/ip/System_AXI_I2C_LCD_Transmit_0_0/System_AXI_I2C_LCD_Transmit_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==System_AXI_I2C_LCD_Transmit_0_0 || ORIG_REF_NAME==System_AXI_I2C_LCD_Transmit_0_0} -quiet] -quiet

# IP: bd/System/ip/System_AXI_PS2_Keyboard_0_0/System_AXI_PS2_Keyboard_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==System_AXI_PS2_Keyboard_0_0 || ORIG_REF_NAME==System_AXI_PS2_Keyboard_0_0} -quiet] -quiet

# IP: bd/System/ip/System_auto_pc_0/System_auto_pc_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==System_auto_pc_0 || ORIG_REF_NAME==System_auto_pc_0} -quiet] -quiet

# XDC: /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_processing_system7_0_0/System_processing_system7_0_0.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==System_processing_system7_0_0 || ORIG_REF_NAME==System_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_rst_M_AXI_GP0_ACLK_0_100M_0/System_rst_M_AXI_GP0_ACLK_0_100M_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==System_rst_M_AXI_GP0_ACLK_0_100M_0 || ORIG_REF_NAME==System_rst_M_AXI_GP0_ACLK_0_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_rst_M_AXI_GP0_ACLK_0_100M_0/System_rst_M_AXI_GP0_ACLK_0_100M_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==System_rst_M_AXI_GP0_ACLK_0_100M_0 || ORIG_REF_NAME==System_rst_M_AXI_GP0_ACLK_0_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_axi_gpio_0_0/System_axi_gpio_0_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==System_axi_gpio_0_0 || ORIG_REF_NAME==System_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_axi_gpio_0_0/System_axi_gpio_0_0_ooc.xdc

# XDC: /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_axi_gpio_0_0/System_axi_gpio_0_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==System_axi_gpio_0_0 || ORIG_REF_NAME==System_axi_gpio_0_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/ip/System_auto_pc_0/System_auto_pc_0_ooc.xdc

# XDC: /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_System/Zybo_System.gen/sources_1/bd/System/System_ooc.xdc
