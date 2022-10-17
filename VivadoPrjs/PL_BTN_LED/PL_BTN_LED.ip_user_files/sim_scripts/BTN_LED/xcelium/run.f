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
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/BTN_LED/ip/BTN_LED_btn_to_led_0_0/sim/BTN_LED_btn_to_led_0_0.v" \
  "../../../bd/BTN_LED/ip/BTN_LED_btn_to_led_clk_0_0/sim/BTN_LED_btn_to_led_clk_0_0.v" \
  "../../../bd/BTN_LED/ip/BTN_LED_clk_wiz_0/BTN_LED_clk_wiz_0_clk_wiz.v" \
  "../../../bd/BTN_LED/ip/BTN_LED_clk_wiz_0/BTN_LED_clk_wiz_0.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_12 -sv \
  "../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/zynq_ultra_ps_e_vip_v1_0_12 -sv \
  "../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/8cdf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/BTN_LED/ip/BTN_LED_zynq_ultra_ps_e_0_1/sim/BTN_LED_zynq_ultra_ps_e_0_1_vip_wrapper.v" \
  "../../../bd/BTN_LED/sim/BTN_LED.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

