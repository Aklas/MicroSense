-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Fri Dec  8 10:27:21 2017
-- Host        : DESKTOP-N854F8E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/Aklas/Desktop/microSense_topLevel/microSense/microSense.srcs/sources_1/bd/microSense_top_level/ip/microSense_top_level_vga_module_0_0/microSense_top_level_vga_module_0_0_stub.vhdl
-- Design      : microSense_top_level_vga_module_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity microSense_top_level_vga_module_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 19 downto 0 );
    pixel : in STD_LOGIC_VECTOR ( 11 downto 0 );
    we : in STD_LOGIC;
    red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC
  );

end microSense_top_level_vga_module_0_0;

architecture stub of microSense_top_level_vga_module_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,addr[19:0],pixel[11:0],we,red[3:0],green[3:0],blue[3:0],hsync,vsync";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "vga_module,Vivado 2017.3";
begin
end;
