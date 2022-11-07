#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2022.1.2 (64-bit)
#
# Filename    : compile.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for compiling the simulation design source files
#
# Generated by Vivado on Sat Nov 05 01:17:31 EDT 2022
# SW Build 3605665 on Fri Aug  5 22:52:02 MDT 2022
#
# IP Build 3603185 on Sat Aug  6 04:07:44 MDT 2022
#
# usage: compile.sh
#
# ****************************************************************************
set -Eeuo pipefail
# compile Verilog/System Verilog design sources
echo "xvlog --incr --relax -L uvm -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip -prj Imp_wrapper_vlog.prj"
xvlog --incr --relax -L uvm -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L xilinx_vip -prj Imp_wrapper_vlog.prj 2>&1 | tee compile.log

# compile VHDL design sources
echo "xvhdl --incr --relax -prj Imp_wrapper_vhdl.prj"
xvhdl --incr --relax -prj Imp_wrapper_vhdl.prj 2>&1 | tee -a compile.log

echo "Waiting for jobs to finish..."
echo "No pending jobs, compilation finished."