vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_12
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_12
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_28
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/axi_timer_v2_0_28
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_26
vlib questa_lib/msim/fifo_generator_v13_2_7
vlib questa_lib/msim/axi_data_fifo_v2_1_25
vlib questa_lib/msim/axi_crossbar_v2_1_27
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axi_protocol_converter_v2_1_26
vlib questa_lib/msim/axi_clock_converter_v2_1_25
vlib questa_lib/msim/blk_mem_gen_v8_4_5
vlib questa_lib/msim/axi_dwidth_converter_v2_1_26

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 questa_lib/msim/axi_vip_v1_1_12
vmap zynq_ultra_ps_e_vip_v1_0_12 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_12
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_28 questa_lib/msim/axi_gpio_v2_0_28
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap axi_timer_v2_0_28 questa_lib/msim/axi_timer_v2_0_28
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_register_slice_v2_1_26 questa_lib/msim/axi_register_slice_v2_1_26
vmap fifo_generator_v13_2_7 questa_lib/msim/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 questa_lib/msim/axi_data_fifo_v2_1_25
vmap axi_crossbar_v2_1_27 questa_lib/msim/axi_crossbar_v2_1_27
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axi_protocol_converter_v2_1_26 questa_lib/msim/axi_protocol_converter_v2_1_26
vmap axi_clock_converter_v2_1_25 questa_lib/msim/axi_clock_converter_v2_1_25
vmap blk_mem_gen_v8_4_5 questa_lib/msim/blk_mem_gen_v8_4_5
vmap axi_dwidth_converter_v2_1_26 questa_lib/msim/axi_dwidth_converter_v2_1_26

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_12 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_12 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -incr -mfcu -sv -L axi_vip_v1_1_12 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_12  -incr -mfcu -sv -L axi_vip_v1_1_12 -L zynq_ultra_ps_e_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/BTN_LED_Linux/ip/BTN_LED_Linux_zynq_ultra_ps_e_0_0/sim/BTN_LED_Linux_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_28  -93 \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/BTN_LED_Linux/ip/BTN_LED_Linux_axi_gpio_1_0/sim/BTN_LED_Linux_axi_gpio_1_0.vhd" \

vcom -work lib_pkg_v1_0_2  -93 \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_28  -93 \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/2389/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/BTN_LED_Linux/ip/BTN_LED_Linux_axi_timer_0_0/sim/BTN_LED_Linux_axi_timer_0_0.vhd" \
"../../../bd/BTN_LED_Linux/ip/BTN_LED_Linux_axi_timer_1_0/sim/BTN_LED_Linux_axi_timer_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -incr -mfcu "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7  -93 \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -incr -mfcu "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -incr -mfcu "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_27  -incr -mfcu "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/BTN_LED_Linux/ip/BTN_LED_Linux_xbar_0/sim/BTN_LED_Linux_xbar_0.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/BTN_LED_Linux/ip/BTN_LED_Linux_rst_ps8_0_99M_0/sim/BTN_LED_Linux_rst_ps8_0_99M_0.vhd" \

vlog -work axi_protocol_converter_v2_1_26  -incr -mfcu "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_25  -incr -mfcu "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/e893/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work axi_dwidth_converter_v2_1_26  -incr -mfcu "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/b3c7/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/ec67/hdl" "+incdir+../../../../Milestone3.gen/sources_1/bd/BTN_LED_Linux/ipshared/8cdf/hdl" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/BTN_LED_Linux/ip/BTN_LED_Linux_auto_ds_0/sim/BTN_LED_Linux_auto_ds_0.v" \
"../../../bd/BTN_LED_Linux/ip/BTN_LED_Linux_auto_pc_0/sim/BTN_LED_Linux_auto_pc_0.v" \
"../../../bd/BTN_LED_Linux/ip/BTN_LED_Linux_auto_ds_1/sim/BTN_LED_Linux_auto_ds_1.v" \
"../../../bd/BTN_LED_Linux/ip/BTN_LED_Linux_auto_pc_1/sim/BTN_LED_Linux_auto_pc_1.v" \
"../../../bd/BTN_LED_Linux/sim/BTN_LED_Linux.v" \

vlog -work xil_defaultlib \
"glbl.v"

