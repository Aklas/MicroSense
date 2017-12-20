-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
-- Date        : Fri Dec  8 10:27:22 2017
-- Host        : DESKTOP-N854F8E running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Aklas/Desktop/microSense_topLevel/microSense/microSense.srcs/sources_1/bd/microSense_top_level/ip/microSense_top_level_vga_module_0_0/microSense_top_level_vga_module_0_0_sim_netlist.vhdl
-- Design      : microSense_top_level_vga_module_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microSense_top_level_vga_module_0_0_downcounter is
  port (
    i_zero : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microSense_top_level_vga_module_0_0_downcounter : entity is "downcounter";
end microSense_top_level_vga_module_0_0_downcounter;

architecture STRUCTURE of microSense_top_level_vga_module_0_0_downcounter is
  signal \current_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_count_reg_n_0_[0]\ : STD_LOGIC;
  signal \current_count_reg_n_0_[1]\ : STD_LOGIC;
  signal eqOp : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_count[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of i_zero_i_1 : label is "soft_lutpair0";
begin
\current_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_count_reg_n_0_[0]\,
      O => \current_count[0]_i_1_n_0\
    );
\current_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \current_count_reg_n_0_[1]\,
      I1 => \current_count_reg_n_0_[0]\,
      O => \current_count[1]_i_1_n_0\
    );
\current_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \current_count[0]_i_1_n_0\,
      Q => \current_count_reg_n_0_[0]\,
      R => '0'
    );
\current_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \current_count[1]_i_1_n_0\,
      Q => \current_count_reg_n_0_[1]\,
      R => '0'
    );
i_zero_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_count_reg_n_0_[1]\,
      I1 => \current_count_reg_n_0_[0]\,
      O => eqOp
    );
i_zero_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => eqOp,
      Q => i_zero,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \microSense_top_level_vga_module_0_0_ram__4\ is
  port (
    red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    P : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \current_ver_pos_reg[5]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    pixel : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    we : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \microSense_top_level_vga_module_0_0_ram__4\ : entity is "ram";
end \microSense_top_level_vga_module_0_0_ram__4\;

architecture STRUCTURE of \microSense_top_level_vga_module_0_0_ram__4\ is
  signal RAM_reg_0_63_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1024_1087_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1024_1087_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_1024_1087_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1024_1087_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1024_1087_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1024_1087_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1024_1087_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1024_1087_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1024_1087_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1024_1087_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1024_1087_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1024_1087_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1024_1087_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1024_1087_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1088_1151_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1088_1151_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1088_1151_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1088_1151_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1088_1151_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1088_1151_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1088_1151_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1088_1151_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1088_1151_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1088_1151_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1088_1151_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1088_1151_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1088_1151_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1152_1215_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1152_1215_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1152_1215_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1152_1215_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1152_1215_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1152_1215_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1152_1215_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1152_1215_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1152_1215_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1152_1215_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1152_1215_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1152_1215_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1152_1215_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1216_1279_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1216_1279_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1216_1279_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1216_1279_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1216_1279_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1216_1279_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1216_1279_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1216_1279_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1216_1279_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1216_1279_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1216_1279_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1216_1279_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1216_1279_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1280_1343_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1280_1343_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_1280_1343_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1280_1343_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1280_1343_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1280_1343_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1280_1343_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1280_1343_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1280_1343_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1280_1343_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1280_1343_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1280_1343_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1280_1343_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1280_1343_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1344_1407_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1344_1407_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1344_1407_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1344_1407_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1344_1407_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1344_1407_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1344_1407_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1344_1407_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1344_1407_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1344_1407_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1344_1407_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1344_1407_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1344_1407_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1408_1471_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1408_1471_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1408_1471_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1408_1471_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1408_1471_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1408_1471_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1408_1471_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1408_1471_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1408_1471_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1408_1471_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1408_1471_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1408_1471_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1408_1471_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1472_1535_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1472_1535_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1472_1535_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1472_1535_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1472_1535_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1472_1535_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1472_1535_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1472_1535_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1472_1535_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1472_1535_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1472_1535_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1472_1535_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1472_1535_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1536_1599_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1536_1599_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_1536_1599_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1536_1599_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1536_1599_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1536_1599_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1536_1599_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1536_1599_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1536_1599_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1536_1599_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1536_1599_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1536_1599_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1536_1599_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1536_1599_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1600_1663_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1600_1663_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1600_1663_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1600_1663_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1600_1663_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1600_1663_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1600_1663_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1600_1663_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1600_1663_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1600_1663_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1600_1663_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1600_1663_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1600_1663_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1664_1727_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1664_1727_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1664_1727_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1664_1727_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1664_1727_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1664_1727_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1664_1727_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1664_1727_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1664_1727_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1664_1727_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1664_1727_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1664_1727_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1664_1727_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1728_1791_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1728_1791_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1728_1791_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1728_1791_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1728_1791_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1728_1791_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1728_1791_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1728_1791_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1728_1791_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1728_1791_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1728_1791_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1728_1791_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1728_1791_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1792_1855_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1792_1855_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_1792_1855_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1792_1855_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1792_1855_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1792_1855_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1792_1855_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1792_1855_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1792_1855_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1792_1855_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1792_1855_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1792_1855_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1792_1855_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1792_1855_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1856_1919_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1856_1919_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1856_1919_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1856_1919_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1856_1919_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1856_1919_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1856_1919_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1856_1919_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1856_1919_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1856_1919_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1856_1919_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1856_1919_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1856_1919_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1920_1983_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1920_1983_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1920_1983_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1920_1983_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1920_1983_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1920_1983_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1920_1983_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1920_1983_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1920_1983_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1920_1983_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1920_1983_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1920_1983_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1920_1983_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_1984_2047_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_1984_2047_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_1984_2047_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_1984_2047_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_1984_2047_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_1984_2047_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_1984_2047_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_1984_2047_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_1984_2047_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_1984_2047_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_1984_2047_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_1984_2047_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_1984_2047_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2048_2111_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2048_2111_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_2048_2111_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2048_2111_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2048_2111_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2048_2111_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2048_2111_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2048_2111_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2048_2111_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2048_2111_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2048_2111_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2048_2111_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2048_2111_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2048_2111_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2112_2175_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2112_2175_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2112_2175_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2112_2175_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2112_2175_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2112_2175_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2112_2175_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2112_2175_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2112_2175_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2112_2175_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2112_2175_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2112_2175_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2112_2175_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2176_2239_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2176_2239_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2176_2239_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2176_2239_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2176_2239_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2176_2239_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2176_2239_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2176_2239_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2176_2239_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2176_2239_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2176_2239_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2176_2239_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2176_2239_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2240_2303_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2240_2303_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2240_2303_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2240_2303_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2240_2303_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2240_2303_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2240_2303_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2240_2303_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2240_2303_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2240_2303_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2240_2303_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2240_2303_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2240_2303_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2304_2367_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2304_2367_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_2304_2367_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2304_2367_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2304_2367_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2304_2367_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2304_2367_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2304_2367_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2304_2367_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2304_2367_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2304_2367_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2304_2367_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2304_2367_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2304_2367_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2368_2431_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2368_2431_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2368_2431_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2368_2431_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2368_2431_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2368_2431_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2368_2431_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2368_2431_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2368_2431_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2368_2431_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2368_2431_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2368_2431_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2368_2431_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2432_2495_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2432_2495_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2432_2495_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2432_2495_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2432_2495_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2432_2495_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2432_2495_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2432_2495_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2432_2495_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2432_2495_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2432_2495_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2432_2495_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2432_2495_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2496_2559_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2496_2559_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2496_2559_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2496_2559_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2496_2559_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2496_2559_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2496_2559_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2496_2559_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2496_2559_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2496_2559_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2496_2559_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2496_2559_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2496_2559_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2560_2623_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2560_2623_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_2560_2623_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2560_2623_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2560_2623_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2560_2623_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2560_2623_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2560_2623_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2560_2623_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2560_2623_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2560_2623_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2560_2623_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2560_2623_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2560_2623_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2624_2687_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2624_2687_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2624_2687_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2624_2687_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2624_2687_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2624_2687_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2624_2687_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2624_2687_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2624_2687_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2624_2687_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2624_2687_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2624_2687_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2624_2687_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2688_2751_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2688_2751_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2688_2751_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2688_2751_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2688_2751_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2688_2751_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2688_2751_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2688_2751_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2688_2751_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2688_2751_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2688_2751_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2688_2751_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2688_2751_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2752_2815_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2752_2815_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2752_2815_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2752_2815_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2752_2815_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2752_2815_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2752_2815_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2752_2815_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2752_2815_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2752_2815_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2752_2815_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2752_2815_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2752_2815_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2816_2879_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2816_2879_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_2816_2879_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2816_2879_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2816_2879_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2816_2879_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2816_2879_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2816_2879_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2816_2879_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2816_2879_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2816_2879_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2816_2879_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2816_2879_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2816_2879_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2880_2943_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2880_2943_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2880_2943_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2880_2943_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2880_2943_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2880_2943_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2880_2943_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2880_2943_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2880_2943_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2880_2943_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2880_2943_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2880_2943_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2880_2943_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_2944_3007_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_2944_3007_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_2944_3007_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_2944_3007_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_2944_3007_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_2944_3007_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_2944_3007_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_2944_3007_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_2944_3007_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_2944_3007_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_2944_3007_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_2944_3007_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_2944_3007_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3008_3071_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3008_3071_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3008_3071_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3008_3071_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3008_3071_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3008_3071_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3008_3071_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3008_3071_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3008_3071_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3008_3071_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3008_3071_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3008_3071_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3008_3071_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3072_3135_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3072_3135_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_3072_3135_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3072_3135_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3072_3135_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3072_3135_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3072_3135_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3072_3135_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3072_3135_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3072_3135_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3072_3135_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3072_3135_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3072_3135_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3072_3135_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3136_3199_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3136_3199_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3136_3199_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3136_3199_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3136_3199_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3136_3199_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3136_3199_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3136_3199_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3136_3199_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3136_3199_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3136_3199_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3136_3199_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3136_3199_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3200_3263_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3200_3263_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3200_3263_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3200_3263_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3200_3263_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3200_3263_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3200_3263_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3200_3263_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3200_3263_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3200_3263_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3200_3263_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3200_3263_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3200_3263_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3264_3327_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3264_3327_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3264_3327_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3264_3327_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3264_3327_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3264_3327_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3264_3327_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3264_3327_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3264_3327_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3264_3327_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3264_3327_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3264_3327_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3264_3327_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3328_3391_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3328_3391_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_3328_3391_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3328_3391_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3328_3391_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3328_3391_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3328_3391_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3328_3391_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3328_3391_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3328_3391_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3328_3391_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3328_3391_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3328_3391_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3328_3391_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3392_3455_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3392_3455_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3392_3455_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3392_3455_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3392_3455_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3392_3455_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3392_3455_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3392_3455_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3392_3455_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3392_3455_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3392_3455_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3392_3455_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3392_3455_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3456_3519_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3456_3519_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3456_3519_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3456_3519_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3456_3519_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3456_3519_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3456_3519_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3456_3519_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3456_3519_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3456_3519_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3456_3519_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3456_3519_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3456_3519_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3520_3583_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3520_3583_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3520_3583_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3520_3583_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3520_3583_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3520_3583_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3520_3583_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3520_3583_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3520_3583_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3520_3583_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3520_3583_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3520_3583_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3520_3583_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3584_3647_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3584_3647_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_3584_3647_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3584_3647_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3584_3647_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3584_3647_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3584_3647_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3584_3647_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3584_3647_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3584_3647_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3584_3647_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3584_3647_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3584_3647_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3584_3647_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3648_3711_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3648_3711_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3648_3711_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3648_3711_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3648_3711_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3648_3711_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3648_3711_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3648_3711_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3648_3711_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3648_3711_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3648_3711_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3648_3711_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3648_3711_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3712_3775_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3712_3775_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3712_3775_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3712_3775_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3712_3775_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3712_3775_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3712_3775_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3712_3775_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3712_3775_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3712_3775_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3712_3775_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3712_3775_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3712_3775_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3776_3839_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3776_3839_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3776_3839_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3776_3839_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3776_3839_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3776_3839_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3776_3839_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3776_3839_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3776_3839_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3776_3839_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3776_3839_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3776_3839_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3776_3839_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3840_3903_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3840_3903_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_3840_3903_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3840_3903_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3840_3903_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3840_3903_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3840_3903_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3840_3903_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3840_3903_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3840_3903_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3840_3903_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3840_3903_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3840_3903_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3840_3903_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3904_3967_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3904_3967_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3904_3967_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3904_3967_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3904_3967_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3904_3967_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3904_3967_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3904_3967_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3904_3967_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3904_3967_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3904_3967_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3904_3967_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3904_3967_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_3968_4031_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_3968_4031_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_3968_4031_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_3968_4031_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_3968_4031_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_3968_4031_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_3968_4031_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_3968_4031_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_3968_4031_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_3968_4031_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_3968_4031_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_3968_4031_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_3968_4031_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_4032_4095_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_4032_4095_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_4032_4095_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_4032_4095_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_4032_4095_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_4032_4095_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_4032_4095_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_4032_4095_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_4032_4095_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_4032_4095_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_4032_4095_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_4032_4095_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_4032_4095_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_4096_4159_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_4096_4159_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_4096_4159_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_4096_4159_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_4096_4159_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_4096_4159_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_4096_4159_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_4096_4159_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_4096_4159_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_4096_4159_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_4096_4159_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_4096_4159_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_4096_4159_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_4096_4159_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_4160_4223_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_4160_4223_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_4160_4223_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_4160_4223_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_4160_4223_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_4160_4223_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_4160_4223_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_4160_4223_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_4160_4223_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_4160_4223_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_4160_4223_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_4160_4223_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_4160_4223_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_4224_4287_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_4224_4287_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_4224_4287_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_4224_4287_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_4224_4287_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_4224_4287_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_4224_4287_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_4224_4287_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_4224_4287_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_4224_4287_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_4224_4287_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_4224_4287_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_4224_4287_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_4288_4351_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_4288_4351_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_4288_4351_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_4288_4351_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_4288_4351_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_4288_4351_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_4288_4351_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_4288_4351_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_4288_4351_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_4288_4351_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_4288_4351_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_4288_4351_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_4288_4351_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_4352_4415_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_4352_4415_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_4352_4415_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_4352_4415_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_4352_4415_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_4352_4415_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_4352_4415_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_4352_4415_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_4352_4415_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_4352_4415_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_4352_4415_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_4352_4415_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_4352_4415_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_4352_4415_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_4416_4479_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_4416_4479_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_4416_4479_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_4416_4479_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_4416_4479_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_4416_4479_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_4416_4479_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_4416_4479_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_4416_4479_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_4416_4479_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_4416_4479_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_4416_4479_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_4416_4479_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_4480_4543_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_4480_4543_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_4480_4543_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_4480_4543_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_4480_4543_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_4480_4543_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_4480_4543_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_4480_4543_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_4480_4543_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_4480_4543_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_4480_4543_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_4480_4543_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_4480_4543_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_4544_4607_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_4544_4607_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_4544_4607_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_4544_4607_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_4544_4607_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_4544_4607_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_4544_4607_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_4544_4607_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_4544_4607_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_4544_4607_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_4544_4607_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_4544_4607_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_4544_4607_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_4608_4671_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_4608_4671_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_4608_4671_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_4608_4671_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_4608_4671_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_4608_4671_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_4608_4671_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_4608_4671_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_4608_4671_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_4608_4671_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_4608_4671_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_4608_4671_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_4608_4671_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_4608_4671_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_4672_4735_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_4672_4735_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_4672_4735_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_4672_4735_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_4672_4735_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_4672_4735_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_4672_4735_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_4672_4735_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_4672_4735_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_4672_4735_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_4672_4735_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_4672_4735_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_4672_4735_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_4736_4799_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_4736_4799_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_4736_4799_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_4736_4799_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_4736_4799_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_4736_4799_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_4736_4799_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_4736_4799_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_4736_4799_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_4736_4799_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_4736_4799_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_4736_4799_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_4736_4799_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_0_2_i_2_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_9_11_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_0_2_i_1_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_6_8_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_6_8_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_6_8_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_9_11_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_9_11_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_9_11_n_2 : STD_LOGIC;
  signal \blue[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \blue[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \blue[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \blue[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \blue[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \green[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \green[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \green[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \green[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \red[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \red[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \red[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1024_1087_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1024_1087_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1024_1087_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1024_1087_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1088_1151_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1088_1151_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1088_1151_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1088_1151_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1152_1215_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1152_1215_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1152_1215_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1152_1215_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1216_1279_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1216_1279_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1216_1279_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1216_1279_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1280_1343_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1280_1343_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1280_1343_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1280_1343_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1344_1407_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1344_1407_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1344_1407_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1344_1407_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1408_1471_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1408_1471_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1408_1471_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1408_1471_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1472_1535_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1472_1535_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1472_1535_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1472_1535_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1536_1599_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1536_1599_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1536_1599_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1536_1599_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1600_1663_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1600_1663_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1600_1663_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1600_1663_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1664_1727_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1664_1727_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1664_1727_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1664_1727_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1728_1791_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1728_1791_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1728_1791_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1728_1791_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1792_1855_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1792_1855_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1792_1855_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1792_1855_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1856_1919_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1856_1919_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1856_1919_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1856_1919_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1920_1983_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1920_1983_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1920_1983_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1920_1983_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1984_2047_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1984_2047_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1984_2047_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_1984_2047_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2048_2111_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2048_2111_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2048_2111_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2048_2111_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2112_2175_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2112_2175_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2112_2175_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2112_2175_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2176_2239_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2176_2239_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2176_2239_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2176_2239_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2240_2303_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2240_2303_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2240_2303_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2240_2303_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2304_2367_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2304_2367_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2304_2367_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2304_2367_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2368_2431_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2368_2431_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2368_2431_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2368_2431_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2432_2495_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2432_2495_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2432_2495_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2432_2495_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2496_2559_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2496_2559_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2496_2559_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2496_2559_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2560_2623_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2560_2623_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2560_2623_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2560_2623_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2624_2687_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2624_2687_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2624_2687_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2624_2687_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2688_2751_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2688_2751_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2688_2751_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2688_2751_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2752_2815_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2752_2815_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2752_2815_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2752_2815_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2816_2879_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2816_2879_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2816_2879_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2816_2879_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2880_2943_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2880_2943_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2880_2943_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2880_2943_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2944_3007_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2944_3007_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2944_3007_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_2944_3007_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3008_3071_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3008_3071_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3008_3071_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3008_3071_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3072_3135_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3072_3135_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3072_3135_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3072_3135_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3136_3199_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3136_3199_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3136_3199_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3136_3199_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3200_3263_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3200_3263_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3200_3263_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3200_3263_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3264_3327_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3264_3327_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3264_3327_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3264_3327_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3328_3391_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3328_3391_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3328_3391_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3328_3391_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3392_3455_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3392_3455_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3392_3455_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3392_3455_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3456_3519_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3456_3519_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3456_3519_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3456_3519_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3520_3583_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3520_3583_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3520_3583_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3520_3583_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3584_3647_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3584_3647_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3584_3647_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3584_3647_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3648_3711_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3648_3711_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3648_3711_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3648_3711_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3712_3775_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3712_3775_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3712_3775_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3712_3775_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3776_3839_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3776_3839_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3776_3839_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3776_3839_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3840_3903_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3840_3903_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3840_3903_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3840_3903_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3904_3967_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3904_3967_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3904_3967_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3904_3967_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3968_4031_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3968_4031_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3968_4031_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_3968_4031_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4032_4095_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4032_4095_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4032_4095_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4032_4095_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4096_4159_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4096_4159_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4096_4159_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4096_4159_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4160_4223_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4160_4223_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4160_4223_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4160_4223_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4224_4287_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4224_4287_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4224_4287_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4224_4287_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4288_4351_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4288_4351_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4288_4351_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4288_4351_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4352_4415_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4352_4415_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4352_4415_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4352_4415_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4416_4479_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4416_4479_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4416_4479_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4416_4479_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4480_4543_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4480_4543_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4480_4543_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4480_4543_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4544_4607_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4544_4607_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4544_4607_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4544_4607_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4608_4671_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4608_4671_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4608_4671_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4608_4671_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4672_4735_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4672_4735_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4672_4735_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4672_4735_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4736_4799_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4736_4799_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4736_4799_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_4736_4799_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_9_11_DOD_UNCONNECTED : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1024_1087_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1024_1087_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1024_1087_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1024_1087_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1088_1151_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1088_1151_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1088_1151_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1088_1151_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1152_1215_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1152_1215_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1152_1215_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1152_1215_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1216_1279_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1216_1279_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1216_1279_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1216_1279_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1280_1343_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1280_1343_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1280_1343_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1280_1343_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1344_1407_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1344_1407_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1344_1407_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1344_1407_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1408_1471_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1408_1471_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1408_1471_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1408_1471_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1472_1535_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1472_1535_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1472_1535_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1472_1535_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1536_1599_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1536_1599_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1536_1599_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1536_1599_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1600_1663_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1600_1663_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1600_1663_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1600_1663_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1664_1727_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1664_1727_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1664_1727_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1664_1727_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1728_1791_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1728_1791_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1728_1791_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1728_1791_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1792_1855_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1792_1855_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1792_1855_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1792_1855_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1856_1919_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1856_1919_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1856_1919_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1856_1919_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1920_1983_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1920_1983_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1920_1983_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1920_1983_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1984_2047_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1984_2047_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1984_2047_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_1984_2047_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2048_2111_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2048_2111_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2048_2111_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2048_2111_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2112_2175_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2112_2175_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2112_2175_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2112_2175_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2176_2239_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2176_2239_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2176_2239_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2176_2239_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2240_2303_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2240_2303_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2240_2303_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2240_2303_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2304_2367_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2304_2367_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2304_2367_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2304_2367_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2368_2431_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2368_2431_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2368_2431_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2368_2431_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2432_2495_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2432_2495_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2432_2495_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2432_2495_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2496_2559_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2496_2559_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2496_2559_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2496_2559_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2560_2623_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2560_2623_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2560_2623_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2560_2623_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_256_319_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_256_319_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_256_319_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_256_319_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2624_2687_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2624_2687_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2624_2687_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2624_2687_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2688_2751_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2688_2751_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2688_2751_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2688_2751_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2752_2815_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2752_2815_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2752_2815_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2752_2815_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2816_2879_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2816_2879_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2816_2879_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2816_2879_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2880_2943_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2880_2943_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2880_2943_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2880_2943_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2944_3007_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2944_3007_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2944_3007_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_2944_3007_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3008_3071_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3008_3071_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3008_3071_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3008_3071_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3072_3135_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3072_3135_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3072_3135_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3072_3135_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3136_3199_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3136_3199_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3136_3199_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3136_3199_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3200_3263_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3200_3263_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3200_3263_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3200_3263_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_320_383_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_320_383_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_320_383_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_320_383_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3264_3327_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3264_3327_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3264_3327_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3264_3327_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3328_3391_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3328_3391_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3328_3391_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3328_3391_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3392_3455_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3392_3455_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3392_3455_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3392_3455_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3456_3519_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3456_3519_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3456_3519_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3456_3519_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3520_3583_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3520_3583_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3520_3583_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3520_3583_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3584_3647_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3584_3647_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3584_3647_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3584_3647_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3648_3711_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3648_3711_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3648_3711_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3648_3711_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3712_3775_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3712_3775_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3712_3775_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3712_3775_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3776_3839_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3776_3839_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3776_3839_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3776_3839_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3840_3903_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3840_3903_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3840_3903_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3840_3903_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_384_447_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_384_447_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_384_447_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_384_447_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3904_3967_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3904_3967_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3904_3967_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3904_3967_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3968_4031_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3968_4031_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3968_4031_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_3968_4031_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4032_4095_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4032_4095_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4032_4095_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4032_4095_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4096_4159_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4096_4159_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4096_4159_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4096_4159_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4160_4223_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4160_4223_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4160_4223_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4160_4223_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4224_4287_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4224_4287_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4224_4287_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4224_4287_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4288_4351_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4288_4351_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4288_4351_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4288_4351_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4352_4415_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4352_4415_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4352_4415_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4352_4415_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4416_4479_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4416_4479_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4416_4479_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4416_4479_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4480_4543_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4480_4543_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4480_4543_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4480_4543_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_448_511_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_448_511_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_448_511_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_448_511_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4544_4607_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4544_4607_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4544_4607_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4544_4607_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4608_4671_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4608_4671_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4608_4671_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4608_4671_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4672_4735_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4672_4735_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4672_4735_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4672_4735_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4736_4799_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4736_4799_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4736_4799_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_4736_4799_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_512_575_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_512_575_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_512_575_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_512_575_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_576_639_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_576_639_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_576_639_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_576_639_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_640_703_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_640_703_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_640_703_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_640_703_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_704_767_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_704_767_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_704_767_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_704_767_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_768_831_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_768_831_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_768_831_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_768_831_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_832_895_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_832_895_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_832_895_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_832_895_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_896_959_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_896_959_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_896_959_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_896_959_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_960_1023_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_960_1023_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_960_1023_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_960_1023_9_11 : label is "";
begin
RAM_reg_0_63_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"A322A4843F592042",
      INIT_B => X"FE3F5BE3FFBE2181",
      INIT_C => X"01C000180083DBFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_0_63_0_2_n_0,
      DOB => RAM_reg_0_63_0_2_n_1,
      DOC => RAM_reg_0_63_0_2_n_2,
      DOD => NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_0_63_0_2_i_1_n_0
    );
RAM_reg_0_63_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_0_63_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_0_63_0_2_i_1_n_0
    );
RAM_reg_0_63_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_0_63_0_2_i_2_n_0
    );
RAM_reg_0_63_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00000000007FFFFF",
      INIT_B => X"B35DBD1C1F82AF01",
      INIT_C => X"FE1DBD041F7FAF00",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_0_63_3_5_n_0,
      DOB => RAM_reg_0_63_3_5_n_1,
      DOC => RAM_reg_0_63_3_5_n_2,
      DOD => NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_0_63_0_2_i_1_n_0
    );
RAM_reg_0_63_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"01E242FBE0FC54FF",
      INIT_B => X"000000000003FBFF",
      INIT_C => X"4CA842C3FA82F900",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_0_63_6_8_n_0,
      DOB => RAM_reg_0_63_6_8_n_1,
      DOC => RAM_reg_0_63_6_8_n_2,
      DOD => NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_0_63_0_2_i_1_n_0
    );
RAM_reg_0_63_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"4D48001804C500FF",
      INIT_B => X"B3F7FFFFFF000400",
      INIT_C => X"000000000003FBFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_0_63_9_11_n_0,
      DOB => RAM_reg_0_63_9_11_n_1,
      DOC => RAM_reg_0_63_9_11_n_2,
      DOD => NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_0_63_0_2_i_1_n_0
    );
RAM_reg_1024_1087_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"73A7B6F33D391FFD",
      INIT_B => X"8460090AF3A00073",
      INIT_C => X"03C000062AFFFE00",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1024_1087_0_2_n_0,
      DOB => RAM_reg_1024_1087_0_2_n_1,
      DOC => RAM_reg_1024_1087_0_2_n_2,
      DOD => NLW_RAM_reg_1024_1087_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1024_1087_0_2_i_1_n_0
    );
RAM_reg_1024_1087_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1024_1087_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1024_1087_0_2_i_1_n_0
    );
RAM_reg_1024_1087_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_1024_1087_0_2_i_2_n_0
    );
RAM_reg_1024_1087_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00000001DDDFFF00",
      INIT_B => X"8DC719F587360A7C",
      INIT_C => X"F7C0FFFC50560A72",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1024_1087_3_5_n_0,
      DOB => RAM_reg_1024_1087_3_5_n_1,
      DOC => RAM_reg_1024_1087_3_5_n_2,
      DOD => NLW_RAM_reg_1024_1087_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1024_1087_0_2_i_1_n_0
    );
RAM_reg_1024_1087_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"03E00003EAA9F401",
      INIT_B => X"000000001DDFFF00",
      INIT_C => X"8283DA3689373E3C",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1024_1087_6_8_n_0,
      DOB => RAM_reg_1024_1087_6_8_n_1,
      DOC => RAM_reg_1024_1087_6_8_n_2,
      DOD => NLW_RAM_reg_1024_1087_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1024_1087_0_2_i_1_n_0
    );
RAM_reg_1024_1087_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FA843DF957A8C172",
      INIT_B => X"06A0000015000101",
      INIT_C => X"0140000008DFFE00",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1024_1087_9_11_n_0,
      DOB => RAM_reg_1024_1087_9_11_n_1,
      DOC => RAM_reg_1024_1087_9_11_n_2,
      DOD => NLW_RAM_reg_1024_1087_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1024_1087_0_2_i_1_n_0
    );
RAM_reg_1088_1151_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3B955F48DA62FFCA",
      INIT_B => X"C40EC2A0055C0037",
      INIT_C => X"00020DFFFF800000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1088_1151_0_2_n_0,
      DOB => RAM_reg_1088_1151_0_2_n_1,
      DOC => RAM_reg_1088_1151_0_2_n_2,
      DOD => NLW_RAM_reg_1088_1151_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1088_1151_0_2_i_1_n_0
    );
RAM_reg_1088_1151_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1024_1087_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1088_1151_0_2_i_1_n_0
    );
RAM_reg_1088_1151_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0001FFDFFE000000",
      INIT_B => X"3EA629F4830BFF87",
      INIT_C => X"3FE743D48234007F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1088_1151_3_5_n_0,
      DOB => RAM_reg_1088_1151_3_5_n_1,
      DOC => RAM_reg_1088_1151_3_5_n_2,
      DOD => NLW_RAM_reg_1088_1151_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1088_1151_0_2_i_1_n_0
    );
RAM_reg_1088_1151_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C019EC2B7DC00000",
      INIT_B => X"00001FDFFE000000",
      INIT_C => X"7F4EAFD70D42FF83",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1088_1151_6_8_n_0,
      DOB => RAM_reg_1088_1151_6_8_n_1,
      DOC => RAM_reg_1088_1151_6_8_n_2,
      DOD => NLW_RAM_reg_1088_1151_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1088_1151_0_2_i_1_n_0
    );
RAM_reg_1088_1151_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FCA94228F1FC007F",
      INIT_B => X"0010120000000000",
      INIT_C => X"00000DDFFE000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1088_1151_9_11_n_0,
      DOB => RAM_reg_1088_1151_9_11_n_1,
      DOC => RAM_reg_1088_1151_9_11_n_2,
      DOD => NLW_RAM_reg_1088_1151_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1088_1151_0_2_i_1_n_0
    );
RAM_reg_1152_1215_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0E0BD96A00C843E1",
      INIT_B => X"41E0059BFF005409",
      INIT_C => X"8FFFFE0400002FF0",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1152_1215_0_2_n_0,
      DOB => RAM_reg_1152_1215_0_2_n_1,
      DOC => RAM_reg_1152_1215_0_2_n_2,
      DOD => NLW_RAM_reg_1152_1215_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1152_1215_0_2_i_1_n_0
    );
RAM_reg_1152_1215_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1024_1087_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1152_1215_0_2_i_1_n_0
    );
RAM_reg_1152_1215_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFDFFE0000000000",
      INIT_B => X"68F0807700344027",
      INIT_C => X"90D083FFFFC82831",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1152_1215_3_5_n_0,
      DOB => RAM_reg_1152_1215_3_5_n_1,
      DOC => RAM_reg_1152_1215_3_5_n_2,
      DOD => NLW_RAM_reg_1152_1215_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1152_1215_0_2_i_1_n_0
    );
RAM_reg_1152_1215_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FF2F7C0000007838",
      INIT_B => X"0FDFFE00000007C0",
      INIT_C => X"7EE50C9F00844007",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1152_1215_6_8_n_0,
      DOB => RAM_reg_1152_1215_6_8_n_1,
      DOC => RAM_reg_1152_1215_6_8_n_2,
      DOD => NLW_RAM_reg_1152_1215_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1152_1215_0_2_i_1_n_0
    );
RAM_reg_1152_1215_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"912AF07FFF482811",
      INIT_B => X"0000000000007818",
      INIT_C => X"0FDFFE00000007E0",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1152_1215_9_11_n_0,
      DOB => RAM_reg_1152_1215_9_11_n_1,
      DOC => RAM_reg_1152_1215_9_11_n_2,
      DOD => NLW_RAM_reg_1152_1215_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1152_1215_0_2_i_1_n_0
    );
RAM_reg_1216_1279_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C9101D534E603E14",
      INIT_B => X"048FFEB3001DC10E",
      INIT_C => X"FE0000017FF80002",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1216_1279_0_2_n_0,
      DOB => RAM_reg_1216_1279_0_2_n_1,
      DOC => RAM_reg_1216_1279_0_2_n_2,
      DOD => NLW_RAM_reg_1216_1279_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1216_1279_0_2_i_1_n_0
    );
RAM_reg_1216_1279_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1024_1087_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1216_1279_0_2_i_1_n_0
    );
RAM_reg_1216_1279_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FE00000080000001",
      INIT_B => X"82181DDA90039FC6",
      INIT_C => X"80E7FEB2B0011FC6",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1216_1279_3_5_n_0,
      DOB => RAM_reg_1216_1279_3_5_n_1,
      DOC => RAM_reg_1216_1279_3_5_n_2,
      DOD => NLW_RAM_reg_1216_1279_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1216_1279_0_2_i_1_n_0
    );
RAM_reg_1216_1279_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"7C0000003004E039",
      INIT_B => X"FE000001CFF80000",
      INIT_C => X"4AF81DDB9003F9EF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1216_1279_6_8_n_0,
      DOB => RAM_reg_1216_1279_6_8_n_1,
      DOC => RAM_reg_1216_1279_6_8_n_2,
      DOD => NLW_RAM_reg_1216_1279_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1216_1279_0_2_i_1_n_0
    );
RAM_reg_1216_1279_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F607FEB3B001FE28",
      INIT_B => X"0200000130040010",
      INIT_C => X"FC000000CFF80000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1216_1279_9_11_n_0,
      DOB => RAM_reg_1216_1279_9_11_n_1,
      DOC => RAM_reg_1216_1279_9_11_n_2,
      DOD => NLW_RAM_reg_1216_1279_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1216_1279_0_2_i_1_n_0
    );
RAM_reg_1280_1343_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"2E456E8F4F620875",
      INIT_B => X"90074138DEC1E439",
      INIT_C => X"0003BFC600020FCE",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1280_1343_0_2_n_0,
      DOB => RAM_reg_1280_1343_0_2_n_1,
      DOC => RAM_reg_1280_1343_0_2_n_2,
      DOD => NLW_RAM_reg_1280_1343_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1280_1343_0_2_i_1_n_0
    );
RAM_reg_1280_1343_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1280_1343_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1280_1343_0_2_i_1_n_0
    );
RAM_reg_1280_1343_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010000000000000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_1280_1343_0_2_i_2_n_0
    );
