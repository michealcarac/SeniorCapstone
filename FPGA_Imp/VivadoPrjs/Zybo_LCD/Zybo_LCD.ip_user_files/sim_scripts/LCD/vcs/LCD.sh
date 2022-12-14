#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2022.1.2 (64-bit)
#
# Filename    : LCD.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Wed Dec 14 02:31:33 EST 2022
# SW Build 3605665 on Fri Aug  5 22:52:02 MDT 2022
#
# Tool Version Limit: 2022.04 
#
# usage: LCD.sh [-help]
# usage: LCD.sh [-lib_map_path]
# usage: LCD.sh [-noclean_files]
# usage: LCD.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'LCD.sh -help' for more information.
#
# Additional references - 'Xilinx Vivado Design Suite User Guide:Logic simulation (UG900)'
#
#*********************************************************************************************************

# Directory path for design sources and include directories (if any) wrt this path
ref_dir="."

# Override directory with 'export_sim_ref_dir' env path value if set in the shell
if [[ (! -z "$export_sim_ref_dir") && ($export_sim_ref_dir != "") ]]; then
  ref_dir="$export_sim_ref_dir"
fi

# Set vlogan compile options
vlogan_opts="-full64"

# Set vhdlan compile options
vhdlan_opts="-full64"

# Set vcs elaboration options
vcs_elab_opts="-full64 -debug_acc+pp+dmptf -t ps -licqueue -l elaborate.log"

# Set vcs simulation options
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xilinx_vip xpm axi_infrastructure_v1_1_0 axi_vip_v1_1_12 processing_system7_vip_v1_0_14 xil_defaultlib lib_cdc_v1_0_2 proc_sys_reset_v5_0_13 generic_baseblocks_v2_1_0 fifo_generator_v13_2_7 axi_data_fifo_v2_1_25 axi_register_slice_v2_1_26 axi_protocol_converter_v2_1_26)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "LCD.sh - Script generated by export_simulation (Vivado v2022.1.2 (64-bit)-id)\n"

# Main steps
run()
{
  check_args $# $1
  setup $1 $2
  compile
  elaborate
  simulate
}

# RUN_STEP: <compile>
compile()
{
  vlogan -work xilinx_vip $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl" +incdir+"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
    "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
    "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
    "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
    "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
    "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
    "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
    "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
    "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
    "/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xpm $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl" +incdir+"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
    "/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "/tools/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work axi_infrastructure_v1_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl" +incdir+"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_vip_v1_1_12 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl" +incdir+"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work processing_system7_vip_v1_0_14 $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl" +incdir+"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl" +incdir+"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/LCD/ip/LCD_processing_system7_0_0/sim/LCD_processing_system7_0_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work proc_sys_reset_v5_0_13 $vhdlan_opts \
    "$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/LCD/ip/LCD_rst_sysclk_100Mhz_100M_0/sim/LCD_rst_sysclk_100Mhz_100M_0.vhd" \
    "$ref_dir/../../../bd/LCD/ipshared/e983/hdl/AXI_I2C_LCD_Transmitter_v1_0_S00_AXI.vhd" \
    "$ref_dir/../../../bd/LCD/ipshared/e983/src/I2C_Master.vhd" \
    "$ref_dir/../../../bd/LCD/ipshared/e983/src/i2c_user_lcd.vhd" \
    "$ref_dir/../../../bd/LCD/ipshared/e983/hdl/AXI_I2C_LCD_Transmitter_v1_0.vhd" \
    "$ref_dir/../../../bd/LCD/ip/LCD_AXI_I2C_LCD_Transmit_0_0/sim/LCD_AXI_I2C_LCD_Transmit_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work generic_baseblocks_v2_1_0 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl" +incdir+"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work fifo_generator_v13_2_7 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl" +incdir+"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work fifo_generator_v13_2_7 $vhdlan_opts \
    "$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vlogan -work fifo_generator_v13_2_7 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl" +incdir+"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_data_fifo_v2_1_25 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl" +incdir+"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_register_slice_v2_1_26 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl" +incdir+"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work axi_protocol_converter_v2_1_26 $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl" +incdir+"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
    "$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
  2>&1 | tee -a vlogan.log

  vlogan -work xil_defaultlib $vlogan_opts +v2k +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/ec67/hdl" +incdir+"$ref_dir/../../../../Zybo_LCD.gen/sources_1/bd/LCD/ipshared/5765/hdl" +incdir+"/tools/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
    "$ref_dir/../../../bd/LCD/ip/LCD_auto_pc_0/sim/LCD_auto_pc_0.v" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/LCD/sim/LCD.vhd" \
  2>&1 | tee -a vhdlan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log
}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.LCD xil_defaultlib.glbl -o LCD_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./LCD_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./LCD.sh -help\" for more information)\n"
        exit 1
      fi
      create_lib_mappings $2
    ;;
    "-reset_run" )
      reset_run
      echo -e "INFO: Simulation run files deleted.\n"
      exit 0
    ;;
    "-noclean_files" )
      # do not remove previous data
    ;;
    * )
      create_lib_mappings $2
  esac

  create_lib_dir

  # Add any setup/initialization commands here:-

  # <user specific commands>

}

