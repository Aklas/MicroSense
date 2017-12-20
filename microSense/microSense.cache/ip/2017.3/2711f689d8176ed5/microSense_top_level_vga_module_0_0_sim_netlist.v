// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Dec  8 10:27:20 2017
// Host        : DESKTOP-N854F8E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ microSense_top_level_vga_module_0_0_sim_netlist.v
// Design      : microSense_top_level_vga_module_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider
   (i_zero,
    clk);
  output i_zero;
  input clk;

  wire clk;
  wire i_zero;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downcounter megaHzClock_25MHz
       (.clk(clk),
        .i_zero(i_zero));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downcounter
   (i_zero,
    clk);
  output i_zero;
  input clk;

  wire clk;
  wire \current_count[0]_i_1_n_0 ;
  wire \current_count[1]_i_1_n_0 ;
  wire \current_count_reg_n_0_[0] ;
  wire \current_count_reg_n_0_[1] ;
  wire eqOp;
  wire i_zero;

  LUT1 #(
    .INIT(2'h1)) 
    \current_count[0]_i_1 
       (.I0(\current_count_reg_n_0_[0] ),
        .O(\current_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \current_count[1]_i_1 
       (.I0(\current_count_reg_n_0_[1] ),
        .I1(\current_count_reg_n_0_[0] ),
        .O(\current_count[1]_i_1_n_0 ));
  FDRE \current_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_count[0]_i_1_n_0 ),
        .Q(\current_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \current_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_count[1]_i_1_n_0 ),
        .Q(\current_count_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    i_zero_i_1
       (.I0(\current_count_reg_n_0_[1] ),
        .I1(\current_count_reg_n_0_[0] ),
        .O(eqOp));
  FDRE i_zero_reg
       (.C(clk),
        .CE(1'b1),
        .D(eqOp),
        .Q(i_zero),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "microSense_top_level_vga_module_0_0,vga_module,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "vga_module,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    addr,
    pixel,
    we,
    red,
    green,
    blue,
    hsync,
    vsync);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN microSense_top_level_sys_clock" *) input clk;
  input [19:0]addr;
  input [11:0]pixel;
  input we;
  output [3:0]red;
  output [3:0]green;
  output [3:0]blue;
  output hsync;
  output vsync;

  wire [19:0]addr;
  wire [3:0]blue;
  wire clk;
  wire [3:0]green;
  wire hsync;
  wire [11:0]pixel;
  wire [3:0]red;
  wire vsync;
  wire we;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_module U0
       (.addr(addr[12:0]),
        .blue(blue),
        .clk(clk),
        .green(green),
        .hsync(hsync),
        .pixel(pixel),
        .red(red),
        .vsync(vsync),
        .we(we));
endmodule

(* ORIG_REF_NAME = "ram" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ram__4
   (red,
    green,
    blue,
    P,
    \current_ver_pos_reg[5] ,
    clk,
    pixel,
    addr,
    we);
  output [3:0]red;
  output [3:0]green;
  output [3:0]blue;
  input [12:0]P;
  input \current_ver_pos_reg[5] ;
  input clk;
  input [11:0]pixel;
  input [12:0]addr;
  input we;

  wire [12:0]P;
  wire RAM_reg_0_63_0_2_i_1_n_0;
  wire RAM_reg_0_63_0_2_i_2_n_0;
  wire RAM_reg_0_63_0_2_n_0;
  wire RAM_reg_0_63_0_2_n_1;
  wire RAM_reg_0_63_0_2_n_2;
  wire RAM_reg_0_63_3_5_n_0;
  wire RAM_reg_0_63_3_5_n_1;
  wire RAM_reg_0_63_3_5_n_2;
  wire RAM_reg_0_63_6_8_n_0;
  wire RAM_reg_0_63_6_8_n_1;
  wire RAM_reg_0_63_6_8_n_2;
  wire RAM_reg_0_63_9_11_n_0;
  wire RAM_reg_0_63_9_11_n_1;
  wire RAM_reg_0_63_9_11_n_2;
  wire RAM_reg_1024_1087_0_2_i_1_n_0;
  wire RAM_reg_1024_1087_0_2_i_2_n_0;
  wire RAM_reg_1024_1087_0_2_n_0;
  wire RAM_reg_1024_1087_0_2_n_1;
  wire RAM_reg_1024_1087_0_2_n_2;
  wire RAM_reg_1024_1087_3_5_n_0;
  wire RAM_reg_1024_1087_3_5_n_1;
  wire RAM_reg_1024_1087_3_5_n_2;
  wire RAM_reg_1024_1087_6_8_n_0;
  wire RAM_reg_1024_1087_6_8_n_1;
  wire RAM_reg_1024_1087_6_8_n_2;
  wire RAM_reg_1024_1087_9_11_n_0;
  wire RAM_reg_1024_1087_9_11_n_1;
  wire RAM_reg_1024_1087_9_11_n_2;
  wire RAM_reg_1088_1151_0_2_i_1_n_0;
  wire RAM_reg_1088_1151_0_2_n_0;
  wire RAM_reg_1088_1151_0_2_n_1;
  wire RAM_reg_1088_1151_0_2_n_2;
  wire RAM_reg_1088_1151_3_5_n_0;
  wire RAM_reg_1088_1151_3_5_n_1;
  wire RAM_reg_1088_1151_3_5_n_2;
  wire RAM_reg_1088_1151_6_8_n_0;
  wire RAM_reg_1088_1151_6_8_n_1;
  wire RAM_reg_1088_1151_6_8_n_2;
  wire RAM_reg_1088_1151_9_11_n_0;
  wire RAM_reg_1088_1151_9_11_n_1;
  wire RAM_reg_1088_1151_9_11_n_2;
  wire RAM_reg_1152_1215_0_2_i_1_n_0;
  wire RAM_reg_1152_1215_0_2_n_0;
  wire RAM_reg_1152_1215_0_2_n_1;
  wire RAM_reg_1152_1215_0_2_n_2;
  wire RAM_reg_1152_1215_3_5_n_0;
  wire RAM_reg_1152_1215_3_5_n_1;
  wire RAM_reg_1152_1215_3_5_n_2;
  wire RAM_reg_1152_1215_6_8_n_0;
  wire RAM_reg_1152_1215_6_8_n_1;
  wire RAM_reg_1152_1215_6_8_n_2;
  wire RAM_reg_1152_1215_9_11_n_0;
  wire RAM_reg_1152_1215_9_11_n_1;
  wire RAM_reg_1152_1215_9_11_n_2;
  wire RAM_reg_1216_1279_0_2_i_1_n_0;
  wire RAM_reg_1216_1279_0_2_n_0;
  wire RAM_reg_1216_1279_0_2_n_1;
  wire RAM_reg_1216_1279_0_2_n_2;
  wire RAM_reg_1216_1279_3_5_n_0;
  wire RAM_reg_1216_1279_3_5_n_1;
  wire RAM_reg_1216_1279_3_5_n_2;
  wire RAM_reg_1216_1279_6_8_n_0;
  wire RAM_reg_1216_1279_6_8_n_1;
  wire RAM_reg_1216_1279_6_8_n_2;
  wire RAM_reg_1216_1279_9_11_n_0;
  wire RAM_reg_1216_1279_9_11_n_1;
  wire RAM_reg_1216_1279_9_11_n_2;
  wire RAM_reg_1280_1343_0_2_i_1_n_0;
  wire RAM_reg_1280_1343_0_2_i_2_n_0;
  wire RAM_reg_1280_1343_0_2_n_0;
  wire RAM_reg_1280_1343_0_2_n_1;
  wire RAM_reg_1280_1343_0_2_n_2;
  wire RAM_reg_1280_1343_3_5_n_0;
  wire RAM_reg_1280_1343_3_5_n_1;
  wire RAM_reg_1280_1343_3_5_n_2;
  wire RAM_reg_1280_1343_6_8_n_0;
  wire RAM_reg_1280_1343_6_8_n_1;
  wire RAM_reg_1280_1343_6_8_n_2;
  wire RAM_reg_1280_1343_9_11_n_0;
  wire RAM_reg_1280_1343_9_11_n_1;
  wire RAM_reg_1280_1343_9_11_n_2;
  wire RAM_reg_128_191_0_2_i_1_n_0;
  wire RAM_reg_128_191_0_2_n_0;
  wire RAM_reg_128_191_0_2_n_1;
  wire RAM_reg_128_191_0_2_n_2;
  wire RAM_reg_128_191_3_5_n_0;
  wire RAM_reg_128_191_3_5_n_1;
  wire RAM_reg_128_191_3_5_n_2;
  wire RAM_reg_128_191_6_8_n_0;
  wire RAM_reg_128_191_6_8_n_1;
  wire RAM_reg_128_191_6_8_n_2;
  wire RAM_reg_128_191_9_11_n_0;
  wire RAM_reg_128_191_9_11_n_1;
  wire RAM_reg_128_191_9_11_n_2;
  wire RAM_reg_1344_1407_0_2_i_1_n_0;
  wire RAM_reg_1344_1407_0_2_n_0;
  wire RAM_reg_1344_1407_0_2_n_1;
  wire RAM_reg_1344_1407_0_2_n_2;
  wire RAM_reg_1344_1407_3_5_n_0;
  wire RAM_reg_1344_1407_3_5_n_1;
  wire RAM_reg_1344_1407_3_5_n_2;
  wire RAM_reg_1344_1407_6_8_n_0;
  wire RAM_reg_1344_1407_6_8_n_1;
  wire RAM_reg_1344_1407_6_8_n_2;
  wire RAM_reg_1344_1407_9_11_n_0;
  wire RAM_reg_1344_1407_9_11_n_1;
  wire RAM_reg_1344_1407_9_11_n_2;
  wire RAM_reg_1408_1471_0_2_i_1_n_0;
  wire RAM_reg_1408_1471_0_2_n_0;
  wire RAM_reg_1408_1471_0_2_n_1;
  wire RAM_reg_1408_1471_0_2_n_2;
  wire RAM_reg_1408_1471_3_5_n_0;
  wire RAM_reg_1408_1471_3_5_n_1;
  wire RAM_reg_1408_1471_3_5_n_2;
  wire RAM_reg_1408_1471_6_8_n_0;
  wire RAM_reg_1408_1471_6_8_n_1;
  wire RAM_reg_1408_1471_6_8_n_2;
  wire RAM_reg_1408_1471_9_11_n_0;
  wire RAM_reg_1408_1471_9_11_n_1;
  wire RAM_reg_1408_1471_9_11_n_2;
  wire RAM_reg_1472_1535_0_2_i_1_n_0;
  wire RAM_reg_1472_1535_0_2_n_0;
  wire RAM_reg_1472_1535_0_2_n_1;
  wire RAM_reg_1472_1535_0_2_n_2;
  wire RAM_reg_1472_1535_3_5_n_0;
  wire RAM_reg_1472_1535_3_5_n_1;
  wire RAM_reg_1472_1535_3_5_n_2;
  wire RAM_reg_1472_1535_6_8_n_0;
  wire RAM_reg_1472_1535_6_8_n_1;
  wire RAM_reg_1472_1535_6_8_n_2;
  wire RAM_reg_1472_1535_9_11_n_0;
  wire RAM_reg_1472_1535_9_11_n_1;
  wire RAM_reg_1472_1535_9_11_n_2;
  wire RAM_reg_1536_1599_0_2_i_1_n_0;
  wire RAM_reg_1536_1599_0_2_i_2_n_0;
  wire RAM_reg_1536_1599_0_2_n_0;
  wire RAM_reg_1536_1599_0_2_n_1;
  wire RAM_reg_1536_1599_0_2_n_2;
  wire RAM_reg_1536_1599_3_5_n_0;
  wire RAM_reg_1536_1599_3_5_n_1;
  wire RAM_reg_1536_1599_3_5_n_2;
  wire RAM_reg_1536_1599_6_8_n_0;
  wire RAM_reg_1536_1599_6_8_n_1;
  wire RAM_reg_1536_1599_6_8_n_2;
  wire RAM_reg_1536_1599_9_11_n_0;
  wire RAM_reg_1536_1599_9_11_n_1;
  wire RAM_reg_1536_1599_9_11_n_2;
  wire RAM_reg_1600_1663_0_2_i_1_n_0;
  wire RAM_reg_1600_1663_0_2_n_0;
  wire RAM_reg_1600_1663_0_2_n_1;
  wire RAM_reg_1600_1663_0_2_n_2;
  wire RAM_reg_1600_1663_3_5_n_0;
  wire RAM_reg_1600_1663_3_5_n_1;
  wire RAM_reg_1600_1663_3_5_n_2;
  wire RAM_reg_1600_1663_6_8_n_0;
  wire RAM_reg_1600_1663_6_8_n_1;
  wire RAM_reg_1600_1663_6_8_n_2;
  wire RAM_reg_1600_1663_9_11_n_0;
  wire RAM_reg_1600_1663_9_11_n_1;
  wire RAM_reg_1600_1663_9_11_n_2;
  wire RAM_reg_1664_1727_0_2_i_1_n_0;
  wire RAM_reg_1664_1727_0_2_n_0;
  wire RAM_reg_1664_1727_0_2_n_1;
  wire RAM_reg_1664_1727_0_2_n_2;
  wire RAM_reg_1664_1727_3_5_n_0;
  wire RAM_reg_1664_1727_3_5_n_1;
  wire RAM_reg_1664_1727_3_5_n_2;
  wire RAM_reg_1664_1727_6_8_n_0;
  wire RAM_reg_1664_1727_6_8_n_1;
  wire RAM_reg_1664_1727_6_8_n_2;
  wire RAM_reg_1664_1727_9_11_n_0;
  wire RAM_reg_1664_1727_9_11_n_1;
  wire RAM_reg_1664_1727_9_11_n_2;
  wire RAM_reg_1728_1791_0_2_i_1_n_0;
  wire RAM_reg_1728_1791_0_2_n_0;
  wire RAM_reg_1728_1791_0_2_n_1;
  wire RAM_reg_1728_1791_0_2_n_2;
  wire RAM_reg_1728_1791_3_5_n_0;
  wire RAM_reg_1728_1791_3_5_n_1;
  wire RAM_reg_1728_1791_3_5_n_2;
  wire RAM_reg_1728_1791_6_8_n_0;
  wire RAM_reg_1728_1791_6_8_n_1;
  wire RAM_reg_1728_1791_6_8_n_2;
  wire RAM_reg_1728_1791_9_11_n_0;
  wire RAM_reg_1728_1791_9_11_n_1;
  wire RAM_reg_1728_1791_9_11_n_2;
  wire RAM_reg_1792_1855_0_2_i_1_n_0;
  wire RAM_reg_1792_1855_0_2_i_2_n_0;
  wire RAM_reg_1792_1855_0_2_n_0;
  wire RAM_reg_1792_1855_0_2_n_1;
  wire RAM_reg_1792_1855_0_2_n_2;
  wire RAM_reg_1792_1855_3_5_n_0;
  wire RAM_reg_1792_1855_3_5_n_1;
  wire RAM_reg_1792_1855_3_5_n_2;
  wire RAM_reg_1792_1855_6_8_n_0;
  wire RAM_reg_1792_1855_6_8_n_1;
  wire RAM_reg_1792_1855_6_8_n_2;
  wire RAM_reg_1792_1855_9_11_n_0;
  wire RAM_reg_1792_1855_9_11_n_1;
  wire RAM_reg_1792_1855_9_11_n_2;
  wire RAM_reg_1856_1919_0_2_i_1_n_0;
  wire RAM_reg_1856_1919_0_2_n_0;
  wire RAM_reg_1856_1919_0_2_n_1;
  wire RAM_reg_1856_1919_0_2_n_2;
  wire RAM_reg_1856_1919_3_5_n_0;
  wire RAM_reg_1856_1919_3_5_n_1;
  wire RAM_reg_1856_1919_3_5_n_2;
  wire RAM_reg_1856_1919_6_8_n_0;
  wire RAM_reg_1856_1919_6_8_n_1;
  wire RAM_reg_1856_1919_6_8_n_2;
  wire RAM_reg_1856_1919_9_11_n_0;
  wire RAM_reg_1856_1919_9_11_n_1;
  wire RAM_reg_1856_1919_9_11_n_2;
  wire RAM_reg_1920_1983_0_2_i_1_n_0;
  wire RAM_reg_1920_1983_0_2_n_0;
  wire RAM_reg_1920_1983_0_2_n_1;
  wire RAM_reg_1920_1983_0_2_n_2;
  wire RAM_reg_1920_1983_3_5_n_0;
  wire RAM_reg_1920_1983_3_5_n_1;
  wire RAM_reg_1920_1983_3_5_n_2;
  wire RAM_reg_1920_1983_6_8_n_0;
  wire RAM_reg_1920_1983_6_8_n_1;
  wire RAM_reg_1920_1983_6_8_n_2;
  wire RAM_reg_1920_1983_9_11_n_0;
  wire RAM_reg_1920_1983_9_11_n_1;
  wire RAM_reg_1920_1983_9_11_n_2;
  wire RAM_reg_192_255_0_2_i_1_n_0;
  wire RAM_reg_192_255_0_2_n_0;
  wire RAM_reg_192_255_0_2_n_1;
  wire RAM_reg_192_255_0_2_n_2;
  wire RAM_reg_192_255_3_5_n_0;
  wire RAM_reg_192_255_3_5_n_1;
  wire RAM_reg_192_255_3_5_n_2;
  wire RAM_reg_192_255_6_8_n_0;
  wire RAM_reg_192_255_6_8_n_1;
  wire RAM_reg_192_255_6_8_n_2;
  wire RAM_reg_192_255_9_11_n_0;
  wire RAM_reg_192_255_9_11_n_1;
  wire RAM_reg_192_255_9_11_n_2;
  wire RAM_reg_1984_2047_0_2_i_1_n_0;
  wire RAM_reg_1984_2047_0_2_n_0;
  wire RAM_reg_1984_2047_0_2_n_1;
  wire RAM_reg_1984_2047_0_2_n_2;
  wire RAM_reg_1984_2047_3_5_n_0;
  wire RAM_reg_1984_2047_3_5_n_1;
  wire RAM_reg_1984_2047_3_5_n_2;
  wire RAM_reg_1984_2047_6_8_n_0;
  wire RAM_reg_1984_2047_6_8_n_1;
  wire RAM_reg_1984_2047_6_8_n_2;
  wire RAM_reg_1984_2047_9_11_n_0;
  wire RAM_reg_1984_2047_9_11_n_1;
  wire RAM_reg_1984_2047_9_11_n_2;
  wire RAM_reg_2048_2111_0_2_i_1_n_0;
  wire RAM_reg_2048_2111_0_2_i_2_n_0;
  wire RAM_reg_2048_2111_0_2_n_0;
  wire RAM_reg_2048_2111_0_2_n_1;
  wire RAM_reg_2048_2111_0_2_n_2;
  wire RAM_reg_2048_2111_3_5_n_0;
  wire RAM_reg_2048_2111_3_5_n_1;
  wire RAM_reg_2048_2111_3_5_n_2;
  wire RAM_reg_2048_2111_6_8_n_0;
  wire RAM_reg_2048_2111_6_8_n_1;
  wire RAM_reg_2048_2111_6_8_n_2;
  wire RAM_reg_2048_2111_9_11_n_0;
  wire RAM_reg_2048_2111_9_11_n_1;
  wire RAM_reg_2048_2111_9_11_n_2;
  wire RAM_reg_2112_2175_0_2_i_1_n_0;
  wire RAM_reg_2112_2175_0_2_n_0;
  wire RAM_reg_2112_2175_0_2_n_1;
  wire RAM_reg_2112_2175_0_2_n_2;
  wire RAM_reg_2112_2175_3_5_n_0;
  wire RAM_reg_2112_2175_3_5_n_1;
  wire RAM_reg_2112_2175_3_5_n_2;
  wire RAM_reg_2112_2175_6_8_n_0;
  wire RAM_reg_2112_2175_6_8_n_1;
  wire RAM_reg_2112_2175_6_8_n_2;
  wire RAM_reg_2112_2175_9_11_n_0;
  wire RAM_reg_2112_2175_9_11_n_1;
  wire RAM_reg_2112_2175_9_11_n_2;
  wire RAM_reg_2176_2239_0_2_i_1_n_0;
  wire RAM_reg_2176_2239_0_2_n_0;
  wire RAM_reg_2176_2239_0_2_n_1;
  wire RAM_reg_2176_2239_0_2_n_2;
  wire RAM_reg_2176_2239_3_5_n_0;
  wire RAM_reg_2176_2239_3_5_n_1;
  wire RAM_reg_2176_2239_3_5_n_2;
  wire RAM_reg_2176_2239_6_8_n_0;
  wire RAM_reg_2176_2239_6_8_n_1;
  wire RAM_reg_2176_2239_6_8_n_2;
  wire RAM_reg_2176_2239_9_11_n_0;
  wire RAM_reg_2176_2239_9_11_n_1;
  wire RAM_reg_2176_2239_9_11_n_2;
  wire RAM_reg_2240_2303_0_2_i_1_n_0;
  wire RAM_reg_2240_2303_0_2_n_0;
  wire RAM_reg_2240_2303_0_2_n_1;
  wire RAM_reg_2240_2303_0_2_n_2;
  wire RAM_reg_2240_2303_3_5_n_0;
  wire RAM_reg_2240_2303_3_5_n_1;
  wire RAM_reg_2240_2303_3_5_n_2;
  wire RAM_reg_2240_2303_6_8_n_0;
  wire RAM_reg_2240_2303_6_8_n_1;
  wire RAM_reg_2240_2303_6_8_n_2;
  wire RAM_reg_2240_2303_9_11_n_0;
  wire RAM_reg_2240_2303_9_11_n_1;
  wire RAM_reg_2240_2303_9_11_n_2;
  wire RAM_reg_2304_2367_0_2_i_1_n_0;
  wire RAM_reg_2304_2367_0_2_i_2_n_0;
  wire RAM_reg_2304_2367_0_2_n_0;
  wire RAM_reg_2304_2367_0_2_n_1;
  wire RAM_reg_2304_2367_0_2_n_2;
  wire RAM_reg_2304_2367_3_5_n_0;
  wire RAM_reg_2304_2367_3_5_n_1;
  wire RAM_reg_2304_2367_3_5_n_2;
  wire RAM_reg_2304_2367_6_8_n_0;
  wire RAM_reg_2304_2367_6_8_n_1;
  wire RAM_reg_2304_2367_6_8_n_2;
  wire RAM_reg_2304_2367_9_11_n_0;
  wire RAM_reg_2304_2367_9_11_n_1;
  wire RAM_reg_2304_2367_9_11_n_2;
  wire RAM_reg_2368_2431_0_2_i_1_n_0;
  wire RAM_reg_2368_2431_0_2_n_0;
  wire RAM_reg_2368_2431_0_2_n_1;
  wire RAM_reg_2368_2431_0_2_n_2;
  wire RAM_reg_2368_2431_3_5_n_0;
  wire RAM_reg_2368_2431_3_5_n_1;
  wire RAM_reg_2368_2431_3_5_n_2;
  wire RAM_reg_2368_2431_6_8_n_0;
  wire RAM_reg_2368_2431_6_8_n_1;
  wire RAM_reg_2368_2431_6_8_n_2;
  wire RAM_reg_2368_2431_9_11_n_0;
  wire RAM_reg_2368_2431_9_11_n_1;
  wire RAM_reg_2368_2431_9_11_n_2;
  wire RAM_reg_2432_2495_0_2_i_1_n_0;
  wire RAM_reg_2432_2495_0_2_n_0;
  wire RAM_reg_2432_2495_0_2_n_1;
  wire RAM_reg_2432_2495_0_2_n_2;
  wire RAM_reg_2432_2495_3_5_n_0;
  wire RAM_reg_2432_2495_3_5_n_1;
  wire RAM_reg_2432_2495_3_5_n_2;
  wire RAM_reg_2432_2495_6_8_n_0;
  wire RAM_reg_2432_2495_6_8_n_1;
  wire RAM_reg_2432_2495_6_8_n_2;
  wire RAM_reg_2432_2495_9_11_n_0;
  wire RAM_reg_2432_2495_9_11_n_1;
  wire RAM_reg_2432_2495_9_11_n_2;
  wire RAM_reg_2496_2559_0_2_i_1_n_0;
  wire RAM_reg_2496_2559_0_2_n_0;
  wire RAM_reg_2496_2559_0_2_n_1;
  wire RAM_reg_2496_2559_0_2_n_2;
  wire RAM_reg_2496_2559_3_5_n_0;
  wire RAM_reg_2496_2559_3_5_n_1;
  wire RAM_reg_2496_2559_3_5_n_2;
  wire RAM_reg_2496_2559_6_8_n_0;
  wire RAM_reg_2496_2559_6_8_n_1;
  wire RAM_reg_2496_2559_6_8_n_2;
  wire RAM_reg_2496_2559_9_11_n_0;
  wire RAM_reg_2496_2559_9_11_n_1;
  wire RAM_reg_2496_2559_9_11_n_2;
  wire RAM_reg_2560_2623_0_2_i_1_n_0;
  wire RAM_reg_2560_2623_0_2_i_2_n_0;
  wire RAM_reg_2560_2623_0_2_n_0;
  wire RAM_reg_2560_2623_0_2_n_1;
  wire RAM_reg_2560_2623_0_2_n_2;
  wire RAM_reg_2560_2623_3_5_n_0;
  wire RAM_reg_2560_2623_3_5_n_1;
  wire RAM_reg_2560_2623_3_5_n_2;
  wire RAM_reg_2560_2623_6_8_n_0;
  wire RAM_reg_2560_2623_6_8_n_1;
  wire RAM_reg_2560_2623_6_8_n_2;
  wire RAM_reg_2560_2623_9_11_n_0;
  wire RAM_reg_2560_2623_9_11_n_1;
  wire RAM_reg_2560_2623_9_11_n_2;
  wire RAM_reg_256_319_0_2_i_1_n_0;
  wire RAM_reg_256_319_0_2_i_2_n_0;
  wire RAM_reg_256_319_0_2_n_0;
  wire RAM_reg_256_319_0_2_n_1;
  wire RAM_reg_256_319_0_2_n_2;
  wire RAM_reg_256_319_3_5_n_0;
  wire RAM_reg_256_319_3_5_n_1;
  wire RAM_reg_256_319_3_5_n_2;
  wire RAM_reg_256_319_6_8_n_0;
  wire RAM_reg_256_319_6_8_n_1;
  wire RAM_reg_256_319_6_8_n_2;
  wire RAM_reg_256_319_9_11_n_0;
  wire RAM_reg_256_319_9_11_n_1;
  wire RAM_reg_256_319_9_11_n_2;
  wire RAM_reg_2624_2687_0_2_i_1_n_0;
  wire RAM_reg_2624_2687_0_2_n_0;
  wire RAM_reg_2624_2687_0_2_n_1;
  wire RAM_reg_2624_2687_0_2_n_2;
  wire RAM_reg_2624_2687_3_5_n_0;
  wire RAM_reg_2624_2687_3_5_n_1;
  wire RAM_reg_2624_2687_3_5_n_2;
  wire RAM_reg_2624_2687_6_8_n_0;
  wire RAM_reg_2624_2687_6_8_n_1;
  wire RAM_reg_2624_2687_6_8_n_2;
  wire RAM_reg_2624_2687_9_11_n_0;
  wire RAM_reg_2624_2687_9_11_n_1;
  wire RAM_reg_2624_2687_9_11_n_2;
  wire RAM_reg_2688_2751_0_2_i_1_n_0;
  wire RAM_reg_2688_2751_0_2_n_0;
  wire RAM_reg_2688_2751_0_2_n_1;
  wire RAM_reg_2688_2751_0_2_n_2;
  wire RAM_reg_2688_2751_3_5_n_0;
  wire RAM_reg_2688_2751_3_5_n_1;
  wire RAM_reg_2688_2751_3_5_n_2;
  wire RAM_reg_2688_2751_6_8_n_0;
  wire RAM_reg_2688_2751_6_8_n_1;
  wire RAM_reg_2688_2751_6_8_n_2;
  wire RAM_reg_2688_2751_9_11_n_0;
  wire RAM_reg_2688_2751_9_11_n_1;
  wire RAM_reg_2688_2751_9_11_n_2;
  wire RAM_reg_2752_2815_0_2_i_1_n_0;
  wire RAM_reg_2752_2815_0_2_n_0;
  wire RAM_reg_2752_2815_0_2_n_1;
  wire RAM_reg_2752_2815_0_2_n_2;
  wire RAM_reg_2752_2815_3_5_n_0;
  wire RAM_reg_2752_2815_3_5_n_1;
  wire RAM_reg_2752_2815_3_5_n_2;
  wire RAM_reg_2752_2815_6_8_n_0;
  wire RAM_reg_2752_2815_6_8_n_1;
  wire RAM_reg_2752_2815_6_8_n_2;
  wire RAM_reg_2752_2815_9_11_n_0;
  wire RAM_reg_2752_2815_9_11_n_1;
  wire RAM_reg_2752_2815_9_11_n_2;
  wire RAM_reg_2816_2879_0_2_i_1_n_0;
  wire RAM_reg_2816_2879_0_2_i_2_n_0;
  wire RAM_reg_2816_2879_0_2_n_0;
  wire RAM_reg_2816_2879_0_2_n_1;
  wire RAM_reg_2816_2879_0_2_n_2;
  wire RAM_reg_2816_2879_3_5_n_0;
  wire RAM_reg_2816_2879_3_5_n_1;
  wire RAM_reg_2816_2879_3_5_n_2;
  wire RAM_reg_2816_2879_6_8_n_0;
  wire RAM_reg_2816_2879_6_8_n_1;
  wire RAM_reg_2816_2879_6_8_n_2;
  wire RAM_reg_2816_2879_9_11_n_0;
  wire RAM_reg_2816_2879_9_11_n_1;
  wire RAM_reg_2816_2879_9_11_n_2;
  wire RAM_reg_2880_2943_0_2_i_1_n_0;
  wire RAM_reg_2880_2943_0_2_n_0;
  wire RAM_reg_2880_2943_0_2_n_1;
  wire RAM_reg_2880_2943_0_2_n_2;
  wire RAM_reg_2880_2943_3_5_n_0;
  wire RAM_reg_2880_2943_3_5_n_1;
  wire RAM_reg_2880_2943_3_5_n_2;
  wire RAM_reg_2880_2943_6_8_n_0;
  wire RAM_reg_2880_2943_6_8_n_1;
  wire RAM_reg_2880_2943_6_8_n_2;
  wire RAM_reg_2880_2943_9_11_n_0;
  wire RAM_reg_2880_2943_9_11_n_1;
  wire RAM_reg_2880_2943_9_11_n_2;
  wire RAM_reg_2944_3007_0_2_i_1_n_0;
  wire RAM_reg_2944_3007_0_2_n_0;
  wire RAM_reg_2944_3007_0_2_n_1;
  wire RAM_reg_2944_3007_0_2_n_2;
  wire RAM_reg_2944_3007_3_5_n_0;
  wire RAM_reg_2944_3007_3_5_n_1;
  wire RAM_reg_2944_3007_3_5_n_2;
  wire RAM_reg_2944_3007_6_8_n_0;
  wire RAM_reg_2944_3007_6_8_n_1;
  wire RAM_reg_2944_3007_6_8_n_2;
  wire RAM_reg_2944_3007_9_11_n_0;
  wire RAM_reg_2944_3007_9_11_n_1;
  wire RAM_reg_2944_3007_9_11_n_2;
  wire RAM_reg_3008_3071_0_2_i_1_n_0;
  wire RAM_reg_3008_3071_0_2_n_0;
  wire RAM_reg_3008_3071_0_2_n_1;
  wire RAM_reg_3008_3071_0_2_n_2;
  wire RAM_reg_3008_3071_3_5_n_0;
  wire RAM_reg_3008_3071_3_5_n_1;
  wire RAM_reg_3008_3071_3_5_n_2;
  wire RAM_reg_3008_3071_6_8_n_0;
  wire RAM_reg_3008_3071_6_8_n_1;
  wire RAM_reg_3008_3071_6_8_n_2;
  wire RAM_reg_3008_3071_9_11_n_0;
  wire RAM_reg_3008_3071_9_11_n_1;
  wire RAM_reg_3008_3071_9_11_n_2;
  wire RAM_reg_3072_3135_0_2_i_1_n_0;
  wire RAM_reg_3072_3135_0_2_i_2_n_0;
  wire RAM_reg_3072_3135_0_2_n_0;
  wire RAM_reg_3072_3135_0_2_n_1;
  wire RAM_reg_3072_3135_0_2_n_2;
  wire RAM_reg_3072_3135_3_5_n_0;
  wire RAM_reg_3072_3135_3_5_n_1;
  wire RAM_reg_3072_3135_3_5_n_2;
  wire RAM_reg_3072_3135_6_8_n_0;
  wire RAM_reg_3072_3135_6_8_n_1;
  wire RAM_reg_3072_3135_6_8_n_2;
  wire RAM_reg_3072_3135_9_11_n_0;
  wire RAM_reg_3072_3135_9_11_n_1;
  wire RAM_reg_3072_3135_9_11_n_2;
  wire RAM_reg_3136_3199_0_2_i_1_n_0;
  wire RAM_reg_3136_3199_0_2_n_0;
  wire RAM_reg_3136_3199_0_2_n_1;
  wire RAM_reg_3136_3199_0_2_n_2;
  wire RAM_reg_3136_3199_3_5_n_0;
  wire RAM_reg_3136_3199_3_5_n_1;
  wire RAM_reg_3136_3199_3_5_n_2;
  wire RAM_reg_3136_3199_6_8_n_0;
  wire RAM_reg_3136_3199_6_8_n_1;
  wire RAM_reg_3136_3199_6_8_n_2;
  wire RAM_reg_3136_3199_9_11_n_0;
  wire RAM_reg_3136_3199_9_11_n_1;
  wire RAM_reg_3136_3199_9_11_n_2;
  wire RAM_reg_3200_3263_0_2_i_1_n_0;
  wire RAM_reg_3200_3263_0_2_n_0;
  wire RAM_reg_3200_3263_0_2_n_1;
  wire RAM_reg_3200_3263_0_2_n_2;
  wire RAM_reg_3200_3263_3_5_n_0;
  wire RAM_reg_3200_3263_3_5_n_1;
  wire RAM_reg_3200_3263_3_5_n_2;
  wire RAM_reg_3200_3263_6_8_n_0;
  wire RAM_reg_3200_3263_6_8_n_1;
  wire RAM_reg_3200_3263_6_8_n_2;
  wire RAM_reg_3200_3263_9_11_n_0;
  wire RAM_reg_3200_3263_9_11_n_1;
  wire RAM_reg_3200_3263_9_11_n_2;
  wire RAM_reg_320_383_0_2_i_1_n_0;
  wire RAM_reg_320_383_0_2_n_0;
  wire RAM_reg_320_383_0_2_n_1;
  wire RAM_reg_320_383_0_2_n_2;
  wire RAM_reg_320_383_3_5_n_0;
  wire RAM_reg_320_383_3_5_n_1;
  wire RAM_reg_320_383_3_5_n_2;
  wire RAM_reg_320_383_6_8_n_0;
  wire RAM_reg_320_383_6_8_n_1;
  wire RAM_reg_320_383_6_8_n_2;
  wire RAM_reg_320_383_9_11_n_0;
  wire RAM_reg_320_383_9_11_n_1;
  wire RAM_reg_320_383_9_11_n_2;
  wire RAM_reg_3264_3327_0_2_i_1_n_0;
  wire RAM_reg_3264_3327_0_2_n_0;
  wire RAM_reg_3264_3327_0_2_n_1;
  wire RAM_reg_3264_3327_0_2_n_2;
  wire RAM_reg_3264_3327_3_5_n_0;
  wire RAM_reg_3264_3327_3_5_n_1;
  wire RAM_reg_3264_3327_3_5_n_2;
  wire RAM_reg_3264_3327_6_8_n_0;
  wire RAM_reg_3264_3327_6_8_n_1;
  wire RAM_reg_3264_3327_6_8_n_2;
  wire RAM_reg_3264_3327_9_11_n_0;
  wire RAM_reg_3264_3327_9_11_n_1;
  wire RAM_reg_3264_3327_9_11_n_2;
  wire RAM_reg_3328_3391_0_2_i_1_n_0;
  wire RAM_reg_3328_3391_0_2_i_2_n_0;
  wire RAM_reg_3328_3391_0_2_n_0;
  wire RAM_reg_3328_3391_0_2_n_1;
  wire RAM_reg_3328_3391_0_2_n_2;
  wire RAM_reg_3328_3391_3_5_n_0;
  wire RAM_reg_3328_3391_3_5_n_1;
  wire RAM_reg_3328_3391_3_5_n_2;
  wire RAM_reg_3328_3391_6_8_n_0;
  wire RAM_reg_3328_3391_6_8_n_1;
  wire RAM_reg_3328_3391_6_8_n_2;
  wire RAM_reg_3328_3391_9_11_n_0;
  wire RAM_reg_3328_3391_9_11_n_1;
  wire RAM_reg_3328_3391_9_11_n_2;
  wire RAM_reg_3392_3455_0_2_i_1_n_0;
  wire RAM_reg_3392_3455_0_2_n_0;
  wire RAM_reg_3392_3455_0_2_n_1;
  wire RAM_reg_3392_3455_0_2_n_2;
  wire RAM_reg_3392_3455_3_5_n_0;
  wire RAM_reg_3392_3455_3_5_n_1;
  wire RAM_reg_3392_3455_3_5_n_2;
  wire RAM_reg_3392_3455_6_8_n_0;
  wire RAM_reg_3392_3455_6_8_n_1;
  wire RAM_reg_3392_3455_6_8_n_2;
  wire RAM_reg_3392_3455_9_11_n_0;
  wire RAM_reg_3392_3455_9_11_n_1;
  wire RAM_reg_3392_3455_9_11_n_2;
  wire RAM_reg_3456_3519_0_2_i_1_n_0;
  wire RAM_reg_3456_3519_0_2_n_0;
  wire RAM_reg_3456_3519_0_2_n_1;
  wire RAM_reg_3456_3519_0_2_n_2;
  wire RAM_reg_3456_3519_3_5_n_0;
  wire RAM_reg_3456_3519_3_5_n_1;
  wire RAM_reg_3456_3519_3_5_n_2;
  wire RAM_reg_3456_3519_6_8_n_0;
  wire RAM_reg_3456_3519_6_8_n_1;
  wire RAM_reg_3456_3519_6_8_n_2;
  wire RAM_reg_3456_3519_9_11_n_0;
  wire RAM_reg_3456_3519_9_11_n_1;
  wire RAM_reg_3456_3519_9_11_n_2;
  wire RAM_reg_3520_3583_0_2_i_1_n_0;
  wire RAM_reg_3520_3583_0_2_n_0;
  wire RAM_reg_3520_3583_0_2_n_1;
  wire RAM_reg_3520_3583_0_2_n_2;
  wire RAM_reg_3520_3583_3_5_n_0;
  wire RAM_reg_3520_3583_3_5_n_1;
  wire RAM_reg_3520_3583_3_5_n_2;
  wire RAM_reg_3520_3583_6_8_n_0;
  wire RAM_reg_3520_3583_6_8_n_1;
  wire RAM_reg_3520_3583_6_8_n_2;
  wire RAM_reg_3520_3583_9_11_n_0;
  wire RAM_reg_3520_3583_9_11_n_1;
  wire RAM_reg_3520_3583_9_11_n_2;
  wire RAM_reg_3584_3647_0_2_i_1_n_0;
  wire RAM_reg_3584_3647_0_2_i_2_n_0;
  wire RAM_reg_3584_3647_0_2_n_0;
  wire RAM_reg_3584_3647_0_2_n_1;
  wire RAM_reg_3584_3647_0_2_n_2;
  wire RAM_reg_3584_3647_3_5_n_0;
  wire RAM_reg_3584_3647_3_5_n_1;
  wire RAM_reg_3584_3647_3_5_n_2;
  wire RAM_reg_3584_3647_6_8_n_0;
  wire RAM_reg_3584_3647_6_8_n_1;
  wire RAM_reg_3584_3647_6_8_n_2;
  wire RAM_reg_3584_3647_9_11_n_0;
  wire RAM_reg_3584_3647_9_11_n_1;
  wire RAM_reg_3584_3647_9_11_n_2;
  wire RAM_reg_3648_3711_0_2_i_1_n_0;
  wire RAM_reg_3648_3711_0_2_n_0;
  wire RAM_reg_3648_3711_0_2_n_1;
  wire RAM_reg_3648_3711_0_2_n_2;
  wire RAM_reg_3648_3711_3_5_n_0;
  wire RAM_reg_3648_3711_3_5_n_1;
  wire RAM_reg_3648_3711_3_5_n_2;
  wire RAM_reg_3648_3711_6_8_n_0;
  wire RAM_reg_3648_3711_6_8_n_1;
  wire RAM_reg_3648_3711_6_8_n_2;
  wire RAM_reg_3648_3711_9_11_n_0;
  wire RAM_reg_3648_3711_9_11_n_1;
  wire RAM_reg_3648_3711_9_11_n_2;
  wire RAM_reg_3712_3775_0_2_i_1_n_0;
  wire RAM_reg_3712_3775_0_2_n_0;
  wire RAM_reg_3712_3775_0_2_n_1;
  wire RAM_reg_3712_3775_0_2_n_2;
  wire RAM_reg_3712_3775_3_5_n_0;
  wire RAM_reg_3712_3775_3_5_n_1;
  wire RAM_reg_3712_3775_3_5_n_2;
  wire RAM_reg_3712_3775_6_8_n_0;
  wire RAM_reg_3712_3775_6_8_n_1;
  wire RAM_reg_3712_3775_6_8_n_2;
  wire RAM_reg_3712_3775_9_11_n_0;
  wire RAM_reg_3712_3775_9_11_n_1;
  wire RAM_reg_3712_3775_9_11_n_2;
  wire RAM_reg_3776_3839_0_2_i_1_n_0;
  wire RAM_reg_3776_3839_0_2_n_0;
  wire RAM_reg_3776_3839_0_2_n_1;
  wire RAM_reg_3776_3839_0_2_n_2;
  wire RAM_reg_3776_3839_3_5_n_0;
  wire RAM_reg_3776_3839_3_5_n_1;
  wire RAM_reg_3776_3839_3_5_n_2;
  wire RAM_reg_3776_3839_6_8_n_0;
  wire RAM_reg_3776_3839_6_8_n_1;
  wire RAM_reg_3776_3839_6_8_n_2;
  wire RAM_reg_3776_3839_9_11_n_0;
  wire RAM_reg_3776_3839_9_11_n_1;
  wire RAM_reg_3776_3839_9_11_n_2;
  wire RAM_reg_3840_3903_0_2_i_1_n_0;
  wire RAM_reg_3840_3903_0_2_i_2_n_0;
  wire RAM_reg_3840_3903_0_2_n_0;
  wire RAM_reg_3840_3903_0_2_n_1;
  wire RAM_reg_3840_3903_0_2_n_2;
  wire RAM_reg_3840_3903_3_5_n_0;
  wire RAM_reg_3840_3903_3_5_n_1;
  wire RAM_reg_3840_3903_3_5_n_2;
  wire RAM_reg_3840_3903_6_8_n_0;
  wire RAM_reg_3840_3903_6_8_n_1;
  wire RAM_reg_3840_3903_6_8_n_2;
  wire RAM_reg_3840_3903_9_11_n_0;
  wire RAM_reg_3840_3903_9_11_n_1;
  wire RAM_reg_3840_3903_9_11_n_2;
  wire RAM_reg_384_447_0_2_i_1_n_0;
  wire RAM_reg_384_447_0_2_n_0;
  wire RAM_reg_384_447_0_2_n_1;
  wire RAM_reg_384_447_0_2_n_2;
  wire RAM_reg_384_447_3_5_n_0;
  wire RAM_reg_384_447_3_5_n_1;
  wire RAM_reg_384_447_3_5_n_2;
  wire RAM_reg_384_447_6_8_n_0;
  wire RAM_reg_384_447_6_8_n_1;
  wire RAM_reg_384_447_6_8_n_2;
  wire RAM_reg_384_447_9_11_n_0;
  wire RAM_reg_384_447_9_11_n_1;
  wire RAM_reg_384_447_9_11_n_2;
  wire RAM_reg_3904_3967_0_2_i_1_n_0;
  wire RAM_reg_3904_3967_0_2_n_0;
  wire RAM_reg_3904_3967_0_2_n_1;
  wire RAM_reg_3904_3967_0_2_n_2;
  wire RAM_reg_3904_3967_3_5_n_0;
  wire RAM_reg_3904_3967_3_5_n_1;
  wire RAM_reg_3904_3967_3_5_n_2;
  wire RAM_reg_3904_3967_6_8_n_0;
  wire RAM_reg_3904_3967_6_8_n_1;
  wire RAM_reg_3904_3967_6_8_n_2;
  wire RAM_reg_3904_3967_9_11_n_0;
  wire RAM_reg_3904_3967_9_11_n_1;
  wire RAM_reg_3904_3967_9_11_n_2;
  wire RAM_reg_3968_4031_0_2_i_1_n_0;
  wire RAM_reg_3968_4031_0_2_n_0;
  wire RAM_reg_3968_4031_0_2_n_1;
  wire RAM_reg_3968_4031_0_2_n_2;
  wire RAM_reg_3968_4031_3_5_n_0;
  wire RAM_reg_3968_4031_3_5_n_1;
  wire RAM_reg_3968_4031_3_5_n_2;
  wire RAM_reg_3968_4031_6_8_n_0;
  wire RAM_reg_3968_4031_6_8_n_1;
  wire RAM_reg_3968_4031_6_8_n_2;
  wire RAM_reg_3968_4031_9_11_n_0;
  wire RAM_reg_3968_4031_9_11_n_1;
  wire RAM_reg_3968_4031_9_11_n_2;
  wire RAM_reg_4032_4095_0_2_i_1_n_0;
  wire RAM_reg_4032_4095_0_2_n_0;
  wire RAM_reg_4032_4095_0_2_n_1;
  wire RAM_reg_4032_4095_0_2_n_2;
  wire RAM_reg_4032_4095_3_5_n_0;
  wire RAM_reg_4032_4095_3_5_n_1;
  wire RAM_reg_4032_4095_3_5_n_2;
  wire RAM_reg_4032_4095_6_8_n_0;
  wire RAM_reg_4032_4095_6_8_n_1;
  wire RAM_reg_4032_4095_6_8_n_2;
  wire RAM_reg_4032_4095_9_11_n_0;
  wire RAM_reg_4032_4095_9_11_n_1;
  wire RAM_reg_4032_4095_9_11_n_2;
  wire RAM_reg_4096_4159_0_2_i_1_n_0;
  wire RAM_reg_4096_4159_0_2_i_2_n_0;
  wire RAM_reg_4096_4159_0_2_n_0;
  wire RAM_reg_4096_4159_0_2_n_1;
  wire RAM_reg_4096_4159_0_2_n_2;
  wire RAM_reg_4096_4159_3_5_n_0;
  wire RAM_reg_4096_4159_3_5_n_1;
  wire RAM_reg_4096_4159_3_5_n_2;
  wire RAM_reg_4096_4159_6_8_n_0;
  wire RAM_reg_4096_4159_6_8_n_1;
  wire RAM_reg_4096_4159_6_8_n_2;
  wire RAM_reg_4096_4159_9_11_n_0;
  wire RAM_reg_4096_4159_9_11_n_1;
  wire RAM_reg_4096_4159_9_11_n_2;
  wire RAM_reg_4160_4223_0_2_i_1_n_0;
  wire RAM_reg_4160_4223_0_2_n_0;
  wire RAM_reg_4160_4223_0_2_n_1;
  wire RAM_reg_4160_4223_0_2_n_2;
  wire RAM_reg_4160_4223_3_5_n_0;
  wire RAM_reg_4160_4223_3_5_n_1;
  wire RAM_reg_4160_4223_3_5_n_2;
  wire RAM_reg_4160_4223_6_8_n_0;
  wire RAM_reg_4160_4223_6_8_n_1;
  wire RAM_reg_4160_4223_6_8_n_2;
  wire RAM_reg_4160_4223_9_11_n_0;
  wire RAM_reg_4160_4223_9_11_n_1;
  wire RAM_reg_4160_4223_9_11_n_2;
  wire RAM_reg_4224_4287_0_2_i_1_n_0;
  wire RAM_reg_4224_4287_0_2_n_0;
  wire RAM_reg_4224_4287_0_2_n_1;
  wire RAM_reg_4224_4287_0_2_n_2;
  wire RAM_reg_4224_4287_3_5_n_0;
  wire RAM_reg_4224_4287_3_5_n_1;
  wire RAM_reg_4224_4287_3_5_n_2;
  wire RAM_reg_4224_4287_6_8_n_0;
  wire RAM_reg_4224_4287_6_8_n_1;
  wire RAM_reg_4224_4287_6_8_n_2;
  wire RAM_reg_4224_4287_9_11_n_0;
  wire RAM_reg_4224_4287_9_11_n_1;
  wire RAM_reg_4224_4287_9_11_n_2;
  wire RAM_reg_4288_4351_0_2_i_1_n_0;
  wire RAM_reg_4288_4351_0_2_n_0;
  wire RAM_reg_4288_4351_0_2_n_1;
  wire RAM_reg_4288_4351_0_2_n_2;
  wire RAM_reg_4288_4351_3_5_n_0;
  wire RAM_reg_4288_4351_3_5_n_1;
  wire RAM_reg_4288_4351_3_5_n_2;
  wire RAM_reg_4288_4351_6_8_n_0;
  wire RAM_reg_4288_4351_6_8_n_1;
  wire RAM_reg_4288_4351_6_8_n_2;
  wire RAM_reg_4288_4351_9_11_n_0;
  wire RAM_reg_4288_4351_9_11_n_1;
  wire RAM_reg_4288_4351_9_11_n_2;
  wire RAM_reg_4352_4415_0_2_i_1_n_0;
  wire RAM_reg_4352_4415_0_2_i_2_n_0;
  wire RAM_reg_4352_4415_0_2_n_0;
  wire RAM_reg_4352_4415_0_2_n_1;
  wire RAM_reg_4352_4415_0_2_n_2;
  wire RAM_reg_4352_4415_3_5_n_0;
  wire RAM_reg_4352_4415_3_5_n_1;
  wire RAM_reg_4352_4415_3_5_n_2;
  wire RAM_reg_4352_4415_6_8_n_0;
  wire RAM_reg_4352_4415_6_8_n_1;
  wire RAM_reg_4352_4415_6_8_n_2;
  wire RAM_reg_4352_4415_9_11_n_0;
  wire RAM_reg_4352_4415_9_11_n_1;
  wire RAM_reg_4352_4415_9_11_n_2;
  wire RAM_reg_4416_4479_0_2_i_1_n_0;
  wire RAM_reg_4416_4479_0_2_n_0;
  wire RAM_reg_4416_4479_0_2_n_1;
  wire RAM_reg_4416_4479_0_2_n_2;
  wire RAM_reg_4416_4479_3_5_n_0;
  wire RAM_reg_4416_4479_3_5_n_1;
  wire RAM_reg_4416_4479_3_5_n_2;
  wire RAM_reg_4416_4479_6_8_n_0;
  wire RAM_reg_4416_4479_6_8_n_1;
  wire RAM_reg_4416_4479_6_8_n_2;
  wire RAM_reg_4416_4479_9_11_n_0;
  wire RAM_reg_4416_4479_9_11_n_1;
  wire RAM_reg_4416_4479_9_11_n_2;
  wire RAM_reg_4480_4543_0_2_i_1_n_0;
  wire RAM_reg_4480_4543_0_2_n_0;
  wire RAM_reg_4480_4543_0_2_n_1;
  wire RAM_reg_4480_4543_0_2_n_2;
  wire RAM_reg_4480_4543_3_5_n_0;
  wire RAM_reg_4480_4543_3_5_n_1;
  wire RAM_reg_4480_4543_3_5_n_2;
  wire RAM_reg_4480_4543_6_8_n_0;
  wire RAM_reg_4480_4543_6_8_n_1;
  wire RAM_reg_4480_4543_6_8_n_2;
  wire RAM_reg_4480_4543_9_11_n_0;
  wire RAM_reg_4480_4543_9_11_n_1;
  wire RAM_reg_4480_4543_9_11_n_2;
  wire RAM_reg_448_511_0_2_i_1_n_0;
  wire RAM_reg_448_511_0_2_n_0;
  wire RAM_reg_448_511_0_2_n_1;
  wire RAM_reg_448_511_0_2_n_2;
  wire RAM_reg_448_511_3_5_n_0;
  wire RAM_reg_448_511_3_5_n_1;
  wire RAM_reg_448_511_3_5_n_2;
  wire RAM_reg_448_511_6_8_n_0;
  wire RAM_reg_448_511_6_8_n_1;
  wire RAM_reg_448_511_6_8_n_2;
  wire RAM_reg_448_511_9_11_n_0;
  wire RAM_reg_448_511_9_11_n_1;
  wire RAM_reg_448_511_9_11_n_2;
  wire RAM_reg_4544_4607_0_2_i_1_n_0;
  wire RAM_reg_4544_4607_0_2_n_0;
  wire RAM_reg_4544_4607_0_2_n_1;
  wire RAM_reg_4544_4607_0_2_n_2;
  wire RAM_reg_4544_4607_3_5_n_0;
  wire RAM_reg_4544_4607_3_5_n_1;
  wire RAM_reg_4544_4607_3_5_n_2;
  wire RAM_reg_4544_4607_6_8_n_0;
  wire RAM_reg_4544_4607_6_8_n_1;
  wire RAM_reg_4544_4607_6_8_n_2;
  wire RAM_reg_4544_4607_9_11_n_0;
  wire RAM_reg_4544_4607_9_11_n_1;
  wire RAM_reg_4544_4607_9_11_n_2;
  wire RAM_reg_4608_4671_0_2_i_1_n_0;
  wire RAM_reg_4608_4671_0_2_i_2_n_0;
  wire RAM_reg_4608_4671_0_2_n_0;
  wire RAM_reg_4608_4671_0_2_n_1;
  wire RAM_reg_4608_4671_0_2_n_2;
  wire RAM_reg_4608_4671_3_5_n_0;
  wire RAM_reg_4608_4671_3_5_n_1;
  wire RAM_reg_4608_4671_3_5_n_2;
  wire RAM_reg_4608_4671_6_8_n_0;
  wire RAM_reg_4608_4671_6_8_n_1;
  wire RAM_reg_4608_4671_6_8_n_2;
  wire RAM_reg_4608_4671_9_11_n_0;
  wire RAM_reg_4608_4671_9_11_n_1;
  wire RAM_reg_4608_4671_9_11_n_2;
  wire RAM_reg_4672_4735_0_2_i_1_n_0;
  wire RAM_reg_4672_4735_0_2_n_0;
  wire RAM_reg_4672_4735_0_2_n_1;
  wire RAM_reg_4672_4735_0_2_n_2;
  wire RAM_reg_4672_4735_3_5_n_0;
  wire RAM_reg_4672_4735_3_5_n_1;
  wire RAM_reg_4672_4735_3_5_n_2;
  wire RAM_reg_4672_4735_6_8_n_0;
  wire RAM_reg_4672_4735_6_8_n_1;
  wire RAM_reg_4672_4735_6_8_n_2;
  wire RAM_reg_4672_4735_9_11_n_0;
  wire RAM_reg_4672_4735_9_11_n_1;
  wire RAM_reg_4672_4735_9_11_n_2;
  wire RAM_reg_4736_4799_0_2_i_1_n_0;
  wire RAM_reg_4736_4799_0_2_n_0;
  wire RAM_reg_4736_4799_0_2_n_1;
  wire RAM_reg_4736_4799_0_2_n_2;
  wire RAM_reg_4736_4799_3_5_n_0;
  wire RAM_reg_4736_4799_3_5_n_1;
  wire RAM_reg_4736_4799_3_5_n_2;
  wire RAM_reg_4736_4799_6_8_n_0;
  wire RAM_reg_4736_4799_6_8_n_1;
  wire RAM_reg_4736_4799_6_8_n_2;
  wire RAM_reg_4736_4799_9_11_n_0;
  wire RAM_reg_4736_4799_9_11_n_1;
  wire RAM_reg_4736_4799_9_11_n_2;
  wire RAM_reg_512_575_0_2_i_1_n_0;
  wire RAM_reg_512_575_0_2_i_2_n_0;
  wire RAM_reg_512_575_0_2_n_0;
  wire RAM_reg_512_575_0_2_n_1;
  wire RAM_reg_512_575_0_2_n_2;
  wire RAM_reg_512_575_3_5_n_0;
  wire RAM_reg_512_575_3_5_n_1;
  wire RAM_reg_512_575_3_5_n_2;
  wire RAM_reg_512_575_6_8_n_0;
  wire RAM_reg_512_575_6_8_n_1;
  wire RAM_reg_512_575_6_8_n_2;
  wire RAM_reg_512_575_9_11_n_0;
  wire RAM_reg_512_575_9_11_n_1;
  wire RAM_reg_512_575_9_11_n_2;
  wire RAM_reg_576_639_0_2_i_1_n_0;
  wire RAM_reg_576_639_0_2_n_0;
  wire RAM_reg_576_639_0_2_n_1;
  wire RAM_reg_576_639_0_2_n_2;
  wire RAM_reg_576_639_3_5_n_0;
  wire RAM_reg_576_639_3_5_n_1;
  wire RAM_reg_576_639_3_5_n_2;
  wire RAM_reg_576_639_6_8_n_0;
  wire RAM_reg_576_639_6_8_n_1;
  wire RAM_reg_576_639_6_8_n_2;
  wire RAM_reg_576_639_9_11_n_0;
  wire RAM_reg_576_639_9_11_n_1;
  wire RAM_reg_576_639_9_11_n_2;
  wire RAM_reg_640_703_0_2_i_1_n_0;
  wire RAM_reg_640_703_0_2_n_0;
  wire RAM_reg_640_703_0_2_n_1;
  wire RAM_reg_640_703_0_2_n_2;
  wire RAM_reg_640_703_3_5_n_0;
  wire RAM_reg_640_703_3_5_n_1;
  wire RAM_reg_640_703_3_5_n_2;
  wire RAM_reg_640_703_6_8_n_0;
  wire RAM_reg_640_703_6_8_n_1;
  wire RAM_reg_640_703_6_8_n_2;
  wire RAM_reg_640_703_9_11_n_0;
  wire RAM_reg_640_703_9_11_n_1;
  wire RAM_reg_640_703_9_11_n_2;
  wire RAM_reg_64_127_0_2_i_1_n_0;
  wire RAM_reg_64_127_0_2_n_0;
  wire RAM_reg_64_127_0_2_n_1;
  wire RAM_reg_64_127_0_2_n_2;
  wire RAM_reg_64_127_3_5_n_0;
  wire RAM_reg_64_127_3_5_n_1;
  wire RAM_reg_64_127_3_5_n_2;
  wire RAM_reg_64_127_6_8_n_0;
  wire RAM_reg_64_127_6_8_n_1;
  wire RAM_reg_64_127_6_8_n_2;
  wire RAM_reg_64_127_9_11_n_0;
  wire RAM_reg_64_127_9_11_n_1;
  wire RAM_reg_64_127_9_11_n_2;
  wire RAM_reg_704_767_0_2_i_1_n_0;
  wire RAM_reg_704_767_0_2_n_0;
  wire RAM_reg_704_767_0_2_n_1;
  wire RAM_reg_704_767_0_2_n_2;
  wire RAM_reg_704_767_3_5_n_0;
  wire RAM_reg_704_767_3_5_n_1;
  wire RAM_reg_704_767_3_5_n_2;
  wire RAM_reg_704_767_6_8_n_0;
  wire RAM_reg_704_767_6_8_n_1;
  wire RAM_reg_704_767_6_8_n_2;
  wire RAM_reg_704_767_9_11_n_0;
  wire RAM_reg_704_767_9_11_n_1;
  wire RAM_reg_704_767_9_11_n_2;
  wire RAM_reg_768_831_0_2_i_1_n_0;
  wire RAM_reg_768_831_0_2_i_2_n_0;
  wire RAM_reg_768_831_0_2_n_0;
  wire RAM_reg_768_831_0_2_n_1;
  wire RAM_reg_768_831_0_2_n_2;
  wire RAM_reg_768_831_3_5_n_0;
  wire RAM_reg_768_831_3_5_n_1;
  wire RAM_reg_768_831_3_5_n_2;
  wire RAM_reg_768_831_6_8_n_0;
  wire RAM_reg_768_831_6_8_n_1;
  wire RAM_reg_768_831_6_8_n_2;
  wire RAM_reg_768_831_9_11_n_0;
  wire RAM_reg_768_831_9_11_n_1;
  wire RAM_reg_768_831_9_11_n_2;
  wire RAM_reg_832_895_0_2_i_1_n_0;
  wire RAM_reg_832_895_0_2_n_0;
  wire RAM_reg_832_895_0_2_n_1;
  wire RAM_reg_832_895_0_2_n_2;
  wire RAM_reg_832_895_3_5_n_0;
  wire RAM_reg_832_895_3_5_n_1;
  wire RAM_reg_832_895_3_5_n_2;
  wire RAM_reg_832_895_6_8_n_0;
  wire RAM_reg_832_895_6_8_n_1;
  wire RAM_reg_832_895_6_8_n_2;
  wire RAM_reg_832_895_9_11_n_0;
  wire RAM_reg_832_895_9_11_n_1;
  wire RAM_reg_832_895_9_11_n_2;
  wire RAM_reg_896_959_0_2_i_1_n_0;
  wire RAM_reg_896_959_0_2_n_0;
  wire RAM_reg_896_959_0_2_n_1;
  wire RAM_reg_896_959_0_2_n_2;
  wire RAM_reg_896_959_3_5_n_0;
  wire RAM_reg_896_959_3_5_n_1;
  wire RAM_reg_896_959_3_5_n_2;
  wire RAM_reg_896_959_6_8_n_0;
  wire RAM_reg_896_959_6_8_n_1;
  wire RAM_reg_896_959_6_8_n_2;
  wire RAM_reg_896_959_9_11_n_0;
  wire RAM_reg_896_959_9_11_n_1;
  wire RAM_reg_896_959_9_11_n_2;
  wire RAM_reg_960_1023_0_2_i_1_n_0;
  wire RAM_reg_960_1023_0_2_n_0;
  wire RAM_reg_960_1023_0_2_n_1;
  wire RAM_reg_960_1023_0_2_n_2;
  wire RAM_reg_960_1023_3_5_n_0;
  wire RAM_reg_960_1023_3_5_n_1;
  wire RAM_reg_960_1023_3_5_n_2;
  wire RAM_reg_960_1023_6_8_n_0;
  wire RAM_reg_960_1023_6_8_n_1;
  wire RAM_reg_960_1023_6_8_n_2;
  wire RAM_reg_960_1023_9_11_n_0;
  wire RAM_reg_960_1023_9_11_n_1;
  wire RAM_reg_960_1023_9_11_n_2;
  wire [12:0]addr;
  wire [3:0]blue;
  wire \blue[0]_INST_0_i_10_n_0 ;
  wire \blue[0]_INST_0_i_11_n_0 ;
  wire \blue[0]_INST_0_i_12_n_0 ;
  wire \blue[0]_INST_0_i_13_n_0 ;
  wire \blue[0]_INST_0_i_14_n_0 ;
  wire \blue[0]_INST_0_i_15_n_0 ;
  wire \blue[0]_INST_0_i_16_n_0 ;
  wire \blue[0]_INST_0_i_17_n_0 ;
  wire \blue[0]_INST_0_i_18_n_0 ;
  wire \blue[0]_INST_0_i_19_n_0 ;
  wire \blue[0]_INST_0_i_1_n_0 ;
  wire \blue[0]_INST_0_i_20_n_0 ;
  wire \blue[0]_INST_0_i_21_n_0 ;
  wire \blue[0]_INST_0_i_22_n_0 ;
  wire \blue[0]_INST_0_i_23_n_0 ;
  wire \blue[0]_INST_0_i_24_n_0 ;
  wire \blue[0]_INST_0_i_25_n_0 ;
  wire \blue[0]_INST_0_i_26_n_0 ;
  wire \blue[0]_INST_0_i_27_n_0 ;
  wire \blue[0]_INST_0_i_28_n_0 ;
  wire \blue[0]_INST_0_i_29_n_0 ;
  wire \blue[0]_INST_0_i_2_n_0 ;
  wire \blue[0]_INST_0_i_30_n_0 ;
  wire \blue[0]_INST_0_i_3_n_0 ;
  wire \blue[0]_INST_0_i_4_n_0 ;
  wire \blue[0]_INST_0_i_5_n_0 ;
  wire \blue[0]_INST_0_i_6_n_0 ;
  wire \blue[0]_INST_0_i_7_n_0 ;
  wire \blue[0]_INST_0_i_8_n_0 ;
  wire \blue[0]_INST_0_i_9_n_0 ;
  wire \blue[1]_INST_0_i_10_n_0 ;
  wire \blue[1]_INST_0_i_11_n_0 ;
  wire \blue[1]_INST_0_i_12_n_0 ;
  wire \blue[1]_INST_0_i_13_n_0 ;
  wire \blue[1]_INST_0_i_14_n_0 ;
  wire \blue[1]_INST_0_i_15_n_0 ;
  wire \blue[1]_INST_0_i_16_n_0 ;
  wire \blue[1]_INST_0_i_17_n_0 ;
  wire \blue[1]_INST_0_i_18_n_0 ;
  wire \blue[1]_INST_0_i_19_n_0 ;
  wire \blue[1]_INST_0_i_1_n_0 ;
  wire \blue[1]_INST_0_i_20_n_0 ;
  wire \blue[1]_INST_0_i_21_n_0 ;
  wire \blue[1]_INST_0_i_22_n_0 ;
  wire \blue[1]_INST_0_i_23_n_0 ;
  wire \blue[1]_INST_0_i_24_n_0 ;
  wire \blue[1]_INST_0_i_25_n_0 ;
  wire \blue[1]_INST_0_i_26_n_0 ;
  wire \blue[1]_INST_0_i_27_n_0 ;
  wire \blue[1]_INST_0_i_28_n_0 ;
  wire \blue[1]_INST_0_i_29_n_0 ;
  wire \blue[1]_INST_0_i_2_n_0 ;
  wire \blue[1]_INST_0_i_30_n_0 ;
  wire \blue[1]_INST_0_i_3_n_0 ;
  wire \blue[1]_INST_0_i_4_n_0 ;
  wire \blue[1]_INST_0_i_5_n_0 ;
  wire \blue[1]_INST_0_i_6_n_0 ;
  wire \blue[1]_INST_0_i_7_n_0 ;
  wire \blue[1]_INST_0_i_8_n_0 ;
  wire \blue[1]_INST_0_i_9_n_0 ;
  wire \blue[2]_INST_0_i_10_n_0 ;
  wire \blue[2]_INST_0_i_11_n_0 ;
  wire \blue[2]_INST_0_i_12_n_0 ;
  wire \blue[2]_INST_0_i_13_n_0 ;
  wire \blue[2]_INST_0_i_14_n_0 ;
  wire \blue[2]_INST_0_i_15_n_0 ;
  wire \blue[2]_INST_0_i_16_n_0 ;
  wire \blue[2]_INST_0_i_17_n_0 ;
  wire \blue[2]_INST_0_i_18_n_0 ;
  wire \blue[2]_INST_0_i_19_n_0 ;
  wire \blue[2]_INST_0_i_1_n_0 ;
  wire \blue[2]_INST_0_i_20_n_0 ;
  wire \blue[2]_INST_0_i_21_n_0 ;
  wire \blue[2]_INST_0_i_22_n_0 ;
  wire \blue[2]_INST_0_i_23_n_0 ;
  wire \blue[2]_INST_0_i_24_n_0 ;
  wire \blue[2]_INST_0_i_25_n_0 ;
  wire \blue[2]_INST_0_i_26_n_0 ;
  wire \blue[2]_INST_0_i_27_n_0 ;
  wire \blue[2]_INST_0_i_28_n_0 ;
  wire \blue[2]_INST_0_i_29_n_0 ;
  wire \blue[2]_INST_0_i_2_n_0 ;
  wire \blue[2]_INST_0_i_30_n_0 ;
  wire \blue[2]_INST_0_i_3_n_0 ;
  wire \blue[2]_INST_0_i_4_n_0 ;
  wire \blue[2]_INST_0_i_5_n_0 ;
  wire \blue[2]_INST_0_i_6_n_0 ;
  wire \blue[2]_INST_0_i_7_n_0 ;
  wire \blue[2]_INST_0_i_8_n_0 ;
  wire \blue[2]_INST_0_i_9_n_0 ;
  wire \blue[3]_INST_0_i_10_n_0 ;
  wire \blue[3]_INST_0_i_11_n_0 ;
  wire \blue[3]_INST_0_i_12_n_0 ;
  wire \blue[3]_INST_0_i_13_n_0 ;
  wire \blue[3]_INST_0_i_14_n_0 ;
  wire \blue[3]_INST_0_i_15_n_0 ;
  wire \blue[3]_INST_0_i_16_n_0 ;
  wire \blue[3]_INST_0_i_17_n_0 ;
  wire \blue[3]_INST_0_i_18_n_0 ;
  wire \blue[3]_INST_0_i_19_n_0 ;
  wire \blue[3]_INST_0_i_1_n_0 ;
  wire \blue[3]_INST_0_i_20_n_0 ;
  wire \blue[3]_INST_0_i_21_n_0 ;
  wire \blue[3]_INST_0_i_22_n_0 ;
  wire \blue[3]_INST_0_i_23_n_0 ;
  wire \blue[3]_INST_0_i_24_n_0 ;
  wire \blue[3]_INST_0_i_25_n_0 ;
  wire \blue[3]_INST_0_i_26_n_0 ;
  wire \blue[3]_INST_0_i_27_n_0 ;
  wire \blue[3]_INST_0_i_28_n_0 ;
  wire \blue[3]_INST_0_i_29_n_0 ;
  wire \blue[3]_INST_0_i_2_n_0 ;
  wire \blue[3]_INST_0_i_30_n_0 ;
  wire \blue[3]_INST_0_i_3_n_0 ;
  wire \blue[3]_INST_0_i_4_n_0 ;
  wire \blue[3]_INST_0_i_5_n_0 ;
  wire \blue[3]_INST_0_i_6_n_0 ;
  wire \blue[3]_INST_0_i_7_n_0 ;
  wire \blue[3]_INST_0_i_8_n_0 ;
  wire \blue[3]_INST_0_i_9_n_0 ;
  wire clk;
  wire \current_ver_pos_reg[5] ;
  wire [3:0]green;
  wire \green[0]_INST_0_i_10_n_0 ;
  wire \green[0]_INST_0_i_11_n_0 ;
  wire \green[0]_INST_0_i_12_n_0 ;
  wire \green[0]_INST_0_i_13_n_0 ;
  wire \green[0]_INST_0_i_14_n_0 ;
  wire \green[0]_INST_0_i_15_n_0 ;
  wire \green[0]_INST_0_i_16_n_0 ;
  wire \green[0]_INST_0_i_17_n_0 ;
  wire \green[0]_INST_0_i_18_n_0 ;
  wire \green[0]_INST_0_i_19_n_0 ;
  wire \green[0]_INST_0_i_1_n_0 ;
  wire \green[0]_INST_0_i_20_n_0 ;
  wire \green[0]_INST_0_i_21_n_0 ;
  wire \green[0]_INST_0_i_22_n_0 ;
  wire \green[0]_INST_0_i_23_n_0 ;
  wire \green[0]_INST_0_i_24_n_0 ;
  wire \green[0]_INST_0_i_25_n_0 ;
  wire \green[0]_INST_0_i_26_n_0 ;
  wire \green[0]_INST_0_i_27_n_0 ;
  wire \green[0]_INST_0_i_28_n_0 ;
  wire \green[0]_INST_0_i_29_n_0 ;
  wire \green[0]_INST_0_i_2_n_0 ;
  wire \green[0]_INST_0_i_30_n_0 ;
  wire \green[0]_INST_0_i_3_n_0 ;
  wire \green[0]_INST_0_i_4_n_0 ;
  wire \green[0]_INST_0_i_5_n_0 ;
  wire \green[0]_INST_0_i_6_n_0 ;
  wire \green[0]_INST_0_i_7_n_0 ;
  wire \green[0]_INST_0_i_8_n_0 ;
  wire \green[0]_INST_0_i_9_n_0 ;
  wire \green[1]_INST_0_i_10_n_0 ;
  wire \green[1]_INST_0_i_11_n_0 ;
  wire \green[1]_INST_0_i_12_n_0 ;
  wire \green[1]_INST_0_i_13_n_0 ;
  wire \green[1]_INST_0_i_14_n_0 ;
  wire \green[1]_INST_0_i_15_n_0 ;
  wire \green[1]_INST_0_i_16_n_0 ;
  wire \green[1]_INST_0_i_17_n_0 ;
  wire \green[1]_INST_0_i_18_n_0 ;
  wire \green[1]_INST_0_i_19_n_0 ;
  wire \green[1]_INST_0_i_1_n_0 ;
  wire \green[1]_INST_0_i_20_n_0 ;
  wire \green[1]_INST_0_i_21_n_0 ;
  wire \green[1]_INST_0_i_22_n_0 ;
  wire \green[1]_INST_0_i_23_n_0 ;
  wire \green[1]_INST_0_i_24_n_0 ;
  wire \green[1]_INST_0_i_25_n_0 ;
  wire \green[1]_INST_0_i_26_n_0 ;
  wire \green[1]_INST_0_i_27_n_0 ;
  wire \green[1]_INST_0_i_28_n_0 ;
  wire \green[1]_INST_0_i_29_n_0 ;
  wire \green[1]_INST_0_i_2_n_0 ;
  wire \green[1]_INST_0_i_30_n_0 ;
  wire \green[1]_INST_0_i_3_n_0 ;
  wire \green[1]_INST_0_i_4_n_0 ;
  wire \green[1]_INST_0_i_5_n_0 ;
  wire \green[1]_INST_0_i_6_n_0 ;
  wire \green[1]_INST_0_i_7_n_0 ;
  wire \green[1]_INST_0_i_8_n_0 ;
  wire \green[1]_INST_0_i_9_n_0 ;
  wire \green[2]_INST_0_i_10_n_0 ;
  wire \green[2]_INST_0_i_11_n_0 ;
  wire \green[2]_INST_0_i_12_n_0 ;
  wire \green[2]_INST_0_i_13_n_0 ;
  wire \green[2]_INST_0_i_14_n_0 ;
  wire \green[2]_INST_0_i_15_n_0 ;
  wire \green[2]_INST_0_i_16_n_0 ;
  wire \green[2]_INST_0_i_17_n_0 ;
  wire \green[2]_INST_0_i_18_n_0 ;
  wire \green[2]_INST_0_i_19_n_0 ;
  wire \green[2]_INST_0_i_1_n_0 ;
  wire \green[2]_INST_0_i_20_n_0 ;
  wire \green[2]_INST_0_i_21_n_0 ;
  wire \green[2]_INST_0_i_22_n_0 ;
  wire \green[2]_INST_0_i_23_n_0 ;
  wire \green[2]_INST_0_i_24_n_0 ;
  wire \green[2]_INST_0_i_25_n_0 ;
  wire \green[2]_INST_0_i_26_n_0 ;
  wire \green[2]_INST_0_i_27_n_0 ;
  wire \green[2]_INST_0_i_28_n_0 ;
  wire \green[2]_INST_0_i_29_n_0 ;
  wire \green[2]_INST_0_i_2_n_0 ;
  wire \green[2]_INST_0_i_30_n_0 ;
  wire \green[2]_INST_0_i_3_n_0 ;
  wire \green[2]_INST_0_i_4_n_0 ;
  wire \green[2]_INST_0_i_5_n_0 ;
  wire \green[2]_INST_0_i_6_n_0 ;
  wire \green[2]_INST_0_i_7_n_0 ;
  wire \green[2]_INST_0_i_8_n_0 ;
  wire \green[2]_INST_0_i_9_n_0 ;
  wire \green[3]_INST_0_i_10_n_0 ;
  wire \green[3]_INST_0_i_11_n_0 ;
  wire \green[3]_INST_0_i_12_n_0 ;
  wire \green[3]_INST_0_i_13_n_0 ;
  wire \green[3]_INST_0_i_14_n_0 ;
  wire \green[3]_INST_0_i_15_n_0 ;
  wire \green[3]_INST_0_i_16_n_0 ;
  wire \green[3]_INST_0_i_17_n_0 ;
  wire \green[3]_INST_0_i_18_n_0 ;
  wire \green[3]_INST_0_i_19_n_0 ;
  wire \green[3]_INST_0_i_1_n_0 ;
  wire \green[3]_INST_0_i_20_n_0 ;
  wire \green[3]_INST_0_i_21_n_0 ;
  wire \green[3]_INST_0_i_22_n_0 ;
  wire \green[3]_INST_0_i_23_n_0 ;
  wire \green[3]_INST_0_i_24_n_0 ;
  wire \green[3]_INST_0_i_25_n_0 ;
  wire \green[3]_INST_0_i_26_n_0 ;
  wire \green[3]_INST_0_i_27_n_0 ;
  wire \green[3]_INST_0_i_28_n_0 ;
  wire \green[3]_INST_0_i_29_n_0 ;
  wire \green[3]_INST_0_i_2_n_0 ;
  wire \green[3]_INST_0_i_30_n_0 ;
  wire \green[3]_INST_0_i_3_n_0 ;
  wire \green[3]_INST_0_i_4_n_0 ;
  wire \green[3]_INST_0_i_5_n_0 ;
  wire \green[3]_INST_0_i_6_n_0 ;
  wire \green[3]_INST_0_i_7_n_0 ;
  wire \green[3]_INST_0_i_8_n_0 ;
  wire \green[3]_INST_0_i_9_n_0 ;
  wire [11:0]pixel;
  wire [3:0]red;
  wire \red[0]_INST_0_i_10_n_0 ;
  wire \red[0]_INST_0_i_11_n_0 ;
  wire \red[0]_INST_0_i_12_n_0 ;
  wire \red[0]_INST_0_i_13_n_0 ;
  wire \red[0]_INST_0_i_14_n_0 ;
  wire \red[0]_INST_0_i_15_n_0 ;
  wire \red[0]_INST_0_i_16_n_0 ;
  wire \red[0]_INST_0_i_17_n_0 ;
  wire \red[0]_INST_0_i_18_n_0 ;
  wire \red[0]_INST_0_i_19_n_0 ;
  wire \red[0]_INST_0_i_1_n_0 ;
  wire \red[0]_INST_0_i_20_n_0 ;
  wire \red[0]_INST_0_i_21_n_0 ;
  wire \red[0]_INST_0_i_22_n_0 ;
  wire \red[0]_INST_0_i_23_n_0 ;
  wire \red[0]_INST_0_i_24_n_0 ;
  wire \red[0]_INST_0_i_25_n_0 ;
  wire \red[0]_INST_0_i_26_n_0 ;
  wire \red[0]_INST_0_i_27_n_0 ;
  wire \red[0]_INST_0_i_28_n_0 ;
  wire \red[0]_INST_0_i_29_n_0 ;
  wire \red[0]_INST_0_i_2_n_0 ;
  wire \red[0]_INST_0_i_30_n_0 ;
  wire \red[0]_INST_0_i_3_n_0 ;
  wire \red[0]_INST_0_i_4_n_0 ;
  wire \red[0]_INST_0_i_5_n_0 ;
  wire \red[0]_INST_0_i_6_n_0 ;
  wire \red[0]_INST_0_i_7_n_0 ;
  wire \red[0]_INST_0_i_8_n_0 ;
  wire \red[0]_INST_0_i_9_n_0 ;
  wire \red[1]_INST_0_i_10_n_0 ;
  wire \red[1]_INST_0_i_11_n_0 ;
  wire \red[1]_INST_0_i_12_n_0 ;
  wire \red[1]_INST_0_i_13_n_0 ;
  wire \red[1]_INST_0_i_14_n_0 ;
  wire \red[1]_INST_0_i_15_n_0 ;
  wire \red[1]_INST_0_i_16_n_0 ;
  wire \red[1]_INST_0_i_17_n_0 ;
  wire \red[1]_INST_0_i_18_n_0 ;
  wire \red[1]_INST_0_i_19_n_0 ;
  wire \red[1]_INST_0_i_1_n_0 ;
  wire \red[1]_INST_0_i_20_n_0 ;
  wire \red[1]_INST_0_i_21_n_0 ;
  wire \red[1]_INST_0_i_22_n_0 ;
  wire \red[1]_INST_0_i_23_n_0 ;
  wire \red[1]_INST_0_i_24_n_0 ;
  wire \red[1]_INST_0_i_25_n_0 ;
  wire \red[1]_INST_0_i_26_n_0 ;
  wire \red[1]_INST_0_i_27_n_0 ;
  wire \red[1]_INST_0_i_28_n_0 ;
  wire \red[1]_INST_0_i_29_n_0 ;
  wire \red[1]_INST_0_i_2_n_0 ;
  wire \red[1]_INST_0_i_30_n_0 ;
  wire \red[1]_INST_0_i_3_n_0 ;
  wire \red[1]_INST_0_i_4_n_0 ;
  wire \red[1]_INST_0_i_5_n_0 ;
  wire \red[1]_INST_0_i_6_n_0 ;
  wire \red[1]_INST_0_i_7_n_0 ;
  wire \red[1]_INST_0_i_8_n_0 ;
  wire \red[1]_INST_0_i_9_n_0 ;
  wire \red[2]_INST_0_i_10_n_0 ;
  wire \red[2]_INST_0_i_11_n_0 ;
  wire \red[2]_INST_0_i_12_n_0 ;
  wire \red[2]_INST_0_i_13_n_0 ;
  wire \red[2]_INST_0_i_14_n_0 ;
  wire \red[2]_INST_0_i_15_n_0 ;
  wire \red[2]_INST_0_i_16_n_0 ;
  wire \red[2]_INST_0_i_17_n_0 ;
  wire \red[2]_INST_0_i_18_n_0 ;
  wire \red[2]_INST_0_i_19_n_0 ;
  wire \red[2]_INST_0_i_1_n_0 ;
  wire \red[2]_INST_0_i_20_n_0 ;
  wire \red[2]_INST_0_i_21_n_0 ;
  wire \red[2]_INST_0_i_22_n_0 ;
  wire \red[2]_INST_0_i_23_n_0 ;
  wire \red[2]_INST_0_i_24_n_0 ;
  wire \red[2]_INST_0_i_25_n_0 ;
  wire \red[2]_INST_0_i_26_n_0 ;
  wire \red[2]_INST_0_i_27_n_0 ;
  wire \red[2]_INST_0_i_28_n_0 ;
  wire \red[2]_INST_0_i_29_n_0 ;
  wire \red[2]_INST_0_i_2_n_0 ;
  wire \red[2]_INST_0_i_30_n_0 ;
  wire \red[2]_INST_0_i_3_n_0 ;
  wire \red[2]_INST_0_i_4_n_0 ;
  wire \red[2]_INST_0_i_5_n_0 ;
  wire \red[2]_INST_0_i_6_n_0 ;
  wire \red[2]_INST_0_i_7_n_0 ;
  wire \red[2]_INST_0_i_8_n_0 ;
  wire \red[2]_INST_0_i_9_n_0 ;
  wire \red[3]_INST_0_i_10_n_0 ;
  wire \red[3]_INST_0_i_11_n_0 ;
  wire \red[3]_INST_0_i_12_n_0 ;
  wire \red[3]_INST_0_i_13_n_0 ;
  wire \red[3]_INST_0_i_14_n_0 ;
  wire \red[3]_INST_0_i_15_n_0 ;
  wire \red[3]_INST_0_i_18_n_0 ;
  wire \red[3]_INST_0_i_19_n_0 ;
  wire \red[3]_INST_0_i_1_n_0 ;
  wire \red[3]_INST_0_i_20_n_0 ;
  wire \red[3]_INST_0_i_21_n_0 ;
  wire \red[3]_INST_0_i_22_n_0 ;
  wire \red[3]_INST_0_i_23_n_0 ;
  wire \red[3]_INST_0_i_24_n_0 ;
  wire \red[3]_INST_0_i_25_n_0 ;
  wire \red[3]_INST_0_i_26_n_0 ;
  wire \red[3]_INST_0_i_27_n_0 ;
  wire \red[3]_INST_0_i_28_n_0 ;
  wire \red[3]_INST_0_i_29_n_0 ;
  wire \red[3]_INST_0_i_2_n_0 ;
  wire \red[3]_INST_0_i_30_n_0 ;
  wire \red[3]_INST_0_i_31_n_0 ;
  wire \red[3]_INST_0_i_32_n_0 ;
  wire \red[3]_INST_0_i_33_n_0 ;
  wire \red[3]_INST_0_i_3_n_0 ;
  wire \red[3]_INST_0_i_5_n_0 ;
  wire \red[3]_INST_0_i_6_n_0 ;
  wire \red[3]_INST_0_i_7_n_0 ;
  wire \red[3]_INST_0_i_8_n_0 ;
  wire \red[3]_INST_0_i_9_n_0 ;
  wire we;
  wire NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1024_1087_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1088_1151_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1152_1215_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1216_1279_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1280_1343_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1344_1407_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1408_1471_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1472_1535_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1536_1599_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1600_1663_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1664_1727_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1728_1791_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1792_1855_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1856_1919_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1920_1983_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_1984_2047_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2048_2111_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2048_2111_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2048_2111_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2048_2111_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2112_2175_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2112_2175_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2112_2175_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2112_2175_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2176_2239_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2176_2239_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2176_2239_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2176_2239_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2240_2303_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2240_2303_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2240_2303_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2240_2303_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2304_2367_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2304_2367_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2304_2367_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2304_2367_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2368_2431_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2368_2431_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2368_2431_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2368_2431_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2432_2495_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2432_2495_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2432_2495_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2432_2495_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2496_2559_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2496_2559_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2496_2559_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2496_2559_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2560_2623_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2560_2623_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2560_2623_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2560_2623_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_256_319_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2624_2687_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2624_2687_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2624_2687_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2624_2687_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2688_2751_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2688_2751_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2688_2751_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2688_2751_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2752_2815_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2752_2815_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2752_2815_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2752_2815_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2816_2879_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2816_2879_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2816_2879_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2816_2879_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2880_2943_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2880_2943_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2880_2943_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2880_2943_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2944_3007_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2944_3007_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2944_3007_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_2944_3007_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3008_3071_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3008_3071_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3008_3071_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3008_3071_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3072_3135_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3072_3135_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3072_3135_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3072_3135_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3136_3199_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3136_3199_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3136_3199_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3136_3199_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3200_3263_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3200_3263_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3200_3263_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3200_3263_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_320_383_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3264_3327_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3264_3327_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3264_3327_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3264_3327_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3328_3391_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3328_3391_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3328_3391_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3328_3391_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3392_3455_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3392_3455_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3392_3455_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3392_3455_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3456_3519_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3456_3519_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3456_3519_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3456_3519_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3520_3583_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3520_3583_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3520_3583_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3520_3583_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3584_3647_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3584_3647_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3584_3647_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3584_3647_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3648_3711_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3648_3711_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3648_3711_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3648_3711_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3712_3775_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3712_3775_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3712_3775_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3712_3775_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3776_3839_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3776_3839_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3776_3839_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3776_3839_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3840_3903_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3840_3903_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3840_3903_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3840_3903_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_384_447_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3904_3967_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3904_3967_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3904_3967_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3904_3967_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3968_4031_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3968_4031_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3968_4031_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_3968_4031_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4032_4095_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4032_4095_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4032_4095_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4032_4095_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4096_4159_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4096_4159_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4096_4159_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4096_4159_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4160_4223_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4160_4223_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4160_4223_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4160_4223_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4224_4287_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4224_4287_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4224_4287_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4224_4287_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4288_4351_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4288_4351_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4288_4351_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4288_4351_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4352_4415_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4352_4415_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4352_4415_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4352_4415_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4416_4479_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4416_4479_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4416_4479_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4416_4479_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4480_4543_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4480_4543_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4480_4543_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4480_4543_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_448_511_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4544_4607_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4544_4607_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4544_4607_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4544_4607_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4608_4671_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4608_4671_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4608_4671_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4608_4671_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4672_4735_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4672_4735_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4672_4735_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4672_4735_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4736_4799_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4736_4799_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4736_4799_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_4736_4799_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_512_575_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_576_639_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_640_703_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_704_767_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_768_831_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_832_895_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_896_959_9_11_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_0_2_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_3_5_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_6_8_DOD_UNCONNECTED;
  wire NLW_RAM_reg_960_1023_9_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hA322A4843F592042),
    .INIT_B(64'hFE3F5BE3FFBE2181),
    .INIT_C(64'h01C000180083DBFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_0_63_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_0_2_n_0),
        .DOB(RAM_reg_0_63_0_2_n_1),
        .DOC(RAM_reg_0_63_0_2_n_2),
        .DOD(NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_0_63_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_0_63_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_0_63_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_0_63_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    RAM_reg_0_63_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_0_63_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00000000007FFFFF),
    .INIT_B(64'hB35DBD1C1F82AF01),
    .INIT_C(64'hFE1DBD041F7FAF00),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_0_63_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_3_5_n_0),
        .DOB(RAM_reg_0_63_3_5_n_1),
        .DOC(RAM_reg_0_63_3_5_n_2),
        .DOD(NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h01E242FBE0FC54FF),
    .INIT_B(64'h000000000003FBFF),
    .INIT_C(64'h4CA842C3FA82F900),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_0_63_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_6_8_n_0),
        .DOB(RAM_reg_0_63_6_8_n_1),
        .DOC(RAM_reg_0_63_6_8_n_2),
        .DOD(NLW_RAM_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h4D48001804C500FF),
    .INIT_B(64'hB3F7FFFFFF000400),
    .INIT_C(64'h000000000003FBFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_0_63_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_0_63_9_11_n_0),
        .DOB(RAM_reg_0_63_9_11_n_1),
        .DOC(RAM_reg_0_63_9_11_n_2),
        .DOD(NLW_RAM_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h73A7B6F33D391FFD),
    .INIT_B(64'h8460090AF3A00073),
    .INIT_C(64'h03C000062AFFFE00),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1024_1087_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1024_1087_0_2_n_0),
        .DOB(RAM_reg_1024_1087_0_2_n_1),
        .DOC(RAM_reg_1024_1087_0_2_n_2),
        .DOD(NLW_RAM_reg_1024_1087_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1024_1087_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_1024_1087_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1024_1087_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1024_1087_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    RAM_reg_1024_1087_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_1024_1087_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00000001DDDFFF00),
    .INIT_B(64'h8DC719F587360A7C),
    .INIT_C(64'hF7C0FFFC50560A72),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1024_1087_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1024_1087_3_5_n_0),
        .DOB(RAM_reg_1024_1087_3_5_n_1),
        .DOC(RAM_reg_1024_1087_3_5_n_2),
        .DOD(NLW_RAM_reg_1024_1087_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1024_1087_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h03E00003EAA9F401),
    .INIT_B(64'h000000001DDFFF00),
    .INIT_C(64'h8283DA3689373E3C),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1024_1087_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1024_1087_6_8_n_0),
        .DOB(RAM_reg_1024_1087_6_8_n_1),
        .DOC(RAM_reg_1024_1087_6_8_n_2),
        .DOD(NLW_RAM_reg_1024_1087_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1024_1087_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFA843DF957A8C172),
    .INIT_B(64'h06A0000015000101),
    .INIT_C(64'h0140000008DFFE00),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1024_1087_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1024_1087_9_11_n_0),
        .DOB(RAM_reg_1024_1087_9_11_n_1),
        .DOC(RAM_reg_1024_1087_9_11_n_2),
        .DOD(NLW_RAM_reg_1024_1087_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1024_1087_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3B955F48DA62FFCA),
    .INIT_B(64'hC40EC2A0055C0037),
    .INIT_C(64'h00020DFFFF800000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1088_1151_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1088_1151_0_2_n_0),
        .DOB(RAM_reg_1088_1151_0_2_n_1),
        .DOC(RAM_reg_1088_1151_0_2_n_2),
        .DOD(NLW_RAM_reg_1088_1151_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1088_1151_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_1088_1151_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1024_1087_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1088_1151_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0001FFDFFE000000),
    .INIT_B(64'h3EA629F4830BFF87),
    .INIT_C(64'h3FE743D48234007F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1088_1151_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1088_1151_3_5_n_0),
        .DOB(RAM_reg_1088_1151_3_5_n_1),
        .DOC(RAM_reg_1088_1151_3_5_n_2),
        .DOD(NLW_RAM_reg_1088_1151_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1088_1151_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hC019EC2B7DC00000),
    .INIT_B(64'h00001FDFFE000000),
    .INIT_C(64'h7F4EAFD70D42FF83),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1088_1151_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1088_1151_6_8_n_0),
        .DOB(RAM_reg_1088_1151_6_8_n_1),
        .DOC(RAM_reg_1088_1151_6_8_n_2),
        .DOD(NLW_RAM_reg_1088_1151_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1088_1151_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFCA94228F1FC007F),
    .INIT_B(64'h0010120000000000),
    .INIT_C(64'h00000DDFFE000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1088_1151_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1088_1151_9_11_n_0),
        .DOB(RAM_reg_1088_1151_9_11_n_1),
        .DOC(RAM_reg_1088_1151_9_11_n_2),
        .DOD(NLW_RAM_reg_1088_1151_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1088_1151_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0E0BD96A00C843E1),
    .INIT_B(64'h41E0059BFF005409),
    .INIT_C(64'h8FFFFE0400002FF0),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1152_1215_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1152_1215_0_2_n_0),
        .DOB(RAM_reg_1152_1215_0_2_n_1),
        .DOC(RAM_reg_1152_1215_0_2_n_2),
        .DOD(NLW_RAM_reg_1152_1215_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1152_1215_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_1152_1215_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1024_1087_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1152_1215_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFDFFE0000000000),
    .INIT_B(64'h68F0807700344027),
    .INIT_C(64'h90D083FFFFC82831),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1152_1215_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1152_1215_3_5_n_0),
        .DOB(RAM_reg_1152_1215_3_5_n_1),
        .DOC(RAM_reg_1152_1215_3_5_n_2),
        .DOD(NLW_RAM_reg_1152_1215_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1152_1215_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFF2F7C0000007838),
    .INIT_B(64'h0FDFFE00000007C0),
    .INIT_C(64'h7EE50C9F00844007),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1152_1215_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1152_1215_6_8_n_0),
        .DOB(RAM_reg_1152_1215_6_8_n_1),
        .DOC(RAM_reg_1152_1215_6_8_n_2),
        .DOD(NLW_RAM_reg_1152_1215_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1152_1215_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h912AF07FFF482811),
    .INIT_B(64'h0000000000007818),
    .INIT_C(64'h0FDFFE00000007E0),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1152_1215_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1152_1215_9_11_n_0),
        .DOB(RAM_reg_1152_1215_9_11_n_1),
        .DOC(RAM_reg_1152_1215_9_11_n_2),
        .DOD(NLW_RAM_reg_1152_1215_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1152_1215_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hC9101D534E603E14),
    .INIT_B(64'h048FFEB3001DC10E),
    .INIT_C(64'hFE0000017FF80002),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1216_1279_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1216_1279_0_2_n_0),
        .DOB(RAM_reg_1216_1279_0_2_n_1),
        .DOC(RAM_reg_1216_1279_0_2_n_2),
        .DOD(NLW_RAM_reg_1216_1279_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1216_1279_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_1216_1279_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1024_1087_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1216_1279_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFE00000080000001),
    .INIT_B(64'h82181DDA90039FC6),
    .INIT_C(64'h80E7FEB2B0011FC6),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1216_1279_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1216_1279_3_5_n_0),
        .DOB(RAM_reg_1216_1279_3_5_n_1),
        .DOC(RAM_reg_1216_1279_3_5_n_2),
        .DOD(NLW_RAM_reg_1216_1279_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1216_1279_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h7C0000003004E039),
    .INIT_B(64'hFE000001CFF80000),
    .INIT_C(64'h4AF81DDB9003F9EF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1216_1279_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1216_1279_6_8_n_0),
        .DOB(RAM_reg_1216_1279_6_8_n_1),
        .DOC(RAM_reg_1216_1279_6_8_n_2),
        .DOD(NLW_RAM_reg_1216_1279_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1216_1279_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF607FEB3B001FE28),
    .INIT_B(64'h0200000130040010),
    .INIT_C(64'hFC000000CFF80000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1216_1279_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1216_1279_9_11_n_0),
        .DOB(RAM_reg_1216_1279_9_11_n_1),
        .DOC(RAM_reg_1216_1279_9_11_n_2),
        .DOD(NLW_RAM_reg_1216_1279_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1216_1279_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h2E456E8F4F620875),
    .INIT_B(64'h90074138DEC1E439),
    .INIT_C(64'h0003BFC600020FCE),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1280_1343_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1280_1343_0_2_n_0),
        .DOB(RAM_reg_1280_1343_0_2_n_1),
        .DOC(RAM_reg_1280_1343_0_2_n_2),
        .DOD(NLW_RAM_reg_1280_1343_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1280_1343_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_1280_1343_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1280_1343_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1280_1343_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    RAM_reg_1280_1343_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_1280_1343_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h000000000001FFFF),
    .INIT_B(64'h2F4F92019A841830),
    .INIT_C(64'hE3C3D202BF86E800),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1280_1343_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1280_1343_3_5_n_0),
        .DOB(RAM_reg_1280_1343_3_5_n_1),
        .DOC(RAM_reg_1280_1343_3_5_n_2),
        .DOD(NLW_RAM_reg_1280_1343_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1280_1343_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1008D2024079F7CF),
    .INIT_B(64'h00072DFC00000FFF),
    .INIT_C(64'h9C4E694E9BD7404E),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1280_1343_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1280_1343_6_8_n_0),
        .DOB(RAM_reg_1280_1343_6_8_n_1),
        .DOC(RAM_reg_1280_1343_6_8_n_2),
        .DOD(NLW_RAM_reg_1280_1343_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1280_1343_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h33C24003BEF937B1),
    .INIT_B(64'h0009400240000030),
    .INIT_C(64'h0007BFFC00000FCF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1280_1343_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1280_1343_9_11_n_0),
        .DOB(RAM_reg_1280_1343_9_11_n_1),
        .DOC(RAM_reg_1280_1343_9_11_n_2),
        .DOD(NLW_RAM_reg_1280_1343_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1280_1343_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3F7D858236500184),
    .INIT_B(64'hFF5B0601C913FE77),
    .INIT_C(64'h00C2F9FF33EC00F8),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_128_191_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_0_2_n_0),
        .DOB(RAM_reg_128_191_0_2_n_1),
        .DOC(RAM_reg_128_191_0_2_n_2),
        .DOD(NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_128_191_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_128_191_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_0_63_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h003DFFFFFFF00000),
    .INIT_B(64'hB3C601C0FCB1256B),
    .INIT_C(64'hB3BA05C076AFFEF3),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_128_191_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_3_5_n_0),
        .DOB(RAM_reg_128_191_3_5_n_1),
        .DOC(RAM_reg_128_191_3_5_n_2),
        .DOD(NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h4C7CF83FC54000FC),
    .INIT_B(64'h0001FFFF3BF00000),
    .INIT_C(64'hF26D69E022C85894),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_128_191_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_6_8_n_0),
        .DOB(RAM_reg_128_191_6_8_n_1),
        .DOC(RAM_reg_128_191_6_8_n_2),
        .DOD(NLW_RAM_reg_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0C81921FAA865998),
    .INIT_B(64'hFF0102006E81A69F),
    .INIT_C(64'h0000FDFF11700060),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_128_191_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_128_191_9_11_n_0),
        .DOB(RAM_reg_128_191_9_11_n_1),
        .DOC(RAM_reg_128_191_9_11_n_2),
        .DOD(NLW_RAM_reg_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hC20546A70C5531B1),
    .INIT_B(64'h000226C0E0198018),
    .INIT_C(64'hFFFF01020FEE7C00),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1344_1407_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1344_1407_0_2_n_0),
        .DOB(RAM_reg_1344_1407_0_2_n_1),
        .DOC(RAM_reg_1344_1407_0_2_n_2),
        .DOD(NLW_RAM_reg_1344_1407_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1344_1407_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_1344_1407_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1280_1343_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1344_1407_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00000001FFFFFE00),
    .INIT_B(64'hE101F7061A108045),
    .INIT_C(64'hE1014606EA20017E),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1344_1407_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1344_1407_3_5_n_0),
        .DOB(RAM_reg_1344_1407_3_5_n_1),
        .DOC(RAM_reg_1344_1407_3_5_n_2),
        .DOD(NLW_RAM_reg_1344_1407_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1344_1407_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE10121F9F5CFFC80),
    .INIT_B(64'h1EFE00000FFFFE00),
    .INIT_C(64'h5B76D6F9D22C0073),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1344_1407_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1344_1407_6_8_n_0),
        .DOB(RAM_reg_1344_1407_6_8_n_1),
        .DOC(RAM_reg_1344_1407_6_8_n_2),
        .DOD(NLW_RAM_reg_1344_1407_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1344_1407_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h010046FF25F3FE8C),
    .INIT_B(64'h0100210000300200),
    .INIT_C(64'hFEFF00000FCFFC00),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1344_1407_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1344_1407_9_11_n_0),
        .DOB(RAM_reg_1344_1407_9_11_n_1),
        .DOC(RAM_reg_1344_1407_9_11_n_2),
        .DOD(NLW_RAM_reg_1344_1407_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1344_1407_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h78A90C71865E8816),
    .INIT_B(64'hA9C5E019B3B97F2D),
    .INIT_C(64'hC2030FEE7E00001E),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1408_1471_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1408_1471_0_2_n_0),
        .DOB(RAM_reg_1408_1471_0_2_n_1),
        .DOC(RAM_reg_1408_1471_0_2_n_2),
        .DOD(NLW_RAM_reg_1408_1471_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1408_1471_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_1408_1471_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1280_1343_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1408_1471_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000FFFFFC000000),
    .INIT_B(64'hCB44023496BB8BAD),
    .INIT_C(64'hD906EA24023B828B),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1408_1471_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1408_1471_3_5_n_0),
        .DOB(RAM_reg_1408_1471_3_5_n_1),
        .DOC(RAM_reg_1408_1471_3_5_n_2),
        .DOD(NLW_RAM_reg_1408_1471_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1408_1471_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hDAF9F5CBFFC47D25),
    .INIT_B(64'h20000FFFFC00001E),
    .INIT_C(64'hD963D285168E762F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1408_1471_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1408_1471_6_8_n_0),
        .DOB(RAM_reg_1408_1471_6_8_n_1),
        .DOC(RAM_reg_1408_1471_6_8_n_2),
        .DOD(NLW_RAM_reg_1408_1471_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1408_1471_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hC97D255AFDFFF68B),
    .INIT_B(64'hDA80001002000925),
    .INIT_C(64'h20000FEFFC00001E),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1408_1471_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1408_1471_9_11_n_0),
        .DOB(RAM_reg_1408_1471_9_11_n_1),
        .DOC(RAM_reg_1408_1471_9_11_n_2),
        .DOD(NLW_RAM_reg_1408_1471_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1408_1471_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0C718146B2321A48),
    .INIT_B(64'hE019B1B97C19DFC8),
    .INIT_C(64'h0FEE7E00007CE037),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1472_1535_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1472_1535_0_2_n_0),
        .DOB(RAM_reg_1472_1535_0_2_n_1),
        .DOC(RAM_reg_1472_1535_0_2_n_2),
        .DOD(NLW_RAM_reg_1472_1535_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1472_1535_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_1472_1535_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1280_1343_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1472_1535_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFC0000000000),
    .INIT_B(64'h023411BE7E75A04D),
    .INIT_C(64'hEA24003E0323A1CD),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1472_1535_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1472_1535_3_5_n_0),
        .DOB(RAM_reg_1472_1535_3_5_n_1),
        .DOC(RAM_reg_1472_1535_3_5_n_2),
        .DOD(NLW_RAM_reg_1472_1535_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1472_1535_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF5CBFFC1FC9BA1CD),
    .INIT_B(64'h0FFFFC00007C5E32),
    .INIT_C(64'hDFAD11818296D840),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1472_1535_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1472_1535_6_8_n_0),
        .DOB(RAM_reg_1472_1535_6_8_n_1),
        .DOC(RAM_reg_1472_1535_6_8_n_2),
        .DOD(NLW_RAM_reg_1472_1535_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1472_1535_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h2852FFFF83A201C0),
    .INIT_B(64'h081000007C1A01C0),
    .INIT_C(64'h07EFFC00007DFE3F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1472_1535_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1472_1535_9_11_n_0),
        .DOB(RAM_reg_1472_1535_9_11_n_1),
        .DOC(RAM_reg_1472_1535_9_11_n_2),
        .DOD(NLW_RAM_reg_1472_1535_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1472_1535_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h690E0398CEFBC970),
    .INIT_B(64'h17F178850D53818E),
    .INIT_C(64'hF80001FAF08CDC01),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1536_1599_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1536_1599_0_2_n_0),
        .DOB(RAM_reg_1536_1599_0_2_n_1),
        .DOC(RAM_reg_1536_1599_0_2_n_2),
        .DOD(NLW_RAM_reg_1536_1599_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1536_1599_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_1536_1599_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1536_1599_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1536_1599_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    RAM_reg_1536_1599_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_1536_1599_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFC00000000000000),
    .INIT_B(64'h03DDCAC0428A0319),
    .INIT_C(64'h061C00CC42A3221F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1536_1599_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1536_1599_3_5_n_0),
        .DOB(RAM_reg_1536_1599_3_5_n_1),
        .DOC(RAM_reg_1536_1599_3_5_n_2),
        .DOD(NLW_RAM_reg_1536_1599_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1536_1599_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF9E3FE34422339E0),
    .INIT_B(64'hFC0001FBBDDCDC00),
    .INIT_C(64'h13E2B42EF68B2CE6),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1536_1599_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1536_1599_6_8_n_0),
        .DOB(RAM_reg_1536_1599_6_8_n_1),
        .DOC(RAM_reg_1536_1599_6_8_n_2),
        .DOD(NLW_RAM_reg_1536_1599_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1536_1599_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF9FEB4EC02A31EF9),
    .INIT_B(64'h00014A1402232500),
    .INIT_C(64'hFC0001FBFDDCD800),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1536_1599_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1536_1599_9_11_n_0),
        .DOB(RAM_reg_1536_1599_9_11_n_1),
        .DOC(RAM_reg_1536_1599_9_11_n_2),
        .DOD(NLW_RAM_reg_1536_1599_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1536_1599_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h4935D3DC34311075),
    .INIT_B(64'h35F5C205F8CFE419),
    .INIT_C(64'h02023DE286000FEE),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1600_1663_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1600_1663_0_2_n_0),
        .DOB(RAM_reg_1600_1663_0_2_n_1),
        .DOC(RAM_reg_1600_1663_0_2_n_2),
        .DOD(NLW_RAM_reg_1600_1663_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1600_1663_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_1600_1663_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1536_1599_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1600_1663_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h000000000000FFFF),
    .INIT_B(64'h43CC41781A1A1810),
    .INIT_C(64'h87944139691EE000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1600_1663_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1600_1663_3_5_n_0),
        .DOB(RAM_reg_1600_1663_3_5_n_1),
        .DOC(RAM_reg_1600_1663_3_5_n_2),
        .DOD(NLW_RAM_reg_1600_1663_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1600_1663_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFAC40D954E1F7EF),
    .INIT_B(64'h0073BFE6BE000FFF),
    .INIT_C(64'h7FABB1907CE1566D),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1600_1663_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1600_1663_6_8_n_0),
        .DOB(RAM_reg_1600_1663_6_8_n_1),
        .DOC(RAM_reg_1600_1663_6_8_n_2),
        .DOD(NLW_RAM_reg_1600_1663_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1600_1663_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h7BB001B915FF2992),
    .INIT_B(64'h8788005940000810),
    .INIT_C(64'h0077FFE6BE0007EF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1600_1663_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1600_1663_9_11_n_0),
        .DOB(RAM_reg_1600_1663_9_11_n_1),
        .DOC(RAM_reg_1600_1663_9_11_n_2),
        .DOD(NLW_RAM_reg_1600_1663_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1600_1663_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3FD2F7B11A7DAA31),
    .INIT_B(64'hA6C71C4FEC115ACE),
    .INIT_C(64'h5938620007EEF900),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1664_1727_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1664_1727_0_2_n_0),
        .DOB(RAM_reg_1664_1727_0_2_n_1),
        .DOC(RAM_reg_1664_1727_0_2_n_2),
        .DOD(NLW_RAM_reg_1664_1727_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1664_1727_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_1664_1727_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1536_1599_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1664_1727_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00000000FFFFFC00),
    .INIT_B(64'h26C6CABF90104083),
    .INIT_C(64'h24CF02BE60000100),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1664_1727_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1664_1727_3_5_n_0),
        .DOB(RAM_reg_1664_1727_3_5_n_1),
        .DOC(RAM_reg_1664_1727_3_5_n_2),
        .DOD(NLW_RAM_reg_1664_1727_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1664_1727_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h2537BD41F7EFFBFF),
    .INIT_B(64'hDBF87E000FFFFC00),
    .INIT_C(64'hDF3E69404F7948EC),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1664_1727_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1664_1727_6_8_n_0),
        .DOB(RAM_reg_1664_1727_6_8_n_1),
        .DOC(RAM_reg_1664_1727_6_8_n_2),
        .DOD(NLW_RAM_reg_1664_1727_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1664_1727_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h05F73FFE3096FEFC),
    .INIT_B(64'h0407800108100503),
    .INIT_C(64'hFBF87E0007EFF800),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1664_1727_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1664_1727_9_11_n_0),
        .DOB(RAM_reg_1664_1727_9_11_n_1),
        .DOC(RAM_reg_1664_1727_9_11_n_2),
        .DOD(NLW_RAM_reg_1664_1727_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1664_1727_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00A0022CA3B6C2EF),
    .INIT_B(64'h7D4FFC005FCC3CA8),
    .INIT_C(64'hE20007FFFC000047),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1728_1791_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1728_1791_0_2_n_0),
        .DOB(RAM_reg_1728_1791_0_2_n_1),
        .DOC(RAM_reg_1728_1791_0_2_n_2),
        .DOD(NLW_RAM_reg_1728_1791_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1728_1791_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_1728_1791_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1536_1599_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1728_1791_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000FFFFF8000000),
    .INIT_B(64'hC27E0808C684CE6C),
    .INIT_C(64'h53FEF81881000130),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1728_1791_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1728_1791_3_5_n_0),
        .DOB(RAM_reg_1728_1791_3_5_n_1),
        .DOC(RAM_reg_1728_1791_3_5_n_2),
        .DOD(NLW_RAM_reg_1728_1791_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1728_1791_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h2D01FFE77FFFFE50),
    .INIT_B(64'hFE0007FFF80000EF),
    .INIT_C(64'h6D814F48C6CAF82B),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1728_1791_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1728_1791_6_8_n_0),
        .DOB(RAM_reg_1728_1791_6_8_n_1),
        .DOC(RAM_reg_1728_1791_6_8_n_2),
        .DOD(NLW_RAM_reg_1728_1791_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1728_1791_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h6E7F38A77EFBF934),
    .INIT_B(64'h0100000001040650),
    .INIT_C(64'hFE0007FFF80000EF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1728_1791_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1728_1791_9_11_n_0),
        .DOB(RAM_reg_1728_1791_9_11_n_1),
        .DOC(RAM_reg_1728_1791_9_11_n_2),
        .DOD(NLW_RAM_reg_1728_1791_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1728_1791_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0A2C01B6B0E598C6),
    .INIT_B(64'hF400BACC489586D8),
    .INIT_C(64'h07FF7C0001CB793E),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1792_1855_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1792_1855_0_2_n_0),
        .DOB(RAM_reg_1792_1855_0_2_n_1),
        .DOC(RAM_reg_1792_1855_0_2_n_2),
        .DOD(NLW_RAM_reg_1792_1855_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1792_1855_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_1792_1855_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1792_1855_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1792_1855_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    RAM_reg_1792_1855_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_1792_1855_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFFFF80000000000),
    .INIT_B(64'h04496CFDDAC6224C),
    .INIT_C(64'hFC584C019766244F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1792_1855_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1792_1855_3_5_n_0),
        .DOB(RAM_reg_1792_1855_3_5_n_1),
        .DOC(RAM_reg_1792_1855_3_5_n_2),
        .DOD(NLW_RAM_reg_1792_1855_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1792_1855_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFBA733FE68A625B1),
    .INIT_B(64'h07FFF80001D9DBFE),
    .INIT_C(64'hE3CA48F2C1E9DDB3),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1792_1855_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1792_1855_6_8_n_0),
        .DOB(RAM_reg_1792_1855_6_8_n_1),
        .DOC(RAM_reg_1792_1855_6_8_n_2),
        .DOD(NLW_RAM_reg_1792_1855_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1792_1855_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1825B7F3766005FC),
    .INIT_B(64'h0000800C08A00401),
    .INIT_C(64'h07FF780001DFFBFE),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1792_1855_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1792_1855_9_11_n_0),
        .DOB(RAM_reg_1792_1855_9_11_n_1),
        .DOC(RAM_reg_1792_1855_9_11_n_2),
        .DOD(NLW_RAM_reg_1792_1855_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1792_1855_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3A94F2A822D381B3),
    .INIT_B(64'hD06E876B04B5644C),
    .INIT_C(64'hBC000397F962C200),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1856_1919_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1856_1919_0_2_n_0),
        .DOB(RAM_reg_1856_1919_0_2_n_1),
        .DOC(RAM_reg_1856_1919_0_2_n_2),
        .DOD(NLW_RAM_reg_1856_1919_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1856_1919_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_1856_1919_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1792_1855_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1856_1919_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h7800000000000000),
    .INIT_B(64'hF5B8CEE952A6E9B4),
    .INIT_C(64'h0D80C2E950A7E877),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1856_1919_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1856_1919_3_5_n_0),
        .DOB(RAM_reg_1856_1919_3_5_n_1),
        .DOC(RAM_reg_1856_1919_3_5_n_2),
        .DOD(NLW_RAM_reg_1856_1919_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1856_1919_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hB27F3569514C2F08),
    .INIT_B(64'h78000396AFF3C600),
    .INIT_C(64'h556E71D6A958008B),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1856_1919_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1856_1919_6_8_n_0),
        .DOB(RAM_reg_1856_1919_6_8_n_1),
        .DOC(RAM_reg_1856_1919_6_8_n_2),
        .DOD(NLW_RAM_reg_1856_1919_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1856_1919_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF2EFB3C001FEEE7C),
    .INIT_B(64'h4010044000142900),
    .INIT_C(64'h380003BFFFE3C600),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1856_1919_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1856_1919_9_11_n_0),
        .DOB(RAM_reg_1856_1919_9_11_n_1),
        .DOC(RAM_reg_1856_1919_9_11_n_2),
        .DOD(NLW_RAM_reg_1856_1919_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1856_1919_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h80F2E243C0528C00),
    .INIT_B(64'hC741042100ED7024),
    .INIT_C(64'h0F3FF9C2860007FF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1920_1983_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1920_1983_0_2_n_0),
        .DOB(RAM_reg_1920_1983_0_2_n_1),
        .DOC(RAM_reg_1920_1983_0_2_n_2),
        .DOD(NLW_RAM_reg_1920_1983_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1920_1983_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_1920_1983_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1792_1855_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1920_1983_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h000000000000FFFF),
    .INIT_B(64'hBBC340649B948B48),
    .INIT_C(64'hBEC34067CA977758),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1920_1983_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1920_1983_3_5_n_0),
        .DOB(RAM_reg_1920_1983_3_5_n_1),
        .DOC(RAM_reg_1920_1983_3_5_n_2),
        .DOD(NLW_RAM_reg_1920_1983_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1920_1983_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h49C341A04C68F8A7),
    .INIT_B(64'h073CBFC3860007FF),
    .INIT_C(64'h869FCBC0832A8CC2),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1920_1983_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1920_1983_6_8_n_0),
        .DOB(RAM_reg_1920_1983_6_8_n_1),
        .DOC(RAM_reg_1920_1983_6_8_n_2),
        .DOD(NLW_RAM_reg_1920_1983_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1920_1983_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h7A8003E6CCBD7425),
    .INIT_B(64'h0980022048400400),
    .INIT_C(64'h077FFDC3860003FF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1920_1983_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1920_1983_9_11_n_0),
        .DOB(RAM_reg_1920_1983_9_11_n_1),
        .DOC(RAM_reg_1920_1983_9_11_n_2),
        .DOD(NLW_RAM_reg_1920_1983_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1920_1983_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hD502AB521A1A4620),
    .INIT_B(64'h02810613FF747FDF),
    .INIT_C(64'hFDFF75FC018F8060),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_192_255_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_0_2_n_0),
        .DOB(RAM_reg_192_255_0_2_n_1),
        .DOC(RAM_reg_192_255_0_2_n_2),
        .DOD(NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_192_255_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_192_255_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_0_63_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFFFFBE000000000),
    .INIT_B(64'hA560FB341B450E1F),
    .INIT_C(64'hA56039AFFF6E3FFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_192_255_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_3_5_n_0),
        .DOB(RAM_reg_192_255_3_5_n_1),
        .DOC(RAM_reg_192_255_3_5_n_2),
        .DOD(NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h589F8C50019FC060),
    .INIT_B(64'hFFFF73E000000000),
    .INIT_C(64'hADEC80FF64BA51E5),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_192_255_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_6_8_n_0),
        .DOB(RAM_reg_192_255_6_8_n_1),
        .DOC(RAM_reg_192_255_6_8_n_2),
        .DOD(NLW_RAM_reg_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h52134697642B91E0),
    .INIT_B(64'h02004A809ADBEE7F),
    .INIT_C(64'hFDFF316001040000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_192_255_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_192_255_9_11_n_0),
        .DOB(RAM_reg_192_255_9_11_n_1),
        .DOC(RAM_reg_192_255_9_11_n_2),
        .DOD(NLW_RAM_reg_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h38C48601812231A2),
    .INIT_B(64'h0307DEFE7104165C),
    .INIT_C(64'hFCC68C0006FFF800),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1984_2047_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_1984_2047_0_2_n_0),
        .DOB(RAM_reg_1984_2047_0_2_n_1),
        .DOC(RAM_reg_1984_2047_0_2_n_2),
        .DOD(NLW_RAM_reg_1984_2047_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1984_2047_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_1984_2047_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_1792_1855_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_1984_2047_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00000000FFFFF800),
    .INIT_B(64'h13652BB68DE0D836),
    .INIT_C(64'h12475A8773F8C406),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1984_2047_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_1984_2047_3_5_n_0),
        .DOB(RAM_reg_1984_2047_3_5_n_1),
        .DOC(RAM_reg_1984_2047_3_5_n_2),
        .DOD(NLW_RAM_reg_1984_2047_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1984_2047_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h12A9D678F80733F9),
    .INIT_B(64'hEDC68C0007FFF800),
    .INIT_C(64'hE2E424C98EEB5028),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1984_2047_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_1984_2047_6_8_n_0),
        .DOB(RAM_reg_1984_2047_6_8_n_1),
        .DOC(RAM_reg_1984_2047_6_8_n_2),
        .DOD(NLW_RAM_reg_1984_2047_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1984_2047_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h02C75ECE720C33EF),
    .INIT_B(64'h0229D23006080010),
    .INIT_C(64'hFDC68C0001F7F800),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_1984_2047_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_1984_2047_9_11_n_0),
        .DOB(RAM_reg_1984_2047_9_11_n_1),
        .DOC(RAM_reg_1984_2047_9_11_n_2),
        .DOD(NLW_RAM_reg_1984_2047_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_1984_2047_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE56525EF05F6B751),
    .INIT_B(64'hED9E75C81E0CDBC0),
    .INIT_C(64'h68000237F000063F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2048_2111_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2048_2111_0_2_n_0),
        .DOB(RAM_reg_2048_2111_0_2_n_1),
        .DOC(RAM_reg_2048_2111_0_2_n_2),
        .DOD(NLW_RAM_reg_2048_2111_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2048_2111_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_2048_2111_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2048_2111_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2048_2111_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    RAM_reg_2048_2111_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_2048_2111_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1000FFFFF8000000),
    .INIT_B(64'h503E00241743DAC0),
    .INIT_C(64'h7E0F73F40443DDC0),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2048_2111_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2048_2111_3_5_n_0),
        .DOB(RAM_reg_2048_2111_3_5_n_1),
        .DOC(RAM_reg_2048_2111_3_5_n_2),
        .DOD(NLW_RAM_reg_2048_2111_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2048_2111_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h05F0F803F3BC3AC0),
    .INIT_B(64'hF80007FFF800073F),
    .INIT_C(64'h5AE809278F1C843F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2048_2111_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2048_2111_6_8_n_0),
        .DOB(RAM_reg_2048_2111_6_8_n_1),
        .DOC(RAM_reg_2048_2111_6_8_n_2),
        .DOD(NLW_RAM_reg_2048_2111_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2048_2111_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h74EF73087BFF7900),
    .INIT_B(64'h0510070808001A00),
    .INIT_C(64'hF80000F7F00007FF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2048_2111_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2048_2111_9_11_n_0),
        .DOB(RAM_reg_2048_2111_9_11_n_1),
        .DOC(RAM_reg_2048_2111_9_11_n_2),
        .DOD(NLW_RAM_reg_2048_2111_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2048_2111_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h38D75FD552C1B0F3),
    .INIT_B(64'h74C8060EE0C18D8F),
    .INIT_C(64'h0337F000063E7E7C),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2112_2175_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2112_2175_0_2_n_0),
        .DOB(RAM_reg_2112_2175_0_2_n_1),
        .DOC(RAM_reg_2112_2175_0_2_n_2),
        .DOD(NLW_RAM_reg_2112_2175_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2112_2175_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_2112_2175_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2048_2111_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2112_2175_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFFFF80000000000),
    .INIT_B(64'h0C0C436341041BF8),
    .INIT_C(64'h77FC006319041B7F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2112_2175_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2112_2175_3_5_n_0),
        .DOB(RAM_reg_2112_2175_3_5_n_1),
        .DOC(RAM_reg_2112_2175_3_5_n_2),
        .DOD(NLW_RAM_reg_2112_2175_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2112_2175_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFC0BF79CFF041B03),
    .INIT_B(64'h03F7F80006FBE4FC),
    .INIT_C(64'h0D8AA3887C3FE3E0),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2112_2175_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2112_2175_6_8_n_0),
        .DOB(RAM_reg_2112_2175_6_8_n_1),
        .DOC(RAM_reg_2112_2175_6_8_n_2),
        .DOD(NLW_RAM_reg_2112_2175_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2112_2175_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h77805FFFE500037F),
    .INIT_B(64'h038808001B000303),
    .INIT_C(64'h0077F00006FFFCFC),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2112_2175_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2112_2175_9_11_n_0),
        .DOB(RAM_reg_2112_2175_9_11_n_1),
        .DOC(RAM_reg_2112_2175_9_11_n_2),
        .DOD(NLW_RAM_reg_2112_2175_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2112_2175_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h16F065E23F0C8E16),
    .INIT_B(64'h070FC2E301C9E305),
    .INIT_C(64'hF000041CFE331C08),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2176_2239_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2176_2239_0_2_n_0),
        .DOB(RAM_reg_2176_2239_0_2_n_1),
        .DOC(RAM_reg_2176_2239_0_2_n_2),
        .DOD(NLW_RAM_reg_2176_2239_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2176_2239_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_2176_2239_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2048_2111_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2176_2239_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF800000000000000),
    .INIT_B(64'h039DCF0009FB4A95),
    .INIT_C(64'h001C190009CAAE97),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2176_2239_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2176_2239_3_5_n_0),
        .DOB(RAM_reg_2176_2239_3_5_n_1),
        .DOC(RAM_reg_2176_2239_3_5_n_2),
        .DOD(NLW_RAM_reg_2176_2239_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2176_2239_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF7E3ED0009CEED68),
    .INIT_B(64'hF80006FFF6311000),
    .INIT_C(64'hE383317FE75B8B6A),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2176_2239_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2176_2239_6_8_n_0),
        .DOB(RAM_reg_2176_2239_6_8_n_1),
        .DOC(RAM_reg_2176_2239_6_8_n_2),
        .DOD(NLW_RAM_reg_2176_2239_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2176_2239_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1FFF290001CAEFFD),
    .INIT_B(64'h0800CD0001CEEC00),
    .INIT_C(64'hF00006FFFE311000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2176_2239_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2176_2239_9_11_n_0),
        .DOB(RAM_reg_2176_2239_9_11_n_1),
        .DOC(RAM_reg_2176_2239_9_11_n_2),
        .DOD(NLW_RAM_reg_2176_2239_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2176_2239_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h283288BCA81E14DA),
    .INIT_B(64'hC0330826150D78C0),
    .INIT_C(64'h0DCCF7C3CE000337),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2240_2303_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2240_2303_0_2_n_0),
        .DOB(RAM_reg_2240_2303_0_2_n_1),
        .DOC(RAM_reg_2240_2303_0_2_n_2),
        .DOD(NLW_RAM_reg_2240_2303_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2240_2303_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_2240_2303_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2048_2111_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2240_2303_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h000000000000FFFF),
    .INIT_B(64'h5600490A4DB5480B),
    .INIT_C(64'h960049247DB737FF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2240_2303_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2240_2303_3_5_n_0),
        .DOB(RAM_reg_2240_2303_3_5_n_1),
        .DOC(RAM_reg_2240_2303_3_5_n_2),
        .DOD(NLW_RAM_reg_2240_2303_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2240_2303_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hEA00493C7E48FC08),
    .INIT_B(64'h0DFFB6C3800003F7),
    .INIT_C(64'h2DFFB31A8D4C09C4),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2240_2303_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2240_2303_6_8_n_0),
        .DOB(RAM_reg_2240_2303_6_8_n_1),
        .DOC(RAM_reg_2240_2303_6_8_n_2),
        .DOD(NLW_RAM_reg_2240_2303_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2240_2303_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3E0001243DFF77C4),
    .INIT_B(64'hC200013C3E0003CC),
    .INIT_C(64'h0DFFFEC3C0000033),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2240_2303_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2240_2303_9_11_n_0),
        .DOB(RAM_reg_2240_2303_9_11_n_1),
        .DOC(RAM_reg_2240_2303_9_11_n_2),
        .DOD(NLW_RAM_reg_2240_2303_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2240_2303_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h8C840CFB145432B1),
    .INIT_B(64'h0C826E07784C070F),
    .INIT_C(64'hF37D960003B3F000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2304_2367_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2304_2367_0_2_n_0),
        .DOB(RAM_reg_2304_2367_0_2_n_1),
        .DOC(RAM_reg_2304_2367_0_2_n_2),
        .DOD(NLW_RAM_reg_2304_2367_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2304_2367_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_2304_2367_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2304_2367_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2304_2367_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    RAM_reg_2304_2367_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_2304_2367_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00000000FFFFF800),
    .INIT_B(64'hC19DCBA46C0D478B),
    .INIT_C(64'hC17BE33C13FB4408),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2304_2367_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2304_2367_3_5_n_0),
        .DOB(RAM_reg_2304_2367_3_5_n_1),
        .DOC(RAM_reg_2304_2367_3_5_n_2),
        .DOD(NLW_RAM_reg_2304_2367_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2304_2367_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hC1FBEAC3FC08B3F7),
    .INIT_B(64'h3E04140003F7F800),
    .INIT_C(64'hF274EA1B05CBAFE2),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2304_2367_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2304_2367_6_8_n_0),
        .DOB(RAM_reg_2304_2367_6_8_n_1),
        .DOC(RAM_reg_2304_2367_6_8_n_2),
        .DOD(NLW_RAM_reg_2304_2367_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2304_2367_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00F263677BC713FE),
    .INIT_B(64'h00F26A8003CF0801),
    .INIT_C(64'hFF0D94000030F000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2304_2367_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2304_2367_9_11_n_0),
        .DOB(RAM_reg_2304_2367_9_11_n_1),
        .DOC(RAM_reg_2304_2367_9_11_n_2),
        .DOD(NLW_RAM_reg_2304_2367_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2304_2367_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h5292D2701A203E03),
    .INIT_B(64'h6E62B84C2F1FCE03),
    .INIT_C(64'h9C0183B3F80009FC),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2368_2431_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2368_2431_0_2_n_0),
        .DOB(RAM_reg_2368_2431_0_2_n_1),
        .DOC(RAM_reg_2368_2431_0_2_n_2),
        .DOD(NLW_RAM_reg_2368_2431_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2368_2431_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_2368_2431_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2304_2367_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2368_2431_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00007FFFF0000000),
    .INIT_B(64'h50A268485BCFDA00),
    .INIT_C(64'h623813BB5C000A00),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2368_2431_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2368_2431_3_5_n_0),
        .DOB(RAM_reg_2368_2431_3_5_n_1),
        .DOC(RAM_reg_2368_2431_3_5_n_2),
        .DOD(NLW_RAM_reg_2368_2431_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2368_2431_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h63C7FC08ABFFF200),
    .INIT_B(64'h9C0003F7F0000DFF),
    .INIT_C(64'hB158014CB3FF2BFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2368_2431_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2368_2431_6_8_n_0),
        .DOB(RAM_reg_2368_2431_6_8_n_1),
        .DOC(RAM_reg_2368_2431_6_8_n_2),
        .DOD(NLW_RAM_reg_2368_2431_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2368_2431_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h23647B4303FF2A00),
    .INIT_B(64'h2283034F0800D200),
    .INIT_C(64'hDC0000B0F0000DFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2368_2431_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2368_2431_9_11_n_0),
        .DOB(RAM_reg_2368_2431_9_11_n_1),
        .DOC(RAM_reg_2368_2431_9_11_n_2),
        .DOD(NLW_RAM_reg_2368_2431_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2368_2431_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hD75A5A3A227031D2),
    .INIT_B(64'hBC4E271DD0003281),
    .INIT_C(64'h87B1F8000FFFCFFD),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2432_2495_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2432_2495_0_2_n_0),
        .DOB(RAM_reg_2432_2495_0_2_n_1),
        .DOC(RAM_reg_2432_2495_0_2_n_2),
        .DOD(NLW_RAM_reg_2432_2495_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2432_2495_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_2432_2495_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2304_2367_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2432_2495_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h7BFFF00000000000),
    .INIT_B(64'hC0461CDE490081F5),
    .INIT_C(64'hBBB514001D008165),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2432_2495_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2432_2495_3_5_n_0),
        .DOB(RAM_reg_2432_2495_3_5_n_1),
        .DOC(RAM_reg_2432_2495_3_5_n_2),
        .DOD(NLW_RAM_reg_2432_2495_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2432_2495_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h7C04EBFFFD008167),
    .INIT_B(64'h03FBF00002FF7E98),
    .INIT_C(64'h0348FFF29CFEDE9B),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2432_2495_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2432_2495_6_8_n_0),
        .DOB(RAM_reg_2432_2495_6_8_n_1),
        .DOC(RAM_reg_2432_2495_6_8_n_2),
        .DOD(NLW_RAM_reg_2432_2495_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2432_2495_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h7B430BF38C000000),
    .INIT_B(64'h034F000C7C000002),
    .INIT_C(64'h00B0F00003FFFFFD),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2432_2495_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2432_2495_9_11_n_0),
        .DOB(RAM_reg_2432_2495_9_11_n_1),
        .DOC(RAM_reg_2432_2495_9_11_n_2),
        .DOD(NLW_RAM_reg_2432_2495_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2432_2495_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3F170DD1B5412070),
    .INIT_B(64'h6638CE20B27B2C62),
    .INIT_C(64'hF80017FF4F87DE01),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2496_2559_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2496_2559_0_2_n_0),
        .DOB(RAM_reg_2496_2559_0_2_n_1),
        .DOC(RAM_reg_2496_2559_0_2_n_2),
        .DOD(NLW_RAM_reg_2496_2559_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2496_2559_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_2496_2559_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2304_2367_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2496_2559_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF000000000000000),
    .INIT_B(64'h28FE4E71142D3120),
    .INIT_C(64'h2000167115ED31B0),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2496_2559_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2496_2559_3_5_n_0),
        .DOB(RAM_reg_2496_2559_3_5_n_1),
        .DOC(RAM_reg_2496_2559_3_5_n_2),
        .DOD(NLW_RAM_reg_2496_2559_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2496_2559_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hDFFFFE7115ED304F),
    .INIT_B(64'hF000018EEA12CE00),
    .INIT_C(64'hFAC629FECAE3C8D5),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2496_2559_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2496_2559_6_8_n_0),
        .DOB(RAM_reg_2496_2559_6_8_n_1),
        .DOC(RAM_reg_2496_2559_6_8_n_2),
        .DOD(NLW_RAM_reg_2496_2559_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2496_2559_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0FC7300000E0016F),
    .INIT_B(64'h0038D80000E00000),
    .INIT_C(64'hF00007FFFF1FFE00),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2496_2559_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2496_2559_9_11_n_0),
        .DOB(RAM_reg_2496_2559_9_11_n_1),
        .DOC(RAM_reg_2496_2559_9_11_n_2),
        .DOD(NLW_RAM_reg_2496_2559_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2496_2559_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hAC25F70B44AE7E2C),
    .INIT_B(64'hCA1906F34510BE08),
    .INIT_C(64'h35FEF9FCBB8085F3),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2560_2623_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2560_2623_0_2_n_0),
        .DOB(RAM_reg_2560_2623_0_2_n_1),
        .DOC(RAM_reg_2560_2623_0_2_n_2),
        .DOD(NLW_RAM_reg_2560_2623_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2560_2623_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_2560_2623_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2560_2623_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2560_2623_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    RAM_reg_2560_2623_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_2560_2623_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000000000007BFF),
    .INIT_B(64'h3E7898E514A74657),
    .INIT_C(64'h42789E06FAE73DA4),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2560_2623_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2560_2623_3_5_n_0),
        .DOB(RAM_reg_2560_2623_3_5_n_1),
        .DOC(RAM_reg_2560_2623_3_5_n_2),
        .DOD(NLW_RAM_reg_2560_2623_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2560_2623_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hBA789E07FE98F804),
    .INIT_B(64'h058761F8010003FB),
    .INIT_C(64'hB7FF770A6AB9BB32),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2560_2623_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2560_2623_6_8_n_0),
        .DOB(RAM_reg_2560_2623_6_8_n_1),
        .DOC(RAM_reg_2560_2623_6_8_n_2),
        .DOD(NLW_RAM_reg_2560_2623_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2560_2623_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hCA0006F36EFE427B),
    .INIT_B(64'h3A0006036E80027F),
    .INIT_C(64'h05FFF9FC91000180),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2560_2623_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2560_2623_9_11_n_0),
        .DOB(RAM_reg_2560_2623_9_11_n_1),
        .DOC(RAM_reg_2560_2623_9_11_n_2),
        .DOD(NLW_RAM_reg_2560_2623_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2560_2623_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h7CCE1DCF655AE43B),
    .INIT_B(64'h883FE33295BF1AC7),
    .INIT_C(64'h73C00601FBC001C3),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_256_319_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_0_2_n_0),
        .DOB(RAM_reg_256_319_0_2_n_1),
        .DOC(RAM_reg_256_319_0_2_n_2),
        .DOD(NLW_RAM_reg_256_319_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_256_319_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_256_319_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_256_319_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_256_319_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    RAM_reg_256_319_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_256_319_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFE000000000003C),
    .INIT_B(64'h9C725E81645608B8),
    .INIT_C(64'hF74FE27C95B7FE04),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_256_319_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_3_5_n_0),
        .DOB(RAM_reg_256_319_3_5_n_1),
        .DOC(RAM_reg_256_319_3_5_n_2),
        .DOD(NLW_RAM_reg_256_319_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h84800703FBC801FF),
    .INIT_B(64'h7BE0000000000000),
    .INIT_C(64'h6AA9295EFBA900A2),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_256_319_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_6_8_n_0),
        .DOB(RAM_reg_256_319_6_8_n_1),
        .DOC(RAM_reg_256_319_6_8_n_2),
        .DOD(NLW_RAM_reg_256_319_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h6A253CDDF1E10045),
    .INIT_B(64'hEE22C523FFDEFF80),
    .INIT_C(64'h11C0020000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_256_319_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_256_319_9_11_n_0),
        .DOB(RAM_reg_256_319_9_11_n_1),
        .DOC(RAM_reg_256_319_9_11_n_2),
        .DOD(NLW_RAM_reg_256_319_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hCA4000A73E646740),
    .INIT_B(64'h2C00FB93BEA828FF),
    .INIT_C(64'hF400F8888513F000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2624_2687_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2624_2687_0_2_n_0),
        .DOB(RAM_reg_2624_2687_0_2_n_1),
        .DOC(RAM_reg_2624_2687_0_2_n_2),
        .DOD(NLW_RAM_reg_2624_2687_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2624_2687_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_2624_2687_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2560_2623_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2624_2687_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h03FF07007BFFF000),
    .INIT_B(64'h15FFC0A3463159B0),
    .INIT_C(64'h19FF04283D465980),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2624_2687_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2624_2687_3_5_n_0),
        .DOB(RAM_reg_2624_2687_3_5_n_1),
        .DOC(RAM_reg_2624_2687_3_5_n_2),
        .DOD(NLW_RAM_reg_2624_2687_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2624_2687_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1A00031FF844A67F),
    .INIT_B(64'hE7FFFF8003BBF000),
    .INIT_C(64'hE8001D3AFB52D67F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2624_2687_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2624_2687_6_8_n_0),
        .DOB(RAM_reg_2624_2687_6_8_n_1),
        .DOC(RAM_reg_2624_2687_6_8_n_2),
        .DOD(NLW_RAM_reg_2624_2687_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2624_2687_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0C00E4B602FB2FFF),
    .INIT_B(64'h0BFF030902BF0000),
    .INIT_C(64'hF7FFFF800100F000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2624_2687_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2624_2687_9_11_n_0),
        .DOB(RAM_reg_2624_2687_9_11_n_1),
        .DOC(RAM_reg_2624_2687_9_11_n_2),
        .DOD(NLW_RAM_reg_2624_2687_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2624_2687_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hC74F3E3C551194B9),
    .INIT_B(64'h3A3EBEA838EEE081),
    .INIT_C(64'h03008513E0003F7E),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2688_2751_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2688_2751_0_2_n_0),
        .DOB(RAM_reg_2688_2751_0_2_n_1),
        .DOC(RAM_reg_2688_2751_0_2_n_2),
        .DOD(NLW_RAM_reg_2688_2751_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2688_2751_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_2688_2751_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2560_2623_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2688_2751_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFC007BFFF0000000),
    .INIT_B(64'h054B03290983803C),
    .INIT_C(64'h074139561983F83C),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2688_2751_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2688_2751_3_5_n_0),
        .DOB(RAM_reg_2688_2751_3_5_n_1),
        .DOC(RAM_reg_2688_2751_3_5_n_2),
        .DOD(NLW_RAM_reg_2688_2751_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2688_2751_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF93EFC44E67C383C),
    .INIT_B(64'hFE0003BBF00007C3),
    .INIT_C(64'hF9C4FB42C43F83FF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2688_2751_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2688_2751_6_8_n_0),
        .DOB(RAM_reg_2688_2751_6_8_n_1),
        .DOC(RAM_reg_2688_2751_6_8_n_2),
        .DOD(NLW_RAM_reg_2688_2751_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2688_2751_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h034502EB2FFFF800),
    .INIT_B(64'hFD3A02AF00003800),
    .INIT_C(64'hFE000110F00007FF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2688_2751_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2688_2751_9_11_n_0),
        .DOB(RAM_reg_2688_2751_9_11_n_1),
        .DOC(RAM_reg_2688_2751_9_11_n_2),
        .DOD(NLW_RAM_reg_2688_2751_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2688_2751_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1F74047F0208F833),
    .INIT_B(64'hBE407980E40037CF),
    .INIT_C(64'h85BBE0002FFFCFFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2752_2815_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2752_2815_0_2_n_0),
        .DOB(RAM_reg_2752_2815_0_2_n_1),
        .DOC(RAM_reg_2752_2815_0_2_n_2),
        .DOD(NLW_RAM_reg_2752_2815_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2752_2815_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_2752_2815_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2560_2623_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2752_2815_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h7BFFF00010000000),
    .INIT_B(64'h031F1AC72C003506),
    .INIT_C(64'h39B40AC724000001),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2752_2815_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2752_2815_3_5_n_0),
        .DOB(RAM_reg_2752_2815_3_5_n_1),
        .DOC(RAM_reg_2752_2815_3_5_n_2),
        .DOD(NLW_RAM_reg_2752_2815_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2752_2815_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFC04E538EC003000),
    .INIT_B(64'h03FBF00013FFCFFF),
    .INIT_C(64'h732AFD00CBFF82FD),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2752_2815_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2752_2815_6_8_n_0),
        .DOB(RAM_reg_2752_2815_6_8_n_1),
        .DOC(RAM_reg_2752_2815_6_8_n_2),
        .DOD(NLW_RAM_reg_2752_2815_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2752_2815_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h8A6B17FFE0003503),
    .INIT_B(64'h026F100028003000),
    .INIT_C(64'h0190E00017FFCFFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2752_2815_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2752_2815_9_11_n_0),
        .DOB(RAM_reg_2752_2815_9_11_n_1),
        .DOC(RAM_reg_2752_2815_9_11_n_2),
        .DOD(NLW_RAM_reg_2752_2815_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2752_2815_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h023FAD6058C5863A),
    .INIT_B(64'h7DC06A60E8391F5E),
    .INIT_C(64'hE0002F9F9801FF01),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2816_2879_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2816_2879_0_2_n_0),
        .DOB(RAM_reg_2816_2879_0_2_n_1),
        .DOC(RAM_reg_2816_2879_0_2_n_2),
        .DOD(NLW_RAM_reg_2816_2879_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2816_2879_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_2816_2879_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2816_2879_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2816_2879_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    RAM_reg_2816_2879_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_2816_2879_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF000100007FE0000),
    .INIT_B(64'h0F067E0160C466BF),
    .INIT_C(64'h08067A010FC76024),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2816_2879_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2816_2879_3_5_n_0),
        .DOB(RAM_reg_2816_2879_3_5_n_1),
        .DOC(RAM_reg_2816_2879_3_5_n_2),
        .DOD(NLW_RAM_reg_2816_2879_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2816_2879_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE7F9BE016038605B),
    .INIT_B(64'hF00001FE9FFF9F00),
    .INIT_C(64'hBF81BDFE873A9820),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2816_2879_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2816_2879_6_8_n_0),
        .DOB(RAM_reg_2816_2879_6_8_n_1),
        .DOC(RAM_reg_2816_2879_6_8_n_2),
        .DOD(NLW_RAM_reg_2816_2879_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2816_2879_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h57FFF8006F0306A4),
    .INIT_B(64'h10003C0060FC005B),
    .INIT_C(64'hE00003FF9FFFFF00),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2816_2879_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2816_2879_9_11_n_0),
        .DOB(RAM_reg_2816_2879_9_11_n_1),
        .DOC(RAM_reg_2816_2879_9_11_n_2),
        .DOD(NLW_RAM_reg_2816_2879_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2816_2879_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hC871620DF535DBE1),
    .INIT_B(64'h077160040314FA04),
    .INIT_C(64'h278E9FFC000BC1FB),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2880_2943_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2880_2943_0_2_n_0),
        .DOB(RAM_reg_2880_2943_0_2_n_1),
        .DOC(RAM_reg_2880_2943_0_2_n_2),
        .DOD(NLW_RAM_reg_2880_2943_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2880_2943_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_2880_2943_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2816_2879_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2880_2943_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h18000003FF803FFF),
    .INIT_B(64'h6C020316756A0382),
    .INIT_C(64'h5A03FFF27CA139F9),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2880_2943_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2880_2943_3_5_n_0),
        .DOB(RAM_reg_2880_2943_3_5_n_1),
        .DOC(RAM_reg_2880_2943_3_5_n_2),
        .DOD(NLW_RAM_reg_2880_2943_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2880_2943_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hBE03FFF1831FFC00),
    .INIT_B(64'h01FC000FFF8003FF),
    .INIT_C(64'h936DBFF2EB4CF594),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2880_2943_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2880_2943_6_8_n_0),
        .DOB(RAM_reg_2880_2943_6_8_n_1),
        .DOC(RAM_reg_2880_2943_6_8_n_2),
        .DOD(NLW_RAM_reg_2880_2943_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2880_2943_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hD601FFF608A58A13),
    .INIT_B(64'h3601FFF1F71B0217),
    .INIT_C(64'h09FE000FFF8001E8),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2880_2943_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2880_2943_9_11_n_0),
        .DOB(RAM_reg_2880_2943_9_11_n_1),
        .DOC(RAM_reg_2880_2943_9_11_n_2),
        .DOD(NLW_RAM_reg_2880_2943_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2880_2943_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hEEF3561ADB739BAE),
    .INIT_B(64'h81033038FA1667C1),
    .INIT_C(64'h7FFCF087C1E9E000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2944_3007_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_2944_3007_0_2_n_0),
        .DOB(RAM_reg_2944_3007_0_2_n_1),
        .DOC(RAM_reg_2944_3007_0_2_n_2),
        .DOD(NLW_RAM_reg_2944_3007_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2944_3007_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_2944_3007_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2816_2879_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_2944_3007_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00000F003FFFF000),
    .INIT_B(64'h120CAE2483521505),
    .INIT_C(64'h920F9FE239E91A04),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2944_3007_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_2944_3007_3_5_n_0),
        .DOB(RAM_reg_2944_3007_3_5_n_1),
        .DOC(RAM_reg_2944_3007_3_5_n_2),
        .DOD(NLW_RAM_reg_2944_3007_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2944_3007_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h920F809FFC00F7FB),
    .INIT_B(64'h6DF07F0003FFE000),
    .INIT_C(64'hC9065A36F5158A80),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2944_3007_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_2944_3007_6_8_n_0),
        .DOB(RAM_reg_2944_3007_6_8_n_1),
        .DOC(RAM_reg_2944_3007_6_8_n_2),
        .DOD(NLW_RAM_reg_2944_3007_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2944_3007_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h80073BF08A1370FE),
    .INIT_B(64'h8007048F02171701),
    .INIT_C(64'h7FF8FF0001E8E000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_2944_3007_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_2944_3007_9_11_n_0),
        .DOB(RAM_reg_2944_3007_9_11_n_1),
        .DOC(RAM_reg_2944_3007_9_11_n_2),
        .DOD(NLW_RAM_reg_2944_3007_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_2944_3007_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h305B9BE79AAC9A79),
    .INIT_B(64'h3358FA0277C36579),
    .INIT_C(64'hCC07C1F9F0000386),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3008_3071_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3008_3071_0_2_n_0),
        .DOB(RAM_reg_3008_3071_0_2_n_1),
        .DOC(RAM_reg_3008_3071_0_2_n_2),
        .DOD(NLW_RAM_reg_3008_3071_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3008_3071_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_3008_3071_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_2816_2879_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3008_3071_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00003FFFE0001C00),
    .INIT_B(64'hCE0489E625019502),
    .INIT_C(64'hFCA339FD3A003D03),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3008_3071_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3008_3071_3_5_n_0),
        .DOB(RAM_reg_3008_3071_3_5_n_1),
        .DOC(RAM_reg_3008_3071_3_5_n_2),
        .DOD(NLW_RAM_reg_3008_3071_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3008_3071_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFF5FFC04D7FFDF03),
    .INIT_B(64'h000003FBE00000FC),
    .INIT_C(64'h2E2355150A825A7D),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3008_3071_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3008_3071_6_8_n_0),
        .DOB(RAM_reg_3008_3071_6_8_n_1),
        .DOC(RAM_reg_3008_3071_6_8_n_2),
        .DOD(NLW_RAM_reg_3008_3071_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3008_3071_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3C802A13E0FE7801),
    .INIT_B(64'h3F5F821717019A01),
    .INIT_C(64'hC00001E8E00005FE),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3008_3071_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3008_3071_9_11_n_0),
        .DOB(RAM_reg_3008_3071_9_11_n_1),
        .DOC(RAM_reg_3008_3071_9_11_n_2),
        .DOD(NLW_RAM_reg_3008_3071_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3008_3071_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1BAFA63833B05EF1),
    .INIT_B(64'hFA0A59C7DE304000),
    .INIT_C(64'hC1F1F00033CFBFFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3072_3135_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3072_3135_0_2_n_0),
        .DOB(RAM_reg_3072_3135_0_2_n_1),
        .DOC(RAM_reg_3072_3135_0_2_n_2),
        .DOD(NLW_RAM_reg_3072_3135_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3072_3135_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_3072_3135_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3072_3135_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3072_3135_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    RAM_reg_3072_3135_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_3072_3135_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3FFFE0000C000000),
    .INIT_B(64'h49A62B093D835100),
    .INIT_C(64'h79FD28008E834100),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3072_3135_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3072_3135_3_5_n_0),
        .DOB(RAM_reg_3072_3135_3_5_n_1),
        .DOC(RAM_reg_3072_3135_3_5_n_2),
        .DOD(NLW_RAM_reg_3072_3135_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3072_3135_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hBC04D7FFFF834100),
    .INIT_B(64'h03FBE000007CBEFF),
    .INIT_C(64'h52C13C8F5C7C52C0),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3072_3135_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3072_3135_6_8_n_0),
        .DOB(RAM_reg_3072_3135_6_8_n_1),
        .DOC(RAM_reg_3072_3135_6_8_n_2),
        .DOD(NLW_RAM_reg_3072_3135_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3072_3135_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h2843D4FF4F004000),
    .INIT_B(64'h82470300BF004000),
    .INIT_C(64'h01B8E00000FFBFFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3072_3135_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3072_3135_9_11_n_0),
        .DOB(RAM_reg_3072_3135_9_11_n_1),
        .DOC(RAM_reg_3072_3135_9_11_n_2),
        .DOD(NLW_RAM_reg_3072_3135_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3072_3135_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h80B1790001207D64),
    .INIT_B(64'h49CEF40000000493),
    .INIT_C(64'hF00031FFFFFFF80F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3136_3199_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3136_3199_0_2_n_0),
        .DOB(RAM_reg_3136_3199_0_2_n_1),
        .DOC(RAM_reg_3136_3199_0_2_n_2),
        .DOD(NLW_RAM_reg_3136_3199_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3136_3199_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_3136_3199_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3072_3135_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3136_3199_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE0000E0000000000),
    .INIT_B(64'h1F9C37C01080875C),
    .INIT_C(64'h3E002EC010808373),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3136_3199_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3136_3199_3_5_n_0),
        .DOB(RAM_reg_3136_3199_3_5_n_1),
        .DOC(RAM_reg_3136_3199_3_5_n_2),
        .DOD(NLW_RAM_reg_3136_3199_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3136_3199_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hC1FFFFC01080848F),
    .INIT_B(64'hE000003FEF7F7800),
    .INIT_C(64'h11FEF0A7637C431C),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3136_3199_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3136_3199_6_8_n_0),
        .DOB(RAM_reg_3136_3199_6_8_n_1),
        .DOC(RAM_reg_3136_3199_6_8_n_2),
        .DOD(NLW_RAM_reg_3136_3199_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3136_3199_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hCFFFE98000000773),
    .INIT_B(64'h000039800000048F),
    .INIT_C(64'hE000067FFFFFF800),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3136_3199_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3136_3199_9_11_n_0),
        .DOB(RAM_reg_3136_3199_9_11_n_1),
        .DOC(RAM_reg_3136_3199_9_11_n_2),
        .DOD(NLW_RAM_reg_3136_3199_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3136_3199_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hBD786020F3C52DE5),
    .INIT_B(64'h290060200812DA02),
    .INIT_C(64'h69FF9FDFF00FC1F9),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3200_3263_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3200_3263_0_2_n_0),
        .DOB(RAM_reg_3200_3263_0_2_n_1),
        .DOC(RAM_reg_3200_3263_0_2_n_2),
        .DOD(NLW_RAM_reg_3200_3263_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3200_3263_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_3200_3263_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3072_3135_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3200_3263_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1600000000003FFF),
    .INIT_B(64'hD3C602602BDD27F5),
    .INIT_C(64'hB746026023F21BFD),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3200_3263_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3200_3263_3_5_n_0),
        .DOB(RAM_reg_3200_3263_3_5_n_1),
        .DOC(RAM_reg_3200_3263_3_5_n_2),
        .DOD(NLW_RAM_reg_3200_3263_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3200_3263_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h7FC60260280FFE04),
    .INIT_B(64'h0039FD9FD00001FB),
    .INIT_C(64'h15D99FDB4BBD0D43),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3200_3263_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3200_3263_6_8_n_0),
        .DOB(RAM_reg_3200_3263_6_8_n_1),
        .DOC(RAM_reg_3200_3263_6_8_n_2),
        .DOD(NLW_RAM_reg_3200_3263_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3200_3263_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hB540000003D26001),
    .INIT_B(64'h7DC00000080F8207),
    .INIT_C(64'h023FFFFFF00001F8),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3200_3263_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3200_3263_9_11_n_0),
        .DOB(RAM_reg_3200_3263_9_11_n_1),
        .DOC(RAM_reg_3200_3263_9_11_n_2),
        .DOD(NLW_RAM_reg_3200_3263_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3200_3263_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE3F843C2F3FF964B),
    .INIT_B(64'h0807C79D0E20C288),
    .INIT_C(64'h1C003FE001E17DF7),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_320_383_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_0_2_n_0),
        .DOB(RAM_reg_320_383_0_2_n_1),
        .DOC(RAM_reg_320_383_0_2_n_2),
        .DOD(NLW_RAM_reg_320_383_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_320_383_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_320_383_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_256_319_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00000000001EFFFF),
    .INIT_B(64'hAB1343C50DDE8100),
    .INIT_C(64'h48EFC79FFC410200),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_320_383_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_3_5_n_0),
        .DOB(RAM_reg_320_383_3_5_n_1),
        .DOC(RAM_reg_320_383_3_5_n_2),
        .DOD(NLW_RAM_reg_320_383_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1C003FE003BE7CFF),
    .INIT_B(64'h000000000000FFFF),
    .INIT_C(64'h54FC742A1278A13C),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_320_383_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_6_8_n_0),
        .DOB(RAM_reg_320_383_6_8_n_1),
        .DOC(RAM_reg_320_383_6_8_n_2),
        .DOD(NLW_RAM_reg_320_383_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE3FC0C4A1106DDC3),
    .INIT_B(64'h1403FC75EF808100),
    .INIT_C(64'h0800038000007EFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_320_383_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_320_383_9_11_n_0),
        .DOB(RAM_reg_320_383_9_11_n_1),
        .DOC(RAM_reg_320_383_9_11_n_2),
        .DOD(NLW_RAM_reg_320_383_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0E809DC62DE51170),
    .INIT_B(64'h0E804010DA0258CF),
    .INIT_C(64'hF17FE00FC1F9E000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3264_3327_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3264_3327_0_2_n_0),
        .DOB(RAM_reg_3264_3327_0_2_n_1),
        .DOC(RAM_reg_3264_3327_0_2_n_2),
        .DOD(NLW_RAM_reg_3264_3327_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3264_3327_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_3264_3327_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3072_3135_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3264_3327_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h000000003FFFE000),
    .INIT_B(64'h04818DBD87FEF976),
    .INIT_C(64'h0481AFD23BFF8908),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3264_3327_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3264_3327_3_5_n_0),
        .DOB(RAM_reg_3264_3327_3_5_n_1),
        .DOC(RAM_reg_3264_3327_3_5_n_2),
        .DOD(NLW_RAM_reg_3264_3327_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3264_3327_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0481B00FFE0646FF),
    .INIT_B(64'hFB7E400001F9E000),
    .INIT_C(64'hFFFC2C3D9CED80B7),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3264_3327_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3264_3327_6_8_n_0),
        .DOB(RAM_reg_3264_3327_6_8_n_1),
        .DOC(RAM_reg_3264_3327_6_8_n_2),
        .DOD(NLW_RAM_reg_3264_3327_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3264_3327_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00002FD260014FB7),
    .INIT_B(64'h0000300F82070048),
    .INIT_C(64'hFFFFC00001F8E000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3264_3327_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3264_3327_9_11_n_0),
        .DOB(RAM_reg_3264_3327_9_11_n_1),
        .DOC(RAM_reg_3264_3327_9_11_n_2),
        .DOD(NLW_RAM_reg_3264_3327_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3264_3327_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h2260AFEB31A0D195),
    .INIT_B(64'h90105804785F4599),
    .INIT_C(64'hC00FC1F9C00005FE),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3328_3391_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3328_3391_0_2_n_0),
        .DOB(RAM_reg_3328_3391_0_2_n_1),
        .DOC(RAM_reg_3328_3391_0_2_n_2),
        .DOD(NLW_RAM_reg_3328_3391_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3328_3391_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_3328_3391_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3328_3391_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3328_3391_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    RAM_reg_3328_3391_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_3328_3391_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00003FFFE0003A00),
    .INIT_B(64'h23CE03FA906B73A1),
    .INIT_C(64'h6FE03FFB8010FB81),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3328_3391_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3328_3391_3_5_n_0),
        .DOB(RAM_reg_3328_3391_3_5_n_1),
        .DOC(RAM_reg_3328_3391_3_5_n_2),
        .DOD(NLW_RAM_reg_3328_3391_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3328_3391_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h501FFE024FFF3FE1),
    .INIT_B(64'h800001FDE000001E),
    .INIT_C(64'h64161EF1A067B15E),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3328_3391_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3328_3391_6_8_n_0),
        .DOB(RAM_reg_3328_3391_6_8_n_1),
        .DOC(RAM_reg_3328_3391_6_8_n_2),
        .DOD(NLW_RAM_reg_3328_3391_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3328_3391_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h6BF0620D6FE77920),
    .INIT_B(64'h500F800720183D60),
    .INIT_C(64'h800001F8C000029F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3328_3391_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3328_3391_9_11_n_0),
        .DOB(RAM_reg_3328_3391_9_11_n_1),
        .DOC(RAM_reg_3328_3391_9_11_n_2),
        .DOD(NLW_RAM_reg_3328_3391_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3328_3391_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hAFEE7960989201E1),
    .INIT_B(64'h9805389F46AC01E0),
    .INIT_C(64'h41F9C00046BFFE1F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3392_3455_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3392_3455_0_2_n_0),
        .DOB(RAM_reg_3392_3455_0_2_n_1),
        .DOC(RAM_reg_3392_3455_0_2_n_2),
        .DOD(NLW_RAM_reg_3392_3455_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3392_3455_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_3392_3455_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3328_3391_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3392_3455_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3FFFE00039400000),
    .INIT_B(64'hE1D54028FFF80164),
    .INIT_C(64'hDFD3501039C80164),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3392_3455_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3392_3455_3_5_n_0),
        .DOB(RAM_reg_3392_3455_3_5_n_1),
        .DOC(RAM_reg_3392_3455_3_5_n_2),
        .DOD(NLW_RAM_reg_3392_3455_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3392_3455_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3E2A8FFF7FF80164),
    .INIT_B(64'h01FDE0000007FE9B),
    .INIT_C(64'hCEB4C127F6953FFB),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3392_3455_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3392_3455_6_8_n_0),
        .DOB(RAM_reg_3392_3455_6_8_n_1),
        .DOC(RAM_reg_3392_3455_6_8_n_2),
        .DOD(NLW_RAM_reg_3392_3455_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3392_3455_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hA20C2FE730A00000),
    .INIT_B(64'h0006201876B00000),
    .INIT_C(64'h01F9C000094FFFFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3392_3455_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3392_3455_9_11_n_0),
        .DOB(RAM_reg_3392_3455_9_11_n_1),
        .DOC(RAM_reg_3392_3455_9_11_n_2),
        .DOD(NLW_RAM_reg_3392_3455_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3392_3455_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h70555B07E0E2C660),
    .INIT_B(64'h398E01080084B01F),
    .INIT_C(64'hC000830FFF7F0000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3456_3519_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3456_3519_0_2_n_0),
        .DOB(RAM_reg_3456_3519_0_2_n_1),
        .DOC(RAM_reg_3456_3519_0_2_n_2),
        .DOD(NLW_RAM_reg_3456_3519_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3456_3519_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_3456_3519_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3328_3391_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3456_3519_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE0007CF000000000),
    .INIT_B(64'h615D5C4E18983267),
    .INIT_C(64'h5041FD7218997BE7),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3456_3519_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3456_3519_3_5_n_0),
        .DOB(RAM_reg_3456_3519_3_5_n_1),
        .DOC(RAM_reg_3456_3519_3_5_n_2),
        .DOD(NLW_RAM_reg_3456_3519_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3456_3519_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h8FBE7F7E18998418),
    .INIT_B(64'hE0000081E7660000),
    .INIT_C(64'hE39E5973C7053D9F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3456_3519_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3456_3519_6_8_n_0),
        .DOB(RAM_reg_3456_3519_6_8_n_1),
        .DOC(RAM_reg_3456_3519_6_8_n_2),
        .DOD(NLW_RAM_reg_3456_3519_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3456_3519_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h2FFFF97E0061767F),
    .INIT_B(64'h20007B7E00018000),
    .INIT_C(64'hC0000481FFFE0000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3456_3519_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3456_3519_9_11_n_0),
        .DOB(RAM_reg_3456_3519_9_11_n_1),
        .DOC(RAM_reg_3456_3519_9_11_n_2),
        .DOD(NLW_RAM_reg_3456_3519_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3456_3519_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hB32098963DC309AB),
    .INIT_B(64'h8214600B603C9C01),
    .INIT_C(64'h8307FFFC800041FD),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3520_3583_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3520_3583_0_2_n_0),
        .DOB(RAM_reg_3520_3583_0_2_n_1),
        .DOC(RAM_reg_3520_3583_0_2_n_2),
        .DOD(NLW_RAM_reg_3520_3583_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3520_3583_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_3520_3583_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3328_3391_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3520_3583_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h7CF8000000003FFF),
    .INIT_B(64'h2F348461CCC421F2),
    .INIT_C(64'hFEFB84655EC7DFF6),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3520_3583_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3520_3583_3_5_n_0),
        .DOB(RAM_reg_3520_3583_3_5_n_1),
        .DOC(RAM_reg_3520_3583_3_5_n_2),
        .DOD(NLW_RAM_reg_3520_3583_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3520_3583_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFFF8466A1383E0B),
    .INIT_B(64'h00007B98000001FD),
    .INIT_C(64'h3FE8B39EC23C7C31),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3520_3583_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3520_3583_6_8_n_0),
        .DOB(RAM_reg_3520_3583_6_8_n_1),
        .DOC(RAM_reg_3520_3583_6_8_n_2),
        .DOD(NLW_RAM_reg_3520_3583_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3520_3583_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFEEF80045DFF8208),
    .INIT_B(64'hFFEF8007A0000002),
    .INIT_C(64'h00107FF8000001FD),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3520_3583_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3520_3583_9_11_n_0),
        .DOB(RAM_reg_3520_3583_9_11_n_1),
        .DOC(RAM_reg_3520_3583_9_11_n_2),
        .DOD(NLW_RAM_reg_3520_3583_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3520_3583_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF43CE00319E17655),
    .INIT_B(64'h0808DBFC9C03398E),
    .INIT_C(64'hFFF2800041FDC000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3584_3647_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3584_3647_0_2_n_0),
        .DOB(RAM_reg_3584_3647_0_2_n_1),
        .DOC(RAM_reg_3584_3647_0_2_n_2),
        .DOD(NLW_RAM_reg_3584_3647_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3584_3647_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_3584_3647_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3584_3647_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3584_3647_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000800000)) 
    RAM_reg_3584_3647_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_3584_3647_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h000100003FFFE000),
    .INIT_B(64'h11D159826BE82702),
    .INIT_C(64'hF1D57C03DDFC1003),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3584_3647_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3584_3647_3_5_n_0),
        .DOB(RAM_reg_3584_3647_3_5_n_1),
        .DOC(RAM_reg_3584_3647_3_5_n_2),
        .DOD(NLW_RAM_reg_3584_3647_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3584_3647_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF1DB03FC3E01CFFC),
    .INIT_B(64'h0E20800001FFE000),
    .INIT_C(64'h2408E3F05EF7E48D),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3584_3647_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3584_3647_6_8_n_0),
        .DOB(RAM_reg_3584_3647_6_8_n_1),
        .DOC(RAM_reg_3584_3647_6_8_n_2),
        .DOD(NLW_RAM_reg_3584_3647_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3584_3647_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE004DBF3A0082CFE),
    .INIT_B(64'hE00A800C00022300),
    .INIT_C(64'h1FF1000001FDC000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3584_3647_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3584_3647_9_11_n_0),
        .DOB(RAM_reg_3584_3647_9_11_n_1),
        .DOC(RAM_reg_3584_3647_9_11_n_2),
        .DOD(NLW_RAM_reg_3584_3647_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3584_3647_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h8F7B0AC17029B9F9),
    .INIT_B(64'h36849E023FC70102),
    .INIT_C(64'h800043FDC0000183),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3648_3711_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3648_3711_0_2_n_0),
        .DOB(RAM_reg_3648_3711_0_2_n_1),
        .DOC(RAM_reg_3648_3711_0_2_n_2),
        .DOD(NLW_RAM_reg_3648_3711_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3648_3711_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_3648_3711_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3584_3647_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3648_3711_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00003DFFE000FE7C),
    .INIT_B(64'h3752EEFE251EBA6C),
    .INIT_C(64'h3953DDFF121EFF7F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3648_3711_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3648_3711_3_5_n_0),
        .DOB(RAM_reg_3648_3711_3_5_n_1),
        .DOC(RAM_reg_3648_3711_3_5_n_2),
        .DOD(NLW_RAM_reg_3648_3711_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3648_3711_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h86AC3E02CFE1FFFF),
    .INIT_B(64'h000001FDE0000000),
    .INIT_C(64'h0A8C8FF7C181BE70),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3648_3711_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3648_3711_6_8_n_0),
        .DOB(RAM_reg_3648_3711_6_8_n_1),
        .DOC(RAM_reg_3648_3711_6_8_n_2),
        .DOD(NLW_RAM_reg_3648_3711_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3648_3711_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h33FFE10929FFFF73),
    .INIT_B(64'h840001032600FFF3),
    .INIT_C(64'h000000FCC000000C),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3648_3711_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3648_3711_9_11_n_0),
        .DOB(RAM_reg_3648_3711_9_11_n_1),
        .DOC(RAM_reg_3648_3711_9_11_n_2),
        .DOD(NLW_RAM_reg_3648_3711_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3648_3711_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h8FCA70217C892F16),
    .INIT_B(64'h9F013FCE00D140D4),
    .INIT_C(64'h42FCC00100C17FEC),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3712_3775_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3712_3775_0_2_n_0),
        .DOB(RAM_reg_3712_3775_0_2_n_1),
        .DOC(RAM_reg_3712_3775_0_2_n_2),
        .DOD(NLW_RAM_reg_3712_3775_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3712_3775_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_3712_3775_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3584_3647_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3712_3775_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3DFFE000FF3E8003),
    .INIT_B(64'hEDFF2416DD31B605),
    .INIT_C(64'hDCFF1217FF9DCE25),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3712_3775_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3712_3775_3_5_n_0),
        .DOB(RAM_reg_3712_3775_3_5_n_1),
        .DOC(RAM_reg_3712_3775_3_5_n_2),
        .DOD(NLW_RAM_reg_3712_3775_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3712_3775_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3E03CFE9FFFDFE3D),
    .INIT_B(64'h01FCE000000201C2),
    .INIT_C(64'h286565E1BF4CADED),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3712_3775_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3712_3775_6_8_n_0),
        .DOB(RAM_reg_3712_3775_6_8_n_1),
        .DOC(RAM_reg_3712_3775_6_8_n_2),
        .DOD(NLW_RAM_reg_3712_3775_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3712_3775_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h45182DFEBFACDC25),
    .INIT_B(64'h81032201BFECFC3D),
    .INIT_C(64'h00FCC000401303C2),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3712_3775_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3712_3775_9_11_n_0),
        .DOB(RAM_reg_3712_3775_9_11_n_1),
        .DOC(RAM_reg_3712_3775_9_11_n_2),
        .DOD(NLW_RAM_reg_3712_3775_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3712_3775_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hC6B13E091F8332FF),
    .INIT_B(64'h89CF010516139F00),
    .INIT_C(64'h7001010119F3C000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3776_3839_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3776_3839_0_2_n_0),
        .DOB(RAM_reg_3776_3839_0_2_n_1),
        .DOC(RAM_reg_3776_3839_0_2_n_2),
        .DOD(NLW_RAM_reg_3776_3839_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3776_3839_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_3776_3839_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3584_3647_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3776_3839_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE000FEFEE00C0000),
    .INIT_B(64'h9297B7B3F52D1B5F),
    .INIT_C(64'hB017FECBFB5EB85F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3776_3839_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3776_3839_3_5_n_0),
        .DOB(RAM_reg_3776_3839_3_5_n_1),
        .DOC(RAM_reg_3776_3839_3_5_n_2),
        .DOD(NLW_RAM_reg_3776_3839_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3776_3839_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h4FE9FFFBFF7FC7A0),
    .INIT_B(64'hE000000400800000),
    .INIT_C(64'h5149F5FBCC55E325),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3776_3839_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3776_3839_6_8_n_0),
        .DOB(RAM_reg_3776_3839_6_8_n_1),
        .DOC(RAM_reg_3776_3839_6_8_n_2),
        .DOD(NLW_RAM_reg_3776_3839_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3776_3839_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0D7FFCCBCA765FFF),
    .INIT_B(64'h0281FDFBCE778000),
    .INIT_C(64'hE000020431880000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3776_3839_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3776_3839_9_11_n_0),
        .DOB(RAM_reg_3776_3839_9_11_n_1),
        .DOC(RAM_reg_3776_3839_9_11_n_2),
        .DOD(NLW_RAM_reg_3776_3839_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3776_3839_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h43C103A2E52F16B8),
    .INIT_B(64'hC40105C35BC69C03),
    .INIT_C(64'hC00107E3400041FD),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3840_3903_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3840_3903_0_2_n_0),
        .DOB(RAM_reg_3840_3903_0_2_n_1),
        .DOC(RAM_reg_3840_3903_0_2_n_2),
        .DOD(NLW_RAM_reg_3840_3903_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3840_3903_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_3840_3903_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3840_3903_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3840_3903_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    RAM_reg_3840_3903_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_3840_3903_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3FFEF81C80003FFF),
    .INIT_B(64'hBD6BF2FE34F627F1),
    .INIT_C(64'h7EF7F59CE4FE1CF1),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3840_3903_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3840_3903_3_5_n_0),
        .DOB(RAM_reg_3840_3903_3_5_n_1),
        .DOC(RAM_reg_3840_3903_3_5_n_2),
        .DOD(NLW_RAM_reg_3840_3903_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3840_3903_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFFFF7FFDB01FE0C),
    .INIT_B(64'h00000800000001FF),
    .INIT_C(64'h496BF2BD0B638AAD),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3840_3903_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3840_3903_6_8_n_0),
        .DOB(RAM_reg_3840_3903_6_8_n_1),
        .DOC(RAM_reg_3840_3903_6_8_n_2),
        .DOD(NLW_RAM_reg_3840_3903_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3840_3903_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hCAF7F5DEEFFFF502),
    .INIT_B(64'hCBFFF7FFD0000102),
    .INIT_C(64'h34000800000000FD),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3840_3903_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3840_3903_9_11_n_0),
        .DOB(RAM_reg_3840_3903_9_11_n_1),
        .DOC(RAM_reg_3840_3903_9_11_n_2),
        .DOD(NLW_RAM_reg_3840_3903_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3840_3903_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hBA3A2243E2217BAA),
    .INIT_B(64'hCEE23BE985C0002D),
    .INIT_C(64'h047DC421FEFFFFF0),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_384_447_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_0_2_n_0),
        .DOB(RAM_reg_384_447_0_2_n_1),
        .DOC(RAM_reg_384_447_0_2_n_2),
        .DOD(NLW_RAM_reg_384_447_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_384_447_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_384_447_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_256_319_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000001E7FFFFFC0),
    .INIT_B(64'hD2253FF2D6125F22),
    .INIT_C(64'hE6F839285212FFDD),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_384_447_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_3_5_n_0),
        .DOB(RAM_reg_384_447_3_5_n_1),
        .DOC(RAM_reg_384_447_3_5_n_2),
        .DOD(NLW_RAM_reg_384_447_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0C7FC61FACED0020),
    .INIT_B(64'h000000007FFFFFC0),
    .INIT_C(64'h2CDA13ECDE1F2035),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_384_447_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_6_8_n_0),
        .DOB(RAM_reg_384_447_6_8_n_1),
        .DOC(RAM_reg_384_447_6_8_n_2),
        .DOD(NLW_RAM_reg_384_447_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h34DDD51AA5E0A02F),
    .INIT_B(64'hCE5FEE000100A000),
    .INIT_C(64'h002000007EFF5FC0),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_384_447_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_384_447_9_11_n_0),
        .DOB(RAM_reg_384_447_9_11_n_1),
        .DOC(RAM_reg_384_447_9_11_n_2),
        .DOD(NLW_RAM_reg_384_447_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h2923500D16B04074),
    .INIT_B(64'h0F772DC69C030184),
    .INIT_C(64'h0F77000041FDF80B),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3904_3967_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3904_3967_0_2_n_0),
        .DOB(RAM_reg_3904_3967_0_2_n_1),
        .DOC(RAM_reg_3904_3967_0_2_n_2),
        .DOD(NLW_RAM_reg_3904_3967_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3904_3967_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_3904_3967_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3840_3903_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3904_3967_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF088C0003FFFE000),
    .INIT_B(64'hF45C01E226F587A9),
    .INIT_C(64'hFB2B03FE1CF5B603),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3904_3967_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3904_3967_3_5_n_0),
        .DOB(RAM_reg_3904_3967_3_5_n_1),
        .DOC(RAM_reg_3904_3967_3_5_n_2),
        .DOD(NLW_RAM_reg_3904_3967_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3904_3967_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFF7FBC01FE0849FF),
    .INIT_B(64'h0080400001FFE000),
    .INIT_C(64'hF00CBE03898958AA),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3904_3967_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3904_3967_6_8_n_0),
        .DOB(RAM_reg_3904_3967_6_8_n_1),
        .DOC(RAM_reg_3904_3967_6_8_n_2),
        .DOD(NLW_RAM_reg_3904_3967_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3904_3967_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFF7B3DFFF4020EFD),
    .INIT_B(64'hFF7F800001020103),
    .INIT_C(64'h0080400000FDE000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3904_3967_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3904_3967_9_11_n_0),
        .DOB(RAM_reg_3904_3967_9_11_n_1),
        .DOC(RAM_reg_3904_3967_9_11_n_2),
        .DOD(NLW_RAM_reg_3904_3967_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3904_3967_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h5B4D973459D96582),
    .INIT_B(64'h0C861D8718130B03),
    .INIT_C(64'h200040F9E00C7903),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3968_4031_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_3968_4031_0_2_n_0),
        .DOB(RAM_reg_3968_4031_0_2_n_1),
        .DOC(RAM_reg_3968_4031_0_2_n_2),
        .DOD(NLW_RAM_reg_3968_4031_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3968_4031_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_3968_4031_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3840_3903_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_3968_4031_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hC0003FFFE00086FC),
    .INIT_B(64'h8B82447C8ED097E1),
    .INIT_C(64'h23FE5C7DBE096EFE),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3968_4031_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_3968_4031_3_5_n_0),
        .DOB(RAM_reg_3968_4031_3_5_n_1),
        .DOC(RAM_reg_3968_4031_3_5_n_2),
        .DOD(NLW_RAM_reg_3968_4031_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3968_4031_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hBC01BE8041FF7FFF),
    .INIT_B(64'h400001FFE0008000),
    .INIT_C(64'hA60189C041D761E1),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3968_4031_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_3968_4031_6_8_n_0),
        .DOB(RAM_reg_3968_4031_6_8_n_1),
        .DOC(RAM_reg_3968_4031_6_8_n_2),
        .DOD(NLW_RAM_reg_3968_4031_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3968_4031_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h15FFF4020FF6F8FE),
    .INIT_B(64'hA8000102000979FF),
    .INIT_C(64'h400000FDE0008600),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_3968_4031_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_3968_4031_9_11_n_0),
        .DOB(RAM_reg_3968_4031_9_11_n_1),
        .DOC(RAM_reg_3968_4031_9_11_n_2),
        .DOD(NLW_RAM_reg_3968_4031_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_3968_4031_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hB7F450F89E1CC658),
    .INIT_B(64'h3D071818E301CFCC),
    .INIT_C(64'h60F9E005FF01CFDC),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4032_4095_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_4032_4095_0_2_n_0),
        .DOB(RAM_reg_4032_4095_0_2_n_1),
        .DOC(RAM_reg_4032_4095_0_2_n_2),
        .DOD(NLW_RAM_reg_4032_4095_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4032_4095_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_4032_4095_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_3840_3903_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_4032_4095_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1FFFE00000FE3023),
    .INIT_B(64'hC1FECF7C39F9FBA6),
    .INIT_C(64'hDDFDFF026EFE366B),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4032_4095_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_4032_4095_3_5_n_0),
        .DOB(RAM_reg_4032_4095_3_5_n_1),
        .DOC(RAM_reg_4032_4095_3_5_n_2),
        .DOD(NLW_RAM_reg_4032_4095_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4032_4095_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3F0000FC8FFFFFFF),
    .INIT_B(64'h00FFE001F0000000),
    .INIT_C(64'h28E0405B7BFC73A7),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4032_4095_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_4032_4095_6_8_n_0),
        .DOB(RAM_reg_4032_4095_6_8_n_1),
        .DOC(RAM_reg_4032_4095_6_8_n_2),
        .DOD(NLW_RAM_reg_4032_4095_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4032_4095_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hD4020FF96EFFBE6B),
    .INIT_B(64'h010200058FFFFFFF),
    .INIT_C(64'h00FDE000F0000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4032_4095_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_4032_4095_9_11_n_0),
        .DOB(RAM_reg_4032_4095_9_11_n_1),
        .DOC(RAM_reg_4032_4095_9_11_n_2),
        .DOD(NLW_RAM_reg_4032_4095_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4032_4095_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h8C605BD2774A2349),
    .INIT_B(64'h883948CC7D58C886),
    .INIT_C(64'h7005BFC07DD8C000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4096_4159_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_4096_4159_0_2_n_0),
        .DOB(RAM_reg_4096_4159_0_2_n_1),
        .DOC(RAM_reg_4096_4159_0_2_n_2),
        .DOD(NLW_RAM_reg_4096_4159_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4096_4159_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_4096_4159_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_4096_4159_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_4096_4159_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    RAM_reg_4096_4159_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_4096_4159_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE000003F82270000),
    .INIT_B(64'hCEC54BFF78B6A29A),
    .INIT_C(64'hFFA34CFF85EF47FE),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4096_4159_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_4096_4159_3_5_n_0),
        .DOB(RAM_reg_4096_4159_3_5_n_1),
        .DOC(RAM_reg_4096_4159_3_5_n_2),
        .DOD(NLW_RAM_reg_4096_4159_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4096_4159_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h007CB7FFFD7FF801),
    .INIT_B(64'hE001F80002000000),
    .INIT_C(64'h11526BFFCC778D00),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4096_4159_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_4096_4159_6_8_n_0),
        .DOB(RAM_reg_4096_4159_6_8_n_1),
        .DOC(RAM_reg_4096_4159_6_8_n_2),
        .DOD(NLW_RAM_reg_4096_4159_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4096_4159_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0ED96CFFB56F5AFF),
    .INIT_B(64'h002497FFFDFFE000),
    .INIT_C(64'hE001F80002000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4096_4159_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_4096_4159_9_11_n_0),
        .DOB(RAM_reg_4096_4159_9_11_n_1),
        .DOC(RAM_reg_4096_4159_9_11_n_2),
        .DOD(NLW_RAM_reg_4096_4159_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4096_4159_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFDDEB81C877266FA),
    .INIT_B(64'h1CC03880408C7D03),
    .INIT_C(64'h0BC03880C00020FD),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4160_4223_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_4160_4223_0_2_n_0),
        .DOB(RAM_reg_4160_4223_0_2_n_1),
        .DOC(RAM_reg_4160_4223_0_2_n_2),
        .DOD(NLW_RAM_reg_4160_4223_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4160_4223_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_4160_4223_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_4096_4159_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_4160_4223_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h003FC77F00001FFF),
    .INIT_B(64'hF2F787FC2F2DE1F6),
    .INIT_C(64'hF5FFFF7F2FEFFDF5),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4160_4223_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_4160_4223_3_5_n_0),
        .DOB(RAM_reg_4160_4223_3_5_n_1),
        .DOC(RAM_reg_4160_4223_3_5_n_2),
        .DOD(NLW_RAM_reg_4160_4223_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4160_4223_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0FFFFFFF90101F08),
    .INIT_B(64'hF8000000400000FF),
    .INIT_C(64'hD2FF476D98986840),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4160_4223_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_4160_4223_6_8_n_0),
        .DOB(RAM_reg_4160_4223_6_8_n_1),
        .DOC(RAM_reg_4160_4223_6_8_n_2),
        .DOD(NLW_RAM_reg_4160_4223_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4160_4223_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF5FF7FEF377F9402),
    .INIT_B(64'h0FFF7FEF80000102),
    .INIT_C(64'hF8008010400000FD),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4160_4223_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_4160_4223_9_11_n_0),
        .DOB(RAM_reg_4160_4223_9_11_n_1),
        .DOC(RAM_reg_4160_4223_9_11_n_2),
        .DOD(NLW_RAM_reg_4160_4223_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4160_4223_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h780CAE8C46CABEC8),
    .INIT_B(64'h0000017E7D03B83D),
    .INIT_C(64'h0000800020FD4001),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4224_4287_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_4224_4287_0_2_n_0),
        .DOB(RAM_reg_4224_4287_0_2_n_1),
        .DOC(RAM_reg_4224_4287_0_2_n_2),
        .DOD(NLW_RAM_reg_4224_4287_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4224_4287_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_4224_4287_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_4096_4159_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_4224_4287_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFFF40001FFFE000),
    .INIT_B(64'h7DFE5F2730C2EFA8),
    .INIT_C(64'hFFFFFFE7EDF1DF80),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4224_4287_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_4224_4287_3_5_n_0),
        .DOB(RAM_reg_4224_4287_3_5_n_1),
        .DOC(RAM_reg_4224_4287_3_5_n_2),
        .DOD(NLW_RAM_reg_4224_4287_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4224_4287_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFFFA0181F0C007F),
    .INIT_B(64'h0000400000FFE001),
    .INIT_C(64'hE7F772A44B703251),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4224_4287_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_4224_4287_6_8_n_0),
        .DOB(RAM_reg_4224_4287_6_8_n_1),
        .DOC(RAM_reg_4224_4287_6_8_n_2),
        .DOD(NLW_RAM_reg_4224_4287_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4224_4287_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE7F7CD6795322FD1),
    .INIT_B(64'hE7F7A0180032202E),
    .INIT_C(64'h1808400000CDC001),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4224_4287_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_4224_4287_9_11_n_0),
        .DOB(RAM_reg_4224_4287_9_11_n_1),
        .DOC(RAM_reg_4224_4287_9_11_n_2),
        .DOD(NLW_RAM_reg_4224_4287_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4224_4287_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h2F0456C22E2A579C),
    .INIT_B(64'hA0FE6D3339DB7D80),
    .INIT_C(64'h800020CDC0010B80),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4288_4351_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_4288_4351_0_2_n_0),
        .DOB(RAM_reg_4288_4351_0_2_n_1),
        .DOC(RAM_reg_4288_4351_0_2_n_2),
        .DOD(NLW_RAM_reg_4288_4351_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4288_4351_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_4288_4351_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_4096_4159_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_4288_4351_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h40001FFFE000007F),
    .INIT_B(64'h906110CA7C0CCDF3),
    .INIT_C(64'hA7E1EDC94C008BFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4288_4351_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_4288_4351_3_5_n_0),
        .DOB(RAM_reg_4288_4351_3_5_n_1),
        .DOC(RAM_reg_4288_4351_3_5_n_2),
        .DOD(NLW_RAM_reg_4288_4351_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4288_4351_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hC81E1F0483F977FF),
    .INIT_B(64'h600000FFE003F800),
    .INIT_C(64'hED360B31A3D2DDFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4288_4351_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_4288_4351_6_8_n_0),
        .DOB(RAM_reg_4288_4351_6_8_n_1),
        .DOC(RAM_reg_4288_4351_6_8_n_2),
        .DOD(NLW_RAM_reg_4288_4351_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4288_4351_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hCAF7D5032FF29BFF),
    .INIT_B(64'h80080033200B67FF),
    .INIT_C(64'h600000CCC001F800),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4288_4351_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_4288_4351_9_11_n_0),
        .DOB(RAM_reg_4288_4351_9_11_n_1),
        .DOC(RAM_reg_4288_4351_9_11_n_2),
        .DOD(NLW_RAM_reg_4288_4351_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4288_4351_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h72C8687BC43CE13E),
    .INIT_B(64'h4D0B3F8068000010),
    .INIT_C(64'h20C5C0031C000010),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4352_4415_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_4352_4415_0_2_n_0),
        .DOB(RAM_reg_4352_4415_0_2_n_1),
        .DOC(RAM_reg_4352_4415_0_2_n_2),
        .DOD(NLW_RAM_reg_4352_4415_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4352_4415_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_4352_4415_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_4352_4415_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_4352_4415_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    RAM_reg_4352_4415_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_4352_4415_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1FFFE00003FFFFEF),
    .INIT_B(64'h10C6380823FFF2EE),
    .INIT_C(64'hEDFD080AAFFFFEFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4352_4415_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_4352_4415_3_5_n_0),
        .DOB(RAM_reg_4352_4415_3_5_n_1),
        .DOC(RAM_reg_4352_4415_3_5_n_2),
        .DOD(NLW_RAM_reg_4352_4415_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4352_4415_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1F30C7F157FFFEFF),
    .INIT_B(64'h00CFE003F8000100),
    .INIT_C(64'h0939EF80B3FFFECC),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4352_4415_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_4352_4415_6_8_n_0),
        .DOB(RAM_reg_4352_4415_6_8_n_1),
        .DOC(RAM_reg_4352_4415_6_8_n_2),
        .DOD(NLW_RAM_reg_4352_4415_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4352_4415_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hD53B2FFABFFFFEDD),
    .INIT_B(64'h000B200147FFFEDD),
    .INIT_C(64'h00C4C003F8000122),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4352_4415_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_4352_4415_9_11_n_0),
        .DOB(RAM_reg_4352_4415_9_11_n_1),
        .DOC(RAM_reg_4352_4415_9_11_n_2),
        .DOD(NLW_RAM_reg_4352_4415_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4352_4415_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hEC014A78F6BA0034),
    .INIT_B(64'hBFA37C000000C7CE),
    .INIT_C(64'h40029C000000E000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4416_4479_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_4416_4479_0_2_n_0),
        .DOB(RAM_reg_4416_4479_0_2_n_1),
        .DOC(RAM_reg_4416_4479_0_2_n_2),
        .DOD(NLW_RAM_reg_4416_4479_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4416_4479_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_4416_4479_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_4352_4415_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_4416_4479_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE00003FFFFFF0000),
    .INIT_B(64'h147DAEDFFEBA2B12),
    .INIT_C(64'h205DA3FFFFFF7BF3),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4416_4479_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_4416_4479_3_5_n_0),
        .DOB(RAM_reg_4416_4479_3_5_n_1),
        .DOC(RAM_reg_4416_4479_3_5_n_2),
        .DOD(NLW_RAM_reg_4416_4479_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4416_4479_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hCFA257FFFFFF040C),
    .INIT_B(64'hE003F8000000E000),
    .INIT_C(64'h89E731FFFD67140D),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4416_4479_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_4416_4479_6_8_n_0),
        .DOB(RAM_reg_4416_4479_6_8_n_1),
        .DOC(RAM_reg_4416_4479_6_8_n_2),
        .DOD(NLW_RAM_reg_4416_4479_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4416_4479_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h49BF2DFFFD676FFE),
    .INIT_B(64'h0600D5FFFD670000),
    .INIT_C(64'hE003FA000298E000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4416_4479_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_4416_4479_9_11_n_0),
        .DOB(RAM_reg_4416_4479_9_11_n_1),
        .DOC(RAM_reg_4416_4479_9_11_n_2),
        .DOD(NLW_RAM_reg_4416_4479_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4416_4479_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF1C8FFFF5426F1CB),
    .INIT_B(64'h7A30000087C14E0A),
    .INIT_C(64'h98000000E00020F5),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4480_4543_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_4480_4543_0_2_n_0),
        .DOB(RAM_reg_4480_4543_0_2_n_1),
        .DOC(RAM_reg_4480_4543_0_2_n_2),
        .DOD(NLW_RAM_reg_4480_4543_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4480_4543_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_4480_4543_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_4352_4415_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_4480_4543_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h07FFFFFF00001FFF),
    .INIT_B(64'h7AEFFFFE5CEE0757),
    .INIT_C(64'h6FFFFFFF58FE68EC),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4480_4543_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_4480_4543_3_5_n_0),
        .DOB(RAM_reg_4480_4543_3_5_n_1),
        .DOC(RAM_reg_4480_4543_3_5_n_2),
        .DOD(NLW_RAM_reg_4480_4543_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4480_4543_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h9FFFFFFF37019F00),
    .INIT_B(64'hF0000000E00000FF),
    .INIT_C(64'h75FFFFFFA3011628),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4480_4543_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_4480_4543_6_8_n_0),
        .DOB(RAM_reg_4480_4543_6_8_n_1),
        .DOC(RAM_reg_4480_4543_6_8_n_2),
        .DOD(NLW_RAM_reg_4480_4543_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4480_4543_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h65FFFFFF7BFF493B),
    .INIT_B(64'h95FFFFFF1400803B),
    .INIT_C(64'hFA000000E00000C4),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4480_4543_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_4480_4543_9_11_n_0),
        .DOB(RAM_reg_4480_4543_9_11_n_1),
        .DOC(RAM_reg_4480_4543_9_11_n_2),
        .DOD(NLW_RAM_reg_4480_4543_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4480_4543_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h7052E421312E9400),
    .INIT_B(64'h81D1434000928BFF),
    .INIT_C(64'hFE30BEFFFFFD7000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_448_511_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_0_2_n_0),
        .DOB(RAM_reg_448_511_0_2_n_1),
        .DOC(RAM_reg_448_511_0_2_n_2),
        .DOD(NLW_RAM_reg_448_511_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_448_511_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_448_511_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_256_319_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h000F7FFFFFC00000),
    .INIT_B(64'h4B125002C5FF1E60),
    .INIT_C(64'hB5F19082FFA30BFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_448_511_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_3_5_n_0),
        .DOB(RAM_reg_448_511_3_5_n_1),
        .DOC(RAM_reg_448_511_3_5_n_2),
        .DOD(NLW_RAM_reg_448_511_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFE0F2E7D001CF000),
    .INIT_B(64'h00007FFFFFC00000),
    .INIT_C(64'h69A6D0138089C09B),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_448_511_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_6_8_n_0),
        .DOB(RAM_reg_448_511_6_8_n_1),
        .DOC(RAM_reg_448_511_6_8_n_2),
        .DOD(NLW_RAM_reg_448_511_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h77D96F6C8024349B),
    .INIT_B(64'h7E004100801FFB64),
    .INIT_C(64'h80003EFF7FC00000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_448_511_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_448_511_9_11_n_0),
        .DOB(RAM_reg_448_511_9_11_n_1),
        .DOC(RAM_reg_448_511_9_11_n_2),
        .DOD(NLW_RAM_reg_448_511_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFFF2188F1F281C0),
    .INIT_B(64'h000072674E02A7B7),
    .INIT_C(64'h0000C40020FD5802),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4544_4607_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_4544_4607_0_2_n_0),
        .DOB(RAM_reg_4544_4607_0_2_n_1),
        .DOC(RAM_reg_4544_4607_0_2_n_2),
        .DOD(NLW_RAM_reg_4544_4607_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4544_4607_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_4544_4607_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_4352_4415_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_4544_4607_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFFF00001FFFE000),
    .INIT_B(64'hFFFEBFF8034EB063),
    .INIT_C(64'hFFFFA3F86CFC904D),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4544_4607_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_4544_4607_3_5_n_0),
        .DOB(RAM_reg_4544_4607_3_5_n_1),
        .DOC(RAM_reg_4544_4607_3_5_n_2),
        .DOD(NLW_RAM_reg_4544_4607_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4544_4607_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFFFC4079F004FB6),
    .INIT_B(64'h0000700000FFE003),
    .INIT_C(64'hFFFFC80516B06CB8),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4544_4607_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_4544_4607_6_8_n_0),
        .DOB(RAM_reg_4544_4607_6_8_n_1),
        .DOC(RAM_reg_4544_4607_6_8_n_2),
        .DOD(NLW_RAM_reg_4544_4607_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4544_4607_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFFFE3FF49B33CF5),
    .INIT_B(64'hFFFF840080B32306),
    .INIT_C(64'h00007000004CC003),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4544_4607_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_4544_4607_9_11_n_0),
        .DOB(RAM_reg_4544_4607_9_11_n_1),
        .DOC(RAM_reg_4544_4607_9_11_n_2),
        .DOD(NLW_RAM_reg_4544_4607_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4544_4607_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0598F032C93321C9),
    .INIT_B(64'h66674E02AFC07A30),
    .INIT_C(64'hD00020FD50069800),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4608_4671_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_4608_4671_0_2_n_0),
        .DOB(RAM_reg_4608_4671_0_2_n_1),
        .DOC(RAM_reg_4608_4671_0_2_n_2),
        .DOD(NLW_RAM_reg_4608_4671_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4608_4671_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_4608_4671_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_4608_4671_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_4608_4671_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    RAM_reg_4608_4671_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_4608_4671_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00001FFFE00007FF),
    .INIT_B(64'h33A0530EB00069CF),
    .INIT_C(64'hBBE06CFC90016FFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4608_4671_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_4608_4671_3_5_n_0),
        .DOB(RAM_reg_4608_4671_3_5_n_1),
        .DOC(RAM_reg_4608_4671_3_5_n_2),
        .DOD(NLW_RAM_reg_4608_4671_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4608_4671_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hC41F9F004FF29FFF),
    .INIT_B(64'h700000FFE007F000),
    .INIT_C(64'h8C3D16B06EF0D5FF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4608_4671_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_4608_4671_6_8_n_0),
        .DOB(RAM_reg_4608_4671_6_8_n_1),
        .DOC(RAM_reg_4608_4671_6_8_n_2),
        .DOD(NLW_RAM_reg_4608_4671_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4608_4671_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hB7FF49B33EF145FF),
    .INIT_B(64'hC00080B32102B5FF),
    .INIT_C(64'h7000004CC007FA00),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4608_4671_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_4608_4671_9_11_n_0),
        .DOB(RAM_reg_4608_4671_9_11_n_1),
        .DOC(RAM_reg_4608_4671_9_11_n_2),
        .DOD(NLW_RAM_reg_4608_4671_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4608_4671_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h3000DE735E4BFFFF),
    .INIT_B(64'h4E02B9C420300000),
    .INIT_C(64'h20FD400698000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4672_4735_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_4672_4735_0_2_n_0),
        .DOB(RAM_reg_4672_4735_0_2_n_1),
        .DOC(RAM_reg_4672_4735_0_2_n_2),
        .DOD(NLW_RAM_reg_4672_4735_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4672_4735_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_4672_4735_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_4608_4671_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_4672_4735_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1FFFE00007FFFFFF),
    .INIT_B(64'h5304B06045DEFFFE),
    .INIT_C(64'h6CFC90254FFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4672_4735_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_4672_4735_3_5_n_0),
        .DOB(RAM_reg_4672_4735_3_5_n_1),
        .DOC(RAM_reg_4672_4735_3_5_n_2),
        .DOD(NLW_RAM_reg_4672_4735_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4672_4735_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h9F004FD2BFFFFFFF),
    .INIT_B(64'h00FFE007F0000000),
    .INIT_C(64'h36F87FD14BFFFFFF),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4672_4735_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_4672_4735_6_8_n_0),
        .DOB(RAM_reg_4672_4735_6_8_n_1),
        .DOC(RAM_reg_4672_4735_6_8_n_2),
        .DOD(NLW_RAM_reg_4672_4735_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4672_4735_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h49FB2FF54BFFFFFF),
    .INIT_B(64'h80FB2002BBFFFFFF),
    .INIT_C(64'h0004C007F4000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4672_4735_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_4672_4735_9_11_n_0),
        .DOB(RAM_reg_4672_4735_9_11_n_1),
        .DOC(RAM_reg_4672_4735_9_11_n_2),
        .DOD(NLW_RAM_reg_4672_4735_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4672_4735_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hAD7C86CAFFFF75A8),
    .INIT_B(64'hA885A0B100002A77),
    .INIT_C(64'h500618800000D000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4736_4799_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_4736_4799_0_2_n_0),
        .DOB(RAM_reg_4736_4799_0_2_n_1),
        .DOC(RAM_reg_4736_4799_0_2_n_2),
        .DOD(NLW_RAM_reg_4736_4799_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4736_4799_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_4736_4799_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_4608_4671_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_4736_4799_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE000077FFFFF0000),
    .INIT_B(64'h736F75FEFFFF23CC),
    .INIT_C(64'hD36F5FFFFFFFA7C0),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4736_4799_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_4736_4799_3_5_n_0),
        .DOB(RAM_reg_4736_4799_3_5_n_1),
        .DOC(RAM_reg_4736_4799_3_5_n_2),
        .DOD(NLW_RAM_reg_4736_4799_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4736_4799_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0C90AFFFFFFFD83F),
    .INIT_B(64'hE007F00000007000),
    .INIT_C(64'hBC9FD3FFFFFFB62C),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4736_4799_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_4736_4799_6_8_n_0),
        .DOB(RAM_reg_4736_4799_6_8_n_1),
        .DOC(RAM_reg_4736_4799_6_8_n_2),
        .DOD(NLW_RAM_reg_4736_4799_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4736_4799_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hAFFF5BFFFFFFB3EF),
    .INIT_B(64'hA000ABFFFFFFC810),
    .INIT_C(64'h4007F40000007000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_4736_4799_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_4736_4799_9_11_n_0),
        .DOB(RAM_reg_4736_4799_9_11_n_1),
        .DOC(RAM_reg_4736_4799_9_11_n_2),
        .DOD(NLW_RAM_reg_4736_4799_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_4736_4799_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h2A4DB1815903C606),
    .INIT_B(64'hC0A0803F1EFFA598),
    .INIT_C(64'hBF7F7F80E0001803),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_512_575_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_0_2_n_0),
        .DOB(RAM_reg_512_575_0_2_n_1),
        .DOC(RAM_reg_512_575_0_2_n_2),
        .DOD(NLW_RAM_reg_512_575_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_512_575_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_512_575_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_512_575_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_512_575_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    RAM_reg_512_575_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_512_575_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h7FFFFFC000000000),
    .INIT_B(64'hD42AF7DD0107A9DD),
    .INIT_C(64'hD502FF8F46FFE39E),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_512_575_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_3_5_n_0),
        .DOB(RAM_reg_512_575_3_5_n_1),
        .DOC(RAM_reg_512_575_3_5_n_2),
        .DOD(NLW_RAM_reg_512_575_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h6A7D0040F8001C03),
    .INIT_B(64'h3FFFFF8000000000),
    .INIT_C(64'hD4220999FEF85662),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_512_575_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_6_8_n_0),
        .DOB(RAM_reg_512_575_6_8_n_1),
        .DOC(RAM_reg_512_575_6_8_n_2),
        .DOD(NLW_RAM_reg_512_575_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h2AFD080847F84A03),
    .INIT_B(64'h40800847F807BD9F),
    .INIT_C(64'h3F7FF78000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_512_575_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_512_575_9_11_n_0),
        .DOB(RAM_reg_512_575_9_11_n_1),
        .DOC(RAM_reg_512_575_9_11_n_2),
        .DOD(NLW_RAM_reg_512_575_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h805C95847EDB519D),
    .INIT_B(64'h905155FBD1240B1A),
    .INIT_C(64'h7FE08A00200030F8),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_576_639_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_0_2_n_0),
        .DOB(RAM_reg_576_639_0_2_n_1),
        .DOC(RAM_reg_576_639_0_2_n_2),
        .DOD(NLW_RAM_reg_576_639_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_576_639_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_576_639_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_512_575_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFF80000000000007),
    .INIT_B(64'hD702D8900DFC4A47),
    .INIT_C(64'hFFBD50FFAFFF1E60),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_576_639_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_3_5_n_0),
        .DOB(RAM_reg_576_639_3_5_n_1),
        .DOC(RAM_reg_576_639_3_5_n_2),
        .DOD(NLW_RAM_reg_576_639_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00408F007000319F),
    .INIT_B(64'hFF80000000000000),
    .INIT_C(64'h30652A7FFE5B28B3),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_576_639_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_6_8_n_0),
        .DOB(RAM_reg_576_639_6_8_n_1),
        .DOC(RAM_reg_576_639_6_8_n_2),
        .DOD(NLW_RAM_reg_576_639_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h205F807FAE5BDC3C),
    .INIT_B(64'h2000DF8071A433C0),
    .INIT_C(64'hDF80000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_576_639_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_576_639_9_11_n_0),
        .DOB(RAM_reg_576_639_9_11_n_1),
        .DOC(RAM_reg_576_639_9_11_n_2),
        .DOD(NLW_RAM_reg_576_639_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hCCB1ABFC57BA537F),
    .INIT_B(64'hF3B0040380696000),
    .INIT_C(64'h004FC000E0187F7F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_640_703_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_0_2_n_0),
        .DOB(RAM_reg_640_703_0_2_n_1),
        .DOC(RAM_reg_640_703_0_2_n_2),
        .DOD(NLW_RAM_reg_640_703_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_640_703_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_640_703_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_512_575_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h000000000007BFFF),
    .INIT_B(64'hE0915477C9D34F4C),
    .INIT_C(64'hFF90AFFF16304FC0),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_640_703_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_3_5_n_0),
        .DOB(RAM_reg_640_703_3_5_n_1),
        .DOC(RAM_reg_640_703_3_5_n_2),
        .DOD(NLW_RAM_reg_640_703_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h006FC000E00FB0BF),
    .INIT_B(64'h0000000000003F7F),
    .INIT_C(64'h1F4E3FFF09125F42),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_640_703_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_6_8_n_0),
        .DOB(RAM_reg_640_703_6_8_n_1),
        .DOC(RAM_reg_640_703_6_8_n_2),
        .DOD(NLW_RAM_reg_640_703_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1F01EFFFD6FCA03D),
    .INIT_B(64'hE0FFC000E0000080),
    .INIT_C(64'h0000000000003F7F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_640_703_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_640_703_9_11_n_0),
        .DOB(RAM_reg_640_703_9_11_n_1),
        .DOC(RAM_reg_640_703_9_11_n_2),
        .DOD(NLW_RAM_reg_640_703_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h2064BE84C3C2A5D2),
    .INIT_B(64'hDF8F7E3B0601A243),
    .INIT_C(64'h00300181F9FF1FB4),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_64_127_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_0_2_n_0),
        .DOB(RAM_reg_64_127_0_2_n_1),
        .DOC(RAM_reg_64_127_0_2_n_2),
        .DOD(NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_64_127_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_64_127_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_0_63_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0000007FFFFFFFF8),
    .INIT_B(64'hFF8BDDA005802F7A),
    .INIT_C(64'hFFFBDDDA03809F77),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_64_127_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_3_5_n_0),
        .DOB(RAM_reg_64_127_3_5_n_1),
        .DOC(RAM_reg_64_127_3_5_n_2),
        .DOD(NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0034227FF87FC088),
    .INIT_B(64'h00000001FFFF3FF0),
    .INIT_C(64'h40767A07EBC0D013),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_64_127_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_6_8_n_0),
        .DOB(RAM_reg_64_127_6_8_n_1),
        .DOC(RAM_reg_64_127_6_8_n_2),
        .DOD(NLW_RAM_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h007004C1163FB007),
    .INIT_B(64'hFFBFFF0206003008),
    .INIT_C(64'h00000001F9FF0FF0),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_64_127_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_64_127_9_11_n_0),
        .DOB(RAM_reg_64_127_9_11_n_1),
        .DOC(RAM_reg_64_127_9_11_n_2),
        .DOD(NLW_RAM_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF2FB9759DA1F3AFD),
    .INIT_B(64'hCF0648D201E08292),
    .INIT_C(64'h300180287F3F7D61),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_704_767_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_0_2_n_0),
        .DOB(RAM_reg_704_767_0_2_n_1),
        .DOC(RAM_reg_704_767_0_2_n_2),
        .DOD(NLW_RAM_reg_704_767_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_704_767_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_704_767_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_512_575_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h00000007BFFFFF80),
    .INIT_B(64'hDC3350420486ED1B),
    .INIT_C(64'hEDCE0FF86480FF5E),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_704_767_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_3_5_n_0),
        .DOB(RAM_reg_704_767_3_5_n_1),
        .DOC(RAM_reg_704_767_3_5_n_2),
        .DOD(NLW_RAM_reg_704_767_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h320180079BBF0021),
    .INIT_B(64'h000000003F7FFF80),
    .INIT_C(64'h03CDB28A340041FC),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_704_767_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_6_8_n_0),
        .DOB(RAM_reg_704_767_6_8_n_1),
        .DOC(RAM_reg_704_767_6_8_n_2),
        .DOD(NLW_RAM_reg_704_767_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h31FC4D94ABFF00BD),
    .INIT_B(64'hFE03806020C00083),
    .INIT_C(64'h000000001F3FFF00),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_704_767_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_704_767_9_11_n_0),
        .DOB(RAM_reg_704_767_9_11_n_1),
        .DOC(RAM_reg_704_767_9_11_n_2),
        .DOD(NLW_RAM_reg_704_767_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF2161B75BAEC80CE),
    .INIT_B(64'h01F5E042827F7F34),
    .INIT_C(64'h000C5FFF7D000003),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_768_831_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_0_2_n_0),
        .DOB(RAM_reg_768_831_0_2_n_1),
        .DOC(RAM_reg_768_831_0_2_n_2),
        .DOD(NLW_RAM_reg_768_831_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_768_831_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    RAM_reg_768_831_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_768_831_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_768_831_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    RAM_reg_768_831_0_2_i_2
       (.I0(addr[9]),
        .I1(addr[11]),
        .I2(we),
        .I3(addr[12]),
        .I4(addr[10]),
        .I5(addr[8]),
        .O(RAM_reg_768_831_0_2_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0003BFBFFF800000),
    .INIT_B(64'hFE8397463FE2084E),
    .INIT_C(64'h01F857803F93FFB4),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_768_831_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_3_5_n_0),
        .DOB(RAM_reg_768_831_3_5_n_1),
        .DOC(RAM_reg_768_831_3_5_n_2),
        .DOD(NLW_RAM_reg_768_831_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0007887FC08C0003),
    .INIT_B(64'h00003FBFFF000000),
    .INIT_C(64'h1AE63F48E1A53F32),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_768_831_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_6_8_n_0),
        .DOB(RAM_reg_768_831_6_8_n_1),
        .DOC(RAM_reg_768_831_6_8_n_2),
        .DOD(NLW_RAM_reg_768_831_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE1F880770011FFF8),
    .INIT_B(64'h00002000008E0007),
    .INIT_C(64'h00001FBFFF000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_768_831_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_768_831_9_11_n_0),
        .DOB(RAM_reg_768_831_9_11_n_1),
        .DOC(RAM_reg_768_831_9_11_n_2),
        .DOD(NLW_RAM_reg_768_831_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h0BF7B8F5216117DA),
    .INIT_B(64'h82608086DE92F5D9),
    .INIT_C(64'h1DDF7FF8000C0826),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_832_895_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_0_2_n_0),
        .DOB(RAM_reg_832_895_0_2_n_1),
        .DOC(RAM_reg_832_895_0_2_n_2),
        .DOD(NLW_RAM_reg_832_895_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_832_895_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    RAM_reg_832_895_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_768_831_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFFBFFF0000000000),
    .INIT_B(64'h95CA3FD90123A4D1),
    .INIT_C(64'h37A83F42FED256D8),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_832_895_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_3_5_n_0),
        .DOB(RAM_reg_832_895_3_5_n_1),
        .DOC(RAM_reg_832_895_3_5_n_2),
        .DOD(NLW_RAM_reg_832_895_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hE857C0BC000C0926),
    .INIT_B(64'h1FBFFF0000000000),
    .INIT_C(64'h6DC8FF5E00871C0E),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_832_895_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_6_8_n_0),
        .DOB(RAM_reg_832_895_6_8_n_1),
        .DOC(RAM_reg_832_895_6_8_n_2),
        .DOD(NLW_RAM_reg_832_895_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hA0570043FFF2F609),
    .INIT_B(64'h000000BC000C09F6),
    .INIT_C(64'h1FBFFF0000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_832_895_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_832_895_9_11_n_0),
        .DOB(RAM_reg_832_895_9_11_n_1),
        .DOC(RAM_reg_832_895_9_11_n_2),
        .DOD(NLW_RAM_reg_832_895_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h1D93C0B90E98EE68),
    .INIT_B(64'h0183FF7CF17EF79D),
    .INIT_C(64'hFE7C000000010004),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_896_959_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_0_2_n_0),
        .DOB(RAM_reg_896_959_0_2_n_1),
        .DOC(RAM_reg_896_959_0_2_n_2),
        .DOD(NLW_RAM_reg_896_959_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_896_959_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    RAM_reg_896_959_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_768_831_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFF00000000000003),
    .INIT_B(64'h0E7DE0BABE8F8105),
    .INIT_C(64'h0FE1FF7D417999FC),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_896_959_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_3_5_n_0),
        .DOB(RAM_reg_896_959_3_5_n_1),
        .DOC(RAM_reg_896_959_3_5_n_2),
        .DOD(NLW_RAM_reg_896_959_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hF01E000000006603),
    .INIT_B(64'hFF00000000000000),
    .INIT_C(64'h3EFD7CF200388627),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_896_959_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_6_8_n_0),
        .DOB(RAM_reg_896_959_6_8_n_1),
        .DOC(RAM_reg_896_959_6_8_n_2),
        .DOD(NLW_RAM_reg_896_959_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hC0617F75FFFE9FF8),
    .INIT_B(64'h001E800800016000),
    .INIT_C(64'hFF00000000000000),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_896_959_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_896_959_9_11_n_0),
        .DOB(RAM_reg_896_959_9_11_n_1),
        .DOC(RAM_reg_896_959_9_11_n_2),
        .DOD(NLW_RAM_reg_896_959_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFF7D18AD51B54AF3),
    .INIT_B(64'hFF72E0128E48A680),
    .INIT_C(64'h0080000000043B9F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_960_1023_0_2
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[0]),
        .DIB(pixel[1]),
        .DIC(pixel[2]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_0_2_n_0),
        .DOB(RAM_reg_960_1023_0_2_n_1),
        .DOC(RAM_reg_960_1023_0_2_n_2),
        .DOD(NLW_RAM_reg_960_1023_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_960_1023_0_2_i_1_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    RAM_reg_960_1023_0_2_i_1
       (.I0(addr[7]),
        .I1(RAM_reg_768_831_0_2_i_2_n_0),
        .I2(addr[6]),
        .O(RAM_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h000000000003DDFF),
    .INIT_B(64'hFF7088AE6E67F460),
    .INIT_C(64'hFF7F70109FFC3360),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_960_1023_3_5
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[3]),
        .DIB(pixel[4]),
        .DIC(pixel[5]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_3_5_n_0),
        .DOB(RAM_reg_960_1023_3_5_n_1),
        .DOC(RAM_reg_960_1023_3_5_n_2),
        .DOD(NLW_RAM_reg_960_1023_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'h008000000003CAFF),
    .INIT_B(64'h0000000000001D9F),
    .INIT_C(64'hFF7005556D6B4A6E),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_960_1023_6_8
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[6]),
        .DIB(pixel[7]),
        .DIC(pixel[8]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_6_8_n_0),
        .DOB(RAM_reg_960_1023_6_8_n_1),
        .DOC(RAM_reg_960_1023_6_8_n_2),
        .DOD(NLW_RAM_reg_960_1023_6_8_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M #(
    .INIT_A(64'hFF7FF8BA9EF48691),
    .INIT_B(64'h0080000000000460),
    .INIT_C(64'h000000000000199F),
    .INIT_D(64'h0000000000000000)) 
    RAM_reg_960_1023_9_11
       (.ADDRA(P[5:0]),
        .ADDRB(P[5:0]),
        .ADDRC(P[5:0]),
        .ADDRD(addr[5:0]),
        .DIA(pixel[9]),
        .DIB(pixel[10]),
        .DIC(pixel[11]),
        .DID(1'b0),
        .DOA(RAM_reg_960_1023_9_11_n_0),
        .DOB(RAM_reg_960_1023_9_11_n_1),
        .DOC(RAM_reg_960_1023_9_11_n_2),
        .DOD(NLW_RAM_reg_960_1023_9_11_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(RAM_reg_960_1023_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \blue[0]_INST_0 
       (.I0(\blue[0]_INST_0_i_1_n_0 ),
        .I1(P[11]),
        .I2(\blue[0]_INST_0_i_2_n_0 ),
        .I3(P[12]),
        .I4(\blue[0]_INST_0_i_3_n_0 ),
        .I5(\current_ver_pos_reg[5] ),
        .O(blue[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_1 
       (.I0(\blue[0]_INST_0_i_4_n_0 ),
        .I1(\blue[0]_INST_0_i_5_n_0 ),
        .I2(P[10]),
        .I3(\blue[0]_INST_0_i_6_n_0 ),
        .I4(P[9]),
        .I5(\blue[0]_INST_0_i_7_n_0 ),
        .O(\blue[0]_INST_0_i_1_n_0 ));
  MUXF7 \blue[0]_INST_0_i_10 
       (.I0(\blue[0]_INST_0_i_27_n_0 ),
        .I1(\blue[0]_INST_0_i_28_n_0 ),
        .O(\blue[0]_INST_0_i_10_n_0 ),
        .S(P[8]));
  MUXF7 \blue[0]_INST_0_i_11 
       (.I0(\blue[0]_INST_0_i_29_n_0 ),
        .I1(\blue[0]_INST_0_i_30_n_0 ),
        .O(\blue[0]_INST_0_i_11_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_12 
       (.I0(RAM_reg_4288_4351_0_2_n_0),
        .I1(RAM_reg_4224_4287_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_4160_4223_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_4096_4159_0_2_n_0),
        .O(\blue[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_13 
       (.I0(RAM_reg_4544_4607_0_2_n_0),
        .I1(RAM_reg_4480_4543_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_4416_4479_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_4352_4415_0_2_n_0),
        .O(\blue[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \blue[0]_INST_0_i_14 
       (.I0(RAM_reg_4608_4671_0_2_n_0),
        .I1(P[6]),
        .I2(RAM_reg_4672_4735_0_2_n_0),
        .I3(P[7]),
        .I4(RAM_reg_4736_4799_0_2_n_0),
        .I5(P[8]),
        .O(\blue[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_15 
       (.I0(RAM_reg_1728_1791_0_2_n_0),
        .I1(RAM_reg_1664_1727_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1600_1663_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1536_1599_0_2_n_0),
        .O(\blue[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_16 
       (.I0(RAM_reg_1984_2047_0_2_n_0),
        .I1(RAM_reg_1920_1983_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1856_1919_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1792_1855_0_2_n_0),
        .O(\blue[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_17 
       (.I0(RAM_reg_1216_1279_0_2_n_0),
        .I1(RAM_reg_1152_1215_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1088_1151_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1024_1087_0_2_n_0),
        .O(\blue[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_18 
       (.I0(RAM_reg_1472_1535_0_2_n_0),
        .I1(RAM_reg_1408_1471_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1344_1407_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1280_1343_0_2_n_0),
        .O(\blue[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_19 
       (.I0(RAM_reg_704_767_0_2_n_0),
        .I1(RAM_reg_640_703_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_576_639_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_512_575_0_2_n_0),
        .O(\blue[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_2 
       (.I0(\blue[0]_INST_0_i_8_n_0 ),
        .I1(\blue[0]_INST_0_i_9_n_0 ),
        .I2(P[10]),
        .I3(\blue[0]_INST_0_i_10_n_0 ),
        .I4(P[9]),
        .I5(\blue[0]_INST_0_i_11_n_0 ),
        .O(\blue[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_20 
       (.I0(RAM_reg_960_1023_0_2_n_0),
        .I1(RAM_reg_896_959_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_832_895_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_768_831_0_2_n_0),
        .O(\blue[0]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_21 
       (.I0(RAM_reg_192_255_0_2_n_0),
        .I1(RAM_reg_128_191_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_64_127_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_0_63_0_2_n_0),
        .O(\blue[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_22 
       (.I0(RAM_reg_448_511_0_2_n_0),
        .I1(RAM_reg_384_447_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_320_383_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_256_319_0_2_n_0),
        .O(\blue[0]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_23 
       (.I0(RAM_reg_3776_3839_0_2_n_0),
        .I1(RAM_reg_3712_3775_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3648_3711_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3584_3647_0_2_n_0),
        .O(\blue[0]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_24 
       (.I0(RAM_reg_4032_4095_0_2_n_0),
        .I1(RAM_reg_3968_4031_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3904_3967_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3840_3903_0_2_n_0),
        .O(\blue[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_25 
       (.I0(RAM_reg_3264_3327_0_2_n_0),
        .I1(RAM_reg_3200_3263_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3136_3199_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3072_3135_0_2_n_0),
        .O(\blue[0]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_26 
       (.I0(RAM_reg_3520_3583_0_2_n_0),
        .I1(RAM_reg_3456_3519_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3392_3455_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3328_3391_0_2_n_0),
        .O(\blue[0]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_27 
       (.I0(RAM_reg_2752_2815_0_2_n_0),
        .I1(RAM_reg_2688_2751_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2624_2687_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2560_2623_0_2_n_0),
        .O(\blue[0]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_28 
       (.I0(RAM_reg_3008_3071_0_2_n_0),
        .I1(RAM_reg_2944_3007_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2880_2943_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2816_2879_0_2_n_0),
        .O(\blue[0]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_29 
       (.I0(RAM_reg_2240_2303_0_2_n_0),
        .I1(RAM_reg_2176_2239_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2112_2175_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2048_2111_0_2_n_0),
        .O(\blue[0]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \blue[0]_INST_0_i_3 
       (.I0(\blue[0]_INST_0_i_12_n_0 ),
        .I1(P[8]),
        .I2(\blue[0]_INST_0_i_13_n_0 ),
        .I3(P[9]),
        .I4(\blue[0]_INST_0_i_14_n_0 ),
        .I5(P[10]),
        .O(\blue[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[0]_INST_0_i_30 
       (.I0(RAM_reg_2496_2559_0_2_n_0),
        .I1(RAM_reg_2432_2495_0_2_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2368_2431_0_2_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2304_2367_0_2_n_0),
        .O(\blue[0]_INST_0_i_30_n_0 ));
  MUXF7 \blue[0]_INST_0_i_4 
       (.I0(\blue[0]_INST_0_i_15_n_0 ),
        .I1(\blue[0]_INST_0_i_16_n_0 ),
        .O(\blue[0]_INST_0_i_4_n_0 ),
        .S(P[8]));
  MUXF7 \blue[0]_INST_0_i_5 
       (.I0(\blue[0]_INST_0_i_17_n_0 ),
        .I1(\blue[0]_INST_0_i_18_n_0 ),
        .O(\blue[0]_INST_0_i_5_n_0 ),
        .S(P[8]));
  MUXF7 \blue[0]_INST_0_i_6 
       (.I0(\blue[0]_INST_0_i_19_n_0 ),
        .I1(\blue[0]_INST_0_i_20_n_0 ),
        .O(\blue[0]_INST_0_i_6_n_0 ),
        .S(P[8]));
  MUXF7 \blue[0]_INST_0_i_7 
       (.I0(\blue[0]_INST_0_i_21_n_0 ),
        .I1(\blue[0]_INST_0_i_22_n_0 ),
        .O(\blue[0]_INST_0_i_7_n_0 ),
        .S(P[8]));
  MUXF7 \blue[0]_INST_0_i_8 
       (.I0(\blue[0]_INST_0_i_23_n_0 ),
        .I1(\blue[0]_INST_0_i_24_n_0 ),
        .O(\blue[0]_INST_0_i_8_n_0 ),
        .S(P[8]));
  MUXF7 \blue[0]_INST_0_i_9 
       (.I0(\blue[0]_INST_0_i_25_n_0 ),
        .I1(\blue[0]_INST_0_i_26_n_0 ),
        .O(\blue[0]_INST_0_i_9_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \blue[1]_INST_0 
       (.I0(\blue[1]_INST_0_i_1_n_0 ),
        .I1(P[11]),
        .I2(\blue[1]_INST_0_i_2_n_0 ),
        .I3(P[12]),
        .I4(\blue[1]_INST_0_i_3_n_0 ),
        .I5(\current_ver_pos_reg[5] ),
        .O(blue[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_1 
       (.I0(\blue[1]_INST_0_i_4_n_0 ),
        .I1(\blue[1]_INST_0_i_5_n_0 ),
        .I2(P[10]),
        .I3(\blue[1]_INST_0_i_6_n_0 ),
        .I4(P[9]),
        .I5(\blue[1]_INST_0_i_7_n_0 ),
        .O(\blue[1]_INST_0_i_1_n_0 ));
  MUXF7 \blue[1]_INST_0_i_10 
       (.I0(\blue[1]_INST_0_i_27_n_0 ),
        .I1(\blue[1]_INST_0_i_28_n_0 ),
        .O(\blue[1]_INST_0_i_10_n_0 ),
        .S(P[8]));
  MUXF7 \blue[1]_INST_0_i_11 
       (.I0(\blue[1]_INST_0_i_29_n_0 ),
        .I1(\blue[1]_INST_0_i_30_n_0 ),
        .O(\blue[1]_INST_0_i_11_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_12 
       (.I0(RAM_reg_4288_4351_0_2_n_1),
        .I1(RAM_reg_4224_4287_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_4160_4223_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_4096_4159_0_2_n_1),
        .O(\blue[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_13 
       (.I0(RAM_reg_4544_4607_0_2_n_1),
        .I1(RAM_reg_4480_4543_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_4416_4479_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_4352_4415_0_2_n_1),
        .O(\blue[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \blue[1]_INST_0_i_14 
       (.I0(RAM_reg_4608_4671_0_2_n_1),
        .I1(P[6]),
        .I2(RAM_reg_4672_4735_0_2_n_1),
        .I3(P[7]),
        .I4(RAM_reg_4736_4799_0_2_n_1),
        .I5(P[8]),
        .O(\blue[1]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_15 
       (.I0(RAM_reg_1728_1791_0_2_n_1),
        .I1(RAM_reg_1664_1727_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1600_1663_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1536_1599_0_2_n_1),
        .O(\blue[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_16 
       (.I0(RAM_reg_1984_2047_0_2_n_1),
        .I1(RAM_reg_1920_1983_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1856_1919_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1792_1855_0_2_n_1),
        .O(\blue[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_17 
       (.I0(RAM_reg_1216_1279_0_2_n_1),
        .I1(RAM_reg_1152_1215_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1088_1151_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1024_1087_0_2_n_1),
        .O(\blue[1]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_18 
       (.I0(RAM_reg_1472_1535_0_2_n_1),
        .I1(RAM_reg_1408_1471_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1344_1407_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1280_1343_0_2_n_1),
        .O(\blue[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_19 
       (.I0(RAM_reg_704_767_0_2_n_1),
        .I1(RAM_reg_640_703_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_576_639_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_512_575_0_2_n_1),
        .O(\blue[1]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_2 
       (.I0(\blue[1]_INST_0_i_8_n_0 ),
        .I1(\blue[1]_INST_0_i_9_n_0 ),
        .I2(P[10]),
        .I3(\blue[1]_INST_0_i_10_n_0 ),
        .I4(P[9]),
        .I5(\blue[1]_INST_0_i_11_n_0 ),
        .O(\blue[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_20 
       (.I0(RAM_reg_960_1023_0_2_n_1),
        .I1(RAM_reg_896_959_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_832_895_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_768_831_0_2_n_1),
        .O(\blue[1]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_21 
       (.I0(RAM_reg_192_255_0_2_n_1),
        .I1(RAM_reg_128_191_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_64_127_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_0_63_0_2_n_1),
        .O(\blue[1]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_22 
       (.I0(RAM_reg_448_511_0_2_n_1),
        .I1(RAM_reg_384_447_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_320_383_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_256_319_0_2_n_1),
        .O(\blue[1]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_23 
       (.I0(RAM_reg_3776_3839_0_2_n_1),
        .I1(RAM_reg_3712_3775_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3648_3711_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3584_3647_0_2_n_1),
        .O(\blue[1]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_24 
       (.I0(RAM_reg_4032_4095_0_2_n_1),
        .I1(RAM_reg_3968_4031_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3904_3967_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3840_3903_0_2_n_1),
        .O(\blue[1]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_25 
       (.I0(RAM_reg_3264_3327_0_2_n_1),
        .I1(RAM_reg_3200_3263_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3136_3199_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3072_3135_0_2_n_1),
        .O(\blue[1]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_26 
       (.I0(RAM_reg_3520_3583_0_2_n_1),
        .I1(RAM_reg_3456_3519_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3392_3455_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3328_3391_0_2_n_1),
        .O(\blue[1]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_27 
       (.I0(RAM_reg_2752_2815_0_2_n_1),
        .I1(RAM_reg_2688_2751_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2624_2687_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2560_2623_0_2_n_1),
        .O(\blue[1]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_28 
       (.I0(RAM_reg_3008_3071_0_2_n_1),
        .I1(RAM_reg_2944_3007_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2880_2943_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2816_2879_0_2_n_1),
        .O(\blue[1]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_29 
       (.I0(RAM_reg_2240_2303_0_2_n_1),
        .I1(RAM_reg_2176_2239_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2112_2175_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2048_2111_0_2_n_1),
        .O(\blue[1]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \blue[1]_INST_0_i_3 
       (.I0(\blue[1]_INST_0_i_12_n_0 ),
        .I1(P[8]),
        .I2(\blue[1]_INST_0_i_13_n_0 ),
        .I3(P[9]),
        .I4(\blue[1]_INST_0_i_14_n_0 ),
        .I5(P[10]),
        .O(\blue[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[1]_INST_0_i_30 
       (.I0(RAM_reg_2496_2559_0_2_n_1),
        .I1(RAM_reg_2432_2495_0_2_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2368_2431_0_2_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2304_2367_0_2_n_1),
        .O(\blue[1]_INST_0_i_30_n_0 ));
  MUXF7 \blue[1]_INST_0_i_4 
       (.I0(\blue[1]_INST_0_i_15_n_0 ),
        .I1(\blue[1]_INST_0_i_16_n_0 ),
        .O(\blue[1]_INST_0_i_4_n_0 ),
        .S(P[8]));
  MUXF7 \blue[1]_INST_0_i_5 
       (.I0(\blue[1]_INST_0_i_17_n_0 ),
        .I1(\blue[1]_INST_0_i_18_n_0 ),
        .O(\blue[1]_INST_0_i_5_n_0 ),
        .S(P[8]));
  MUXF7 \blue[1]_INST_0_i_6 
       (.I0(\blue[1]_INST_0_i_19_n_0 ),
        .I1(\blue[1]_INST_0_i_20_n_0 ),
        .O(\blue[1]_INST_0_i_6_n_0 ),
        .S(P[8]));
  MUXF7 \blue[1]_INST_0_i_7 
       (.I0(\blue[1]_INST_0_i_21_n_0 ),
        .I1(\blue[1]_INST_0_i_22_n_0 ),
        .O(\blue[1]_INST_0_i_7_n_0 ),
        .S(P[8]));
  MUXF7 \blue[1]_INST_0_i_8 
       (.I0(\blue[1]_INST_0_i_23_n_0 ),
        .I1(\blue[1]_INST_0_i_24_n_0 ),
        .O(\blue[1]_INST_0_i_8_n_0 ),
        .S(P[8]));
  MUXF7 \blue[1]_INST_0_i_9 
       (.I0(\blue[1]_INST_0_i_25_n_0 ),
        .I1(\blue[1]_INST_0_i_26_n_0 ),
        .O(\blue[1]_INST_0_i_9_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \blue[2]_INST_0 
       (.I0(\blue[2]_INST_0_i_1_n_0 ),
        .I1(P[11]),
        .I2(\blue[2]_INST_0_i_2_n_0 ),
        .I3(P[12]),
        .I4(\blue[2]_INST_0_i_3_n_0 ),
        .I5(\current_ver_pos_reg[5] ),
        .O(blue[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_1 
       (.I0(\blue[2]_INST_0_i_4_n_0 ),
        .I1(\blue[2]_INST_0_i_5_n_0 ),
        .I2(P[10]),
        .I3(\blue[2]_INST_0_i_6_n_0 ),
        .I4(P[9]),
        .I5(\blue[2]_INST_0_i_7_n_0 ),
        .O(\blue[2]_INST_0_i_1_n_0 ));
  MUXF7 \blue[2]_INST_0_i_10 
       (.I0(\blue[2]_INST_0_i_27_n_0 ),
        .I1(\blue[2]_INST_0_i_28_n_0 ),
        .O(\blue[2]_INST_0_i_10_n_0 ),
        .S(P[8]));
  MUXF7 \blue[2]_INST_0_i_11 
       (.I0(\blue[2]_INST_0_i_29_n_0 ),
        .I1(\blue[2]_INST_0_i_30_n_0 ),
        .O(\blue[2]_INST_0_i_11_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_12 
       (.I0(RAM_reg_4288_4351_0_2_n_2),
        .I1(RAM_reg_4224_4287_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_4160_4223_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_4096_4159_0_2_n_2),
        .O(\blue[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_13 
       (.I0(RAM_reg_4544_4607_0_2_n_2),
        .I1(RAM_reg_4480_4543_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_4416_4479_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_4352_4415_0_2_n_2),
        .O(\blue[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \blue[2]_INST_0_i_14 
       (.I0(RAM_reg_4608_4671_0_2_n_2),
        .I1(P[6]),
        .I2(RAM_reg_4672_4735_0_2_n_2),
        .I3(P[7]),
        .I4(RAM_reg_4736_4799_0_2_n_2),
        .I5(P[8]),
        .O(\blue[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_15 
       (.I0(RAM_reg_1728_1791_0_2_n_2),
        .I1(RAM_reg_1664_1727_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1600_1663_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1536_1599_0_2_n_2),
        .O(\blue[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_16 
       (.I0(RAM_reg_1984_2047_0_2_n_2),
        .I1(RAM_reg_1920_1983_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1856_1919_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1792_1855_0_2_n_2),
        .O(\blue[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_17 
       (.I0(RAM_reg_1216_1279_0_2_n_2),
        .I1(RAM_reg_1152_1215_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1088_1151_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1024_1087_0_2_n_2),
        .O(\blue[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_18 
       (.I0(RAM_reg_1472_1535_0_2_n_2),
        .I1(RAM_reg_1408_1471_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1344_1407_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1280_1343_0_2_n_2),
        .O(\blue[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_19 
       (.I0(RAM_reg_704_767_0_2_n_2),
        .I1(RAM_reg_640_703_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_576_639_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_512_575_0_2_n_2),
        .O(\blue[2]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_2 
       (.I0(\blue[2]_INST_0_i_8_n_0 ),
        .I1(\blue[2]_INST_0_i_9_n_0 ),
        .I2(P[10]),
        .I3(\blue[2]_INST_0_i_10_n_0 ),
        .I4(P[9]),
        .I5(\blue[2]_INST_0_i_11_n_0 ),
        .O(\blue[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_20 
       (.I0(RAM_reg_960_1023_0_2_n_2),
        .I1(RAM_reg_896_959_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_832_895_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_768_831_0_2_n_2),
        .O(\blue[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_21 
       (.I0(RAM_reg_192_255_0_2_n_2),
        .I1(RAM_reg_128_191_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_64_127_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_0_63_0_2_n_2),
        .O(\blue[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_22 
       (.I0(RAM_reg_448_511_0_2_n_2),
        .I1(RAM_reg_384_447_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_320_383_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_256_319_0_2_n_2),
        .O(\blue[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_23 
       (.I0(RAM_reg_3776_3839_0_2_n_2),
        .I1(RAM_reg_3712_3775_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3648_3711_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3584_3647_0_2_n_2),
        .O(\blue[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_24 
       (.I0(RAM_reg_4032_4095_0_2_n_2),
        .I1(RAM_reg_3968_4031_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3904_3967_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3840_3903_0_2_n_2),
        .O(\blue[2]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_25 
       (.I0(RAM_reg_3264_3327_0_2_n_2),
        .I1(RAM_reg_3200_3263_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3136_3199_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3072_3135_0_2_n_2),
        .O(\blue[2]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_26 
       (.I0(RAM_reg_3520_3583_0_2_n_2),
        .I1(RAM_reg_3456_3519_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3392_3455_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3328_3391_0_2_n_2),
        .O(\blue[2]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_27 
       (.I0(RAM_reg_2752_2815_0_2_n_2),
        .I1(RAM_reg_2688_2751_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2624_2687_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2560_2623_0_2_n_2),
        .O(\blue[2]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_28 
       (.I0(RAM_reg_3008_3071_0_2_n_2),
        .I1(RAM_reg_2944_3007_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2880_2943_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2816_2879_0_2_n_2),
        .O(\blue[2]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_29 
       (.I0(RAM_reg_2240_2303_0_2_n_2),
        .I1(RAM_reg_2176_2239_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2112_2175_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2048_2111_0_2_n_2),
        .O(\blue[2]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \blue[2]_INST_0_i_3 
       (.I0(\blue[2]_INST_0_i_12_n_0 ),
        .I1(P[8]),
        .I2(\blue[2]_INST_0_i_13_n_0 ),
        .I3(P[9]),
        .I4(\blue[2]_INST_0_i_14_n_0 ),
        .I5(P[10]),
        .O(\blue[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[2]_INST_0_i_30 
       (.I0(RAM_reg_2496_2559_0_2_n_2),
        .I1(RAM_reg_2432_2495_0_2_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2368_2431_0_2_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2304_2367_0_2_n_2),
        .O(\blue[2]_INST_0_i_30_n_0 ));
  MUXF7 \blue[2]_INST_0_i_4 
       (.I0(\blue[2]_INST_0_i_15_n_0 ),
        .I1(\blue[2]_INST_0_i_16_n_0 ),
        .O(\blue[2]_INST_0_i_4_n_0 ),
        .S(P[8]));
  MUXF7 \blue[2]_INST_0_i_5 
       (.I0(\blue[2]_INST_0_i_17_n_0 ),
        .I1(\blue[2]_INST_0_i_18_n_0 ),
        .O(\blue[2]_INST_0_i_5_n_0 ),
        .S(P[8]));
  MUXF7 \blue[2]_INST_0_i_6 
       (.I0(\blue[2]_INST_0_i_19_n_0 ),
        .I1(\blue[2]_INST_0_i_20_n_0 ),
        .O(\blue[2]_INST_0_i_6_n_0 ),
        .S(P[8]));
  MUXF7 \blue[2]_INST_0_i_7 
       (.I0(\blue[2]_INST_0_i_21_n_0 ),
        .I1(\blue[2]_INST_0_i_22_n_0 ),
        .O(\blue[2]_INST_0_i_7_n_0 ),
        .S(P[8]));
  MUXF7 \blue[2]_INST_0_i_8 
       (.I0(\blue[2]_INST_0_i_23_n_0 ),
        .I1(\blue[2]_INST_0_i_24_n_0 ),
        .O(\blue[2]_INST_0_i_8_n_0 ),
        .S(P[8]));
  MUXF7 \blue[2]_INST_0_i_9 
       (.I0(\blue[2]_INST_0_i_25_n_0 ),
        .I1(\blue[2]_INST_0_i_26_n_0 ),
        .O(\blue[2]_INST_0_i_9_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \blue[3]_INST_0 
       (.I0(\blue[3]_INST_0_i_1_n_0 ),
        .I1(P[11]),
        .I2(\blue[3]_INST_0_i_2_n_0 ),
        .I3(P[12]),
        .I4(\blue[3]_INST_0_i_3_n_0 ),
        .I5(\current_ver_pos_reg[5] ),
        .O(blue[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_1 
       (.I0(\blue[3]_INST_0_i_4_n_0 ),
        .I1(\blue[3]_INST_0_i_5_n_0 ),
        .I2(P[10]),
        .I3(\blue[3]_INST_0_i_6_n_0 ),
        .I4(P[9]),
        .I5(\blue[3]_INST_0_i_7_n_0 ),
        .O(\blue[3]_INST_0_i_1_n_0 ));
  MUXF7 \blue[3]_INST_0_i_10 
       (.I0(\blue[3]_INST_0_i_27_n_0 ),
        .I1(\blue[3]_INST_0_i_28_n_0 ),
        .O(\blue[3]_INST_0_i_10_n_0 ),
        .S(P[8]));
  MUXF7 \blue[3]_INST_0_i_11 
       (.I0(\blue[3]_INST_0_i_29_n_0 ),
        .I1(\blue[3]_INST_0_i_30_n_0 ),
        .O(\blue[3]_INST_0_i_11_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_12 
       (.I0(RAM_reg_4288_4351_3_5_n_0),
        .I1(RAM_reg_4224_4287_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_4160_4223_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_4096_4159_3_5_n_0),
        .O(\blue[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_13 
       (.I0(RAM_reg_4544_4607_3_5_n_0),
        .I1(RAM_reg_4480_4543_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_4416_4479_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_4352_4415_3_5_n_0),
        .O(\blue[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \blue[3]_INST_0_i_14 
       (.I0(RAM_reg_4608_4671_3_5_n_0),
        .I1(P[6]),
        .I2(RAM_reg_4672_4735_3_5_n_0),
        .I3(P[7]),
        .I4(RAM_reg_4736_4799_3_5_n_0),
        .I5(P[8]),
        .O(\blue[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_15 
       (.I0(RAM_reg_1728_1791_3_5_n_0),
        .I1(RAM_reg_1664_1727_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1600_1663_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1536_1599_3_5_n_0),
        .O(\blue[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_16 
       (.I0(RAM_reg_1984_2047_3_5_n_0),
        .I1(RAM_reg_1920_1983_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1856_1919_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1792_1855_3_5_n_0),
        .O(\blue[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_17 
       (.I0(RAM_reg_1216_1279_3_5_n_0),
        .I1(RAM_reg_1152_1215_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1088_1151_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1024_1087_3_5_n_0),
        .O(\blue[3]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_18 
       (.I0(RAM_reg_1472_1535_3_5_n_0),
        .I1(RAM_reg_1408_1471_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1344_1407_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1280_1343_3_5_n_0),
        .O(\blue[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_19 
       (.I0(RAM_reg_704_767_3_5_n_0),
        .I1(RAM_reg_640_703_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_576_639_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_512_575_3_5_n_0),
        .O(\blue[3]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_2 
       (.I0(\blue[3]_INST_0_i_8_n_0 ),
        .I1(\blue[3]_INST_0_i_9_n_0 ),
        .I2(P[10]),
        .I3(\blue[3]_INST_0_i_10_n_0 ),
        .I4(P[9]),
        .I5(\blue[3]_INST_0_i_11_n_0 ),
        .O(\blue[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_20 
       (.I0(RAM_reg_960_1023_3_5_n_0),
        .I1(RAM_reg_896_959_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_832_895_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_768_831_3_5_n_0),
        .O(\blue[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_21 
       (.I0(RAM_reg_192_255_3_5_n_0),
        .I1(RAM_reg_128_191_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_64_127_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_0_63_3_5_n_0),
        .O(\blue[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_22 
       (.I0(RAM_reg_448_511_3_5_n_0),
        .I1(RAM_reg_384_447_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_320_383_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_256_319_3_5_n_0),
        .O(\blue[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_23 
       (.I0(RAM_reg_3776_3839_3_5_n_0),
        .I1(RAM_reg_3712_3775_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3648_3711_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3584_3647_3_5_n_0),
        .O(\blue[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_24 
       (.I0(RAM_reg_4032_4095_3_5_n_0),
        .I1(RAM_reg_3968_4031_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3904_3967_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3840_3903_3_5_n_0),
        .O(\blue[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_25 
       (.I0(RAM_reg_3264_3327_3_5_n_0),
        .I1(RAM_reg_3200_3263_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3136_3199_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3072_3135_3_5_n_0),
        .O(\blue[3]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_26 
       (.I0(RAM_reg_3520_3583_3_5_n_0),
        .I1(RAM_reg_3456_3519_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3392_3455_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3328_3391_3_5_n_0),
        .O(\blue[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_27 
       (.I0(RAM_reg_2752_2815_3_5_n_0),
        .I1(RAM_reg_2688_2751_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2624_2687_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2560_2623_3_5_n_0),
        .O(\blue[3]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_28 
       (.I0(RAM_reg_3008_3071_3_5_n_0),
        .I1(RAM_reg_2944_3007_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2880_2943_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2816_2879_3_5_n_0),
        .O(\blue[3]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_29 
       (.I0(RAM_reg_2240_2303_3_5_n_0),
        .I1(RAM_reg_2176_2239_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2112_2175_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2048_2111_3_5_n_0),
        .O(\blue[3]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \blue[3]_INST_0_i_3 
       (.I0(\blue[3]_INST_0_i_12_n_0 ),
        .I1(P[8]),
        .I2(\blue[3]_INST_0_i_13_n_0 ),
        .I3(P[9]),
        .I4(\blue[3]_INST_0_i_14_n_0 ),
        .I5(P[10]),
        .O(\blue[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \blue[3]_INST_0_i_30 
       (.I0(RAM_reg_2496_2559_3_5_n_0),
        .I1(RAM_reg_2432_2495_3_5_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2368_2431_3_5_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2304_2367_3_5_n_0),
        .O(\blue[3]_INST_0_i_30_n_0 ));
  MUXF7 \blue[3]_INST_0_i_4 
       (.I0(\blue[3]_INST_0_i_15_n_0 ),
        .I1(\blue[3]_INST_0_i_16_n_0 ),
        .O(\blue[3]_INST_0_i_4_n_0 ),
        .S(P[8]));
  MUXF7 \blue[3]_INST_0_i_5 
       (.I0(\blue[3]_INST_0_i_17_n_0 ),
        .I1(\blue[3]_INST_0_i_18_n_0 ),
        .O(\blue[3]_INST_0_i_5_n_0 ),
        .S(P[8]));
  MUXF7 \blue[3]_INST_0_i_6 
       (.I0(\blue[3]_INST_0_i_19_n_0 ),
        .I1(\blue[3]_INST_0_i_20_n_0 ),
        .O(\blue[3]_INST_0_i_6_n_0 ),
        .S(P[8]));
  MUXF7 \blue[3]_INST_0_i_7 
       (.I0(\blue[3]_INST_0_i_21_n_0 ),
        .I1(\blue[3]_INST_0_i_22_n_0 ),
        .O(\blue[3]_INST_0_i_7_n_0 ),
        .S(P[8]));
  MUXF7 \blue[3]_INST_0_i_8 
       (.I0(\blue[3]_INST_0_i_23_n_0 ),
        .I1(\blue[3]_INST_0_i_24_n_0 ),
        .O(\blue[3]_INST_0_i_8_n_0 ),
        .S(P[8]));
  MUXF7 \blue[3]_INST_0_i_9 
       (.I0(\blue[3]_INST_0_i_25_n_0 ),
        .I1(\blue[3]_INST_0_i_26_n_0 ),
        .O(\blue[3]_INST_0_i_9_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \green[0]_INST_0 
       (.I0(\green[0]_INST_0_i_1_n_0 ),
        .I1(P[11]),
        .I2(\green[0]_INST_0_i_2_n_0 ),
        .I3(P[12]),
        .I4(\green[0]_INST_0_i_3_n_0 ),
        .I5(\current_ver_pos_reg[5] ),
        .O(green[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_1 
       (.I0(\green[0]_INST_0_i_4_n_0 ),
        .I1(\green[0]_INST_0_i_5_n_0 ),
        .I2(P[10]),
        .I3(\green[0]_INST_0_i_6_n_0 ),
        .I4(P[9]),
        .I5(\green[0]_INST_0_i_7_n_0 ),
        .O(\green[0]_INST_0_i_1_n_0 ));
  MUXF7 \green[0]_INST_0_i_10 
       (.I0(\green[0]_INST_0_i_27_n_0 ),
        .I1(\green[0]_INST_0_i_28_n_0 ),
        .O(\green[0]_INST_0_i_10_n_0 ),
        .S(P[8]));
  MUXF7 \green[0]_INST_0_i_11 
       (.I0(\green[0]_INST_0_i_29_n_0 ),
        .I1(\green[0]_INST_0_i_30_n_0 ),
        .O(\green[0]_INST_0_i_11_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_12 
       (.I0(RAM_reg_4288_4351_3_5_n_1),
        .I1(RAM_reg_4224_4287_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_4160_4223_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_4096_4159_3_5_n_1),
        .O(\green[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_13 
       (.I0(RAM_reg_4544_4607_3_5_n_1),
        .I1(RAM_reg_4480_4543_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_4416_4479_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_4352_4415_3_5_n_1),
        .O(\green[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \green[0]_INST_0_i_14 
       (.I0(RAM_reg_4608_4671_3_5_n_1),
        .I1(P[6]),
        .I2(RAM_reg_4672_4735_3_5_n_1),
        .I3(P[7]),
        .I4(RAM_reg_4736_4799_3_5_n_1),
        .I5(P[8]),
        .O(\green[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_15 
       (.I0(RAM_reg_1728_1791_3_5_n_1),
        .I1(RAM_reg_1664_1727_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1600_1663_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1536_1599_3_5_n_1),
        .O(\green[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_16 
       (.I0(RAM_reg_1984_2047_3_5_n_1),
        .I1(RAM_reg_1920_1983_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1856_1919_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1792_1855_3_5_n_1),
        .O(\green[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_17 
       (.I0(RAM_reg_1216_1279_3_5_n_1),
        .I1(RAM_reg_1152_1215_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1088_1151_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1024_1087_3_5_n_1),
        .O(\green[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_18 
       (.I0(RAM_reg_1472_1535_3_5_n_1),
        .I1(RAM_reg_1408_1471_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1344_1407_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1280_1343_3_5_n_1),
        .O(\green[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_19 
       (.I0(RAM_reg_704_767_3_5_n_1),
        .I1(RAM_reg_640_703_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_576_639_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_512_575_3_5_n_1),
        .O(\green[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_2 
       (.I0(\green[0]_INST_0_i_8_n_0 ),
        .I1(\green[0]_INST_0_i_9_n_0 ),
        .I2(P[10]),
        .I3(\green[0]_INST_0_i_10_n_0 ),
        .I4(P[9]),
        .I5(\green[0]_INST_0_i_11_n_0 ),
        .O(\green[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_20 
       (.I0(RAM_reg_960_1023_3_5_n_1),
        .I1(RAM_reg_896_959_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_832_895_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_768_831_3_5_n_1),
        .O(\green[0]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_21 
       (.I0(RAM_reg_192_255_3_5_n_1),
        .I1(RAM_reg_128_191_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_64_127_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_0_63_3_5_n_1),
        .O(\green[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_22 
       (.I0(RAM_reg_448_511_3_5_n_1),
        .I1(RAM_reg_384_447_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_320_383_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_256_319_3_5_n_1),
        .O(\green[0]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_23 
       (.I0(RAM_reg_3776_3839_3_5_n_1),
        .I1(RAM_reg_3712_3775_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3648_3711_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3584_3647_3_5_n_1),
        .O(\green[0]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_24 
       (.I0(RAM_reg_4032_4095_3_5_n_1),
        .I1(RAM_reg_3968_4031_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3904_3967_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3840_3903_3_5_n_1),
        .O(\green[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_25 
       (.I0(RAM_reg_3264_3327_3_5_n_1),
        .I1(RAM_reg_3200_3263_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3136_3199_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3072_3135_3_5_n_1),
        .O(\green[0]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_26 
       (.I0(RAM_reg_3520_3583_3_5_n_1),
        .I1(RAM_reg_3456_3519_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3392_3455_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3328_3391_3_5_n_1),
        .O(\green[0]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_27 
       (.I0(RAM_reg_2752_2815_3_5_n_1),
        .I1(RAM_reg_2688_2751_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2624_2687_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2560_2623_3_5_n_1),
        .O(\green[0]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_28 
       (.I0(RAM_reg_3008_3071_3_5_n_1),
        .I1(RAM_reg_2944_3007_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2880_2943_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2816_2879_3_5_n_1),
        .O(\green[0]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_29 
       (.I0(RAM_reg_2240_2303_3_5_n_1),
        .I1(RAM_reg_2176_2239_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2112_2175_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2048_2111_3_5_n_1),
        .O(\green[0]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \green[0]_INST_0_i_3 
       (.I0(\green[0]_INST_0_i_12_n_0 ),
        .I1(P[8]),
        .I2(\green[0]_INST_0_i_13_n_0 ),
        .I3(P[9]),
        .I4(\green[0]_INST_0_i_14_n_0 ),
        .I5(P[10]),
        .O(\green[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[0]_INST_0_i_30 
       (.I0(RAM_reg_2496_2559_3_5_n_1),
        .I1(RAM_reg_2432_2495_3_5_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2368_2431_3_5_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2304_2367_3_5_n_1),
        .O(\green[0]_INST_0_i_30_n_0 ));
  MUXF7 \green[0]_INST_0_i_4 
       (.I0(\green[0]_INST_0_i_15_n_0 ),
        .I1(\green[0]_INST_0_i_16_n_0 ),
        .O(\green[0]_INST_0_i_4_n_0 ),
        .S(P[8]));
  MUXF7 \green[0]_INST_0_i_5 
       (.I0(\green[0]_INST_0_i_17_n_0 ),
        .I1(\green[0]_INST_0_i_18_n_0 ),
        .O(\green[0]_INST_0_i_5_n_0 ),
        .S(P[8]));
  MUXF7 \green[0]_INST_0_i_6 
       (.I0(\green[0]_INST_0_i_19_n_0 ),
        .I1(\green[0]_INST_0_i_20_n_0 ),
        .O(\green[0]_INST_0_i_6_n_0 ),
        .S(P[8]));
  MUXF7 \green[0]_INST_0_i_7 
       (.I0(\green[0]_INST_0_i_21_n_0 ),
        .I1(\green[0]_INST_0_i_22_n_0 ),
        .O(\green[0]_INST_0_i_7_n_0 ),
        .S(P[8]));
  MUXF7 \green[0]_INST_0_i_8 
       (.I0(\green[0]_INST_0_i_23_n_0 ),
        .I1(\green[0]_INST_0_i_24_n_0 ),
        .O(\green[0]_INST_0_i_8_n_0 ),
        .S(P[8]));
  MUXF7 \green[0]_INST_0_i_9 
       (.I0(\green[0]_INST_0_i_25_n_0 ),
        .I1(\green[0]_INST_0_i_26_n_0 ),
        .O(\green[0]_INST_0_i_9_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \green[1]_INST_0 
       (.I0(\green[1]_INST_0_i_1_n_0 ),
        .I1(P[11]),
        .I2(\green[1]_INST_0_i_2_n_0 ),
        .I3(P[12]),
        .I4(\green[1]_INST_0_i_3_n_0 ),
        .I5(\current_ver_pos_reg[5] ),
        .O(green[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_1 
       (.I0(\green[1]_INST_0_i_4_n_0 ),
        .I1(\green[1]_INST_0_i_5_n_0 ),
        .I2(P[10]),
        .I3(\green[1]_INST_0_i_6_n_0 ),
        .I4(P[9]),
        .I5(\green[1]_INST_0_i_7_n_0 ),
        .O(\green[1]_INST_0_i_1_n_0 ));
  MUXF7 \green[1]_INST_0_i_10 
       (.I0(\green[1]_INST_0_i_27_n_0 ),
        .I1(\green[1]_INST_0_i_28_n_0 ),
        .O(\green[1]_INST_0_i_10_n_0 ),
        .S(P[8]));
  MUXF7 \green[1]_INST_0_i_11 
       (.I0(\green[1]_INST_0_i_29_n_0 ),
        .I1(\green[1]_INST_0_i_30_n_0 ),
        .O(\green[1]_INST_0_i_11_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_12 
       (.I0(RAM_reg_4288_4351_3_5_n_2),
        .I1(RAM_reg_4224_4287_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_4160_4223_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_4096_4159_3_5_n_2),
        .O(\green[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_13 
       (.I0(RAM_reg_4544_4607_3_5_n_2),
        .I1(RAM_reg_4480_4543_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_4416_4479_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_4352_4415_3_5_n_2),
        .O(\green[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \green[1]_INST_0_i_14 
       (.I0(RAM_reg_4608_4671_3_5_n_2),
        .I1(P[6]),
        .I2(RAM_reg_4672_4735_3_5_n_2),
        .I3(P[7]),
        .I4(RAM_reg_4736_4799_3_5_n_2),
        .I5(P[8]),
        .O(\green[1]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_15 
       (.I0(RAM_reg_1728_1791_3_5_n_2),
        .I1(RAM_reg_1664_1727_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1600_1663_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1536_1599_3_5_n_2),
        .O(\green[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_16 
       (.I0(RAM_reg_1984_2047_3_5_n_2),
        .I1(RAM_reg_1920_1983_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1856_1919_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1792_1855_3_5_n_2),
        .O(\green[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_17 
       (.I0(RAM_reg_1216_1279_3_5_n_2),
        .I1(RAM_reg_1152_1215_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1088_1151_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1024_1087_3_5_n_2),
        .O(\green[1]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_18 
       (.I0(RAM_reg_1472_1535_3_5_n_2),
        .I1(RAM_reg_1408_1471_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1344_1407_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1280_1343_3_5_n_2),
        .O(\green[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_19 
       (.I0(RAM_reg_704_767_3_5_n_2),
        .I1(RAM_reg_640_703_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_576_639_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_512_575_3_5_n_2),
        .O(\green[1]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_2 
       (.I0(\green[1]_INST_0_i_8_n_0 ),
        .I1(\green[1]_INST_0_i_9_n_0 ),
        .I2(P[10]),
        .I3(\green[1]_INST_0_i_10_n_0 ),
        .I4(P[9]),
        .I5(\green[1]_INST_0_i_11_n_0 ),
        .O(\green[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_20 
       (.I0(RAM_reg_960_1023_3_5_n_2),
        .I1(RAM_reg_896_959_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_832_895_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_768_831_3_5_n_2),
        .O(\green[1]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_21 
       (.I0(RAM_reg_192_255_3_5_n_2),
        .I1(RAM_reg_128_191_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_64_127_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_0_63_3_5_n_2),
        .O(\green[1]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_22 
       (.I0(RAM_reg_448_511_3_5_n_2),
        .I1(RAM_reg_384_447_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_320_383_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_256_319_3_5_n_2),
        .O(\green[1]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_23 
       (.I0(RAM_reg_3776_3839_3_5_n_2),
        .I1(RAM_reg_3712_3775_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3648_3711_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3584_3647_3_5_n_2),
        .O(\green[1]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_24 
       (.I0(RAM_reg_4032_4095_3_5_n_2),
        .I1(RAM_reg_3968_4031_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3904_3967_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3840_3903_3_5_n_2),
        .O(\green[1]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_25 
       (.I0(RAM_reg_3264_3327_3_5_n_2),
        .I1(RAM_reg_3200_3263_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3136_3199_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3072_3135_3_5_n_2),
        .O(\green[1]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_26 
       (.I0(RAM_reg_3520_3583_3_5_n_2),
        .I1(RAM_reg_3456_3519_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3392_3455_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3328_3391_3_5_n_2),
        .O(\green[1]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_27 
       (.I0(RAM_reg_2752_2815_3_5_n_2),
        .I1(RAM_reg_2688_2751_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2624_2687_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2560_2623_3_5_n_2),
        .O(\green[1]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_28 
       (.I0(RAM_reg_3008_3071_3_5_n_2),
        .I1(RAM_reg_2944_3007_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2880_2943_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2816_2879_3_5_n_2),
        .O(\green[1]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_29 
       (.I0(RAM_reg_2240_2303_3_5_n_2),
        .I1(RAM_reg_2176_2239_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2112_2175_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2048_2111_3_5_n_2),
        .O(\green[1]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \green[1]_INST_0_i_3 
       (.I0(\green[1]_INST_0_i_12_n_0 ),
        .I1(P[8]),
        .I2(\green[1]_INST_0_i_13_n_0 ),
        .I3(P[9]),
        .I4(\green[1]_INST_0_i_14_n_0 ),
        .I5(P[10]),
        .O(\green[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[1]_INST_0_i_30 
       (.I0(RAM_reg_2496_2559_3_5_n_2),
        .I1(RAM_reg_2432_2495_3_5_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2368_2431_3_5_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2304_2367_3_5_n_2),
        .O(\green[1]_INST_0_i_30_n_0 ));
  MUXF7 \green[1]_INST_0_i_4 
       (.I0(\green[1]_INST_0_i_15_n_0 ),
        .I1(\green[1]_INST_0_i_16_n_0 ),
        .O(\green[1]_INST_0_i_4_n_0 ),
        .S(P[8]));
  MUXF7 \green[1]_INST_0_i_5 
       (.I0(\green[1]_INST_0_i_17_n_0 ),
        .I1(\green[1]_INST_0_i_18_n_0 ),
        .O(\green[1]_INST_0_i_5_n_0 ),
        .S(P[8]));
  MUXF7 \green[1]_INST_0_i_6 
       (.I0(\green[1]_INST_0_i_19_n_0 ),
        .I1(\green[1]_INST_0_i_20_n_0 ),
        .O(\green[1]_INST_0_i_6_n_0 ),
        .S(P[8]));
  MUXF7 \green[1]_INST_0_i_7 
       (.I0(\green[1]_INST_0_i_21_n_0 ),
        .I1(\green[1]_INST_0_i_22_n_0 ),
        .O(\green[1]_INST_0_i_7_n_0 ),
        .S(P[8]));
  MUXF7 \green[1]_INST_0_i_8 
       (.I0(\green[1]_INST_0_i_23_n_0 ),
        .I1(\green[1]_INST_0_i_24_n_0 ),
        .O(\green[1]_INST_0_i_8_n_0 ),
        .S(P[8]));
  MUXF7 \green[1]_INST_0_i_9 
       (.I0(\green[1]_INST_0_i_25_n_0 ),
        .I1(\green[1]_INST_0_i_26_n_0 ),
        .O(\green[1]_INST_0_i_9_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \green[2]_INST_0 
       (.I0(\green[2]_INST_0_i_1_n_0 ),
        .I1(P[11]),
        .I2(\green[2]_INST_0_i_2_n_0 ),
        .I3(P[12]),
        .I4(\green[2]_INST_0_i_3_n_0 ),
        .I5(\current_ver_pos_reg[5] ),
        .O(green[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_1 
       (.I0(\green[2]_INST_0_i_4_n_0 ),
        .I1(\green[2]_INST_0_i_5_n_0 ),
        .I2(P[10]),
        .I3(\green[2]_INST_0_i_6_n_0 ),
        .I4(P[9]),
        .I5(\green[2]_INST_0_i_7_n_0 ),
        .O(\green[2]_INST_0_i_1_n_0 ));
  MUXF7 \green[2]_INST_0_i_10 
       (.I0(\green[2]_INST_0_i_27_n_0 ),
        .I1(\green[2]_INST_0_i_28_n_0 ),
        .O(\green[2]_INST_0_i_10_n_0 ),
        .S(P[8]));
  MUXF7 \green[2]_INST_0_i_11 
       (.I0(\green[2]_INST_0_i_29_n_0 ),
        .I1(\green[2]_INST_0_i_30_n_0 ),
        .O(\green[2]_INST_0_i_11_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_12 
       (.I0(RAM_reg_4288_4351_6_8_n_0),
        .I1(RAM_reg_4224_4287_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_4160_4223_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_4096_4159_6_8_n_0),
        .O(\green[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_13 
       (.I0(RAM_reg_4544_4607_6_8_n_0),
        .I1(RAM_reg_4480_4543_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_4416_4479_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_4352_4415_6_8_n_0),
        .O(\green[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \green[2]_INST_0_i_14 
       (.I0(RAM_reg_4608_4671_6_8_n_0),
        .I1(P[6]),
        .I2(RAM_reg_4672_4735_6_8_n_0),
        .I3(P[7]),
        .I4(RAM_reg_4736_4799_6_8_n_0),
        .I5(P[8]),
        .O(\green[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_15 
       (.I0(RAM_reg_1728_1791_6_8_n_0),
        .I1(RAM_reg_1664_1727_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1600_1663_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1536_1599_6_8_n_0),
        .O(\green[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_16 
       (.I0(RAM_reg_1984_2047_6_8_n_0),
        .I1(RAM_reg_1920_1983_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1856_1919_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1792_1855_6_8_n_0),
        .O(\green[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_17 
       (.I0(RAM_reg_1216_1279_6_8_n_0),
        .I1(RAM_reg_1152_1215_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1088_1151_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1024_1087_6_8_n_0),
        .O(\green[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_18 
       (.I0(RAM_reg_1472_1535_6_8_n_0),
        .I1(RAM_reg_1408_1471_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1344_1407_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1280_1343_6_8_n_0),
        .O(\green[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_19 
       (.I0(RAM_reg_704_767_6_8_n_0),
        .I1(RAM_reg_640_703_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_576_639_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_512_575_6_8_n_0),
        .O(\green[2]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_2 
       (.I0(\green[2]_INST_0_i_8_n_0 ),
        .I1(\green[2]_INST_0_i_9_n_0 ),
        .I2(P[10]),
        .I3(\green[2]_INST_0_i_10_n_0 ),
        .I4(P[9]),
        .I5(\green[2]_INST_0_i_11_n_0 ),
        .O(\green[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_20 
       (.I0(RAM_reg_960_1023_6_8_n_0),
        .I1(RAM_reg_896_959_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_832_895_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_768_831_6_8_n_0),
        .O(\green[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_21 
       (.I0(RAM_reg_192_255_6_8_n_0),
        .I1(RAM_reg_128_191_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_64_127_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_0_63_6_8_n_0),
        .O(\green[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_22 
       (.I0(RAM_reg_448_511_6_8_n_0),
        .I1(RAM_reg_384_447_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_320_383_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_256_319_6_8_n_0),
        .O(\green[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_23 
       (.I0(RAM_reg_3776_3839_6_8_n_0),
        .I1(RAM_reg_3712_3775_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3648_3711_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3584_3647_6_8_n_0),
        .O(\green[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_24 
       (.I0(RAM_reg_4032_4095_6_8_n_0),
        .I1(RAM_reg_3968_4031_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3904_3967_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3840_3903_6_8_n_0),
        .O(\green[2]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_25 
       (.I0(RAM_reg_3264_3327_6_8_n_0),
        .I1(RAM_reg_3200_3263_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3136_3199_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3072_3135_6_8_n_0),
        .O(\green[2]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_26 
       (.I0(RAM_reg_3520_3583_6_8_n_0),
        .I1(RAM_reg_3456_3519_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3392_3455_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3328_3391_6_8_n_0),
        .O(\green[2]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_27 
       (.I0(RAM_reg_2752_2815_6_8_n_0),
        .I1(RAM_reg_2688_2751_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2624_2687_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2560_2623_6_8_n_0),
        .O(\green[2]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_28 
       (.I0(RAM_reg_3008_3071_6_8_n_0),
        .I1(RAM_reg_2944_3007_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2880_2943_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2816_2879_6_8_n_0),
        .O(\green[2]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_29 
       (.I0(RAM_reg_2240_2303_6_8_n_0),
        .I1(RAM_reg_2176_2239_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2112_2175_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2048_2111_6_8_n_0),
        .O(\green[2]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \green[2]_INST_0_i_3 
       (.I0(\green[2]_INST_0_i_12_n_0 ),
        .I1(P[8]),
        .I2(\green[2]_INST_0_i_13_n_0 ),
        .I3(P[9]),
        .I4(\green[2]_INST_0_i_14_n_0 ),
        .I5(P[10]),
        .O(\green[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[2]_INST_0_i_30 
       (.I0(RAM_reg_2496_2559_6_8_n_0),
        .I1(RAM_reg_2432_2495_6_8_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2368_2431_6_8_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2304_2367_6_8_n_0),
        .O(\green[2]_INST_0_i_30_n_0 ));
  MUXF7 \green[2]_INST_0_i_4 
       (.I0(\green[2]_INST_0_i_15_n_0 ),
        .I1(\green[2]_INST_0_i_16_n_0 ),
        .O(\green[2]_INST_0_i_4_n_0 ),
        .S(P[8]));
  MUXF7 \green[2]_INST_0_i_5 
       (.I0(\green[2]_INST_0_i_17_n_0 ),
        .I1(\green[2]_INST_0_i_18_n_0 ),
        .O(\green[2]_INST_0_i_5_n_0 ),
        .S(P[8]));
  MUXF7 \green[2]_INST_0_i_6 
       (.I0(\green[2]_INST_0_i_19_n_0 ),
        .I1(\green[2]_INST_0_i_20_n_0 ),
        .O(\green[2]_INST_0_i_6_n_0 ),
        .S(P[8]));
  MUXF7 \green[2]_INST_0_i_7 
       (.I0(\green[2]_INST_0_i_21_n_0 ),
        .I1(\green[2]_INST_0_i_22_n_0 ),
        .O(\green[2]_INST_0_i_7_n_0 ),
        .S(P[8]));
  MUXF7 \green[2]_INST_0_i_8 
       (.I0(\green[2]_INST_0_i_23_n_0 ),
        .I1(\green[2]_INST_0_i_24_n_0 ),
        .O(\green[2]_INST_0_i_8_n_0 ),
        .S(P[8]));
  MUXF7 \green[2]_INST_0_i_9 
       (.I0(\green[2]_INST_0_i_25_n_0 ),
        .I1(\green[2]_INST_0_i_26_n_0 ),
        .O(\green[2]_INST_0_i_9_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \green[3]_INST_0 
       (.I0(\green[3]_INST_0_i_1_n_0 ),
        .I1(P[11]),
        .I2(\green[3]_INST_0_i_2_n_0 ),
        .I3(P[12]),
        .I4(\green[3]_INST_0_i_3_n_0 ),
        .I5(\current_ver_pos_reg[5] ),
        .O(green[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_1 
       (.I0(\green[3]_INST_0_i_4_n_0 ),
        .I1(\green[3]_INST_0_i_5_n_0 ),
        .I2(P[10]),
        .I3(\green[3]_INST_0_i_6_n_0 ),
        .I4(P[9]),
        .I5(\green[3]_INST_0_i_7_n_0 ),
        .O(\green[3]_INST_0_i_1_n_0 ));
  MUXF7 \green[3]_INST_0_i_10 
       (.I0(\green[3]_INST_0_i_27_n_0 ),
        .I1(\green[3]_INST_0_i_28_n_0 ),
        .O(\green[3]_INST_0_i_10_n_0 ),
        .S(P[8]));
  MUXF7 \green[3]_INST_0_i_11 
       (.I0(\green[3]_INST_0_i_29_n_0 ),
        .I1(\green[3]_INST_0_i_30_n_0 ),
        .O(\green[3]_INST_0_i_11_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_12 
       (.I0(RAM_reg_4288_4351_6_8_n_1),
        .I1(RAM_reg_4224_4287_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_4160_4223_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_4096_4159_6_8_n_1),
        .O(\green[3]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_13 
       (.I0(RAM_reg_4544_4607_6_8_n_1),
        .I1(RAM_reg_4480_4543_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_4416_4479_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_4352_4415_6_8_n_1),
        .O(\green[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \green[3]_INST_0_i_14 
       (.I0(RAM_reg_4608_4671_6_8_n_1),
        .I1(P[6]),
        .I2(RAM_reg_4672_4735_6_8_n_1),
        .I3(P[7]),
        .I4(RAM_reg_4736_4799_6_8_n_1),
        .I5(P[8]),
        .O(\green[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_15 
       (.I0(RAM_reg_1728_1791_6_8_n_1),
        .I1(RAM_reg_1664_1727_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1600_1663_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1536_1599_6_8_n_1),
        .O(\green[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_16 
       (.I0(RAM_reg_1984_2047_6_8_n_1),
        .I1(RAM_reg_1920_1983_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1856_1919_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1792_1855_6_8_n_1),
        .O(\green[3]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_17 
       (.I0(RAM_reg_1216_1279_6_8_n_1),
        .I1(RAM_reg_1152_1215_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1088_1151_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1024_1087_6_8_n_1),
        .O(\green[3]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_18 
       (.I0(RAM_reg_1472_1535_6_8_n_1),
        .I1(RAM_reg_1408_1471_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1344_1407_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1280_1343_6_8_n_1),
        .O(\green[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_19 
       (.I0(RAM_reg_704_767_6_8_n_1),
        .I1(RAM_reg_640_703_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_576_639_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_512_575_6_8_n_1),
        .O(\green[3]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_2 
       (.I0(\green[3]_INST_0_i_8_n_0 ),
        .I1(\green[3]_INST_0_i_9_n_0 ),
        .I2(P[10]),
        .I3(\green[3]_INST_0_i_10_n_0 ),
        .I4(P[9]),
        .I5(\green[3]_INST_0_i_11_n_0 ),
        .O(\green[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_20 
       (.I0(RAM_reg_960_1023_6_8_n_1),
        .I1(RAM_reg_896_959_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_832_895_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_768_831_6_8_n_1),
        .O(\green[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_21 
       (.I0(RAM_reg_192_255_6_8_n_1),
        .I1(RAM_reg_128_191_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_64_127_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_0_63_6_8_n_1),
        .O(\green[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_22 
       (.I0(RAM_reg_448_511_6_8_n_1),
        .I1(RAM_reg_384_447_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_320_383_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_256_319_6_8_n_1),
        .O(\green[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_23 
       (.I0(RAM_reg_3776_3839_6_8_n_1),
        .I1(RAM_reg_3712_3775_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3648_3711_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3584_3647_6_8_n_1),
        .O(\green[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_24 
       (.I0(RAM_reg_4032_4095_6_8_n_1),
        .I1(RAM_reg_3968_4031_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3904_3967_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3840_3903_6_8_n_1),
        .O(\green[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_25 
       (.I0(RAM_reg_3264_3327_6_8_n_1),
        .I1(RAM_reg_3200_3263_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3136_3199_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3072_3135_6_8_n_1),
        .O(\green[3]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_26 
       (.I0(RAM_reg_3520_3583_6_8_n_1),
        .I1(RAM_reg_3456_3519_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3392_3455_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3328_3391_6_8_n_1),
        .O(\green[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_27 
       (.I0(RAM_reg_2752_2815_6_8_n_1),
        .I1(RAM_reg_2688_2751_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2624_2687_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2560_2623_6_8_n_1),
        .O(\green[3]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_28 
       (.I0(RAM_reg_3008_3071_6_8_n_1),
        .I1(RAM_reg_2944_3007_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2880_2943_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2816_2879_6_8_n_1),
        .O(\green[3]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_29 
       (.I0(RAM_reg_2240_2303_6_8_n_1),
        .I1(RAM_reg_2176_2239_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2112_2175_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2048_2111_6_8_n_1),
        .O(\green[3]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \green[3]_INST_0_i_3 
       (.I0(\green[3]_INST_0_i_12_n_0 ),
        .I1(P[8]),
        .I2(\green[3]_INST_0_i_13_n_0 ),
        .I3(P[9]),
        .I4(\green[3]_INST_0_i_14_n_0 ),
        .I5(P[10]),
        .O(\green[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \green[3]_INST_0_i_30 
       (.I0(RAM_reg_2496_2559_6_8_n_1),
        .I1(RAM_reg_2432_2495_6_8_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2368_2431_6_8_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2304_2367_6_8_n_1),
        .O(\green[3]_INST_0_i_30_n_0 ));
  MUXF7 \green[3]_INST_0_i_4 
       (.I0(\green[3]_INST_0_i_15_n_0 ),
        .I1(\green[3]_INST_0_i_16_n_0 ),
        .O(\green[3]_INST_0_i_4_n_0 ),
        .S(P[8]));
  MUXF7 \green[3]_INST_0_i_5 
       (.I0(\green[3]_INST_0_i_17_n_0 ),
        .I1(\green[3]_INST_0_i_18_n_0 ),
        .O(\green[3]_INST_0_i_5_n_0 ),
        .S(P[8]));
  MUXF7 \green[3]_INST_0_i_6 
       (.I0(\green[3]_INST_0_i_19_n_0 ),
        .I1(\green[3]_INST_0_i_20_n_0 ),
        .O(\green[3]_INST_0_i_6_n_0 ),
        .S(P[8]));
  MUXF7 \green[3]_INST_0_i_7 
       (.I0(\green[3]_INST_0_i_21_n_0 ),
        .I1(\green[3]_INST_0_i_22_n_0 ),
        .O(\green[3]_INST_0_i_7_n_0 ),
        .S(P[8]));
  MUXF7 \green[3]_INST_0_i_8 
       (.I0(\green[3]_INST_0_i_23_n_0 ),
        .I1(\green[3]_INST_0_i_24_n_0 ),
        .O(\green[3]_INST_0_i_8_n_0 ),
        .S(P[8]));
  MUXF7 \green[3]_INST_0_i_9 
       (.I0(\green[3]_INST_0_i_25_n_0 ),
        .I1(\green[3]_INST_0_i_26_n_0 ),
        .O(\green[3]_INST_0_i_9_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \red[0]_INST_0 
       (.I0(\red[0]_INST_0_i_1_n_0 ),
        .I1(P[11]),
        .I2(\red[0]_INST_0_i_2_n_0 ),
        .I3(P[12]),
        .I4(\red[0]_INST_0_i_3_n_0 ),
        .I5(\current_ver_pos_reg[5] ),
        .O(red[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_1 
       (.I0(\red[0]_INST_0_i_4_n_0 ),
        .I1(\red[0]_INST_0_i_5_n_0 ),
        .I2(P[10]),
        .I3(\red[0]_INST_0_i_6_n_0 ),
        .I4(P[9]),
        .I5(\red[0]_INST_0_i_7_n_0 ),
        .O(\red[0]_INST_0_i_1_n_0 ));
  MUXF7 \red[0]_INST_0_i_10 
       (.I0(\red[0]_INST_0_i_27_n_0 ),
        .I1(\red[0]_INST_0_i_28_n_0 ),
        .O(\red[0]_INST_0_i_10_n_0 ),
        .S(P[8]));
  MUXF7 \red[0]_INST_0_i_11 
       (.I0(\red[0]_INST_0_i_29_n_0 ),
        .I1(\red[0]_INST_0_i_30_n_0 ),
        .O(\red[0]_INST_0_i_11_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_12 
       (.I0(RAM_reg_4288_4351_6_8_n_2),
        .I1(RAM_reg_4224_4287_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_4160_4223_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_4096_4159_6_8_n_2),
        .O(\red[0]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_13 
       (.I0(RAM_reg_4544_4607_6_8_n_2),
        .I1(RAM_reg_4480_4543_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_4416_4479_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_4352_4415_6_8_n_2),
        .O(\red[0]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \red[0]_INST_0_i_14 
       (.I0(RAM_reg_4608_4671_6_8_n_2),
        .I1(P[6]),
        .I2(RAM_reg_4672_4735_6_8_n_2),
        .I3(P[7]),
        .I4(RAM_reg_4736_4799_6_8_n_2),
        .I5(P[8]),
        .O(\red[0]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_15 
       (.I0(RAM_reg_1728_1791_6_8_n_2),
        .I1(RAM_reg_1664_1727_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1600_1663_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1536_1599_6_8_n_2),
        .O(\red[0]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_16 
       (.I0(RAM_reg_1984_2047_6_8_n_2),
        .I1(RAM_reg_1920_1983_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1856_1919_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1792_1855_6_8_n_2),
        .O(\red[0]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_17 
       (.I0(RAM_reg_1216_1279_6_8_n_2),
        .I1(RAM_reg_1152_1215_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1088_1151_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1024_1087_6_8_n_2),
        .O(\red[0]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_18 
       (.I0(RAM_reg_1472_1535_6_8_n_2),
        .I1(RAM_reg_1408_1471_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1344_1407_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1280_1343_6_8_n_2),
        .O(\red[0]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_19 
       (.I0(RAM_reg_704_767_6_8_n_2),
        .I1(RAM_reg_640_703_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_576_639_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_512_575_6_8_n_2),
        .O(\red[0]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_2 
       (.I0(\red[0]_INST_0_i_8_n_0 ),
        .I1(\red[0]_INST_0_i_9_n_0 ),
        .I2(P[10]),
        .I3(\red[0]_INST_0_i_10_n_0 ),
        .I4(P[9]),
        .I5(\red[0]_INST_0_i_11_n_0 ),
        .O(\red[0]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_20 
       (.I0(RAM_reg_960_1023_6_8_n_2),
        .I1(RAM_reg_896_959_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_832_895_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_768_831_6_8_n_2),
        .O(\red[0]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_21 
       (.I0(RAM_reg_192_255_6_8_n_2),
        .I1(RAM_reg_128_191_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_64_127_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_0_63_6_8_n_2),
        .O(\red[0]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_22 
       (.I0(RAM_reg_448_511_6_8_n_2),
        .I1(RAM_reg_384_447_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_320_383_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_256_319_6_8_n_2),
        .O(\red[0]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_23 
       (.I0(RAM_reg_3776_3839_6_8_n_2),
        .I1(RAM_reg_3712_3775_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3648_3711_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3584_3647_6_8_n_2),
        .O(\red[0]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_24 
       (.I0(RAM_reg_4032_4095_6_8_n_2),
        .I1(RAM_reg_3968_4031_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3904_3967_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3840_3903_6_8_n_2),
        .O(\red[0]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_25 
       (.I0(RAM_reg_3264_3327_6_8_n_2),
        .I1(RAM_reg_3200_3263_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3136_3199_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3072_3135_6_8_n_2),
        .O(\red[0]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_26 
       (.I0(RAM_reg_3520_3583_6_8_n_2),
        .I1(RAM_reg_3456_3519_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3392_3455_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3328_3391_6_8_n_2),
        .O(\red[0]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_27 
       (.I0(RAM_reg_2752_2815_6_8_n_2),
        .I1(RAM_reg_2688_2751_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2624_2687_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2560_2623_6_8_n_2),
        .O(\red[0]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_28 
       (.I0(RAM_reg_3008_3071_6_8_n_2),
        .I1(RAM_reg_2944_3007_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2880_2943_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2816_2879_6_8_n_2),
        .O(\red[0]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_29 
       (.I0(RAM_reg_2240_2303_6_8_n_2),
        .I1(RAM_reg_2176_2239_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2112_2175_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2048_2111_6_8_n_2),
        .O(\red[0]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \red[0]_INST_0_i_3 
       (.I0(\red[0]_INST_0_i_12_n_0 ),
        .I1(P[8]),
        .I2(\red[0]_INST_0_i_13_n_0 ),
        .I3(P[9]),
        .I4(\red[0]_INST_0_i_14_n_0 ),
        .I5(P[10]),
        .O(\red[0]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[0]_INST_0_i_30 
       (.I0(RAM_reg_2496_2559_6_8_n_2),
        .I1(RAM_reg_2432_2495_6_8_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2368_2431_6_8_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2304_2367_6_8_n_2),
        .O(\red[0]_INST_0_i_30_n_0 ));
  MUXF7 \red[0]_INST_0_i_4 
       (.I0(\red[0]_INST_0_i_15_n_0 ),
        .I1(\red[0]_INST_0_i_16_n_0 ),
        .O(\red[0]_INST_0_i_4_n_0 ),
        .S(P[8]));
  MUXF7 \red[0]_INST_0_i_5 
       (.I0(\red[0]_INST_0_i_17_n_0 ),
        .I1(\red[0]_INST_0_i_18_n_0 ),
        .O(\red[0]_INST_0_i_5_n_0 ),
        .S(P[8]));
  MUXF7 \red[0]_INST_0_i_6 
       (.I0(\red[0]_INST_0_i_19_n_0 ),
        .I1(\red[0]_INST_0_i_20_n_0 ),
        .O(\red[0]_INST_0_i_6_n_0 ),
        .S(P[8]));
  MUXF7 \red[0]_INST_0_i_7 
       (.I0(\red[0]_INST_0_i_21_n_0 ),
        .I1(\red[0]_INST_0_i_22_n_0 ),
        .O(\red[0]_INST_0_i_7_n_0 ),
        .S(P[8]));
  MUXF7 \red[0]_INST_0_i_8 
       (.I0(\red[0]_INST_0_i_23_n_0 ),
        .I1(\red[0]_INST_0_i_24_n_0 ),
        .O(\red[0]_INST_0_i_8_n_0 ),
        .S(P[8]));
  MUXF7 \red[0]_INST_0_i_9 
       (.I0(\red[0]_INST_0_i_25_n_0 ),
        .I1(\red[0]_INST_0_i_26_n_0 ),
        .O(\red[0]_INST_0_i_9_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \red[1]_INST_0 
       (.I0(\red[1]_INST_0_i_1_n_0 ),
        .I1(P[11]),
        .I2(\red[1]_INST_0_i_2_n_0 ),
        .I3(P[12]),
        .I4(\red[1]_INST_0_i_3_n_0 ),
        .I5(\current_ver_pos_reg[5] ),
        .O(red[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_1 
       (.I0(\red[1]_INST_0_i_4_n_0 ),
        .I1(\red[1]_INST_0_i_5_n_0 ),
        .I2(P[10]),
        .I3(\red[1]_INST_0_i_6_n_0 ),
        .I4(P[9]),
        .I5(\red[1]_INST_0_i_7_n_0 ),
        .O(\red[1]_INST_0_i_1_n_0 ));
  MUXF7 \red[1]_INST_0_i_10 
       (.I0(\red[1]_INST_0_i_27_n_0 ),
        .I1(\red[1]_INST_0_i_28_n_0 ),
        .O(\red[1]_INST_0_i_10_n_0 ),
        .S(P[8]));
  MUXF7 \red[1]_INST_0_i_11 
       (.I0(\red[1]_INST_0_i_29_n_0 ),
        .I1(\red[1]_INST_0_i_30_n_0 ),
        .O(\red[1]_INST_0_i_11_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_12 
       (.I0(RAM_reg_4288_4351_9_11_n_0),
        .I1(RAM_reg_4224_4287_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_4160_4223_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_4096_4159_9_11_n_0),
        .O(\red[1]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_13 
       (.I0(RAM_reg_4544_4607_9_11_n_0),
        .I1(RAM_reg_4480_4543_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_4416_4479_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_4352_4415_9_11_n_0),
        .O(\red[1]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \red[1]_INST_0_i_14 
       (.I0(RAM_reg_4608_4671_9_11_n_0),
        .I1(P[6]),
        .I2(RAM_reg_4672_4735_9_11_n_0),
        .I3(P[7]),
        .I4(RAM_reg_4736_4799_9_11_n_0),
        .I5(P[8]),
        .O(\red[1]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_15 
       (.I0(RAM_reg_1728_1791_9_11_n_0),
        .I1(RAM_reg_1664_1727_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1600_1663_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1536_1599_9_11_n_0),
        .O(\red[1]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_16 
       (.I0(RAM_reg_1984_2047_9_11_n_0),
        .I1(RAM_reg_1920_1983_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1856_1919_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1792_1855_9_11_n_0),
        .O(\red[1]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_17 
       (.I0(RAM_reg_1216_1279_9_11_n_0),
        .I1(RAM_reg_1152_1215_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1088_1151_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1024_1087_9_11_n_0),
        .O(\red[1]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_18 
       (.I0(RAM_reg_1472_1535_9_11_n_0),
        .I1(RAM_reg_1408_1471_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_1344_1407_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_1280_1343_9_11_n_0),
        .O(\red[1]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_19 
       (.I0(RAM_reg_704_767_9_11_n_0),
        .I1(RAM_reg_640_703_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_576_639_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_512_575_9_11_n_0),
        .O(\red[1]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_2 
       (.I0(\red[1]_INST_0_i_8_n_0 ),
        .I1(\red[1]_INST_0_i_9_n_0 ),
        .I2(P[10]),
        .I3(\red[1]_INST_0_i_10_n_0 ),
        .I4(P[9]),
        .I5(\red[1]_INST_0_i_11_n_0 ),
        .O(\red[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_20 
       (.I0(RAM_reg_960_1023_9_11_n_0),
        .I1(RAM_reg_896_959_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_832_895_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_768_831_9_11_n_0),
        .O(\red[1]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_21 
       (.I0(RAM_reg_192_255_9_11_n_0),
        .I1(RAM_reg_128_191_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_64_127_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_0_63_9_11_n_0),
        .O(\red[1]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_22 
       (.I0(RAM_reg_448_511_9_11_n_0),
        .I1(RAM_reg_384_447_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_320_383_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_256_319_9_11_n_0),
        .O(\red[1]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_23 
       (.I0(RAM_reg_3776_3839_9_11_n_0),
        .I1(RAM_reg_3712_3775_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3648_3711_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3584_3647_9_11_n_0),
        .O(\red[1]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_24 
       (.I0(RAM_reg_4032_4095_9_11_n_0),
        .I1(RAM_reg_3968_4031_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3904_3967_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3840_3903_9_11_n_0),
        .O(\red[1]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_25 
       (.I0(RAM_reg_3264_3327_9_11_n_0),
        .I1(RAM_reg_3200_3263_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3136_3199_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3072_3135_9_11_n_0),
        .O(\red[1]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_26 
       (.I0(RAM_reg_3520_3583_9_11_n_0),
        .I1(RAM_reg_3456_3519_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_3392_3455_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_3328_3391_9_11_n_0),
        .O(\red[1]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_27 
       (.I0(RAM_reg_2752_2815_9_11_n_0),
        .I1(RAM_reg_2688_2751_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2624_2687_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2560_2623_9_11_n_0),
        .O(\red[1]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_28 
       (.I0(RAM_reg_3008_3071_9_11_n_0),
        .I1(RAM_reg_2944_3007_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2880_2943_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2816_2879_9_11_n_0),
        .O(\red[1]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_29 
       (.I0(RAM_reg_2240_2303_9_11_n_0),
        .I1(RAM_reg_2176_2239_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2112_2175_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2048_2111_9_11_n_0),
        .O(\red[1]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \red[1]_INST_0_i_3 
       (.I0(\red[1]_INST_0_i_12_n_0 ),
        .I1(P[8]),
        .I2(\red[1]_INST_0_i_13_n_0 ),
        .I3(P[9]),
        .I4(\red[1]_INST_0_i_14_n_0 ),
        .I5(P[10]),
        .O(\red[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[1]_INST_0_i_30 
       (.I0(RAM_reg_2496_2559_9_11_n_0),
        .I1(RAM_reg_2432_2495_9_11_n_0),
        .I2(P[7]),
        .I3(RAM_reg_2368_2431_9_11_n_0),
        .I4(P[6]),
        .I5(RAM_reg_2304_2367_9_11_n_0),
        .O(\red[1]_INST_0_i_30_n_0 ));
  MUXF7 \red[1]_INST_0_i_4 
       (.I0(\red[1]_INST_0_i_15_n_0 ),
        .I1(\red[1]_INST_0_i_16_n_0 ),
        .O(\red[1]_INST_0_i_4_n_0 ),
        .S(P[8]));
  MUXF7 \red[1]_INST_0_i_5 
       (.I0(\red[1]_INST_0_i_17_n_0 ),
        .I1(\red[1]_INST_0_i_18_n_0 ),
        .O(\red[1]_INST_0_i_5_n_0 ),
        .S(P[8]));
  MUXF7 \red[1]_INST_0_i_6 
       (.I0(\red[1]_INST_0_i_19_n_0 ),
        .I1(\red[1]_INST_0_i_20_n_0 ),
        .O(\red[1]_INST_0_i_6_n_0 ),
        .S(P[8]));
  MUXF7 \red[1]_INST_0_i_7 
       (.I0(\red[1]_INST_0_i_21_n_0 ),
        .I1(\red[1]_INST_0_i_22_n_0 ),
        .O(\red[1]_INST_0_i_7_n_0 ),
        .S(P[8]));
  MUXF7 \red[1]_INST_0_i_8 
       (.I0(\red[1]_INST_0_i_23_n_0 ),
        .I1(\red[1]_INST_0_i_24_n_0 ),
        .O(\red[1]_INST_0_i_8_n_0 ),
        .S(P[8]));
  MUXF7 \red[1]_INST_0_i_9 
       (.I0(\red[1]_INST_0_i_25_n_0 ),
        .I1(\red[1]_INST_0_i_26_n_0 ),
        .O(\red[1]_INST_0_i_9_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \red[2]_INST_0 
       (.I0(\red[2]_INST_0_i_1_n_0 ),
        .I1(P[11]),
        .I2(\red[2]_INST_0_i_2_n_0 ),
        .I3(P[12]),
        .I4(\red[2]_INST_0_i_3_n_0 ),
        .I5(\current_ver_pos_reg[5] ),
        .O(red[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_1 
       (.I0(\red[2]_INST_0_i_4_n_0 ),
        .I1(\red[2]_INST_0_i_5_n_0 ),
        .I2(P[10]),
        .I3(\red[2]_INST_0_i_6_n_0 ),
        .I4(P[9]),
        .I5(\red[2]_INST_0_i_7_n_0 ),
        .O(\red[2]_INST_0_i_1_n_0 ));
  MUXF7 \red[2]_INST_0_i_10 
       (.I0(\red[2]_INST_0_i_27_n_0 ),
        .I1(\red[2]_INST_0_i_28_n_0 ),
        .O(\red[2]_INST_0_i_10_n_0 ),
        .S(P[8]));
  MUXF7 \red[2]_INST_0_i_11 
       (.I0(\red[2]_INST_0_i_29_n_0 ),
        .I1(\red[2]_INST_0_i_30_n_0 ),
        .O(\red[2]_INST_0_i_11_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_12 
       (.I0(RAM_reg_4288_4351_9_11_n_1),
        .I1(RAM_reg_4224_4287_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_4160_4223_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_4096_4159_9_11_n_1),
        .O(\red[2]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_13 
       (.I0(RAM_reg_4544_4607_9_11_n_1),
        .I1(RAM_reg_4480_4543_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_4416_4479_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_4352_4415_9_11_n_1),
        .O(\red[2]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \red[2]_INST_0_i_14 
       (.I0(RAM_reg_4608_4671_9_11_n_1),
        .I1(P[6]),
        .I2(RAM_reg_4672_4735_9_11_n_1),
        .I3(P[7]),
        .I4(RAM_reg_4736_4799_9_11_n_1),
        .I5(P[8]),
        .O(\red[2]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_15 
       (.I0(RAM_reg_1728_1791_9_11_n_1),
        .I1(RAM_reg_1664_1727_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1600_1663_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1536_1599_9_11_n_1),
        .O(\red[2]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_16 
       (.I0(RAM_reg_1984_2047_9_11_n_1),
        .I1(RAM_reg_1920_1983_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1856_1919_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1792_1855_9_11_n_1),
        .O(\red[2]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_17 
       (.I0(RAM_reg_1216_1279_9_11_n_1),
        .I1(RAM_reg_1152_1215_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1088_1151_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1024_1087_9_11_n_1),
        .O(\red[2]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_18 
       (.I0(RAM_reg_1472_1535_9_11_n_1),
        .I1(RAM_reg_1408_1471_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_1344_1407_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_1280_1343_9_11_n_1),
        .O(\red[2]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_19 
       (.I0(RAM_reg_704_767_9_11_n_1),
        .I1(RAM_reg_640_703_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_576_639_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_512_575_9_11_n_1),
        .O(\red[2]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_2 
       (.I0(\red[2]_INST_0_i_8_n_0 ),
        .I1(\red[2]_INST_0_i_9_n_0 ),
        .I2(P[10]),
        .I3(\red[2]_INST_0_i_10_n_0 ),
        .I4(P[9]),
        .I5(\red[2]_INST_0_i_11_n_0 ),
        .O(\red[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_20 
       (.I0(RAM_reg_960_1023_9_11_n_1),
        .I1(RAM_reg_896_959_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_832_895_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_768_831_9_11_n_1),
        .O(\red[2]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_21 
       (.I0(RAM_reg_192_255_9_11_n_1),
        .I1(RAM_reg_128_191_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_64_127_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_0_63_9_11_n_1),
        .O(\red[2]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_22 
       (.I0(RAM_reg_448_511_9_11_n_1),
        .I1(RAM_reg_384_447_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_320_383_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_256_319_9_11_n_1),
        .O(\red[2]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_23 
       (.I0(RAM_reg_3776_3839_9_11_n_1),
        .I1(RAM_reg_3712_3775_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3648_3711_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3584_3647_9_11_n_1),
        .O(\red[2]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_24 
       (.I0(RAM_reg_4032_4095_9_11_n_1),
        .I1(RAM_reg_3968_4031_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3904_3967_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3840_3903_9_11_n_1),
        .O(\red[2]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_25 
       (.I0(RAM_reg_3264_3327_9_11_n_1),
        .I1(RAM_reg_3200_3263_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3136_3199_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3072_3135_9_11_n_1),
        .O(\red[2]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_26 
       (.I0(RAM_reg_3520_3583_9_11_n_1),
        .I1(RAM_reg_3456_3519_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_3392_3455_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_3328_3391_9_11_n_1),
        .O(\red[2]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_27 
       (.I0(RAM_reg_2752_2815_9_11_n_1),
        .I1(RAM_reg_2688_2751_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2624_2687_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2560_2623_9_11_n_1),
        .O(\red[2]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_28 
       (.I0(RAM_reg_3008_3071_9_11_n_1),
        .I1(RAM_reg_2944_3007_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2880_2943_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2816_2879_9_11_n_1),
        .O(\red[2]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_29 
       (.I0(RAM_reg_2240_2303_9_11_n_1),
        .I1(RAM_reg_2176_2239_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2112_2175_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2048_2111_9_11_n_1),
        .O(\red[2]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \red[2]_INST_0_i_3 
       (.I0(\red[2]_INST_0_i_12_n_0 ),
        .I1(P[8]),
        .I2(\red[2]_INST_0_i_13_n_0 ),
        .I3(P[9]),
        .I4(\red[2]_INST_0_i_14_n_0 ),
        .I5(P[10]),
        .O(\red[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[2]_INST_0_i_30 
       (.I0(RAM_reg_2496_2559_9_11_n_1),
        .I1(RAM_reg_2432_2495_9_11_n_1),
        .I2(P[7]),
        .I3(RAM_reg_2368_2431_9_11_n_1),
        .I4(P[6]),
        .I5(RAM_reg_2304_2367_9_11_n_1),
        .O(\red[2]_INST_0_i_30_n_0 ));
  MUXF7 \red[2]_INST_0_i_4 
       (.I0(\red[2]_INST_0_i_15_n_0 ),
        .I1(\red[2]_INST_0_i_16_n_0 ),
        .O(\red[2]_INST_0_i_4_n_0 ),
        .S(P[8]));
  MUXF7 \red[2]_INST_0_i_5 
       (.I0(\red[2]_INST_0_i_17_n_0 ),
        .I1(\red[2]_INST_0_i_18_n_0 ),
        .O(\red[2]_INST_0_i_5_n_0 ),
        .S(P[8]));
  MUXF7 \red[2]_INST_0_i_6 
       (.I0(\red[2]_INST_0_i_19_n_0 ),
        .I1(\red[2]_INST_0_i_20_n_0 ),
        .O(\red[2]_INST_0_i_6_n_0 ),
        .S(P[8]));
  MUXF7 \red[2]_INST_0_i_7 
       (.I0(\red[2]_INST_0_i_21_n_0 ),
        .I1(\red[2]_INST_0_i_22_n_0 ),
        .O(\red[2]_INST_0_i_7_n_0 ),
        .S(P[8]));
  MUXF7 \red[2]_INST_0_i_8 
       (.I0(\red[2]_INST_0_i_23_n_0 ),
        .I1(\red[2]_INST_0_i_24_n_0 ),
        .O(\red[2]_INST_0_i_8_n_0 ),
        .S(P[8]));
  MUXF7 \red[2]_INST_0_i_9 
       (.I0(\red[2]_INST_0_i_25_n_0 ),
        .I1(\red[2]_INST_0_i_26_n_0 ),
        .O(\red[2]_INST_0_i_9_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \red[3]_INST_0 
       (.I0(\red[3]_INST_0_i_1_n_0 ),
        .I1(P[11]),
        .I2(\red[3]_INST_0_i_2_n_0 ),
        .I3(P[12]),
        .I4(\red[3]_INST_0_i_3_n_0 ),
        .I5(\current_ver_pos_reg[5] ),
        .O(red[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_1 
       (.I0(\red[3]_INST_0_i_5_n_0 ),
        .I1(\red[3]_INST_0_i_6_n_0 ),
        .I2(P[10]),
        .I3(\red[3]_INST_0_i_7_n_0 ),
        .I4(P[9]),
        .I5(\red[3]_INST_0_i_8_n_0 ),
        .O(\red[3]_INST_0_i_1_n_0 ));
  MUXF7 \red[3]_INST_0_i_10 
       (.I0(\red[3]_INST_0_i_28_n_0 ),
        .I1(\red[3]_INST_0_i_29_n_0 ),
        .O(\red[3]_INST_0_i_10_n_0 ),
        .S(P[8]));
  MUXF7 \red[3]_INST_0_i_11 
       (.I0(\red[3]_INST_0_i_30_n_0 ),
        .I1(\red[3]_INST_0_i_31_n_0 ),
        .O(\red[3]_INST_0_i_11_n_0 ),
        .S(P[8]));
  MUXF7 \red[3]_INST_0_i_12 
       (.I0(\red[3]_INST_0_i_32_n_0 ),
        .I1(\red[3]_INST_0_i_33_n_0 ),
        .O(\red[3]_INST_0_i_12_n_0 ),
        .S(P[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_13 
       (.I0(RAM_reg_4288_4351_9_11_n_2),
        .I1(RAM_reg_4224_4287_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_4160_4223_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_4096_4159_9_11_n_2),
        .O(\red[3]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_14 
       (.I0(RAM_reg_4544_4607_9_11_n_2),
        .I1(RAM_reg_4480_4543_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_4416_4479_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_4352_4415_9_11_n_2),
        .O(\red[3]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \red[3]_INST_0_i_15 
       (.I0(RAM_reg_4608_4671_9_11_n_2),
        .I1(P[6]),
        .I2(RAM_reg_4672_4735_9_11_n_2),
        .I3(P[7]),
        .I4(RAM_reg_4736_4799_9_11_n_2),
        .I5(P[8]),
        .O(\red[3]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_18 
       (.I0(RAM_reg_1728_1791_9_11_n_2),
        .I1(RAM_reg_1664_1727_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1600_1663_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1536_1599_9_11_n_2),
        .O(\red[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_19 
       (.I0(RAM_reg_1984_2047_9_11_n_2),
        .I1(RAM_reg_1920_1983_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1856_1919_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1792_1855_9_11_n_2),
        .O(\red[3]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_2 
       (.I0(\red[3]_INST_0_i_9_n_0 ),
        .I1(\red[3]_INST_0_i_10_n_0 ),
        .I2(P[10]),
        .I3(\red[3]_INST_0_i_11_n_0 ),
        .I4(P[9]),
        .I5(\red[3]_INST_0_i_12_n_0 ),
        .O(\red[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_20 
       (.I0(RAM_reg_1216_1279_9_11_n_2),
        .I1(RAM_reg_1152_1215_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1088_1151_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1024_1087_9_11_n_2),
        .O(\red[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_21 
       (.I0(RAM_reg_1472_1535_9_11_n_2),
        .I1(RAM_reg_1408_1471_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_1344_1407_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_1280_1343_9_11_n_2),
        .O(\red[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_22 
       (.I0(RAM_reg_704_767_9_11_n_2),
        .I1(RAM_reg_640_703_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_576_639_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_512_575_9_11_n_2),
        .O(\red[3]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_23 
       (.I0(RAM_reg_960_1023_9_11_n_2),
        .I1(RAM_reg_896_959_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_832_895_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_768_831_9_11_n_2),
        .O(\red[3]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_24 
       (.I0(RAM_reg_192_255_9_11_n_2),
        .I1(RAM_reg_128_191_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_64_127_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_0_63_9_11_n_2),
        .O(\red[3]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_25 
       (.I0(RAM_reg_448_511_9_11_n_2),
        .I1(RAM_reg_384_447_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_320_383_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_256_319_9_11_n_2),
        .O(\red[3]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_26 
       (.I0(RAM_reg_3776_3839_9_11_n_2),
        .I1(RAM_reg_3712_3775_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3648_3711_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3584_3647_9_11_n_2),
        .O(\red[3]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_27 
       (.I0(RAM_reg_4032_4095_9_11_n_2),
        .I1(RAM_reg_3968_4031_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3904_3967_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3840_3903_9_11_n_2),
        .O(\red[3]_INST_0_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_28 
       (.I0(RAM_reg_3264_3327_9_11_n_2),
        .I1(RAM_reg_3200_3263_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3136_3199_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3072_3135_9_11_n_2),
        .O(\red[3]_INST_0_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_29 
       (.I0(RAM_reg_3520_3583_9_11_n_2),
        .I1(RAM_reg_3456_3519_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_3392_3455_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_3328_3391_9_11_n_2),
        .O(\red[3]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFE200E2)) 
    \red[3]_INST_0_i_3 
       (.I0(\red[3]_INST_0_i_13_n_0 ),
        .I1(P[8]),
        .I2(\red[3]_INST_0_i_14_n_0 ),
        .I3(P[9]),
        .I4(\red[3]_INST_0_i_15_n_0 ),
        .I5(P[10]),
        .O(\red[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_30 
       (.I0(RAM_reg_2752_2815_9_11_n_2),
        .I1(RAM_reg_2688_2751_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2624_2687_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2560_2623_9_11_n_2),
        .O(\red[3]_INST_0_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_31 
       (.I0(RAM_reg_3008_3071_9_11_n_2),
        .I1(RAM_reg_2944_3007_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2880_2943_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2816_2879_9_11_n_2),
        .O(\red[3]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_32 
       (.I0(RAM_reg_2240_2303_9_11_n_2),
        .I1(RAM_reg_2176_2239_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2112_2175_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2048_2111_9_11_n_2),
        .O(\red[3]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \red[3]_INST_0_i_33 
       (.I0(RAM_reg_2496_2559_9_11_n_2),
        .I1(RAM_reg_2432_2495_9_11_n_2),
        .I2(P[7]),
        .I3(RAM_reg_2368_2431_9_11_n_2),
        .I4(P[6]),
        .I5(RAM_reg_2304_2367_9_11_n_2),
        .O(\red[3]_INST_0_i_33_n_0 ));
  MUXF7 \red[3]_INST_0_i_5 
       (.I0(\red[3]_INST_0_i_18_n_0 ),
        .I1(\red[3]_INST_0_i_19_n_0 ),
        .O(\red[3]_INST_0_i_5_n_0 ),
        .S(P[8]));
  MUXF7 \red[3]_INST_0_i_6 
       (.I0(\red[3]_INST_0_i_20_n_0 ),
        .I1(\red[3]_INST_0_i_21_n_0 ),
        .O(\red[3]_INST_0_i_6_n_0 ),
        .S(P[8]));
  MUXF7 \red[3]_INST_0_i_7 
       (.I0(\red[3]_INST_0_i_22_n_0 ),
        .I1(\red[3]_INST_0_i_23_n_0 ),
        .O(\red[3]_INST_0_i_7_n_0 ),
        .S(P[8]));
  MUXF7 \red[3]_INST_0_i_8 
       (.I0(\red[3]_INST_0_i_24_n_0 ),
        .I1(\red[3]_INST_0_i_25_n_0 ),
        .O(\red[3]_INST_0_i_8_n_0 ),
        .S(P[8]));
  MUXF7 \red[3]_INST_0_i_9 
       (.I0(\red[3]_INST_0_i_26_n_0 ),
        .I1(\red[3]_INST_0_i_27_n_0 ),
        .O(\red[3]_INST_0_i_9_n_0 ),
        .S(P[8]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_signals_generator
   (A,
    readIndex,
    C,
    hsync,
    vsync,
    i_zero);
  output [5:0]A;
  output readIndex;
  output [6:0]C;
  output hsync;
  output vsync;
  input i_zero;

  wire [5:0]A;
  wire [6:0]C;
  wire \current_hor_pos[0]_i_1_n_0 ;
  wire \current_hor_pos[1]_i_1_n_0 ;
  wire \current_hor_pos[2]_i_1_n_0 ;
  wire \current_hor_pos[3]_i_1_n_0 ;
  wire \current_hor_pos[4]_i_1_n_0 ;
  wire \current_hor_pos[5]_i_1_n_0 ;
  wire \current_hor_pos[6]_i_1_n_0 ;
  wire \current_hor_pos[7]_i_1_n_0 ;
  wire \current_hor_pos[8]_i_1_n_0 ;
  wire \current_hor_pos[9]_i_1_n_0 ;
  wire \current_hor_pos[9]_i_2_n_0 ;
  wire [9:0]current_hor_pos_reg__0;
  wire \current_ver_pos[9]_i_1_n_0 ;
  wire \current_ver_pos[9]_i_3_n_0 ;
  wire \current_ver_pos[9]_i_4_n_0 ;
  wire [9:0]current_ver_pos_reg__0;
  wire hsync;
  wire i_zero;
  wire [9:0]p_0_in;
  wire readIndex;
  wire readIndex_i_14_n_0;
  wire \red[3]_INST_0_i_16_n_0 ;
  wire \red[3]_INST_0_i_17_n_0 ;
  wire vsync;
  wire vsync_INST_0_i_1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \current_hor_pos[0]_i_1 
       (.I0(\current_ver_pos[9]_i_1_n_0 ),
        .I1(current_hor_pos_reg__0[0]),
        .O(\current_hor_pos[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h14)) 
    \current_hor_pos[1]_i_1 
       (.I0(\current_ver_pos[9]_i_1_n_0 ),
        .I1(current_hor_pos_reg__0[0]),
        .I2(current_hor_pos_reg__0[1]),
        .O(\current_hor_pos[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h1540)) 
    \current_hor_pos[2]_i_1 
       (.I0(\current_ver_pos[9]_i_1_n_0 ),
        .I1(current_hor_pos_reg__0[1]),
        .I2(current_hor_pos_reg__0[0]),
        .I3(current_hor_pos_reg__0[2]),
        .O(\current_hor_pos[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h15554000)) 
    \current_hor_pos[3]_i_1 
       (.I0(\current_ver_pos[9]_i_1_n_0 ),
        .I1(current_hor_pos_reg__0[0]),
        .I2(current_hor_pos_reg__0[1]),
        .I3(current_hor_pos_reg__0[2]),
        .I4(current_hor_pos_reg__0[3]),
        .O(\current_hor_pos[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1555555540000000)) 
    \current_hor_pos[4]_i_1 
       (.I0(\current_ver_pos[9]_i_1_n_0 ),
        .I1(current_hor_pos_reg__0[2]),
        .I2(current_hor_pos_reg__0[1]),
        .I3(current_hor_pos_reg__0[0]),
        .I4(current_hor_pos_reg__0[3]),
        .I5(current_hor_pos_reg__0[4]),
        .O(\current_hor_pos[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0770)) 
    \current_hor_pos[5]_i_1 
       (.I0(current_hor_pos_reg__0[8]),
        .I1(current_hor_pos_reg__0[9]),
        .I2(current_hor_pos_reg__0[5]),
        .I3(\current_hor_pos[9]_i_2_n_0 ),
        .O(\current_hor_pos[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h07777000)) 
    \current_hor_pos[6]_i_1 
       (.I0(current_hor_pos_reg__0[8]),
        .I1(current_hor_pos_reg__0[9]),
        .I2(current_hor_pos_reg__0[5]),
        .I3(\current_hor_pos[9]_i_2_n_0 ),
        .I4(current_hor_pos_reg__0[6]),
        .O(\current_hor_pos[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0777777770000000)) 
    \current_hor_pos[7]_i_1 
       (.I0(current_hor_pos_reg__0[8]),
        .I1(current_hor_pos_reg__0[9]),
        .I2(\current_hor_pos[9]_i_2_n_0 ),
        .I3(current_hor_pos_reg__0[6]),
        .I4(current_hor_pos_reg__0[5]),
        .I5(current_hor_pos_reg__0[7]),
        .O(\current_hor_pos[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15555557C0000000)) 
    \current_hor_pos[8]_i_1 
       (.I0(current_hor_pos_reg__0[9]),
        .I1(current_hor_pos_reg__0[7]),
        .I2(current_hor_pos_reg__0[5]),
        .I3(current_hor_pos_reg__0[6]),
        .I4(\current_hor_pos[9]_i_2_n_0 ),
        .I5(current_hor_pos_reg__0[8]),
        .O(\current_hor_pos[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001FFFF80000000)) 
    \current_hor_pos[9]_i_1 
       (.I0(\current_hor_pos[9]_i_2_n_0 ),
        .I1(current_hor_pos_reg__0[6]),
        .I2(current_hor_pos_reg__0[5]),
        .I3(current_hor_pos_reg__0[7]),
        .I4(current_hor_pos_reg__0[8]),
        .I5(current_hor_pos_reg__0[9]),
        .O(\current_hor_pos[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \current_hor_pos[9]_i_2 
       (.I0(current_hor_pos_reg__0[4]),
        .I1(current_hor_pos_reg__0[3]),
        .I2(current_hor_pos_reg__0[0]),
        .I3(current_hor_pos_reg__0[1]),
        .I4(current_hor_pos_reg__0[2]),
        .O(\current_hor_pos[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_hor_pos_reg[0] 
       (.C(i_zero),
        .CE(1'b1),
        .D(\current_hor_pos[0]_i_1_n_0 ),
        .Q(current_hor_pos_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_hor_pos_reg[1] 
       (.C(i_zero),
        .CE(1'b1),
        .D(\current_hor_pos[1]_i_1_n_0 ),
        .Q(current_hor_pos_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_hor_pos_reg[2] 
       (.C(i_zero),
        .CE(1'b1),
        .D(\current_hor_pos[2]_i_1_n_0 ),
        .Q(current_hor_pos_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_hor_pos_reg[3] 
       (.C(i_zero),
        .CE(1'b1),
        .D(\current_hor_pos[3]_i_1_n_0 ),
        .Q(current_hor_pos_reg__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_hor_pos_reg[4] 
       (.C(i_zero),
        .CE(1'b1),
        .D(\current_hor_pos[4]_i_1_n_0 ),
        .Q(current_hor_pos_reg__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_hor_pos_reg[5] 
       (.C(i_zero),
        .CE(1'b1),
        .D(\current_hor_pos[5]_i_1_n_0 ),
        .Q(current_hor_pos_reg__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_hor_pos_reg[6] 
       (.C(i_zero),
        .CE(1'b1),
        .D(\current_hor_pos[6]_i_1_n_0 ),
        .Q(current_hor_pos_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_hor_pos_reg[7] 
       (.C(i_zero),
        .CE(1'b1),
        .D(\current_hor_pos[7]_i_1_n_0 ),
        .Q(current_hor_pos_reg__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_hor_pos_reg[8] 
       (.C(i_zero),
        .CE(1'b1),
        .D(\current_hor_pos[8]_i_1_n_0 ),
        .Q(current_hor_pos_reg__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_hor_pos_reg[9] 
       (.C(i_zero),
        .CE(1'b1),
        .D(\current_hor_pos[9]_i_1_n_0 ),
        .Q(current_hor_pos_reg__0[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \current_ver_pos[0]_i_1 
       (.I0(\current_ver_pos[9]_i_3_n_0 ),
        .I1(current_ver_pos_reg__0[0]),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'h28)) 
    \current_ver_pos[1]_i_1 
       (.I0(\current_ver_pos[9]_i_3_n_0 ),
        .I1(current_ver_pos_reg__0[0]),
        .I2(current_ver_pos_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2A80)) 
    \current_ver_pos[2]_i_1 
       (.I0(\current_ver_pos[9]_i_3_n_0 ),
        .I1(current_ver_pos_reg__0[1]),
        .I2(current_ver_pos_reg__0[0]),
        .I3(current_ver_pos_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h2AAA8000)) 
    \current_ver_pos[3]_i_1 
       (.I0(\current_ver_pos[9]_i_3_n_0 ),
        .I1(current_ver_pos_reg__0[0]),
        .I2(current_ver_pos_reg__0[1]),
        .I3(current_ver_pos_reg__0[2]),
        .I4(current_ver_pos_reg__0[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \current_ver_pos[4]_i_1 
       (.I0(\current_ver_pos[9]_i_3_n_0 ),
        .I1(current_ver_pos_reg__0[2]),
        .I2(current_ver_pos_reg__0[1]),
        .I3(current_ver_pos_reg__0[0]),
        .I4(current_ver_pos_reg__0[3]),
        .I5(current_ver_pos_reg__0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \current_ver_pos[5]_i_1 
       (.I0(\current_ver_pos[9]_i_3_n_0 ),
        .I1(\red[3]_INST_0_i_17_n_0 ),
        .I2(current_ver_pos_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \current_ver_pos[6]_i_1 
       (.I0(\current_ver_pos[9]_i_3_n_0 ),
        .I1(\red[3]_INST_0_i_17_n_0 ),
        .I2(current_ver_pos_reg__0[5]),
        .I3(current_ver_pos_reg__0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \current_ver_pos[7]_i_1 
       (.I0(\current_ver_pos[9]_i_3_n_0 ),
        .I1(current_ver_pos_reg__0[5]),
        .I2(\red[3]_INST_0_i_17_n_0 ),
        .I3(current_ver_pos_reg__0[6]),
        .I4(current_ver_pos_reg__0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'hAA2AAAAA00800000)) 
    \current_ver_pos[8]_i_1 
       (.I0(\current_ver_pos[9]_i_3_n_0 ),
        .I1(current_ver_pos_reg__0[7]),
        .I2(current_ver_pos_reg__0[6]),
        .I3(\red[3]_INST_0_i_17_n_0 ),
        .I4(current_ver_pos_reg__0[5]),
        .I5(current_ver_pos_reg__0[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h8888888888888880)) 
    \current_ver_pos[9]_i_1 
       (.I0(current_hor_pos_reg__0[9]),
        .I1(current_hor_pos_reg__0[8]),
        .I2(current_hor_pos_reg__0[6]),
        .I3(current_hor_pos_reg__0[7]),
        .I4(current_hor_pos_reg__0[5]),
        .I5(\current_hor_pos[9]_i_2_n_0 ),
        .O(\current_ver_pos[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA20000000)) 
    \current_ver_pos[9]_i_2 
       (.I0(\current_ver_pos[9]_i_3_n_0 ),
        .I1(\current_ver_pos[9]_i_4_n_0 ),
        .I2(current_ver_pos_reg__0[6]),
        .I3(current_ver_pos_reg__0[7]),
        .I4(current_ver_pos_reg__0[8]),
        .I5(current_ver_pos_reg__0[9]),
        .O(p_0_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \current_ver_pos[9]_i_3 
       (.I0(vsync_INST_0_i_1_n_0),
        .I1(current_ver_pos_reg__0[9]),
        .O(\current_ver_pos[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \current_ver_pos[9]_i_4 
       (.I0(current_ver_pos_reg__0[4]),
        .I1(current_ver_pos_reg__0[2]),
        .I2(current_ver_pos_reg__0[1]),
        .I3(current_ver_pos_reg__0[0]),
        .I4(current_ver_pos_reg__0[3]),
        .I5(current_ver_pos_reg__0[5]),
        .O(\current_ver_pos[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \current_ver_pos_reg[0] 
       (.C(i_zero),
        .CE(\current_ver_pos[9]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(current_ver_pos_reg__0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ver_pos_reg[1] 
       (.C(i_zero),
        .CE(\current_ver_pos[9]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(current_ver_pos_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ver_pos_reg[2] 
       (.C(i_zero),
        .CE(\current_ver_pos[9]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(current_ver_pos_reg__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ver_pos_reg[3] 
       (.C(i_zero),
        .CE(\current_ver_pos[9]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(current_ver_pos_reg__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ver_pos_reg[4] 
       (.C(i_zero),
        .CE(\current_ver_pos[9]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(current_ver_pos_reg__0[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ver_pos_reg[5] 
       (.C(i_zero),
        .CE(\current_ver_pos[9]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(current_ver_pos_reg__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ver_pos_reg[6] 
       (.C(i_zero),
        .CE(\current_ver_pos[9]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(current_ver_pos_reg__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ver_pos_reg[7] 
       (.C(i_zero),
        .CE(\current_ver_pos[9]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(current_ver_pos_reg__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ver_pos_reg[8] 
       (.C(i_zero),
        .CE(\current_ver_pos[9]_i_1_n_0 ),
        .D(p_0_in[8]),
        .Q(current_ver_pos_reg__0[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \current_ver_pos_reg[9] 
       (.C(i_zero),
        .CE(\current_ver_pos[9]_i_1_n_0 ),
        .D(p_0_in[9]),
        .Q(current_ver_pos_reg__0[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    hsync_INST_0
       (.I0(current_hor_pos_reg__0[6]),
        .I1(current_hor_pos_reg__0[5]),
        .I2(current_hor_pos_reg__0[7]),
        .I3(current_hor_pos_reg__0[9]),
        .I4(current_hor_pos_reg__0[8]),
        .O(hsync));
  LUT6 #(
    .INIT(64'h5155554500000000)) 
    readIndex_i_1
       (.I0(\red[3]_INST_0_i_16_n_0 ),
        .I1(current_ver_pos_reg__0[5]),
        .I2(\red[3]_INST_0_i_17_n_0 ),
        .I3(current_ver_pos_reg__0[6]),
        .I4(current_ver_pos_reg__0[7]),
        .I5(current_ver_pos_reg__0[8]),
        .O(A[5]));
  LUT4 #(
    .INIT(16'h5401)) 
    readIndex_i_10
       (.I0(readIndex),
        .I1(current_hor_pos_reg__0[4]),
        .I2(current_hor_pos_reg__0[5]),
        .I3(current_hor_pos_reg__0[6]),
        .O(C[3]));
  LUT3 #(
    .INIT(8'h41)) 
    readIndex_i_11
       (.I0(readIndex),
        .I1(current_hor_pos_reg__0[5]),
        .I2(current_hor_pos_reg__0[4]),
        .O(C[2]));
  LUT2 #(
    .INIT(4'h1)) 
    readIndex_i_12
       (.I0(current_hor_pos_reg__0[4]),
        .I1(readIndex),
        .O(C[1]));
  LUT2 #(
    .INIT(4'h2)) 
    readIndex_i_13
       (.I0(current_hor_pos_reg__0[3]),
        .I1(readIndex),
        .O(C[0]));
  LUT2 #(
    .INIT(4'hE)) 
    readIndex_i_14
       (.I0(current_hor_pos_reg__0[4]),
        .I1(current_hor_pos_reg__0[5]),
        .O(readIndex_i_14_n_0));
  LUT5 #(
    .INIT(32'h0000FB04)) 
    readIndex_i_2
       (.I0(current_ver_pos_reg__0[6]),
        .I1(\red[3]_INST_0_i_17_n_0 ),
        .I2(current_ver_pos_reg__0[5]),
        .I3(current_ver_pos_reg__0[7]),
        .I4(readIndex),
        .O(A[4]));
  LUT4 #(
    .INIT(16'h4510)) 
    readIndex_i_3
       (.I0(readIndex),
        .I1(current_ver_pos_reg__0[5]),
        .I2(\red[3]_INST_0_i_17_n_0 ),
        .I3(current_ver_pos_reg__0[6]),
        .O(A[3]));
  LUT3 #(
    .INIT(8'h06)) 
    readIndex_i_4
       (.I0(\red[3]_INST_0_i_17_n_0 ),
        .I1(current_ver_pos_reg__0[5]),
        .I2(readIndex),
        .O(A[2]));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    readIndex_i_5
       (.I0(current_ver_pos_reg__0[2]),
        .I1(current_ver_pos_reg__0[1]),
        .I2(current_ver_pos_reg__0[0]),
        .I3(current_ver_pos_reg__0[3]),
        .I4(current_ver_pos_reg__0[4]),
        .I5(readIndex),
        .O(A[1]));
  LUT5 #(
    .INIT(32'h00007F80)) 
    readIndex_i_6
       (.I0(current_ver_pos_reg__0[0]),
        .I1(current_ver_pos_reg__0[1]),
        .I2(current_ver_pos_reg__0[2]),
        .I3(current_ver_pos_reg__0[3]),
        .I4(readIndex),
        .O(A[0]));
  LUT6 #(
    .INIT(64'h5554444400011111)) 
    readIndex_i_7
       (.I0(readIndex),
        .I1(current_hor_pos_reg__0[8]),
        .I2(current_hor_pos_reg__0[6]),
        .I3(readIndex_i_14_n_0),
        .I4(current_hor_pos_reg__0[7]),
        .I5(current_hor_pos_reg__0[9]),
        .O(C[6]));
  LUT6 #(
    .INIT(64'h4444444011111115)) 
    readIndex_i_8
       (.I0(readIndex),
        .I1(current_hor_pos_reg__0[7]),
        .I2(current_hor_pos_reg__0[4]),
        .I3(current_hor_pos_reg__0[5]),
        .I4(current_hor_pos_reg__0[6]),
        .I5(current_hor_pos_reg__0[8]),
        .O(C[5]));
  LUT5 #(
    .INIT(32'h00015554)) 
    readIndex_i_9
       (.I0(readIndex),
        .I1(current_hor_pos_reg__0[6]),
        .I2(current_hor_pos_reg__0[5]),
        .I3(current_hor_pos_reg__0[4]),
        .I4(current_hor_pos_reg__0[7]),
        .O(C[4]));
  LUT6 #(
    .INIT(64'hEAEAEAEBEBEBEBAB)) 
    \red[3]_INST_0_i_16 
       (.I0(current_ver_pos_reg__0[9]),
        .I1(current_hor_pos_reg__0[9]),
        .I2(current_hor_pos_reg__0[8]),
        .I3(readIndex_i_14_n_0),
        .I4(current_hor_pos_reg__0[6]),
        .I5(current_hor_pos_reg__0[7]),
        .O(\red[3]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \red[3]_INST_0_i_17 
       (.I0(current_ver_pos_reg__0[3]),
        .I1(current_ver_pos_reg__0[0]),
        .I2(current_ver_pos_reg__0[1]),
        .I3(current_ver_pos_reg__0[2]),
        .I4(current_ver_pos_reg__0[4]),
        .O(\red[3]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAAAAAAABA)) 
    \red[3]_INST_0_i_4 
       (.I0(\red[3]_INST_0_i_16_n_0 ),
        .I1(current_ver_pos_reg__0[5]),
        .I2(\red[3]_INST_0_i_17_n_0 ),
        .I3(current_ver_pos_reg__0[6]),
        .I4(current_ver_pos_reg__0[7]),
        .I5(current_ver_pos_reg__0[8]),
        .O(readIndex));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    vsync_INST_0
       (.I0(vsync_INST_0_i_1_n_0),
        .I1(current_ver_pos_reg__0[1]),
        .I2(current_ver_pos_reg__0[2]),
        .I3(current_ver_pos_reg__0[9]),
        .O(vsync));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    vsync_INST_0_i_1
       (.I0(current_ver_pos_reg__0[8]),
        .I1(current_ver_pos_reg__0[7]),
        .I2(current_ver_pos_reg__0[5]),
        .I3(current_ver_pos_reg__0[6]),
        .I4(current_ver_pos_reg__0[4]),
        .I5(current_ver_pos_reg__0[3]),
        .O(vsync_INST_0_i_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga_module
   (red,
    green,
    blue,
    hsync,
    vsync,
    clk,
    pixel,
    addr,
    we);
  output [3:0]red;
  output [3:0]green;
  output [3:0]blue;
  output hsync;
  output vsync;
  input clk;
  input [11:0]pixel;
  input [12:0]addr;
  input we;

  wire VGA_SYNC_n_6;
  wire [12:0]a_r;
  wire [12:0]addr;
  wire [3:0]blue;
  wire clk;
  wire [3:0]green;
  wire hsync;
  wire i_zero;
  wire [11:0]pixel;
  wire [3:0]red;
  wire [9:3]scan_line_x;
  wire [8:3]scan_line_y;
  wire vsync;
  wire we;
  wire NLW_readIndex_CARRYCASCOUT_UNCONNECTED;
  wire NLW_readIndex_MULTSIGNOUT_UNCONNECTED;
  wire NLW_readIndex_OVERFLOW_UNCONNECTED;
  wire NLW_readIndex_PATTERNBDETECT_UNCONNECTED;
  wire NLW_readIndex_PATTERNDETECT_UNCONNECTED;
  wire NLW_readIndex_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_readIndex_ACOUT_UNCONNECTED;
  wire [17:0]NLW_readIndex_BCOUT_UNCONNECTED;
  wire [3:0]NLW_readIndex_CARRYOUT_UNCONNECTED;
  wire [47:13]NLW_readIndex_P_UNCONNECTED;
  wire [47:0]NLW_readIndex_PCOUT_UNCONNECTED;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider DIVIDER
       (.clk(clk),
        .i_zero(i_zero));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ram__4 FRAMEBUFFER
       (.P(a_r),
        .addr(addr),
        .blue(blue),
        .clk(clk),
        .\current_ver_pos_reg[5] (VGA_SYNC_n_6),
        .green(green),
        .pixel(pixel),
        .red(red),
        .we(we));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_sync_signals_generator VGA_SYNC
       (.A(scan_line_y),
        .C(scan_line_x),
        .hsync(hsync),
        .i_zero(i_zero),
        .readIndex(VGA_SYNC_n_6),
        .vsync(vsync));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    readIndex
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,scan_line_y}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_readIndex_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_readIndex_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,scan_line_x}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_readIndex_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_readIndex_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_readIndex_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_readIndex_OVERFLOW_UNCONNECTED),
        .P({NLW_readIndex_P_UNCONNECTED[47:13],a_r}),
        .PATTERNBDETECT(NLW_readIndex_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_readIndex_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_readIndex_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_readIndex_UNDERFLOW_UNCONNECTED));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