RAM_reg_1280_1343_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000000000001FFFF",
      INIT_B => X"2F4F92019A841830",
      INIT_C => X"E3C3D202BF86E800",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1280_1343_3_5_n_0,
      DOB => RAM_reg_1280_1343_3_5_n_1,
      DOC => RAM_reg_1280_1343_3_5_n_2,
      DOD => NLW_RAM_reg_1280_1343_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1280_1343_0_2_i_1_n_0
    );
RAM_reg_1280_1343_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1008D2024079F7CF",
      INIT_B => X"00072DFC00000FFF",
      INIT_C => X"9C4E694E9BD7404E",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1280_1343_6_8_n_0,
      DOB => RAM_reg_1280_1343_6_8_n_1,
      DOC => RAM_reg_1280_1343_6_8_n_2,
      DOD => NLW_RAM_reg_1280_1343_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1280_1343_0_2_i_1_n_0
    );
RAM_reg_1280_1343_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"33C24003BEF937B1",
      INIT_B => X"0009400240000030",
      INIT_C => X"0007BFFC00000FCF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1280_1343_9_11_n_0,
      DOB => RAM_reg_1280_1343_9_11_n_1,
      DOC => RAM_reg_1280_1343_9_11_n_2,
      DOD => NLW_RAM_reg_1280_1343_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1280_1343_0_2_i_1_n_0
    );
RAM_reg_128_191_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3F7D858236500184",
      INIT_B => X"FF5B0601C913FE77",
      INIT_C => X"00C2F9FF33EC00F8",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_128_191_0_2_n_0,
      DOB => RAM_reg_128_191_0_2_n_1,
      DOC => RAM_reg_128_191_0_2_n_2,
      DOD => NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_128_191_0_2_i_1_n_0
    );
RAM_reg_128_191_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_0_63_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_128_191_0_2_i_1_n_0
    );
RAM_reg_128_191_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"003DFFFFFFF00000",
      INIT_B => X"B3C601C0FCB1256B",
      INIT_C => X"B3BA05C076AFFEF3",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_128_191_3_5_n_0,
      DOB => RAM_reg_128_191_3_5_n_1,
      DOC => RAM_reg_128_191_3_5_n_2,
      DOD => NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_128_191_0_2_i_1_n_0
    );
RAM_reg_128_191_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"4C7CF83FC54000FC",
      INIT_B => X"0001FFFF3BF00000",
      INIT_C => X"F26D69E022C85894",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_128_191_6_8_n_0,
      DOB => RAM_reg_128_191_6_8_n_1,
      DOC => RAM_reg_128_191_6_8_n_2,
      DOD => NLW_RAM_reg_128_191_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_128_191_0_2_i_1_n_0
    );
RAM_reg_128_191_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0C81921FAA865998",
      INIT_B => X"FF0102006E81A69F",
      INIT_C => X"0000FDFF11700060",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_128_191_9_11_n_0,
      DOB => RAM_reg_128_191_9_11_n_1,
      DOC => RAM_reg_128_191_9_11_n_2,
      DOD => NLW_RAM_reg_128_191_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_128_191_0_2_i_1_n_0
    );
RAM_reg_1344_1407_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C20546A70C5531B1",
      INIT_B => X"000226C0E0198018",
      INIT_C => X"FFFF01020FEE7C00",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1344_1407_0_2_n_0,
      DOB => RAM_reg_1344_1407_0_2_n_1,
      DOC => RAM_reg_1344_1407_0_2_n_2,
      DOD => NLW_RAM_reg_1344_1407_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1344_1407_0_2_i_1_n_0
    );
RAM_reg_1344_1407_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1280_1343_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1344_1407_0_2_i_1_n_0
    );
RAM_reg_1344_1407_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00000001FFFFFE00",
      INIT_B => X"E101F7061A108045",
      INIT_C => X"E1014606EA20017E",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1344_1407_3_5_n_0,
      DOB => RAM_reg_1344_1407_3_5_n_1,
      DOC => RAM_reg_1344_1407_3_5_n_2,
      DOD => NLW_RAM_reg_1344_1407_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1344_1407_0_2_i_1_n_0
    );
RAM_reg_1344_1407_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E10121F9F5CFFC80",
      INIT_B => X"1EFE00000FFFFE00",
      INIT_C => X"5B76D6F9D22C0073",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1344_1407_6_8_n_0,
      DOB => RAM_reg_1344_1407_6_8_n_1,
      DOC => RAM_reg_1344_1407_6_8_n_2,
      DOD => NLW_RAM_reg_1344_1407_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1344_1407_0_2_i_1_n_0
    );
RAM_reg_1344_1407_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"010046FF25F3FE8C",
      INIT_B => X"0100210000300200",
      INIT_C => X"FEFF00000FCFFC00",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1344_1407_9_11_n_0,
      DOB => RAM_reg_1344_1407_9_11_n_1,
      DOC => RAM_reg_1344_1407_9_11_n_2,
      DOD => NLW_RAM_reg_1344_1407_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1344_1407_0_2_i_1_n_0
    );
RAM_reg_1408_1471_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"78A90C71865E8816",
      INIT_B => X"A9C5E019B3B97F2D",
      INIT_C => X"C2030FEE7E00001E",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1408_1471_0_2_n_0,
      DOB => RAM_reg_1408_1471_0_2_n_1,
      DOC => RAM_reg_1408_1471_0_2_n_2,
      DOD => NLW_RAM_reg_1408_1471_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1408_1471_0_2_i_1_n_0
    );
RAM_reg_1408_1471_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1280_1343_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1408_1471_0_2_i_1_n_0
    );
RAM_reg_1408_1471_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000FFFFFC000000",
      INIT_B => X"CB44023496BB8BAD",
      INIT_C => X"D906EA24023B828B",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1408_1471_3_5_n_0,
      DOB => RAM_reg_1408_1471_3_5_n_1,
      DOC => RAM_reg_1408_1471_3_5_n_2,
      DOD => NLW_RAM_reg_1408_1471_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1408_1471_0_2_i_1_n_0
    );
RAM_reg_1408_1471_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"DAF9F5CBFFC47D25",
      INIT_B => X"20000FFFFC00001E",
      INIT_C => X"D963D285168E762F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1408_1471_6_8_n_0,
      DOB => RAM_reg_1408_1471_6_8_n_1,
      DOC => RAM_reg_1408_1471_6_8_n_2,
      DOD => NLW_RAM_reg_1408_1471_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1408_1471_0_2_i_1_n_0
    );
RAM_reg_1408_1471_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C97D255AFDFFF68B",
      INIT_B => X"DA80001002000925",
      INIT_C => X"20000FEFFC00001E",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1408_1471_9_11_n_0,
      DOB => RAM_reg_1408_1471_9_11_n_1,
      DOC => RAM_reg_1408_1471_9_11_n_2,
      DOD => NLW_RAM_reg_1408_1471_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1408_1471_0_2_i_1_n_0
    );
RAM_reg_1472_1535_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0C718146B2321A48",
      INIT_B => X"E019B1B97C19DFC8",
      INIT_C => X"0FEE7E00007CE037",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1472_1535_0_2_n_0,
      DOB => RAM_reg_1472_1535_0_2_n_1,
      DOC => RAM_reg_1472_1535_0_2_n_2,
      DOD => NLW_RAM_reg_1472_1535_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1472_1535_0_2_i_1_n_0
    );
RAM_reg_1472_1535_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1280_1343_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1472_1535_0_2_i_1_n_0
    );
RAM_reg_1472_1535_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFFFFC0000000000",
      INIT_B => X"023411BE7E75A04D",
      INIT_C => X"EA24003E0323A1CD",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1472_1535_3_5_n_0,
      DOB => RAM_reg_1472_1535_3_5_n_1,
      DOC => RAM_reg_1472_1535_3_5_n_2,
      DOD => NLW_RAM_reg_1472_1535_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1472_1535_0_2_i_1_n_0
    );
RAM_reg_1472_1535_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F5CBFFC1FC9BA1CD",
      INIT_B => X"0FFFFC00007C5E32",
      INIT_C => X"DFAD11818296D840",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1472_1535_6_8_n_0,
      DOB => RAM_reg_1472_1535_6_8_n_1,
      DOC => RAM_reg_1472_1535_6_8_n_2,
      DOD => NLW_RAM_reg_1472_1535_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1472_1535_0_2_i_1_n_0
    );
RAM_reg_1472_1535_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"2852FFFF83A201C0",
      INIT_B => X"081000007C1A01C0",
      INIT_C => X"07EFFC00007DFE3F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1472_1535_9_11_n_0,
      DOB => RAM_reg_1472_1535_9_11_n_1,
      DOC => RAM_reg_1472_1535_9_11_n_2,
      DOD => NLW_RAM_reg_1472_1535_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1472_1535_0_2_i_1_n_0
    );
RAM_reg_1536_1599_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"690E0398CEFBC970",
      INIT_B => X"17F178850D53818E",
      INIT_C => X"F80001FAF08CDC01",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1536_1599_0_2_n_0,
      DOB => RAM_reg_1536_1599_0_2_n_1,
      DOC => RAM_reg_1536_1599_0_2_n_2,
      DOD => NLW_RAM_reg_1536_1599_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1536_1599_0_2_i_1_n_0
    );
RAM_reg_1536_1599_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1536_1599_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1536_1599_0_2_i_1_n_0
    );
RAM_reg_1536_1599_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_1536_1599_0_2_i_2_n_0
    );
RAM_reg_1536_1599_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FC00000000000000",
      INIT_B => X"03DDCAC0428A0319",
      INIT_C => X"061C00CC42A3221F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1536_1599_3_5_n_0,
      DOB => RAM_reg_1536_1599_3_5_n_1,
      DOC => RAM_reg_1536_1599_3_5_n_2,
      DOD => NLW_RAM_reg_1536_1599_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1536_1599_0_2_i_1_n_0
    );
RAM_reg_1536_1599_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F9E3FE34422339E0",
      INIT_B => X"FC0001FBBDDCDC00",
      INIT_C => X"13E2B42EF68B2CE6",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1536_1599_6_8_n_0,
      DOB => RAM_reg_1536_1599_6_8_n_1,
      DOC => RAM_reg_1536_1599_6_8_n_2,
      DOD => NLW_RAM_reg_1536_1599_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1536_1599_0_2_i_1_n_0
    );
RAM_reg_1536_1599_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F9FEB4EC02A31EF9",
      INIT_B => X"00014A1402232500",
      INIT_C => X"FC0001FBFDDCD800",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1536_1599_9_11_n_0,
      DOB => RAM_reg_1536_1599_9_11_n_1,
      DOC => RAM_reg_1536_1599_9_11_n_2,
      DOD => NLW_RAM_reg_1536_1599_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1536_1599_0_2_i_1_n_0
    );
RAM_reg_1600_1663_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"4935D3DC34311075",
      INIT_B => X"35F5C205F8CFE419",
      INIT_C => X"02023DE286000FEE",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1600_1663_0_2_n_0,
      DOB => RAM_reg_1600_1663_0_2_n_1,
      DOC => RAM_reg_1600_1663_0_2_n_2,
      DOD => NLW_RAM_reg_1600_1663_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1600_1663_0_2_i_1_n_0
    );
RAM_reg_1600_1663_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1536_1599_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1600_1663_0_2_i_1_n_0
    );
RAM_reg_1600_1663_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000000000000FFFF",
      INIT_B => X"43CC41781A1A1810",
      INIT_C => X"87944139691EE000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1600_1663_3_5_n_0,
      DOB => RAM_reg_1600_1663_3_5_n_1,
      DOC => RAM_reg_1600_1663_3_5_n_2,
      DOD => NLW_RAM_reg_1600_1663_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1600_1663_0_2_i_1_n_0
    );
RAM_reg_1600_1663_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFAC40D954E1F7EF",
      INIT_B => X"0073BFE6BE000FFF",
      INIT_C => X"7FABB1907CE1566D",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1600_1663_6_8_n_0,
      DOB => RAM_reg_1600_1663_6_8_n_1,
      DOC => RAM_reg_1600_1663_6_8_n_2,
      DOD => NLW_RAM_reg_1600_1663_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1600_1663_0_2_i_1_n_0
    );
RAM_reg_1600_1663_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"7BB001B915FF2992",
      INIT_B => X"8788005940000810",
      INIT_C => X"0077FFE6BE0007EF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1600_1663_9_11_n_0,
      DOB => RAM_reg_1600_1663_9_11_n_1,
      DOC => RAM_reg_1600_1663_9_11_n_2,
      DOD => NLW_RAM_reg_1600_1663_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1600_1663_0_2_i_1_n_0
    );
RAM_reg_1664_1727_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3FD2F7B11A7DAA31",
      INIT_B => X"A6C71C4FEC115ACE",
      INIT_C => X"5938620007EEF900",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1664_1727_0_2_n_0,
      DOB => RAM_reg_1664_1727_0_2_n_1,
      DOC => RAM_reg_1664_1727_0_2_n_2,
      DOD => NLW_RAM_reg_1664_1727_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1664_1727_0_2_i_1_n_0
    );
RAM_reg_1664_1727_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1536_1599_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1664_1727_0_2_i_1_n_0
    );
RAM_reg_1664_1727_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00000000FFFFFC00",
      INIT_B => X"26C6CABF90104083",
      INIT_C => X"24CF02BE60000100",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1664_1727_3_5_n_0,
      DOB => RAM_reg_1664_1727_3_5_n_1,
      DOC => RAM_reg_1664_1727_3_5_n_2,
      DOD => NLW_RAM_reg_1664_1727_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1664_1727_0_2_i_1_n_0
    );
RAM_reg_1664_1727_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"2537BD41F7EFFBFF",
      INIT_B => X"DBF87E000FFFFC00",
      INIT_C => X"DF3E69404F7948EC",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1664_1727_6_8_n_0,
      DOB => RAM_reg_1664_1727_6_8_n_1,
      DOC => RAM_reg_1664_1727_6_8_n_2,
      DOD => NLW_RAM_reg_1664_1727_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1664_1727_0_2_i_1_n_0
    );
RAM_reg_1664_1727_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"05F73FFE3096FEFC",
      INIT_B => X"0407800108100503",
      INIT_C => X"FBF87E0007EFF800",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1664_1727_9_11_n_0,
      DOB => RAM_reg_1664_1727_9_11_n_1,
      DOC => RAM_reg_1664_1727_9_11_n_2,
      DOD => NLW_RAM_reg_1664_1727_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1664_1727_0_2_i_1_n_0
    );
RAM_reg_1728_1791_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00A0022CA3B6C2EF",
      INIT_B => X"7D4FFC005FCC3CA8",
      INIT_C => X"E20007FFFC000047",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1728_1791_0_2_n_0,
      DOB => RAM_reg_1728_1791_0_2_n_1,
      DOC => RAM_reg_1728_1791_0_2_n_2,
      DOD => NLW_RAM_reg_1728_1791_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1728_1791_0_2_i_1_n_0
    );
RAM_reg_1728_1791_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1536_1599_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1728_1791_0_2_i_1_n_0
    );
RAM_reg_1728_1791_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000FFFFF8000000",
      INIT_B => X"C27E0808C684CE6C",
      INIT_C => X"53FEF81881000130",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1728_1791_3_5_n_0,
      DOB => RAM_reg_1728_1791_3_5_n_1,
      DOC => RAM_reg_1728_1791_3_5_n_2,
      DOD => NLW_RAM_reg_1728_1791_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1728_1791_0_2_i_1_n_0
    );
RAM_reg_1728_1791_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"2D01FFE77FFFFE50",
      INIT_B => X"FE0007FFF80000EF",
      INIT_C => X"6D814F48C6CAF82B",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1728_1791_6_8_n_0,
      DOB => RAM_reg_1728_1791_6_8_n_1,
      DOC => RAM_reg_1728_1791_6_8_n_2,
      DOD => NLW_RAM_reg_1728_1791_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1728_1791_0_2_i_1_n_0
    );
RAM_reg_1728_1791_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"6E7F38A77EFBF934",
      INIT_B => X"0100000001040650",
      INIT_C => X"FE0007FFF80000EF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1728_1791_9_11_n_0,
      DOB => RAM_reg_1728_1791_9_11_n_1,
      DOC => RAM_reg_1728_1791_9_11_n_2,
      DOD => NLW_RAM_reg_1728_1791_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1728_1791_0_2_i_1_n_0
    );
RAM_reg_1792_1855_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0A2C01B6B0E598C6",
      INIT_B => X"F400BACC489586D8",
      INIT_C => X"07FF7C0001CB793E",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1792_1855_0_2_n_0,
      DOB => RAM_reg_1792_1855_0_2_n_1,
      DOC => RAM_reg_1792_1855_0_2_n_2,
      DOD => NLW_RAM_reg_1792_1855_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1792_1855_0_2_i_1_n_0
    );
RAM_reg_1792_1855_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1792_1855_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1792_1855_0_2_i_1_n_0
    );
RAM_reg_1792_1855_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020000000000000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_1792_1855_0_2_i_2_n_0
    );
RAM_reg_1792_1855_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFFFF80000000000",
      INIT_B => X"04496CFDDAC6224C",
      INIT_C => X"FC584C019766244F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1792_1855_3_5_n_0,
      DOB => RAM_reg_1792_1855_3_5_n_1,
      DOC => RAM_reg_1792_1855_3_5_n_2,
      DOD => NLW_RAM_reg_1792_1855_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1792_1855_0_2_i_1_n_0
    );
RAM_reg_1792_1855_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FBA733FE68A625B1",
      INIT_B => X"07FFF80001D9DBFE",
      INIT_C => X"E3CA48F2C1E9DDB3",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1792_1855_6_8_n_0,
      DOB => RAM_reg_1792_1855_6_8_n_1,
      DOC => RAM_reg_1792_1855_6_8_n_2,
      DOD => NLW_RAM_reg_1792_1855_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1792_1855_0_2_i_1_n_0
    );
RAM_reg_1792_1855_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1825B7F3766005FC",
      INIT_B => X"0000800C08A00401",
      INIT_C => X"07FF780001DFFBFE",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1792_1855_9_11_n_0,
      DOB => RAM_reg_1792_1855_9_11_n_1,
      DOC => RAM_reg_1792_1855_9_11_n_2,
      DOD => NLW_RAM_reg_1792_1855_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1792_1855_0_2_i_1_n_0
    );
RAM_reg_1856_1919_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3A94F2A822D381B3",
      INIT_B => X"D06E876B04B5644C",
      INIT_C => X"BC000397F962C200",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1856_1919_0_2_n_0,
      DOB => RAM_reg_1856_1919_0_2_n_1,
      DOC => RAM_reg_1856_1919_0_2_n_2,
      DOD => NLW_RAM_reg_1856_1919_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1856_1919_0_2_i_1_n_0
    );
RAM_reg_1856_1919_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1792_1855_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1856_1919_0_2_i_1_n_0
    );
RAM_reg_1856_1919_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"7800000000000000",
      INIT_B => X"F5B8CEE952A6E9B4",
      INIT_C => X"0D80C2E950A7E877",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1856_1919_3_5_n_0,
      DOB => RAM_reg_1856_1919_3_5_n_1,
      DOC => RAM_reg_1856_1919_3_5_n_2,
      DOD => NLW_RAM_reg_1856_1919_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1856_1919_0_2_i_1_n_0
    );
RAM_reg_1856_1919_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"B27F3569514C2F08",
      INIT_B => X"78000396AFF3C600",
      INIT_C => X"556E71D6A958008B",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1856_1919_6_8_n_0,
      DOB => RAM_reg_1856_1919_6_8_n_1,
      DOC => RAM_reg_1856_1919_6_8_n_2,
      DOD => NLW_RAM_reg_1856_1919_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1856_1919_0_2_i_1_n_0
    );
RAM_reg_1856_1919_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F2EFB3C001FEEE7C",
      INIT_B => X"4010044000142900",
      INIT_C => X"380003BFFFE3C600",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1856_1919_9_11_n_0,
      DOB => RAM_reg_1856_1919_9_11_n_1,
      DOC => RAM_reg_1856_1919_9_11_n_2,
      DOD => NLW_RAM_reg_1856_1919_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1856_1919_0_2_i_1_n_0
    );
RAM_reg_1920_1983_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"80F2E243C0528C00",
      INIT_B => X"C741042100ED7024",
      INIT_C => X"0F3FF9C2860007FF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1920_1983_0_2_n_0,
      DOB => RAM_reg_1920_1983_0_2_n_1,
      DOC => RAM_reg_1920_1983_0_2_n_2,
      DOD => NLW_RAM_reg_1920_1983_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1920_1983_0_2_i_1_n_0
    );
RAM_reg_1920_1983_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1792_1855_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1920_1983_0_2_i_1_n_0
    );
RAM_reg_1920_1983_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000000000000FFFF",
      INIT_B => X"BBC340649B948B48",
      INIT_C => X"BEC34067CA977758",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1920_1983_3_5_n_0,
      DOB => RAM_reg_1920_1983_3_5_n_1,
      DOC => RAM_reg_1920_1983_3_5_n_2,
      DOD => NLW_RAM_reg_1920_1983_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1920_1983_0_2_i_1_n_0
    );
RAM_reg_1920_1983_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"49C341A04C68F8A7",
      INIT_B => X"073CBFC3860007FF",
      INIT_C => X"869FCBC0832A8CC2",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1920_1983_6_8_n_0,
      DOB => RAM_reg_1920_1983_6_8_n_1,
      DOC => RAM_reg_1920_1983_6_8_n_2,
      DOD => NLW_RAM_reg_1920_1983_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1920_1983_0_2_i_1_n_0
    );
RAM_reg_1920_1983_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"7A8003E6CCBD7425",
      INIT_B => X"0980022048400400",
      INIT_C => X"077FFDC3860003FF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1920_1983_9_11_n_0,
      DOB => RAM_reg_1920_1983_9_11_n_1,
      DOC => RAM_reg_1920_1983_9_11_n_2,
      DOD => NLW_RAM_reg_1920_1983_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1920_1983_0_2_i_1_n_0
    );
RAM_reg_192_255_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"D502AB521A1A4620",
      INIT_B => X"02810613FF747FDF",
      INIT_C => X"FDFF75FC018F8060",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_192_255_0_2_n_0,
      DOB => RAM_reg_192_255_0_2_n_1,
      DOC => RAM_reg_192_255_0_2_n_2,
      DOD => NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_192_255_0_2_i_1_n_0
    );
RAM_reg_192_255_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_0_63_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_192_255_0_2_i_1_n_0
    );
RAM_reg_192_255_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFFFFBE000000000",
      INIT_B => X"A560FB341B450E1F",
      INIT_C => X"A56039AFFF6E3FFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_192_255_3_5_n_0,
      DOB => RAM_reg_192_255_3_5_n_1,
      DOC => RAM_reg_192_255_3_5_n_2,
      DOD => NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_192_255_0_2_i_1_n_0
    );
RAM_reg_192_255_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"589F8C50019FC060",
      INIT_B => X"FFFF73E000000000",
      INIT_C => X"ADEC80FF64BA51E5",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_192_255_6_8_n_0,
      DOB => RAM_reg_192_255_6_8_n_1,
      DOC => RAM_reg_192_255_6_8_n_2,
      DOD => NLW_RAM_reg_192_255_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_192_255_0_2_i_1_n_0
    );
RAM_reg_192_255_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"52134697642B91E0",
      INIT_B => X"02004A809ADBEE7F",
      INIT_C => X"FDFF316001040000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_192_255_9_11_n_0,
      DOB => RAM_reg_192_255_9_11_n_1,
      DOC => RAM_reg_192_255_9_11_n_2,
      DOD => NLW_RAM_reg_192_255_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_192_255_0_2_i_1_n_0
    );
RAM_reg_1984_2047_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"38C48601812231A2",
      INIT_B => X"0307DEFE7104165C",
      INIT_C => X"FCC68C0006FFF800",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_1984_2047_0_2_n_0,
      DOB => RAM_reg_1984_2047_0_2_n_1,
      DOC => RAM_reg_1984_2047_0_2_n_2,
      DOD => NLW_RAM_reg_1984_2047_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1984_2047_0_2_i_1_n_0
    );
RAM_reg_1984_2047_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_1792_1855_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_1984_2047_0_2_i_1_n_0
    );
RAM_reg_1984_2047_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00000000FFFFF800",
      INIT_B => X"13652BB68DE0D836",
      INIT_C => X"12475A8773F8C406",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_1984_2047_3_5_n_0,
      DOB => RAM_reg_1984_2047_3_5_n_1,
      DOC => RAM_reg_1984_2047_3_5_n_2,
      DOD => NLW_RAM_reg_1984_2047_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1984_2047_0_2_i_1_n_0
    );
RAM_reg_1984_2047_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"12A9D678F80733F9",
      INIT_B => X"EDC68C0007FFF800",
      INIT_C => X"E2E424C98EEB5028",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_1984_2047_6_8_n_0,
      DOB => RAM_reg_1984_2047_6_8_n_1,
      DOC => RAM_reg_1984_2047_6_8_n_2,
      DOD => NLW_RAM_reg_1984_2047_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1984_2047_0_2_i_1_n_0
    );
RAM_reg_1984_2047_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"02C75ECE720C33EF",
      INIT_B => X"0229D23006080010",
      INIT_C => X"FDC68C0001F7F800",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_1984_2047_9_11_n_0,
      DOB => RAM_reg_1984_2047_9_11_n_1,
      DOC => RAM_reg_1984_2047_9_11_n_2,
      DOD => NLW_RAM_reg_1984_2047_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_1984_2047_0_2_i_1_n_0
    );
RAM_reg_2048_2111_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E56525EF05F6B751",
      INIT_B => X"ED9E75C81E0CDBC0",
      INIT_C => X"68000237F000063F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2048_2111_0_2_n_0,
      DOB => RAM_reg_2048_2111_0_2_n_1,
      DOC => RAM_reg_2048_2111_0_2_n_2,
      DOD => NLW_RAM_reg_2048_2111_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2048_2111_0_2_i_1_n_0
    );
RAM_reg_2048_2111_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2048_2111_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2048_2111_0_2_i_1_n_0
    );
RAM_reg_2048_2111_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_2048_2111_0_2_i_2_n_0
    );
RAM_reg_2048_2111_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1000FFFFF8000000",
      INIT_B => X"503E00241743DAC0",
      INIT_C => X"7E0F73F40443DDC0",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2048_2111_3_5_n_0,
      DOB => RAM_reg_2048_2111_3_5_n_1,
      DOC => RAM_reg_2048_2111_3_5_n_2,
      DOD => NLW_RAM_reg_2048_2111_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2048_2111_0_2_i_1_n_0
    );
RAM_reg_2048_2111_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"05F0F803F3BC3AC0",
      INIT_B => X"F80007FFF800073F",
      INIT_C => X"5AE809278F1C843F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2048_2111_6_8_n_0,
      DOB => RAM_reg_2048_2111_6_8_n_1,
      DOC => RAM_reg_2048_2111_6_8_n_2,
      DOD => NLW_RAM_reg_2048_2111_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2048_2111_0_2_i_1_n_0
    );
RAM_reg_2048_2111_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"74EF73087BFF7900",
      INIT_B => X"0510070808001A00",
      INIT_C => X"F80000F7F00007FF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2048_2111_9_11_n_0,
      DOB => RAM_reg_2048_2111_9_11_n_1,
      DOC => RAM_reg_2048_2111_9_11_n_2,
      DOD => NLW_RAM_reg_2048_2111_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2048_2111_0_2_i_1_n_0
    );
RAM_reg_2112_2175_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"38D75FD552C1B0F3",
      INIT_B => X"74C8060EE0C18D8F",
      INIT_C => X"0337F000063E7E7C",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2112_2175_0_2_n_0,
      DOB => RAM_reg_2112_2175_0_2_n_1,
      DOC => RAM_reg_2112_2175_0_2_n_2,
      DOD => NLW_RAM_reg_2112_2175_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2112_2175_0_2_i_1_n_0
    );
RAM_reg_2112_2175_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2048_2111_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2112_2175_0_2_i_1_n_0
    );
RAM_reg_2112_2175_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFFFF80000000000",
      INIT_B => X"0C0C436341041BF8",
      INIT_C => X"77FC006319041B7F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2112_2175_3_5_n_0,
      DOB => RAM_reg_2112_2175_3_5_n_1,
      DOC => RAM_reg_2112_2175_3_5_n_2,
      DOD => NLW_RAM_reg_2112_2175_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2112_2175_0_2_i_1_n_0
    );
RAM_reg_2112_2175_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FC0BF79CFF041B03",
      INIT_B => X"03F7F80006FBE4FC",
      INIT_C => X"0D8AA3887C3FE3E0",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2112_2175_6_8_n_0,
      DOB => RAM_reg_2112_2175_6_8_n_1,
      DOC => RAM_reg_2112_2175_6_8_n_2,
      DOD => NLW_RAM_reg_2112_2175_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2112_2175_0_2_i_1_n_0
    );
RAM_reg_2112_2175_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"77805FFFE500037F",
      INIT_B => X"038808001B000303",
      INIT_C => X"0077F00006FFFCFC",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2112_2175_9_11_n_0,
      DOB => RAM_reg_2112_2175_9_11_n_1,
      DOC => RAM_reg_2112_2175_9_11_n_2,
      DOD => NLW_RAM_reg_2112_2175_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2112_2175_0_2_i_1_n_0
    );
RAM_reg_2176_2239_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"16F065E23F0C8E16",
      INIT_B => X"070FC2E301C9E305",
      INIT_C => X"F000041CFE331C08",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2176_2239_0_2_n_0,
      DOB => RAM_reg_2176_2239_0_2_n_1,
      DOC => RAM_reg_2176_2239_0_2_n_2,
      DOD => NLW_RAM_reg_2176_2239_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2176_2239_0_2_i_1_n_0
    );
RAM_reg_2176_2239_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2048_2111_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2176_2239_0_2_i_1_n_0
    );
RAM_reg_2176_2239_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F800000000000000",
      INIT_B => X"039DCF0009FB4A95",
      INIT_C => X"001C190009CAAE97",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2176_2239_3_5_n_0,
      DOB => RAM_reg_2176_2239_3_5_n_1,
      DOC => RAM_reg_2176_2239_3_5_n_2,
      DOD => NLW_RAM_reg_2176_2239_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2176_2239_0_2_i_1_n_0
    );
RAM_reg_2176_2239_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F7E3ED0009CEED68",
      INIT_B => X"F80006FFF6311000",
      INIT_C => X"E383317FE75B8B6A",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2176_2239_6_8_n_0,
      DOB => RAM_reg_2176_2239_6_8_n_1,
      DOC => RAM_reg_2176_2239_6_8_n_2,
      DOD => NLW_RAM_reg_2176_2239_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2176_2239_0_2_i_1_n_0
    );
RAM_reg_2176_2239_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1FFF290001CAEFFD",
      INIT_B => X"0800CD0001CEEC00",
      INIT_C => X"F00006FFFE311000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2176_2239_9_11_n_0,
      DOB => RAM_reg_2176_2239_9_11_n_1,
      DOC => RAM_reg_2176_2239_9_11_n_2,
      DOD => NLW_RAM_reg_2176_2239_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2176_2239_0_2_i_1_n_0
    );
RAM_reg_2240_2303_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"283288BCA81E14DA",
      INIT_B => X"C0330826150D78C0",
      INIT_C => X"0DCCF7C3CE000337",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2240_2303_0_2_n_0,
      DOB => RAM_reg_2240_2303_0_2_n_1,
      DOC => RAM_reg_2240_2303_0_2_n_2,
      DOD => NLW_RAM_reg_2240_2303_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2240_2303_0_2_i_1_n_0
    );
RAM_reg_2240_2303_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2048_2111_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2240_2303_0_2_i_1_n_0
    );
RAM_reg_2240_2303_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000000000000FFFF",
      INIT_B => X"5600490A4DB5480B",
      INIT_C => X"960049247DB737FF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2240_2303_3_5_n_0,
      DOB => RAM_reg_2240_2303_3_5_n_1,
      DOC => RAM_reg_2240_2303_3_5_n_2,
      DOD => NLW_RAM_reg_2240_2303_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2240_2303_0_2_i_1_n_0
    );
RAM_reg_2240_2303_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"EA00493C7E48FC08",
      INIT_B => X"0DFFB6C3800003F7",
      INIT_C => X"2DFFB31A8D4C09C4",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2240_2303_6_8_n_0,
      DOB => RAM_reg_2240_2303_6_8_n_1,
      DOC => RAM_reg_2240_2303_6_8_n_2,
      DOD => NLW_RAM_reg_2240_2303_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2240_2303_0_2_i_1_n_0
    );
RAM_reg_2240_2303_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3E0001243DFF77C4",
      INIT_B => X"C200013C3E0003CC",
      INIT_C => X"0DFFFEC3C0000033",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2240_2303_9_11_n_0,
      DOB => RAM_reg_2240_2303_9_11_n_1,
      DOC => RAM_reg_2240_2303_9_11_n_2,
      DOD => NLW_RAM_reg_2240_2303_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2240_2303_0_2_i_1_n_0
    );
RAM_reg_2304_2367_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"8C840CFB145432B1",
      INIT_B => X"0C826E07784C070F",
      INIT_C => X"F37D960003B3F000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2304_2367_0_2_n_0,
      DOB => RAM_reg_2304_2367_0_2_n_1,
      DOC => RAM_reg_2304_2367_0_2_n_2,
      DOD => NLW_RAM_reg_2304_2367_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2304_2367_0_2_i_1_n_0
    );
RAM_reg_2304_2367_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2304_2367_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2304_2367_0_2_i_1_n_0
    );
RAM_reg_2304_2367_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_2304_2367_0_2_i_2_n_0
    );
RAM_reg_2304_2367_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00000000FFFFF800",
      INIT_B => X"C19DCBA46C0D478B",
      INIT_C => X"C17BE33C13FB4408",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2304_2367_3_5_n_0,
      DOB => RAM_reg_2304_2367_3_5_n_1,
      DOC => RAM_reg_2304_2367_3_5_n_2,
      DOD => NLW_RAM_reg_2304_2367_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2304_2367_0_2_i_1_n_0
    );
RAM_reg_2304_2367_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C1FBEAC3FC08B3F7",
      INIT_B => X"3E04140003F7F800",
      INIT_C => X"F274EA1B05CBAFE2",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2304_2367_6_8_n_0,
      DOB => RAM_reg_2304_2367_6_8_n_1,
      DOC => RAM_reg_2304_2367_6_8_n_2,
      DOD => NLW_RAM_reg_2304_2367_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2304_2367_0_2_i_1_n_0
    );
RAM_reg_2304_2367_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00F263677BC713FE",
      INIT_B => X"00F26A8003CF0801",
      INIT_C => X"FF0D94000030F000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2304_2367_9_11_n_0,
      DOB => RAM_reg_2304_2367_9_11_n_1,
      DOC => RAM_reg_2304_2367_9_11_n_2,
      DOD => NLW_RAM_reg_2304_2367_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2304_2367_0_2_i_1_n_0
    );