# Define design library mappings
create_lib_mappings()
{
  file="synopsys_sim.setup"
  if [[ -e $file ]]; then
    if [[ ($1 == "") ]]; then
      return
    else
      rm -rf $file
    fi
  fi

  touch $file

  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
  else
    lib_map_path="/home/cekp/Desktop/GitHub/SeniorCapstone/FPGA_Imp/VivadoPrjs/Zybo_LCD/Zybo_LCD.cache/compile_simlib/vcs"
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    mapping="$lib:$sim_lib_dir/$lib"
    echo $mapping >> $file
  done

  if [[ ($lib_map_path != "") ]]; then
    incl_ref="OTHERS=$lib_map_path/synopsys_sim.setup"
    echo $incl_ref >> $file
  fi
}

# Create design library directory paths
create_lib_dir()
{
  if [[ -e $sim_lib_dir ]]; then
    rm -rf $sim_lib_dir
  fi

  for (( i=0; i<${#design_libs[*]}; i++ )); do
    lib="${design_libs[i]}"
    lib_dir="$sim_lib_dir/$lib"
    if [[ ! -e $lib_dir ]]; then
      mkdir -p $lib_dir
    fi
  done
}

# Delete generated data from the previous run
reset_run()
{
  files_to_remove=(ucli.key LCD_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc LCD_simv.daidir)
  for (( i=0; i<${#files_to_remove[*]}; i++ )); do
    file="${files_to_remove[i]}"
    if [[ -e $file ]]; then
      rm -rf $file
    fi
  done

  create_lib_dir
}

# Check command line arguments
check_args()
{
  if [[ ($1 == 1 ) && ($2 != "-lib_map_path" && $2 != "-noclean_files" && $2 != "-reset_run" && $2 != "-help" && $2 != "-h") ]]; then
    echo -e "ERROR: Unknown option specified '$2' (type \"./LCD.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: LCD.sh [-help]\n\
Usage: LCD.sh [-lib_map_path]\n\
Usage: LCD.sh [-reset_run]\n\
Usage: LCD.sh [-noclean_files]\n\n\
[-help] -- Print help information for this script\n\n\
[-lib_map_path <path>] -- Compiled simulation library directory path. The simulation library is compiled\n\
using the compile_simlib tcl command. Please see 'compile_simlib -help' for more information.\n\n\
[-reset_run] -- Recreate simulator setup files and library mappings for a clean run. The generated files\n\
from the previous run will be removed. If you don't want to remove the simulator generated files, use the\n\
-noclean_files switch.\n\n\
[-noclean_files] -- Reset previous run, but do not remove simulator generated files from the previous run.\n\n"
  echo -e $msg
  exit 1
}

# Launch script
run $1 $2
