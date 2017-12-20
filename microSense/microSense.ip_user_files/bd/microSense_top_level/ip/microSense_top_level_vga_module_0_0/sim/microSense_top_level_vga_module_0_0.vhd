-- (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:vga_module:1.0
-- IP Revision: 3

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY microSense_top_level_vga_module_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    addr : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
    pixel : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
    we : IN STD_LOGIC;
    red : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    green : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    blue : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    hsync : OUT STD_LOGIC;
    vsync : OUT STD_LOGIC
  );
END microSense_top_level_vga_module_0_0;

ARCHITECTURE microSense_top_level_vga_module_0_0_arch OF microSense_top_level_vga_module_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF microSense_top_level_vga_module_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT vga_module IS
    GENERIC (
      pseudo_width : INTEGER;
      pseudo_height : INTEGER;
      pow_two_Pixel_size : INTEGER;
      addr_size : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      addr : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
      pixel : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
      we : IN STD_LOGIC;
      red : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      green : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      blue : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      hsync : OUT STD_LOGIC;
      vsync : OUT STD_LOGIC
    );
  END COMPONENT vga_module;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN microSense_top_level_sys_clock";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : vga_module
    GENERIC MAP (
      pseudo_width => 80,
      pseudo_height => 60,
      pow_two_Pixel_size => 3,
      addr_size => 20
    )
    PORT MAP (
      clk => clk,
      addr => addr,
      pixel => pixel,
      we => we,
      red => red,
      green => green,
      blue => blue,
      hsync => hsync,
      vsync => vsync
    );
END microSense_top_level_vga_module_0_0_arch;