RAM_reg_2368_2431_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"5292D2701A203E03",
      INIT_B => X"6E62B84C2F1FCE03",
      INIT_C => X"9C0183B3F80009FC",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2368_2431_0_2_n_0,
      DOB => RAM_reg_2368_2431_0_2_n_1,
      DOC => RAM_reg_2368_2431_0_2_n_2,
      DOD => NLW_RAM_reg_2368_2431_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2368_2431_0_2_i_1_n_0
    );
RAM_reg_2368_2431_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2304_2367_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2368_2431_0_2_i_1_n_0
    );
RAM_reg_2368_2431_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00007FFFF0000000",
      INIT_B => X"50A268485BCFDA00",
      INIT_C => X"623813BB5C000A00",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2368_2431_3_5_n_0,
      DOB => RAM_reg_2368_2431_3_5_n_1,
      DOC => RAM_reg_2368_2431_3_5_n_2,
      DOD => NLW_RAM_reg_2368_2431_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2368_2431_0_2_i_1_n_0
    );
RAM_reg_2368_2431_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"63C7FC08ABFFF200",
      INIT_B => X"9C0003F7F0000DFF",
      INIT_C => X"B158014CB3FF2BFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2368_2431_6_8_n_0,
      DOB => RAM_reg_2368_2431_6_8_n_1,
      DOC => RAM_reg_2368_2431_6_8_n_2,
      DOD => NLW_RAM_reg_2368_2431_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2368_2431_0_2_i_1_n_0
    );
RAM_reg_2368_2431_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"23647B4303FF2A00",
      INIT_B => X"2283034F0800D200",
      INIT_C => X"DC0000B0F0000DFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2368_2431_9_11_n_0,
      DOB => RAM_reg_2368_2431_9_11_n_1,
      DOC => RAM_reg_2368_2431_9_11_n_2,
      DOD => NLW_RAM_reg_2368_2431_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2368_2431_0_2_i_1_n_0
    );
RAM_reg_2432_2495_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"D75A5A3A227031D2",
      INIT_B => X"BC4E271DD0003281",
      INIT_C => X"87B1F8000FFFCFFD",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2432_2495_0_2_n_0,
      DOB => RAM_reg_2432_2495_0_2_n_1,
      DOC => RAM_reg_2432_2495_0_2_n_2,
      DOD => NLW_RAM_reg_2432_2495_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2432_2495_0_2_i_1_n_0
    );
RAM_reg_2432_2495_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2304_2367_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2432_2495_0_2_i_1_n_0
    );
RAM_reg_2432_2495_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"7BFFF00000000000",
      INIT_B => X"C0461CDE490081F5",
      INIT_C => X"BBB514001D008165",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2432_2495_3_5_n_0,
      DOB => RAM_reg_2432_2495_3_5_n_1,
      DOC => RAM_reg_2432_2495_3_5_n_2,
      DOD => NLW_RAM_reg_2432_2495_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2432_2495_0_2_i_1_n_0
    );
RAM_reg_2432_2495_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"7C04EBFFFD008167",
      INIT_B => X"03FBF00002FF7E98",
      INIT_C => X"0348FFF29CFEDE9B",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2432_2495_6_8_n_0,
      DOB => RAM_reg_2432_2495_6_8_n_1,
      DOC => RAM_reg_2432_2495_6_8_n_2,
      DOD => NLW_RAM_reg_2432_2495_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2432_2495_0_2_i_1_n_0
    );
RAM_reg_2432_2495_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"7B430BF38C000000",
      INIT_B => X"034F000C7C000002",
      INIT_C => X"00B0F00003FFFFFD",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2432_2495_9_11_n_0,
      DOB => RAM_reg_2432_2495_9_11_n_1,
      DOC => RAM_reg_2432_2495_9_11_n_2,
      DOD => NLW_RAM_reg_2432_2495_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2432_2495_0_2_i_1_n_0
    );
RAM_reg_2496_2559_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3F170DD1B5412070",
      INIT_B => X"6638CE20B27B2C62",
      INIT_C => X"F80017FF4F87DE01",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2496_2559_0_2_n_0,
      DOB => RAM_reg_2496_2559_0_2_n_1,
      DOC => RAM_reg_2496_2559_0_2_n_2,
      DOD => NLW_RAM_reg_2496_2559_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2496_2559_0_2_i_1_n_0
    );
RAM_reg_2496_2559_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2304_2367_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2496_2559_0_2_i_1_n_0
    );
RAM_reg_2496_2559_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F000000000000000",
      INIT_B => X"28FE4E71142D3120",
      INIT_C => X"2000167115ED31B0",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2496_2559_3_5_n_0,
      DOB => RAM_reg_2496_2559_3_5_n_1,
      DOC => RAM_reg_2496_2559_3_5_n_2,
      DOD => NLW_RAM_reg_2496_2559_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2496_2559_0_2_i_1_n_0
    );
RAM_reg_2496_2559_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"DFFFFE7115ED304F",
      INIT_B => X"F000018EEA12CE00",
      INIT_C => X"FAC629FECAE3C8D5",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2496_2559_6_8_n_0,
      DOB => RAM_reg_2496_2559_6_8_n_1,
      DOC => RAM_reg_2496_2559_6_8_n_2,
      DOD => NLW_RAM_reg_2496_2559_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2496_2559_0_2_i_1_n_0
    );
RAM_reg_2496_2559_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0FC7300000E0016F",
      INIT_B => X"0038D80000E00000",
      INIT_C => X"F00007FFFF1FFE00",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2496_2559_9_11_n_0,
      DOB => RAM_reg_2496_2559_9_11_n_1,
      DOC => RAM_reg_2496_2559_9_11_n_2,
      DOD => NLW_RAM_reg_2496_2559_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2496_2559_0_2_i_1_n_0
    );
RAM_reg_2560_2623_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"AC25F70B44AE7E2C",
      INIT_B => X"CA1906F34510BE08",
      INIT_C => X"35FEF9FCBB8085F3",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2560_2623_0_2_n_0,
      DOB => RAM_reg_2560_2623_0_2_n_1,
      DOC => RAM_reg_2560_2623_0_2_n_2,
      DOD => NLW_RAM_reg_2560_2623_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2560_2623_0_2_i_1_n_0
    );
RAM_reg_2560_2623_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2560_2623_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2560_2623_0_2_i_1_n_0
    );
RAM_reg_2560_2623_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_2560_2623_0_2_i_2_n_0
    );
RAM_reg_2560_2623_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000007BFF",
      INIT_B => X"3E7898E514A74657",
      INIT_C => X"42789E06FAE73DA4",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2560_2623_3_5_n_0,
      DOB => RAM_reg_2560_2623_3_5_n_1,
      DOC => RAM_reg_2560_2623_3_5_n_2,
      DOD => NLW_RAM_reg_2560_2623_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2560_2623_0_2_i_1_n_0
    );
RAM_reg_2560_2623_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"BA789E07FE98F804",
      INIT_B => X"058761F8010003FB",
      INIT_C => X"B7FF770A6AB9BB32",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2560_2623_6_8_n_0,
      DOB => RAM_reg_2560_2623_6_8_n_1,
      DOC => RAM_reg_2560_2623_6_8_n_2,
      DOD => NLW_RAM_reg_2560_2623_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2560_2623_0_2_i_1_n_0
    );
RAM_reg_2560_2623_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"CA0006F36EFE427B",
      INIT_B => X"3A0006036E80027F",
      INIT_C => X"05FFF9FC91000180",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2560_2623_9_11_n_0,
      DOB => RAM_reg_2560_2623_9_11_n_1,
      DOC => RAM_reg_2560_2623_9_11_n_2,
      DOD => NLW_RAM_reg_2560_2623_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2560_2623_0_2_i_1_n_0
    );
RAM_reg_256_319_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"7CCE1DCF655AE43B",
      INIT_B => X"883FE33295BF1AC7",
      INIT_C => X"73C00601FBC001C3",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_256_319_0_2_n_0,
      DOB => RAM_reg_256_319_0_2_n_1,
      DOC => RAM_reg_256_319_0_2_n_2,
      DOD => NLW_RAM_reg_256_319_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_256_319_0_2_i_1_n_0
    );
RAM_reg_256_319_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_256_319_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_256_319_0_2_i_1_n_0
    );
RAM_reg_256_319_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_256_319_0_2_i_2_n_0
    );
RAM_reg_256_319_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFE000000000003C",
      INIT_B => X"9C725E81645608B8",
      INIT_C => X"F74FE27C95B7FE04",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_256_319_3_5_n_0,
      DOB => RAM_reg_256_319_3_5_n_1,
      DOC => RAM_reg_256_319_3_5_n_2,
      DOD => NLW_RAM_reg_256_319_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_256_319_0_2_i_1_n_0
    );
RAM_reg_256_319_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"84800703FBC801FF",
      INIT_B => X"7BE0000000000000",
      INIT_C => X"6AA9295EFBA900A2",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_256_319_6_8_n_0,
      DOB => RAM_reg_256_319_6_8_n_1,
      DOC => RAM_reg_256_319_6_8_n_2,
      DOD => NLW_RAM_reg_256_319_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_256_319_0_2_i_1_n_0
    );
RAM_reg_256_319_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"6A253CDDF1E10045",
      INIT_B => X"EE22C523FFDEFF80",
      INIT_C => X"11C0020000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_256_319_9_11_n_0,
      DOB => RAM_reg_256_319_9_11_n_1,
      DOC => RAM_reg_256_319_9_11_n_2,
      DOD => NLW_RAM_reg_256_319_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_256_319_0_2_i_1_n_0
    );
RAM_reg_2624_2687_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"CA4000A73E646740",
      INIT_B => X"2C00FB93BEA828FF",
      INIT_C => X"F400F8888513F000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2624_2687_0_2_n_0,
      DOB => RAM_reg_2624_2687_0_2_n_1,
      DOC => RAM_reg_2624_2687_0_2_n_2,
      DOD => NLW_RAM_reg_2624_2687_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2624_2687_0_2_i_1_n_0
    );
RAM_reg_2624_2687_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2560_2623_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2624_2687_0_2_i_1_n_0
    );
RAM_reg_2624_2687_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"03FF07007BFFF000",
      INIT_B => X"15FFC0A3463159B0",
      INIT_C => X"19FF04283D465980",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2624_2687_3_5_n_0,
      DOB => RAM_reg_2624_2687_3_5_n_1,
      DOC => RAM_reg_2624_2687_3_5_n_2,
      DOD => NLW_RAM_reg_2624_2687_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2624_2687_0_2_i_1_n_0
    );
RAM_reg_2624_2687_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1A00031FF844A67F",
      INIT_B => X"E7FFFF8003BBF000",
      INIT_C => X"E8001D3AFB52D67F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2624_2687_6_8_n_0,
      DOB => RAM_reg_2624_2687_6_8_n_1,
      DOC => RAM_reg_2624_2687_6_8_n_2,
      DOD => NLW_RAM_reg_2624_2687_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2624_2687_0_2_i_1_n_0
    );
RAM_reg_2624_2687_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0C00E4B602FB2FFF",
      INIT_B => X"0BFF030902BF0000",
      INIT_C => X"F7FFFF800100F000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2624_2687_9_11_n_0,
      DOB => RAM_reg_2624_2687_9_11_n_1,
      DOC => RAM_reg_2624_2687_9_11_n_2,
      DOD => NLW_RAM_reg_2624_2687_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2624_2687_0_2_i_1_n_0
    );
RAM_reg_2688_2751_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C74F3E3C551194B9",
      INIT_B => X"3A3EBEA838EEE081",
      INIT_C => X"03008513E0003F7E",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2688_2751_0_2_n_0,
      DOB => RAM_reg_2688_2751_0_2_n_1,
      DOC => RAM_reg_2688_2751_0_2_n_2,
      DOD => NLW_RAM_reg_2688_2751_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2688_2751_0_2_i_1_n_0
    );
RAM_reg_2688_2751_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2560_2623_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2688_2751_0_2_i_1_n_0
    );
RAM_reg_2688_2751_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FC007BFFF0000000",
      INIT_B => X"054B03290983803C",
      INIT_C => X"074139561983F83C",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2688_2751_3_5_n_0,
      DOB => RAM_reg_2688_2751_3_5_n_1,
      DOC => RAM_reg_2688_2751_3_5_n_2,
      DOD => NLW_RAM_reg_2688_2751_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2688_2751_0_2_i_1_n_0
    );
RAM_reg_2688_2751_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F93EFC44E67C383C",
      INIT_B => X"FE0003BBF00007C3",
      INIT_C => X"F9C4FB42C43F83FF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2688_2751_6_8_n_0,
      DOB => RAM_reg_2688_2751_6_8_n_1,
      DOC => RAM_reg_2688_2751_6_8_n_2,
      DOD => NLW_RAM_reg_2688_2751_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2688_2751_0_2_i_1_n_0
    );
RAM_reg_2688_2751_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"034502EB2FFFF800",
      INIT_B => X"FD3A02AF00003800",
      INIT_C => X"FE000110F00007FF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2688_2751_9_11_n_0,
      DOB => RAM_reg_2688_2751_9_11_n_1,
      DOC => RAM_reg_2688_2751_9_11_n_2,
      DOD => NLW_RAM_reg_2688_2751_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2688_2751_0_2_i_1_n_0
    );
RAM_reg_2752_2815_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1F74047F0208F833",
      INIT_B => X"BE407980E40037CF",
      INIT_C => X"85BBE0002FFFCFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2752_2815_0_2_n_0,
      DOB => RAM_reg_2752_2815_0_2_n_1,
      DOC => RAM_reg_2752_2815_0_2_n_2,
      DOD => NLW_RAM_reg_2752_2815_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2752_2815_0_2_i_1_n_0
    );
RAM_reg_2752_2815_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2560_2623_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2752_2815_0_2_i_1_n_0
    );
RAM_reg_2752_2815_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"7BFFF00010000000",
      INIT_B => X"031F1AC72C003506",
      INIT_C => X"39B40AC724000001",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2752_2815_3_5_n_0,
      DOB => RAM_reg_2752_2815_3_5_n_1,
      DOC => RAM_reg_2752_2815_3_5_n_2,
      DOD => NLW_RAM_reg_2752_2815_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2752_2815_0_2_i_1_n_0
    );
RAM_reg_2752_2815_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FC04E538EC003000",
      INIT_B => X"03FBF00013FFCFFF",
      INIT_C => X"732AFD00CBFF82FD",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2752_2815_6_8_n_0,
      DOB => RAM_reg_2752_2815_6_8_n_1,
      DOC => RAM_reg_2752_2815_6_8_n_2,
      DOD => NLW_RAM_reg_2752_2815_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2752_2815_0_2_i_1_n_0
    );
RAM_reg_2752_2815_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"8A6B17FFE0003503",
      INIT_B => X"026F100028003000",
      INIT_C => X"0190E00017FFCFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2752_2815_9_11_n_0,
      DOB => RAM_reg_2752_2815_9_11_n_1,
      DOC => RAM_reg_2752_2815_9_11_n_2,
      DOD => NLW_RAM_reg_2752_2815_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2752_2815_0_2_i_1_n_0
    );
RAM_reg_2816_2879_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"023FAD6058C5863A",
      INIT_B => X"7DC06A60E8391F5E",
      INIT_C => X"E0002F9F9801FF01",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2816_2879_0_2_n_0,
      DOB => RAM_reg_2816_2879_0_2_n_1,
      DOC => RAM_reg_2816_2879_0_2_n_2,
      DOD => NLW_RAM_reg_2816_2879_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2816_2879_0_2_i_1_n_0
    );
RAM_reg_2816_2879_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2816_2879_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2816_2879_0_2_i_1_n_0
    );
RAM_reg_2816_2879_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_2816_2879_0_2_i_2_n_0
    );
RAM_reg_2816_2879_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F000100007FE0000",
      INIT_B => X"0F067E0160C466BF",
      INIT_C => X"08067A010FC76024",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2816_2879_3_5_n_0,
      DOB => RAM_reg_2816_2879_3_5_n_1,
      DOC => RAM_reg_2816_2879_3_5_n_2,
      DOD => NLW_RAM_reg_2816_2879_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2816_2879_0_2_i_1_n_0
    );
RAM_reg_2816_2879_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E7F9BE016038605B",
      INIT_B => X"F00001FE9FFF9F00",
      INIT_C => X"BF81BDFE873A9820",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2816_2879_6_8_n_0,
      DOB => RAM_reg_2816_2879_6_8_n_1,
      DOC => RAM_reg_2816_2879_6_8_n_2,
      DOD => NLW_RAM_reg_2816_2879_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2816_2879_0_2_i_1_n_0
    );
RAM_reg_2816_2879_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"57FFF8006F0306A4",
      INIT_B => X"10003C0060FC005B",
      INIT_C => X"E00003FF9FFFFF00",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2816_2879_9_11_n_0,
      DOB => RAM_reg_2816_2879_9_11_n_1,
      DOC => RAM_reg_2816_2879_9_11_n_2,
      DOD => NLW_RAM_reg_2816_2879_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2816_2879_0_2_i_1_n_0
    );
RAM_reg_2880_2943_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C871620DF535DBE1",
      INIT_B => X"077160040314FA04",
      INIT_C => X"278E9FFC000BC1FB",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2880_2943_0_2_n_0,
      DOB => RAM_reg_2880_2943_0_2_n_1,
      DOC => RAM_reg_2880_2943_0_2_n_2,
      DOD => NLW_RAM_reg_2880_2943_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2880_2943_0_2_i_1_n_0
    );
RAM_reg_2880_2943_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2816_2879_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2880_2943_0_2_i_1_n_0
    );
RAM_reg_2880_2943_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"18000003FF803FFF",
      INIT_B => X"6C020316756A0382",
      INIT_C => X"5A03FFF27CA139F9",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2880_2943_3_5_n_0,
      DOB => RAM_reg_2880_2943_3_5_n_1,
      DOC => RAM_reg_2880_2943_3_5_n_2,
      DOD => NLW_RAM_reg_2880_2943_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2880_2943_0_2_i_1_n_0
    );
RAM_reg_2880_2943_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"BE03FFF1831FFC00",
      INIT_B => X"01FC000FFF8003FF",
      INIT_C => X"936DBFF2EB4CF594",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2880_2943_6_8_n_0,
      DOB => RAM_reg_2880_2943_6_8_n_1,
      DOC => RAM_reg_2880_2943_6_8_n_2,
      DOD => NLW_RAM_reg_2880_2943_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2880_2943_0_2_i_1_n_0
    );
RAM_reg_2880_2943_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"D601FFF608A58A13",
      INIT_B => X"3601FFF1F71B0217",
      INIT_C => X"09FE000FFF8001E8",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2880_2943_9_11_n_0,
      DOB => RAM_reg_2880_2943_9_11_n_1,
      DOC => RAM_reg_2880_2943_9_11_n_2,
      DOD => NLW_RAM_reg_2880_2943_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2880_2943_0_2_i_1_n_0
    );
RAM_reg_2944_3007_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"EEF3561ADB739BAE",
      INIT_B => X"81033038FA1667C1",
      INIT_C => X"7FFCF087C1E9E000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_2944_3007_0_2_n_0,
      DOB => RAM_reg_2944_3007_0_2_n_1,
      DOC => RAM_reg_2944_3007_0_2_n_2,
      DOD => NLW_RAM_reg_2944_3007_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2944_3007_0_2_i_1_n_0
    );
RAM_reg_2944_3007_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2816_2879_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_2944_3007_0_2_i_1_n_0
    );
RAM_reg_2944_3007_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00000F003FFFF000",
      INIT_B => X"120CAE2483521505",
      INIT_C => X"920F9FE239E91A04",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_2944_3007_3_5_n_0,
      DOB => RAM_reg_2944_3007_3_5_n_1,
      DOC => RAM_reg_2944_3007_3_5_n_2,
      DOD => NLW_RAM_reg_2944_3007_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2944_3007_0_2_i_1_n_0
    );
RAM_reg_2944_3007_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"920F809FFC00F7FB",
      INIT_B => X"6DF07F0003FFE000",
      INIT_C => X"C9065A36F5158A80",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_2944_3007_6_8_n_0,
      DOB => RAM_reg_2944_3007_6_8_n_1,
      DOC => RAM_reg_2944_3007_6_8_n_2,
      DOD => NLW_RAM_reg_2944_3007_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2944_3007_0_2_i_1_n_0
    );
RAM_reg_2944_3007_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"80073BF08A1370FE",
      INIT_B => X"8007048F02171701",
      INIT_C => X"7FF8FF0001E8E000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_2944_3007_9_11_n_0,
      DOB => RAM_reg_2944_3007_9_11_n_1,
      DOC => RAM_reg_2944_3007_9_11_n_2,
      DOD => NLW_RAM_reg_2944_3007_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_2944_3007_0_2_i_1_n_0
    );
RAM_reg_3008_3071_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"305B9BE79AAC9A79",
      INIT_B => X"3358FA0277C36579",
      INIT_C => X"CC07C1F9F0000386",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3008_3071_0_2_n_0,
      DOB => RAM_reg_3008_3071_0_2_n_1,
      DOC => RAM_reg_3008_3071_0_2_n_2,
      DOD => NLW_RAM_reg_3008_3071_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3008_3071_0_2_i_1_n_0
    );
RAM_reg_3008_3071_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_2816_2879_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3008_3071_0_2_i_1_n_0
    );
RAM_reg_3008_3071_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00003FFFE0001C00",
      INIT_B => X"CE0489E625019502",
      INIT_C => X"FCA339FD3A003D03",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3008_3071_3_5_n_0,
      DOB => RAM_reg_3008_3071_3_5_n_1,
      DOC => RAM_reg_3008_3071_3_5_n_2,
      DOD => NLW_RAM_reg_3008_3071_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3008_3071_0_2_i_1_n_0
    );
RAM_reg_3008_3071_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FF5FFC04D7FFDF03",
      INIT_B => X"000003FBE00000FC",
      INIT_C => X"2E2355150A825A7D",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3008_3071_6_8_n_0,
      DOB => RAM_reg_3008_3071_6_8_n_1,
      DOC => RAM_reg_3008_3071_6_8_n_2,
      DOD => NLW_RAM_reg_3008_3071_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3008_3071_0_2_i_1_n_0
    );
RAM_reg_3008_3071_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3C802A13E0FE7801",
      INIT_B => X"3F5F821717019A01",
      INIT_C => X"C00001E8E00005FE",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3008_3071_9_11_n_0,
      DOB => RAM_reg_3008_3071_9_11_n_1,
      DOC => RAM_reg_3008_3071_9_11_n_2,
      DOD => NLW_RAM_reg_3008_3071_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3008_3071_0_2_i_1_n_0
    );
RAM_reg_3072_3135_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1BAFA63833B05EF1",
      INIT_B => X"FA0A59C7DE304000",
      INIT_C => X"C1F1F00033CFBFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3072_3135_0_2_n_0,
      DOB => RAM_reg_3072_3135_0_2_n_1,
      DOC => RAM_reg_3072_3135_0_2_n_2,
      DOD => NLW_RAM_reg_3072_3135_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3072_3135_0_2_i_1_n_0
    );
RAM_reg_3072_3135_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3072_3135_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3072_3135_0_2_i_1_n_0
    );
RAM_reg_3072_3135_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_3072_3135_0_2_i_2_n_0
    );
RAM_reg_3072_3135_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3FFFE0000C000000",
      INIT_B => X"49A62B093D835100",
      INIT_C => X"79FD28008E834100",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3072_3135_3_5_n_0,
      DOB => RAM_reg_3072_3135_3_5_n_1,
      DOC => RAM_reg_3072_3135_3_5_n_2,
      DOD => NLW_RAM_reg_3072_3135_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3072_3135_0_2_i_1_n_0
    );
RAM_reg_3072_3135_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"BC04D7FFFF834100",
      INIT_B => X"03FBE000007CBEFF",
      INIT_C => X"52C13C8F5C7C52C0",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3072_3135_6_8_n_0,
      DOB => RAM_reg_3072_3135_6_8_n_1,
      DOC => RAM_reg_3072_3135_6_8_n_2,
      DOD => NLW_RAM_reg_3072_3135_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3072_3135_0_2_i_1_n_0
    );
RAM_reg_3072_3135_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"2843D4FF4F004000",
      INIT_B => X"82470300BF004000",
      INIT_C => X"01B8E00000FFBFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3072_3135_9_11_n_0,
      DOB => RAM_reg_3072_3135_9_11_n_1,
      DOC => RAM_reg_3072_3135_9_11_n_2,
      DOD => NLW_RAM_reg_3072_3135_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3072_3135_0_2_i_1_n_0
    );
RAM_reg_3136_3199_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"80B1790001207D64",
      INIT_B => X"49CEF40000000493",
      INIT_C => X"F00031FFFFFFF80F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3136_3199_0_2_n_0,
      DOB => RAM_reg_3136_3199_0_2_n_1,
      DOC => RAM_reg_3136_3199_0_2_n_2,
      DOD => NLW_RAM_reg_3136_3199_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3136_3199_0_2_i_1_n_0
    );
RAM_reg_3136_3199_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3072_3135_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3136_3199_0_2_i_1_n_0
    );
RAM_reg_3136_3199_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E0000E0000000000",
      INIT_B => X"1F9C37C01080875C",
      INIT_C => X"3E002EC010808373",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3136_3199_3_5_n_0,
      DOB => RAM_reg_3136_3199_3_5_n_1,
      DOC => RAM_reg_3136_3199_3_5_n_2,
      DOD => NLW_RAM_reg_3136_3199_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3136_3199_0_2_i_1_n_0
    );
RAM_reg_3136_3199_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C1FFFFC01080848F",
      INIT_B => X"E000003FEF7F7800",
      INIT_C => X"11FEF0A7637C431C",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3136_3199_6_8_n_0,
      DOB => RAM_reg_3136_3199_6_8_n_1,
      DOC => RAM_reg_3136_3199_6_8_n_2,
      DOD => NLW_RAM_reg_3136_3199_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3136_3199_0_2_i_1_n_0
    );
RAM_reg_3136_3199_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"CFFFE98000000773",
      INIT_B => X"000039800000048F",
      INIT_C => X"E000067FFFFFF800",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3136_3199_9_11_n_0,
      DOB => RAM_reg_3136_3199_9_11_n_1,
      DOC => RAM_reg_3136_3199_9_11_n_2,
      DOD => NLW_RAM_reg_3136_3199_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3136_3199_0_2_i_1_n_0
    );
RAM_reg_3200_3263_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"BD786020F3C52DE5",
      INIT_B => X"290060200812DA02",
      INIT_C => X"69FF9FDFF00FC1F9",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3200_3263_0_2_n_0,
      DOB => RAM_reg_3200_3263_0_2_n_1,
      DOC => RAM_reg_3200_3263_0_2_n_2,
      DOD => NLW_RAM_reg_3200_3263_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3200_3263_0_2_i_1_n_0
    );
RAM_reg_3200_3263_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3072_3135_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3200_3263_0_2_i_1_n_0
    );
RAM_reg_3200_3263_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1600000000003FFF",
      INIT_B => X"D3C602602BDD27F5",
      INIT_C => X"B746026023F21BFD",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3200_3263_3_5_n_0,
      DOB => RAM_reg_3200_3263_3_5_n_1,
      DOC => RAM_reg_3200_3263_3_5_n_2,
      DOD => NLW_RAM_reg_3200_3263_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3200_3263_0_2_i_1_n_0
    );
RAM_reg_3200_3263_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"7FC60260280FFE04",
      INIT_B => X"0039FD9FD00001FB",
      INIT_C => X"15D99FDB4BBD0D43",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3200_3263_6_8_n_0,
      DOB => RAM_reg_3200_3263_6_8_n_1,
      DOC => RAM_reg_3200_3263_6_8_n_2,
      DOD => NLW_RAM_reg_3200_3263_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3200_3263_0_2_i_1_n_0
    );
RAM_reg_3200_3263_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"B540000003D26001",
      INIT_B => X"7DC00000080F8207",
      INIT_C => X"023FFFFFF00001F8",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3200_3263_9_11_n_0,
      DOB => RAM_reg_3200_3263_9_11_n_1,
      DOC => RAM_reg_3200_3263_9_11_n_2,
      DOD => NLW_RAM_reg_3200_3263_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3200_3263_0_2_i_1_n_0
    );
RAM_reg_320_383_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E3F843C2F3FF964B",
      INIT_B => X"0807C79D0E20C288",
      INIT_C => X"1C003FE001E17DF7",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_320_383_0_2_n_0,
      DOB => RAM_reg_320_383_0_2_n_1,
      DOC => RAM_reg_320_383_0_2_n_2,
      DOD => NLW_RAM_reg_320_383_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_320_383_0_2_i_1_n_0
    );
RAM_reg_320_383_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_256_319_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_320_383_0_2_i_1_n_0
    );
RAM_reg_320_383_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00000000001EFFFF",
      INIT_B => X"AB1343C50DDE8100",
      INIT_C => X"48EFC79FFC410200",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_320_383_3_5_n_0,
      DOB => RAM_reg_320_383_3_5_n_1,
      DOC => RAM_reg_320_383_3_5_n_2,
      DOD => NLW_RAM_reg_320_383_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_320_383_0_2_i_1_n_0
    );
RAM_reg_320_383_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1C003FE003BE7CFF",
      INIT_B => X"000000000000FFFF",
      INIT_C => X"54FC742A1278A13C",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_320_383_6_8_n_0,
      DOB => RAM_reg_320_383_6_8_n_1,
      DOC => RAM_reg_320_383_6_8_n_2,
      DOD => NLW_RAM_reg_320_383_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_320_383_0_2_i_1_n_0
    );
RAM_reg_320_383_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E3FC0C4A1106DDC3",
      INIT_B => X"1403FC75EF808100",
      INIT_C => X"0800038000007EFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_320_383_9_11_n_0,
      DOB => RAM_reg_320_383_9_11_n_1,
      DOC => RAM_reg_320_383_9_11_n_2,
      DOD => NLW_RAM_reg_320_383_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_320_383_0_2_i_1_n_0
    );
RAM_reg_3264_3327_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0E809DC62DE51170",
      INIT_B => X"0E804010DA0258CF",
      INIT_C => X"F17FE00FC1F9E000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3264_3327_0_2_n_0,
      DOB => RAM_reg_3264_3327_0_2_n_1,
      DOC => RAM_reg_3264_3327_0_2_n_2,
      DOD => NLW_RAM_reg_3264_3327_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3264_3327_0_2_i_1_n_0
    );
RAM_reg_3264_3327_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3072_3135_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3264_3327_0_2_i_1_n_0
    );
RAM_reg_3264_3327_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000000003FFFE000",
      INIT_B => X"04818DBD87FEF976",
      INIT_C => X"0481AFD23BFF8908",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3264_3327_3_5_n_0,
      DOB => RAM_reg_3264_3327_3_5_n_1,
      DOC => RAM_reg_3264_3327_3_5_n_2,
      DOD => NLW_RAM_reg_3264_3327_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3264_3327_0_2_i_1_n_0
    );
RAM_reg_3264_3327_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0481B00FFE0646FF",
      INIT_B => X"FB7E400001F9E000",
      INIT_C => X"FFFC2C3D9CED80B7",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3264_3327_6_8_n_0,
      DOB => RAM_reg_3264_3327_6_8_n_1,
      DOC => RAM_reg_3264_3327_6_8_n_2,
      DOD => NLW_RAM_reg_3264_3327_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3264_3327_0_2_i_1_n_0
    );
RAM_reg_3264_3327_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00002FD260014FB7",
      INIT_B => X"0000300F82070048",
      INIT_C => X"FFFFC00001F8E000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3264_3327_9_11_n_0,
      DOB => RAM_reg_3264_3327_9_11_n_1,
      DOC => RAM_reg_3264_3327_9_11_n_2,
      DOD => NLW_RAM_reg_3264_3327_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3264_3327_0_2_i_1_n_0
    );
RAM_reg_3328_3391_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"2260AFEB31A0D195",
      INIT_B => X"90105804785F4599",
      INIT_C => X"C00FC1F9C00005FE",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3328_3391_0_2_n_0,
      DOB => RAM_reg_3328_3391_0_2_n_1,
      DOC => RAM_reg_3328_3391_0_2_n_2,
      DOD => NLW_RAM_reg_3328_3391_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3328_3391_0_2_i_1_n_0
    );
RAM_reg_3328_3391_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3328_3391_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3328_3391_0_2_i_1_n_0
    );
RAM_reg_3328_3391_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_3328_3391_0_2_i_2_n_0
    );
RAM_reg_3328_3391_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00003FFFE0003A00",
      INIT_B => X"23CE03FA906B73A1",
      INIT_C => X"6FE03FFB8010FB81",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3328_3391_3_5_n_0,
      DOB => RAM_reg_3328_3391_3_5_n_1,
      DOC => RAM_reg_3328_3391_3_5_n_2,
      DOD => NLW_RAM_reg_3328_3391_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3328_3391_0_2_i_1_n_0
    );
RAM_reg_3328_3391_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"501FFE024FFF3FE1",
      INIT_B => X"800001FDE000001E",
      INIT_C => X"64161EF1A067B15E",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3328_3391_6_8_n_0,
      DOB => RAM_reg_3328_3391_6_8_n_1,
      DOC => RAM_reg_3328_3391_6_8_n_2,
      DOD => NLW_RAM_reg_3328_3391_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3328_3391_0_2_i_1_n_0
    );
RAM_reg_3328_3391_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"6BF0620D6FE77920",
      INIT_B => X"500F800720183D60",
      INIT_C => X"800001F8C000029F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3328_3391_9_11_n_0,
      DOB => RAM_reg_3328_3391_9_11_n_1,
      DOC => RAM_reg_3328_3391_9_11_n_2,
      DOD => NLW_RAM_reg_3328_3391_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3328_3391_0_2_i_1_n_0
    );
RAM_reg_3392_3455_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"AFEE7960989201E1",
      INIT_B => X"9805389F46AC01E0",
      INIT_C => X"41F9C00046BFFE1F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3392_3455_0_2_n_0,
      DOB => RAM_reg_3392_3455_0_2_n_1,
      DOC => RAM_reg_3392_3455_0_2_n_2,
      DOD => NLW_RAM_reg_3392_3455_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3392_3455_0_2_i_1_n_0
    );
RAM_reg_3392_3455_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3328_3391_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3392_3455_0_2_i_1_n_0
    );
RAM_reg_3392_3455_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3FFFE00039400000",
      INIT_B => X"E1D54028FFF80164",
      INIT_C => X"DFD3501039C80164",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3392_3455_3_5_n_0,
      DOB => RAM_reg_3392_3455_3_5_n_1,
      DOC => RAM_reg_3392_3455_3_5_n_2,
      DOD => NLW_RAM_reg_3392_3455_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3392_3455_0_2_i_1_n_0
    );
