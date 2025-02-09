#!/bin/bash -f
#*********************************************************************************************************
# Vivado (TM) v2017.3 (64-bit)
#
# Filename    : microSense_top_level.sh
# Simulator   : Synopsys Verilog Compiler Simulator
# Description : Simulation script for compiling, elaborating and verifying the project source files.
#               The script will automatically create the design libraries sub-directories in the run
#               directory, add the library logical mappings in the simulator setup file, create default
#               'do/prj' file, execute compilation, elaboration and simulation steps.
#
# Generated by Vivado on Fri Dec 08 12:31:19 -0800 2017
# SW Build 2018833 on Wed Oct  4 19:58:22 MDT 2017
#
# Copyright 1986-2017 Xilinx, Inc. All Rights Reserved. 
#
# usage: microSense_top_level.sh [-help]
# usage: microSense_top_level.sh [-lib_map_path]
# usage: microSense_top_level.sh [-noclean_files]
# usage: microSense_top_level.sh [-reset_run]
#
# Prerequisite:- To compile and run simulation, you must compile the Xilinx simulation libraries using the
# 'compile_simlib' TCL command. For more information about this command, run 'compile_simlib -help' in the
# Vivado Tcl Shell. Once the libraries have been compiled successfully, specify the -lib_map_path switch
# that points to these libraries and rerun export_simulation. For more information about this switch please
# type 'export_simulation -help' in the Tcl shell.
#
# You can also point to the simulation libraries by either replacing the <SPECIFY_COMPILED_LIB_PATH> in this
# script with the compiled library directory path or specify this path with the '-lib_map_path' switch when
# executing this script. Please type 'microSense_top_level.sh -help' for more information.
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

# Command line options
vlogan_opts="-full64"
vhdlan_opts="-full64"
vcs_elab_opts="-full64 -debug_pp -t ps -licqueue -l elaborate.log"
vcs_sim_opts="-ucli -licqueue -l simulate.log"

# Design libraries
design_libs=(xil_defaultlib xpm axi_lite_ipif_v3_0_4 lib_pkg_v1_0_2 lib_srl_fifo_v1_0_2 lib_cdc_v1_0_2 axi_uartlite_v2_0_18 interrupt_control_v3_1_4 axi_gpio_v2_0_16 microblaze_v10_0_4 mdm_v3_2_11 proc_sys_reset_v5_0_12 lmb_v10_v3_0_9 lmb_bram_if_cntlr_v4_0_13)

# Simulation root library directory
sim_lib_dir="vcs_lib"

