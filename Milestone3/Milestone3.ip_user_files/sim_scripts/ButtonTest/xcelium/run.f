-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_12 -sv \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/zynq_ultra_ps_e_vip_v1_0_12 -sv \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8cdf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_zynq_ultra_ps_e_0_1/sim/ButtonTest_zynq_ultra_ps_e_0_1_vip_wrapper.v" \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_clk_wiz_0_0/ButtonTest_clk_wiz_0_0_clk_wiz.v" \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_clk_wiz_0_0/ButtonTest_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_28 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/3ed9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_axi_gpio_0_0/sim/ButtonTest_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_26 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_25 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_27 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_xbar_0/sim/ButtonTest_xbar_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_rst_ps8_0_99M_0/sim/ButtonTest_rst_ps8_0_99M_0.vhd" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_26 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_25 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/e893/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/axi_dwidth_converter_v2_1_26 \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ipshared/b3c7/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_auto_ds_0/sim/ButtonTest_auto_ds_0.v" \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_auto_pc_0/sim/ButtonTest_auto_pc_0.v" \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_auto_ds_1/sim/ButtonTest_auto_ds_1.v" \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/ip/ButtonTest_auto_pc_1/sim/ButtonTest_auto_pc_1.v" \
  "../../../../BlockDesigns/ButtonTest/ButtonTest/sim/ButtonTest.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