RAM_reg_3392_3455_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3E2A8FFF7FF80164",
      INIT_B => X"01FDE0000007FE9B",
      INIT_C => X"CEB4C127F6953FFB",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3392_3455_6_8_n_0,
      DOB => RAM_reg_3392_3455_6_8_n_1,
      DOC => RAM_reg_3392_3455_6_8_n_2,
      DOD => NLW_RAM_reg_3392_3455_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3392_3455_0_2_i_1_n_0
    );
RAM_reg_3392_3455_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"A20C2FE730A00000",
      INIT_B => X"0006201876B00000",
      INIT_C => X"01F9C000094FFFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3392_3455_9_11_n_0,
      DOB => RAM_reg_3392_3455_9_11_n_1,
      DOC => RAM_reg_3392_3455_9_11_n_2,
      DOD => NLW_RAM_reg_3392_3455_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3392_3455_0_2_i_1_n_0
    );
RAM_reg_3456_3519_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"70555B07E0E2C660",
      INIT_B => X"398E01080084B01F",
      INIT_C => X"C000830FFF7F0000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3456_3519_0_2_n_0,
      DOB => RAM_reg_3456_3519_0_2_n_1,
      DOC => RAM_reg_3456_3519_0_2_n_2,
      DOD => NLW_RAM_reg_3456_3519_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3456_3519_0_2_i_1_n_0
    );
RAM_reg_3456_3519_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3328_3391_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3456_3519_0_2_i_1_n_0
    );
RAM_reg_3456_3519_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E0007CF000000000",
      INIT_B => X"615D5C4E18983267",
      INIT_C => X"5041FD7218997BE7",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3456_3519_3_5_n_0,
      DOB => RAM_reg_3456_3519_3_5_n_1,
      DOC => RAM_reg_3456_3519_3_5_n_2,
      DOD => NLW_RAM_reg_3456_3519_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3456_3519_0_2_i_1_n_0
    );
RAM_reg_3456_3519_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"8FBE7F7E18998418",
      INIT_B => X"E0000081E7660000",
      INIT_C => X"E39E5973C7053D9F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3456_3519_6_8_n_0,
      DOB => RAM_reg_3456_3519_6_8_n_1,
      DOC => RAM_reg_3456_3519_6_8_n_2,
      DOD => NLW_RAM_reg_3456_3519_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3456_3519_0_2_i_1_n_0
    );
RAM_reg_3456_3519_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"2FFFF97E0061767F",
      INIT_B => X"20007B7E00018000",
      INIT_C => X"C0000481FFFE0000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3456_3519_9_11_n_0,
      DOB => RAM_reg_3456_3519_9_11_n_1,
      DOC => RAM_reg_3456_3519_9_11_n_2,
      DOD => NLW_RAM_reg_3456_3519_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3456_3519_0_2_i_1_n_0
    );
RAM_reg_3520_3583_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"B32098963DC309AB",
      INIT_B => X"8214600B603C9C01",
      INIT_C => X"8307FFFC800041FD",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3520_3583_0_2_n_0,
      DOB => RAM_reg_3520_3583_0_2_n_1,
      DOC => RAM_reg_3520_3583_0_2_n_2,
      DOD => NLW_RAM_reg_3520_3583_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3520_3583_0_2_i_1_n_0
    );
RAM_reg_3520_3583_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3328_3391_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3520_3583_0_2_i_1_n_0
    );
RAM_reg_3520_3583_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"7CF8000000003FFF",
      INIT_B => X"2F348461CCC421F2",
      INIT_C => X"FEFB84655EC7DFF6",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3520_3583_3_5_n_0,
      DOB => RAM_reg_3520_3583_3_5_n_1,
      DOC => RAM_reg_3520_3583_3_5_n_2,
      DOD => NLW_RAM_reg_3520_3583_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3520_3583_0_2_i_1_n_0
    );
RAM_reg_3520_3583_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFFF8466A1383E0B",
      INIT_B => X"00007B98000001FD",
      INIT_C => X"3FE8B39EC23C7C31",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3520_3583_6_8_n_0,
      DOB => RAM_reg_3520_3583_6_8_n_1,
      DOC => RAM_reg_3520_3583_6_8_n_2,
      DOD => NLW_RAM_reg_3520_3583_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3520_3583_0_2_i_1_n_0
    );
RAM_reg_3520_3583_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FEEF80045DFF8208",
      INIT_B => X"FFEF8007A0000002",
      INIT_C => X"00107FF8000001FD",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3520_3583_9_11_n_0,
      DOB => RAM_reg_3520_3583_9_11_n_1,
      DOC => RAM_reg_3520_3583_9_11_n_2,
      DOD => NLW_RAM_reg_3520_3583_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3520_3583_0_2_i_1_n_0
    );
RAM_reg_3584_3647_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F43CE00319E17655",
      INIT_B => X"0808DBFC9C03398E",
      INIT_C => X"FFF2800041FDC000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3584_3647_0_2_n_0,
      DOB => RAM_reg_3584_3647_0_2_n_1,
      DOC => RAM_reg_3584_3647_0_2_n_2,
      DOD => NLW_RAM_reg_3584_3647_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3584_3647_0_2_i_1_n_0
    );
RAM_reg_3584_3647_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3584_3647_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3584_3647_0_2_i_1_n_0
    );
RAM_reg_3584_3647_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_3584_3647_0_2_i_2_n_0
    );
RAM_reg_3584_3647_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000100003FFFE000",
      INIT_B => X"11D159826BE82702",
      INIT_C => X"F1D57C03DDFC1003",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3584_3647_3_5_n_0,
      DOB => RAM_reg_3584_3647_3_5_n_1,
      DOC => RAM_reg_3584_3647_3_5_n_2,
      DOD => NLW_RAM_reg_3584_3647_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3584_3647_0_2_i_1_n_0
    );
RAM_reg_3584_3647_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F1DB03FC3E01CFFC",
      INIT_B => X"0E20800001FFE000",
      INIT_C => X"2408E3F05EF7E48D",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3584_3647_6_8_n_0,
      DOB => RAM_reg_3584_3647_6_8_n_1,
      DOC => RAM_reg_3584_3647_6_8_n_2,
      DOD => NLW_RAM_reg_3584_3647_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3584_3647_0_2_i_1_n_0
    );
RAM_reg_3584_3647_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E004DBF3A0082CFE",
      INIT_B => X"E00A800C00022300",
      INIT_C => X"1FF1000001FDC000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3584_3647_9_11_n_0,
      DOB => RAM_reg_3584_3647_9_11_n_1,
      DOC => RAM_reg_3584_3647_9_11_n_2,
      DOD => NLW_RAM_reg_3584_3647_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3584_3647_0_2_i_1_n_0
    );
RAM_reg_3648_3711_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"8F7B0AC17029B9F9",
      INIT_B => X"36849E023FC70102",
      INIT_C => X"800043FDC0000183",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3648_3711_0_2_n_0,
      DOB => RAM_reg_3648_3711_0_2_n_1,
      DOC => RAM_reg_3648_3711_0_2_n_2,
      DOD => NLW_RAM_reg_3648_3711_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3648_3711_0_2_i_1_n_0
    );
RAM_reg_3648_3711_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3584_3647_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3648_3711_0_2_i_1_n_0
    );
RAM_reg_3648_3711_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00003DFFE000FE7C",
      INIT_B => X"3752EEFE251EBA6C",
      INIT_C => X"3953DDFF121EFF7F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3648_3711_3_5_n_0,
      DOB => RAM_reg_3648_3711_3_5_n_1,
      DOC => RAM_reg_3648_3711_3_5_n_2,
      DOD => NLW_RAM_reg_3648_3711_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3648_3711_0_2_i_1_n_0
    );
RAM_reg_3648_3711_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"86AC3E02CFE1FFFF",
      INIT_B => X"000001FDE0000000",
      INIT_C => X"0A8C8FF7C181BE70",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3648_3711_6_8_n_0,
      DOB => RAM_reg_3648_3711_6_8_n_1,
      DOC => RAM_reg_3648_3711_6_8_n_2,
      DOD => NLW_RAM_reg_3648_3711_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3648_3711_0_2_i_1_n_0
    );
RAM_reg_3648_3711_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"33FFE10929FFFF73",
      INIT_B => X"840001032600FFF3",
      INIT_C => X"000000FCC000000C",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3648_3711_9_11_n_0,
      DOB => RAM_reg_3648_3711_9_11_n_1,
      DOC => RAM_reg_3648_3711_9_11_n_2,
      DOD => NLW_RAM_reg_3648_3711_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3648_3711_0_2_i_1_n_0
    );
RAM_reg_3712_3775_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"8FCA70217C892F16",
      INIT_B => X"9F013FCE00D140D4",
      INIT_C => X"42FCC00100C17FEC",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3712_3775_0_2_n_0,
      DOB => RAM_reg_3712_3775_0_2_n_1,
      DOC => RAM_reg_3712_3775_0_2_n_2,
      DOD => NLW_RAM_reg_3712_3775_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3712_3775_0_2_i_1_n_0
    );
RAM_reg_3712_3775_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3584_3647_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3712_3775_0_2_i_1_n_0
    );
RAM_reg_3712_3775_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3DFFE000FF3E8003",
      INIT_B => X"EDFF2416DD31B605",
      INIT_C => X"DCFF1217FF9DCE25",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3712_3775_3_5_n_0,
      DOB => RAM_reg_3712_3775_3_5_n_1,
      DOC => RAM_reg_3712_3775_3_5_n_2,
      DOD => NLW_RAM_reg_3712_3775_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3712_3775_0_2_i_1_n_0
    );
RAM_reg_3712_3775_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3E03CFE9FFFDFE3D",
      INIT_B => X"01FCE000000201C2",
      INIT_C => X"286565E1BF4CADED",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3712_3775_6_8_n_0,
      DOB => RAM_reg_3712_3775_6_8_n_1,
      DOC => RAM_reg_3712_3775_6_8_n_2,
      DOD => NLW_RAM_reg_3712_3775_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3712_3775_0_2_i_1_n_0
    );
RAM_reg_3712_3775_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"45182DFEBFACDC25",
      INIT_B => X"81032201BFECFC3D",
      INIT_C => X"00FCC000401303C2",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3712_3775_9_11_n_0,
      DOB => RAM_reg_3712_3775_9_11_n_1,
      DOC => RAM_reg_3712_3775_9_11_n_2,
      DOD => NLW_RAM_reg_3712_3775_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3712_3775_0_2_i_1_n_0
    );
RAM_reg_3776_3839_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C6B13E091F8332FF",
      INIT_B => X"89CF010516139F00",
      INIT_C => X"7001010119F3C000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3776_3839_0_2_n_0,
      DOB => RAM_reg_3776_3839_0_2_n_1,
      DOC => RAM_reg_3776_3839_0_2_n_2,
      DOD => NLW_RAM_reg_3776_3839_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3776_3839_0_2_i_1_n_0
    );
RAM_reg_3776_3839_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3584_3647_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3776_3839_0_2_i_1_n_0
    );
RAM_reg_3776_3839_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E000FEFEE00C0000",
      INIT_B => X"9297B7B3F52D1B5F",
      INIT_C => X"B017FECBFB5EB85F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3776_3839_3_5_n_0,
      DOB => RAM_reg_3776_3839_3_5_n_1,
      DOC => RAM_reg_3776_3839_3_5_n_2,
      DOD => NLW_RAM_reg_3776_3839_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3776_3839_0_2_i_1_n_0
    );
RAM_reg_3776_3839_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"4FE9FFFBFF7FC7A0",
      INIT_B => X"E000000400800000",
      INIT_C => X"5149F5FBCC55E325",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3776_3839_6_8_n_0,
      DOB => RAM_reg_3776_3839_6_8_n_1,
      DOC => RAM_reg_3776_3839_6_8_n_2,
      DOD => NLW_RAM_reg_3776_3839_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3776_3839_0_2_i_1_n_0
    );
RAM_reg_3776_3839_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0D7FFCCBCA765FFF",
      INIT_B => X"0281FDFBCE778000",
      INIT_C => X"E000020431880000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3776_3839_9_11_n_0,
      DOB => RAM_reg_3776_3839_9_11_n_1,
      DOC => RAM_reg_3776_3839_9_11_n_2,
      DOD => NLW_RAM_reg_3776_3839_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3776_3839_0_2_i_1_n_0
    );
RAM_reg_3840_3903_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"43C103A2E52F16B8",
      INIT_B => X"C40105C35BC69C03",
      INIT_C => X"C00107E3400041FD",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3840_3903_0_2_n_0,
      DOB => RAM_reg_3840_3903_0_2_n_1,
      DOC => RAM_reg_3840_3903_0_2_n_2,
      DOD => NLW_RAM_reg_3840_3903_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3840_3903_0_2_i_1_n_0
    );
RAM_reg_3840_3903_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3840_3903_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3840_3903_0_2_i_1_n_0
    );
RAM_reg_3840_3903_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_3840_3903_0_2_i_2_n_0
    );
RAM_reg_3840_3903_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3FFEF81C80003FFF",
      INIT_B => X"BD6BF2FE34F627F1",
      INIT_C => X"7EF7F59CE4FE1CF1",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3840_3903_3_5_n_0,
      DOB => RAM_reg_3840_3903_3_5_n_1,
      DOC => RAM_reg_3840_3903_3_5_n_2,
      DOD => NLW_RAM_reg_3840_3903_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3840_3903_0_2_i_1_n_0
    );
RAM_reg_3840_3903_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFFFF7FFDB01FE0C",
      INIT_B => X"00000800000001FF",
      INIT_C => X"496BF2BD0B638AAD",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3840_3903_6_8_n_0,
      DOB => RAM_reg_3840_3903_6_8_n_1,
      DOC => RAM_reg_3840_3903_6_8_n_2,
      DOD => NLW_RAM_reg_3840_3903_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3840_3903_0_2_i_1_n_0
    );
RAM_reg_3840_3903_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"CAF7F5DEEFFFF502",
      INIT_B => X"CBFFF7FFD0000102",
      INIT_C => X"34000800000000FD",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3840_3903_9_11_n_0,
      DOB => RAM_reg_3840_3903_9_11_n_1,
      DOC => RAM_reg_3840_3903_9_11_n_2,
      DOD => NLW_RAM_reg_3840_3903_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3840_3903_0_2_i_1_n_0
    );
RAM_reg_384_447_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"BA3A2243E2217BAA",
      INIT_B => X"CEE23BE985C0002D",
      INIT_C => X"047DC421FEFFFFF0",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_384_447_0_2_n_0,
      DOB => RAM_reg_384_447_0_2_n_1,
      DOC => RAM_reg_384_447_0_2_n_2,
      DOD => NLW_RAM_reg_384_447_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_384_447_0_2_i_1_n_0
    );
RAM_reg_384_447_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_256_319_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_384_447_0_2_i_1_n_0
    );
RAM_reg_384_447_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000001E7FFFFFC0",
      INIT_B => X"D2253FF2D6125F22",
      INIT_C => X"E6F839285212FFDD",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_384_447_3_5_n_0,
      DOB => RAM_reg_384_447_3_5_n_1,
      DOC => RAM_reg_384_447_3_5_n_2,
      DOD => NLW_RAM_reg_384_447_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_384_447_0_2_i_1_n_0
    );
RAM_reg_384_447_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0C7FC61FACED0020",
      INIT_B => X"000000007FFFFFC0",
      INIT_C => X"2CDA13ECDE1F2035",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_384_447_6_8_n_0,
      DOB => RAM_reg_384_447_6_8_n_1,
      DOC => RAM_reg_384_447_6_8_n_2,
      DOD => NLW_RAM_reg_384_447_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_384_447_0_2_i_1_n_0
    );
RAM_reg_384_447_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"34DDD51AA5E0A02F",
      INIT_B => X"CE5FEE000100A000",
      INIT_C => X"002000007EFF5FC0",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_384_447_9_11_n_0,
      DOB => RAM_reg_384_447_9_11_n_1,
      DOC => RAM_reg_384_447_9_11_n_2,
      DOD => NLW_RAM_reg_384_447_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_384_447_0_2_i_1_n_0
    );
RAM_reg_3904_3967_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"2923500D16B04074",
      INIT_B => X"0F772DC69C030184",
      INIT_C => X"0F77000041FDF80B",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3904_3967_0_2_n_0,
      DOB => RAM_reg_3904_3967_0_2_n_1,
      DOC => RAM_reg_3904_3967_0_2_n_2,
      DOD => NLW_RAM_reg_3904_3967_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3904_3967_0_2_i_1_n_0
    );
RAM_reg_3904_3967_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3840_3903_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3904_3967_0_2_i_1_n_0
    );
RAM_reg_3904_3967_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F088C0003FFFE000",
      INIT_B => X"F45C01E226F587A9",
      INIT_C => X"FB2B03FE1CF5B603",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3904_3967_3_5_n_0,
      DOB => RAM_reg_3904_3967_3_5_n_1,
      DOC => RAM_reg_3904_3967_3_5_n_2,
      DOD => NLW_RAM_reg_3904_3967_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3904_3967_0_2_i_1_n_0
    );
RAM_reg_3904_3967_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FF7FBC01FE0849FF",
      INIT_B => X"0080400001FFE000",
      INIT_C => X"F00CBE03898958AA",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3904_3967_6_8_n_0,
      DOB => RAM_reg_3904_3967_6_8_n_1,
      DOC => RAM_reg_3904_3967_6_8_n_2,
      DOD => NLW_RAM_reg_3904_3967_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3904_3967_0_2_i_1_n_0
    );
RAM_reg_3904_3967_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FF7B3DFFF4020EFD",
      INIT_B => X"FF7F800001020103",
      INIT_C => X"0080400000FDE000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3904_3967_9_11_n_0,
      DOB => RAM_reg_3904_3967_9_11_n_1,
      DOC => RAM_reg_3904_3967_9_11_n_2,
      DOD => NLW_RAM_reg_3904_3967_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3904_3967_0_2_i_1_n_0
    );
RAM_reg_3968_4031_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"5B4D973459D96582",
      INIT_B => X"0C861D8718130B03",
      INIT_C => X"200040F9E00C7903",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_3968_4031_0_2_n_0,
      DOB => RAM_reg_3968_4031_0_2_n_1,
      DOC => RAM_reg_3968_4031_0_2_n_2,
      DOD => NLW_RAM_reg_3968_4031_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3968_4031_0_2_i_1_n_0
    );
RAM_reg_3968_4031_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3840_3903_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_3968_4031_0_2_i_1_n_0
    );
RAM_reg_3968_4031_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C0003FFFE00086FC",
      INIT_B => X"8B82447C8ED097E1",
      INIT_C => X"23FE5C7DBE096EFE",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_3968_4031_3_5_n_0,
      DOB => RAM_reg_3968_4031_3_5_n_1,
      DOC => RAM_reg_3968_4031_3_5_n_2,
      DOD => NLW_RAM_reg_3968_4031_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3968_4031_0_2_i_1_n_0
    );
RAM_reg_3968_4031_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"BC01BE8041FF7FFF",
      INIT_B => X"400001FFE0008000",
      INIT_C => X"A60189C041D761E1",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_3968_4031_6_8_n_0,
      DOB => RAM_reg_3968_4031_6_8_n_1,
      DOC => RAM_reg_3968_4031_6_8_n_2,
      DOD => NLW_RAM_reg_3968_4031_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3968_4031_0_2_i_1_n_0
    );
RAM_reg_3968_4031_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"15FFF4020FF6F8FE",
      INIT_B => X"A8000102000979FF",
      INIT_C => X"400000FDE0008600",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_3968_4031_9_11_n_0,
      DOB => RAM_reg_3968_4031_9_11_n_1,
      DOC => RAM_reg_3968_4031_9_11_n_2,
      DOD => NLW_RAM_reg_3968_4031_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_3968_4031_0_2_i_1_n_0
    );
RAM_reg_4032_4095_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"B7F450F89E1CC658",
      INIT_B => X"3D071818E301CFCC",
      INIT_C => X"60F9E005FF01CFDC",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_4032_4095_0_2_n_0,
      DOB => RAM_reg_4032_4095_0_2_n_1,
      DOC => RAM_reg_4032_4095_0_2_n_2,
      DOD => NLW_RAM_reg_4032_4095_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4032_4095_0_2_i_1_n_0
    );
RAM_reg_4032_4095_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_3840_3903_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_4032_4095_0_2_i_1_n_0
    );
RAM_reg_4032_4095_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1FFFE00000FE3023",
      INIT_B => X"C1FECF7C39F9FBA6",
      INIT_C => X"DDFDFF026EFE366B",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_4032_4095_3_5_n_0,
      DOB => RAM_reg_4032_4095_3_5_n_1,
      DOC => RAM_reg_4032_4095_3_5_n_2,
      DOD => NLW_RAM_reg_4032_4095_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4032_4095_0_2_i_1_n_0
    );
RAM_reg_4032_4095_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3F0000FC8FFFFFFF",
      INIT_B => X"00FFE001F0000000",
      INIT_C => X"28E0405B7BFC73A7",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_4032_4095_6_8_n_0,
      DOB => RAM_reg_4032_4095_6_8_n_1,
      DOC => RAM_reg_4032_4095_6_8_n_2,
      DOD => NLW_RAM_reg_4032_4095_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4032_4095_0_2_i_1_n_0
    );
RAM_reg_4032_4095_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"D4020FF96EFFBE6B",
      INIT_B => X"010200058FFFFFFF",
      INIT_C => X"00FDE000F0000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_4032_4095_9_11_n_0,
      DOB => RAM_reg_4032_4095_9_11_n_1,
      DOC => RAM_reg_4032_4095_9_11_n_2,
      DOD => NLW_RAM_reg_4032_4095_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4032_4095_0_2_i_1_n_0
    );
RAM_reg_4096_4159_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"8C605BD2774A2349",
      INIT_B => X"883948CC7D58C886",
      INIT_C => X"7005BFC07DD8C000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_4096_4159_0_2_n_0,
      DOB => RAM_reg_4096_4159_0_2_n_1,
      DOC => RAM_reg_4096_4159_0_2_n_2,
      DOD => NLW_RAM_reg_4096_4159_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4096_4159_0_2_i_1_n_0
    );
RAM_reg_4096_4159_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_4096_4159_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_4096_4159_0_2_i_1_n_0
    );
RAM_reg_4096_4159_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_4096_4159_0_2_i_2_n_0
    );
RAM_reg_4096_4159_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E000003F82270000",
      INIT_B => X"CEC54BFF78B6A29A",
      INIT_C => X"FFA34CFF85EF47FE",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_4096_4159_3_5_n_0,
      DOB => RAM_reg_4096_4159_3_5_n_1,
      DOC => RAM_reg_4096_4159_3_5_n_2,
      DOD => NLW_RAM_reg_4096_4159_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4096_4159_0_2_i_1_n_0
    );
RAM_reg_4096_4159_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"007CB7FFFD7FF801",
      INIT_B => X"E001F80002000000",
      INIT_C => X"11526BFFCC778D00",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_4096_4159_6_8_n_0,
      DOB => RAM_reg_4096_4159_6_8_n_1,
      DOC => RAM_reg_4096_4159_6_8_n_2,
      DOD => NLW_RAM_reg_4096_4159_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4096_4159_0_2_i_1_n_0
    );
RAM_reg_4096_4159_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0ED96CFFB56F5AFF",
      INIT_B => X"002497FFFDFFE000",
      INIT_C => X"E001F80002000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_4096_4159_9_11_n_0,
      DOB => RAM_reg_4096_4159_9_11_n_1,
      DOC => RAM_reg_4096_4159_9_11_n_2,
      DOD => NLW_RAM_reg_4096_4159_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4096_4159_0_2_i_1_n_0
    );
RAM_reg_4160_4223_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FDDEB81C877266FA",
      INIT_B => X"1CC03880408C7D03",
      INIT_C => X"0BC03880C00020FD",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_4160_4223_0_2_n_0,
      DOB => RAM_reg_4160_4223_0_2_n_1,
      DOC => RAM_reg_4160_4223_0_2_n_2,
      DOD => NLW_RAM_reg_4160_4223_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4160_4223_0_2_i_1_n_0
    );
RAM_reg_4160_4223_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_4096_4159_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_4160_4223_0_2_i_1_n_0
    );
RAM_reg_4160_4223_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"003FC77F00001FFF",
      INIT_B => X"F2F787FC2F2DE1F6",
      INIT_C => X"F5FFFF7F2FEFFDF5",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_4160_4223_3_5_n_0,
      DOB => RAM_reg_4160_4223_3_5_n_1,
      DOC => RAM_reg_4160_4223_3_5_n_2,
      DOD => NLW_RAM_reg_4160_4223_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4160_4223_0_2_i_1_n_0
    );
RAM_reg_4160_4223_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0FFFFFFF90101F08",
      INIT_B => X"F8000000400000FF",
      INIT_C => X"D2FF476D98986840",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_4160_4223_6_8_n_0,
      DOB => RAM_reg_4160_4223_6_8_n_1,
      DOC => RAM_reg_4160_4223_6_8_n_2,
      DOD => NLW_RAM_reg_4160_4223_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4160_4223_0_2_i_1_n_0
    );
RAM_reg_4160_4223_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F5FF7FEF377F9402",
      INIT_B => X"0FFF7FEF80000102",
      INIT_C => X"F8008010400000FD",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_4160_4223_9_11_n_0,
      DOB => RAM_reg_4160_4223_9_11_n_1,
      DOC => RAM_reg_4160_4223_9_11_n_2,
      DOD => NLW_RAM_reg_4160_4223_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4160_4223_0_2_i_1_n_0
    );
RAM_reg_4224_4287_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"780CAE8C46CABEC8",
      INIT_B => X"0000017E7D03B83D",
      INIT_C => X"0000800020FD4001",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_4224_4287_0_2_n_0,
      DOB => RAM_reg_4224_4287_0_2_n_1,
      DOC => RAM_reg_4224_4287_0_2_n_2,
      DOD => NLW_RAM_reg_4224_4287_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4224_4287_0_2_i_1_n_0
    );
RAM_reg_4224_4287_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_4096_4159_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_4224_4287_0_2_i_1_n_0
    );
RAM_reg_4224_4287_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFFF40001FFFE000",
      INIT_B => X"7DFE5F2730C2EFA8",
      INIT_C => X"FFFFFFE7EDF1DF80",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_4224_4287_3_5_n_0,
      DOB => RAM_reg_4224_4287_3_5_n_1,
      DOC => RAM_reg_4224_4287_3_5_n_2,
      DOD => NLW_RAM_reg_4224_4287_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4224_4287_0_2_i_1_n_0
    );
RAM_reg_4224_4287_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFFFA0181F0C007F",
      INIT_B => X"0000400000FFE001",
      INIT_C => X"E7F772A44B703251",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_4224_4287_6_8_n_0,
      DOB => RAM_reg_4224_4287_6_8_n_1,
      DOC => RAM_reg_4224_4287_6_8_n_2,
      DOD => NLW_RAM_reg_4224_4287_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4224_4287_0_2_i_1_n_0
    );
RAM_reg_4224_4287_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E7F7CD6795322FD1",
      INIT_B => X"E7F7A0180032202E",
      INIT_C => X"1808400000CDC001",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_4224_4287_9_11_n_0,
      DOB => RAM_reg_4224_4287_9_11_n_1,
      DOC => RAM_reg_4224_4287_9_11_n_2,
      DOD => NLW_RAM_reg_4224_4287_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4224_4287_0_2_i_1_n_0
    );
RAM_reg_4288_4351_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"2F0456C22E2A579C",
      INIT_B => X"A0FE6D3339DB7D80",
      INIT_C => X"800020CDC0010B80",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_4288_4351_0_2_n_0,
      DOB => RAM_reg_4288_4351_0_2_n_1,
      DOC => RAM_reg_4288_4351_0_2_n_2,
      DOD => NLW_RAM_reg_4288_4351_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4288_4351_0_2_i_1_n_0
    );
RAM_reg_4288_4351_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_4096_4159_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_4288_4351_0_2_i_1_n_0
    );
RAM_reg_4288_4351_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"40001FFFE000007F",
      INIT_B => X"906110CA7C0CCDF3",
      INIT_C => X"A7E1EDC94C008BFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_4288_4351_3_5_n_0,
      DOB => RAM_reg_4288_4351_3_5_n_1,
      DOC => RAM_reg_4288_4351_3_5_n_2,
      DOD => NLW_RAM_reg_4288_4351_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4288_4351_0_2_i_1_n_0
    );
RAM_reg_4288_4351_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C81E1F0483F977FF",
      INIT_B => X"600000FFE003F800",
      INIT_C => X"ED360B31A3D2DDFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_4288_4351_6_8_n_0,
      DOB => RAM_reg_4288_4351_6_8_n_1,
      DOC => RAM_reg_4288_4351_6_8_n_2,
      DOD => NLW_RAM_reg_4288_4351_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4288_4351_0_2_i_1_n_0
    );
RAM_reg_4288_4351_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"CAF7D5032FF29BFF",
      INIT_B => X"80080033200B67FF",
      INIT_C => X"600000CCC001F800",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_4288_4351_9_11_n_0,
      DOB => RAM_reg_4288_4351_9_11_n_1,
      DOC => RAM_reg_4288_4351_9_11_n_2,
      DOD => NLW_RAM_reg_4288_4351_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4288_4351_0_2_i_1_n_0
    );
RAM_reg_4352_4415_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"72C8687BC43CE13E",
      INIT_B => X"4D0B3F8068000010",
      INIT_C => X"20C5C0031C000010",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_4352_4415_0_2_n_0,
      DOB => RAM_reg_4352_4415_0_2_n_1,
      DOC => RAM_reg_4352_4415_0_2_n_2,
      DOD => NLW_RAM_reg_4352_4415_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4352_4415_0_2_i_1_n_0
    );
RAM_reg_4352_4415_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_4352_4415_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_4352_4415_0_2_i_1_n_0
    );
RAM_reg_4352_4415_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_4352_4415_0_2_i_2_n_0
    );
RAM_reg_4352_4415_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1FFFE00003FFFFEF",
      INIT_B => X"10C6380823FFF2EE",
      INIT_C => X"EDFD080AAFFFFEFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_4352_4415_3_5_n_0,
      DOB => RAM_reg_4352_4415_3_5_n_1,
      DOC => RAM_reg_4352_4415_3_5_n_2,
      DOD => NLW_RAM_reg_4352_4415_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4352_4415_0_2_i_1_n_0
    );
RAM_reg_4352_4415_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1F30C7F157FFFEFF",
      INIT_B => X"00CFE003F8000100",
      INIT_C => X"0939EF80B3FFFECC",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_4352_4415_6_8_n_0,
      DOB => RAM_reg_4352_4415_6_8_n_1,
      DOC => RAM_reg_4352_4415_6_8_n_2,
      DOD => NLW_RAM_reg_4352_4415_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4352_4415_0_2_i_1_n_0
    );
RAM_reg_4352_4415_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"D53B2FFABFFFFEDD",
      INIT_B => X"000B200147FFFEDD",
      INIT_C => X"00C4C003F8000122",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_4352_4415_9_11_n_0,
      DOB => RAM_reg_4352_4415_9_11_n_1,
      DOC => RAM_reg_4352_4415_9_11_n_2,
      DOD => NLW_RAM_reg_4352_4415_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4352_4415_0_2_i_1_n_0
    );
RAM_reg_4416_4479_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"EC014A78F6BA0034",
      INIT_B => X"BFA37C000000C7CE",
      INIT_C => X"40029C000000E000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_4416_4479_0_2_n_0,
      DOB => RAM_reg_4416_4479_0_2_n_1,
      DOC => RAM_reg_4416_4479_0_2_n_2,
      DOD => NLW_RAM_reg_4416_4479_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4416_4479_0_2_i_1_n_0
    );
RAM_reg_4416_4479_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_4352_4415_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_4416_4479_0_2_i_1_n_0
    );
RAM_reg_4416_4479_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E00003FFFFFF0000",
      INIT_B => X"147DAEDFFEBA2B12",
      INIT_C => X"205DA3FFFFFF7BF3",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_4416_4479_3_5_n_0,
      DOB => RAM_reg_4416_4479_3_5_n_1,
      DOC => RAM_reg_4416_4479_3_5_n_2,
      DOD => NLW_RAM_reg_4416_4479_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4416_4479_0_2_i_1_n_0
    );
RAM_reg_4416_4479_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"CFA257FFFFFF040C",
      INIT_B => X"E003F8000000E000",
      INIT_C => X"89E731FFFD67140D",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_4416_4479_6_8_n_0,
      DOB => RAM_reg_4416_4479_6_8_n_1,
      DOC => RAM_reg_4416_4479_6_8_n_2,
      DOD => NLW_RAM_reg_4416_4479_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4416_4479_0_2_i_1_n_0
    );
RAM_reg_4416_4479_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"49BF2DFFFD676FFE",
      INIT_B => X"0600D5FFFD670000",
      INIT_C => X"E003FA000298E000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_4416_4479_9_11_n_0,
      DOB => RAM_reg_4416_4479_9_11_n_1,
      DOC => RAM_reg_4416_4479_9_11_n_2,
      DOD => NLW_RAM_reg_4416_4479_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4416_4479_0_2_i_1_n_0
    );
RAM_reg_4480_4543_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F1C8FFFF5426F1CB",
      INIT_B => X"7A30000087C14E0A",
      INIT_C => X"98000000E00020F5",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_4480_4543_0_2_n_0,
      DOB => RAM_reg_4480_4543_0_2_n_1,
      DOC => RAM_reg_4480_4543_0_2_n_2,
      DOD => NLW_RAM_reg_4480_4543_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4480_4543_0_2_i_1_n_0
    );
RAM_reg_4480_4543_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_4352_4415_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_4480_4543_0_2_i_1_n_0
    );
RAM_reg_4480_4543_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"07FFFFFF00001FFF",
      INIT_B => X"7AEFFFFE5CEE0757",
      INIT_C => X"6FFFFFFF58FE68EC",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_4480_4543_3_5_n_0,
      DOB => RAM_reg_4480_4543_3_5_n_1,
      DOC => RAM_reg_4480_4543_3_5_n_2,
      DOD => NLW_RAM_reg_4480_4543_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4480_4543_0_2_i_1_n_0
    );
RAM_reg_4480_4543_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"9FFFFFFF37019F00",
      INIT_B => X"F0000000E00000FF",
      INIT_C => X"75FFFFFFA3011628",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_4480_4543_6_8_n_0,
      DOB => RAM_reg_4480_4543_6_8_n_1,
      DOC => RAM_reg_4480_4543_6_8_n_2,
      DOD => NLW_RAM_reg_4480_4543_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4480_4543_0_2_i_1_n_0
    );
RAM_reg_4480_4543_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"65FFFFFF7BFF493B",
      INIT_B => X"95FFFFFF1400803B",
      INIT_C => X"FA000000E00000C4",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_4480_4543_9_11_n_0,
      DOB => RAM_reg_4480_4543_9_11_n_1,
      DOC => RAM_reg_4480_4543_9_11_n_2,
      DOD => NLW_RAM_reg_4480_4543_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4480_4543_0_2_i_1_n_0
    );
