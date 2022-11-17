vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_12
vlib activehdl/processing_system7_vip_v1_0_14
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/fifo_generator_v13_2_7
vlib activehdl/axi_data_fifo_v2_1_25
vlib activehdl/axi_register_slice_v2_1_26
vlib activehdl/axi_protocol_converter_v2_1_26

vmap xilinx_vip activehdl/xilinx_vip
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_12 activehdl/axi_vip_v1_1_12
vmap processing_system7_vip_v1_0_14 activehdl/processing_system7_vip_v1_0_14
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_7 activehdl/fifo_generator_v13_2_7
vmap axi_data_fifo_v2_1_25 activehdl/axi_data_fifo_v2_1_25
vmap axi_register_slice_v2_1_26 activehdl/axi_register_slice_v2_1_26
vmap axi_protocol_converter_v2_1_26 activehdl/axi_protocol_converter_v2_1_26

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

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5765/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_12  -sv2k12 "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5765/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_14  -sv2k12 "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5765/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5765/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/Keyboard/ip/Keyboard_processing_system7_0_0/sim/Keyboard_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
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

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5765/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5765/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_7 -93 \
"../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_7  -v2k5 "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5765/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_25  -v2k5 "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5765/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_26  -v2k5 "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5765/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_26  -v2k5 "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5765/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/ec67/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/5765/hdl" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/1b7e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/122e/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/b205/hdl/verilog" "+incdir+../../../../Zybo_Keyboard.gen/sources_1/bd/Keyboard/ipshared/fd26/hdl/verilog" "+incdir+/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"../../../bd/Keyboard/ip/Keyboard_auto_pc_0/sim/Keyboard_auto_pc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

