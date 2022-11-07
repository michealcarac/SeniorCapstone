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
-makelib xcelium_lib/xpm -sv \
  "/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_12 -sv \
  "../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_14 -sv \
  "../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/LCD/ip/LCD_processing_system7_0_0/sim/LCD_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/LCD/ip/LCD_rst_sysclk_100Mhz_100M_0/sim/LCD_rst_sysclk_100Mhz_100M_0.vhd" \
  "../../../bd/LCD/ipshared/2cd2/hdl/AXI_I2C_LCD_Transmitter_v1_0_S00_AXI.vhd" \
  "../../../../Zybo_LCD.gen/sources_1/bd/src/I2C_Master.vhd" \
  "../../../../Zybo_LCD.gen/sources_1/bd/src/i2c_user_lcd.vhd" \
  "../../../bd/LCD/ipshared/2cd2/hdl/AXI_I2C_LCD_Transmitter_v1_0.vhd" \
  "../../../bd/LCD/ip/LCD_AXI_I2C_LCD_Transmit_0_0/sim/LCD_AXI_I2C_LCD_Transmit_0_0.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_25 \
  "../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_26 \
  "../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_26 \
  "../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/LCD/ip/LCD_auto_pc_0/sim/LCD_auto_pc_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/LCD/sim/LCD.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

