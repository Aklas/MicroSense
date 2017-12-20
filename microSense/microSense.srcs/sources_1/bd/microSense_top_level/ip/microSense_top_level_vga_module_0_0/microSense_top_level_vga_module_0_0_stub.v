// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Dec  8 10:27:21 2017
// Host        : DESKTOP-N854F8E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/Aklas/Desktop/microSense_topLevel/microSense/microSense.srcs/sources_1/bd/microSense_top_level/ip/microSense_top_level_vga_module_0_0/microSense_top_level_vga_module_0_0_stub.v
// Design      : microSense_top_level_vga_module_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "vga_module,Vivado 2017.3" *)
module microSense_top_level_vga_module_0_0(clk, addr, pixel, we, red, green, blue, hsync, vsync)
/* synthesis syn_black_box black_box_pad_pin="clk,addr[19:0],pixel[11:0],we,red[3:0],green[3:0],blue[3:0],hsync,vsync" */;
  input clk;
  input [19:0]addr;
  input [11:0]pixel;
  input we;
  output [3:0]red;
  output [3:0]green;
  output [3:0]blue;
  output hsync;
  output vsync;
endmodule
