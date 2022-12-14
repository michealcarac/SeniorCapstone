#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2022.1.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Thu Nov 17 05:12:10 EST 2022
# SW Build 3605665 on Fri Aug  5 22:52:02 MDT 2022
#
# IP Build 3603185 on Sat Aug  6 04:07:44 MDT 2022
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab --incr --debug typical --relax --mt 8 -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_2_7 -L axi_data_fifo_v2_1_25 -L axi_register_slice_v2_1_26 -L axi_protocol_converter_v2_1_26 -L uvm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot Keyboard_wrapper_behav xil_defaultlib.Keyboard_wrapper xil_defaultlib.glbl -log elaborate.log"
xelab --incr --debug typical --relax --mt 8 -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L generic_baseblocks_v2_1_0 -L fifo_generator_v13_2_7 -L axi_data_fifo_v2_1_25 -L axi_register_slice_v2_1_26 -L axi_protocol_converter_v2_1_26 -L uvm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot Keyboard_wrapper_behav xil_defaultlib.Keyboard_wrapper xil_defaultlib.glbl -log elaborate.log