RAM_reg_448_511_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"7052E421312E9400",
      INIT_B => X"81D1434000928BFF",
      INIT_C => X"FE30BEFFFFFD7000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_448_511_0_2_n_0,
      DOB => RAM_reg_448_511_0_2_n_1,
      DOC => RAM_reg_448_511_0_2_n_2,
      DOD => NLW_RAM_reg_448_511_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_448_511_0_2_i_1_n_0
    );
RAM_reg_448_511_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_256_319_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_448_511_0_2_i_1_n_0
    );
RAM_reg_448_511_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000F7FFFFFC00000",
      INIT_B => X"4B125002C5FF1E60",
      INIT_C => X"B5F19082FFA30BFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_448_511_3_5_n_0,
      DOB => RAM_reg_448_511_3_5_n_1,
      DOC => RAM_reg_448_511_3_5_n_2,
      DOD => NLW_RAM_reg_448_511_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_448_511_0_2_i_1_n_0
    );
RAM_reg_448_511_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FE0F2E7D001CF000",
      INIT_B => X"00007FFFFFC00000",
      INIT_C => X"69A6D0138089C09B",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_448_511_6_8_n_0,
      DOB => RAM_reg_448_511_6_8_n_1,
      DOC => RAM_reg_448_511_6_8_n_2,
      DOD => NLW_RAM_reg_448_511_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_448_511_0_2_i_1_n_0
    );
RAM_reg_448_511_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"77D96F6C8024349B",
      INIT_B => X"7E004100801FFB64",
      INIT_C => X"80003EFF7FC00000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_448_511_9_11_n_0,
      DOB => RAM_reg_448_511_9_11_n_1,
      DOC => RAM_reg_448_511_9_11_n_2,
      DOD => NLW_RAM_reg_448_511_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_448_511_0_2_i_1_n_0
    );
RAM_reg_4544_4607_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFFF2188F1F281C0",
      INIT_B => X"000072674E02A7B7",
      INIT_C => X"0000C40020FD5802",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_4544_4607_0_2_n_0,
      DOB => RAM_reg_4544_4607_0_2_n_1,
      DOC => RAM_reg_4544_4607_0_2_n_2,
      DOD => NLW_RAM_reg_4544_4607_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4544_4607_0_2_i_1_n_0
    );
RAM_reg_4544_4607_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_4352_4415_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_4544_4607_0_2_i_1_n_0
    );
RAM_reg_4544_4607_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFFF00001FFFE000",
      INIT_B => X"FFFEBFF8034EB063",
      INIT_C => X"FFFFA3F86CFC904D",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_4544_4607_3_5_n_0,
      DOB => RAM_reg_4544_4607_3_5_n_1,
      DOC => RAM_reg_4544_4607_3_5_n_2,
      DOD => NLW_RAM_reg_4544_4607_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4544_4607_0_2_i_1_n_0
    );
RAM_reg_4544_4607_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFFFC4079F004FB6",
      INIT_B => X"0000700000FFE003",
      INIT_C => X"FFFFC80516B06CB8",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_4544_4607_6_8_n_0,
      DOB => RAM_reg_4544_4607_6_8_n_1,
      DOC => RAM_reg_4544_4607_6_8_n_2,
      DOD => NLW_RAM_reg_4544_4607_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4544_4607_0_2_i_1_n_0
    );
RAM_reg_4544_4607_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFFFE3FF49B33CF5",
      INIT_B => X"FFFF840080B32306",
      INIT_C => X"00007000004CC003",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_4544_4607_9_11_n_0,
      DOB => RAM_reg_4544_4607_9_11_n_1,
      DOC => RAM_reg_4544_4607_9_11_n_2,
      DOD => NLW_RAM_reg_4544_4607_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4544_4607_0_2_i_1_n_0
    );
RAM_reg_4608_4671_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0598F032C93321C9",
      INIT_B => X"66674E02AFC07A30",
      INIT_C => X"D00020FD50069800",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_4608_4671_0_2_n_0,
      DOB => RAM_reg_4608_4671_0_2_n_1,
      DOC => RAM_reg_4608_4671_0_2_n_2,
      DOD => NLW_RAM_reg_4608_4671_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4608_4671_0_2_i_1_n_0
    );
RAM_reg_4608_4671_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_4608_4671_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_4608_4671_0_2_i_1_n_0
    );
RAM_reg_4608_4671_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_4608_4671_0_2_i_2_n_0
    );
RAM_reg_4608_4671_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00001FFFE00007FF",
      INIT_B => X"33A0530EB00069CF",
      INIT_C => X"BBE06CFC90016FFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_4608_4671_3_5_n_0,
      DOB => RAM_reg_4608_4671_3_5_n_1,
      DOC => RAM_reg_4608_4671_3_5_n_2,
      DOD => NLW_RAM_reg_4608_4671_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4608_4671_0_2_i_1_n_0
    );
RAM_reg_4608_4671_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C41F9F004FF29FFF",
      INIT_B => X"700000FFE007F000",
      INIT_C => X"8C3D16B06EF0D5FF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_4608_4671_6_8_n_0,
      DOB => RAM_reg_4608_4671_6_8_n_1,
      DOC => RAM_reg_4608_4671_6_8_n_2,
      DOD => NLW_RAM_reg_4608_4671_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4608_4671_0_2_i_1_n_0
    );
RAM_reg_4608_4671_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"B7FF49B33EF145FF",
      INIT_B => X"C00080B32102B5FF",
      INIT_C => X"7000004CC007FA00",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_4608_4671_9_11_n_0,
      DOB => RAM_reg_4608_4671_9_11_n_1,
      DOC => RAM_reg_4608_4671_9_11_n_2,
      DOD => NLW_RAM_reg_4608_4671_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4608_4671_0_2_i_1_n_0
    );
RAM_reg_4672_4735_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"3000DE735E4BFFFF",
      INIT_B => X"4E02B9C420300000",
      INIT_C => X"20FD400698000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_4672_4735_0_2_n_0,
      DOB => RAM_reg_4672_4735_0_2_n_1,
      DOC => RAM_reg_4672_4735_0_2_n_2,
      DOD => NLW_RAM_reg_4672_4735_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4672_4735_0_2_i_1_n_0
    );
RAM_reg_4672_4735_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_4608_4671_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_4672_4735_0_2_i_1_n_0
    );
RAM_reg_4672_4735_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1FFFE00007FFFFFF",
      INIT_B => X"5304B06045DEFFFE",
      INIT_C => X"6CFC90254FFFFFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_4672_4735_3_5_n_0,
      DOB => RAM_reg_4672_4735_3_5_n_1,
      DOC => RAM_reg_4672_4735_3_5_n_2,
      DOD => NLW_RAM_reg_4672_4735_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4672_4735_0_2_i_1_n_0
    );
RAM_reg_4672_4735_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"9F004FD2BFFFFFFF",
      INIT_B => X"00FFE007F0000000",
      INIT_C => X"36F87FD14BFFFFFF",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_4672_4735_6_8_n_0,
      DOB => RAM_reg_4672_4735_6_8_n_1,
      DOC => RAM_reg_4672_4735_6_8_n_2,
      DOD => NLW_RAM_reg_4672_4735_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4672_4735_0_2_i_1_n_0
    );
RAM_reg_4672_4735_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"49FB2FF54BFFFFFF",
      INIT_B => X"80FB2002BBFFFFFF",
      INIT_C => X"0004C007F4000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_4672_4735_9_11_n_0,
      DOB => RAM_reg_4672_4735_9_11_n_1,
      DOC => RAM_reg_4672_4735_9_11_n_2,
      DOD => NLW_RAM_reg_4672_4735_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4672_4735_0_2_i_1_n_0
    );
RAM_reg_4736_4799_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"AD7C86CAFFFF75A8",
      INIT_B => X"A885A0B100002A77",
      INIT_C => X"500618800000D000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_4736_4799_0_2_n_0,
      DOB => RAM_reg_4736_4799_0_2_n_1,
      DOC => RAM_reg_4736_4799_0_2_n_2,
      DOD => NLW_RAM_reg_4736_4799_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4736_4799_0_2_i_1_n_0
    );
RAM_reg_4736_4799_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_4608_4671_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_4736_4799_0_2_i_1_n_0
    );
RAM_reg_4736_4799_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E000077FFFFF0000",
      INIT_B => X"736F75FEFFFF23CC",
      INIT_C => X"D36F5FFFFFFFA7C0",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_4736_4799_3_5_n_0,
      DOB => RAM_reg_4736_4799_3_5_n_1,
      DOC => RAM_reg_4736_4799_3_5_n_2,
      DOD => NLW_RAM_reg_4736_4799_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4736_4799_0_2_i_1_n_0
    );
RAM_reg_4736_4799_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0C90AFFFFFFFD83F",
      INIT_B => X"E007F00000007000",
      INIT_C => X"BC9FD3FFFFFFB62C",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_4736_4799_6_8_n_0,
      DOB => RAM_reg_4736_4799_6_8_n_1,
      DOC => RAM_reg_4736_4799_6_8_n_2,
      DOD => NLW_RAM_reg_4736_4799_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4736_4799_0_2_i_1_n_0
    );
RAM_reg_4736_4799_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"AFFF5BFFFFFFB3EF",
      INIT_B => X"A000ABFFFFFFC810",
      INIT_C => X"4007F40000007000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_4736_4799_9_11_n_0,
      DOB => RAM_reg_4736_4799_9_11_n_1,
      DOC => RAM_reg_4736_4799_9_11_n_2,
      DOD => NLW_RAM_reg_4736_4799_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_4736_4799_0_2_i_1_n_0
    );
RAM_reg_512_575_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"2A4DB1815903C606",
      INIT_B => X"C0A0803F1EFFA598",
      INIT_C => X"BF7F7F80E0001803",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_512_575_0_2_n_0,
      DOB => RAM_reg_512_575_0_2_n_1,
      DOC => RAM_reg_512_575_0_2_n_2,
      DOD => NLW_RAM_reg_512_575_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_512_575_0_2_i_1_n_0
    );
RAM_reg_512_575_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_512_575_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_512_575_0_2_i_1_n_0
    );
RAM_reg_512_575_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_512_575_0_2_i_2_n_0
    );
RAM_reg_512_575_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"7FFFFFC000000000",
      INIT_B => X"D42AF7DD0107A9DD",
      INIT_C => X"D502FF8F46FFE39E",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_512_575_3_5_n_0,
      DOB => RAM_reg_512_575_3_5_n_1,
      DOC => RAM_reg_512_575_3_5_n_2,
      DOD => NLW_RAM_reg_512_575_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_512_575_0_2_i_1_n_0
    );
RAM_reg_512_575_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"6A7D0040F8001C03",
      INIT_B => X"3FFFFF8000000000",
      INIT_C => X"D4220999FEF85662",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_512_575_6_8_n_0,
      DOB => RAM_reg_512_575_6_8_n_1,
      DOC => RAM_reg_512_575_6_8_n_2,
      DOD => NLW_RAM_reg_512_575_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_512_575_0_2_i_1_n_0
    );
RAM_reg_512_575_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"2AFD080847F84A03",
      INIT_B => X"40800847F807BD9F",
      INIT_C => X"3F7FF78000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_512_575_9_11_n_0,
      DOB => RAM_reg_512_575_9_11_n_1,
      DOC => RAM_reg_512_575_9_11_n_2,
      DOD => NLW_RAM_reg_512_575_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_512_575_0_2_i_1_n_0
    );
RAM_reg_576_639_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"805C95847EDB519D",
      INIT_B => X"905155FBD1240B1A",
      INIT_C => X"7FE08A00200030F8",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_576_639_0_2_n_0,
      DOB => RAM_reg_576_639_0_2_n_1,
      DOC => RAM_reg_576_639_0_2_n_2,
      DOD => NLW_RAM_reg_576_639_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_576_639_0_2_i_1_n_0
    );
RAM_reg_576_639_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_512_575_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_576_639_0_2_i_1_n_0
    );
RAM_reg_576_639_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FF80000000000007",
      INIT_B => X"D702D8900DFC4A47",
      INIT_C => X"FFBD50FFAFFF1E60",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_576_639_3_5_n_0,
      DOB => RAM_reg_576_639_3_5_n_1,
      DOC => RAM_reg_576_639_3_5_n_2,
      DOD => NLW_RAM_reg_576_639_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_576_639_0_2_i_1_n_0
    );
RAM_reg_576_639_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00408F007000319F",
      INIT_B => X"FF80000000000000",
      INIT_C => X"30652A7FFE5B28B3",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_576_639_6_8_n_0,
      DOB => RAM_reg_576_639_6_8_n_1,
      DOC => RAM_reg_576_639_6_8_n_2,
      DOD => NLW_RAM_reg_576_639_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_576_639_0_2_i_1_n_0
    );
RAM_reg_576_639_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"205F807FAE5BDC3C",
      INIT_B => X"2000DF8071A433C0",
      INIT_C => X"DF80000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_576_639_9_11_n_0,
      DOB => RAM_reg_576_639_9_11_n_1,
      DOC => RAM_reg_576_639_9_11_n_2,
      DOD => NLW_RAM_reg_576_639_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_576_639_0_2_i_1_n_0
    );
RAM_reg_640_703_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"CCB1ABFC57BA537F",
      INIT_B => X"F3B0040380696000",
      INIT_C => X"004FC000E0187F7F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_640_703_0_2_n_0,
      DOB => RAM_reg_640_703_0_2_n_1,
      DOC => RAM_reg_640_703_0_2_n_2,
      DOD => NLW_RAM_reg_640_703_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_640_703_0_2_i_1_n_0
    );
RAM_reg_640_703_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_512_575_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_640_703_0_2_i_1_n_0
    );
RAM_reg_640_703_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000000000007BFFF",
      INIT_B => X"E0915477C9D34F4C",
      INIT_C => X"FF90AFFF16304FC0",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_640_703_3_5_n_0,
      DOB => RAM_reg_640_703_3_5_n_1,
      DOC => RAM_reg_640_703_3_5_n_2,
      DOD => NLW_RAM_reg_640_703_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_640_703_0_2_i_1_n_0
    );
RAM_reg_640_703_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"006FC000E00FB0BF",
      INIT_B => X"0000000000003F7F",
      INIT_C => X"1F4E3FFF09125F42",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_640_703_6_8_n_0,
      DOB => RAM_reg_640_703_6_8_n_1,
      DOC => RAM_reg_640_703_6_8_n_2,
      DOD => NLW_RAM_reg_640_703_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_640_703_0_2_i_1_n_0
    );
RAM_reg_640_703_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1F01EFFFD6FCA03D",
      INIT_B => X"E0FFC000E0000080",
      INIT_C => X"0000000000003F7F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_640_703_9_11_n_0,
      DOB => RAM_reg_640_703_9_11_n_1,
      DOC => RAM_reg_640_703_9_11_n_2,
      DOD => NLW_RAM_reg_640_703_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_640_703_0_2_i_1_n_0
    );
RAM_reg_64_127_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"2064BE84C3C2A5D2",
      INIT_B => X"DF8F7E3B0601A243",
      INIT_C => X"00300181F9FF1FB4",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_64_127_0_2_n_0,
      DOB => RAM_reg_64_127_0_2_n_1,
      DOC => RAM_reg_64_127_0_2_n_2,
      DOD => NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_64_127_0_2_i_1_n_0
    );
RAM_reg_64_127_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_0_63_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_64_127_0_2_i_1_n_0
    );
RAM_reg_64_127_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000007FFFFFFFF8",
      INIT_B => X"FF8BDDA005802F7A",
      INIT_C => X"FFFBDDDA03809F77",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_64_127_3_5_n_0,
      DOB => RAM_reg_64_127_3_5_n_1,
      DOC => RAM_reg_64_127_3_5_n_2,
      DOD => NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_64_127_0_2_i_1_n_0
    );
RAM_reg_64_127_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0034227FF87FC088",
      INIT_B => X"00000001FFFF3FF0",
      INIT_C => X"40767A07EBC0D013",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_64_127_6_8_n_0,
      DOB => RAM_reg_64_127_6_8_n_1,
      DOC => RAM_reg_64_127_6_8_n_2,
      DOD => NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_64_127_0_2_i_1_n_0
    );
RAM_reg_64_127_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"007004C1163FB007",
      INIT_B => X"FFBFFF0206003008",
      INIT_C => X"00000001F9FF0FF0",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_64_127_9_11_n_0,
      DOB => RAM_reg_64_127_9_11_n_1,
      DOC => RAM_reg_64_127_9_11_n_2,
      DOD => NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_64_127_0_2_i_1_n_0
    );
RAM_reg_704_767_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F2FB9759DA1F3AFD",
      INIT_B => X"CF0648D201E08292",
      INIT_C => X"300180287F3F7D61",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_704_767_0_2_n_0,
      DOB => RAM_reg_704_767_0_2_n_1,
      DOC => RAM_reg_704_767_0_2_n_2,
      DOD => NLW_RAM_reg_704_767_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_704_767_0_2_i_1_n_0
    );
RAM_reg_704_767_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_512_575_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_704_767_0_2_i_1_n_0
    );
RAM_reg_704_767_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"00000007BFFFFF80",
      INIT_B => X"DC3350420486ED1B",
      INIT_C => X"EDCE0FF86480FF5E",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_704_767_3_5_n_0,
      DOB => RAM_reg_704_767_3_5_n_1,
      DOC => RAM_reg_704_767_3_5_n_2,
      DOD => NLW_RAM_reg_704_767_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_704_767_0_2_i_1_n_0
    );
RAM_reg_704_767_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"320180079BBF0021",
      INIT_B => X"000000003F7FFF80",
      INIT_C => X"03CDB28A340041FC",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_704_767_6_8_n_0,
      DOB => RAM_reg_704_767_6_8_n_1,
      DOC => RAM_reg_704_767_6_8_n_2,
      DOD => NLW_RAM_reg_704_767_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_704_767_0_2_i_1_n_0
    );
RAM_reg_704_767_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"31FC4D94ABFF00BD",
      INIT_B => X"FE03806020C00083",
      INIT_C => X"000000001F3FFF00",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_704_767_9_11_n_0,
      DOB => RAM_reg_704_767_9_11_n_1,
      DOC => RAM_reg_704_767_9_11_n_2,
      DOD => NLW_RAM_reg_704_767_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_704_767_0_2_i_1_n_0
    );
RAM_reg_768_831_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F2161B75BAEC80CE",
      INIT_B => X"01F5E042827F7F34",
      INIT_C => X"000C5FFF7D000003",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_768_831_0_2_n_0,
      DOB => RAM_reg_768_831_0_2_n_1,
      DOC => RAM_reg_768_831_0_2_n_2,
      DOD => NLW_RAM_reg_768_831_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_768_831_0_2_i_1_n_0
    );
RAM_reg_768_831_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_768_831_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_768_831_0_2_i_1_n_0
    );
RAM_reg_768_831_0_2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => addr(9),
      I1 => addr(11),
      I2 => we,
      I3 => addr(12),
      I4 => addr(10),
      I5 => addr(8),
      O => RAM_reg_768_831_0_2_i_2_n_0
    );
RAM_reg_768_831_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0003BFBFFF800000",
      INIT_B => X"FE8397463FE2084E",
      INIT_C => X"01F857803F93FFB4",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_768_831_3_5_n_0,
      DOB => RAM_reg_768_831_3_5_n_1,
      DOC => RAM_reg_768_831_3_5_n_2,
      DOD => NLW_RAM_reg_768_831_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_768_831_0_2_i_1_n_0
    );
RAM_reg_768_831_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0007887FC08C0003",
      INIT_B => X"00003FBFFF000000",
      INIT_C => X"1AE63F48E1A53F32",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_768_831_6_8_n_0,
      DOB => RAM_reg_768_831_6_8_n_1,
      DOC => RAM_reg_768_831_6_8_n_2,
      DOD => NLW_RAM_reg_768_831_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_768_831_0_2_i_1_n_0
    );
RAM_reg_768_831_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E1F880770011FFF8",
      INIT_B => X"00002000008E0007",
      INIT_C => X"00001FBFFF000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_768_831_9_11_n_0,
      DOB => RAM_reg_768_831_9_11_n_1,
      DOC => RAM_reg_768_831_9_11_n_2,
      DOD => NLW_RAM_reg_768_831_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_768_831_0_2_i_1_n_0
    );
RAM_reg_832_895_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0BF7B8F5216117DA",
      INIT_B => X"82608086DE92F5D9",
      INIT_C => X"1DDF7FF8000C0826",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_832_895_0_2_n_0,
      DOB => RAM_reg_832_895_0_2_n_1,
      DOC => RAM_reg_832_895_0_2_n_2,
      DOD => NLW_RAM_reg_832_895_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_832_895_0_2_i_1_n_0
    );
RAM_reg_832_895_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_768_831_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_832_895_0_2_i_1_n_0
    );
RAM_reg_832_895_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FFBFFF0000000000",
      INIT_B => X"95CA3FD90123A4D1",
      INIT_C => X"37A83F42FED256D8",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_832_895_3_5_n_0,
      DOB => RAM_reg_832_895_3_5_n_1,
      DOC => RAM_reg_832_895_3_5_n_2,
      DOD => NLW_RAM_reg_832_895_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_832_895_0_2_i_1_n_0
    );
RAM_reg_832_895_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"E857C0BC000C0926",
      INIT_B => X"1FBFFF0000000000",
      INIT_C => X"6DC8FF5E00871C0E",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_832_895_6_8_n_0,
      DOB => RAM_reg_832_895_6_8_n_1,
      DOC => RAM_reg_832_895_6_8_n_2,
      DOD => NLW_RAM_reg_832_895_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_832_895_0_2_i_1_n_0
    );
RAM_reg_832_895_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"A0570043FFF2F609",
      INIT_B => X"000000BC000C09F6",
      INIT_C => X"1FBFFF0000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_832_895_9_11_n_0,
      DOB => RAM_reg_832_895_9_11_n_1,
      DOC => RAM_reg_832_895_9_11_n_2,
      DOD => NLW_RAM_reg_832_895_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_832_895_0_2_i_1_n_0
    );
RAM_reg_896_959_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"1D93C0B90E98EE68",
      INIT_B => X"0183FF7CF17EF79D",
      INIT_C => X"FE7C000000010004",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_896_959_0_2_n_0,
      DOB => RAM_reg_896_959_0_2_n_1,
      DOC => RAM_reg_896_959_0_2_n_2,
      DOD => NLW_RAM_reg_896_959_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_896_959_0_2_i_1_n_0
    );
RAM_reg_896_959_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_768_831_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_896_959_0_2_i_1_n_0
    );
RAM_reg_896_959_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FF00000000000003",
      INIT_B => X"0E7DE0BABE8F8105",
      INIT_C => X"0FE1FF7D417999FC",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_896_959_3_5_n_0,
      DOB => RAM_reg_896_959_3_5_n_1,
      DOC => RAM_reg_896_959_3_5_n_2,
      DOD => NLW_RAM_reg_896_959_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_896_959_0_2_i_1_n_0
    );
RAM_reg_896_959_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"F01E000000006603",
      INIT_B => X"FF00000000000000",
      INIT_C => X"3EFD7CF200388627",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_896_959_6_8_n_0,
      DOB => RAM_reg_896_959_6_8_n_1,
      DOC => RAM_reg_896_959_6_8_n_2,
      DOD => NLW_RAM_reg_896_959_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_896_959_0_2_i_1_n_0
    );
RAM_reg_896_959_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"C0617F75FFFE9FF8",
      INIT_B => X"001E800800016000",
      INIT_C => X"FF00000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_896_959_9_11_n_0,
      DOB => RAM_reg_896_959_9_11_n_1,
      DOC => RAM_reg_896_959_9_11_n_2,
      DOD => NLW_RAM_reg_896_959_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_896_959_0_2_i_1_n_0
    );
RAM_reg_960_1023_0_2: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FF7D18AD51B54AF3",
      INIT_B => X"FF72E0128E48A680",
      INIT_C => X"0080000000043B9F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(0),
      DIB => pixel(1),
      DIC => pixel(2),
      DID => '0',
      DOA => RAM_reg_960_1023_0_2_n_0,
      DOB => RAM_reg_960_1023_0_2_n_1,
      DOC => RAM_reg_960_1023_0_2_n_2,
      DOD => NLW_RAM_reg_960_1023_0_2_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_960_1023_0_2_i_1_n_0
    );
RAM_reg_960_1023_0_2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr(7),
      I1 => RAM_reg_768_831_0_2_i_2_n_0,
      I2 => addr(6),
      O => RAM_reg_960_1023_0_2_i_1_n_0
    );
RAM_reg_960_1023_3_5: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"000000000003DDFF",
      INIT_B => X"FF7088AE6E67F460",
      INIT_C => X"FF7F70109FFC3360",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(3),
      DIB => pixel(4),
      DIC => pixel(5),
      DID => '0',
      DOA => RAM_reg_960_1023_3_5_n_0,
      DOB => RAM_reg_960_1023_3_5_n_1,
      DOC => RAM_reg_960_1023_3_5_n_2,
      DOD => NLW_RAM_reg_960_1023_3_5_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_960_1023_0_2_i_1_n_0
    );
RAM_reg_960_1023_6_8: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"008000000003CAFF",
      INIT_B => X"0000000000001D9F",
      INIT_C => X"FF7005556D6B4A6E",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(6),
      DIB => pixel(7),
      DIC => pixel(8),
      DID => '0',
      DOA => RAM_reg_960_1023_6_8_n_0,
      DOB => RAM_reg_960_1023_6_8_n_1,
      DOC => RAM_reg_960_1023_6_8_n_2,
      DOD => NLW_RAM_reg_960_1023_6_8_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_960_1023_0_2_i_1_n_0
    );
RAM_reg_960_1023_9_11: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"FF7FF8BA9EF48691",
      INIT_B => X"0080000000000460",
      INIT_C => X"000000000000199F",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(5 downto 0) => P(5 downto 0),
      ADDRB(5 downto 0) => P(5 downto 0),
      ADDRC(5 downto 0) => P(5 downto 0),
      ADDRD(5 downto 0) => addr(5 downto 0),
      DIA => pixel(9),
      DIB => pixel(10),
      DIC => pixel(11),
      DID => '0',
      DOA => RAM_reg_960_1023_9_11_n_0,
      DOB => RAM_reg_960_1023_9_11_n_1,
      DOC => RAM_reg_960_1023_9_11_n_2,
      DOD => NLW_RAM_reg_960_1023_9_11_DOD_UNCONNECTED,
      WCLK => clk,
      WE => RAM_reg_960_1023_0_2_i_1_n_0
    );
\blue[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \blue[0]_INST_0_i_1_n_0\,
      I1 => P(11),
      I2 => \blue[0]_INST_0_i_2_n_0\,
      I3 => P(12),
      I4 => \blue[0]_INST_0_i_3_n_0\,
      I5 => \current_ver_pos_reg[5]\,
      O => blue(0)
    );
\blue[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \blue[0]_INST_0_i_4_n_0\,
      I1 => \blue[0]_INST_0_i_5_n_0\,
      I2 => P(10),
      I3 => \blue[0]_INST_0_i_6_n_0\,
      I4 => P(9),
      I5 => \blue[0]_INST_0_i_7_n_0\,
      O => \blue[0]_INST_0_i_1_n_0\
    );
\blue[0]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[0]_INST_0_i_27_n_0\,
      I1 => \blue[0]_INST_0_i_28_n_0\,
      O => \blue[0]_INST_0_i_10_n_0\,
      S => P(8)
    );
\blue[0]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[0]_INST_0_i_29_n_0\,
      I1 => \blue[0]_INST_0_i_30_n_0\,
      O => \blue[0]_INST_0_i_11_n_0\,
      S => P(8)
    );
\blue[0]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4288_4351_0_2_n_0,
      I1 => RAM_reg_4224_4287_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_4160_4223_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_4096_4159_0_2_n_0,
      O => \blue[0]_INST_0_i_12_n_0\
    );
\blue[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4544_4607_0_2_n_0,
      I1 => RAM_reg_4480_4543_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_4416_4479_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_4352_4415_0_2_n_0,
      O => \blue[0]_INST_0_i_13_n_0\
    );
\blue[0]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => RAM_reg_4608_4671_0_2_n_0,
      I1 => P(6),
      I2 => RAM_reg_4672_4735_0_2_n_0,
      I3 => P(7),
      I4 => RAM_reg_4736_4799_0_2_n_0,
      I5 => P(8),
      O => \blue[0]_INST_0_i_14_n_0\
    );
\blue[0]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1728_1791_0_2_n_0,
      I1 => RAM_reg_1664_1727_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_1600_1663_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_1536_1599_0_2_n_0,
      O => \blue[0]_INST_0_i_15_n_0\
    );
\blue[0]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1984_2047_0_2_n_0,
      I1 => RAM_reg_1920_1983_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_1856_1919_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_1792_1855_0_2_n_0,
      O => \blue[0]_INST_0_i_16_n_0\
    );
\blue[0]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1216_1279_0_2_n_0,
      I1 => RAM_reg_1152_1215_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_1088_1151_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_1024_1087_0_2_n_0,
      O => \blue[0]_INST_0_i_17_n_0\
    );
\blue[0]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1472_1535_0_2_n_0,
      I1 => RAM_reg_1408_1471_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_1344_1407_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_1280_1343_0_2_n_0,
      O => \blue[0]_INST_0_i_18_n_0\
    );
\blue[0]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_0_2_n_0,
      I1 => RAM_reg_640_703_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_576_639_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_512_575_0_2_n_0,
      O => \blue[0]_INST_0_i_19_n_0\
    );
\blue[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \blue[0]_INST_0_i_8_n_0\,
      I1 => \blue[0]_INST_0_i_9_n_0\,
      I2 => P(10),
      I3 => \blue[0]_INST_0_i_10_n_0\,
      I4 => P(9),
      I5 => \blue[0]_INST_0_i_11_n_0\,
      O => \blue[0]_INST_0_i_2_n_0\
    );
\blue[0]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_0_2_n_0,
      I1 => RAM_reg_896_959_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_832_895_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_768_831_0_2_n_0,
      O => \blue[0]_INST_0_i_20_n_0\
    );
\blue[0]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_2_n_0,
      I1 => RAM_reg_128_191_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_64_127_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_0_63_0_2_n_0,
      O => \blue[0]_INST_0_i_21_n_0\
    );
\blue[0]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_2_n_0,
      I1 => RAM_reg_384_447_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_320_383_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_256_319_0_2_n_0,
      O => \blue[0]_INST_0_i_22_n_0\
    );
\blue[0]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3776_3839_0_2_n_0,
      I1 => RAM_reg_3712_3775_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_3648_3711_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_3584_3647_0_2_n_0,
      O => \blue[0]_INST_0_i_23_n_0\
    );
\blue[0]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4032_4095_0_2_n_0,
      I1 => RAM_reg_3968_4031_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_3904_3967_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_3840_3903_0_2_n_0,
      O => \blue[0]_INST_0_i_24_n_0\
    );
\blue[0]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3264_3327_0_2_n_0,
      I1 => RAM_reg_3200_3263_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_3136_3199_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_3072_3135_0_2_n_0,
      O => \blue[0]_INST_0_i_25_n_0\
    );
\blue[0]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3520_3583_0_2_n_0,
      I1 => RAM_reg_3456_3519_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_3392_3455_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_3328_3391_0_2_n_0,
      O => \blue[0]_INST_0_i_26_n_0\
    );
\blue[0]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2752_2815_0_2_n_0,
      I1 => RAM_reg_2688_2751_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_2624_2687_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_2560_2623_0_2_n_0,
      O => \blue[0]_INST_0_i_27_n_0\
    );
\blue[0]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3008_3071_0_2_n_0,
      I1 => RAM_reg_2944_3007_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_2880_2943_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_2816_2879_0_2_n_0,
      O => \blue[0]_INST_0_i_28_n_0\
    );
\blue[0]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2240_2303_0_2_n_0,
      I1 => RAM_reg_2176_2239_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_2112_2175_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_2048_2111_0_2_n_0,
      O => \blue[0]_INST_0_i_29_n_0\
    );
\blue[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \blue[0]_INST_0_i_12_n_0\,
      I1 => P(8),
      I2 => \blue[0]_INST_0_i_13_n_0\,
      I3 => P(9),
      I4 => \blue[0]_INST_0_i_14_n_0\,
      I5 => P(10),
      O => \blue[0]_INST_0_i_3_n_0\
    );
\blue[0]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2496_2559_0_2_n_0,
      I1 => RAM_reg_2432_2495_0_2_n_0,
      I2 => P(7),
      I3 => RAM_reg_2368_2431_0_2_n_0,
      I4 => P(6),
      I5 => RAM_reg_2304_2367_0_2_n_0,
      O => \blue[0]_INST_0_i_30_n_0\
    );
\blue[0]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[0]_INST_0_i_15_n_0\,
      I1 => \blue[0]_INST_0_i_16_n_0\,
      O => \blue[0]_INST_0_i_4_n_0\,
      S => P(8)
    );
\blue[0]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[0]_INST_0_i_17_n_0\,
      I1 => \blue[0]_INST_0_i_18_n_0\,
      O => \blue[0]_INST_0_i_5_n_0\,
      S => P(8)
    );
\blue[0]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[0]_INST_0_i_19_n_0\,
      I1 => \blue[0]_INST_0_i_20_n_0\,
      O => \blue[0]_INST_0_i_6_n_0\,
      S => P(8)
    );
\blue[0]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[0]_INST_0_i_21_n_0\,
      I1 => \blue[0]_INST_0_i_22_n_0\,
      O => \blue[0]_INST_0_i_7_n_0\,
      S => P(8)
    );
\blue[0]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[0]_INST_0_i_23_n_0\,
      I1 => \blue[0]_INST_0_i_24_n_0\,
      O => \blue[0]_INST_0_i_8_n_0\,
      S => P(8)
    );
\blue[0]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[0]_INST_0_i_25_n_0\,
      I1 => \blue[0]_INST_0_i_26_n_0\,
      O => \blue[0]_INST_0_i_9_n_0\,
      S => P(8)
    );
\blue[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \blue[1]_INST_0_i_1_n_0\,
      I1 => P(11),
      I2 => \blue[1]_INST_0_i_2_n_0\,
      I3 => P(12),
      I4 => \blue[1]_INST_0_i_3_n_0\,
      I5 => \current_ver_pos_reg[5]\,
      O => blue(1)
    );
\blue[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \blue[1]_INST_0_i_4_n_0\,
      I1 => \blue[1]_INST_0_i_5_n_0\,
      I2 => P(10),
      I3 => \blue[1]_INST_0_i_6_n_0\,
      I4 => P(9),
      I5 => \blue[1]_INST_0_i_7_n_0\,
      O => \blue[1]_INST_0_i_1_n_0\
    );
\blue[1]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[1]_INST_0_i_27_n_0\,
      I1 => \blue[1]_INST_0_i_28_n_0\,
      O => \blue[1]_INST_0_i_10_n_0\,
      S => P(8)
    );
\blue[1]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[1]_INST_0_i_29_n_0\,
      I1 => \blue[1]_INST_0_i_30_n_0\,
      O => \blue[1]_INST_0_i_11_n_0\,
      S => P(8)
    );
