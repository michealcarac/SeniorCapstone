vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_12
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_12

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 activehdl/axi_vip_v1_1_12
vmap zynq_ultra_ps_e_vip_v1_0_12 activehdl/zynq_ultra_ps_e_vip_v1_0_12

vlog -work xilinx_vip  -sv2k12 "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/4e49" "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/ec67/hdl" "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/8cdf/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/BTN_LED/ip/BTN_LED_btn_to_led_0_0/sim/BTN_LED_btn_to_led_0_0.v" \
"../../../bd/BTN_LED/ip/BTN_LED_btn_to_led_clk_0_0/sim/BTN_LED_btn_to_led_clk_0_0.v" \
"../../../bd/BTN_LED/ip/BTN_LED_clk_wiz_0/BTN_LED_clk_wiz_0_clk_wiz.v" \
"../../../bd/BTN_LED/ip/BTN_LED_clk_wiz_0/BTN_LED_clk_wiz_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/4e49" "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/ec67/hdl" "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/8cdf/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/4e49" "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/ec67/hdl" "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/8cdf/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_12  -sv2k12 "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/4e49" "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/ec67/hdl" "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/8cdf/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/8cdf/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/4e49" "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/ec67/hdl" "+incdir+../../../../PL_BTN_LED.gen/sources_1/bd/BTN_LED/ipshared/8cdf/hdl" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/BTN_LED/ip/BTN_LED_zynq_ultra_ps_e_0_1/sim/BTN_LED_zynq_ultra_ps_e_0_1_vip_wrapper.v" \
"../../../bd/BTN_LED/sim/BTN_LED.v" \

vlog -work xil_defaultlib \
"glbl.v"

