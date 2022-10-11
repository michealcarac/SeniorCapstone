vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_12
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_12
vlib activehdl/xil_defaultlib
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_28
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_register_slice_v2_1_26
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/axi_data_fifo_v2_1_25
vlib activehdl/axi_crossbar_v2_1_27
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_protocol_converter_v2_1_26
vlib activehdl/axi_clock_converter_v2_1_25
vlib activehdl/blk_mem_gen_v8_4_5
vlib activehdl/axi_dwidth_converter_v2_1_26

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 activehdl/axi_vip_v1_1_12
vmap zynq_ultra_ps_e_vip_v1_0_12 activehdl/zynq_ultra_ps_e_vip_v1_0_12
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_28 activehdl/axi_gpio_v2_0_28
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 activehdl/axi_register_slice_v2_1_26
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 activehdl/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 activehdl/axi_crossbar_v2_1_27
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_26 activehdl/axi_protocol_converter_v2_1_26
vmap axi_clock_converter_v2_1_25 activehdl/axi_clock_converter_v2_1_25
vmap blk_mem_gen_v8_4_5 activehdl/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_26 activehdl/axi_dwidth_converter_v2_1_26

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_12  -sv2k12 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_zynq_ultra_ps_e_0_1/sim/ButtonTest_zynq_ultra_ps_e_0_1_vip_wrapper.v" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_clk_wiz_0_0/ButtonTest_clk_wiz_0_0_clk_wiz.v" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_clk_wiz_0_0/ButtonTest_clk_wiz_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_28 -93 \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_axi_gpio_0_0/sim/ButtonTest_axi_gpio_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -v2k5 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_xbar_0/sim/ButtonTest_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_rst_ps8_0_99M_0/sim/ButtonTest_rst_ps8_0_99M_0.vhd" \

vlog -work axi_protocol_converter_v2_1_26  -v2k5 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_25  -v2k5 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/e893/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_26  -v2k5 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/b3c7/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl" "+incdir+../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/4e49" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_auto_ds_0/sim/ButtonTest_auto_ds_0.v" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_auto_pc_0/sim/ButtonTest_auto_pc_0.v" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_auto_ds_1/sim/ButtonTest_auto_ds_1.v" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_auto_pc_1/sim/ButtonTest_auto_pc_1.v" \
"../../../../BlockDesigns/ButtonTest/ButtonTest/sim/ButtonTest.v" \

vlog -work xil_defaultlib \
"glbl.v"