\blue[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4288_4351_0_2_n_1,
      I1 => RAM_reg_4224_4287_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_4160_4223_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_4096_4159_0_2_n_1,
      O => \blue[1]_INST_0_i_12_n_0\
    );
\blue[1]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4544_4607_0_2_n_1,
      I1 => RAM_reg_4480_4543_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_4416_4479_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_4352_4415_0_2_n_1,
      O => \blue[1]_INST_0_i_13_n_0\
    );
\blue[1]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => RAM_reg_4608_4671_0_2_n_1,
      I1 => P(6),
      I2 => RAM_reg_4672_4735_0_2_n_1,
      I3 => P(7),
      I4 => RAM_reg_4736_4799_0_2_n_1,
      I5 => P(8),
      O => \blue[1]_INST_0_i_14_n_0\
    );
\blue[1]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1728_1791_0_2_n_1,
      I1 => RAM_reg_1664_1727_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_1600_1663_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_1536_1599_0_2_n_1,
      O => \blue[1]_INST_0_i_15_n_0\
    );
\blue[1]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1984_2047_0_2_n_1,
      I1 => RAM_reg_1920_1983_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_1856_1919_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_1792_1855_0_2_n_1,
      O => \blue[1]_INST_0_i_16_n_0\
    );
\blue[1]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1216_1279_0_2_n_1,
      I1 => RAM_reg_1152_1215_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_1088_1151_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_1024_1087_0_2_n_1,
      O => \blue[1]_INST_0_i_17_n_0\
    );
\blue[1]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1472_1535_0_2_n_1,
      I1 => RAM_reg_1408_1471_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_1344_1407_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_1280_1343_0_2_n_1,
      O => \blue[1]_INST_0_i_18_n_0\
    );
\blue[1]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_0_2_n_1,
      I1 => RAM_reg_640_703_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_576_639_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_512_575_0_2_n_1,
      O => \blue[1]_INST_0_i_19_n_0\
    );
\blue[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \blue[1]_INST_0_i_8_n_0\,
      I1 => \blue[1]_INST_0_i_9_n_0\,
      I2 => P(10),
      I3 => \blue[1]_INST_0_i_10_n_0\,
      I4 => P(9),
      I5 => \blue[1]_INST_0_i_11_n_0\,
      O => \blue[1]_INST_0_i_2_n_0\
    );
\blue[1]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_0_2_n_1,
      I1 => RAM_reg_896_959_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_832_895_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_768_831_0_2_n_1,
      O => \blue[1]_INST_0_i_20_n_0\
    );
\blue[1]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_2_n_1,
      I1 => RAM_reg_128_191_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_64_127_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_0_63_0_2_n_1,
      O => \blue[1]_INST_0_i_21_n_0\
    );
\blue[1]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_2_n_1,
      I1 => RAM_reg_384_447_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_320_383_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_256_319_0_2_n_1,
      O => \blue[1]_INST_0_i_22_n_0\
    );
\blue[1]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3776_3839_0_2_n_1,
      I1 => RAM_reg_3712_3775_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_3648_3711_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_3584_3647_0_2_n_1,
      O => \blue[1]_INST_0_i_23_n_0\
    );
\blue[1]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4032_4095_0_2_n_1,
      I1 => RAM_reg_3968_4031_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_3904_3967_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_3840_3903_0_2_n_1,
      O => \blue[1]_INST_0_i_24_n_0\
    );
\blue[1]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3264_3327_0_2_n_1,
      I1 => RAM_reg_3200_3263_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_3136_3199_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_3072_3135_0_2_n_1,
      O => \blue[1]_INST_0_i_25_n_0\
    );
\blue[1]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3520_3583_0_2_n_1,
      I1 => RAM_reg_3456_3519_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_3392_3455_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_3328_3391_0_2_n_1,
      O => \blue[1]_INST_0_i_26_n_0\
    );
\blue[1]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2752_2815_0_2_n_1,
      I1 => RAM_reg_2688_2751_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_2624_2687_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_2560_2623_0_2_n_1,
      O => \blue[1]_INST_0_i_27_n_0\
    );
\blue[1]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3008_3071_0_2_n_1,
      I1 => RAM_reg_2944_3007_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_2880_2943_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_2816_2879_0_2_n_1,
      O => \blue[1]_INST_0_i_28_n_0\
    );
\blue[1]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2240_2303_0_2_n_1,
      I1 => RAM_reg_2176_2239_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_2112_2175_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_2048_2111_0_2_n_1,
      O => \blue[1]_INST_0_i_29_n_0\
    );
\blue[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \blue[1]_INST_0_i_12_n_0\,
      I1 => P(8),
      I2 => \blue[1]_INST_0_i_13_n_0\,
      I3 => P(9),
      I4 => \blue[1]_INST_0_i_14_n_0\,
      I5 => P(10),
      O => \blue[1]_INST_0_i_3_n_0\
    );
\blue[1]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2496_2559_0_2_n_1,
      I1 => RAM_reg_2432_2495_0_2_n_1,
      I2 => P(7),
      I3 => RAM_reg_2368_2431_0_2_n_1,
      I4 => P(6),
      I5 => RAM_reg_2304_2367_0_2_n_1,
      O => \blue[1]_INST_0_i_30_n_0\
    );
\blue[1]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[1]_INST_0_i_15_n_0\,
      I1 => \blue[1]_INST_0_i_16_n_0\,
      O => \blue[1]_INST_0_i_4_n_0\,
      S => P(8)
    );
\blue[1]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[1]_INST_0_i_17_n_0\,
      I1 => \blue[1]_INST_0_i_18_n_0\,
      O => \blue[1]_INST_0_i_5_n_0\,
      S => P(8)
    );
\blue[1]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[1]_INST_0_i_19_n_0\,
      I1 => \blue[1]_INST_0_i_20_n_0\,
      O => \blue[1]_INST_0_i_6_n_0\,
      S => P(8)
    );
\blue[1]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[1]_INST_0_i_21_n_0\,
      I1 => \blue[1]_INST_0_i_22_n_0\,
      O => \blue[1]_INST_0_i_7_n_0\,
      S => P(8)
    );
\blue[1]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[1]_INST_0_i_23_n_0\,
      I1 => \blue[1]_INST_0_i_24_n_0\,
      O => \blue[1]_INST_0_i_8_n_0\,
      S => P(8)
    );
\blue[1]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[1]_INST_0_i_25_n_0\,
      I1 => \blue[1]_INST_0_i_26_n_0\,
      O => \blue[1]_INST_0_i_9_n_0\,
      S => P(8)
    );
\blue[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \blue[2]_INST_0_i_1_n_0\,
      I1 => P(11),
      I2 => \blue[2]_INST_0_i_2_n_0\,
      I3 => P(12),
      I4 => \blue[2]_INST_0_i_3_n_0\,
      I5 => \current_ver_pos_reg[5]\,
      O => blue(2)
    );
\blue[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \blue[2]_INST_0_i_4_n_0\,
      I1 => \blue[2]_INST_0_i_5_n_0\,
      I2 => P(10),
      I3 => \blue[2]_INST_0_i_6_n_0\,
      I4 => P(9),
      I5 => \blue[2]_INST_0_i_7_n_0\,
      O => \blue[2]_INST_0_i_1_n_0\
    );
\blue[2]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[2]_INST_0_i_27_n_0\,
      I1 => \blue[2]_INST_0_i_28_n_0\,
      O => \blue[2]_INST_0_i_10_n_0\,
      S => P(8)
    );
\blue[2]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[2]_INST_0_i_29_n_0\,
      I1 => \blue[2]_INST_0_i_30_n_0\,
      O => \blue[2]_INST_0_i_11_n_0\,
      S => P(8)
    );
\blue[2]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4288_4351_0_2_n_2,
      I1 => RAM_reg_4224_4287_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_4160_4223_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_4096_4159_0_2_n_2,
      O => \blue[2]_INST_0_i_12_n_0\
    );
\blue[2]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4544_4607_0_2_n_2,
      I1 => RAM_reg_4480_4543_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_4416_4479_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_4352_4415_0_2_n_2,
      O => \blue[2]_INST_0_i_13_n_0\
    );
\blue[2]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => RAM_reg_4608_4671_0_2_n_2,
      I1 => P(6),
      I2 => RAM_reg_4672_4735_0_2_n_2,
      I3 => P(7),
      I4 => RAM_reg_4736_4799_0_2_n_2,
      I5 => P(8),
      O => \blue[2]_INST_0_i_14_n_0\
    );
\blue[2]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1728_1791_0_2_n_2,
      I1 => RAM_reg_1664_1727_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_1600_1663_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_1536_1599_0_2_n_2,
      O => \blue[2]_INST_0_i_15_n_0\
    );
\blue[2]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1984_2047_0_2_n_2,
      I1 => RAM_reg_1920_1983_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_1856_1919_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_1792_1855_0_2_n_2,
      O => \blue[2]_INST_0_i_16_n_0\
    );
\blue[2]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1216_1279_0_2_n_2,
      I1 => RAM_reg_1152_1215_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_1088_1151_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_1024_1087_0_2_n_2,
      O => \blue[2]_INST_0_i_17_n_0\
    );
\blue[2]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1472_1535_0_2_n_2,
      I1 => RAM_reg_1408_1471_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_1344_1407_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_1280_1343_0_2_n_2,
      O => \blue[2]_INST_0_i_18_n_0\
    );
\blue[2]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_0_2_n_2,
      I1 => RAM_reg_640_703_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_576_639_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_512_575_0_2_n_2,
      O => \blue[2]_INST_0_i_19_n_0\
    );
\blue[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \blue[2]_INST_0_i_8_n_0\,
      I1 => \blue[2]_INST_0_i_9_n_0\,
      I2 => P(10),
      I3 => \blue[2]_INST_0_i_10_n_0\,
      I4 => P(9),
      I5 => \blue[2]_INST_0_i_11_n_0\,
      O => \blue[2]_INST_0_i_2_n_0\
    );
\blue[2]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_0_2_n_2,
      I1 => RAM_reg_896_959_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_832_895_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_768_831_0_2_n_2,
      O => \blue[2]_INST_0_i_20_n_0\
    );
\blue[2]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_2_n_2,
      I1 => RAM_reg_128_191_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_64_127_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_0_63_0_2_n_2,
      O => \blue[2]_INST_0_i_21_n_0\
    );
\blue[2]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_2_n_2,
      I1 => RAM_reg_384_447_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_320_383_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_256_319_0_2_n_2,
      O => \blue[2]_INST_0_i_22_n_0\
    );
\blue[2]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3776_3839_0_2_n_2,
      I1 => RAM_reg_3712_3775_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_3648_3711_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_3584_3647_0_2_n_2,
      O => \blue[2]_INST_0_i_23_n_0\
    );
\blue[2]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4032_4095_0_2_n_2,
      I1 => RAM_reg_3968_4031_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_3904_3967_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_3840_3903_0_2_n_2,
      O => \blue[2]_INST_0_i_24_n_0\
    );
\blue[2]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3264_3327_0_2_n_2,
      I1 => RAM_reg_3200_3263_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_3136_3199_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_3072_3135_0_2_n_2,
      O => \blue[2]_INST_0_i_25_n_0\
    );
\blue[2]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3520_3583_0_2_n_2,
      I1 => RAM_reg_3456_3519_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_3392_3455_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_3328_3391_0_2_n_2,
      O => \blue[2]_INST_0_i_26_n_0\
    );
\blue[2]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2752_2815_0_2_n_2,
      I1 => RAM_reg_2688_2751_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_2624_2687_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_2560_2623_0_2_n_2,
      O => \blue[2]_INST_0_i_27_n_0\
    );
\blue[2]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3008_3071_0_2_n_2,
      I1 => RAM_reg_2944_3007_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_2880_2943_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_2816_2879_0_2_n_2,
      O => \blue[2]_INST_0_i_28_n_0\
    );
\blue[2]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2240_2303_0_2_n_2,
      I1 => RAM_reg_2176_2239_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_2112_2175_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_2048_2111_0_2_n_2,
      O => \blue[2]_INST_0_i_29_n_0\
    );
\blue[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \blue[2]_INST_0_i_12_n_0\,
      I1 => P(8),
      I2 => \blue[2]_INST_0_i_13_n_0\,
      I3 => P(9),
      I4 => \blue[2]_INST_0_i_14_n_0\,
      I5 => P(10),
      O => \blue[2]_INST_0_i_3_n_0\
    );
\blue[2]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2496_2559_0_2_n_2,
      I1 => RAM_reg_2432_2495_0_2_n_2,
      I2 => P(7),
      I3 => RAM_reg_2368_2431_0_2_n_2,
      I4 => P(6),
      I5 => RAM_reg_2304_2367_0_2_n_2,
      O => \blue[2]_INST_0_i_30_n_0\
    );
\blue[2]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[2]_INST_0_i_15_n_0\,
      I1 => \blue[2]_INST_0_i_16_n_0\,
      O => \blue[2]_INST_0_i_4_n_0\,
      S => P(8)
    );
\blue[2]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[2]_INST_0_i_17_n_0\,
      I1 => \blue[2]_INST_0_i_18_n_0\,
      O => \blue[2]_INST_0_i_5_n_0\,
      S => P(8)
    );
\blue[2]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[2]_INST_0_i_19_n_0\,
      I1 => \blue[2]_INST_0_i_20_n_0\,
      O => \blue[2]_INST_0_i_6_n_0\,
      S => P(8)
    );
\blue[2]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[2]_INST_0_i_21_n_0\,
      I1 => \blue[2]_INST_0_i_22_n_0\,
      O => \blue[2]_INST_0_i_7_n_0\,
      S => P(8)
    );
\blue[2]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[2]_INST_0_i_23_n_0\,
      I1 => \blue[2]_INST_0_i_24_n_0\,
      O => \blue[2]_INST_0_i_8_n_0\,
      S => P(8)
    );
\blue[2]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[2]_INST_0_i_25_n_0\,
      I1 => \blue[2]_INST_0_i_26_n_0\,
      O => \blue[2]_INST_0_i_9_n_0\,
      S => P(8)
    );
\blue[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \blue[3]_INST_0_i_1_n_0\,
      I1 => P(11),
      I2 => \blue[3]_INST_0_i_2_n_0\,
      I3 => P(12),
      I4 => \blue[3]_INST_0_i_3_n_0\,
      I5 => \current_ver_pos_reg[5]\,
      O => blue(3)
    );
\blue[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \blue[3]_INST_0_i_4_n_0\,
      I1 => \blue[3]_INST_0_i_5_n_0\,
      I2 => P(10),
      I3 => \blue[3]_INST_0_i_6_n_0\,
      I4 => P(9),
      I5 => \blue[3]_INST_0_i_7_n_0\,
      O => \blue[3]_INST_0_i_1_n_0\
    );
\blue[3]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[3]_INST_0_i_27_n_0\,
      I1 => \blue[3]_INST_0_i_28_n_0\,
      O => \blue[3]_INST_0_i_10_n_0\,
      S => P(8)
    );
\blue[3]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[3]_INST_0_i_29_n_0\,
      I1 => \blue[3]_INST_0_i_30_n_0\,
      O => \blue[3]_INST_0_i_11_n_0\,
      S => P(8)
    );
\blue[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4288_4351_3_5_n_0,
      I1 => RAM_reg_4224_4287_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_4160_4223_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_4096_4159_3_5_n_0,
      O => \blue[3]_INST_0_i_12_n_0\
    );
\blue[3]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4544_4607_3_5_n_0,
      I1 => RAM_reg_4480_4543_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_4416_4479_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_4352_4415_3_5_n_0,
      O => \blue[3]_INST_0_i_13_n_0\
    );
\blue[3]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => RAM_reg_4608_4671_3_5_n_0,
      I1 => P(6),
      I2 => RAM_reg_4672_4735_3_5_n_0,
      I3 => P(7),
      I4 => RAM_reg_4736_4799_3_5_n_0,
      I5 => P(8),
      O => \blue[3]_INST_0_i_14_n_0\
    );
\blue[3]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1728_1791_3_5_n_0,
      I1 => RAM_reg_1664_1727_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_1600_1663_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_1536_1599_3_5_n_0,
      O => \blue[3]_INST_0_i_15_n_0\
    );
\blue[3]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1984_2047_3_5_n_0,
      I1 => RAM_reg_1920_1983_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_1856_1919_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_1792_1855_3_5_n_0,
      O => \blue[3]_INST_0_i_16_n_0\
    );
\blue[3]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1216_1279_3_5_n_0,
      I1 => RAM_reg_1152_1215_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_1088_1151_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_1024_1087_3_5_n_0,
      O => \blue[3]_INST_0_i_17_n_0\
    );
\blue[3]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1472_1535_3_5_n_0,
      I1 => RAM_reg_1408_1471_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_1344_1407_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_1280_1343_3_5_n_0,
      O => \blue[3]_INST_0_i_18_n_0\
    );
\blue[3]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_3_5_n_0,
      I1 => RAM_reg_640_703_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_576_639_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_512_575_3_5_n_0,
      O => \blue[3]_INST_0_i_19_n_0\
    );
\blue[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \blue[3]_INST_0_i_8_n_0\,
      I1 => \blue[3]_INST_0_i_9_n_0\,
      I2 => P(10),
      I3 => \blue[3]_INST_0_i_10_n_0\,
      I4 => P(9),
      I5 => \blue[3]_INST_0_i_11_n_0\,
      O => \blue[3]_INST_0_i_2_n_0\
    );
\blue[3]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_3_5_n_0,
      I1 => RAM_reg_896_959_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_832_895_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_768_831_3_5_n_0,
      O => \blue[3]_INST_0_i_20_n_0\
    );
\blue[3]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_3_5_n_0,
      I1 => RAM_reg_128_191_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_64_127_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_0_63_3_5_n_0,
      O => \blue[3]_INST_0_i_21_n_0\
    );
\blue[3]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_3_5_n_0,
      I1 => RAM_reg_384_447_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_320_383_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_256_319_3_5_n_0,
      O => \blue[3]_INST_0_i_22_n_0\
    );
\blue[3]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3776_3839_3_5_n_0,
      I1 => RAM_reg_3712_3775_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_3648_3711_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_3584_3647_3_5_n_0,
      O => \blue[3]_INST_0_i_23_n_0\
    );
\blue[3]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4032_4095_3_5_n_0,
      I1 => RAM_reg_3968_4031_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_3904_3967_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_3840_3903_3_5_n_0,
      O => \blue[3]_INST_0_i_24_n_0\
    );
\blue[3]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3264_3327_3_5_n_0,
      I1 => RAM_reg_3200_3263_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_3136_3199_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_3072_3135_3_5_n_0,
      O => \blue[3]_INST_0_i_25_n_0\
    );
\blue[3]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3520_3583_3_5_n_0,
      I1 => RAM_reg_3456_3519_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_3392_3455_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_3328_3391_3_5_n_0,
      O => \blue[3]_INST_0_i_26_n_0\
    );
\blue[3]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2752_2815_3_5_n_0,
      I1 => RAM_reg_2688_2751_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_2624_2687_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_2560_2623_3_5_n_0,
      O => \blue[3]_INST_0_i_27_n_0\
    );
\blue[3]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3008_3071_3_5_n_0,
      I1 => RAM_reg_2944_3007_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_2880_2943_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_2816_2879_3_5_n_0,
      O => \blue[3]_INST_0_i_28_n_0\
    );
\blue[3]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2240_2303_3_5_n_0,
      I1 => RAM_reg_2176_2239_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_2112_2175_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_2048_2111_3_5_n_0,
      O => \blue[3]_INST_0_i_29_n_0\
    );
\blue[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \blue[3]_INST_0_i_12_n_0\,
      I1 => P(8),
      I2 => \blue[3]_INST_0_i_13_n_0\,
      I3 => P(9),
      I4 => \blue[3]_INST_0_i_14_n_0\,
      I5 => P(10),
      O => \blue[3]_INST_0_i_3_n_0\
    );
\blue[3]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2496_2559_3_5_n_0,
      I1 => RAM_reg_2432_2495_3_5_n_0,
      I2 => P(7),
      I3 => RAM_reg_2368_2431_3_5_n_0,
      I4 => P(6),
      I5 => RAM_reg_2304_2367_3_5_n_0,
      O => \blue[3]_INST_0_i_30_n_0\
    );
\blue[3]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[3]_INST_0_i_15_n_0\,
      I1 => \blue[3]_INST_0_i_16_n_0\,
      O => \blue[3]_INST_0_i_4_n_0\,
      S => P(8)
    );
\blue[3]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[3]_INST_0_i_17_n_0\,
      I1 => \blue[3]_INST_0_i_18_n_0\,
      O => \blue[3]_INST_0_i_5_n_0\,
      S => P(8)
    );
\blue[3]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[3]_INST_0_i_19_n_0\,
      I1 => \blue[3]_INST_0_i_20_n_0\,
      O => \blue[3]_INST_0_i_6_n_0\,
      S => P(8)
    );
\blue[3]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[3]_INST_0_i_21_n_0\,
      I1 => \blue[3]_INST_0_i_22_n_0\,
      O => \blue[3]_INST_0_i_7_n_0\,
      S => P(8)
    );
\blue[3]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[3]_INST_0_i_23_n_0\,
      I1 => \blue[3]_INST_0_i_24_n_0\,
      O => \blue[3]_INST_0_i_8_n_0\,
      S => P(8)
    );
\blue[3]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \blue[3]_INST_0_i_25_n_0\,
      I1 => \blue[3]_INST_0_i_26_n_0\,
      O => \blue[3]_INST_0_i_9_n_0\,
      S => P(8)
    );
\green[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \green[0]_INST_0_i_1_n_0\,
      I1 => P(11),
      I2 => \green[0]_INST_0_i_2_n_0\,
      I3 => P(12),
      I4 => \green[0]_INST_0_i_3_n_0\,
      I5 => \current_ver_pos_reg[5]\,
      O => green(0)
    );
\green[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \green[0]_INST_0_i_4_n_0\,
      I1 => \green[0]_INST_0_i_5_n_0\,
      I2 => P(10),
      I3 => \green[0]_INST_0_i_6_n_0\,
      I4 => P(9),
      I5 => \green[0]_INST_0_i_7_n_0\,
      O => \green[0]_INST_0_i_1_n_0\
    );
\green[0]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[0]_INST_0_i_27_n_0\,
      I1 => \green[0]_INST_0_i_28_n_0\,
      O => \green[0]_INST_0_i_10_n_0\,
      S => P(8)
    );
\green[0]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[0]_INST_0_i_29_n_0\,
      I1 => \green[0]_INST_0_i_30_n_0\,
      O => \green[0]_INST_0_i_11_n_0\,
      S => P(8)
    );
\green[0]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4288_4351_3_5_n_1,
      I1 => RAM_reg_4224_4287_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_4160_4223_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_4096_4159_3_5_n_1,
      O => \green[0]_INST_0_i_12_n_0\
    );
\green[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4544_4607_3_5_n_1,
      I1 => RAM_reg_4480_4543_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_4416_4479_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_4352_4415_3_5_n_1,
      O => \green[0]_INST_0_i_13_n_0\
    );
\green[0]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => RAM_reg_4608_4671_3_5_n_1,
      I1 => P(6),
      I2 => RAM_reg_4672_4735_3_5_n_1,
      I3 => P(7),
      I4 => RAM_reg_4736_4799_3_5_n_1,
      I5 => P(8),
      O => \green[0]_INST_0_i_14_n_0\
    );
\green[0]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1728_1791_3_5_n_1,
      I1 => RAM_reg_1664_1727_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_1600_1663_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_1536_1599_3_5_n_1,
      O => \green[0]_INST_0_i_15_n_0\
    );
\green[0]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1984_2047_3_5_n_1,
      I1 => RAM_reg_1920_1983_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_1856_1919_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_1792_1855_3_5_n_1,
      O => \green[0]_INST_0_i_16_n_0\
    );
\green[0]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1216_1279_3_5_n_1,
      I1 => RAM_reg_1152_1215_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_1088_1151_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_1024_1087_3_5_n_1,
      O => \green[0]_INST_0_i_17_n_0\
    );
\green[0]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1472_1535_3_5_n_1,
      I1 => RAM_reg_1408_1471_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_1344_1407_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_1280_1343_3_5_n_1,
      O => \green[0]_INST_0_i_18_n_0\
    );
\green[0]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_3_5_n_1,
      I1 => RAM_reg_640_703_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_576_639_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_512_575_3_5_n_1,
      O => \green[0]_INST_0_i_19_n_0\
    );
\green[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \green[0]_INST_0_i_8_n_0\,
      I1 => \green[0]_INST_0_i_9_n_0\,
      I2 => P(10),
      I3 => \green[0]_INST_0_i_10_n_0\,
      I4 => P(9),
      I5 => \green[0]_INST_0_i_11_n_0\,
      O => \green[0]_INST_0_i_2_n_0\
    );
\green[0]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_3_5_n_1,
      I1 => RAM_reg_896_959_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_832_895_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_768_831_3_5_n_1,
      O => \green[0]_INST_0_i_20_n_0\
    );
\green[0]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_3_5_n_1,
      I1 => RAM_reg_128_191_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_64_127_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_0_63_3_5_n_1,
      O => \green[0]_INST_0_i_21_n_0\
    );
\green[0]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_3_5_n_1,
      I1 => RAM_reg_384_447_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_320_383_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_256_319_3_5_n_1,
      O => \green[0]_INST_0_i_22_n_0\
    );
\green[0]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3776_3839_3_5_n_1,
      I1 => RAM_reg_3712_3775_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_3648_3711_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_3584_3647_3_5_n_1,
      O => \green[0]_INST_0_i_23_n_0\
    );
\green[0]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4032_4095_3_5_n_1,
      I1 => RAM_reg_3968_4031_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_3904_3967_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_3840_3903_3_5_n_1,
      O => \green[0]_INST_0_i_24_n_0\
    );
\green[0]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3264_3327_3_5_n_1,
      I1 => RAM_reg_3200_3263_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_3136_3199_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_3072_3135_3_5_n_1,
      O => \green[0]_INST_0_i_25_n_0\
    );
\green[0]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3520_3583_3_5_n_1,
      I1 => RAM_reg_3456_3519_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_3392_3455_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_3328_3391_3_5_n_1,
      O => \green[0]_INST_0_i_26_n_0\
    );
\green[0]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2752_2815_3_5_n_1,
      I1 => RAM_reg_2688_2751_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_2624_2687_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_2560_2623_3_5_n_1,
      O => \green[0]_INST_0_i_27_n_0\
    );
\green[0]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3008_3071_3_5_n_1,
      I1 => RAM_reg_2944_3007_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_2880_2943_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_2816_2879_3_5_n_1,
      O => \green[0]_INST_0_i_28_n_0\
    );
\green[0]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2240_2303_3_5_n_1,
      I1 => RAM_reg_2176_2239_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_2112_2175_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_2048_2111_3_5_n_1,
      O => \green[0]_INST_0_i_29_n_0\
    );
\green[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \green[0]_INST_0_i_12_n_0\,
      I1 => P(8),
      I2 => \green[0]_INST_0_i_13_n_0\,
      I3 => P(9),
      I4 => \green[0]_INST_0_i_14_n_0\,
      I5 => P(10),
      O => \green[0]_INST_0_i_3_n_0\
    );
\green[0]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2496_2559_3_5_n_1,
      I1 => RAM_reg_2432_2495_3_5_n_1,
      I2 => P(7),
      I3 => RAM_reg_2368_2431_3_5_n_1,
      I4 => P(6),
      I5 => RAM_reg_2304_2367_3_5_n_1,
      O => \green[0]_INST_0_i_30_n_0\
    );
\green[0]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[0]_INST_0_i_15_n_0\,
      I1 => \green[0]_INST_0_i_16_n_0\,
      O => \green[0]_INST_0_i_4_n_0\,
      S => P(8)
    );
\green[0]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[0]_INST_0_i_17_n_0\,
      I1 => \green[0]_INST_0_i_18_n_0\,
      O => \green[0]_INST_0_i_5_n_0\,
      S => P(8)
    );
\green[0]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[0]_INST_0_i_19_n_0\,
      I1 => \green[0]_INST_0_i_20_n_0\,
      O => \green[0]_INST_0_i_6_n_0\,
      S => P(8)
    );
\green[0]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[0]_INST_0_i_21_n_0\,
      I1 => \green[0]_INST_0_i_22_n_0\,
      O => \green[0]_INST_0_i_7_n_0\,
      S => P(8)
    );
\green[0]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[0]_INST_0_i_23_n_0\,
      I1 => \green[0]_INST_0_i_24_n_0\,
      O => \green[0]_INST_0_i_8_n_0\,
      S => P(8)
    );
\green[0]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[0]_INST_0_i_25_n_0\,
      I1 => \green[0]_INST_0_i_26_n_0\,
      O => \green[0]_INST_0_i_9_n_0\,
      S => P(8)
    );
\green[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \green[1]_INST_0_i_1_n_0\,
      I1 => P(11),
      I2 => \green[1]_INST_0_i_2_n_0\,
      I3 => P(12),
      I4 => \green[1]_INST_0_i_3_n_0\,
      I5 => \current_ver_pos_reg[5]\,
      O => green(1)
    );
\green[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \green[1]_INST_0_i_4_n_0\,
      I1 => \green[1]_INST_0_i_5_n_0\,
      I2 => P(10),
      I3 => \green[1]_INST_0_i_6_n_0\,
      I4 => P(9),
      I5 => \green[1]_INST_0_i_7_n_0\,
      O => \green[1]_INST_0_i_1_n_0\
    );
\green[1]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[1]_INST_0_i_27_n_0\,
      I1 => \green[1]_INST_0_i_28_n_0\,
      O => \green[1]_INST_0_i_10_n_0\,
      S => P(8)
    );
\green[1]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[1]_INST_0_i_29_n_0\,
      I1 => \green[1]_INST_0_i_30_n_0\,
      O => \green[1]_INST_0_i_11_n_0\,
      S => P(8)
    );
\green[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4288_4351_3_5_n_2,
      I1 => RAM_reg_4224_4287_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_4160_4223_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_4096_4159_3_5_n_2,
      O => \green[1]_INST_0_i_12_n_0\
    );
\green[1]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4544_4607_3_5_n_2,
      I1 => RAM_reg_4480_4543_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_4416_4479_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_4352_4415_3_5_n_2,
      O => \green[1]_INST_0_i_13_n_0\
    );
\green[1]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => RAM_reg_4608_4671_3_5_n_2,
      I1 => P(6),
      I2 => RAM_reg_4672_4735_3_5_n_2,
      I3 => P(7),
      I4 => RAM_reg_4736_4799_3_5_n_2,
      I5 => P(8),
      O => \green[1]_INST_0_i_14_n_0\
    );
\green[1]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1728_1791_3_5_n_2,
      I1 => RAM_reg_1664_1727_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_1600_1663_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_1536_1599_3_5_n_2,
      O => \green[1]_INST_0_i_15_n_0\
    );
\green[1]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1984_2047_3_5_n_2,
      I1 => RAM_reg_1920_1983_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_1856_1919_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_1792_1855_3_5_n_2,
      O => \green[1]_INST_0_i_16_n_0\
    );
\green[1]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1216_1279_3_5_n_2,
      I1 => RAM_reg_1152_1215_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_1088_1151_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_1024_1087_3_5_n_2,
      O => \green[1]_INST_0_i_17_n_0\
    );
\green[1]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1472_1535_3_5_n_2,
      I1 => RAM_reg_1408_1471_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_1344_1407_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_1280_1343_3_5_n_2,
      O => \green[1]_INST_0_i_18_n_0\
    );
\green[1]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_3_5_n_2,
      I1 => RAM_reg_640_703_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_576_639_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_512_575_3_5_n_2,
      O => \green[1]_INST_0_i_19_n_0\
    );
\green[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \green[1]_INST_0_i_8_n_0\,
      I1 => \green[1]_INST_0_i_9_n_0\,
      I2 => P(10),
      I3 => \green[1]_INST_0_i_10_n_0\,
      I4 => P(9),
      I5 => \green[1]_INST_0_i_11_n_0\,
      O => \green[1]_INST_0_i_2_n_0\
    );
\green[1]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_3_5_n_2,
      I1 => RAM_reg_896_959_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_832_895_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_768_831_3_5_n_2,
      O => \green[1]_INST_0_i_20_n_0\
    );
\green[1]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_3_5_n_2,
      I1 => RAM_reg_128_191_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_64_127_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_0_63_3_5_n_2,
      O => \green[1]_INST_0_i_21_n_0\
    );
\green[1]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_3_5_n_2,
      I1 => RAM_reg_384_447_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_320_383_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_256_319_3_5_n_2,
      O => \green[1]_INST_0_i_22_n_0\
    );
\green[1]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3776_3839_3_5_n_2,
      I1 => RAM_reg_3712_3775_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_3648_3711_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_3584_3647_3_5_n_2,
      O => \green[1]_INST_0_i_23_n_0\
    );
\green[1]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4032_4095_3_5_n_2,
      I1 => RAM_reg_3968_4031_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_3904_3967_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_3840_3903_3_5_n_2,
      O => \green[1]_INST_0_i_24_n_0\
    );
\green[1]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3264_3327_3_5_n_2,
      I1 => RAM_reg_3200_3263_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_3136_3199_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_3072_3135_3_5_n_2,
      O => \green[1]_INST_0_i_25_n_0\
    );
\green[1]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3520_3583_3_5_n_2,
      I1 => RAM_reg_3456_3519_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_3392_3455_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_3328_3391_3_5_n_2,
      O => \green[1]_INST_0_i_26_n_0\
    );
\green[1]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2752_2815_3_5_n_2,
      I1 => RAM_reg_2688_2751_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_2624_2687_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_2560_2623_3_5_n_2,
      O => \green[1]_INST_0_i_27_n_0\
    );
\green[1]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3008_3071_3_5_n_2,
      I1 => RAM_reg_2944_3007_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_2880_2943_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_2816_2879_3_5_n_2,
      O => \green[1]_INST_0_i_28_n_0\
    );
\green[1]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2240_2303_3_5_n_2,
      I1 => RAM_reg_2176_2239_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_2112_2175_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_2048_2111_3_5_n_2,
      O => \green[1]_INST_0_i_29_n_0\
    );
\green[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \green[1]_INST_0_i_12_n_0\,
      I1 => P(8),
      I2 => \green[1]_INST_0_i_13_n_0\,
      I3 => P(9),
      I4 => \green[1]_INST_0_i_14_n_0\,
      I5 => P(10),
      O => \green[1]_INST_0_i_3_n_0\
    );
\green[1]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2496_2559_3_5_n_2,
      I1 => RAM_reg_2432_2495_3_5_n_2,
      I2 => P(7),
      I3 => RAM_reg_2368_2431_3_5_n_2,
      I4 => P(6),
      I5 => RAM_reg_2304_2367_3_5_n_2,
      O => \green[1]_INST_0_i_30_n_0\
    );
