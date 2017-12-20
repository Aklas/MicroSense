// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Fri Dec  8 09:54:21 2017
// Host        : DESKTOP-N854F8E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ microSense_top_level_top_level_SAR_0_0_sim_netlist.v
// Design      : microSense_top_level_top_level_SAR_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Averager
   (distance_mm,
    clk,
    enable,
    Q);
  output [8:0]distance_mm;
  input clk;
  input enable;
  input [8:0]Q;

  wire [8:0]Q;
  wire clk;
  wire counter;
  wire [5:0]counter_reg__0;
  wire [8:0]distance_mm;
  wire enable;
  wire [8:0]i_sample;
  wire [12:0]itotal;
  wire itotal1;
  wire \itotal[11]_i_2_n_0 ;
  wire \itotal[11]_i_3_n_0 ;
  wire \itotal[11]_i_4_n_0 ;
  wire \itotal[11]_i_5_n_0 ;
  wire \itotal[11]_i_6_n_0 ;
  wire \itotal[12]_i_4_n_0 ;
  wire \itotal[12]_i_5_n_0 ;
  wire \itotal[12]_i_6_n_0 ;
  wire \itotal[3]_i_2_n_0 ;
  wire \itotal[3]_i_3_n_0 ;
  wire \itotal[3]_i_4_n_0 ;
  wire \itotal[3]_i_5_n_0 ;
  wire \itotal[3]_i_6_n_0 ;
  wire \itotal[3]_i_7_n_0 ;
  wire \itotal[3]_i_8_n_0 ;
  wire \itotal[3]_i_9_n_0 ;
  wire \itotal[7]_i_2_n_0 ;
  wire \itotal[7]_i_3_n_0 ;
  wire \itotal[7]_i_4_n_0 ;
  wire \itotal[7]_i_5_n_0 ;
  wire \itotal[7]_i_6_n_0 ;
  wire \itotal[7]_i_7_n_0 ;
  wire \itotal[7]_i_8_n_0 ;
  wire \itotal[7]_i_9_n_0 ;
  wire \itotal_reg[11]_i_1_n_0 ;
  wire \itotal_reg[11]_i_1_n_1 ;
  wire \itotal_reg[11]_i_1_n_2 ;
  wire \itotal_reg[11]_i_1_n_3 ;
  wire \itotal_reg[11]_i_1_n_4 ;
  wire \itotal_reg[11]_i_1_n_5 ;
  wire \itotal_reg[11]_i_1_n_6 ;
  wire \itotal_reg[11]_i_1_n_7 ;
  wire \itotal_reg[12]_i_3_n_7 ;
  wire \itotal_reg[3]_i_1_n_0 ;
  wire \itotal_reg[3]_i_1_n_1 ;
  wire \itotal_reg[3]_i_1_n_2 ;
  wire \itotal_reg[3]_i_1_n_3 ;
  wire \itotal_reg[3]_i_1_n_4 ;
  wire \itotal_reg[3]_i_1_n_5 ;
  wire \itotal_reg[3]_i_1_n_6 ;
  wire \itotal_reg[3]_i_1_n_7 ;
  wire \itotal_reg[7]_i_1_n_0 ;
  wire \itotal_reg[7]_i_1_n_1 ;
  wire \itotal_reg[7]_i_1_n_2 ;
  wire \itotal_reg[7]_i_1_n_3 ;
  wire \itotal_reg[7]_i_1_n_4 ;
  wire \itotal_reg[7]_i_1_n_5 ;
  wire \itotal_reg[7]_i_1_n_6 ;
  wire \itotal_reg[7]_i_1_n_7 ;
  wire [5:0]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire [3:0]sample_counter_reg__0;
  wire [12:4]total;
  wire [15:9]NLW_average_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_average_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_average_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_average_reg_DOPBDOP_UNCONNECTED;
  wire [3:0]\NLW_itotal_reg[12]_i_3_CO_UNCONNECTED ;
  wire [3:1]\NLW_itotal_reg[12]_i_3_O_UNCONNECTED ;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4608" *) 
  (* RTL_RAM_NAME = "U0/the_Averager/average" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "1023" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "8" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h018A019000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h012C01320138013E0144014A014F0155015B01610167016D01730179017E0184),
    .INIT_04(256'h00FF010201050108010A010D0110011301160118011B011E0121012401260129),
    .INIT_05(256'h00D200D500D800DB00DD00E000E300E600E900EC00EE00F100F400F700FA00FC),
    .INIT_06(256'h00B900BB00BC00BD00BE00BF00C100C200C300C400C500C600C800CA00CD00CF),
    .INIT_07(256'h00A800A900AA00AB00AC00AD00AF00B000B100B200B300B400B500B600B700B8),
    .INIT_08(256'h00980099009A009B009C009D009E009F00A000A100A200A300A400A500A600A7),
    .INIT_09(256'h008700880089008A008B008C008D008E00900091009200930094009500960097),
    .INIT_0A(256'h007700780079007A007B007C007D007E007F0080008100820083008400850086),
    .INIT_0B(256'h0066006700680069006A006B006C006D006E006F007100720073007400750076),
    .INIT_0C(256'h005E005E005F005F006000600061006100610062006200630063006400640065),
    .INIT_0D(256'h005800580058005900590059005A005A005B005B005B005C005C005D005D005E),
    .INIT_0E(256'h0053005300530054005400540055005500550056005600560057005700570058),
    .INIT_0F(256'h004E004E004E004E004F004F004F005000500050005100510051005200520052),
    .INIT_10(256'h0048004900490049004A004A004A004B004B004B004C004C004C004D004D004D),
    .INIT_11(256'h0043004400440044004400450045004500460046004600470047004700480048),
    .INIT_12(256'h003E003E003F003F003F00400040004000410041004100420042004200430043),
    .INIT_13(256'h003A003A003B003B003B003B003B003B003C003C003C003C003D003D003D003E),
    .INIT_14(256'h0037003700370038003800380038003800390039003900390039003A003A003A),
    .INIT_15(256'h0034003400340035003500350035003500360036003600360036003700370037),
    .INIT_16(256'h0031003100310032003200320032003200330033003300330033003300340034),
    .INIT_17(256'h002E002E002E002F002F002F002F002F002F0030003000300030003000310031),
    .INIT_18(256'h002B002B002B002B002C002C002C002C002C002D002D002D002D002D002E002E),
    .INIT_19(256'h002800280028002800290029002900290029002A002A002A002A002A002B002B),
    .INIT_1A(256'h0025002500250025002600260026002600260027002700270027002700270028),
    .INIT_1B(256'h0022002200220022002300230023002300230023002400240024002400240025),
    .INIT_1C(256'h001F001F001F001F001F00200020002000200020002100210021002100210022),
    .INIT_1D(256'h000000000000000000000000000000000000000000000000000000000000001F),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(0)) 
    average_reg
       (.ADDRARDADDR({1'b0,total,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clk),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_average_reg_DOADO_UNCONNECTED[15:9],distance_mm}),
        .DOBDO(NLW_average_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_average_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_average_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__0 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1__0 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter_reg__0[3]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[2]),
        .I4(counter_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCCC)) 
    \counter[5]_i_1 
       (.I0(counter_reg__0[4]),
        .I1(counter_reg__0[5]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[0]),
        .I4(counter_reg__0[1]),
        .I5(counter_reg__0[3]),
        .O(p_0_in__0[5]));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(enable),
        .D(p_0_in__0[0]),
        .Q(counter_reg__0[0]),
        .R(counter));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(enable),
        .D(p_0_in__0[1]),
        .Q(counter_reg__0[1]),
        .R(counter));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(enable),
        .D(p_0_in__0[2]),
        .Q(counter_reg__0[2]),
        .R(counter));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(enable),
        .D(p_0_in__0[3]),
        .Q(counter_reg__0[3]),
        .R(counter));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(enable),
        .D(p_0_in__0[4]),
        .Q(counter_reg__0[4]),
        .R(counter));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(enable),
        .D(p_0_in__0[5]),
        .Q(counter_reg__0[5]),
        .R(counter));
  FDRE \i_sample_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(i_sample[0]),
        .R(1'b0));
  FDRE \i_sample_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(i_sample[1]),
        .R(1'b0));
  FDRE \i_sample_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(i_sample[2]),
        .R(1'b0));
  FDRE \i_sample_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(i_sample[3]),
        .R(1'b0));
  FDRE \i_sample_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(i_sample[4]),
        .R(1'b0));
  FDRE \i_sample_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(i_sample[5]),
        .R(1'b0));
  FDRE \i_sample_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(i_sample[6]),
        .R(1'b0));
  FDRE \i_sample_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(i_sample[7]),
        .R(1'b0));
  FDRE \i_sample_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(i_sample[8]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \itotal[11]_i_2 
       (.I0(i_sample[8]),
        .I1(itotal1),
        .O(\itotal[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \itotal[11]_i_3 
       (.I0(itotal[11]),
        .I1(itotal1),
        .O(\itotal[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \itotal[11]_i_4 
       (.I0(itotal[10]),
        .I1(itotal1),
        .O(\itotal[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \itotal[11]_i_5 
       (.I0(itotal[9]),
        .I1(itotal1),
        .O(\itotal[11]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \itotal[11]_i_6 
       (.I0(i_sample[8]),
        .I1(itotal[8]),
        .I2(itotal1),
        .I3(Q[8]),
        .O(\itotal[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \itotal[12]_i_1 
       (.I0(\itotal[12]_i_4_n_0 ),
        .I1(counter_reg__0[5]),
        .I2(counter_reg__0[4]),
        .I3(counter_reg__0[3]),
        .I4(sample_counter_reg__0[3]),
        .I5(enable),
        .O(itotal1));
  LUT5 #(
    .INIT(32'h00200000)) 
    \itotal[12]_i_2 
       (.I0(counter_reg__0[5]),
        .I1(counter_reg__0[4]),
        .I2(enable),
        .I3(counter_reg__0[3]),
        .I4(\itotal[12]_i_5_n_0 ),
        .O(counter));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \itotal[12]_i_4 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(sample_counter_reg__0[2]),
        .I4(sample_counter_reg__0[0]),
        .I5(sample_counter_reg__0[1]),
        .O(\itotal[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \itotal[12]_i_5 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .O(\itotal[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \itotal[12]_i_6 
       (.I0(itotal[12]),
        .I1(itotal1),
        .O(\itotal[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \itotal[3]_i_2 
       (.I0(i_sample[3]),
        .I1(itotal1),
        .O(\itotal[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \itotal[3]_i_3 
       (.I0(i_sample[2]),
        .I1(itotal1),
        .O(\itotal[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \itotal[3]_i_4 
       (.I0(i_sample[1]),
        .I1(itotal1),
        .O(\itotal[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \itotal[3]_i_5 
       (.I0(i_sample[0]),
        .I1(itotal1),
        .O(\itotal[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \itotal[3]_i_6 
       (.I0(i_sample[3]),
        .I1(itotal[3]),
        .I2(itotal1),
        .I3(Q[3]),
        .O(\itotal[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \itotal[3]_i_7 
       (.I0(i_sample[2]),
        .I1(itotal[2]),
        .I2(itotal1),
        .I3(Q[2]),
        .O(\itotal[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \itotal[3]_i_8 
       (.I0(i_sample[1]),
        .I1(itotal[1]),
        .I2(itotal1),
        .I3(Q[1]),
        .O(\itotal[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \itotal[3]_i_9 
       (.I0(i_sample[0]),
        .I1(itotal[0]),
        .I2(itotal1),
        .I3(Q[0]),
        .O(\itotal[3]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \itotal[7]_i_2 
       (.I0(i_sample[7]),
        .I1(itotal1),
        .O(\itotal[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \itotal[7]_i_3 
       (.I0(i_sample[6]),
        .I1(itotal1),
        .O(\itotal[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \itotal[7]_i_4 
       (.I0(i_sample[5]),
        .I1(itotal1),
        .O(\itotal[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \itotal[7]_i_5 
       (.I0(i_sample[4]),
        .I1(itotal1),
        .O(\itotal[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \itotal[7]_i_6 
       (.I0(i_sample[7]),
        .I1(itotal[7]),
        .I2(itotal1),
        .I3(Q[7]),
        .O(\itotal[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \itotal[7]_i_7 
       (.I0(i_sample[6]),
        .I1(itotal[6]),
        .I2(itotal1),
        .I3(Q[6]),
        .O(\itotal[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \itotal[7]_i_8 
       (.I0(i_sample[5]),
        .I1(itotal[5]),
        .I2(itotal1),
        .I3(Q[5]),
        .O(\itotal[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF606)) 
    \itotal[7]_i_9 
       (.I0(i_sample[4]),
        .I1(itotal[4]),
        .I2(itotal1),
        .I3(Q[4]),
        .O(\itotal[7]_i_9_n_0 ));
  FDRE \itotal_reg[0] 
       (.C(clk),
        .CE(counter),
        .D(\itotal_reg[3]_i_1_n_7 ),
        .Q(itotal[0]),
        .R(1'b0));
  FDRE \itotal_reg[10] 
       (.C(clk),
        .CE(counter),
        .D(\itotal_reg[11]_i_1_n_5 ),
        .Q(itotal[10]),
        .R(itotal1));
  FDRE \itotal_reg[11] 
       (.C(clk),
        .CE(counter),
        .D(\itotal_reg[11]_i_1_n_4 ),
        .Q(itotal[11]),
        .R(itotal1));
  CARRY4 \itotal_reg[11]_i_1 
       (.CI(\itotal_reg[7]_i_1_n_0 ),
        .CO({\itotal_reg[11]_i_1_n_0 ,\itotal_reg[11]_i_1_n_1 ,\itotal_reg[11]_i_1_n_2 ,\itotal_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\itotal[11]_i_2_n_0 }),
        .O({\itotal_reg[11]_i_1_n_4 ,\itotal_reg[11]_i_1_n_5 ,\itotal_reg[11]_i_1_n_6 ,\itotal_reg[11]_i_1_n_7 }),
        .S({\itotal[11]_i_3_n_0 ,\itotal[11]_i_4_n_0 ,\itotal[11]_i_5_n_0 ,\itotal[11]_i_6_n_0 }));
  FDRE \itotal_reg[12] 
       (.C(clk),
        .CE(counter),
        .D(\itotal_reg[12]_i_3_n_7 ),
        .Q(itotal[12]),
        .R(itotal1));
  CARRY4 \itotal_reg[12]_i_3 
       (.CI(\itotal_reg[11]_i_1_n_0 ),
        .CO(\NLW_itotal_reg[12]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_itotal_reg[12]_i_3_O_UNCONNECTED [3:1],\itotal_reg[12]_i_3_n_7 }),
        .S({1'b0,1'b0,1'b0,\itotal[12]_i_6_n_0 }));
  FDRE \itotal_reg[1] 
       (.C(clk),
        .CE(counter),
        .D(\itotal_reg[3]_i_1_n_6 ),
        .Q(itotal[1]),
        .R(1'b0));
  FDRE \itotal_reg[2] 
       (.C(clk),
        .CE(counter),
        .D(\itotal_reg[3]_i_1_n_5 ),
        .Q(itotal[2]),
        .R(1'b0));
  FDRE \itotal_reg[3] 
       (.C(clk),
        .CE(counter),
        .D(\itotal_reg[3]_i_1_n_4 ),
        .Q(itotal[3]),
        .R(1'b0));
  CARRY4 \itotal_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\itotal_reg[3]_i_1_n_0 ,\itotal_reg[3]_i_1_n_1 ,\itotal_reg[3]_i_1_n_2 ,\itotal_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\itotal[3]_i_2_n_0 ,\itotal[3]_i_3_n_0 ,\itotal[3]_i_4_n_0 ,\itotal[3]_i_5_n_0 }),
        .O({\itotal_reg[3]_i_1_n_4 ,\itotal_reg[3]_i_1_n_5 ,\itotal_reg[3]_i_1_n_6 ,\itotal_reg[3]_i_1_n_7 }),
        .S({\itotal[3]_i_6_n_0 ,\itotal[3]_i_7_n_0 ,\itotal[3]_i_8_n_0 ,\itotal[3]_i_9_n_0 }));
  FDRE \itotal_reg[4] 
       (.C(clk),
        .CE(counter),
        .D(\itotal_reg[7]_i_1_n_7 ),
        .Q(itotal[4]),
        .R(1'b0));
  FDRE \itotal_reg[5] 
       (.C(clk),
        .CE(counter),
        .D(\itotal_reg[7]_i_1_n_6 ),
        .Q(itotal[5]),
        .R(1'b0));
  FDRE \itotal_reg[6] 
       (.C(clk),
        .CE(counter),
        .D(\itotal_reg[7]_i_1_n_5 ),
        .Q(itotal[6]),
        .R(1'b0));
  FDRE \itotal_reg[7] 
       (.C(clk),
        .CE(counter),
        .D(\itotal_reg[7]_i_1_n_4 ),
        .Q(itotal[7]),
        .R(1'b0));
  CARRY4 \itotal_reg[7]_i_1 
       (.CI(\itotal_reg[3]_i_1_n_0 ),
        .CO({\itotal_reg[7]_i_1_n_0 ,\itotal_reg[7]_i_1_n_1 ,\itotal_reg[7]_i_1_n_2 ,\itotal_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\itotal[7]_i_2_n_0 ,\itotal[7]_i_3_n_0 ,\itotal[7]_i_4_n_0 ,\itotal[7]_i_5_n_0 }),
        .O({\itotal_reg[7]_i_1_n_4 ,\itotal_reg[7]_i_1_n_5 ,\itotal_reg[7]_i_1_n_6 ,\itotal_reg[7]_i_1_n_7 }),
        .S({\itotal[7]_i_6_n_0 ,\itotal[7]_i_7_n_0 ,\itotal[7]_i_8_n_0 ,\itotal[7]_i_9_n_0 }));
  FDRE \itotal_reg[8] 
       (.C(clk),
        .CE(counter),
        .D(\itotal_reg[11]_i_1_n_7 ),
        .Q(itotal[8]),
        .R(1'b0));
  FDRE \itotal_reg[9] 
       (.C(clk),
        .CE(counter),
        .D(\itotal_reg[11]_i_1_n_6 ),
        .Q(itotal[9]),
        .R(itotal1));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sample_counter[0]_i_1 
       (.I0(sample_counter_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_counter[1]_i_1 
       (.I0(sample_counter_reg__0[0]),
        .I1(sample_counter_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sample_counter[2]_i_1 
       (.I0(sample_counter_reg__0[1]),
        .I1(sample_counter_reg__0[0]),
        .I2(sample_counter_reg__0[2]),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sample_counter[3]_i_1 
       (.I0(sample_counter_reg__0[2]),
        .I1(sample_counter_reg__0[0]),
        .I2(sample_counter_reg__0[1]),
        .I3(sample_counter_reg__0[3]),
        .O(p_0_in__1[3]));
  FDRE \sample_counter_reg[0] 
       (.C(clk),
        .CE(counter),
        .D(p_0_in__1[0]),
        .Q(sample_counter_reg__0[0]),
        .R(itotal1));
  FDRE \sample_counter_reg[1] 
       (.C(clk),
        .CE(counter),
        .D(p_0_in__1[1]),
        .Q(sample_counter_reg__0[1]),
        .R(itotal1));
  FDRE \sample_counter_reg[2] 
       (.C(clk),
        .CE(counter),
        .D(p_0_in__1[2]),
        .Q(sample_counter_reg__0[2]),
        .R(itotal1));
  FDRE \sample_counter_reg[3] 
       (.C(clk),
        .CE(counter),
        .D(p_0_in__1[3]),
        .Q(sample_counter_reg__0[3]),
        .R(itotal1));
  FDRE \total_reg[10] 
       (.C(clk),
        .CE(itotal1),
        .D(itotal[10]),
        .Q(total[10]),
        .R(1'b0));
  FDRE \total_reg[11] 
       (.C(clk),
        .CE(itotal1),
        .D(itotal[11]),
        .Q(total[11]),
        .R(1'b0));
  FDRE \total_reg[12] 
       (.C(clk),
        .CE(itotal1),
        .D(itotal[12]),
        .Q(total[12]),
        .R(1'b0));
  FDRE \total_reg[4] 
       (.C(clk),
        .CE(itotal1),
        .D(itotal[4]),
        .Q(total[4]),
        .R(1'b0));
  FDRE \total_reg[5] 
       (.C(clk),
        .CE(itotal1),
        .D(itotal[5]),
        .Q(total[5]),
        .R(1'b0));
  FDRE \total_reg[6] 
       (.C(clk),
        .CE(itotal1),
        .D(itotal[6]),
        .Q(total[6]),
        .R(1'b0));
  FDRE \total_reg[7] 
       (.C(clk),
        .CE(itotal1),
        .D(itotal[7]),
        .Q(total[7]),
        .R(1'b0));
  FDRE \total_reg[8] 
       (.C(clk),
        .CE(itotal1),
        .D(itotal[8]),
        .Q(total[8]),
        .R(1'b0));
  FDRE \total_reg[9] 
       (.C(clk),
        .CE(itotal1),
        .D(itotal[9]),
        .Q(total[9]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_generator
   (SAR_output,
    Q,
    DI,
    \iduty_reg[8] ,
    \iduty_reg[8]_0 ,
    clk);
  output SAR_output;
  output [8:0]Q;
  input [3:0]DI;
  input [0:0]\iduty_reg[8] ;
  input [8:0]\iduty_reg[8]_0 ;
  input clk;

  wire [3:0]DI;
  wire PWM0_carry__0_i_2_n_0;
  wire PWM0_carry_i_5_n_0;
  wire PWM0_carry_i_6_n_0;
  wire PWM0_carry_i_7_n_0;
  wire PWM0_carry_i_8_n_0;
  wire PWM0_carry_n_0;
  wire PWM0_carry_n_1;
  wire PWM0_carry_n_2;
  wire PWM0_carry_n_3;
  wire [8:0]Q;
  wire SAR_output;
  wire clk;
  wire [8:0]counter;
  wire \counter[8]_i_2_n_0 ;
  wire [0:0]\iduty_reg[8] ;
  wire [8:0]\iduty_reg[8]_0 ;
  wire [3:0]NLW_PWM0_carry_O_UNCONNECTED;
  wire [3:1]NLW_PWM0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_PWM0_carry__0_O_UNCONNECTED;

  CARRY4 PWM0_carry
       (.CI(1'b0),
        .CO({PWM0_carry_n_0,PWM0_carry_n_1,PWM0_carry_n_2,PWM0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_PWM0_carry_O_UNCONNECTED[3:0]),
        .S({PWM0_carry_i_5_n_0,PWM0_carry_i_6_n_0,PWM0_carry_i_7_n_0,PWM0_carry_i_8_n_0}));
  CARRY4 PWM0_carry__0
       (.CI(PWM0_carry_n_0),
        .CO({NLW_PWM0_carry__0_CO_UNCONNECTED[3:1],SAR_output}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\iduty_reg[8] }),
        .O(NLW_PWM0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,PWM0_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    PWM0_carry__0_i_2
       (.I0(Q[8]),
        .I1(\iduty_reg[8]_0 [8]),
        .O(PWM0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PWM0_carry_i_5
       (.I0(Q[7]),
        .I1(\iduty_reg[8]_0 [7]),
        .I2(Q[6]),
        .I3(\iduty_reg[8]_0 [6]),
        .O(PWM0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PWM0_carry_i_6
       (.I0(Q[5]),
        .I1(\iduty_reg[8]_0 [5]),
        .I2(Q[4]),
        .I3(\iduty_reg[8]_0 [4]),
        .O(PWM0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PWM0_carry_i_7
       (.I0(Q[3]),
        .I1(\iduty_reg[8]_0 [3]),
        .I2(Q[2]),
        .I3(\iduty_reg[8]_0 [2]),
        .O(PWM0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PWM0_carry_i_8
       (.I0(Q[1]),
        .I1(\iduty_reg[8]_0 [1]),
        .I2(Q[0]),
        .I3(\iduty_reg[8]_0 [0]),
        .O(PWM0_carry_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__1 
       (.I0(Q[0]),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1__1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(counter[3]));
  LUT6 #(
    .INIT(64'hFFFF00000000FFF7)) 
    \counter[4]_i_1__0 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(\counter[8]_i_2_n_0 ),
        .I5(Q[4]),
        .O(counter[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1__0 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(counter[5]));
  LUT4 #(
    .INIT(16'hA6AA)) 
    \counter[6]_i_1 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(\counter[8]_i_2_n_0 ),
        .I3(Q[5]),
        .O(counter[6]));
  LUT6 #(
    .INIT(64'hFF3FFFFD00C00000)) 
    \counter[7]_i_1 
       (.I0(Q[8]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(\counter[8]_i_2_n_0 ),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(counter[7]));
  LUT6 #(
    .INIT(64'hDFFEFFFF20000000)) 
    \counter[8]_i_1 
       (.I0(Q[5]),
        .I1(\counter[8]_i_2_n_0 ),
        .I2(Q[4]),
        .I3(Q[6]),
        .I4(Q[7]),
        .I5(Q[8]),
        .O(counter[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[8]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\counter[8]_i_2_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(counter[8]),
        .Q(Q[8]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SAR
   (DI,
    Q,
    SAR_output,
    \i_sample_reg[8] ,
    clk,
    ext_reset,
    E,
    \counter_reg[8] ,
    SAR_input);
  output [3:0]DI;
  output [8:0]Q;
  output [0:0]SAR_output;
  output [8:0]\i_sample_reg[8] ;
  input clk;
  input ext_reset;
  input [0:0]E;
  input [8:0]\counter_reg[8] ;
  input SAR_input;

  wire [3:0]DI;
  wire [0:0]E;
  wire [8:0]Q;
  wire SAR_input;
  wire [0:0]SAR_output;
  wire bit_counter;
  wire [3:0]bit_counter0;
  wire \bit_counter[3]_i_1_n_0 ;
  wire [3:0]bit_counter_reg__0;
  wire clk;
  wire counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire [8:0]\counter_reg[8] ;
  wire [3:0]counter_reg__0;
  wire duty0;
  wire enable_read_i_1_n_0;
  wire enable_read_i_2_n_0;
  wire enable_read_i_3_n_0;
  wire enable_read_i_4_n_0;
  wire enable_read_i_5_n_0;
  wire enable_read_reg_n_0;
  wire ext_reset;
  wire [8:0]\i_sample_reg[8] ;
  wire \iduty[0]_i_1_n_0 ;
  wire \iduty[1]_i_1_n_0 ;
  wire \iduty[2]_i_1_n_0 ;
  wire \iduty[2]_i_2_n_0 ;
  wire \iduty[3]_i_1_n_0 ;
  wire \iduty[3]_i_2_n_0 ;
  wire \iduty[4]_i_1_n_0 ;
  wire \iduty[4]_i_2_n_0 ;
  wire \iduty[5]_i_1_n_0 ;
  wire \iduty[6]_i_1_n_0 ;
  wire \iduty[6]_i_2_n_0 ;
  wire \iduty[6]_i_3_n_0 ;
  wire \iduty[7]_i_1_n_0 ;
  wire \iduty[7]_i_2_n_0 ;
  wire \iduty[7]_i_3_n_0 ;
  wire \iduty[8]_i_2_n_0 ;
  wire \iduty[8]_i_3_n_0 ;
  wire [8:0]isample;
  wire \isample[0]_i_1_n_0 ;
  wire \isample[1]_i_1_n_0 ;
  wire \isample[2]_i_1_n_0 ;
  wire \isample[3]_i_1_n_0 ;
  wire \isample[4]_i_1_n_0 ;
  wire \isample[5]_i_1_n_0 ;
  wire \isample[6]_i_1_n_0 ;
  wire \isample[7]_i_1_n_0 ;
  wire \isample[7]_i_2_n_0 ;
  wire \isample[8]_i_1_n_0 ;
  wire \isample[8]_i_2_n_0 ;
  wire \isample[8]_i_3_n_0 ;
  wire \isample[8]_i_4_n_0 ;
  wire [3:1]p_0_in;
  wire pass_sample;
  wire pass_sample_i_1_n_0;
  wire pass_sample_i_2_n_0;
  wire pass_sample_i_3_n_0;
  wire pass_sample_reg_n_0;
  wire \sample[8]_i_1_n_0 ;
  wire \sample[8]_i_2_n_0 ;
  wire \sample[8]_i_3_n_0 ;
  wire \sample[8]_i_4_n_0 ;
  wire \sample[8]_i_5_n_0 ;
  wire \sample[8]_i_6_n_0 ;
  wire \sample[8]_i_7_n_0 ;
  wire \sample[8]_i_8_n_0 ;
  wire \sample[8]_i_9_n_0 ;

  LUT2 #(
    .INIT(4'h2)) 
    PWM0_carry__0_i_1
       (.I0(Q[8]),
        .I1(\counter_reg[8] [8]),
        .O(SAR_output));
  LUT4 #(
    .INIT(16'h22B2)) 
    PWM0_carry_i_1
       (.I0(Q[7]),
        .I1(\counter_reg[8] [7]),
        .I2(Q[6]),
        .I3(\counter_reg[8] [6]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    PWM0_carry_i_2
       (.I0(Q[5]),
        .I1(\counter_reg[8] [5]),
        .I2(Q[4]),
        .I3(\counter_reg[8] [4]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    PWM0_carry_i_3
       (.I0(Q[3]),
        .I1(\counter_reg[8] [3]),
        .I2(Q[2]),
        .I3(\counter_reg[8] [2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h22B2)) 
    PWM0_carry_i_4
       (.I0(Q[1]),
        .I1(\counter_reg[8] [1]),
        .I2(Q[0]),
        .I3(\counter_reg[8] [0]),
        .O(DI[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bit_counter[0]_i_1 
       (.I0(bit_counter_reg__0[0]),
        .O(bit_counter0[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \bit_counter[1]_i_1 
       (.I0(bit_counter_reg__0[1]),
        .I1(bit_counter_reg__0[0]),
        .O(bit_counter0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \bit_counter[2]_i_1 
       (.I0(bit_counter_reg__0[2]),
        .I1(bit_counter_reg__0[0]),
        .I2(bit_counter_reg__0[1]),
        .O(bit_counter0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \bit_counter[3]_i_1 
       (.I0(\sample[8]_i_2_n_0 ),
        .I1(enable_read_reg_n_0),
        .I2(pass_sample_reg_n_0),
        .I3(\sample[8]_i_3_n_0 ),
        .I4(\sample[8]_i_4_n_0 ),
        .I5(ext_reset),
        .O(\bit_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEAAA800000000)) 
    \bit_counter[3]_i_2 
       (.I0(\isample[8]_i_3_n_0 ),
        .I1(bit_counter_reg__0[1]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[2]),
        .I4(bit_counter_reg__0[3]),
        .I5(enable_read_reg_n_0),
        .O(bit_counter));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \bit_counter[3]_i_3 
       (.I0(bit_counter_reg__0[2]),
        .I1(bit_counter_reg__0[0]),
        .I2(bit_counter_reg__0[1]),
        .I3(bit_counter_reg__0[3]),
        .O(bit_counter0[3]));
  FDRE \bit_counter_reg[0] 
       (.C(clk),
        .CE(bit_counter),
        .D(bit_counter0[0]),
        .Q(bit_counter_reg__0[0]),
        .R(\bit_counter[3]_i_1_n_0 ));
  FDRE \bit_counter_reg[1] 
       (.C(clk),
        .CE(bit_counter),
        .D(bit_counter0[1]),
        .Q(bit_counter_reg__0[1]),
        .R(\bit_counter[3]_i_1_n_0 ));
  FDRE \bit_counter_reg[2] 
       (.C(clk),
        .CE(bit_counter),
        .D(bit_counter0[2]),
        .Q(bit_counter_reg__0[2]),
        .R(\bit_counter[3]_i_1_n_0 ));
  FDSE \bit_counter_reg[3] 
       (.C(clk),
        .CE(bit_counter),
        .D(bit_counter0[3]),
        .Q(bit_counter_reg__0[3]),
        .S(\bit_counter[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg__0[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__0 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0E0E0E)) 
    \counter[3]_i_1 
       (.I0(\sample[8]_i_3_n_0 ),
        .I1(ext_reset),
        .I2(E),
        .I3(enable_read_reg_n_0),
        .I4(\counter[3]_i_3_n_0 ),
        .I5(\sample[8]_i_4_n_0 ),
        .O(counter));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_2 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hFFE8E8E8)) 
    \counter[3]_i_3 
       (.I0(\isample[8]_i_3_n_0 ),
        .I1(\isample[8]_i_4_n_0 ),
        .I2(bit_counter_reg__0[3]),
        .I3(pass_sample_reg_n_0),
        .I4(counter_reg__0[2]),
        .O(\counter[3]_i_3_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clk),
        .CE(E),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter_reg__0[0]),
        .R(counter));
  FDRE \counter_reg[1] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[1]),
        .Q(counter_reg__0[1]),
        .R(counter));
  FDRE \counter_reg[2] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[2]),
        .Q(counter_reg__0[2]),
        .R(counter));
  FDRE \counter_reg[3] 
       (.C(clk),
        .CE(E),
        .D(p_0_in[3]),
        .Q(counter_reg__0[3]),
        .R(counter));
  LUT5 #(
    .INIT(32'h54440000)) 
    enable_read_i_1
       (.I0(ext_reset),
        .I1(enable_read_i_2_n_0),
        .I2(pass_sample_reg_n_0),
        .I3(enable_read_reg_n_0),
        .I4(enable_read_i_3_n_0),
        .O(enable_read_i_1_n_0));
  LUT6 #(
    .INIT(64'h0010001011110010)) 
    enable_read_i_2
       (.I0(enable_read_reg_n_0),
        .I1(counter_reg__0[3]),
        .I2(enable_read_i_4_n_0),
        .I3(bit_counter_reg__0[3]),
        .I4(enable_read_i_5_n_0),
        .I5(\isample[8]_i_4_n_0 ),
        .O(enable_read_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    enable_read_i_3
       (.I0(bit_counter_reg__0[3]),
        .I1(\isample[8]_i_4_n_0 ),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[0]),
        .I5(counter_reg__0[2]),
        .O(enable_read_i_3_n_0));
  LUT6 #(
    .INIT(64'h104040020A000080)) 
    enable_read_i_4
       (.I0(counter_reg__0[2]),
        .I1(bit_counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .I5(bit_counter_reg__0[2]),
        .O(enable_read_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0840)) 
    enable_read_i_5
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(bit_counter_reg__0[3]),
        .I3(counter_reg__0[2]),
        .O(enable_read_i_5_n_0));
  FDRE enable_read_reg
       (.C(clk),
        .CE(1'b1),
        .D(enable_read_i_1_n_0),
        .Q(enable_read_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFEAAAB)) 
    \iduty[0]_i_1 
       (.I0(\isample[8]_i_3_n_0 ),
        .I1(bit_counter_reg__0[1]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[2]),
        .I4(bit_counter_reg__0[3]),
        .I5(ext_reset),
        .O(\iduty[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888F88888)) 
    \iduty[1]_i_1 
       (.I0(isample[1]),
        .I1(\iduty[2]_i_2_n_0 ),
        .I2(\iduty[6]_i_3_n_0 ),
        .I3(bit_counter_reg__0[1]),
        .I4(bit_counter_reg__0[0]),
        .I5(bit_counter_reg__0[2]),
        .O(\iduty[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888F88888)) 
    \iduty[2]_i_1 
       (.I0(isample[2]),
        .I1(\iduty[2]_i_2_n_0 ),
        .I2(\iduty[6]_i_3_n_0 ),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .I5(bit_counter_reg__0[2]),
        .O(\iduty[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555544444541)) 
    \iduty[2]_i_2 
       (.I0(ext_reset),
        .I1(bit_counter_reg__0[3]),
        .I2(bit_counter_reg__0[1]),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[2]),
        .I5(\isample[8]_i_3_n_0 ),
        .O(\iduty[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \iduty[3]_i_1 
       (.I0(isample[3]),
        .I1(\iduty[3]_i_2_n_0 ),
        .I2(\iduty[6]_i_3_n_0 ),
        .I3(bit_counter_reg__0[1]),
        .I4(bit_counter_reg__0[0]),
        .I5(bit_counter_reg__0[2]),
        .O(\iduty[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555544445551)) 
    \iduty[3]_i_2 
       (.I0(ext_reset),
        .I1(bit_counter_reg__0[3]),
        .I2(bit_counter_reg__0[1]),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[2]),
        .I5(\isample[8]_i_3_n_0 ),
        .O(\iduty[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA30000A8AA)) 
    \iduty[4]_i_1 
       (.I0(isample[4]),
        .I1(\iduty[4]_i_2_n_0 ),
        .I2(\isample[8]_i_3_n_0 ),
        .I3(bit_counter_reg__0[3]),
        .I4(ext_reset),
        .I5(bit_counter_reg__0[2]),
        .O(\iduty[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \iduty[4]_i_2 
       (.I0(bit_counter_reg__0[0]),
        .I1(bit_counter_reg__0[1]),
        .O(\iduty[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \iduty[5]_i_1 
       (.I0(isample[5]),
        .I1(\iduty[6]_i_2_n_0 ),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[1]),
        .I4(\iduty[6]_i_3_n_0 ),
        .I5(bit_counter_reg__0[2]),
        .O(\iduty[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88F8888888888888)) 
    \iduty[6]_i_1 
       (.I0(isample[6]),
        .I1(\iduty[6]_i_2_n_0 ),
        .I2(bit_counter_reg__0[1]),
        .I3(bit_counter_reg__0[0]),
        .I4(\iduty[6]_i_3_n_0 ),
        .I5(bit_counter_reg__0[2]),
        .O(\iduty[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFEBBFF)) 
    \iduty[6]_i_2 
       (.I0(\isample[8]_i_3_n_0 ),
        .I1(bit_counter_reg__0[2]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[1]),
        .I4(bit_counter_reg__0[3]),
        .I5(ext_reset),
        .O(\iduty[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \iduty[6]_i_3 
       (.I0(ext_reset),
        .I1(bit_counter_reg__0[3]),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[0]),
        .I5(counter_reg__0[2]),
        .O(\iduty[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h88888888FF8F8888)) 
    \iduty[7]_i_1 
       (.I0(\iduty[7]_i_2_n_0 ),
        .I1(\iduty[7]_i_3_n_0 ),
        .I2(bit_counter_reg__0[3]),
        .I3(\iduty[8]_i_3_n_0 ),
        .I4(isample[7]),
        .I5(ext_reset),
        .O(\iduty[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \iduty[7]_i_2 
       (.I0(\isample[8]_i_3_n_0 ),
        .I1(bit_counter_reg__0[3]),
        .I2(ext_reset),
        .I3(bit_counter_reg__0[2]),
        .O(\iduty[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \iduty[7]_i_3 
       (.I0(bit_counter_reg__0[0]),
        .I1(bit_counter_reg__0[1]),
        .O(\iduty[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FF01FFFF)) 
    \iduty[8]_i_1 
       (.I0(bit_counter_reg__0[2]),
        .I1(bit_counter_reg__0[0]),
        .I2(bit_counter_reg__0[1]),
        .I3(ext_reset),
        .I4(bit_counter_reg__0[3]),
        .I5(\isample[8]_i_3_n_0 ),
        .O(duty0));
  LUT4 #(
    .INIT(16'h00BA)) 
    \iduty[8]_i_2 
       (.I0(isample[8]),
        .I1(\iduty[8]_i_3_n_0 ),
        .I2(bit_counter_reg__0[3]),
        .I3(ext_reset),
        .O(\iduty[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \iduty[8]_i_3 
       (.I0(\isample[8]_i_4_n_0 ),
        .I1(counter_reg__0[3]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[0]),
        .I4(counter_reg__0[2]),
        .O(\iduty[8]_i_3_n_0 ));
  FDRE \iduty_reg[0] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \iduty_reg[1] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \iduty_reg[2] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \iduty_reg[3] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \iduty_reg[4] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \iduty_reg[5] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \iduty_reg[6] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \iduty_reg[7] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \iduty_reg[8] 
       (.C(clk),
        .CE(duty0),
        .D(\iduty[8]_i_2_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \isample[0]_i_1 
       (.I0(SAR_input),
        .I1(\isample[7]_i_2_n_0 ),
        .I2(bit_counter_reg__0[2]),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .I5(isample[0]),
        .O(\isample[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \isample[1]_i_1 
       (.I0(SAR_input),
        .I1(bit_counter_reg__0[2]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[1]),
        .I4(\isample[7]_i_2_n_0 ),
        .I5(isample[1]),
        .O(\isample[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \isample[2]_i_1 
       (.I0(SAR_input),
        .I1(bit_counter_reg__0[2]),
        .I2(bit_counter_reg__0[1]),
        .I3(bit_counter_reg__0[0]),
        .I4(\isample[7]_i_2_n_0 ),
        .I5(isample[2]),
        .O(\isample[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \isample[3]_i_1 
       (.I0(SAR_input),
        .I1(bit_counter_reg__0[2]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[1]),
        .I4(\isample[7]_i_2_n_0 ),
        .I5(isample[3]),
        .O(\isample[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \isample[4]_i_1 
       (.I0(SAR_input),
        .I1(bit_counter_reg__0[2]),
        .I2(\isample[7]_i_2_n_0 ),
        .I3(bit_counter_reg__0[1]),
        .I4(bit_counter_reg__0[0]),
        .I5(isample[4]),
        .O(\isample[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \isample[5]_i_1 
       (.I0(SAR_input),
        .I1(bit_counter_reg__0[2]),
        .I2(\isample[7]_i_2_n_0 ),
        .I3(bit_counter_reg__0[1]),
        .I4(bit_counter_reg__0[0]),
        .I5(isample[5]),
        .O(\isample[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00800000)) 
    \isample[6]_i_1 
       (.I0(SAR_input),
        .I1(bit_counter_reg__0[2]),
        .I2(\isample[7]_i_2_n_0 ),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .I5(isample[6]),
        .O(\isample[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \isample[7]_i_1 
       (.I0(SAR_input),
        .I1(bit_counter_reg__0[2]),
        .I2(\isample[7]_i_2_n_0 ),
        .I3(bit_counter_reg__0[1]),
        .I4(bit_counter_reg__0[0]),
        .I5(isample[7]),
        .O(\isample[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \isample[7]_i_2 
       (.I0(bit_counter_reg__0[3]),
        .I1(enable_read_reg_n_0),
        .I2(pass_sample_reg_n_0),
        .I3(\isample[8]_i_3_n_0 ),
        .O(\isample[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \isample[8]_i_1 
       (.I0(bit_counter_reg__0[2]),
        .I1(bit_counter_reg__0[0]),
        .I2(bit_counter_reg__0[1]),
        .I3(\isample[8]_i_3_n_0 ),
        .I4(bit_counter_reg__0[3]),
        .I5(ext_reset),
        .O(\isample[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \isample[8]_i_2 
       (.I0(SAR_input),
        .I1(bit_counter_reg__0[3]),
        .I2(enable_read_reg_n_0),
        .I3(pass_sample_reg_n_0),
        .I4(\isample[8]_i_4_n_0 ),
        .I5(isample[8]),
        .O(\isample[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \isample[8]_i_3 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .O(\isample[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \isample[8]_i_4 
       (.I0(bit_counter_reg__0[1]),
        .I1(bit_counter_reg__0[0]),
        .I2(bit_counter_reg__0[2]),
        .O(\isample[8]_i_4_n_0 ));
  FDRE \isample_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[0]_i_1_n_0 ),
        .Q(isample[0]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[1]_i_1_n_0 ),
        .Q(isample[1]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[2]_i_1_n_0 ),
        .Q(isample[2]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[3]_i_1_n_0 ),
        .Q(isample[3]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[4]_i_1_n_0 ),
        .Q(isample[4]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[5]_i_1_n_0 ),
        .Q(isample[5]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[6]_i_1_n_0 ),
        .Q(isample[6]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[7]_i_1_n_0 ),
        .Q(isample[7]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\isample[8]_i_2_n_0 ),
        .Q(isample[8]),
        .R(\isample[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0002)) 
    pass_sample_i_1
       (.I0(pass_sample_reg_n_0),
        .I1(\sample[8]_i_4_n_0 ),
        .I2(pass_sample_i_2_n_0),
        .I3(pass_sample_i_3_n_0),
        .I4(pass_sample),
        .I5(ext_reset),
        .O(pass_sample_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFE000000)) 
    pass_sample_i_2
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .I3(enable_read_reg_n_0),
        .I4(pass_sample_reg_n_0),
        .I5(\sample[8]_i_3_n_0 ),
        .O(pass_sample_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    pass_sample_i_3
       (.I0(bit_counter_reg__0[1]),
        .I1(bit_counter_reg__0[0]),
        .I2(bit_counter_reg__0[2]),
        .I3(enable_read_reg_n_0),
        .I4(bit_counter_reg__0[3]),
        .I5(\isample[8]_i_3_n_0 ),
        .O(pass_sample_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    pass_sample_i_4
       (.I0(bit_counter_reg__0[3]),
        .I1(enable_read_reg_n_0),
        .I2(pass_sample_reg_n_0),
        .I3(bit_counter_reg__0[2]),
        .I4(bit_counter_reg__0[0]),
        .I5(bit_counter_reg__0[1]),
        .O(pass_sample));
  FDRE pass_sample_reg
       (.C(clk),
        .CE(1'b1),
        .D(pass_sample_i_1_n_0),
        .Q(pass_sample_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFFFF80)) 
    \sample[8]_i_1 
       (.I0(\sample[8]_i_2_n_0 ),
        .I1(enable_read_reg_n_0),
        .I2(pass_sample_reg_n_0),
        .I3(\sample[8]_i_3_n_0 ),
        .I4(\sample[8]_i_4_n_0 ),
        .I5(ext_reset),
        .O(\sample[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \sample[8]_i_2 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .O(\sample[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8080000000300000)) 
    \sample[8]_i_3 
       (.I0(bit_counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[0]),
        .I3(bit_counter_reg__0[3]),
        .I4(pass_sample_reg_n_0),
        .I5(counter_reg__0[2]),
        .O(\sample[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \sample[8]_i_4 
       (.I0(\sample[8]_i_5_n_0 ),
        .I1(\sample[8]_i_6_n_0 ),
        .I2(\sample[8]_i_7_n_0 ),
        .I3(\sample[8]_i_8_n_0 ),
        .I4(\sample[8]_i_9_n_0 ),
        .O(\sample[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h908090409080F040)) 
    \sample[8]_i_5 
       (.I0(bit_counter_reg__0[2]),
        .I1(counter_reg__0[2]),
        .I2(pass_sample_reg_n_0),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[0]),
        .I5(bit_counter_reg__0[0]),
        .O(\sample[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9A00A4009A004400)) 
    \sample[8]_i_6 
       (.I0(bit_counter_reg__0[1]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[0]),
        .I3(pass_sample_reg_n_0),
        .I4(counter_reg__0[2]),
        .I5(bit_counter_reg__0[0]),
        .O(\sample[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \sample[8]_i_7 
       (.I0(bit_counter_reg__0[0]),
        .I1(counter_reg__0[2]),
        .I2(pass_sample_reg_n_0),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[0]),
        .O(\sample[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h88888880)) 
    \sample[8]_i_8 
       (.I0(pass_sample_reg_n_0),
        .I1(bit_counter_reg__0[3]),
        .I2(bit_counter_reg__0[2]),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .O(\sample[8]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hF080)) 
    \sample[8]_i_9 
       (.I0(bit_counter_reg__0[3]),
        .I1(counter_reg__0[2]),
        .I2(pass_sample_reg_n_0),
        .I3(counter_reg__0[3]),
        .O(\sample[8]_i_9_n_0 ));
  FDRE \sample_reg[0] 
       (.C(clk),
        .CE(\sample[8]_i_1_n_0 ),
        .D(isample[0]),
        .Q(\i_sample_reg[8] [0]),
        .R(1'b0));
  FDRE \sample_reg[1] 
       (.C(clk),
        .CE(\sample[8]_i_1_n_0 ),
        .D(isample[1]),
        .Q(\i_sample_reg[8] [1]),
        .R(1'b0));
  FDRE \sample_reg[2] 
       (.C(clk),
        .CE(\sample[8]_i_1_n_0 ),
        .D(isample[2]),
        .Q(\i_sample_reg[8] [2]),
        .R(1'b0));
  FDRE \sample_reg[3] 
       (.C(clk),
        .CE(\sample[8]_i_1_n_0 ),
        .D(isample[3]),
        .Q(\i_sample_reg[8] [3]),
        .R(1'b0));
  FDRE \sample_reg[4] 
       (.C(clk),
        .CE(\sample[8]_i_1_n_0 ),
        .D(isample[4]),
        .Q(\i_sample_reg[8] [4]),
        .R(1'b0));
  FDRE \sample_reg[5] 
       (.C(clk),
        .CE(\sample[8]_i_1_n_0 ),
        .D(isample[5]),
        .Q(\i_sample_reg[8] [5]),
        .R(1'b0));
  FDRE \sample_reg[6] 
       (.C(clk),
        .CE(\sample[8]_i_1_n_0 ),
        .D(isample[6]),
        .Q(\i_sample_reg[8] [6]),
        .R(1'b0));
  FDRE \sample_reg[7] 
       (.C(clk),
        .CE(\sample[8]_i_1_n_0 ),
        .D(isample[7]),
        .Q(\i_sample_reg[8] [7]),
        .R(1'b0));
  FDRE \sample_reg[8] 
       (.C(clk),
        .CE(\sample[8]_i_1_n_0 ),
        .D(isample[8]),
        .Q(\i_sample_reg[8] [8]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downcounter_fixed
   (E,
    clk,
    ext_reset);
  output [0:0]E;
  input clk;
  input ext_reset;

  wire [0:0]E;
  wire clk;
  wire \current_count[0]_i_10_n_0 ;
  wire \current_count[0]_i_11_n_0 ;
  wire \current_count[0]_i_2_n_0 ;
  wire \current_count[0]_i_3_n_0 ;
  wire \current_count[0]_i_4_n_0 ;
  wire \current_count[0]_i_5_n_0 ;
  wire \current_count[0]_i_6_n_0 ;
  wire \current_count[0]_i_7_n_0 ;
  wire \current_count[0]_i_8_n_0 ;
  wire \current_count[0]_i_9_n_0 ;
  wire \current_count[12]_i_2_n_0 ;
  wire \current_count[12]_i_3_n_0 ;
  wire \current_count[12]_i_4_n_0 ;
  wire \current_count[12]_i_5_n_0 ;
  wire \current_count[12]_i_6_n_0 ;
  wire \current_count[12]_i_7_n_0 ;
  wire \current_count[16]_i_2_n_0 ;
  wire \current_count[4]_i_2_n_0 ;
  wire \current_count[4]_i_3_n_0 ;
  wire \current_count[4]_i_4_n_0 ;
  wire \current_count[4]_i_5_n_0 ;
  wire \current_count[4]_i_6_n_0 ;
  wire \current_count[4]_i_7_n_0 ;
  wire \current_count[8]_i_2_n_0 ;
  wire \current_count[8]_i_3_n_0 ;
  wire \current_count[8]_i_4_n_0 ;
  wire \current_count[8]_i_5_n_0 ;
  wire \current_count[8]_i_6_n_0 ;
  wire \current_count[8]_i_7_n_0 ;
  wire [16:0]current_count_reg;
  wire \current_count_reg[0]_i_1_n_0 ;
  wire \current_count_reg[0]_i_1_n_1 ;
  wire \current_count_reg[0]_i_1_n_2 ;
  wire \current_count_reg[0]_i_1_n_3 ;
  wire \current_count_reg[0]_i_1_n_4 ;
  wire \current_count_reg[0]_i_1_n_5 ;
  wire \current_count_reg[0]_i_1_n_6 ;
  wire \current_count_reg[0]_i_1_n_7 ;
  wire \current_count_reg[12]_i_1_n_0 ;
  wire \current_count_reg[12]_i_1_n_1 ;
  wire \current_count_reg[12]_i_1_n_2 ;
  wire \current_count_reg[12]_i_1_n_3 ;
  wire \current_count_reg[12]_i_1_n_4 ;
  wire \current_count_reg[12]_i_1_n_5 ;
  wire \current_count_reg[12]_i_1_n_6 ;
  wire \current_count_reg[12]_i_1_n_7 ;
  wire \current_count_reg[16]_i_1_n_7 ;
  wire \current_count_reg[4]_i_1_n_0 ;
  wire \current_count_reg[4]_i_1_n_1 ;
  wire \current_count_reg[4]_i_1_n_2 ;
  wire \current_count_reg[4]_i_1_n_3 ;
  wire \current_count_reg[4]_i_1_n_4 ;
  wire \current_count_reg[4]_i_1_n_5 ;
  wire \current_count_reg[4]_i_1_n_6 ;
  wire \current_count_reg[4]_i_1_n_7 ;
  wire \current_count_reg[8]_i_1_n_0 ;
  wire \current_count_reg[8]_i_1_n_1 ;
  wire \current_count_reg[8]_i_1_n_2 ;
  wire \current_count_reg[8]_i_1_n_3 ;
  wire \current_count_reg[8]_i_1_n_4 ;
  wire \current_count_reg[8]_i_1_n_5 ;
  wire \current_count_reg[8]_i_1_n_6 ;
  wire \current_count_reg[8]_i_1_n_7 ;
  wire eqOp;
  wire ext_reset;
  wire i_zero_i_2_n_0;
  wire i_zero_i_3_n_0;
  wire i_zero_i_4_n_0;
  wire i_zero_i_5_n_0;
  wire i_zero_i_6_n_0;
  wire [3:0]\NLW_current_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_current_count_reg[16]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_count[0]_i_10 
       (.I0(i_zero_i_5_n_0),
        .I1(i_zero_i_4_n_0),
        .I2(current_count_reg[15]),
        .I3(current_count_reg[9]),
        .I4(current_count_reg[10]),
        .I5(i_zero_i_2_n_0),
        .O(\current_count[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \current_count[0]_i_11 
       (.I0(i_zero_i_5_n_0),
        .I1(current_count_reg[6]),
        .I2(current_count_reg[5]),
        .I3(current_count_reg[11]),
        .I4(current_count_reg[8]),
        .I5(current_count_reg[15]),
        .O(\current_count[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \current_count[0]_i_2 
       (.I0(\current_count[0]_i_10_n_0 ),
        .I1(current_count_reg[7]),
        .I2(current_count_reg[4]),
        .I3(current_count_reg[2]),
        .I4(current_count_reg[3]),
        .O(\current_count[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \current_count[0]_i_3 
       (.I0(\current_count[0]_i_10_n_0 ),
        .I1(current_count_reg[7]),
        .I2(current_count_reg[4]),
        .I3(current_count_reg[3]),
        .I4(current_count_reg[2]),
        .O(\current_count[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \current_count[0]_i_4 
       (.I0(current_count_reg[10]),
        .I1(current_count_reg[9]),
        .I2(\current_count[0]_i_11_n_0 ),
        .I3(i_zero_i_6_n_0),
        .I4(current_count_reg[0]),
        .I5(current_count_reg[1]),
        .O(\current_count[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \current_count[0]_i_5 
       (.I0(current_count_reg[10]),
        .I1(current_count_reg[9]),
        .I2(\current_count[0]_i_11_n_0 ),
        .I3(i_zero_i_6_n_0),
        .I4(current_count_reg[1]),
        .I5(current_count_reg[0]),
        .O(\current_count[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_count[0]_i_6 
       (.I0(current_count_reg[3]),
        .O(\current_count[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_count[0]_i_7 
       (.I0(current_count_reg[2]),
        .O(\current_count[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_count[0]_i_8 
       (.I0(current_count_reg[1]),
        .O(\current_count[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_count[0]_i_9 
       (.I0(current_count_reg[0]),
        .O(\current_count[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \current_count[12]_i_2 
       (.I0(\current_count[12]_i_7_n_0 ),
        .I1(i_zero_i_2_n_0),
        .I2(current_count_reg[9]),
        .I3(current_count_reg[10]),
        .I4(i_zero_i_6_n_0),
        .I5(current_count_reg[15]),
        .O(\current_count[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_count[12]_i_3 
       (.I0(current_count_reg[15]),
        .O(\current_count[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \current_count[12]_i_4 
       (.I0(current_count_reg[14]),
        .I1(eqOp),
        .O(\current_count[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \current_count[12]_i_5 
       (.I0(current_count_reg[13]),
        .I1(eqOp),
        .O(\current_count[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \current_count[12]_i_6 
       (.I0(current_count_reg[12]),
        .I1(eqOp),
        .O(\current_count[12]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \current_count[12]_i_7 
       (.I0(current_count_reg[8]),
        .I1(current_count_reg[11]),
        .I2(current_count_reg[5]),
        .I3(current_count_reg[6]),
        .I4(i_zero_i_5_n_0),
        .O(\current_count[12]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_count[16]_i_2 
       (.I0(current_count_reg[16]),
        .O(\current_count[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \current_count[4]_i_2 
       (.I0(\current_count[0]_i_10_n_0 ),
        .I1(current_count_reg[3]),
        .I2(current_count_reg[2]),
        .I3(current_count_reg[4]),
        .I4(current_count_reg[7]),
        .O(\current_count[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \current_count[4]_i_3 
       (.I0(\current_count[0]_i_10_n_0 ),
        .I1(current_count_reg[3]),
        .I2(current_count_reg[2]),
        .I3(current_count_reg[7]),
        .I4(current_count_reg[4]),
        .O(\current_count[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_count[4]_i_4 
       (.I0(current_count_reg[7]),
        .O(\current_count[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \current_count[4]_i_5 
       (.I0(current_count_reg[6]),
        .I1(eqOp),
        .O(\current_count[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \current_count[4]_i_6 
       (.I0(current_count_reg[5]),
        .I1(eqOp),
        .O(\current_count[4]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_count[4]_i_7 
       (.I0(current_count_reg[4]),
        .O(\current_count[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \current_count[8]_i_2 
       (.I0(\current_count[0]_i_11_n_0 ),
        .I1(current_count_reg[9]),
        .I2(current_count_reg[0]),
        .I3(current_count_reg[1]),
        .I4(i_zero_i_6_n_0),
        .I5(current_count_reg[10]),
        .O(\current_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    \current_count[8]_i_3 
       (.I0(\current_count[0]_i_11_n_0 ),
        .I1(current_count_reg[10]),
        .I2(current_count_reg[0]),
        .I3(current_count_reg[1]),
        .I4(i_zero_i_6_n_0),
        .I5(current_count_reg[9]),
        .O(\current_count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \current_count[8]_i_4 
       (.I0(current_count_reg[11]),
        .I1(eqOp),
        .O(\current_count[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_count[8]_i_5 
       (.I0(current_count_reg[10]),
        .O(\current_count[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \current_count[8]_i_6 
       (.I0(current_count_reg[9]),
        .O(\current_count[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \current_count[8]_i_7 
       (.I0(current_count_reg[8]),
        .I1(eqOp),
        .O(\current_count[8]_i_7_n_0 ));
  FDPE \current_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_count_reg[0]_i_1_n_7 ),
        .PRE(ext_reset),
        .Q(current_count_reg[0]));
  CARRY4 \current_count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\current_count_reg[0]_i_1_n_0 ,\current_count_reg[0]_i_1_n_1 ,\current_count_reg[0]_i_1_n_2 ,\current_count_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\current_count[0]_i_2_n_0 ,\current_count[0]_i_3_n_0 ,\current_count[0]_i_4_n_0 ,\current_count[0]_i_5_n_0 }),
        .O({\current_count_reg[0]_i_1_n_4 ,\current_count_reg[0]_i_1_n_5 ,\current_count_reg[0]_i_1_n_6 ,\current_count_reg[0]_i_1_n_7 }),
        .S({\current_count[0]_i_6_n_0 ,\current_count[0]_i_7_n_0 ,\current_count[0]_i_8_n_0 ,\current_count[0]_i_9_n_0 }));
  FDPE \current_count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_count_reg[8]_i_1_n_5 ),
        .PRE(ext_reset),
        .Q(current_count_reg[10]));
  FDCE \current_count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(ext_reset),
        .D(\current_count_reg[8]_i_1_n_4 ),
        .Q(current_count_reg[11]));
  FDCE \current_count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(ext_reset),
        .D(\current_count_reg[12]_i_1_n_7 ),
        .Q(current_count_reg[12]));
  CARRY4 \current_count_reg[12]_i_1 
       (.CI(\current_count_reg[8]_i_1_n_0 ),
        .CO({\current_count_reg[12]_i_1_n_0 ,\current_count_reg[12]_i_1_n_1 ,\current_count_reg[12]_i_1_n_2 ,\current_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\current_count[12]_i_2_n_0 ,current_count_reg[14:12]}),
        .O({\current_count_reg[12]_i_1_n_4 ,\current_count_reg[12]_i_1_n_5 ,\current_count_reg[12]_i_1_n_6 ,\current_count_reg[12]_i_1_n_7 }),
        .S({\current_count[12]_i_3_n_0 ,\current_count[12]_i_4_n_0 ,\current_count[12]_i_5_n_0 ,\current_count[12]_i_6_n_0 }));
  FDCE \current_count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(ext_reset),
        .D(\current_count_reg[12]_i_1_n_6 ),
        .Q(current_count_reg[13]));
  FDCE \current_count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(ext_reset),
        .D(\current_count_reg[12]_i_1_n_5 ),
        .Q(current_count_reg[14]));
  FDPE \current_count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_count_reg[12]_i_1_n_4 ),
        .PRE(ext_reset),
        .Q(current_count_reg[15]));
  FDPE \current_count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_count_reg[16]_i_1_n_7 ),
        .PRE(ext_reset),
        .Q(current_count_reg[16]));
  CARRY4 \current_count_reg[16]_i_1 
       (.CI(\current_count_reg[12]_i_1_n_0 ),
        .CO(\NLW_current_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_current_count_reg[16]_i_1_O_UNCONNECTED [3:1],\current_count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,\current_count[16]_i_2_n_0 }));
  FDPE \current_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_count_reg[0]_i_1_n_6 ),
        .PRE(ext_reset),
        .Q(current_count_reg[1]));
  FDPE \current_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_count_reg[0]_i_1_n_5 ),
        .PRE(ext_reset),
        .Q(current_count_reg[2]));
  FDPE \current_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_count_reg[0]_i_1_n_4 ),
        .PRE(ext_reset),
        .Q(current_count_reg[3]));
  FDPE \current_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_count_reg[4]_i_1_n_7 ),
        .PRE(ext_reset),
        .Q(current_count_reg[4]));
  CARRY4 \current_count_reg[4]_i_1 
       (.CI(\current_count_reg[0]_i_1_n_0 ),
        .CO({\current_count_reg[4]_i_1_n_0 ,\current_count_reg[4]_i_1_n_1 ,\current_count_reg[4]_i_1_n_2 ,\current_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\current_count[4]_i_2_n_0 ,current_count_reg[6:5],\current_count[4]_i_3_n_0 }),
        .O({\current_count_reg[4]_i_1_n_4 ,\current_count_reg[4]_i_1_n_5 ,\current_count_reg[4]_i_1_n_6 ,\current_count_reg[4]_i_1_n_7 }),
        .S({\current_count[4]_i_4_n_0 ,\current_count[4]_i_5_n_0 ,\current_count[4]_i_6_n_0 ,\current_count[4]_i_7_n_0 }));
  FDCE \current_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(ext_reset),
        .D(\current_count_reg[4]_i_1_n_6 ),
        .Q(current_count_reg[5]));
  FDCE \current_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(ext_reset),
        .D(\current_count_reg[4]_i_1_n_5 ),
        .Q(current_count_reg[6]));
  FDPE \current_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_count_reg[4]_i_1_n_4 ),
        .PRE(ext_reset),
        .Q(current_count_reg[7]));
  FDCE \current_count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(ext_reset),
        .D(\current_count_reg[8]_i_1_n_7 ),
        .Q(current_count_reg[8]));
  CARRY4 \current_count_reg[8]_i_1 
       (.CI(\current_count_reg[4]_i_1_n_0 ),
        .CO({\current_count_reg[8]_i_1_n_0 ,\current_count_reg[8]_i_1_n_1 ,\current_count_reg[8]_i_1_n_2 ,\current_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({current_count_reg[11],\current_count[8]_i_2_n_0 ,\current_count[8]_i_3_n_0 ,current_count_reg[8]}),
        .O({\current_count_reg[8]_i_1_n_4 ,\current_count_reg[8]_i_1_n_5 ,\current_count_reg[8]_i_1_n_6 ,\current_count_reg[8]_i_1_n_7 }),
        .S({\current_count[8]_i_4_n_0 ,\current_count[8]_i_5_n_0 ,\current_count[8]_i_6_n_0 ,\current_count[8]_i_7_n_0 }));
  FDPE \current_count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\current_count_reg[8]_i_1_n_6 ),
        .PRE(ext_reset),
        .Q(current_count_reg[9]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    i_zero_i_1
       (.I0(i_zero_i_2_n_0),
        .I1(i_zero_i_3_n_0),
        .I2(current_count_reg[15]),
        .I3(i_zero_i_4_n_0),
        .I4(i_zero_i_5_n_0),
        .I5(i_zero_i_6_n_0),
        .O(eqOp));
  LUT2 #(
    .INIT(4'hE)) 
    i_zero_i_2
       (.I0(current_count_reg[0]),
        .I1(current_count_reg[1]),
        .O(i_zero_i_2_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i_zero_i_3
       (.I0(current_count_reg[9]),
        .I1(current_count_reg[10]),
        .O(i_zero_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    i_zero_i_4
       (.I0(current_count_reg[6]),
        .I1(current_count_reg[5]),
        .I2(current_count_reg[11]),
        .I3(current_count_reg[8]),
        .O(i_zero_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i_zero_i_5
       (.I0(current_count_reg[13]),
        .I1(current_count_reg[12]),
        .I2(current_count_reg[16]),
        .I3(current_count_reg[14]),
        .O(i_zero_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i_zero_i_6
       (.I0(current_count_reg[3]),
        .I1(current_count_reg[2]),
        .I2(current_count_reg[7]),
        .I3(current_count_reg[4]),
        .O(i_zero_i_6_n_0));
  FDCE i_zero_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(ext_reset),
        .D(eqOp),
        .Q(E));
endmodule

(* CHECK_LICENSE_TYPE = "microSense_top_level_top_level_SAR_0_0,top_level_SAR,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "top_level_SAR,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    ext_reset,
    SAR_input,
    SAR_output,
    distance_mm);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN microSense_top_level_sys_clock" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ext_reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ext_reset, POLARITY ACTIVE_LOW" *) input ext_reset;
  input SAR_input;
  output SAR_output;
  output [8:0]distance_mm;

  wire SAR_input;
  wire SAR_output;
  wire clk;
  wire [8:0]distance_mm;
  wire ext_reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_level_SAR U0
       (.SAR_input(SAR_input),
        .SAR_output(SAR_output),
        .clk(clk),
        .distance_mm(distance_mm),
        .ext_reset(ext_reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_level_SAR
   (distance_mm,
    SAR_output,
    clk,
    ext_reset,
    SAR_input);
  output [8:0]distance_mm;
  output SAR_output;
  input clk;
  input ext_reset;
  input SAR_input;

  wire SAR_input;
  wire SAR_output;
  wire clk;
  wire [8:0]distance_mm;
  wire [8:0]duty;
  wire enable;
  wire ext_reset;
  wire [8:0]sample;
  wire the_PWM_generator_n_1;
  wire the_PWM_generator_n_2;
  wire the_PWM_generator_n_3;
  wire the_PWM_generator_n_4;
  wire the_PWM_generator_n_5;
  wire the_PWM_generator_n_6;
  wire the_PWM_generator_n_7;
  wire the_PWM_generator_n_8;
  wire the_PWM_generator_n_9;
  wire the_SAR_n_0;
  wire the_SAR_n_1;
  wire the_SAR_n_13;
  wire the_SAR_n_2;
  wire the_SAR_n_3;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Averager the_Averager
       (.Q(sample),
        .clk(clk),
        .distance_mm(distance_mm),
        .enable(enable));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_generator the_PWM_generator
       (.DI({the_SAR_n_0,the_SAR_n_1,the_SAR_n_2,the_SAR_n_3}),
        .Q({the_PWM_generator_n_1,the_PWM_generator_n_2,the_PWM_generator_n_3,the_PWM_generator_n_4,the_PWM_generator_n_5,the_PWM_generator_n_6,the_PWM_generator_n_7,the_PWM_generator_n_8,the_PWM_generator_n_9}),
        .SAR_output(SAR_output),
        .clk(clk),
        .\iduty_reg[8] (the_SAR_n_13),
        .\iduty_reg[8]_0 (duty));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_downcounter_fixed the_RC_clock
       (.E(enable),
        .clk(clk),
        .ext_reset(ext_reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SAR the_SAR
       (.DI({the_SAR_n_0,the_SAR_n_1,the_SAR_n_2,the_SAR_n_3}),
        .E(enable),
        .Q(duty),
        .SAR_input(SAR_input),
        .SAR_output(the_SAR_n_13),
        .clk(clk),
        .\counter_reg[8] ({the_PWM_generator_n_1,the_PWM_generator_n_2,the_PWM_generator_n_3,the_PWM_generator_n_4,the_PWM_generator_n_5,the_PWM_generator_n_6,the_PWM_generator_n_7,the_PWM_generator_n_8,the_PWM_generator_n_9}),
        .ext_reset(ext_reset),
        .\i_sample_reg[8] (sample));
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
