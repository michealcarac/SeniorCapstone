# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: new/Zybo_LCD.xdc

# Block Designs: bd/LCD/LCD.bd
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==LCD || ORIG_REF_NAME==LCD} -quiet] -quiet

# IP: bd/LCD/ip/LCD_processing_system7_0_0/LCD_processing_system7_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==LCD_processing_system7_0_0 || ORIG_REF_NAME==LCD_processing_system7_0_0} -quiet] -quiet

# IP: bd/LCD/ip/LCD_ps7_0_axi_periph_0/LCD_ps7_0_axi_periph_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==LCD_ps7_0_axi_periph_0 || ORIG_REF_NAME==LCD_ps7_0_axi_periph_0} -quiet] -quiet

# IP: bd/LCD/ip/LCD_rst_sysclk_100Mhz_100M_0/LCD_rst_sysclk_100Mhz_100M_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==LCD_rst_sysclk_100Mhz_100M_0 || ORIG_REF_NAME==LCD_rst_sysclk_100Mhz_100M_0} -quiet] -quiet

# IP: bd/LCD/ip/LCD_AXI_I2C_LCD_Transmit_0_0/LCD_AXI_I2C_LCD_Transmit_0_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==LCD_AXI_I2C_LCD_Transmit_0_0 || ORIG_REF_NAME==LCD_AXI_I2C_LCD_Transmit_0_0} -quiet] -quiet

# IP: bd/LCD/ip/LCD_auto_pc_0/LCD_auto_pc_0.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==LCD_auto_pc_0 || ORIG_REF_NAME==LCD_auto_pc_0} -quiet] -quiet

# XDC: /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_LCD/Zybo_LCD.gen/sources_1/bd/LCD/ip/LCD_processing_system7_0_0/LCD_processing_system7_0_0.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==LCD_processing_system7_0_0 || ORIG_REF_NAME==LCD_processing_system7_0_0} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_LCD/Zybo_LCD.gen/sources_1/bd/LCD/ip/LCD_rst_sysclk_100Mhz_100M_0/LCD_rst_sysclk_100Mhz_100M_0_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==LCD_rst_sysclk_100Mhz_100M_0 || ORIG_REF_NAME==LCD_rst_sysclk_100Mhz_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_LCD/Zybo_LCD.gen/sources_1/bd/LCD/ip/LCD_rst_sysclk_100Mhz_100M_0/LCD_rst_sysclk_100Mhz_100M_0.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==LCD_rst_sysclk_100Mhz_100M_0 || ORIG_REF_NAME==LCD_rst_sysclk_100Mhz_100M_0} -quiet] {/U0 } ]/U0 ] -quiet] -quiet

# XDC: /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_LCD/Zybo_LCD.gen/sources_1/bd/LCD/ip/LCD_auto_pc_0/LCD_auto_pc_0_ooc.xdc

# XDC: /home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_LCD/Zybo_LCD.gen/sources_1/bd/LCD/LCD_ooc.xdc
