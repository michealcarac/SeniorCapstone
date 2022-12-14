#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2022.1.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Sat Nov 05 01:17:55 EDT 2022
# SW Build 3605665 on Fri Aug  5 22:52:02 MDT 2022
#
# IP Build 3603185 on Sat Aug  6 04:07:44 MDT 2022
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim Imp_wrapper_behav -key {Behavioral:sim_1:Functional:Imp_wrapper} -tclbatch Imp_wrapper.tcl -protoinst "protoinst_files/Imp.protoinst" -view /home/cekp/Desktop/GitHub/SeniorCapstone/VivadoPrjs/Zybo_Imp/Imp_wrapper_behav.wcfg -log simulate.log"
xsim Imp_wrapper_behav -key {Behavioral:sim_1:Functional:Imp_wrapper} -tclbatch Imp_wrapper.tcl -protoinst "protoinst_files/Imp.protoinst" -view /home/cekp/Desktop/GitHub/SeniorCapstone/VivadoPrjs/Zybo_Imp/Imp_wrapper_behav.wcfg -log simulate.log

