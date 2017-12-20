// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Dec  8 12:32:04 2017
// Host        : DESKTOP-N854F8E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Aklas/Desktop/microSense_topLevel/microSense/microSense.srcs/sources_1/bd/microSense_top_level/ip/microSense_top_level_top_level_SAR_0_0/microSense_top_level_top_level_SAR_0_0_stub.v
// Design      : microSense_top_level_top_level_SAR_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "top_level_SAR,Vivado 2017.3" *)
module microSense_top_level_top_level_SAR_0_0(clk, ext_reset, SAR_input, SAR_output, 
  distance_mm)
/* synthesis syn_black_box black_box_pad_pin="clk,ext_reset,SAR_input,SAR_output,distance_mm[8:0]" */;
  input clk;
  input ext_reset;
  input SAR_input;
  output SAR_output;
  output [8:0]distance_mm;
endmodule
