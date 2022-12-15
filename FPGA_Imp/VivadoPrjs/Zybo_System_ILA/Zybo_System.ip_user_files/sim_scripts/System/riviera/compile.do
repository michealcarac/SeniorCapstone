vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_12
vlib riviera/processing_system7_vip_v1_0_14
vlib riviera/xil_defaultlib
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_register_slice_v2_1_26
vlib riviera/fifo_generator_v13_2_7
vlib riviera/axi_data_fifo_v2_1_25
vlib riviera/axi_crossbar_v2_1_27
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xlconcat_v2_1_4
vlib riviera/xlconstant_v1_1_7
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_28
vlib riviera/axi_protocol_converter_v2_1_26

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 riviera/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 riviera/processing_system7_vip_v1_0_14
vmap xil_defaultlib riviera/xil_defaultlib
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 riviera/axi_register_slice_v2_1_26
vmap fifo_generator_v13_2_7 riviera/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 riviera/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 riviera/axi_crossbar_v2_1_27
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_28 riviera/axi_gpio_v2_0_28
vmap axi_protocol_converter_v2_1_26 riviera/axi_protocol_converter_v2_1_26

vlog -work xilinx_vip  -sv2k12 "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"F:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"F:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"F:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"F:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"F:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"F:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"F:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"F:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"F:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"F:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"F:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14  -sv2k12 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/System/ip/System_processing_system7_0_0/sim/System_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/System/ip/System_xbar_0/sim/System_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/System/ip/System_rst_M_AXI_GP0_ACLK_0_100M_0/sim/System_rst_M_AXI_GP0_ACLK_0_100M_0.vhd" \
"../../../bd/System/ipshared/6307/uart.vhd" \
"../../../bd/System/ipshared/6307/uart_user.vhd" \
"../../../bd/System/ip/System_uart_0_0/sim/System_uart_0_0.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/System/ip/System_xlconcat_0_0/sim/System_xlconcat_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/System/ip/System_xlconstant_0_0/sim/System_xlconstant_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_28 -93 \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/System/ip/System_axi_gpio_0_0/sim/System_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/System/ip/System_xlconcat_1_0/sim/System_xlconcat_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/System/ip/System_ila_0_0/sim/System_ila_0_0.vhd" \
"../../../bd/System/ipshared/0d35/hdl/AXI_PS2_Keyboard_DEBUG_v1_0_S00_AXI.vhd" \
"../../../bd/System/ipshared/0d35/src/debounce.vhd" \
"../../../bd/System/ipshared/0d35/src/ps2_keyboard.vhd" \
"../../../bd/System/ipshared/0d35/src/ps2_keyboard_ascii_timer.vhd" \
"../../../bd/System/ipshared/0d35/src/timer.vhd" \
"../../../bd/System/ipshared/0d35/hdl/AXI_PS2_Keyboard_DEBUG_v1_0.vhd" \
"../../../bd/System/ip/System_AXI_PS2_Keyboard_DEB_0_0/sim/System_AXI_PS2_Keyboard_DEB_0_0.vhd" \
"../../../bd/System/ipshared/e983/hdl/AXI_I2C_LCD_Transmitter_v1_0_S00_AXI.vhd" \
"../../../bd/System/ipshared/e983/src/I2C_Master.vhd" \
"../../../bd/System/ipshared/e983/src/i2c_user_lcd.vhd" \
"../../../bd/System/ipshared/e983/hdl/AXI_I2C_LCD_Transmitter_v1_0.vhd" \
"../../../bd/System/ip/System_AXI_I2C_LCD_Transmit_0_0/sim/System_AXI_I2C_LCD_Transmit_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_26  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+F:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/System/ip/System_auto_pc_0/sim/System_auto_pc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/System/sim/System.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

