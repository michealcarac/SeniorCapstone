vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_vip_v1_1_12
vlib modelsim_lib/msim/processing_system7_vip_v1_0_14
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_26
vlib modelsim_lib/msim/fifo_generator_v13_2_7
vlib modelsim_lib/msim/axi_data_fifo_v2_1_25
vlib modelsim_lib/msim/axi_crossbar_v2_1_27
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/xlconcat_v2_1_4
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_28
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_26

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 modelsim_lib/msim/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 modelsim_lib/msim/processing_system7_vip_v1_0_14
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 modelsim_lib/msim/axi_register_slice_v2_1_26
vmap fifo_generator_v13_2_7 modelsim_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 modelsim_lib/msim/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 modelsim_lib/msim/axi_crossbar_v2_1_27
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap xlconcat_v2_1_4 modelsim_lib/msim/xlconcat_v2_1_4
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_28 modelsim_lib/msim/axi_gpio_v2_0_28
vmap axi_protocol_converter_v2_1_26 modelsim_lib/msim/axi_protocol_converter_v2_1_26

vlog -work xilinx_vip -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/System/ip/System_processing_system7_0_0/sim/System_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26 -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -64 -93 \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25 -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27 -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/System/ip/System_xbar_0/sim/System_xbar_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/System/ip/System_rst_M_AXI_GP0_ACLK_0_100M_0/sim/System_rst_M_AXI_GP0_ACLK_0_100M_0.vhd" \
"../../../bd/System/ipshared/6307/uart.vhd" \
"../../../bd/System/ipshared/6307/uart_user.vhd" \
"../../../bd/System/ip/System_uart_0_0/sim/System_uart_0_0.vhd" \

vlog -work xlconcat_v2_1_4 -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/System/ip/System_xlconcat_0_0/sim/System_xlconcat_0_0.v" \

vlog -work xlconstant_v1_1_7 -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/System/ip/System_xlconstant_0_0/sim/System_xlconstant_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_28 -64 -93 \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/System/ip/System_axi_gpio_0_0/sim/System_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/System/ip/System_xlconcat_1_0/sim/System_xlconcat_1_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/System/ipshared/e983/hdl/AXI_I2C_LCD_Transmitter_v1_0_S00_AXI.vhd" \
"../../../bd/System/ipshared/e983/src/I2C_Master.vhd" \
"../../../bd/System/ipshared/e983/src/i2c_user_lcd.vhd" \
"../../../bd/System/ipshared/e983/hdl/AXI_I2C_LCD_Transmitter_v1_0.vhd" \
"../../../bd/System/ip/System_AXI_I2C_LCD_Transmit_0_0/sim/System_AXI_I2C_LCD_Transmit_0_0.vhd" \
"../../../bd/System/sim/System.vhd" \
"../../../bd/System/ipshared/d148/hdl/AXI_PS2_Keyboard_DEBUG_v1_0.vhd" \
"../../../bd/System/ipshared/d148/hdl/AXI_PS2_Keyboard_DEBUG_v1_0_S00_AXI.vhd" \
"../../../bd/System/ipshared/d148/src/ps2_keyboard_ascii_timer.vhd" \
"../../../bd/System/ipshared/d148/src/ps2_keyboard.vhd" \
"../../../bd/System/ipshared/d148/src/debounce.vhd" \
"../../../bd/System/ipshared/d148/src/timer.vhd" \
"../../../bd/System/ip/System_AXI_PS2_Keyboard_DEB_0_0/sim/System_AXI_PS2_Keyboard_DEB_0_0.vhd" \
"../../../bd/System/ip/System_ila_0_0/sim/System_ila_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_26 -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_System.gen/sources_1/bd/System/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/5765/hdl" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_System.gen/sources_1/bd/System/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/System/ip/System_auto_pc_0/sim/System_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

