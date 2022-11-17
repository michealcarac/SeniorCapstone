-makelib xcelium_lib/xilinx_vip -sv \
  "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_12 -sv \
  "../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_14 -sv \
  "../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Keyboard/ip/Keyboard_processing_system7_0_0/sim/Keyboard_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Keyboard/ip/Keyboard_rst_clk_100M_0/sim/Keyboard_rst_clk_100M_0.vhd" \
  "../../../bd/Keyboard/ipshared/c140/hdl/AXI_PS2_Keyboard_v1_0_S00_AXI.vhd" \
  "../../../bd/Keyboard/ipshared/c140/src/debounce.vhd" \
  "../../../bd/Keyboard/ipshared/c140/src/ps2_keyboard.vhd" \
  "../../../bd/Keyboard/ipshared/c140/src/ps2_keyboard_ascii_timer.vhd" \
  "../../../bd/Keyboard/ipshared/c140/src/timer.vhd" \
  "../../../bd/Keyboard/ipshared/c140/hdl/AXI_PS2_Keyboard_v1_0.vhd" \
  "../../../bd/Keyboard/ip/Keyboard_AXI_PS2_Keyboard_0_0/sim/Keyboard_AXI_PS2_Keyboard_0_0.vhd" \
  "../../../bd/Keyboard/ip/Keyboard_ila_0_0/sim/Keyboard_ila_0_0.vhd" \
  "../../../bd/Keyboard/sim/Keyboard.vhd" \
  "../../../bd/Keyboard/ip/Keyboard_edgedetector_0_0/sim/Keyboard_edgedetector_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_25 \
  "../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_26 \
  "../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_26 \
  "../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/Keyboard/ip/Keyboard_auto_pc_0/sim/Keyboard_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