\green[1]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[1]_INST_0_i_15_n_0\,
      I1 => \green[1]_INST_0_i_16_n_0\,
      O => \green[1]_INST_0_i_4_n_0\,
      S => P(8)
    );
\green[1]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[1]_INST_0_i_17_n_0\,
      I1 => \green[1]_INST_0_i_18_n_0\,
      O => \green[1]_INST_0_i_5_n_0\,
      S => P(8)
    );
\green[1]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[1]_INST_0_i_19_n_0\,
      I1 => \green[1]_INST_0_i_20_n_0\,
      O => \green[1]_INST_0_i_6_n_0\,
      S => P(8)
    );
\green[1]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[1]_INST_0_i_21_n_0\,
      I1 => \green[1]_INST_0_i_22_n_0\,
      O => \green[1]_INST_0_i_7_n_0\,
      S => P(8)
    );
\green[1]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[1]_INST_0_i_23_n_0\,
      I1 => \green[1]_INST_0_i_24_n_0\,
      O => \green[1]_INST_0_i_8_n_0\,
      S => P(8)
    );
\green[1]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[1]_INST_0_i_25_n_0\,
      I1 => \green[1]_INST_0_i_26_n_0\,
      O => \green[1]_INST_0_i_9_n_0\,
      S => P(8)
    );
\green[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \green[2]_INST_0_i_1_n_0\,
      I1 => P(11),
      I2 => \green[2]_INST_0_i_2_n_0\,
      I3 => P(12),
      I4 => \green[2]_INST_0_i_3_n_0\,
      I5 => \current_ver_pos_reg[5]\,
      O => green(2)
    );
\green[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \green[2]_INST_0_i_4_n_0\,
      I1 => \green[2]_INST_0_i_5_n_0\,
      I2 => P(10),
      I3 => \green[2]_INST_0_i_6_n_0\,
      I4 => P(9),
      I5 => \green[2]_INST_0_i_7_n_0\,
      O => \green[2]_INST_0_i_1_n_0\
    );
\green[2]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[2]_INST_0_i_27_n_0\,
      I1 => \green[2]_INST_0_i_28_n_0\,
      O => \green[2]_INST_0_i_10_n_0\,
      S => P(8)
    );
\green[2]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[2]_INST_0_i_29_n_0\,
      I1 => \green[2]_INST_0_i_30_n_0\,
      O => \green[2]_INST_0_i_11_n_0\,
      S => P(8)
    );
\green[2]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4288_4351_6_8_n_0,
      I1 => RAM_reg_4224_4287_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_4160_4223_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_4096_4159_6_8_n_0,
      O => \green[2]_INST_0_i_12_n_0\
    );
\green[2]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4544_4607_6_8_n_0,
      I1 => RAM_reg_4480_4543_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_4416_4479_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_4352_4415_6_8_n_0,
      O => \green[2]_INST_0_i_13_n_0\
    );
\green[2]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => RAM_reg_4608_4671_6_8_n_0,
      I1 => P(6),
      I2 => RAM_reg_4672_4735_6_8_n_0,
      I3 => P(7),
      I4 => RAM_reg_4736_4799_6_8_n_0,
      I5 => P(8),
      O => \green[2]_INST_0_i_14_n_0\
    );
\green[2]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1728_1791_6_8_n_0,
      I1 => RAM_reg_1664_1727_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_1600_1663_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_1536_1599_6_8_n_0,
      O => \green[2]_INST_0_i_15_n_0\
    );
\green[2]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1984_2047_6_8_n_0,
      I1 => RAM_reg_1920_1983_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_1856_1919_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_1792_1855_6_8_n_0,
      O => \green[2]_INST_0_i_16_n_0\
    );
\green[2]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1216_1279_6_8_n_0,
      I1 => RAM_reg_1152_1215_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_1088_1151_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_1024_1087_6_8_n_0,
      O => \green[2]_INST_0_i_17_n_0\
    );
\green[2]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1472_1535_6_8_n_0,
      I1 => RAM_reg_1408_1471_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_1344_1407_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_1280_1343_6_8_n_0,
      O => \green[2]_INST_0_i_18_n_0\
    );
\green[2]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_6_8_n_0,
      I1 => RAM_reg_640_703_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_576_639_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_512_575_6_8_n_0,
      O => \green[2]_INST_0_i_19_n_0\
    );
\green[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \green[2]_INST_0_i_8_n_0\,
      I1 => \green[2]_INST_0_i_9_n_0\,
      I2 => P(10),
      I3 => \green[2]_INST_0_i_10_n_0\,
      I4 => P(9),
      I5 => \green[2]_INST_0_i_11_n_0\,
      O => \green[2]_INST_0_i_2_n_0\
    );
\green[2]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_6_8_n_0,
      I1 => RAM_reg_896_959_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_832_895_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_768_831_6_8_n_0,
      O => \green[2]_INST_0_i_20_n_0\
    );
\green[2]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_6_8_n_0,
      I1 => RAM_reg_128_191_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_64_127_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_0_63_6_8_n_0,
      O => \green[2]_INST_0_i_21_n_0\
    );
\green[2]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_6_8_n_0,
      I1 => RAM_reg_384_447_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_320_383_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_256_319_6_8_n_0,
      O => \green[2]_INST_0_i_22_n_0\
    );
\green[2]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3776_3839_6_8_n_0,
      I1 => RAM_reg_3712_3775_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_3648_3711_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_3584_3647_6_8_n_0,
      O => \green[2]_INST_0_i_23_n_0\
    );
\green[2]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4032_4095_6_8_n_0,
      I1 => RAM_reg_3968_4031_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_3904_3967_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_3840_3903_6_8_n_0,
      O => \green[2]_INST_0_i_24_n_0\
    );
\green[2]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3264_3327_6_8_n_0,
      I1 => RAM_reg_3200_3263_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_3136_3199_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_3072_3135_6_8_n_0,
      O => \green[2]_INST_0_i_25_n_0\
    );
\green[2]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3520_3583_6_8_n_0,
      I1 => RAM_reg_3456_3519_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_3392_3455_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_3328_3391_6_8_n_0,
      O => \green[2]_INST_0_i_26_n_0\
    );
\green[2]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2752_2815_6_8_n_0,
      I1 => RAM_reg_2688_2751_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_2624_2687_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_2560_2623_6_8_n_0,
      O => \green[2]_INST_0_i_27_n_0\
    );
\green[2]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3008_3071_6_8_n_0,
      I1 => RAM_reg_2944_3007_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_2880_2943_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_2816_2879_6_8_n_0,
      O => \green[2]_INST_0_i_28_n_0\
    );
\green[2]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2240_2303_6_8_n_0,
      I1 => RAM_reg_2176_2239_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_2112_2175_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_2048_2111_6_8_n_0,
      O => \green[2]_INST_0_i_29_n_0\
    );
\green[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \green[2]_INST_0_i_12_n_0\,
      I1 => P(8),
      I2 => \green[2]_INST_0_i_13_n_0\,
      I3 => P(9),
      I4 => \green[2]_INST_0_i_14_n_0\,
      I5 => P(10),
      O => \green[2]_INST_0_i_3_n_0\
    );
\green[2]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2496_2559_6_8_n_0,
      I1 => RAM_reg_2432_2495_6_8_n_0,
      I2 => P(7),
      I3 => RAM_reg_2368_2431_6_8_n_0,
      I4 => P(6),
      I5 => RAM_reg_2304_2367_6_8_n_0,
      O => \green[2]_INST_0_i_30_n_0\
    );
\green[2]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[2]_INST_0_i_15_n_0\,
      I1 => \green[2]_INST_0_i_16_n_0\,
      O => \green[2]_INST_0_i_4_n_0\,
      S => P(8)
    );
\green[2]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[2]_INST_0_i_17_n_0\,
      I1 => \green[2]_INST_0_i_18_n_0\,
      O => \green[2]_INST_0_i_5_n_0\,
      S => P(8)
    );
\green[2]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[2]_INST_0_i_19_n_0\,
      I1 => \green[2]_INST_0_i_20_n_0\,
      O => \green[2]_INST_0_i_6_n_0\,
      S => P(8)
    );
\green[2]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[2]_INST_0_i_21_n_0\,
      I1 => \green[2]_INST_0_i_22_n_0\,
      O => \green[2]_INST_0_i_7_n_0\,
      S => P(8)
    );
\green[2]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[2]_INST_0_i_23_n_0\,
      I1 => \green[2]_INST_0_i_24_n_0\,
      O => \green[2]_INST_0_i_8_n_0\,
      S => P(8)
    );
\green[2]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[2]_INST_0_i_25_n_0\,
      I1 => \green[2]_INST_0_i_26_n_0\,
      O => \green[2]_INST_0_i_9_n_0\,
      S => P(8)
    );
\green[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \green[3]_INST_0_i_1_n_0\,
      I1 => P(11),
      I2 => \green[3]_INST_0_i_2_n_0\,
      I3 => P(12),
      I4 => \green[3]_INST_0_i_3_n_0\,
      I5 => \current_ver_pos_reg[5]\,
      O => green(3)
    );
\green[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \green[3]_INST_0_i_4_n_0\,
      I1 => \green[3]_INST_0_i_5_n_0\,
      I2 => P(10),
      I3 => \green[3]_INST_0_i_6_n_0\,
      I4 => P(9),
      I5 => \green[3]_INST_0_i_7_n_0\,
      O => \green[3]_INST_0_i_1_n_0\
    );
\green[3]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[3]_INST_0_i_27_n_0\,
      I1 => \green[3]_INST_0_i_28_n_0\,
      O => \green[3]_INST_0_i_10_n_0\,
      S => P(8)
    );
\green[3]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[3]_INST_0_i_29_n_0\,
      I1 => \green[3]_INST_0_i_30_n_0\,
      O => \green[3]_INST_0_i_11_n_0\,
      S => P(8)
    );
\green[3]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4288_4351_6_8_n_1,
      I1 => RAM_reg_4224_4287_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_4160_4223_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_4096_4159_6_8_n_1,
      O => \green[3]_INST_0_i_12_n_0\
    );
\green[3]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4544_4607_6_8_n_1,
      I1 => RAM_reg_4480_4543_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_4416_4479_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_4352_4415_6_8_n_1,
      O => \green[3]_INST_0_i_13_n_0\
    );
\green[3]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => RAM_reg_4608_4671_6_8_n_1,
      I1 => P(6),
      I2 => RAM_reg_4672_4735_6_8_n_1,
      I3 => P(7),
      I4 => RAM_reg_4736_4799_6_8_n_1,
      I5 => P(8),
      O => \green[3]_INST_0_i_14_n_0\
    );
\green[3]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1728_1791_6_8_n_1,
      I1 => RAM_reg_1664_1727_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_1600_1663_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_1536_1599_6_8_n_1,
      O => \green[3]_INST_0_i_15_n_0\
    );
\green[3]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1984_2047_6_8_n_1,
      I1 => RAM_reg_1920_1983_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_1856_1919_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_1792_1855_6_8_n_1,
      O => \green[3]_INST_0_i_16_n_0\
    );
\green[3]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1216_1279_6_8_n_1,
      I1 => RAM_reg_1152_1215_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_1088_1151_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_1024_1087_6_8_n_1,
      O => \green[3]_INST_0_i_17_n_0\
    );
\green[3]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1472_1535_6_8_n_1,
      I1 => RAM_reg_1408_1471_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_1344_1407_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_1280_1343_6_8_n_1,
      O => \green[3]_INST_0_i_18_n_0\
    );
\green[3]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_6_8_n_1,
      I1 => RAM_reg_640_703_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_576_639_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_512_575_6_8_n_1,
      O => \green[3]_INST_0_i_19_n_0\
    );
\green[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \green[3]_INST_0_i_8_n_0\,
      I1 => \green[3]_INST_0_i_9_n_0\,
      I2 => P(10),
      I3 => \green[3]_INST_0_i_10_n_0\,
      I4 => P(9),
      I5 => \green[3]_INST_0_i_11_n_0\,
      O => \green[3]_INST_0_i_2_n_0\
    );
\green[3]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_6_8_n_1,
      I1 => RAM_reg_896_959_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_832_895_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_768_831_6_8_n_1,
      O => \green[3]_INST_0_i_20_n_0\
    );
\green[3]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_6_8_n_1,
      I1 => RAM_reg_128_191_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_64_127_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_0_63_6_8_n_1,
      O => \green[3]_INST_0_i_21_n_0\
    );
\green[3]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_6_8_n_1,
      I1 => RAM_reg_384_447_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_320_383_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_256_319_6_8_n_1,
      O => \green[3]_INST_0_i_22_n_0\
    );
\green[3]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3776_3839_6_8_n_1,
      I1 => RAM_reg_3712_3775_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_3648_3711_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_3584_3647_6_8_n_1,
      O => \green[3]_INST_0_i_23_n_0\
    );
\green[3]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4032_4095_6_8_n_1,
      I1 => RAM_reg_3968_4031_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_3904_3967_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_3840_3903_6_8_n_1,
      O => \green[3]_INST_0_i_24_n_0\
    );
\green[3]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3264_3327_6_8_n_1,
      I1 => RAM_reg_3200_3263_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_3136_3199_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_3072_3135_6_8_n_1,
      O => \green[3]_INST_0_i_25_n_0\
    );
\green[3]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3520_3583_6_8_n_1,
      I1 => RAM_reg_3456_3519_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_3392_3455_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_3328_3391_6_8_n_1,
      O => \green[3]_INST_0_i_26_n_0\
    );
\green[3]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2752_2815_6_8_n_1,
      I1 => RAM_reg_2688_2751_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_2624_2687_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_2560_2623_6_8_n_1,
      O => \green[3]_INST_0_i_27_n_0\
    );
\green[3]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3008_3071_6_8_n_1,
      I1 => RAM_reg_2944_3007_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_2880_2943_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_2816_2879_6_8_n_1,
      O => \green[3]_INST_0_i_28_n_0\
    );
\green[3]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2240_2303_6_8_n_1,
      I1 => RAM_reg_2176_2239_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_2112_2175_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_2048_2111_6_8_n_1,
      O => \green[3]_INST_0_i_29_n_0\
    );
\green[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \green[3]_INST_0_i_12_n_0\,
      I1 => P(8),
      I2 => \green[3]_INST_0_i_13_n_0\,
      I3 => P(9),
      I4 => \green[3]_INST_0_i_14_n_0\,
      I5 => P(10),
      O => \green[3]_INST_0_i_3_n_0\
    );
\green[3]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2496_2559_6_8_n_1,
      I1 => RAM_reg_2432_2495_6_8_n_1,
      I2 => P(7),
      I3 => RAM_reg_2368_2431_6_8_n_1,
      I4 => P(6),
      I5 => RAM_reg_2304_2367_6_8_n_1,
      O => \green[3]_INST_0_i_30_n_0\
    );
\green[3]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[3]_INST_0_i_15_n_0\,
      I1 => \green[3]_INST_0_i_16_n_0\,
      O => \green[3]_INST_0_i_4_n_0\,
      S => P(8)
    );
\green[3]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[3]_INST_0_i_17_n_0\,
      I1 => \green[3]_INST_0_i_18_n_0\,
      O => \green[3]_INST_0_i_5_n_0\,
      S => P(8)
    );
\green[3]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[3]_INST_0_i_19_n_0\,
      I1 => \green[3]_INST_0_i_20_n_0\,
      O => \green[3]_INST_0_i_6_n_0\,
      S => P(8)
    );
\green[3]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[3]_INST_0_i_21_n_0\,
      I1 => \green[3]_INST_0_i_22_n_0\,
      O => \green[3]_INST_0_i_7_n_0\,
      S => P(8)
    );
\green[3]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[3]_INST_0_i_23_n_0\,
      I1 => \green[3]_INST_0_i_24_n_0\,
      O => \green[3]_INST_0_i_8_n_0\,
      S => P(8)
    );
\green[3]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \green[3]_INST_0_i_25_n_0\,
      I1 => \green[3]_INST_0_i_26_n_0\,
      O => \green[3]_INST_0_i_9_n_0\,
      S => P(8)
    );
\red[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \red[0]_INST_0_i_1_n_0\,
      I1 => P(11),
      I2 => \red[0]_INST_0_i_2_n_0\,
      I3 => P(12),
      I4 => \red[0]_INST_0_i_3_n_0\,
      I5 => \current_ver_pos_reg[5]\,
      O => red(0)
    );
\red[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \red[0]_INST_0_i_4_n_0\,
      I1 => \red[0]_INST_0_i_5_n_0\,
      I2 => P(10),
      I3 => \red[0]_INST_0_i_6_n_0\,
      I4 => P(9),
      I5 => \red[0]_INST_0_i_7_n_0\,
      O => \red[0]_INST_0_i_1_n_0\
    );
\red[0]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[0]_INST_0_i_27_n_0\,
      I1 => \red[0]_INST_0_i_28_n_0\,
      O => \red[0]_INST_0_i_10_n_0\,
      S => P(8)
    );
\red[0]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[0]_INST_0_i_29_n_0\,
      I1 => \red[0]_INST_0_i_30_n_0\,
      O => \red[0]_INST_0_i_11_n_0\,
      S => P(8)
    );
\red[0]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4288_4351_6_8_n_2,
      I1 => RAM_reg_4224_4287_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_4160_4223_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_4096_4159_6_8_n_2,
      O => \red[0]_INST_0_i_12_n_0\
    );
\red[0]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4544_4607_6_8_n_2,
      I1 => RAM_reg_4480_4543_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_4416_4479_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_4352_4415_6_8_n_2,
      O => \red[0]_INST_0_i_13_n_0\
    );
\red[0]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => RAM_reg_4608_4671_6_8_n_2,
      I1 => P(6),
      I2 => RAM_reg_4672_4735_6_8_n_2,
      I3 => P(7),
      I4 => RAM_reg_4736_4799_6_8_n_2,
      I5 => P(8),
      O => \red[0]_INST_0_i_14_n_0\
    );
\red[0]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1728_1791_6_8_n_2,
      I1 => RAM_reg_1664_1727_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_1600_1663_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_1536_1599_6_8_n_2,
      O => \red[0]_INST_0_i_15_n_0\
    );
\red[0]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1984_2047_6_8_n_2,
      I1 => RAM_reg_1920_1983_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_1856_1919_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_1792_1855_6_8_n_2,
      O => \red[0]_INST_0_i_16_n_0\
    );
\red[0]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1216_1279_6_8_n_2,
      I1 => RAM_reg_1152_1215_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_1088_1151_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_1024_1087_6_8_n_2,
      O => \red[0]_INST_0_i_17_n_0\
    );
\red[0]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1472_1535_6_8_n_2,
      I1 => RAM_reg_1408_1471_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_1344_1407_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_1280_1343_6_8_n_2,
      O => \red[0]_INST_0_i_18_n_0\
    );
\red[0]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_6_8_n_2,
      I1 => RAM_reg_640_703_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_576_639_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_512_575_6_8_n_2,
      O => \red[0]_INST_0_i_19_n_0\
    );
\red[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \red[0]_INST_0_i_8_n_0\,
      I1 => \red[0]_INST_0_i_9_n_0\,
      I2 => P(10),
      I3 => \red[0]_INST_0_i_10_n_0\,
      I4 => P(9),
      I5 => \red[0]_INST_0_i_11_n_0\,
      O => \red[0]_INST_0_i_2_n_0\
    );
\red[0]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_6_8_n_2,
      I1 => RAM_reg_896_959_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_832_895_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_768_831_6_8_n_2,
      O => \red[0]_INST_0_i_20_n_0\
    );
\red[0]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_6_8_n_2,
      I1 => RAM_reg_128_191_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_64_127_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_0_63_6_8_n_2,
      O => \red[0]_INST_0_i_21_n_0\
    );
\red[0]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_6_8_n_2,
      I1 => RAM_reg_384_447_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_320_383_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_256_319_6_8_n_2,
      O => \red[0]_INST_0_i_22_n_0\
    );
\red[0]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3776_3839_6_8_n_2,
      I1 => RAM_reg_3712_3775_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_3648_3711_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_3584_3647_6_8_n_2,
      O => \red[0]_INST_0_i_23_n_0\
    );
\red[0]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4032_4095_6_8_n_2,
      I1 => RAM_reg_3968_4031_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_3904_3967_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_3840_3903_6_8_n_2,
      O => \red[0]_INST_0_i_24_n_0\
    );
\red[0]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3264_3327_6_8_n_2,
      I1 => RAM_reg_3200_3263_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_3136_3199_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_3072_3135_6_8_n_2,
      O => \red[0]_INST_0_i_25_n_0\
    );
\red[0]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3520_3583_6_8_n_2,
      I1 => RAM_reg_3456_3519_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_3392_3455_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_3328_3391_6_8_n_2,
      O => \red[0]_INST_0_i_26_n_0\
    );
\red[0]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2752_2815_6_8_n_2,
      I1 => RAM_reg_2688_2751_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_2624_2687_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_2560_2623_6_8_n_2,
      O => \red[0]_INST_0_i_27_n_0\
    );
\red[0]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3008_3071_6_8_n_2,
      I1 => RAM_reg_2944_3007_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_2880_2943_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_2816_2879_6_8_n_2,
      O => \red[0]_INST_0_i_28_n_0\
    );
\red[0]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2240_2303_6_8_n_2,
      I1 => RAM_reg_2176_2239_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_2112_2175_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_2048_2111_6_8_n_2,
      O => \red[0]_INST_0_i_29_n_0\
    );
\red[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \red[0]_INST_0_i_12_n_0\,
      I1 => P(8),
      I2 => \red[0]_INST_0_i_13_n_0\,
      I3 => P(9),
      I4 => \red[0]_INST_0_i_14_n_0\,
      I5 => P(10),
      O => \red[0]_INST_0_i_3_n_0\
    );
\red[0]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2496_2559_6_8_n_2,
      I1 => RAM_reg_2432_2495_6_8_n_2,
      I2 => P(7),
      I3 => RAM_reg_2368_2431_6_8_n_2,
      I4 => P(6),
      I5 => RAM_reg_2304_2367_6_8_n_2,
      O => \red[0]_INST_0_i_30_n_0\
    );
\red[0]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[0]_INST_0_i_15_n_0\,
      I1 => \red[0]_INST_0_i_16_n_0\,
      O => \red[0]_INST_0_i_4_n_0\,
      S => P(8)
    );
\red[0]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[0]_INST_0_i_17_n_0\,
      I1 => \red[0]_INST_0_i_18_n_0\,
      O => \red[0]_INST_0_i_5_n_0\,
      S => P(8)
    );
\red[0]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[0]_INST_0_i_19_n_0\,
      I1 => \red[0]_INST_0_i_20_n_0\,
      O => \red[0]_INST_0_i_6_n_0\,
      S => P(8)
    );
\red[0]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[0]_INST_0_i_21_n_0\,
      I1 => \red[0]_INST_0_i_22_n_0\,
      O => \red[0]_INST_0_i_7_n_0\,
      S => P(8)
    );
\red[0]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[0]_INST_0_i_23_n_0\,
      I1 => \red[0]_INST_0_i_24_n_0\,
      O => \red[0]_INST_0_i_8_n_0\,
      S => P(8)
    );
\red[0]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[0]_INST_0_i_25_n_0\,
      I1 => \red[0]_INST_0_i_26_n_0\,
      O => \red[0]_INST_0_i_9_n_0\,
      S => P(8)
    );
\red[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \red[1]_INST_0_i_1_n_0\,
      I1 => P(11),
      I2 => \red[1]_INST_0_i_2_n_0\,
      I3 => P(12),
      I4 => \red[1]_INST_0_i_3_n_0\,
      I5 => \current_ver_pos_reg[5]\,
      O => red(1)
    );
\red[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \red[1]_INST_0_i_4_n_0\,
      I1 => \red[1]_INST_0_i_5_n_0\,
      I2 => P(10),
      I3 => \red[1]_INST_0_i_6_n_0\,
      I4 => P(9),
      I5 => \red[1]_INST_0_i_7_n_0\,
      O => \red[1]_INST_0_i_1_n_0\
    );
\red[1]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[1]_INST_0_i_27_n_0\,
      I1 => \red[1]_INST_0_i_28_n_0\,
      O => \red[1]_INST_0_i_10_n_0\,
      S => P(8)
    );
\red[1]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[1]_INST_0_i_29_n_0\,
      I1 => \red[1]_INST_0_i_30_n_0\,
      O => \red[1]_INST_0_i_11_n_0\,
      S => P(8)
    );
\red[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4288_4351_9_11_n_0,
      I1 => RAM_reg_4224_4287_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_4160_4223_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_4096_4159_9_11_n_0,
      O => \red[1]_INST_0_i_12_n_0\
    );
\red[1]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4544_4607_9_11_n_0,
      I1 => RAM_reg_4480_4543_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_4416_4479_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_4352_4415_9_11_n_0,
      O => \red[1]_INST_0_i_13_n_0\
    );
\red[1]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => RAM_reg_4608_4671_9_11_n_0,
      I1 => P(6),
      I2 => RAM_reg_4672_4735_9_11_n_0,
      I3 => P(7),
      I4 => RAM_reg_4736_4799_9_11_n_0,
      I5 => P(8),
      O => \red[1]_INST_0_i_14_n_0\
    );
\red[1]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1728_1791_9_11_n_0,
      I1 => RAM_reg_1664_1727_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_1600_1663_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_1536_1599_9_11_n_0,
      O => \red[1]_INST_0_i_15_n_0\
    );
\red[1]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1984_2047_9_11_n_0,
      I1 => RAM_reg_1920_1983_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_1856_1919_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_1792_1855_9_11_n_0,
      O => \red[1]_INST_0_i_16_n_0\
    );
\red[1]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1216_1279_9_11_n_0,
      I1 => RAM_reg_1152_1215_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_1088_1151_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_1024_1087_9_11_n_0,
      O => \red[1]_INST_0_i_17_n_0\
    );
\red[1]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1472_1535_9_11_n_0,
      I1 => RAM_reg_1408_1471_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_1344_1407_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_1280_1343_9_11_n_0,
      O => \red[1]_INST_0_i_18_n_0\
    );
\red[1]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_9_11_n_0,
      I1 => RAM_reg_640_703_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_576_639_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_512_575_9_11_n_0,
      O => \red[1]_INST_0_i_19_n_0\
    );
\red[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \red[1]_INST_0_i_8_n_0\,
      I1 => \red[1]_INST_0_i_9_n_0\,
      I2 => P(10),
      I3 => \red[1]_INST_0_i_10_n_0\,
      I4 => P(9),
      I5 => \red[1]_INST_0_i_11_n_0\,
      O => \red[1]_INST_0_i_2_n_0\
    );
\red[1]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_9_11_n_0,
      I1 => RAM_reg_896_959_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_832_895_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_768_831_9_11_n_0,
      O => \red[1]_INST_0_i_20_n_0\
    );
\red[1]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_9_11_n_0,
      I1 => RAM_reg_128_191_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_64_127_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_0_63_9_11_n_0,
      O => \red[1]_INST_0_i_21_n_0\
    );
\red[1]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_9_11_n_0,
      I1 => RAM_reg_384_447_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_320_383_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_256_319_9_11_n_0,
      O => \red[1]_INST_0_i_22_n_0\
    );
\red[1]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3776_3839_9_11_n_0,
      I1 => RAM_reg_3712_3775_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_3648_3711_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_3584_3647_9_11_n_0,
      O => \red[1]_INST_0_i_23_n_0\
    );
\red[1]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4032_4095_9_11_n_0,
      I1 => RAM_reg_3968_4031_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_3904_3967_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_3840_3903_9_11_n_0,
      O => \red[1]_INST_0_i_24_n_0\
    );
\red[1]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3264_3327_9_11_n_0,
      I1 => RAM_reg_3200_3263_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_3136_3199_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_3072_3135_9_11_n_0,
      O => \red[1]_INST_0_i_25_n_0\
    );
\red[1]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3520_3583_9_11_n_0,
      I1 => RAM_reg_3456_3519_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_3392_3455_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_3328_3391_9_11_n_0,
      O => \red[1]_INST_0_i_26_n_0\
    );
\red[1]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2752_2815_9_11_n_0,
      I1 => RAM_reg_2688_2751_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_2624_2687_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_2560_2623_9_11_n_0,
      O => \red[1]_INST_0_i_27_n_0\
    );
\red[1]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3008_3071_9_11_n_0,
      I1 => RAM_reg_2944_3007_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_2880_2943_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_2816_2879_9_11_n_0,
      O => \red[1]_INST_0_i_28_n_0\
    );
\red[1]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2240_2303_9_11_n_0,
      I1 => RAM_reg_2176_2239_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_2112_2175_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_2048_2111_9_11_n_0,
      O => \red[1]_INST_0_i_29_n_0\
    );
\red[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \red[1]_INST_0_i_12_n_0\,
      I1 => P(8),
      I2 => \red[1]_INST_0_i_13_n_0\,
      I3 => P(9),
      I4 => \red[1]_INST_0_i_14_n_0\,
      I5 => P(10),
      O => \red[1]_INST_0_i_3_n_0\
    );
\red[1]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2496_2559_9_11_n_0,
      I1 => RAM_reg_2432_2495_9_11_n_0,
      I2 => P(7),
      I3 => RAM_reg_2368_2431_9_11_n_0,
      I4 => P(6),
      I5 => RAM_reg_2304_2367_9_11_n_0,
      O => \red[1]_INST_0_i_30_n_0\
    );
\red[1]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[1]_INST_0_i_15_n_0\,
      I1 => \red[1]_INST_0_i_16_n_0\,
      O => \red[1]_INST_0_i_4_n_0\,
      S => P(8)
    );
\red[1]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[1]_INST_0_i_17_n_0\,
      I1 => \red[1]_INST_0_i_18_n_0\,
      O => \red[1]_INST_0_i_5_n_0\,
      S => P(8)
    );
\red[1]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[1]_INST_0_i_19_n_0\,
      I1 => \red[1]_INST_0_i_20_n_0\,
      O => \red[1]_INST_0_i_6_n_0\,
      S => P(8)
    );
\red[1]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[1]_INST_0_i_21_n_0\,
      I1 => \red[1]_INST_0_i_22_n_0\,
      O => \red[1]_INST_0_i_7_n_0\,
      S => P(8)
    );
\red[1]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[1]_INST_0_i_23_n_0\,
      I1 => \red[1]_INST_0_i_24_n_0\,
      O => \red[1]_INST_0_i_8_n_0\,
      S => P(8)
    );
\red[1]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[1]_INST_0_i_25_n_0\,
      I1 => \red[1]_INST_0_i_26_n_0\,
      O => \red[1]_INST_0_i_9_n_0\,
      S => P(8)
    );
\red[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \red[2]_INST_0_i_1_n_0\,
      I1 => P(11),
      I2 => \red[2]_INST_0_i_2_n_0\,
      I3 => P(12),
      I4 => \red[2]_INST_0_i_3_n_0\,
      I5 => \current_ver_pos_reg[5]\,
      O => red(2)
    );
\red[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \red[2]_INST_0_i_4_n_0\,
      I1 => \red[2]_INST_0_i_5_n_0\,
      I2 => P(10),
      I3 => \red[2]_INST_0_i_6_n_0\,
      I4 => P(9),
      I5 => \red[2]_INST_0_i_7_n_0\,
      O => \red[2]_INST_0_i_1_n_0\
    );
\red[2]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[2]_INST_0_i_27_n_0\,
      I1 => \red[2]_INST_0_i_28_n_0\,
      O => \red[2]_INST_0_i_10_n_0\,
      S => P(8)
    );
\red[2]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[2]_INST_0_i_29_n_0\,
      I1 => \red[2]_INST_0_i_30_n_0\,
      O => \red[2]_INST_0_i_11_n_0\,
      S => P(8)
    );
\red[2]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4288_4351_9_11_n_1,
      I1 => RAM_reg_4224_4287_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_4160_4223_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_4096_4159_9_11_n_1,
      O => \red[2]_INST_0_i_12_n_0\
    );
\red[2]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4544_4607_9_11_n_1,
      I1 => RAM_reg_4480_4543_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_4416_4479_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_4352_4415_9_11_n_1,
      O => \red[2]_INST_0_i_13_n_0\
    );
\red[2]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => RAM_reg_4608_4671_9_11_n_1,
      I1 => P(6),
      I2 => RAM_reg_4672_4735_9_11_n_1,
      I3 => P(7),
      I4 => RAM_reg_4736_4799_9_11_n_1,
      I5 => P(8),
      O => \red[2]_INST_0_i_14_n_0\
    );
\red[2]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1728_1791_9_11_n_1,
      I1 => RAM_reg_1664_1727_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_1600_1663_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_1536_1599_9_11_n_1,
      O => \red[2]_INST_0_i_15_n_0\
    );
\red[2]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1984_2047_9_11_n_1,
      I1 => RAM_reg_1920_1983_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_1856_1919_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_1792_1855_9_11_n_1,
      O => \red[2]_INST_0_i_16_n_0\
    );
\red[2]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1216_1279_9_11_n_1,
      I1 => RAM_reg_1152_1215_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_1088_1151_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_1024_1087_9_11_n_1,
      O => \red[2]_INST_0_i_17_n_0\
    );
\red[2]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1472_1535_9_11_n_1,
      I1 => RAM_reg_1408_1471_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_1344_1407_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_1280_1343_9_11_n_1,
      O => \red[2]_INST_0_i_18_n_0\
    );
\red[2]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_9_11_n_1,
      I1 => RAM_reg_640_703_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_576_639_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_512_575_9_11_n_1,
      O => \red[2]_INST_0_i_19_n_0\
    );
\red[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \red[2]_INST_0_i_8_n_0\,
      I1 => \red[2]_INST_0_i_9_n_0\,
      I2 => P(10),
      I3 => \red[2]_INST_0_i_10_n_0\,
      I4 => P(9),
      I5 => \red[2]_INST_0_i_11_n_0\,
      O => \red[2]_INST_0_i_2_n_0\
    );
\red[2]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_9_11_n_1,
      I1 => RAM_reg_896_959_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_832_895_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_768_831_9_11_n_1,
      O => \red[2]_INST_0_i_20_n_0\
    );
\red[2]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_9_11_n_1,
      I1 => RAM_reg_128_191_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_64_127_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_0_63_9_11_n_1,
      O => \red[2]_INST_0_i_21_n_0\
    );
\red[2]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_9_11_n_1,
      I1 => RAM_reg_384_447_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_320_383_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_256_319_9_11_n_1,
      O => \red[2]_INST_0_i_22_n_0\
    );
\red[2]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3776_3839_9_11_n_1,
      I1 => RAM_reg_3712_3775_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_3648_3711_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_3584_3647_9_11_n_1,
      O => \red[2]_INST_0_i_23_n_0\
    );
\red[2]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4032_4095_9_11_n_1,
      I1 => RAM_reg_3968_4031_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_3904_3967_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_3840_3903_9_11_n_1,
      O => \red[2]_INST_0_i_24_n_0\
    );
