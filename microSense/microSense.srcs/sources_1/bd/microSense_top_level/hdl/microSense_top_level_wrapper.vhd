--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
--Date        : Fri Dec  8 12:31:15 2017
--Host        : DESKTOP-N854F8E running 64-bit major release  (build 9200)
--Command     : generate_target microSense_top_level_wrapper.bd
--Design      : microSense_top_level_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microSense_top_level_wrapper is
  port (
    SAR_in : in STD_LOGIC;
    SAR_out : out STD_LOGIC;
    blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hsync : out STD_LOGIC;
    red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    vsync : out STD_LOGIC
  );
end microSense_top_level_wrapper;

architecture STRUCTURE of microSense_top_level_wrapper is
  component microSense_top_level is
  port (
    usb_uart_rxd : in STD_LOGIC;
    usb_uart_txd : out STD_LOGIC;
    reset : in STD_LOGIC;
    red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    hsync : out STD_LOGIC;
    vsync : out STD_LOGIC;
    sys_clock : in STD_LOGIC;
    SAR_in : in STD_LOGIC;
    SAR_out : out STD_LOGIC
  );
  end component microSense_top_level;
begin
microSense_top_level_i: component microSense_top_level
     port map (
      SAR_in => SAR_in,
      SAR_out => SAR_out,
      blue(3 downto 0) => blue(3 downto 0),
      green(3 downto 0) => green(3 downto 0),
      hsync => hsync,
      red(3 downto 0) => red(3 downto 0),
      reset => reset,
      sys_clock => sys_clock,
      usb_uart_rxd => usb_uart_rxd,
      usb_uart_txd => usb_uart_txd,
      vsync => vsync
    );
end STRUCTURE;