# Script info
echo -e "microSense_top_level.sh - Script generated by export_simulation (Vivado v2017.3 (64-bit)-id)\n"

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
  # Compile design files
  vlogan -work xil_defaultlib $vlogan_opts -sverilog +incdir+"$ref_dir/../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/5123" +incdir+"$ref_dir/../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/ec67/hdl" \
    "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
    "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  2>&1 | tee -a vlogan.log

  vhdlan -work xpm $vhdlan_opts \
    "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_clk_wiz_0_0/microSense_top_level_clk_wiz_0_0_sim_netlist.vhdl" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_lite_ipif_v3_0_4 $vhdlan_opts \
    "$ref_dir/../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_pkg_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_srl_fifo_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lib_cdc_v1_0_2 $vhdlan_opts \
    "$ref_dir/../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_uartlite_v2_0_18 $vhdlan_opts \
    "$ref_dir/../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/a8a5/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_axi_uartlite_0_0/sim/microSense_top_level_axi_uartlite_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work interrupt_control_v3_1_4 $vhdlan_opts \
    "$ref_dir/../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work axi_gpio_v2_0_16 $vhdlan_opts \
    "$ref_dir/../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/e9c1/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_axi_gpio_0_0/sim/microSense_top_level_axi_gpio_0_0.vhd" \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_axi_gpio_1_0/sim/microSense_top_level_axi_gpio_1_0.vhd" \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_axi_gpio_2_0/sim/microSense_top_level_axi_gpio_2_0.vhd" \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_vga_module_0_0/microSense_top_level_vga_module_0_0_sim_netlist.vhdl" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work microblaze_v10_0_4 $vhdlan_opts \
    "$ref_dir/../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/5eb2/hdl/microblaze_v10_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_microblaze_0_0/sim/microSense_top_level_microblaze_0_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work mdm_v3_2_11 $vhdlan_opts \
    "$ref_dir/../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/aa5e/hdl/mdm_v3_2_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_mdm_1_0/sim/microSense_top_level_mdm_1_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work proc_sys_reset_v5_0_12 $vhdlan_opts \
    "$ref_dir/../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_rst_clk_wiz_0_100M_0/sim/microSense_top_level_rst_clk_wiz_0_100M_0.vhd" \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_xbar_0/microSense_top_level_xbar_0_sim_netlist.vhdl" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lmb_v10_v3_0_9 $vhdlan_opts \
    "$ref_dir/../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_dlmb_v10_0/sim/microSense_top_level_dlmb_v10_0.vhd" \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_ilmb_v10_0/sim/microSense_top_level_ilmb_v10_0.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work lmb_bram_if_cntlr_v4_0_13 $vhdlan_opts \
    "$ref_dir/../../../../microSense.srcs/sources_1/bd/microSense_top_level/ipshared/0739/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
  2>&1 | tee -a vhdlan.log

  vhdlan -work xil_defaultlib $vhdlan_opts \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_dlmb_bram_if_cntlr_0/sim/microSense_top_level_dlmb_bram_if_cntlr_0.vhd" \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_ilmb_bram_if_cntlr_0/sim/microSense_top_level_ilmb_bram_if_cntlr_0.vhd" \
    "$ref_dir/../../../bd/microSense_top_level/ip/microSense_top_level_lmb_bram_0/microSense_top_level_lmb_bram_0_sim_netlist.vhdl" \
    "$ref_dir/../../../bd/microSense_top_level/sim/microSense_top_level.vhd" \
    "$ref_dir/c:/Users/Aklas/Desktop/microSense_topLevel/microSense/microSense.srcs/sources_1/bd/microSense_top_level/ip/microSense_top_level_top_level_SAR_0_0/microSense_top_level_top_level_SAR_0_0_sim_netlist.vhdl" \
  2>&1 | tee -a vhdlan.log


  vlogan -work xil_defaultlib $vlogan_opts +v2k \
    glbl.v \
  2>&1 | tee -a vlogan.log

}

# RUN_STEP: <elaborate>
elaborate()
{
  vcs $vcs_elab_opts xil_defaultlib.microSense_top_level xil_defaultlib.glbl -o microSense_top_level_simv
}

# RUN_STEP: <simulate>
simulate()
{
  ./microSense_top_level_simv $vcs_sim_opts -do simulate.do
}

# STEP: setup
setup()
{
  case $1 in
    "-lib_map_path" )
      if [[ ($2 == "") ]]; then
        echo -e "ERROR: Simulation library directory path not specified (type \"./microSense_top_level.sh -help\" for more information)\n"
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

  lib_map_path=""
  if [[ ($1 != "") ]]; then
    lib_map_path="$1"
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
  files_to_remove=(ucli.key microSense_top_level_simv vlogan.log vhdlan.log compile.log elaborate.log simulate.log .vlogansetup.env .vlogansetup.args .vcs_lib_lock scirocco_command.log 64 AN.DB csrc microSense_top_level_simv.daidir)
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
    echo -e "ERROR: Unknown option specified '$2' (type \"./microSense_top_level.sh -help\" for more information)\n"
    exit 1
  fi

  if [[ ($2 == "-help" || $2 == "-h") ]]; then
    usage
  fi
}

# Script usage
usage()
{
  msg="Usage: microSense_top_level.sh [-help]\n\
Usage: microSense_top_level.sh [-lib_map_path]\n\
Usage: microSense_top_level.sh [-reset_run]\n\
Usage: microSense_top_level.sh [-noclean_files]\n\n\
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