\red[2]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3264_3327_9_11_n_1,
      I1 => RAM_reg_3200_3263_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_3136_3199_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_3072_3135_9_11_n_1,
      O => \red[2]_INST_0_i_25_n_0\
    );
\red[2]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3520_3583_9_11_n_1,
      I1 => RAM_reg_3456_3519_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_3392_3455_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_3328_3391_9_11_n_1,
      O => \red[2]_INST_0_i_26_n_0\
    );
\red[2]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2752_2815_9_11_n_1,
      I1 => RAM_reg_2688_2751_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_2624_2687_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_2560_2623_9_11_n_1,
      O => \red[2]_INST_0_i_27_n_0\
    );
\red[2]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3008_3071_9_11_n_1,
      I1 => RAM_reg_2944_3007_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_2880_2943_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_2816_2879_9_11_n_1,
      O => \red[2]_INST_0_i_28_n_0\
    );
\red[2]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2240_2303_9_11_n_1,
      I1 => RAM_reg_2176_2239_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_2112_2175_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_2048_2111_9_11_n_1,
      O => \red[2]_INST_0_i_29_n_0\
    );
\red[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \red[2]_INST_0_i_12_n_0\,
      I1 => P(8),
      I2 => \red[2]_INST_0_i_13_n_0\,
      I3 => P(9),
      I4 => \red[2]_INST_0_i_14_n_0\,
      I5 => P(10),
      O => \red[2]_INST_0_i_3_n_0\
    );
\red[2]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2496_2559_9_11_n_1,
      I1 => RAM_reg_2432_2495_9_11_n_1,
      I2 => P(7),
      I3 => RAM_reg_2368_2431_9_11_n_1,
      I4 => P(6),
      I5 => RAM_reg_2304_2367_9_11_n_1,
      O => \red[2]_INST_0_i_30_n_0\
    );
\red[2]_INST_0_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[2]_INST_0_i_15_n_0\,
      I1 => \red[2]_INST_0_i_16_n_0\,
      O => \red[2]_INST_0_i_4_n_0\,
      S => P(8)
    );
\red[2]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[2]_INST_0_i_17_n_0\,
      I1 => \red[2]_INST_0_i_18_n_0\,
      O => \red[2]_INST_0_i_5_n_0\,
      S => P(8)
    );
\red[2]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[2]_INST_0_i_19_n_0\,
      I1 => \red[2]_INST_0_i_20_n_0\,
      O => \red[2]_INST_0_i_6_n_0\,
      S => P(8)
    );
\red[2]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[2]_INST_0_i_21_n_0\,
      I1 => \red[2]_INST_0_i_22_n_0\,
      O => \red[2]_INST_0_i_7_n_0\,
      S => P(8)
    );
\red[2]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[2]_INST_0_i_23_n_0\,
      I1 => \red[2]_INST_0_i_24_n_0\,
      O => \red[2]_INST_0_i_8_n_0\,
      S => P(8)
    );
\red[2]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[2]_INST_0_i_25_n_0\,
      I1 => \red[2]_INST_0_i_26_n_0\,
      O => \red[2]_INST_0_i_9_n_0\,
      S => P(8)
    );
\red[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => \red[3]_INST_0_i_1_n_0\,
      I1 => P(11),
      I2 => \red[3]_INST_0_i_2_n_0\,
      I3 => P(12),
      I4 => \red[3]_INST_0_i_3_n_0\,
      I5 => \current_ver_pos_reg[5]\,
      O => red(3)
    );
\red[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \red[3]_INST_0_i_5_n_0\,
      I1 => \red[3]_INST_0_i_6_n_0\,
      I2 => P(10),
      I3 => \red[3]_INST_0_i_7_n_0\,
      I4 => P(9),
      I5 => \red[3]_INST_0_i_8_n_0\,
      O => \red[3]_INST_0_i_1_n_0\
    );
\red[3]_INST_0_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[3]_INST_0_i_28_n_0\,
      I1 => \red[3]_INST_0_i_29_n_0\,
      O => \red[3]_INST_0_i_10_n_0\,
      S => P(8)
    );
\red[3]_INST_0_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[3]_INST_0_i_30_n_0\,
      I1 => \red[3]_INST_0_i_31_n_0\,
      O => \red[3]_INST_0_i_11_n_0\,
      S => P(8)
    );
\red[3]_INST_0_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[3]_INST_0_i_32_n_0\,
      I1 => \red[3]_INST_0_i_33_n_0\,
      O => \red[3]_INST_0_i_12_n_0\,
      S => P(8)
    );
\red[3]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4288_4351_9_11_n_2,
      I1 => RAM_reg_4224_4287_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_4160_4223_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_4096_4159_9_11_n_2,
      O => \red[3]_INST_0_i_13_n_0\
    );
\red[3]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4544_4607_9_11_n_2,
      I1 => RAM_reg_4480_4543_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_4416_4479_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_4352_4415_9_11_n_2,
      O => \red[3]_INST_0_i_14_n_0\
    );
\red[3]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000033E200E2"
    )
        port map (
      I0 => RAM_reg_4608_4671_9_11_n_2,
      I1 => P(6),
      I2 => RAM_reg_4672_4735_9_11_n_2,
      I3 => P(7),
      I4 => RAM_reg_4736_4799_9_11_n_2,
      I5 => P(8),
      O => \red[3]_INST_0_i_15_n_0\
    );
\red[3]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1728_1791_9_11_n_2,
      I1 => RAM_reg_1664_1727_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_1600_1663_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_1536_1599_9_11_n_2,
      O => \red[3]_INST_0_i_18_n_0\
    );
\red[3]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1984_2047_9_11_n_2,
      I1 => RAM_reg_1920_1983_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_1856_1919_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_1792_1855_9_11_n_2,
      O => \red[3]_INST_0_i_19_n_0\
    );
\red[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \red[3]_INST_0_i_9_n_0\,
      I1 => \red[3]_INST_0_i_10_n_0\,
      I2 => P(10),
      I3 => \red[3]_INST_0_i_11_n_0\,
      I4 => P(9),
      I5 => \red[3]_INST_0_i_12_n_0\,
      O => \red[3]_INST_0_i_2_n_0\
    );
\red[3]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1216_1279_9_11_n_2,
      I1 => RAM_reg_1152_1215_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_1088_1151_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_1024_1087_9_11_n_2,
      O => \red[3]_INST_0_i_20_n_0\
    );
\red[3]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_1472_1535_9_11_n_2,
      I1 => RAM_reg_1408_1471_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_1344_1407_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_1280_1343_9_11_n_2,
      O => \red[3]_INST_0_i_21_n_0\
    );
\red[3]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_9_11_n_2,
      I1 => RAM_reg_640_703_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_576_639_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_512_575_9_11_n_2,
      O => \red[3]_INST_0_i_22_n_0\
    );
\red[3]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_9_11_n_2,
      I1 => RAM_reg_896_959_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_832_895_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_768_831_9_11_n_2,
      O => \red[3]_INST_0_i_23_n_0\
    );
\red[3]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_9_11_n_2,
      I1 => RAM_reg_128_191_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_64_127_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_0_63_9_11_n_2,
      O => \red[3]_INST_0_i_24_n_0\
    );
\red[3]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_9_11_n_2,
      I1 => RAM_reg_384_447_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_320_383_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_256_319_9_11_n_2,
      O => \red[3]_INST_0_i_25_n_0\
    );
\red[3]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3776_3839_9_11_n_2,
      I1 => RAM_reg_3712_3775_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_3648_3711_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_3584_3647_9_11_n_2,
      O => \red[3]_INST_0_i_26_n_0\
    );
\red[3]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_4032_4095_9_11_n_2,
      I1 => RAM_reg_3968_4031_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_3904_3967_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_3840_3903_9_11_n_2,
      O => \red[3]_INST_0_i_27_n_0\
    );
\red[3]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3264_3327_9_11_n_2,
      I1 => RAM_reg_3200_3263_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_3136_3199_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_3072_3135_9_11_n_2,
      O => \red[3]_INST_0_i_28_n_0\
    );
\red[3]_INST_0_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3520_3583_9_11_n_2,
      I1 => RAM_reg_3456_3519_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_3392_3455_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_3328_3391_9_11_n_2,
      O => \red[3]_INST_0_i_29_n_0\
    );
\red[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFE200E2"
    )
        port map (
      I0 => \red[3]_INST_0_i_13_n_0\,
      I1 => P(8),
      I2 => \red[3]_INST_0_i_14_n_0\,
      I3 => P(9),
      I4 => \red[3]_INST_0_i_15_n_0\,
      I5 => P(10),
      O => \red[3]_INST_0_i_3_n_0\
    );
\red[3]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2752_2815_9_11_n_2,
      I1 => RAM_reg_2688_2751_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_2624_2687_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_2560_2623_9_11_n_2,
      O => \red[3]_INST_0_i_30_n_0\
    );
\red[3]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_3008_3071_9_11_n_2,
      I1 => RAM_reg_2944_3007_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_2880_2943_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_2816_2879_9_11_n_2,
      O => \red[3]_INST_0_i_31_n_0\
    );
\red[3]_INST_0_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2240_2303_9_11_n_2,
      I1 => RAM_reg_2176_2239_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_2112_2175_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_2048_2111_9_11_n_2,
      O => \red[3]_INST_0_i_32_n_0\
    );
\red[3]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_2496_2559_9_11_n_2,
      I1 => RAM_reg_2432_2495_9_11_n_2,
      I2 => P(7),
      I3 => RAM_reg_2368_2431_9_11_n_2,
      I4 => P(6),
      I5 => RAM_reg_2304_2367_9_11_n_2,
      O => \red[3]_INST_0_i_33_n_0\
    );
\red[3]_INST_0_i_5\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[3]_INST_0_i_18_n_0\,
      I1 => \red[3]_INST_0_i_19_n_0\,
      O => \red[3]_INST_0_i_5_n_0\,
      S => P(8)
    );
\red[3]_INST_0_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[3]_INST_0_i_20_n_0\,
      I1 => \red[3]_INST_0_i_21_n_0\,
      O => \red[3]_INST_0_i_6_n_0\,
      S => P(8)
    );
\red[3]_INST_0_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[3]_INST_0_i_22_n_0\,
      I1 => \red[3]_INST_0_i_23_n_0\,
      O => \red[3]_INST_0_i_7_n_0\,
      S => P(8)
    );
\red[3]_INST_0_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[3]_INST_0_i_24_n_0\,
      I1 => \red[3]_INST_0_i_25_n_0\,
      O => \red[3]_INST_0_i_8_n_0\,
      S => P(8)
    );
\red[3]_INST_0_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \red[3]_INST_0_i_26_n_0\,
      I1 => \red[3]_INST_0_i_27_n_0\,
      O => \red[3]_INST_0_i_9_n_0\,
      S => P(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microSense_top_level_vga_module_0_0_sync_signals_generator is
  port (
    A : out STD_LOGIC_VECTOR ( 5 downto 0 );
    readIndex : out STD_LOGIC;
    C : out STD_LOGIC_VECTOR ( 6 downto 0 );
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    i_zero : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microSense_top_level_vga_module_0_0_sync_signals_generator : entity is "sync_signals_generator";
end microSense_top_level_vga_module_0_0_sync_signals_generator;

architecture STRUCTURE of microSense_top_level_vga_module_0_0_sync_signals_generator is
  signal \current_hor_pos[0]_i_1_n_0\ : STD_LOGIC;
  signal \current_hor_pos[1]_i_1_n_0\ : STD_LOGIC;
  signal \current_hor_pos[2]_i_1_n_0\ : STD_LOGIC;
  signal \current_hor_pos[3]_i_1_n_0\ : STD_LOGIC;
  signal \current_hor_pos[4]_i_1_n_0\ : STD_LOGIC;
  signal \current_hor_pos[5]_i_1_n_0\ : STD_LOGIC;
  signal \current_hor_pos[6]_i_1_n_0\ : STD_LOGIC;
  signal \current_hor_pos[7]_i_1_n_0\ : STD_LOGIC;
  signal \current_hor_pos[8]_i_1_n_0\ : STD_LOGIC;
  signal \current_hor_pos[9]_i_1_n_0\ : STD_LOGIC;
  signal \current_hor_pos[9]_i_2_n_0\ : STD_LOGIC;
  signal \current_hor_pos_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \current_ver_pos[9]_i_1_n_0\ : STD_LOGIC;
  signal \current_ver_pos[9]_i_3_n_0\ : STD_LOGIC;
  signal \current_ver_pos[9]_i_4_n_0\ : STD_LOGIC;
  signal \current_ver_pos_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^readindex\ : STD_LOGIC;
  signal readIndex_i_14_n_0 : STD_LOGIC;
  signal \red[3]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \red[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal vsync_INST_0_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \current_hor_pos[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \current_hor_pos[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \current_hor_pos[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_hor_pos[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \current_hor_pos[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_hor_pos[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \current_ver_pos[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \current_ver_pos[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_ver_pos[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \current_ver_pos[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \current_ver_pos[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \current_ver_pos[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \current_ver_pos[9]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of vsync_INST_0 : label is "soft_lutpair5";
begin
  readIndex <= \^readindex\;
\current_hor_pos[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_ver_pos[9]_i_1_n_0\,
      I1 => \current_hor_pos_reg__0\(0),
      O => \current_hor_pos[0]_i_1_n_0\
    );
\current_hor_pos[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \current_ver_pos[9]_i_1_n_0\,
      I1 => \current_hor_pos_reg__0\(0),
      I2 => \current_hor_pos_reg__0\(1),
      O => \current_hor_pos[1]_i_1_n_0\
    );
\current_hor_pos[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \current_ver_pos[9]_i_1_n_0\,
      I1 => \current_hor_pos_reg__0\(1),
      I2 => \current_hor_pos_reg__0\(0),
      I3 => \current_hor_pos_reg__0\(2),
      O => \current_hor_pos[2]_i_1_n_0\
    );
\current_hor_pos[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \current_ver_pos[9]_i_1_n_0\,
      I1 => \current_hor_pos_reg__0\(0),
      I2 => \current_hor_pos_reg__0\(1),
      I3 => \current_hor_pos_reg__0\(2),
      I4 => \current_hor_pos_reg__0\(3),
      O => \current_hor_pos[3]_i_1_n_0\
    );
\current_hor_pos[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \current_ver_pos[9]_i_1_n_0\,
      I1 => \current_hor_pos_reg__0\(2),
      I2 => \current_hor_pos_reg__0\(1),
      I3 => \current_hor_pos_reg__0\(0),
      I4 => \current_hor_pos_reg__0\(3),
      I5 => \current_hor_pos_reg__0\(4),
      O => \current_hor_pos[4]_i_1_n_0\
    );
\current_hor_pos[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0770"
    )
        port map (
      I0 => \current_hor_pos_reg__0\(8),
      I1 => \current_hor_pos_reg__0\(9),
      I2 => \current_hor_pos_reg__0\(5),
      I3 => \current_hor_pos[9]_i_2_n_0\,
      O => \current_hor_pos[5]_i_1_n_0\
    );
\current_hor_pos[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07777000"
    )
        port map (
      I0 => \current_hor_pos_reg__0\(8),
      I1 => \current_hor_pos_reg__0\(9),
      I2 => \current_hor_pos_reg__0\(5),
      I3 => \current_hor_pos[9]_i_2_n_0\,
      I4 => \current_hor_pos_reg__0\(6),
      O => \current_hor_pos[6]_i_1_n_0\
    );
\current_hor_pos[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0777777770000000"
    )
        port map (
      I0 => \current_hor_pos_reg__0\(8),
      I1 => \current_hor_pos_reg__0\(9),
      I2 => \current_hor_pos[9]_i_2_n_0\,
      I3 => \current_hor_pos_reg__0\(6),
      I4 => \current_hor_pos_reg__0\(5),
      I5 => \current_hor_pos_reg__0\(7),
      O => \current_hor_pos[7]_i_1_n_0\
    );
\current_hor_pos[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15555557C0000000"
    )
        port map (
      I0 => \current_hor_pos_reg__0\(9),
      I1 => \current_hor_pos_reg__0\(7),
      I2 => \current_hor_pos_reg__0\(5),
      I3 => \current_hor_pos_reg__0\(6),
      I4 => \current_hor_pos[9]_i_2_n_0\,
      I5 => \current_hor_pos_reg__0\(8),
      O => \current_hor_pos[8]_i_1_n_0\
    );
\current_hor_pos[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF80000000"
    )
        port map (
      I0 => \current_hor_pos[9]_i_2_n_0\,
      I1 => \current_hor_pos_reg__0\(6),
      I2 => \current_hor_pos_reg__0\(5),
      I3 => \current_hor_pos_reg__0\(7),
      I4 => \current_hor_pos_reg__0\(8),
      I5 => \current_hor_pos_reg__0\(9),
      O => \current_hor_pos[9]_i_1_n_0\
    );
\current_hor_pos[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \current_hor_pos_reg__0\(4),
      I1 => \current_hor_pos_reg__0\(3),
      I2 => \current_hor_pos_reg__0\(0),
      I3 => \current_hor_pos_reg__0\(1),
      I4 => \current_hor_pos_reg__0\(2),
      O => \current_hor_pos[9]_i_2_n_0\
    );
\current_hor_pos_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => '1',
      D => \current_hor_pos[0]_i_1_n_0\,
      Q => \current_hor_pos_reg__0\(0),
      R => '0'
    );
\current_hor_pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => '1',
      D => \current_hor_pos[1]_i_1_n_0\,
      Q => \current_hor_pos_reg__0\(1),
      R => '0'
    );
\current_hor_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => '1',
      D => \current_hor_pos[2]_i_1_n_0\,
      Q => \current_hor_pos_reg__0\(2),
      R => '0'
    );
\current_hor_pos_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => '1',
      D => \current_hor_pos[3]_i_1_n_0\,
      Q => \current_hor_pos_reg__0\(3),
      R => '0'
    );
\current_hor_pos_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => '1',
      D => \current_hor_pos[4]_i_1_n_0\,
      Q => \current_hor_pos_reg__0\(4),
      R => '0'
    );
\current_hor_pos_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => '1',
      D => \current_hor_pos[5]_i_1_n_0\,
      Q => \current_hor_pos_reg__0\(5),
      R => '0'
    );
\current_hor_pos_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => '1',
      D => \current_hor_pos[6]_i_1_n_0\,
      Q => \current_hor_pos_reg__0\(6),
      R => '0'
    );
\current_hor_pos_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => '1',
      D => \current_hor_pos[7]_i_1_n_0\,
      Q => \current_hor_pos_reg__0\(7),
      R => '0'
    );
\current_hor_pos_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => '1',
      D => \current_hor_pos[8]_i_1_n_0\,
      Q => \current_hor_pos_reg__0\(8),
      R => '0'
    );
\current_hor_pos_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => '1',
      D => \current_hor_pos[9]_i_1_n_0\,
      Q => \current_hor_pos_reg__0\(9),
      R => '0'
    );
\current_ver_pos[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \current_ver_pos[9]_i_3_n_0\,
      I1 => \current_ver_pos_reg__0\(0),
      O => p_0_in(0)
    );
\current_ver_pos[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \current_ver_pos[9]_i_3_n_0\,
      I1 => \current_ver_pos_reg__0\(0),
      I2 => \current_ver_pos_reg__0\(1),
      O => p_0_in(1)
    );
\current_ver_pos[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \current_ver_pos[9]_i_3_n_0\,
      I1 => \current_ver_pos_reg__0\(1),
      I2 => \current_ver_pos_reg__0\(0),
      I3 => \current_ver_pos_reg__0\(2),
      O => p_0_in(2)
    );
\current_ver_pos[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \current_ver_pos[9]_i_3_n_0\,
      I1 => \current_ver_pos_reg__0\(0),
      I2 => \current_ver_pos_reg__0\(1),
      I3 => \current_ver_pos_reg__0\(2),
      I4 => \current_ver_pos_reg__0\(3),
      O => p_0_in(3)
    );
\current_ver_pos[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \current_ver_pos[9]_i_3_n_0\,
      I1 => \current_ver_pos_reg__0\(2),
      I2 => \current_ver_pos_reg__0\(1),
      I3 => \current_ver_pos_reg__0\(0),
      I4 => \current_ver_pos_reg__0\(3),
      I5 => \current_ver_pos_reg__0\(4),
      O => p_0_in(4)
    );
\current_ver_pos[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \current_ver_pos[9]_i_3_n_0\,
      I1 => \red[3]_INST_0_i_17_n_0\,
      I2 => \current_ver_pos_reg__0\(5),
      O => p_0_in(5)
    );
\current_ver_pos[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A20"
    )
        port map (
      I0 => \current_ver_pos[9]_i_3_n_0\,
      I1 => \red[3]_INST_0_i_17_n_0\,
      I2 => \current_ver_pos_reg__0\(5),
      I3 => \current_ver_pos_reg__0\(6),
      O => p_0_in(6)
    );
\current_ver_pos[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A2AA0800"
    )
        port map (
      I0 => \current_ver_pos[9]_i_3_n_0\,
      I1 => \current_ver_pos_reg__0\(5),
      I2 => \red[3]_INST_0_i_17_n_0\,
      I3 => \current_ver_pos_reg__0\(6),
      I4 => \current_ver_pos_reg__0\(7),
      O => p_0_in(7)
    );
\current_ver_pos[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAAAA00800000"
    )
        port map (
      I0 => \current_ver_pos[9]_i_3_n_0\,
      I1 => \current_ver_pos_reg__0\(7),
      I2 => \current_ver_pos_reg__0\(6),
      I3 => \red[3]_INST_0_i_17_n_0\,
      I4 => \current_ver_pos_reg__0\(5),
      I5 => \current_ver_pos_reg__0\(8),
      O => p_0_in(8)
    );
\current_ver_pos[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => \current_hor_pos_reg__0\(9),
      I1 => \current_hor_pos_reg__0\(8),
      I2 => \current_hor_pos_reg__0\(6),
      I3 => \current_hor_pos_reg__0\(7),
      I4 => \current_hor_pos_reg__0\(5),
      I5 => \current_hor_pos[9]_i_2_n_0\,
      O => \current_ver_pos[9]_i_1_n_0\
    );
\current_ver_pos[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA20000000"
    )
        port map (
      I0 => \current_ver_pos[9]_i_3_n_0\,
      I1 => \current_ver_pos[9]_i_4_n_0\,
      I2 => \current_ver_pos_reg__0\(6),
      I3 => \current_ver_pos_reg__0\(7),
      I4 => \current_ver_pos_reg__0\(8),
      I5 => \current_ver_pos_reg__0\(9),
      O => p_0_in(9)
    );
\current_ver_pos[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vsync_INST_0_i_1_n_0,
      I1 => \current_ver_pos_reg__0\(9),
      O => \current_ver_pos[9]_i_3_n_0\
    );
\current_ver_pos[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \current_ver_pos_reg__0\(4),
      I1 => \current_ver_pos_reg__0\(2),
      I2 => \current_ver_pos_reg__0\(1),
      I3 => \current_ver_pos_reg__0\(0),
      I4 => \current_ver_pos_reg__0\(3),
      I5 => \current_ver_pos_reg__0\(5),
      O => \current_ver_pos[9]_i_4_n_0\
    );
\current_ver_pos_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => \current_ver_pos[9]_i_1_n_0\,
      D => p_0_in(0),
      Q => \current_ver_pos_reg__0\(0),
      R => '0'
    );
\current_ver_pos_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => \current_ver_pos[9]_i_1_n_0\,
      D => p_0_in(1),
      Q => \current_ver_pos_reg__0\(1),
      R => '0'
    );
\current_ver_pos_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => \current_ver_pos[9]_i_1_n_0\,
      D => p_0_in(2),
      Q => \current_ver_pos_reg__0\(2),
      R => '0'
    );
\current_ver_pos_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => \current_ver_pos[9]_i_1_n_0\,
      D => p_0_in(3),
      Q => \current_ver_pos_reg__0\(3),
      R => '0'
    );
\current_ver_pos_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => \current_ver_pos[9]_i_1_n_0\,
      D => p_0_in(4),
      Q => \current_ver_pos_reg__0\(4),
      R => '0'
    );
\current_ver_pos_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => \current_ver_pos[9]_i_1_n_0\,
      D => p_0_in(5),
      Q => \current_ver_pos_reg__0\(5),
      R => '0'
    );
\current_ver_pos_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => \current_ver_pos[9]_i_1_n_0\,
      D => p_0_in(6),
      Q => \current_ver_pos_reg__0\(6),
      R => '0'
    );
\current_ver_pos_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => \current_ver_pos[9]_i_1_n_0\,
      D => p_0_in(7),
      Q => \current_ver_pos_reg__0\(7),
      R => '0'
    );
\current_ver_pos_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => \current_ver_pos[9]_i_1_n_0\,
      D => p_0_in(8),
      Q => \current_ver_pos_reg__0\(8),
      R => '0'
    );
\current_ver_pos_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_zero,
      CE => \current_ver_pos[9]_i_1_n_0\,
      D => p_0_in(9),
      Q => \current_ver_pos_reg__0\(9),
      R => '0'
    );
hsync_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => \current_hor_pos_reg__0\(6),
      I1 => \current_hor_pos_reg__0\(5),
      I2 => \current_hor_pos_reg__0\(7),
      I3 => \current_hor_pos_reg__0\(9),
      I4 => \current_hor_pos_reg__0\(8),
      O => hsync
    );
readIndex_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5155554500000000"
    )
        port map (
      I0 => \red[3]_INST_0_i_16_n_0\,
      I1 => \current_ver_pos_reg__0\(5),
      I2 => \red[3]_INST_0_i_17_n_0\,
      I3 => \current_ver_pos_reg__0\(6),
      I4 => \current_ver_pos_reg__0\(7),
      I5 => \current_ver_pos_reg__0\(8),
      O => A(5)
    );
readIndex_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5401"
    )
        port map (
      I0 => \^readindex\,
      I1 => \current_hor_pos_reg__0\(4),
      I2 => \current_hor_pos_reg__0\(5),
      I3 => \current_hor_pos_reg__0\(6),
      O => C(3)
    );
readIndex_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \^readindex\,
      I1 => \current_hor_pos_reg__0\(5),
      I2 => \current_hor_pos_reg__0\(4),
      O => C(2)
    );
readIndex_i_12: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \current_hor_pos_reg__0\(4),
      I1 => \^readindex\,
      O => C(1)
    );
readIndex_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \current_hor_pos_reg__0\(3),
      I1 => \^readindex\,
      O => C(0)
    );
readIndex_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \current_hor_pos_reg__0\(4),
      I1 => \current_hor_pos_reg__0\(5),
      O => readIndex_i_14_n_0
    );
readIndex_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FB04"
    )
        port map (
      I0 => \current_ver_pos_reg__0\(6),
      I1 => \red[3]_INST_0_i_17_n_0\,
      I2 => \current_ver_pos_reg__0\(5),
      I3 => \current_ver_pos_reg__0\(7),
      I4 => \^readindex\,
      O => A(4)
    );
readIndex_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4510"
    )
        port map (
      I0 => \^readindex\,
      I1 => \current_ver_pos_reg__0\(5),
      I2 => \red[3]_INST_0_i_17_n_0\,
      I3 => \current_ver_pos_reg__0\(6),
      O => A(3)
    );
readIndex_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \red[3]_INST_0_i_17_n_0\,
      I1 => \current_ver_pos_reg__0\(5),
      I2 => \^readindex\,
      O => A(2)
    );
readIndex_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \current_ver_pos_reg__0\(2),
      I1 => \current_ver_pos_reg__0\(1),
      I2 => \current_ver_pos_reg__0\(0),
      I3 => \current_ver_pos_reg__0\(3),
      I4 => \current_ver_pos_reg__0\(4),
      I5 => \^readindex\,
      O => A(1)
    );
readIndex_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \current_ver_pos_reg__0\(0),
      I1 => \current_ver_pos_reg__0\(1),
      I2 => \current_ver_pos_reg__0\(2),
      I3 => \current_ver_pos_reg__0\(3),
      I4 => \^readindex\,
      O => A(0)
    );
readIndex_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554444400011111"
    )
        port map (
      I0 => \^readindex\,
      I1 => \current_hor_pos_reg__0\(8),
      I2 => \current_hor_pos_reg__0\(6),
      I3 => readIndex_i_14_n_0,
      I4 => \current_hor_pos_reg__0\(7),
      I5 => \current_hor_pos_reg__0\(9),
      O => C(6)
    );
readIndex_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444011111115"
    )
        port map (
      I0 => \^readindex\,
      I1 => \current_hor_pos_reg__0\(7),
      I2 => \current_hor_pos_reg__0\(4),
      I3 => \current_hor_pos_reg__0\(5),
      I4 => \current_hor_pos_reg__0\(6),
      I5 => \current_hor_pos_reg__0\(8),
      O => C(5)
    );
readIndex_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00015554"
    )
        port map (
      I0 => \^readindex\,
      I1 => \current_hor_pos_reg__0\(6),
      I2 => \current_hor_pos_reg__0\(5),
      I3 => \current_hor_pos_reg__0\(4),
      I4 => \current_hor_pos_reg__0\(7),
      O => C(4)
    );
\red[3]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEBEBEBEBAB"
    )
        port map (
      I0 => \current_ver_pos_reg__0\(9),
      I1 => \current_hor_pos_reg__0\(9),
      I2 => \current_hor_pos_reg__0\(8),
      I3 => readIndex_i_14_n_0,
      I4 => \current_hor_pos_reg__0\(6),
      I5 => \current_hor_pos_reg__0\(7),
      O => \red[3]_INST_0_i_16_n_0\
    );
\red[3]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \current_ver_pos_reg__0\(3),
      I1 => \current_ver_pos_reg__0\(0),
      I2 => \current_ver_pos_reg__0\(1),
      I3 => \current_ver_pos_reg__0\(2),
      I4 => \current_ver_pos_reg__0\(4),
      O => \red[3]_INST_0_i_17_n_0\
    );
\red[3]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAAAAAAAAAABA"
    )
        port map (
      I0 => \red[3]_INST_0_i_16_n_0\,
      I1 => \current_ver_pos_reg__0\(5),
      I2 => \red[3]_INST_0_i_17_n_0\,
      I3 => \current_ver_pos_reg__0\(6),
      I4 => \current_ver_pos_reg__0\(7),
      I5 => \current_ver_pos_reg__0\(8),
      O => \^readindex\
    );
vsync_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => vsync_INST_0_i_1_n_0,
      I1 => \current_ver_pos_reg__0\(1),
      I2 => \current_ver_pos_reg__0\(2),
      I3 => \current_ver_pos_reg__0\(9),
      O => vsync
    );
vsync_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \current_ver_pos_reg__0\(8),
      I1 => \current_ver_pos_reg__0\(7),
      I2 => \current_ver_pos_reg__0\(5),
      I3 => \current_ver_pos_reg__0\(6),
      I4 => \current_ver_pos_reg__0\(4),
      I5 => \current_ver_pos_reg__0\(3),
      O => vsync_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microSense_top_level_vga_module_0_0_clock_divider is
  port (
    i_zero : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microSense_top_level_vga_module_0_0_clock_divider : entity is "clock_divider";
end microSense_top_level_vga_module_0_0_clock_divider;

architecture STRUCTURE of microSense_top_level_vga_module_0_0_clock_divider is
begin
megaHzClock_25MHz: entity work.microSense_top_level_vga_module_0_0_downcounter
     port map (
      clk => clk,
      i_zero => i_zero
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microSense_top_level_vga_module_0_0_vga_module is
  port (
    red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    clk : in STD_LOGIC;
    pixel : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    we : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of microSense_top_level_vga_module_0_0_vga_module : entity is "vga_module";
end microSense_top_level_vga_module_0_0_vga_module;

architecture STRUCTURE of microSense_top_level_vga_module_0_0_vga_module is
  signal VGA_SYNC_n_6 : STD_LOGIC;
  signal a_r : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal i_zero : STD_LOGIC;
  signal scan_line_x : STD_LOGIC_VECTOR ( 9 downto 3 );
  signal scan_line_y : STD_LOGIC_VECTOR ( 8 downto 3 );
  signal NLW_readIndex_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_readIndex_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_readIndex_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_readIndex_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_readIndex_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_readIndex_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_readIndex_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_readIndex_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_readIndex_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_readIndex_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 13 );
  signal NLW_readIndex_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of readIndex : label is "{SYNTH-13 {cell *THIS*}}";
begin
DIVIDER: entity work.microSense_top_level_vga_module_0_0_clock_divider
     port map (
      clk => clk,
      i_zero => i_zero
    );
FRAMEBUFFER: entity work.\microSense_top_level_vga_module_0_0_ram__4\
     port map (
      P(12 downto 0) => a_r(12 downto 0),
      addr(12 downto 0) => addr(12 downto 0),
      blue(3 downto 0) => blue(3 downto 0),
      clk => clk,
      \current_ver_pos_reg[5]\ => VGA_SYNC_n_6,
      green(3 downto 0) => green(3 downto 0),
      pixel(11 downto 0) => pixel(11 downto 0),
      red(3 downto 0) => red(3 downto 0),
      we => we
    );
VGA_SYNC: entity work.microSense_top_level_vga_module_0_0_sync_signals_generator
     port map (
      A(5 downto 0) => scan_line_y(8 downto 3),
      C(6 downto 0) => scan_line_x(9 downto 3),
      hsync => hsync,
      i_zero => i_zero,
      readIndex => VGA_SYNC_n_6,
      vsync => vsync
    );
readIndex: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 6) => B"000000000000000000000000",
      A(5 downto 0) => scan_line_y(8 downto 3),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_readIndex_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000001010000",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_readIndex_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 7) => B"00000000000000000000000000000000000000000",
      C(6 downto 0) => scan_line_x(9 downto 3),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_readIndex_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_readIndex_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_readIndex_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_readIndex_OVERFLOW_UNCONNECTED,
      P(47 downto 13) => NLW_readIndex_P_UNCONNECTED(47 downto 13),
      P(12 downto 0) => a_r(12 downto 0),
      PATTERNBDETECT => NLW_readIndex_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_readIndex_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_readIndex_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_readIndex_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microSense_top_level_vga_module_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of microSense_top_level_vga_module_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of microSense_top_level_vga_module_0_0 : entity is "microSense_top_level_vga_module_0_0,vga_module,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of microSense_top_level_vga_module_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of microSense_top_level_vga_module_0_0 : entity is "vga_module,Vivado 2017.3";
end microSense_top_level_vga_module_0_0;

architecture STRUCTURE of microSense_top_level_vga_module_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN microSense_top_level_sys_clock";
begin
U0: entity work.microSense_top_level_vga_module_0_0_vga_module
     port map (
      addr(12 downto 0) => addr(12 downto 0),
      blue(3 downto 0) => blue(3 downto 0),
      clk => clk,
      green(3 downto 0) => green(3 downto 0),
      hsync => hsync,
      pixel(11 downto 0) => pixel(11 downto 0),
      red(3 downto 0) => red(3 downto 0),
      vsync => vsync,
      we => we
    );
end STRUCTURE;
