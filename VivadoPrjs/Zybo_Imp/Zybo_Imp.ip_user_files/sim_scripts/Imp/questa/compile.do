vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_12
vlib questa_lib/msim/processing_system7_vip_v1_0_14
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_28
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_26
vlib questa_lib/msim/fifo_generator_v13_2_7
vlib questa_lib/msim/axi_data_fifo_v2_1_25
vlib questa_lib/msim/axi_crossbar_v2_1_27
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axi_protocol_converter_v2_1_26

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 questa_lib/msim/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 questa_lib/msim/processing_system7_vip_v1_0_14
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_28 questa_lib/msim/axi_gpio_v2_0_28
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 questa_lib/msim/axi_register_slice_v2_1_26
vmap fifo_generator_v13_2_7 questa_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 questa_lib/msim/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 questa_lib/msim/axi_crossbar_v2_1_27
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_26 questa_lib/msim/axi_protocol_converter_v2_1_26

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

vlog -work xpm -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14 -64 -incr -mfcu -sv -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/Imp/ip/Imp_processing_system7_0_0/sim/Imp_processing_system7_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_28 -64 -93 \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Imp/ip/Imp_axi_gpio_0_0/sim/Imp_axi_gpio_0_0.vhd" \
"../../../bd/Imp/ip/Imp_axi_gpio_1_0/sim/Imp_axi_gpio_1_0.vhd" \
"../../../bd/Imp/ip/Imp_axi_gpio_0_1/sim/Imp_axi_gpio_0_1.vhd" \
"../../../bd/Imp/ip/Imp_axi_gpio_3_0/sim/Imp_axi_gpio_3_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr -mfcu "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26 -64 -incr -mfcu "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -64 -93 \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7 -64 -incr -mfcu "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25 -64 -incr -mfcu "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27 -64 -incr -mfcu "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/Imp/ip/Imp_xbar_1/sim/Imp_xbar_1.v" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Imp/ip/Imp_rst_sysclk_100Mhz_100M_0/sim/Imp_rst_sysclk_100Mhz_100M_0.vhd" \
"../../../bd/Imp/ipshared/4b33/hdl/I2C_LCD_Transmitter_v1_0_S00_AXI.vhd" \
"../../../bd/Imp/ipshared/4b33/src/I2C_Master.vhd" \
"../../../bd/Imp/ipshared/4b33/src/i2c_user_lcd.vhd" \
"../../../bd/Imp/ipshared/4b33/hdl/I2C_LCD_Transmitter_v1_0.vhd" \
"../../../bd/Imp/ip/Imp_I2C_LCD_Transmitter_1_0/sim/Imp_I2C_LCD_Transmitter_1_0.vhd" \

vlog -work axi_protocol_converter_v2_1_26 -64 -incr -mfcu "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Imp.gen/sources_1/bd/Imp/ipshared/5765/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/Imp/ip/Imp_auto_pc_0/sim/Imp_auto_pc_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/Imp/sim/Imp.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

