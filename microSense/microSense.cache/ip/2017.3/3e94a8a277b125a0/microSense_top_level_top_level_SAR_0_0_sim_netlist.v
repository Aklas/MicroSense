// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.3 (win64) Build 2018833 Wed Oct  4 19:58:22 MDT 2017
// Date        : Wed Dec  6 19:21:38 2017
// Host        : DESKTOP-N854F8E running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ microSense_top_level_top_level_SAR_0_0_sim_netlist.v
// Design      : microSense_top_level_top_level_SAR_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_generator
   (\output ,
    Q,
    DI,
    \iduty_reg[8] ,
    \iduty_reg[8]_0 ,
    clock);
  output \output ;
  output [8:0]Q;
  input [3:0]DI;
  input [0:0]\iduty_reg[8] ;
  input [8:0]\iduty_reg[8]_0 ;
  input clock;

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
  wire clock;
  wire [8:0]counter;
  wire \counter[8]_i_2_n_0 ;
  wire [0:0]\iduty_reg[8] ;
  wire [8:0]\iduty_reg[8]_0 ;
  wire \output ;
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
        .CO({NLW_PWM0_carry__0_CO_UNCONNECTED[3:1],\output }),
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
    \counter[0]_i_1 
       (.I0(Q[0]),
        .O(counter[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(counter[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(counter[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(counter[3]));
  LUT6 #(
    .INIT(64'hFFFF00000000FFF7)) 
    \counter[4]_i_1 
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(\counter[8]_i_2_n_0 ),
        .I5(Q[4]),
        .O(counter[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
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
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \counter[8]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\counter[8]_i_2_n_0 ));
  FDRE \counter_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(counter[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \counter_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(counter[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \counter_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(counter[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \counter_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(counter[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \counter_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(counter[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \counter_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(counter[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \counter_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(counter[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \counter_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(counter[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \counter_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(counter[8]),
        .Q(Q[8]),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SAR
   (DI,
    Q,
    \output ,
    clock,
    reset,
    \counter_reg[8] ,
    \input );
  output [3:0]DI;
  output [8:0]Q;
  output [0:0]\output ;
  input clock;
  input reset;
  input [8:0]\counter_reg[8] ;
  input \input ;

  wire [3:0]DI;
  wire [8:0]Q;
  wire bit_counter;
  wire [3:0]bit_counter0;
  wire \bit_counter[3]_i_1_n_0 ;
  wire [3:0]bit_counter_reg__0;
  wire clock;
  wire counter_i_1_n_0;
  wire [8:0]\counter_reg[8] ;
  wire counter_reg_n_0;
  wire duty0;
  wire enable_read_i_1_n_0;
  wire enable_read_reg_n_0;
  wire \iduty[0]_i_1_n_0 ;
  wire \iduty[1]_i_1_n_0 ;
  wire \iduty[2]_i_1_n_0 ;
  wire \iduty[2]_i_2_n_0 ;
  wire \iduty[3]_i_1_n_0 ;
  wire \iduty[3]_i_2_n_0 ;
  wire \iduty[3]_i_3_n_0 ;
  wire \iduty[4]_i_1_n_0 ;
  wire \iduty[4]_i_2_n_0 ;
  wire \iduty[5]_i_1_n_0 ;
  wire \iduty[6]_i_1_n_0 ;
  wire \iduty[6]_i_2_n_0 ;
  wire \iduty[7]_i_1_n_0 ;
  wire \iduty[7]_i_2_n_0 ;
  wire \iduty[7]_i_3_n_0 ;
  wire \iduty[7]_i_4_n_0 ;
  wire \iduty[8]_i_2_n_0 ;
  wire \input ;
  wire [8:1]isample;
  wire \isample[1]_i_1_n_0 ;
  wire \isample[2]_i_1_n_0 ;
  wire \isample[3]_i_1_n_0 ;
  wire \isample[3]_i_2_n_0 ;
  wire \isample[4]_i_1_n_0 ;
  wire \isample[5]_i_1_n_0 ;
  wire \isample[6]_i_1_n_0 ;
  wire \isample[7]_i_1_n_0 ;
  wire \isample[7]_i_2_n_0 ;
  wire \isample[8]_i_1_n_0 ;
  wire \isample[8]_i_2_n_0 ;
  wire \isample[8]_i_3_n_0 ;
  wire [0:0]\output ;
  wire pass_sample_i_1_n_0;
  wire pass_sample_reg_n_0;
  wire reset;

  LUT2 #(
    .INIT(4'h2)) 
    PWM0_carry__0_i_1
       (.I0(Q[8]),
        .I1(\counter_reg[8] [8]),
        .O(\output ));
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \bit_counter[0]_i_1 
       (.I0(bit_counter_reg__0[0]),
        .O(bit_counter0[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \bit_counter[1]_i_1 
       (.I0(bit_counter_reg__0[1]),
        .I1(bit_counter_reg__0[0]),
        .O(bit_counter0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \bit_counter[2]_i_1 
       (.I0(bit_counter_reg__0[2]),
        .I1(bit_counter_reg__0[0]),
        .I2(bit_counter_reg__0[1]),
        .O(bit_counter0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFAA008080)) 
    \bit_counter[3]_i_1 
       (.I0(pass_sample_reg_n_0),
        .I1(\isample[8]_i_3_n_0 ),
        .I2(bit_counter_reg__0[3]),
        .I3(enable_read_reg_n_0),
        .I4(counter_reg_n_0),
        .I5(reset),
        .O(\bit_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCC888888880)) 
    \bit_counter[3]_i_2 
       (.I0(counter_reg_n_0),
        .I1(enable_read_reg_n_0),
        .I2(bit_counter_reg__0[2]),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .I5(bit_counter_reg__0[3]),
        .O(bit_counter));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \bit_counter[3]_i_3 
       (.I0(bit_counter_reg__0[3]),
        .I1(bit_counter_reg__0[1]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[2]),
        .O(bit_counter0[3]));
  FDRE \bit_counter_reg[0] 
       (.C(clock),
        .CE(bit_counter),
        .D(bit_counter0[0]),
        .Q(bit_counter_reg__0[0]),
        .R(\bit_counter[3]_i_1_n_0 ));
  FDRE \bit_counter_reg[1] 
       (.C(clock),
        .CE(bit_counter),
        .D(bit_counter0[1]),
        .Q(bit_counter_reg__0[1]),
        .R(\bit_counter[3]_i_1_n_0 ));
  FDRE \bit_counter_reg[2] 
       (.C(clock),
        .CE(bit_counter),
        .D(bit_counter0[2]),
        .Q(bit_counter_reg__0[2]),
        .R(\bit_counter[3]_i_1_n_0 ));
  FDSE \bit_counter_reg[3] 
       (.C(clock),
        .CE(bit_counter),
        .D(bit_counter0[3]),
        .Q(bit_counter_reg__0[3]),
        .S(\bit_counter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000444444444)) 
    counter_i_1
       (.I0(reset),
        .I1(counter_reg_n_0),
        .I2(pass_sample_reg_n_0),
        .I3(\isample[8]_i_3_n_0 ),
        .I4(bit_counter_reg__0[3]),
        .I5(enable_read_reg_n_0),
        .O(counter_i_1_n_0));
  FDRE counter_reg
       (.C(clock),
        .CE(1'b1),
        .D(counter_i_1_n_0),
        .Q(counter_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4545454540000000)) 
    enable_read_i_1
       (.I0(reset),
        .I1(pass_sample_reg_n_0),
        .I2(enable_read_reg_n_0),
        .I3(bit_counter_reg__0[3]),
        .I4(\isample[8]_i_3_n_0 ),
        .I5(counter_reg_n_0),
        .O(enable_read_i_1_n_0));
  FDRE enable_read_reg
       (.C(clock),
        .CE(1'b1),
        .D(enable_read_i_1_n_0),
        .Q(enable_read_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555555444444445)) 
    \iduty[0]_i_1 
       (.I0(reset),
        .I1(counter_reg_n_0),
        .I2(bit_counter_reg__0[2]),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .I5(bit_counter_reg__0[3]),
        .O(\iduty[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888F88888)) 
    \iduty[1]_i_1 
       (.I0(isample[1]),
        .I1(\iduty[2]_i_2_n_0 ),
        .I2(\iduty[3]_i_3_n_0 ),
        .I3(bit_counter_reg__0[1]),
        .I4(bit_counter_reg__0[0]),
        .I5(bit_counter_reg__0[2]),
        .O(\iduty[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888F88888)) 
    \iduty[2]_i_1 
       (.I0(isample[2]),
        .I1(\iduty[2]_i_2_n_0 ),
        .I2(\iduty[3]_i_3_n_0 ),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .I5(bit_counter_reg__0[2]),
        .O(\iduty[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555444444545)) 
    \iduty[2]_i_2 
       (.I0(reset),
        .I1(counter_reg_n_0),
        .I2(bit_counter_reg__0[2]),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .I5(bit_counter_reg__0[3]),
        .O(\iduty[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h08080808FF080808)) 
    \iduty[3]_i_1 
       (.I0(\iduty[3]_i_2_n_0 ),
        .I1(isample[3]),
        .I2(reset),
        .I3(\iduty[3]_i_3_n_0 ),
        .I4(\iduty[7]_i_3_n_0 ),
        .I5(bit_counter_reg__0[2]),
        .O(\iduty[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFAAFEFF)) 
    \iduty[3]_i_2 
       (.I0(counter_reg_n_0),
        .I1(bit_counter_reg__0[1]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[3]),
        .I4(bit_counter_reg__0[2]),
        .O(\iduty[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \iduty[3]_i_3 
       (.I0(reset),
        .I1(bit_counter_reg__0[3]),
        .I2(counter_reg_n_0),
        .O(\iduty[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA30000A8AA)) 
    \iduty[4]_i_1 
       (.I0(isample[4]),
        .I1(\iduty[4]_i_2_n_0 ),
        .I2(counter_reg_n_0),
        .I3(bit_counter_reg__0[3]),
        .I4(reset),
        .I5(bit_counter_reg__0[2]),
        .O(\iduty[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \iduty[4]_i_2 
       (.I0(bit_counter_reg__0[0]),
        .I1(bit_counter_reg__0[1]),
        .O(\iduty[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0808FF0808080808)) 
    \iduty[5]_i_1 
       (.I0(\iduty[6]_i_2_n_0 ),
        .I1(isample[5]),
        .I2(reset),
        .I3(bit_counter_reg__0[0]),
        .I4(bit_counter_reg__0[1]),
        .I5(\iduty[7]_i_2_n_0 ),
        .O(\iduty[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0808FF0808080808)) 
    \iduty[6]_i_1 
       (.I0(\iduty[6]_i_2_n_0 ),
        .I1(isample[6]),
        .I2(reset),
        .I3(bit_counter_reg__0[1]),
        .I4(bit_counter_reg__0[0]),
        .I5(\iduty[7]_i_2_n_0 ),
        .O(\iduty[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFDDFB)) 
    \iduty[6]_i_2 
       (.I0(bit_counter_reg__0[2]),
        .I1(bit_counter_reg__0[3]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[1]),
        .I4(counter_reg_n_0),
        .O(\iduty[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88888888F888FF88)) 
    \iduty[7]_i_1 
       (.I0(\iduty[7]_i_2_n_0 ),
        .I1(\iduty[7]_i_3_n_0 ),
        .I2(\iduty[7]_i_4_n_0 ),
        .I3(isample[7]),
        .I4(bit_counter_reg__0[3]),
        .I5(reset),
        .O(\iduty[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0100)) 
    \iduty[7]_i_2 
       (.I0(counter_reg_n_0),
        .I1(bit_counter_reg__0[3]),
        .I2(reset),
        .I3(bit_counter_reg__0[2]),
        .O(\iduty[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \iduty[7]_i_3 
       (.I0(bit_counter_reg__0[0]),
        .I1(bit_counter_reg__0[1]),
        .O(\iduty[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \iduty[7]_i_4 
       (.I0(bit_counter_reg__0[2]),
        .I1(bit_counter_reg__0[0]),
        .I2(bit_counter_reg__0[1]),
        .I3(counter_reg_n_0),
        .O(\iduty[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00015555)) 
    \iduty[8]_i_1 
       (.I0(counter_reg_n_0),
        .I1(bit_counter_reg__0[2]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[1]),
        .I4(bit_counter_reg__0[3]),
        .I5(reset),
        .O(duty0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0000ABAA)) 
    \iduty[8]_i_2 
       (.I0(isample[8]),
        .I1(\isample[8]_i_3_n_0 ),
        .I2(counter_reg_n_0),
        .I3(bit_counter_reg__0[3]),
        .I4(reset),
        .O(\iduty[8]_i_2_n_0 ));
  FDRE \iduty_reg[0] 
       (.C(clock),
        .CE(duty0),
        .D(\iduty[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \iduty_reg[1] 
       (.C(clock),
        .CE(duty0),
        .D(\iduty[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \iduty_reg[2] 
       (.C(clock),
        .CE(duty0),
        .D(\iduty[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \iduty_reg[3] 
       (.C(clock),
        .CE(duty0),
        .D(\iduty[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \iduty_reg[4] 
       (.C(clock),
        .CE(duty0),
        .D(\iduty[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \iduty_reg[5] 
       (.C(clock),
        .CE(duty0),
        .D(\iduty[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \iduty_reg[6] 
       (.C(clock),
        .CE(duty0),
        .D(\iduty[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \iduty_reg[7] 
       (.C(clock),
        .CE(duty0),
        .D(\iduty[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \iduty_reg[8] 
       (.C(clock),
        .CE(duty0),
        .D(\iduty[8]_i_2_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \isample[1]_i_1 
       (.I0(\input ),
        .I1(bit_counter_reg__0[2]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[1]),
        .I4(\isample[3]_i_2_n_0 ),
        .I5(isample[1]),
        .O(\isample[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEFFFFF00200000)) 
    \isample[2]_i_1 
       (.I0(\input ),
        .I1(bit_counter_reg__0[2]),
        .I2(bit_counter_reg__0[1]),
        .I3(bit_counter_reg__0[0]),
        .I4(\isample[3]_i_2_n_0 ),
        .I5(isample[2]),
        .O(\isample[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF20000000)) 
    \isample[3]_i_1 
       (.I0(\input ),
        .I1(bit_counter_reg__0[2]),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[1]),
        .I4(\isample[3]_i_2_n_0 ),
        .I5(isample[3]),
        .O(\isample[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \isample[3]_i_2 
       (.I0(enable_read_reg_n_0),
        .I1(counter_reg_n_0),
        .I2(pass_sample_reg_n_0),
        .I3(bit_counter_reg__0[3]),
        .O(\isample[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    \isample[4]_i_1 
       (.I0(\input ),
        .I1(\isample[7]_i_2_n_0 ),
        .I2(bit_counter_reg__0[1]),
        .I3(bit_counter_reg__0[0]),
        .I4(isample[4]),
        .O(\isample[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \isample[5]_i_1 
       (.I0(\input ),
        .I1(\isample[7]_i_2_n_0 ),
        .I2(bit_counter_reg__0[1]),
        .I3(bit_counter_reg__0[0]),
        .I4(isample[5]),
        .O(\isample[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFBFF0800)) 
    \isample[6]_i_1 
       (.I0(\input ),
        .I1(\isample[7]_i_2_n_0 ),
        .I2(bit_counter_reg__0[0]),
        .I3(bit_counter_reg__0[1]),
        .I4(isample[6]),
        .O(\isample[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \isample[7]_i_1 
       (.I0(\input ),
        .I1(\isample[7]_i_2_n_0 ),
        .I2(bit_counter_reg__0[1]),
        .I3(bit_counter_reg__0[0]),
        .I4(isample[7]),
        .O(\isample[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \isample[7]_i_2 
       (.I0(bit_counter_reg__0[3]),
        .I1(pass_sample_reg_n_0),
        .I2(counter_reg_n_0),
        .I3(enable_read_reg_n_0),
        .I4(bit_counter_reg__0[2]),
        .O(\isample[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \isample[8]_i_1 
       (.I0(bit_counter_reg__0[2]),
        .I1(bit_counter_reg__0[0]),
        .I2(bit_counter_reg__0[1]),
        .I3(counter_reg_n_0),
        .I4(bit_counter_reg__0[3]),
        .I5(reset),
        .O(\isample[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \isample[8]_i_2 
       (.I0(\input ),
        .I1(bit_counter_reg__0[3]),
        .I2(enable_read_reg_n_0),
        .I3(pass_sample_reg_n_0),
        .I4(\isample[8]_i_3_n_0 ),
        .I5(isample[8]),
        .O(\isample[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \isample[8]_i_3 
       (.I0(bit_counter_reg__0[1]),
        .I1(bit_counter_reg__0[0]),
        .I2(bit_counter_reg__0[2]),
        .O(\isample[8]_i_3_n_0 ));
  FDRE \isample_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(\isample[1]_i_1_n_0 ),
        .Q(isample[1]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(\isample[2]_i_1_n_0 ),
        .Q(isample[2]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(\isample[3]_i_1_n_0 ),
        .Q(isample[3]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(\isample[4]_i_1_n_0 ),
        .Q(isample[4]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(\isample[5]_i_1_n_0 ),
        .Q(isample[5]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(\isample[6]_i_1_n_0 ),
        .Q(isample[6]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(\isample[7]_i_1_n_0 ),
        .Q(isample[7]),
        .R(\isample[8]_i_1_n_0 ));
  FDRE \isample_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(\isample[8]_i_2_n_0 ),
        .Q(isample[8]),
        .R(\isample[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000027770008)) 
    pass_sample_i_1
       (.I0(counter_reg_n_0),
        .I1(enable_read_reg_n_0),
        .I2(bit_counter_reg__0[3]),
        .I3(\isample[8]_i_3_n_0 ),
        .I4(pass_sample_reg_n_0),
        .I5(reset),
        .O(pass_sample_i_1_n_0));
  FDRE pass_sample_reg
       (.C(clock),
        .CE(1'b1),
        .D(pass_sample_i_1_n_0),
        .Q(pass_sample_reg_n_0),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "microSense_top_level_top_level_SAR_0_0,top_level_SAR,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "top_level_SAR,Vivado 2017.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clock,
    reset,
    \input ,
    \output ,
    distance_mm,
    average);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clock CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clock, ASSOCIATED_RESET reset, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN microSense_top_level_sys_clock" *) input clock;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH" *) input reset;
  input \input ;
  output \output ;
  output [8:0]distance_mm;
  output [8:0]average;

  wire \<const0> ;
  wire clock;
  wire [8:0]distance_mm;
  wire \input ;
  wire \output ;
  wire reset;
  wire [15:9]\NLW_distance_mm[0]_INST_0_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_distance_mm[0]_INST_0_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_distance_mm[0]_INST_0_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_distance_mm[0]_INST_0_DOPBDOP_UNCONNECTED ;

  assign average[8] = \<const0> ;
  assign average[7] = \<const0> ;
  assign average[6] = \<const0> ;
  assign average[5] = \<const0> ;
  assign average[4] = \<const0> ;
  assign average[3] = \<const0> ;
  assign average[2] = \<const0> ;
  assign average[1] = \<const0> ;
  assign average[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_level_SAR U0
       (.clock(clock),
        .\input (\input ),
        .\output (\output ),
        .reset(reset));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d9" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "4608" *) 
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
    \distance_mm[0]_INST_0 
       (.ADDRARDADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(clock),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({\NLW_distance_mm[0]_INST_0_DOADO_UNCONNECTED [15:9],distance_mm}),
        .DOBDO(\NLW_distance_mm[0]_INST_0_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP(\NLW_distance_mm[0]_INST_0_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_distance_mm[0]_INST_0_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(reset),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_level_SAR
   (\output ,
    clock,
    reset,
    \input );
  output \output ;
  input clock;
  input reset;
  input \input ;

  wire clock;
  wire [8:0]counter;
  wire [8:0]duty;
  wire \input ;
  wire \output ;
  wire reset;
  wire the_SAR_n_0;
  wire the_SAR_n_1;
  wire the_SAR_n_13;
  wire the_SAR_n_2;
  wire the_SAR_n_3;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_PWM_generator the_PWM_generator
       (.DI({the_SAR_n_0,the_SAR_n_1,the_SAR_n_2,the_SAR_n_3}),
        .Q(counter),
        .clock(clock),
        .\iduty_reg[8] (the_SAR_n_13),
        .\iduty_reg[8]_0 (duty),
        .\output (\output ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SAR the_SAR
       (.DI({the_SAR_n_0,the_SAR_n_1,the_SAR_n_2,the_SAR_n_3}),
        .Q(duty),
        .clock(clock),
        .\counter_reg[8] (counter),
        .\input (\input ),
        .\output (the_SAR_n_13),
        .reset(reset));
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
